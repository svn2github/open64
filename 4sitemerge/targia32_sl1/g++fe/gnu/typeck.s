	.file	"typeck.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
.globl target_type
	.type	target_type, @function
target_type:
.LFB15:
	.file 1 "../../../kg++fe/gnu/cp/typeck.c"
	.loc 1 81 0
	pushl	%ebp
.LCFI0:
	movl	%esp, %ebp
.LCFI1:
	.loc 1 82 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$16, %al
	jne	.L4
	.loc 1 83 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 8(%ebp)
	.loc 1 84 0
	jmp	.L4
.L5:
	.loc 1 89 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 8(%ebp)
.L4:
	.loc 1 84 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	je	.L5
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$19, %al
	je	.L5
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$24, %al
	je	.L5
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$17, %al
	je	.L5
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$15, %al
	je	.L5
	.loc 1 90 0
	movl	8(%ebp), %eax
	.loc 1 91 0
	popl	%ebp
	ret
.LFE15:
	.size	target_type, .-target_type
.globl require_complete_type
	.type	require_complete_type, @function
require_complete_type:
.LFB16:
	.loc 1 101 0
	pushl	%ebp
.LCFI2:
	movl	%esp, %ebp
.LCFI3:
	pushl	%ebx
.LCFI4:
	subl	$52, %esp
.LCFI5:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 104 0
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	64(%eax), %edx
	movl	60(%eax), %eax
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L13
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L15
.L13:
	.loc 1 105 0
	movl	8(%ebp), %eax
	movl	%eax, -32(%ebp)
	jmp	.L16
.L15:
	.loc 1 107 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-52, %al
	jne	.L17
	.loc 1 108 0
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	116(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L19
.L17:
	.loc 1 110 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
.L19:
	.loc 1 113 0
	movl	-8(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L20
	.loc 1 114 0
	movl	8(%ebp), %eax
	movl	%eax, -32(%ebp)
	jmp	.L16
.L20:
	.loc 1 119 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-77, %al
	jne	.L22
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L22
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	288(%eax), %eax
	movl	28(%eax), %eax
	testl	%eax, %eax
	je	.L22
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -28(%ebp)
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L26
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	288(%eax), %eax
	movl	28(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L28
.L26:
	movl	$0, -24(%ebp)
.L28:
	movl	-24(%ebp), %eax
	cmpl	%eax, -28(%ebp)
	jne	.L22
	.loc 1 123 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	resolve_offset_ref@PLT
	movl	%eax, 8(%ebp)
	.loc 1 124 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	require_complete_type@PLT
	movl	%eax, -32(%ebp)
	jmp	.L16
.L22:
	.loc 1 127 0
	movl	$0, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	complete_type_or_diagnostic@PLT
	testl	%eax, %eax
	je	.L30
	.loc 1 128 0
	movl	8(%ebp), %eax
	movl	%eax, -32(%ebp)
	jmp	.L16
.L30:
	.loc 1 130 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
.L16:
	movl	-32(%ebp), %eax
	.loc 1 131 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE16:
	.size	require_complete_type, .-require_complete_type
.globl complete_type
	.type	complete_type, @function
complete_type:
.LFB17:
	.loc 1 141 0
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
	.loc 1 142 0
	cmpl	$0, 8(%ebp)
	jne	.L34
	.loc 1 145 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L36
.L34:
	.loc 1 147 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	8(%ebp), %eax
	je	.L37
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	jne	.L37
	.loc 1 149 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$19, %al
	jne	.L40
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L40
.LBB2:
	.loc 1 151 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	complete_type@PLT
	movl	%eax, -8(%ebp)
	.loc 1 152 0
	movl	-8(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L43
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	64(%eax), %edx
	movl	60(%eax), %eax
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L43
	.loc 1 153 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	layout_type@PLT
.L43:
	.loc 1 154 0
	movl	-8(%ebp), %eax
	movl	72(%eax), %eax
	movzbl	38(%eax), %eax
	shrb	$2, %al
	andl	$1, %eax
	movl	8(%ebp), %ecx
	andl	$1, %eax
	leal	0(,%eax,4), %edx
	movzbl	38(%ecx), %eax
	andl	$-5, %eax
	orl	%edx, %eax
	movb	%al, 38(%ecx)
	.loc 1 156 0
	movl	-8(%ebp), %eax
	movl	72(%eax), %eax
	movzbl	39(%eax), %eax
	shrb	$4, %al
	andl	$1, %eax
	movl	8(%ebp), %ecx
	andl	$1, %eax
	movl	%eax, %edx
	sall	$4, %edx
	movzbl	39(%ecx), %eax
	andl	$-17, %eax
	orl	%edx, %eax
	movb	%al, 39(%ecx)
	.loc 1 149 0
	jmp	.L37
.L40:
.LBE2:
	.loc 1 159 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	je	.L46
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	jne	.L37
.L46:
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L48
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L48
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L48
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L48
	movl	8(%ebp), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L37
.L48:
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	8(%eax), %eax
	shrb	$2, %al
	andl	$3, %eax
	movzbl	%al, %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L37
	.loc 1 160 0
	movl	8(%ebp), %eax
	movl	72(%eax), %eax
	movl	%eax, (%esp)
	call	instantiate_class_template@PLT
.L37:
	.loc 1 162 0
	movl	8(%ebp), %eax
	movl	%eax, -24(%ebp)
.L36:
	movl	-24(%ebp), %eax
	.loc 1 163 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE17:
	.size	complete_type, .-complete_type
.globl complete_type_or_diagnostic
	.type	complete_type_or_diagnostic, @function
complete_type_or_diagnostic:
.LFB18:
	.loc 1 175 0
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
	.loc 1 176 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	complete_type@PLT
	movl	%eax, 8(%ebp)
	.loc 1 177 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L56
	.loc 1 179 0
	movl	$0, -8(%ebp)
	jmp	.L58
.L56:
	.loc 1 180 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	jne	.L59
	.loc 1 182 0
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	cxx_incomplete_type_diagnostic@PLT
	.loc 1 183 0
	movl	$0, -8(%ebp)
	jmp	.L58
.L59:
	.loc 1 186 0
	movl	8(%ebp), %eax
	movl	%eax, -8(%ebp)
.L58:
	movl	-8(%ebp), %eax
	.loc 1 187 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE18:
	.size	complete_type_or_diagnostic, .-complete_type_or_diagnostic
.globl type_unknown_p
	.type	type_unknown_p, @function
type_unknown_p:
.LFB19:
	.loc 1 194 0
	pushl	%ebp
.LCFI14:
	movl	%esp, %ebp
.LCFI15:
	subl	$4, %esp
.LCFI16:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 195 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-52, %al
	je	.L63
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$3, %al
	je	.L63
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	cp_global_trees@GOT(%ecx), %eax
	movl	116(%eax), %eax
	cmpl	%eax, %edx
	je	.L63
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$15, %al
	jne	.L67
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %edx
	movl	cp_global_trees@GOT(%ecx), %eax
	movl	116(%eax), %eax
	cmpl	%eax, %edx
	jne	.L67
.L63:
	movl	$1, -4(%ebp)
	jmp	.L69
.L67:
	movl	$0, -4(%ebp)
.L69:
	movl	-4(%ebp), %eax
	.loc 1 200 0
	leave
	ret
.LFE19:
	.size	type_unknown_p, .-type_unknown_p
	.type	qualify_type_recursive, @function
qualify_type_recursive:
.LFB20:
	.loc 1 209 0
	pushl	%ebp
.LCFI17:
	movl	%esp, %ebp
.LCFI18:
	pushl	%esi
.LCFI19:
	pushl	%ebx
.LCFI20:
	subl	$64, %esp
.LCFI21:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 210 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L72
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$15, %al
	je	.L72
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L72
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$15, %al
	jne	.L76
.L72:
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L77
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$15, %al
	jne	.L77
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L77
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$15, %al
	jne	.L77
.L76:
.LBB3:
	.loc 1 218 0
	movl	targetm@GOT(%ebx), %eax
	movl	180(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	movl	%eax, -12(%ebp)
	.loc 1 220 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L81
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$15, %al
	jne	.L81
	.loc 1 222 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L84
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$15, %al
	jne	.L84
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	64(%eax), %eax
	movl	%eax, -52(%ebp)
	jmp	.L87
.L84:
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	64(%eax), %eax
	movl	%eax, -52(%ebp)
.L87:
	movl	-52(%ebp), %eax
	movl	%eax, -24(%ebp)
	.loc 1 223 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L88
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$15, %al
	jne	.L88
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -48(%ebp)
	jmp	.L91
.L88:
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -48(%ebp)
.L91:
	movl	-48(%ebp), %eax
	movl	%eax, -32(%ebp)
	.loc 1 224 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L92
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$15, %al
	jne	.L92
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -44(%ebp)
	jmp	.L95
.L92:
	movl	12(%ebp), %eax
	movl	16(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -44(%ebp)
.L95:
	movl	-44(%ebp), %eax
	movl	%eax, -28(%ebp)
	.loc 1 220 0
	jmp	.L96
.L81:
	.loc 1 228 0
	movl	$0, -24(%ebp)
	.loc 1 229 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 230 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -28(%ebp)
.L96:
	.loc 1 233 0
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	cp_type_quals@PLT
	movl	%eax, %esi
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	cp_type_quals@PLT
	orl	%esi, %eax
	movl	%eax, -20(%ebp)
	.loc 1 234 0
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	qualify_type_recursive
	movl	%eax, -16(%ebp)
	.loc 1 235 0
	movl	$3, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	cp_build_qualified_type_real@PLT
	movl	%eax, -16(%ebp)
	.loc 1 236 0
	cmpl	$0, -24(%ebp)
	je	.L97
	.loc 1 237 0
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	build_ptrmem_type@PLT
	movl	%eax, 8(%ebp)
	jmp	.L99
.L97:
	.loc 1 239 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	build_pointer_type@PLT
	movl	%eax, 8(%ebp)
.L99:
	.loc 1 240 0
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_type_attribute_variant@PLT
	movl	%eax, 8(%ebp)
.L77:
.LBE3:
	.loc 1 242 0
	movl	8(%ebp), %eax
	.loc 1 243 0
	addl	$64, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE20:
	.size	qualify_type_recursive, .-qualify_type_recursive
.globl commonparms
	.type	commonparms, @function
commonparms:
.LFB21:
	.loc 1 255 0
	pushl	%ebp
.LCFI22:
	movl	%esp, %ebp
.LCFI23:
	pushl	%ebx
.LCFI24:
	subl	$52, %esp
.LCFI25:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 256 0
	movl	8(%ebp), %eax
	movl	%eax, -28(%ebp)
	.loc 1 258 0
	movl	$0, -8(%ebp)
	.loc 1 260 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	list_length@PLT
	movl	%eax, -12(%ebp)
	.loc 1 261 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_last@PLT
	movl	%eax, -24(%ebp)
	.loc 1 263 0
	movl	global_trees@GOT(%ebx), %eax
	movl	152(%eax), %eax
	cmpl	-24(%ebp), %eax
	jne	.L102
	.loc 1 264 0
	movl	$1, -16(%ebp)
	jmp	.L105
.L102:
	.loc 1 267 0
	movl	$0, -16(%ebp)
	.loc 1 268 0
	movl	$0, -24(%ebp)
	.loc 1 271 0
	jmp	.L105
.L106:
	.loc 1 272 0
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$0, (%esp)
	call	tree_cons@PLT
	movl	%eax, -24(%ebp)
	.loc 1 271 0
	addl	$1, -16(%ebp)
.L105:
	movl	-16(%ebp), %eax
	cmpl	-12(%ebp), %eax
	jl	.L106
	.loc 1 274 0
	movl	-24(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 276 0
	movl	$0, -16(%ebp)
	jmp	.L108
.L109:
	.loc 1 279 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L110
	movl	12(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	jne	.L110
	.loc 1 281 0
	movl	8(%ebp), %eax
	movl	16(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%edx, 16(%eax)
	.loc 1 282 0
	movl	$1, -8(%ebp)
	.loc 1 279 0
	jmp	.L113
.L110:
	.loc 1 284 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	jne	.L114
	.loc 1 286 0
	movl	12(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L113
	.loc 1 288 0
	movl	12(%ebp), %eax
	movl	16(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%edx, 16(%eax)
	.loc 1 289 0
	movl	$1, -8(%ebp)
	jmp	.L113
.L114:
	.loc 1 294 0
	movl	12(%ebp), %eax
	movl	16(%eax), %edx
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	simple_cst_equal@PLT
	cmpl	$1, %eax
	je	.L118
	.loc 1 295 0
	movl	$1, -8(%ebp)
.L118:
	.loc 1 296 0
	movl	12(%ebp), %eax
	movl	16(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%edx, 16(%eax)
.L113:
	.loc 1 298 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	cmpl	%eax, %edx
	je	.L120
	.loc 1 300 0
	movl	$1, -8(%ebp)
	.loc 1 301 0
	movl	12(%ebp), %eax
	movl	20(%eax), %edx
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	merge_types@PLT
	movl	%eax, %edx
	movl	-20(%ebp), %eax
	movl	%edx, 20(%eax)
	jmp	.L122
.L120:
	.loc 1 304 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%edx, 20(%eax)
.L122:
	.loc 1 277 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%ebp)
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%ebp)
	movl	-20(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
	addl	$1, -16(%ebp)
.L108:
	.loc 1 276 0
	cmpl	$0, 8(%ebp)
	jne	.L109
	.loc 1 306 0
	cmpl	$0, -8(%ebp)
	jne	.L124
	.loc 1 307 0
	movl	-28(%ebp), %eax
	movl	%eax, -40(%ebp)
	jmp	.L126
.L124:
	.loc 1 309 0
	movl	-24(%ebp), %eax
	movl	%eax, -40(%ebp)
.L126:
	movl	-40(%ebp), %eax
	.loc 1 310 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE21:
	.size	commonparms, .-commonparms
.globl original_type
	.type	original_type, @function
original_type:
.LFB22:
	.loc 1 317 0
	pushl	%ebp
.LCFI26:
	movl	%esp, %ebp
.LCFI27:
	subl	$16, %esp
.LCFI28:
.LBB4:
	.loc 1 318 0
	jmp	.L129
.L130:
	.loc 1 320 0
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	movl	%eax, -4(%ebp)
	.loc 1 321 0
	movl	-4(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$34, %al
	jne	.L131
	.loc 1 323 0
	movl	-4(%ebp), %eax
	movl	64(%eax), %eax
	movl	%eax, -4(%ebp)
	.loc 1 324 0
	cmpl	$0, -4(%ebp)
	je	.L131
	.loc 1 326 0
	movl	-4(%ebp), %eax
	movl	%eax, 8(%ebp)
.L129:
.LBE4:
	.loc 1 318 0
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	testl	%eax, %eax
	jne	.L130
.L131:
	.loc 1 328 0
	movl	8(%ebp), %eax
	.loc 1 329 0
	leave
	ret
.LFE22:
	.size	original_type, .-original_type
	.section	.rodata
	.align 32
	.type	__FUNCTION__.16672, @object
	.size	__FUNCTION__.16672, 40
__FUNCTION__.16672:
	.string	"type_after_usual_arithmetic_conversions"
	.align 4
.LC0:
	.string	"../../../kg++fe/gnu/cp/typeck.c"
	.text
.globl type_after_usual_arithmetic_conversions
	.type	type_after_usual_arithmetic_conversions, @function
type_after_usual_arithmetic_conversions:
.LFB23:
	.loc 1 339 0
	pushl	%ebp
.LCFI29:
	movl	%esp, %ebp
.LCFI30:
	pushl	%ebx
.LCFI31:
	subl	$84, %esp
.LCFI32:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 340 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -36(%ebp)
	.loc 1 341 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -32(%ebp)
	.loc 1 345 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$12, %al
	je	.L136
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$7, %al
	je	.L136
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$8, %al
	je	.L136
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$9, %al
	je	.L136
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$11, %al
	jne	.L141
.L136:
	movl	$1, -64(%ebp)
	jmp	.L142
.L141:
	movl	$0, -64(%ebp)
.L142:
	cmpl	$0, -64(%ebp)
	jne	.L143
	leal	__FUNCTION__.16672@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$348, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L143:
	.loc 1 349 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$12, %al
	je	.L145
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$7, %al
	je	.L145
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$8, %al
	je	.L145
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$9, %al
	je	.L145
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$11, %al
	jne	.L150
.L145:
	movl	$1, -60(%ebp)
	jmp	.L151
.L150:
	movl	$0, -60(%ebp)
.L151:
	cmpl	$0, -60(%ebp)
	jne	.L152
	leal	__FUNCTION__.16672@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$352, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L152:
	.loc 1 357 0
	movl	targetm@GOT(%ebx), %eax
	movl	180(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	movl	%eax, -28(%ebp)
	.loc 1 362 0
	cmpl	$9, -36(%ebp)
	je	.L154
	cmpl	$9, -32(%ebp)
	jne	.L156
.L154:
.LBB5:
	.loc 1 364 0
	cmpl	$9, -36(%ebp)
	jne	.L157
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -56(%ebp)
	jmp	.L159
.L157:
	movl	8(%ebp), %eax
	movl	%eax, -56(%ebp)
.L159:
	movl	-56(%ebp), %eax
	movl	%eax, -24(%ebp)
	.loc 1 365 0
	cmpl	$9, -32(%ebp)
	jne	.L160
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -52(%ebp)
	jmp	.L162
.L160:
	movl	12(%ebp), %eax
	movl	%eax, -52(%ebp)
.L162:
	movl	-52(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 367 0
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	type_after_usual_arithmetic_conversions@PLT
	movl	%eax, -16(%ebp)
	.loc 1 369 0
	cmpl	$9, -36(%ebp)
	jne	.L163
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-16(%ebp), %eax
	jne	.L163
	.loc 1 370 0
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_type_attribute_variant@PLT
	movl	%eax, -48(%ebp)
	jmp	.L166
.L163:
	.loc 1 371 0
	cmpl	$9, -32(%ebp)
	jne	.L167
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-16(%ebp), %eax
	jne	.L167
	.loc 1 372 0
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	build_type_attribute_variant@PLT
	movl	%eax, -48(%ebp)
	jmp	.L166
.L167:
	.loc 1 374 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	build_complex_type@PLT
	movl	%eax, %edx
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	build_type_attribute_variant@PLT
	movl	%eax, -48(%ebp)
	jmp	.L166
.L156:
.LBE5:
	.loc 1 379 0
	cmpl	$8, -36(%ebp)
	jne	.L170
	cmpl	$8, -32(%ebp)
	je	.L170
	.loc 1 380 0
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_type_attribute_variant@PLT
	movl	%eax, -48(%ebp)
	jmp	.L166
.L170:
	.loc 1 381 0
	cmpl	$8, -32(%ebp)
	jne	.L173
	cmpl	$8, -36(%ebp)
	je	.L173
	.loc 1 382 0
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	build_type_attribute_variant@PLT
	movl	%eax, -48(%ebp)
	jmp	.L166
.L173:
	.loc 1 385 0
	cmpl	$8, -36(%ebp)
	je	.L176
	.loc 1 387 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	type_promotes_to@PLT
	movl	%eax, 8(%ebp)
	.loc 1 388 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	type_promotes_to@PLT
	movl	%eax, 12(%ebp)
.L176:
	.loc 1 392 0
	movl	8(%ebp), %eax
	movzwl	36(%eax), %eax
	andw	$511, %ax
	movzwl	%ax, %edx
	movl	12(%ebp), %eax
	movzwl	36(%eax), %eax
	andw	$511, %ax
	movzwl	%ax, %eax
	cmpl	%eax, %edx
	jle	.L178
	.loc 1 393 0
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_type_attribute_variant@PLT
	movl	%eax, -48(%ebp)
	jmp	.L166
.L178:
	.loc 1 394 0
	movl	12(%ebp), %eax
	movzwl	36(%eax), %eax
	andw	$511, %ax
	movzwl	%ax, %edx
	movl	8(%ebp), %eax
	movzwl	36(%eax), %eax
	andw	$511, %ax
	movzwl	%ax, %eax
	cmpl	%eax, %edx
	jle	.L180
	.loc 1 395 0
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	build_type_attribute_variant@PLT
	movl	%eax, -48(%ebp)
	jmp	.L166
.L180:
	.loc 1 398 0
	movl	8(%ebp), %eax
	movl	72(%eax), %edx
	movl	12(%ebp), %eax
	movl	72(%eax), %eax
	cmpl	%eax, %edx
	jne	.L182
	.loc 1 399 0
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_type_attribute_variant@PLT
	movl	%eax, -48(%ebp)
	jmp	.L166
.L182:
	.loc 1 401 0
	cmpl	$8, -36(%ebp)
	je	.L184
	.loc 1 404 0
	movl	8(%ebp), %eax
	movzbl	38(%eax), %eax
	shrb	%al
	andl	$1, %eax
	movzbl	%al, %edx
	movl	12(%ebp), %eax
	movzbl	38(%eax), %eax
	shrb	%al
	andl	$1, %eax
	movzbl	%al, %eax
	cmpl	%eax, %edx
	jle	.L186
	.loc 1 405 0
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_type_attribute_variant@PLT
	movl	%eax, -48(%ebp)
	jmp	.L166
.L186:
	.loc 1 406 0
	movl	12(%ebp), %eax
	movzbl	38(%eax), %eax
	shrb	%al
	andl	$1, %eax
	movzbl	%al, %edx
	movl	8(%ebp), %eax
	movzbl	38(%eax), %eax
	shrb	%al
	andl	$1, %eax
	movzbl	%al, %eax
	cmpl	%eax, %edx
	jle	.L188
	.loc 1 407 0
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	build_type_attribute_variant@PLT
	movl	%eax, -48(%ebp)
	jmp	.L166
.L188:
	.loc 1 411 0
	movl	integer_types@GOT(%ebx), %eax
	movl	40(%eax), %edx
	movl	8(%ebp), %eax
	movl	72(%eax), %eax
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	comptypes@PLT
	testl	%eax, %eax
	jne	.L190
	movl	integer_types@GOT(%ebx), %eax
	movl	40(%eax), %edx
	movl	12(%ebp), %eax
	movl	72(%eax), %eax
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	comptypes@PLT
	testl	%eax, %eax
	je	.L192
.L190:
	.loc 1 413 0
	movl	integer_types@GOT(%ebx), %eax
	movl	40(%eax), %edx
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	build_type_attribute_variant@PLT
	movl	%eax, -48(%ebp)
	jmp	.L166
.L192:
	.loc 1 425 0
	movl	integer_types@GOT(%ebx), %eax
	movl	36(%eax), %edx
	movl	8(%ebp), %eax
	movl	72(%eax), %eax
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	comptypes@PLT
	testl	%eax, %eax
	jne	.L193
	movl	integer_types@GOT(%ebx), %eax
	movl	36(%eax), %edx
	movl	12(%ebp), %eax
	movl	72(%eax), %eax
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	comptypes@PLT
	testl	%eax, %eax
	je	.L195
.L193:
.LBB6:
	.loc 1 430 0
	movl	8(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	jne	.L196
	movl	12(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L198
.L196:
	movl	integer_types@GOT(%ebx), %eax
	movl	40(%eax), %eax
	movl	%eax, -44(%ebp)
	jmp	.L199
.L198:
	movl	integer_types@GOT(%ebx), %eax
	movl	36(%eax), %eax
	movl	%eax, -44(%ebp)
.L199:
	movl	-44(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 431 0
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	build_type_attribute_variant@PLT
	movl	%eax, -48(%ebp)
	jmp	.L166
.L195:
.LBE6:
	.loc 1 435 0
	movl	integer_types@GOT(%ebx), %eax
	movl	32(%eax), %edx
	movl	8(%ebp), %eax
	movl	72(%eax), %eax
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	comptypes@PLT
	testl	%eax, %eax
	jne	.L200
	movl	integer_types@GOT(%ebx), %eax
	movl	32(%eax), %edx
	movl	12(%ebp), %eax
	movl	72(%eax), %eax
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	comptypes@PLT
	testl	%eax, %eax
	je	.L202
.L200:
	.loc 1 437 0
	movl	integer_types@GOT(%ebx), %eax
	movl	32(%eax), %edx
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	build_type_attribute_variant@PLT
	movl	%eax, -48(%ebp)
	jmp	.L166
.L202:
	.loc 1 439 0
	movl	integer_types@GOT(%ebx), %eax
	movl	28(%eax), %edx
	movl	8(%ebp), %eax
	movl	72(%eax), %eax
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	comptypes@PLT
	testl	%eax, %eax
	jne	.L203
	movl	integer_types@GOT(%ebx), %eax
	movl	28(%eax), %edx
	movl	12(%ebp), %eax
	movl	72(%eax), %eax
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	comptypes@PLT
	testl	%eax, %eax
	je	.L205
.L203:
.LBB7:
	.loc 1 443 0
	movl	8(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	jne	.L206
	movl	12(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L208
.L206:
	movl	integer_types@GOT(%ebx), %eax
	movl	32(%eax), %eax
	movl	%eax, -40(%ebp)
	jmp	.L209
.L208:
	movl	integer_types@GOT(%ebx), %eax
	movl	28(%eax), %eax
	movl	%eax, -40(%ebp)
.L209:
	movl	-40(%ebp), %eax
	movl	%eax, -8(%ebp)
	.loc 1 444 0
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_type_attribute_variant@PLT
	movl	%eax, -48(%ebp)
	jmp	.L166
.L205:
.LBE7:
	.loc 1 447 0
	movl	8(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L210
	.loc 1 448 0
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_type_attribute_variant@PLT
	movl	%eax, -48(%ebp)
	jmp	.L166
.L210:
	.loc 1 450 0
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	build_type_attribute_variant@PLT
	movl	%eax, -48(%ebp)
	jmp	.L166
.L184:
	.loc 1 454 0
	movl	global_trees@GOT(%ebx), %eax
	movl	124(%eax), %edx
	movl	8(%ebp), %eax
	movl	72(%eax), %eax
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	comptypes@PLT
	testl	%eax, %eax
	jne	.L212
	movl	global_trees@GOT(%ebx), %eax
	movl	124(%eax), %edx
	movl	12(%ebp), %eax
	movl	72(%eax), %eax
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	comptypes@PLT
	testl	%eax, %eax
	je	.L214
.L212:
	.loc 1 456 0
	movl	global_trees@GOT(%ebx), %eax
	movl	124(%eax), %edx
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	build_type_attribute_variant@PLT
	movl	%eax, -48(%ebp)
	jmp	.L166
.L214:
	.loc 1 458 0
	movl	global_trees@GOT(%ebx), %eax
	movl	120(%eax), %edx
	movl	8(%ebp), %eax
	movl	72(%eax), %eax
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	comptypes@PLT
	testl	%eax, %eax
	jne	.L215
	movl	global_trees@GOT(%ebx), %eax
	movl	120(%eax), %edx
	movl	12(%ebp), %eax
	movl	72(%eax), %eax
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	comptypes@PLT
	testl	%eax, %eax
	je	.L217
.L215:
	.loc 1 460 0
	movl	global_trees@GOT(%ebx), %eax
	movl	120(%eax), %edx
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	build_type_attribute_variant@PLT
	movl	%eax, -48(%ebp)
	jmp	.L166
.L217:
	.loc 1 462 0
	movl	global_trees@GOT(%ebx), %eax
	movl	116(%eax), %edx
	movl	8(%ebp), %eax
	movl	72(%eax), %eax
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	comptypes@PLT
	testl	%eax, %eax
	jne	.L218
	movl	global_trees@GOT(%ebx), %eax
	movl	116(%eax), %edx
	movl	12(%ebp), %eax
	movl	72(%eax), %eax
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	comptypes@PLT
	testl	%eax, %eax
	je	.L220
.L218:
	.loc 1 464 0
	movl	global_trees@GOT(%ebx), %eax
	movl	116(%eax), %edx
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	build_type_attribute_variant@PLT
	movl	%eax, -48(%ebp)
	jmp	.L166
.L220:
	.loc 1 472 0
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_type_attribute_variant@PLT
	movl	%eax, -48(%ebp)
.L166:
	movl	-48(%ebp), %eax
	.loc 1 474 0
	addl	$84, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE23:
	.size	type_after_usual_arithmetic_conversions, .-type_after_usual_arithmetic_conversions
	.section	.rodata
	.align 4
.LC1:
	.string	"ISO C++ forbids %s between pointer of type `void *' and pointer-to-function"
	.align 4
.LC2:
	.string	"%s between distinct pointer types `%T' and `%T' lacks a cast"
	.text
.globl composite_pointer_type
	.type	composite_pointer_type, @function
composite_pointer_type:
.LFB24:
	.loc 1 487 0
	pushl	%ebp
.LCFI33:
	movl	%esp, %ebp
.LCFI34:
	pushl	%esi
.LCFI35:
	pushl	%ebx
.LCFI36:
	subl	$64, %esp
.LCFI37:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 495 0
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	null_ptr_cst_p@PLT
	testl	%eax, %eax
	je	.L223
	.loc 1 496 0
	movl	12(%ebp), %eax
	movl	%eax, -44(%ebp)
	jmp	.L225
.L223:
	.loc 1 497 0
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	null_ptr_cst_p@PLT
	testl	%eax, %eax
	je	.L226
	.loc 1 498 0
	movl	8(%ebp), %eax
	movl	%eax, -44(%ebp)
	jmp	.L225
.L226:
	.loc 1 502 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	jne	.L228
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	testl	%eax, %eax
	je	.L228
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	8(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L228
	.loc 1 503 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, 8(%ebp)
.L228:
	.loc 1 504 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	jne	.L232
	movl	12(%ebp), %eax
	movl	92(%eax), %eax
	testl	%eax, %eax
	je	.L232
	movl	12(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	8(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L232
	.loc 1 505 0
	movl	12(%ebp), %eax
	movl	16(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, 12(%ebp)
.L232:
	.loc 1 508 0
	movl	targetm@GOT(%ebx), %eax
	movl	180(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	movl	%eax, -28(%ebp)
	.loc 1 520 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$6, %al
	jne	.L236
.LBB8:
	.loc 1 523 0
	movl	8(%ebp), %eax
	movl	%eax, -24(%ebp)
	.loc 1 524 0
	movl	12(%ebp), %eax
	movl	%eax, 8(%ebp)
	.loc 1 525 0
	movl	-24(%ebp), %eax
	movl	%eax, 12(%ebp)
.L236:
.LBE8:
	.loc 1 528 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$6, %al
	jne	.L238
	.loc 1 530 0
	movl	pedantic@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L240
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L240
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$24, %al
	jne	.L240
	.loc 1 531 0
	movl	24(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	pedwarn@PLT
.L240:
	.loc 1 532 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 8(%ebp)
	.loc 1 533 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 12(%ebp)
	.loc 1 534 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cp_type_quals@PLT
	movl	%eax, %esi
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	cp_type_quals@PLT
	movl	%esi, %edx
	orl	%eax, %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	128(%eax), %eax
	movl	$3, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	cp_build_qualified_type_real@PLT
	movl	%eax, -32(%ebp)
	.loc 1 537 0
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	build_pointer_type@PLT
	movl	%eax, -32(%ebp)
	jmp	.L244
.L238:
.LBB9:
	.loc 1 541 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	qualify_type_recursive
	movl	%eax, -20(%ebp)
	.loc 1 542 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	qualify_type_recursive
	movl	%eax, -16(%ebp)
	.loc 1 544 0
	movl	$1, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	comp_target_types@PLT
	movl	%eax, -12(%ebp)
	.loc 1 546 0
	cmpl	$0, -12(%ebp)
	jle	.L245
	.loc 1 547 0
	movl	-20(%ebp), %eax
	movl	%eax, -32(%ebp)
	jmp	.L244
.L245:
	.loc 1 548 0
	cmpl	$0, -12(%ebp)
	jns	.L247
	.loc 1 549 0
	movl	-16(%ebp), %eax
	movl	%eax, -32(%ebp)
	jmp	.L244
.L247:
	.loc 1 552 0
	movl	12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	pedwarn@PLT
	.loc 1 554 0
	movl	global_trees@GOT(%ebx), %eax
	movl	132(%eax), %eax
	movl	%eax, -32(%ebp)
.L244:
.LBE9:
	.loc 1 558 0
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	build_type_attribute_variant@PLT
	movl	%eax, -44(%ebp)
.L225:
	movl	-44(%ebp), %eax
	.loc 1 559 0
	addl	$64, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE24:
	.size	composite_pointer_type, .-composite_pointer_type
.globl merge_types
	.type	merge_types, @function
merge_types:
.LFB25:
	.loc 1 571 0
	pushl	%ebp
.LCFI38:
	movl	%esp, %ebp
.LCFI39:
	pushl	%esi
.LCFI40:
	pushl	%ebx
.LCFI41:
	subl	$96, %esp
.LCFI42:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 577 0
	movl	8(%ebp), %eax
	cmpl	12(%ebp), %eax
	jne	.L251
	.loc 1 578 0
	movl	8(%ebp), %eax
	movl	%eax, -84(%ebp)
	jmp	.L253
.L251:
	.loc 1 579 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	original_type@PLT
	movl	%eax, %esi
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	original_type@PLT
	cmpl	%eax, %esi
	jne	.L254
	.loc 1 580 0
	movl	8(%ebp), %edx
	movl	%edx, -84(%ebp)
	jmp	.L253
.L254:
	.loc 1 583 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L256
	.loc 1 584 0
	movl	12(%ebp), %eax
	movl	%eax, -84(%ebp)
	jmp	.L253
.L256:
	.loc 1 585 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	12(%ebp), %eax
	jne	.L258
	.loc 1 586 0
	movl	8(%ebp), %edx
	movl	%edx, -84(%ebp)
	jmp	.L253
.L258:
	.loc 1 589 0
	movl	targetm@GOT(%ebx), %eax
	movl	180(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	movl	%eax, -64(%ebp)
	.loc 1 593 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	jne	.L260
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	testl	%eax, %eax
	je	.L260
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	8(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L260
	.loc 1 594 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, 8(%ebp)
.L260:
	.loc 1 595 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	jne	.L264
	movl	12(%ebp), %eax
	movl	92(%eax), %eax
	testl	%eax, %eax
	je	.L264
	movl	12(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	8(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L264
	.loc 1 596 0
	movl	12(%ebp), %eax
	movl	16(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, 12(%ebp)
.L264:
	.loc 1 598 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -76(%ebp)
	.loc 1 601 0
	movl	-76(%ebp), %eax
	subl	$14, %eax
	movl	%eax, -88(%ebp)
	cmpl	$10, -88(%ebp)
	ja	.L268
	movl	-88(%ebp), %eax
	sall	$2, %eax
	movl	.L274@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L274:
	.long	.L269@GOTOFF
	.long	.L270@GOTOFF
	.long	.L269@GOTOFF
	.long	.L271@GOTOFF
	.long	.L268@GOTOFF
	.long	.L272@GOTOFF
	.long	.L268@GOTOFF
	.long	.L268@GOTOFF
	.long	.L268@GOTOFF
	.long	.L268@GOTOFF
	.long	.L273@GOTOFF
	.text
.L269:
.LBB10:
	.loc 1 607 0
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	merge_types@PLT
	movl	%eax, -60(%ebp)
	.loc 1 608 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cp_type_quals@PLT
	movl	%eax, -56(%ebp)
	.loc 1 610 0
	cmpl	$14, -76(%ebp)
	jne	.L275
	.loc 1 611 0
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	build_pointer_type@PLT
	movl	%eax, 8(%ebp)
	jmp	.L277
.L275:
	.loc 1 613 0
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	build_reference_type@PLT
	movl	%eax, 8(%ebp)
.L277:
	.loc 1 614 0
	movl	-64(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_type_attribute_variant@PLT
	movl	%eax, 8(%ebp)
	.loc 1 615 0
	movl	$3, 8(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cp_build_qualified_type_real@PLT
	movl	%eax, 8(%ebp)
	.loc 1 617 0
	movl	-60(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$17, %al
	jne	.L278
	.loc 1 618 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_ptrmemfunc_type@PLT
	movl	%eax, 8(%ebp)
.L278:
	.loc 1 620 0
	movl	8(%ebp), %edx
	movl	%edx, -84(%ebp)
	jmp	.L253
.L270:
.LBE10:
.LBB11:
	.loc 1 625 0
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	movl	%eax, -52(%ebp)
	.loc 1 626 0
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	merge_types@PLT
	movl	%eax, -48(%ebp)
	.loc 1 627 0
	movl	-48(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	build_offset_type@PLT
	movl	%eax, 8(%ebp)
	.loc 1 628 0
	jmp	.L268
.L272:
.LBE11:
.LBB12:
	.loc 1 633 0
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	merge_types@PLT
	movl	%eax, -44(%ebp)
	.loc 1 635 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-44(%ebp), %eax
	jne	.L280
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L280
	.loc 1 636 0
	movl	-64(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_type_attribute_variant@PLT
	movl	%eax, -84(%ebp)
	jmp	.L253
.L280:
	.loc 1 637 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-44(%ebp), %eax
	jne	.L283
	movl	12(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L283
	.loc 1 638 0
	movl	-64(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	build_type_attribute_variant@PLT
	movl	%eax, -84(%ebp)
	jmp	.L253
.L283:
	.loc 1 640 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L286
	movl	8(%ebp), %eax
	movl	%eax, -80(%ebp)
	jmp	.L288
.L286:
	movl	12(%ebp), %edx
	movl	%edx, -80(%ebp)
.L288:
	movl	-80(%ebp), %edx
	movl	16(%edx), %eax
	movl	%eax, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	build_cplus_array_type@PLT
	movl	%eax, 8(%ebp)
	.loc 1 642 0
	jmp	.L268
.L273:
.LBE12:
.LBB13:
	.loc 1 649 0
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	merge_types@PLT
	movl	%eax, -40(%ebp)
	.loc 1 650 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -36(%ebp)
	.loc 1 651 0
	movl	12(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 655 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-40(%ebp), %eax
	jne	.L289
	cmpl	$0, -32(%ebp)
	jne	.L289
	.loc 1 656 0
	movl	-64(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_type_attribute_variant@PLT
	movl	%eax, -84(%ebp)
	jmp	.L253
.L289:
	.loc 1 657 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-40(%ebp), %eax
	jne	.L292
	cmpl	$0, -36(%ebp)
	jne	.L292
	.loc 1 658 0
	movl	-64(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	build_type_attribute_variant@PLT
	movl	%eax, -84(%ebp)
	jmp	.L253
.L292:
	.loc 1 661 0
	cmpl	$0, -36(%ebp)
	je	.L295
	movl	-36(%ebp), %eax
	movl	20(%eax), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	128(%eax), %eax
	cmpl	%eax, %edx
	jne	.L297
.L295:
	.loc 1 663 0
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	build_function_type@PLT
	movl	%eax, -28(%ebp)
	.loc 1 664 0
	movl	12(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, -24(%ebp)
	cmpl	$0, -24(%ebp)
	je	.L298
	.loc 1 665 0
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	build_exception_variant@PLT
	movl	%eax, -28(%ebp)
.L298:
	.loc 1 666 0
	movl	-64(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	build_type_attribute_variant@PLT
	movl	%eax, -84(%ebp)
	jmp	.L253
.L297:
	.loc 1 668 0
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 669 0
	cmpl	$0, -32(%ebp)
	je	.L300
	movl	-32(%ebp), %eax
	movl	20(%eax), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	128(%eax), %eax
	cmpl	%eax, %edx
	jne	.L302
.L300:
	.loc 1 671 0
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	build_function_type@PLT
	movl	%eax, -28(%ebp)
	.loc 1 672 0
	cmpl	$0, -24(%ebp)
	je	.L303
	.loc 1 673 0
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	build_exception_variant@PLT
	movl	%eax, -28(%ebp)
.L303:
	.loc 1 674 0
	movl	-64(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	build_type_attribute_variant@PLT
	movl	%eax, -84(%ebp)
	jmp	.L253
.L302:
	.loc 1 677 0
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	commonparms@PLT
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	build_function_type@PLT
	movl	%eax, -28(%ebp)
	.loc 1 678 0
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	build_exception_variant@PLT
	movl	%eax, 8(%ebp)
	.loc 1 679 0
	jmp	.L268
.L271:
.LBE13:
.LBB14:
	.loc 1 686 0
	movl	12(%ebp), %eax
	movl	16(%eax), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 687 0
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 693 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	build_function_type@PLT
	movl	%eax, 8(%ebp)
	.loc 1 695 0
	movl	12(%ebp), %eax
	movl	16(%eax), %eax
	movl	(%eax), %edx
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	build_function_type@PLT
	movl	%eax, 12(%ebp)
	.loc 1 697 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	merge_types@PLT
	movl	%eax, -12(%ebp)
	.loc 1 698 0
	movl	-12(%ebp), %eax
	movl	16(%eax), %edx
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	build_cplus_method_type@PLT
	movl	%eax, -12(%ebp)
	.loc 1 700 0
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	build_exception_variant@PLT
	movl	%eax, 8(%ebp)
.L268:
.LBE14:
	.loc 1 706 0
	movl	-64(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_type_attribute_variant@PLT
	movl	%eax, -84(%ebp)
.L253:
	movl	-84(%ebp), %eax
	.loc 1 707 0
	addl	$96, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE25:
	.size	merge_types, .-merge_types
	.section	.rodata
	.type	__FUNCTION__.17146, @object
	.size	__FUNCTION__.17146, 12
__FUNCTION__.17146:
	.string	"common_type"
.LC3:
	.string	"conversion"
	.text
.globl common_type
	.type	common_type, @function
common_type:
.LFB26:
	.loc 1 719 0
	pushl	%ebp
.LCFI43:
	movl	%esp, %ebp
.LCFI44:
	pushl	%ebx
.LCFI45:
	subl	$52, %esp
.LCFI46:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 724 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	8(%ebp), %eax
	je	.L307
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	12(%ebp), %eax
	jne	.L309
.L307:
	.loc 1 725 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L310
.L309:
	.loc 1 727 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -12(%ebp)
	.loc 1 728 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -8(%ebp)
	.loc 1 730 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$12, %al
	je	.L311
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$7, %al
	je	.L311
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$8, %al
	je	.L311
	cmpl	$11, -12(%ebp)
	je	.L311
	cmpl	$9, -12(%ebp)
	jne	.L316
.L311:
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$12, %al
	je	.L317
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$7, %al
	je	.L317
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$8, %al
	je	.L317
	cmpl	$11, -8(%ebp)
	je	.L317
	cmpl	$9, -8(%ebp)
	jne	.L316
.L317:
	.loc 1 734 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	type_after_usual_arithmetic_conversions@PLT
	movl	%eax, -24(%ebp)
	jmp	.L310
.L316:
	.loc 1 736 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L322
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$15, %al
	je	.L322
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L322
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$15, %al
	jne	.L326
.L322:
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L327
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$15, %al
	jne	.L327
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L327
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$15, %al
	je	.L326
.L327:
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	jne	.L331
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	testl	%eax, %eax
	je	.L331
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	8(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L331
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	jne	.L331
	movl	12(%ebp), %eax
	movl	92(%eax), %eax
	testl	%eax, %eax
	je	.L331
	movl	12(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	8(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L331
.L326:
	.loc 1 739 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %ecx
	leal	.LC3@GOTOFF(%ebx), %eax
	movl	%eax, 16(%esp)
	movl	%edx, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	composite_pointer_type@PLT
	movl	%eax, -24(%ebp)
	jmp	.L310
.L331:
	.loc 1 743 0
	leal	__FUNCTION__.17146@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$743, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L310:
	movl	-24(%ebp), %eax
	.loc 1 744 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE26:
	.size	common_type, .-common_type
	.type	comp_except_types, @function
comp_except_types:
.LFB27:
	.loc 1 765 0
	pushl	%ebp
.LCFI47:
	movl	%esp, %ebp
.LCFI48:
	pushl	%ebx
.LCFI49:
	subl	$20, %esp
.LCFI50:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 766 0
	movl	$0, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	comptypes@PLT
	testl	%eax, %eax
	je	.L339
	.loc 1 767 0
	movl	$1, -8(%ebp)
	jmp	.L341
.L339:
	.loc 1 768 0
	cmpl	$0, 16(%ebp)
	jne	.L342
	.loc 1 770 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cp_type_quals@PLT
	testl	%eax, %eax
	jne	.L344
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	cp_type_quals@PLT
	testl	%eax, %eax
	je	.L346
.L344:
	.loc 1 771 0
	movl	$0, -8(%ebp)
	jmp	.L341
.L346:
	.loc 1 773 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L347
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L347
	.loc 1 776 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 8(%ebp)
	.loc 1 777 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 12(%ebp)
	.loc 1 778 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cp_type_quals@PLT
	testl	%eax, %eax
	jne	.L350
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	cp_type_quals@PLT
	testl	%eax, %eax
	je	.L347
.L350:
	.loc 1 779 0
	movl	$0, -8(%ebp)
	jmp	.L341
.L347:
	.loc 1 782 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	jne	.L352
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	je	.L354
.L352:
	.loc 1 784 0
	movl	$0, -8(%ebp)
	jmp	.L341
.L354:
	.loc 1 786 0
	movl	$0, 12(%esp)
	movl	$6, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	lookup_base@PLT
	testl	%eax, %eax
	je	.L342
	.loc 1 787 0
	movl	$2, -8(%ebp)
	jmp	.L341
.L342:
	.loc 1 789 0
	movl	$0, -8(%ebp)
.L341:
	movl	-8(%ebp), %eax
	.loc 1 790 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE27:
	.size	comp_except_types, .-comp_except_types
.globl comp_except_specs
	.type	comp_except_specs, @function
comp_except_specs:
.LFB28:
	.loc 1 802 0
	pushl	%ebp
.LCFI51:
	movl	%esp, %ebp
.LCFI52:
	pushl	%ebx
.LCFI53:
	subl	$68, %esp
.LCFI54:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 805 0
	movl	$0, -16(%ebp)
	.loc 1 807 0
	movl	8(%ebp), %eax
	cmpl	12(%ebp), %eax
	jne	.L358
	.loc 1 808 0
	movl	$1, -52(%ebp)
	jmp	.L360
.L358:
	.loc 1 810 0
	cmpl	$0, 8(%ebp)
	jne	.L361
	.loc 1 811 0
	cmpl	$0, 12(%ebp)
	je	.L363
	cmpl	$0, 16(%ebp)
	jne	.L365
.L363:
	movl	$1, -48(%ebp)
	jmp	.L366
.L365:
	movl	$0, -48(%ebp)
.L366:
	movl	-48(%ebp), %eax
	movl	%eax, -52(%ebp)
	jmp	.L360
.L361:
	.loc 1 812 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	jne	.L367
	.loc 1 813 0
	cmpl	$0, 12(%ebp)
	je	.L369
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	jne	.L369
	movl	$1, -44(%ebp)
	jmp	.L372
.L369:
	movl	$0, -44(%ebp)
.L372:
	movl	-44(%ebp), %eax
	movl	%eax, -52(%ebp)
	jmp	.L360
.L367:
	.loc 1 814 0
	cmpl	$0, 12(%ebp)
	jne	.L373
	.loc 1 815 0
	movl	$0, -52(%ebp)
	jmp	.L360
.L373:
	.loc 1 816 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L375
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	jne	.L375
	.loc 1 817 0
	cmpl	$0, 16(%ebp)
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -52(%ebp)
	jmp	.L360
.L375:
	.loc 1 823 0
	movl	8(%ebp), %eax
	movl	%eax, -20(%ebp)
	jmp	.L378
.L379:
	.loc 1 825 0
	movl	-20(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L380
.L381:
.LBB15:
	.loc 1 827 0
	movl	-24(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 828 0
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 830 0
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	comp_except_types
	testl	%eax, %eax
	je	.L382
	.loc 1 832 0
	movl	-24(%ebp), %eax
	cmpl	-20(%ebp), %eax
	jne	.L384
	cmpl	$0, 16(%ebp)
	je	.L384
	.loc 1 833 0
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
.L384:
	.loc 1 834 0
	addl	$1, -16(%ebp)
	.loc 1 835 0
	jmp	.L387
.L382:
.LBE15:
	.loc 1 825 0
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
.L380:
	cmpl	$0, -24(%ebp)
	jne	.L381
.L387:
	.loc 1 838 0
	cmpl	$0, -24(%ebp)
	jne	.L388
	.loc 1 839 0
	movl	$0, -52(%ebp)
	jmp	.L360
.L388:
	.loc 1 823 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%ebp)
.L378:
	cmpl	$0, 12(%ebp)
	jne	.L379
	.loc 1 841 0
	cmpl	$0, 16(%ebp)
	je	.L391
	cmpl	$0, -20(%ebp)
	je	.L391
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	list_length@PLT
	cmpl	-16(%ebp), %eax
	jne	.L394
.L391:
	movl	$1, -40(%ebp)
	jmp	.L395
.L394:
	movl	$0, -40(%ebp)
.L395:
	movl	-40(%ebp), %eax
	movl	%eax, -52(%ebp)
.L360:
	movl	-52(%ebp), %eax
	.loc 1 842 0
	addl	$68, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE28:
	.size	comp_except_specs, .-comp_except_specs
	.type	comp_array_types, @function
comp_array_types:
.LFB29:
	.loc 1 852 0
	pushl	%ebp
.LCFI55:
	movl	%esp, %ebp
.LCFI56:
	pushl	%ebx
.LCFI57:
	subl	$36, %esp
.LCFI58:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 856 0
	movl	12(%ebp), %eax
	cmpl	16(%ebp), %eax
	jne	.L398
	.loc 1 857 0
	movl	$1, -28(%ebp)
	jmp	.L400
.L398:
	.loc 1 860 0
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	je	.L401
	movl	20(%ebp), %edx
	andl	$-5, %edx
	movl	16(%ebp), %eax
	movl	4(%eax), %ecx
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	*8(%ebp)
	testl	%eax, %eax
	jne	.L401
	.loc 1 863 0
	movl	$0, -28(%ebp)
	jmp	.L400
.L401:
	.loc 1 865 0
	movl	12(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 866 0
	movl	16(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 868 0
	movl	-12(%ebp), %eax
	cmpl	-8(%ebp), %eax
	jne	.L404
	.loc 1 869 0
	movl	$1, -28(%ebp)
	jmp	.L400
.L404:
	.loc 1 883 0
	cmpl	$0, -12(%ebp)
	je	.L406
	cmpl	$0, -8(%ebp)
	jne	.L408
.L406:
	.loc 1 884 0
	movl	20(%ebp), %eax
	andl	$4, %eax
	movl	%eax, -28(%ebp)
	jmp	.L400
.L408:
	.loc 1 887 0
	movl	-8(%ebp), %eax
	movl	60(%eax), %edx
	movl	-12(%ebp), %eax
	movl	60(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	cp_tree_equal@PLT
	testl	%eax, %eax
	je	.L409
	movl	-8(%ebp), %eax
	movl	64(%eax), %edx
	movl	-12(%ebp), %eax
	movl	64(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	cp_tree_equal@PLT
	testl	%eax, %eax
	je	.L409
	movl	$1, -24(%ebp)
	jmp	.L412
.L409:
	movl	$0, -24(%ebp)
.L412:
	movl	-24(%ebp), %eax
	movl	%eax, -28(%ebp)
.L400:
	movl	-28(%ebp), %eax
	.loc 1 891 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE29:
	.size	comp_array_types, .-comp_array_types
	.section	.rodata
	.type	__FUNCTION__.17359, @object
	.size	__FUNCTION__.17359, 10
__FUNCTION__.17359:
	.string	"comptypes"
	.text
.globl comptypes
	.type	comptypes, @function
comptypes:
.LFB30:
	.loc 1 902 0
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
	subl	$172, %esp
.LCFI64:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 904 0
	movl	16(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 913 0
	andl	$-5, 16(%ebp)
	.loc 1 916 0
	movl	8(%ebp), %eax
	cmpl	12(%ebp), %eax
	jne	.L415
	.loc 1 917 0
	movl	$1, -160(%ebp)
	jmp	.L417
.L415:
	.loc 1 920 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L418
	leal	__FUNCTION__.17359@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$920, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L418:
	.loc 1 922 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	12(%ebp), %eax
	jne	.L420
	.loc 1 923 0
	movl	$0, -160(%ebp)
	jmp	.L417
.L420:
	.loc 1 927 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$7, %al
	jne	.L422
	movl	8(%ebp), %eax
	movzbl	38(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L422
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L422
	.loc 1 929 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, 8(%ebp)
.L422:
	.loc 1 931 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$7, %al
	jne	.L426
	movl	12(%ebp), %eax
	movzbl	38(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L426
	movl	12(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L426
	.loc 1 933 0
	movl	12(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, 12(%ebp)
.L426:
	.loc 1 935 0
	movl	16(%ebp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L430
	.loc 1 939 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$11, %al
	jne	.L432
	.loc 1 940 0
	movl	8(%ebp), %eax
	movzwl	36(%eax), %eax
	andw	$511, %ax
	movzwl	%ax, %eax
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	c_common_type_for_size@PLT
	movl	%eax, 8(%ebp)
.L432:
	.loc 1 941 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$11, %al
	jne	.L434
	.loc 1 942 0
	movl	12(%ebp), %eax
	movzwl	36(%eax), %eax
	andw	$511, %ax
	movzwl	%ax, %eax
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	c_common_type_for_size@PLT
	movl	%eax, 12(%ebp)
.L434:
	.loc 1 944 0
	movl	8(%ebp), %eax
	cmpl	12(%ebp), %eax
	jne	.L430
	.loc 1 945 0
	movl	$1, -160(%ebp)
	jmp	.L417
.L430:
	.loc 1 948 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	jne	.L437
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	testl	%eax, %eax
	je	.L437
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	8(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L437
	.loc 1 949 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, 8(%ebp)
.L437:
	.loc 1 950 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	jne	.L441
	movl	12(%ebp), %eax
	movl	92(%eax), %eax
	testl	%eax, %eax
	je	.L441
	movl	12(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	8(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L441
	.loc 1 951 0
	movl	12(%ebp), %eax
	movl	16(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, 12(%ebp)
.L441:
	.loc 1 954 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %edx
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	%al, %dl
	je	.L445
	.loc 1 955 0
	movl	$0, -160(%ebp)
	jmp	.L417
.L445:
	.loc 1 958 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cp_type_quals@PLT
	movl	%eax, %esi
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	cp_type_quals@PLT
	cmpl	%eax, %esi
	je	.L447
	.loc 1 959 0
	movl	$0, -160(%ebp)
	jmp	.L417
.L447:
	.loc 1 960 0
	cmpl	$0, 16(%ebp)
	jne	.L449
	movl	8(%ebp), %eax
	movzbl	39(%eax), %eax
	movl	%eax, %edx
	shrb	$3, %dl
	andl	$1, %edx
	movl	12(%ebp), %eax
	movzbl	39(%eax), %eax
	shrb	$3, %al
	andl	$1, %eax
	cmpb	%al, %dl
	je	.L449
	.loc 1 962 0
	movl	$0, -160(%ebp)
	jmp	.L417
.L449:
	.loc 1 968 0
	movl	8(%ebp), %eax
	movl	72(%eax), %edx
	movl	12(%ebp), %eax
	movl	72(%eax), %eax
	cmpl	%eax, %edx
	jne	.L452
	.loc 1 969 0
	movl	$1, -160(%ebp)
	jmp	.L417
.L452:
	.loc 1 971 0
	movl	16(%ebp), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L454
	.loc 1 972 0
	movl	$1, -24(%ebp)
	jmp	.L456
.L454:
	.loc 1 974 0
	movl	targetm@GOT(%ebx), %eax
	movl	188(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	movl	%eax, -24(%ebp)
	cmpl	$0, -24(%ebp)
	jne	.L456
	.loc 1 975 0
	movl	$0, -160(%ebp)
	jmp	.L417
.L456:
	.loc 1 978 0
	movl	$0, -20(%ebp)
	.loc 1 980 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -156(%ebp)
	cmpl	$22, -156(%ebp)
	ja	.L469
	cmpl	$21, -156(%ebp)
	jae	.L464
	cmpl	$15, -156(%ebp)
	je	.L461
	cmpl	$15, -156(%ebp)
	ja	.L470
	cmpl	$9, -156(%ebp)
	je	.L459
	cmpl	$14, -156(%ebp)
	je	.L460
	jmp	.L458
.L470:
	cmpl	$17, -156(%ebp)
	je	.L462
	cmpl	$17, -156(%ebp)
	jb	.L460
	cmpl	$19, -156(%ebp)
	je	.L463
	jmp	.L458
.L469:
	cmpl	$196, -156(%ebp)
	ja	.L471
	cmpl	$195, -156(%ebp)
	jae	.L466
	cmpl	$24, -156(%ebp)
	je	.L462
	cmpl	$194, -156(%ebp)
	je	.L465
	jmp	.L458
.L471:
	cmpl	$197, -156(%ebp)
	je	.L467
	cmpl	$198, -156(%ebp)
	je	.L468
	jmp	.L458
.L466:
	.loc 1 984 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	16(%eax), %esi
	movl	20(%eax), %edi
	movl	12(%ebp), %eax
	movl	16(%eax), %eax
	movl	20(%eax), %edx
	movl	16(%eax), %eax
	movl	%edi, %ecx
	xorl	%edx, %ecx
	xorl	%esi, %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	jne	.L472
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	24(%eax), %esi
	movl	28(%eax), %edi
	movl	12(%ebp), %eax
	movl	16(%eax), %eax
	movl	28(%eax), %edx
	movl	24(%eax), %eax
	movl	%edi, %ecx
	xorl	%edx, %ecx
	xorl	%esi, %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	je	.L474
.L472:
	.loc 1 986 0
	movl	$0, -160(%ebp)
	jmp	.L417
.L474:
	.loc 1 987 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	jne	.L475
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$11, %al
	jne	.L477
	movl	12(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, -148(%ebp)
	jmp	.L479
.L477:
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	jne	.L480
	movl	12(%ebp), %eax
	movl	92(%eax), %eax
	movl	64(%eax), %eax
	movl	%eax, -144(%ebp)
	jmp	.L482
.L480:
	movl	12(%ebp), %eax
	movl	92(%eax), %eax
	testl	%eax, %eax
	je	.L483
	movl	12(%ebp), %eax
	movl	92(%eax), %eax
	movl	64(%eax), %eax
	movl	%eax, -140(%ebp)
	jmp	.L485
.L483:
	movl	$0, -140(%ebp)
.L485:
	movl	-140(%ebp), %eax
	movl	%eax, -144(%ebp)
.L482:
	movl	-144(%ebp), %edx
	movl	%edx, -148(%ebp)
.L479:
	movl	-148(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -152(%ebp)
	jmp	.L486
.L475:
	movl	12(%ebp), %eax
	movl	56(%eax), %eax
	movl	%eax, -152(%ebp)
.L486:
	movl	-152(%ebp), %edx
	movl	60(%edx), %edx
	movl	%edx, -136(%ebp)
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	jne	.L487
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$11, %al
	jne	.L489
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, -128(%ebp)
	jmp	.L491
.L489:
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	jne	.L492
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movl	64(%eax), %eax
	movl	%eax, -124(%ebp)
	jmp	.L494
.L492:
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	testl	%eax, %eax
	je	.L495
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movl	64(%eax), %eax
	movl	%eax, -120(%ebp)
	jmp	.L497
.L495:
	movl	$0, -120(%ebp)
.L497:
	movl	-120(%ebp), %eax
	movl	%eax, -124(%ebp)
.L494:
	movl	-124(%ebp), %edx
	movl	%edx, -128(%ebp)
.L491:
	movl	-128(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -132(%ebp)
	jmp	.L498
.L487:
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	movl	%eax, -132(%ebp)
.L498:
	movl	-132(%ebp), %edx
	movl	60(%edx), %eax
	movl	-136(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	comp_template_parms@PLT
	testl	%eax, %eax
	jne	.L499
	.loc 1 990 0
	movl	$0, -160(%ebp)
	jmp	.L417
.L499:
	.loc 1 991 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-61, %al
	jne	.L501
	.loc 1 992 0
	movl	$1, -160(%ebp)
	jmp	.L417
.L501:
	.loc 1 994 0
	movl	$0, 16(%ebp)
.L464:
	.loc 1 999 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$11, %al
	jne	.L503
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	testl	%eax, %eax
	setne	-114(%ebp)
	jmp	.L505
.L503:
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	jne	.L506
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movl	64(%eax), %eax
	testl	%eax, %eax
	setne	-113(%ebp)
	jmp	.L508
.L506:
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	testl	%eax, %eax
	je	.L509
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movl	64(%eax), %eax
	testl	%eax, %eax
	je	.L509
	movl	$1, -112(%ebp)
	jmp	.L512
.L509:
	movl	$0, -112(%ebp)
.L512:
	movzbl	-112(%ebp), %eax
	movb	%al, -113(%ebp)
.L508:
	movzbl	-113(%ebp), %edx
	movb	%dl, -114(%ebp)
.L505:
	cmpb	$0, -114(%ebp)
	je	.L513
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$11, %al
	jne	.L515
	movl	12(%ebp), %eax
	movl	76(%eax), %eax
	testl	%eax, %eax
	setne	-106(%ebp)
	jmp	.L517
.L515:
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	jne	.L518
	movl	12(%ebp), %eax
	movl	92(%eax), %eax
	movl	64(%eax), %eax
	testl	%eax, %eax
	setne	-105(%ebp)
	jmp	.L520
.L518:
	movl	12(%ebp), %eax
	movl	92(%eax), %eax
	testl	%eax, %eax
	je	.L521
	movl	12(%ebp), %eax
	movl	92(%eax), %eax
	movl	64(%eax), %eax
	testl	%eax, %eax
	je	.L521
	movl	$1, -104(%ebp)
	jmp	.L524
.L521:
	movl	$0, -104(%ebp)
.L524:
	movzbl	-104(%ebp), %eax
	movb	%al, -105(%ebp)
.L520:
	movzbl	-105(%ebp), %edx
	movb	%dl, -106(%ebp)
.L517:
	cmpb	$0, -106(%ebp)
	je	.L513
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$11, %al
	jne	.L526
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, -100(%ebp)
	jmp	.L528
.L526:
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	jne	.L529
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movl	64(%eax), %eax
	movl	%eax, -96(%ebp)
	jmp	.L531
.L529:
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	testl	%eax, %eax
	je	.L532
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movl	64(%eax), %eax
	movl	%eax, -92(%ebp)
	jmp	.L534
.L532:
	movl	$0, -92(%ebp)
.L534:
	movl	-92(%ebp), %eax
	movl	%eax, -96(%ebp)
.L531:
	movl	-96(%ebp), %edx
	movl	%edx, -100(%ebp)
.L528:
	movl	-100(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -88(%ebp)
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$11, %al
	jne	.L535
	movl	12(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, -84(%ebp)
	jmp	.L537
.L535:
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	jne	.L538
	movl	12(%ebp), %eax
	movl	92(%eax), %eax
	movl	64(%eax), %eax
	movl	%eax, -80(%ebp)
	jmp	.L540
.L538:
	movl	12(%ebp), %eax
	movl	92(%eax), %eax
	testl	%eax, %eax
	je	.L541
	movl	12(%ebp), %eax
	movl	92(%eax), %eax
	movl	64(%eax), %eax
	movl	%eax, -76(%ebp)
	jmp	.L543
.L541:
	movl	$0, -76(%ebp)
.L543:
	movl	-76(%ebp), %edx
	movl	%edx, -80(%ebp)
.L540:
	movl	-80(%ebp), %eax
	movl	%eax, -84(%ebp)
.L537:
	movl	-84(%ebp), %edx
	movl	16(%edx), %eax
	cmpl	%eax, -88(%ebp)
	je	.L544
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	jne	.L513
.L544:
	.loc 1 1002 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$11, %al
	jne	.L546
	movl	12(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, -72(%ebp)
	jmp	.L548
.L546:
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	jne	.L549
	movl	12(%ebp), %eax
	movl	92(%eax), %eax
	movl	64(%eax), %eax
	movl	%eax, -68(%ebp)
	jmp	.L551
.L549:
	movl	12(%ebp), %eax
	movl	92(%eax), %eax
	testl	%eax, %eax
	je	.L552
	movl	12(%ebp), %eax
	movl	92(%eax), %eax
	movl	64(%eax), %eax
	movl	%eax, -64(%ebp)
	jmp	.L554
.L552:
	movl	$0, -64(%ebp)
.L554:
	movl	-64(%ebp), %eax
	movl	%eax, -68(%ebp)
.L551:
	movl	-68(%ebp), %edx
	movl	%edx, -72(%ebp)
.L548:
	movl	-72(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -60(%ebp)
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$11, %al
	jne	.L555
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, -56(%ebp)
	jmp	.L557
.L555:
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	jne	.L558
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movl	64(%eax), %eax
	movl	%eax, -52(%ebp)
	jmp	.L560
.L558:
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	testl	%eax, %eax
	je	.L561
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movl	64(%eax), %eax
	movl	%eax, -48(%ebp)
	jmp	.L563
.L561:
	movl	$0, -48(%ebp)
.L563:
	movl	-48(%ebp), %edx
	movl	%edx, -52(%ebp)
.L560:
	movl	-52(%ebp), %eax
	movl	%eax, -56(%ebp)
.L557:
	movl	-56(%ebp), %edx
	movl	20(%edx), %eax
	movl	-60(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	comp_template_args@PLT
	movl	%eax, -20(%ebp)
.L513:
	.loc 1 1005 0
	movl	16(%ebp), %eax
	andl	$1, %eax
	xorl	$1, %eax
	testb	%al, %al
	jne	.L564
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	lookup_base@PLT
	testl	%eax, %eax
	je	.L564
	.loc 1 1006 0
	movl	$1, -20(%ebp)
	.loc 1 1005 0
	jmp	.L458
.L564:
	.loc 1 1007 0
	movl	16(%ebp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L458
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	lookup_base@PLT
	testl	%eax, %eax
	je	.L458
	.loc 1 1008 0
	movl	$1, -20(%ebp)
	.loc 1 1009 0
	jmp	.L458
.L461:
	.loc 1 1012 0
	movl	12(%ebp), %eax
	movl	64(%eax), %eax
	movl	%eax, (%esp)
	call	build_pointer_type@PLT
	movl	%eax, %esi
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	movl	%eax, (%esp)
	call	build_pointer_type@PLT
	movl	%eax, %edx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%esi, 4(%esp)
	movl	%edx, (%esp)
	call	comptypes@PLT
	testl	%eax, %eax
	je	.L570
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %ecx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	comptypes@PLT
	testl	%eax, %eax
	je	.L570
	movl	$1, -44(%ebp)
	jmp	.L573
.L570:
	movl	$0, -44(%ebp)
.L573:
	movl	-44(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 1015 0
	jmp	.L458
.L460:
	.loc 1 1019 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 8(%ebp)
	.loc 1 1020 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 12(%ebp)
	.loc 1 1023 0
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	comptypes@PLT
	movl	%eax, -20(%ebp)
	.loc 1 1024 0
	cmpl	$0, -20(%ebp)
	jne	.L458
	.loc 1 1026 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	jne	.L458
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	je	.L513
	.loc 1 1029 0
	jmp	.L458
.L462:
	.loc 1 1033 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	je	.L577
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %ecx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	comptypes@PLT
	testl	%eax, %eax
	je	.L579
.L577:
	movl	12(%ebp), %eax
	movl	16(%eax), %edx
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	compparms@PLT
	testl	%eax, %eax
	je	.L579
	movl	$1, -40(%ebp)
	jmp	.L581
.L579:
	movl	$0, -40(%ebp)
.L581:
	movl	-40(%ebp), %edx
	movl	%edx, -20(%ebp)
	.loc 1 1036 0
	jmp	.L458
.L463:
	.loc 1 1042 0
	movl	-16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	comptypes@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	comp_array_types
	movl	%eax, -20(%ebp)
	.loc 1 1043 0
	jmp	.L458
.L465:
	.loc 1 1046 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	16(%eax), %esi
	movl	20(%eax), %edi
	movl	12(%ebp), %eax
	movl	16(%eax), %eax
	movl	20(%eax), %edx
	movl	16(%eax), %eax
	movl	%edi, %ecx
	xorl	%edx, %ecx
	xorl	%esi, %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	jne	.L582
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	24(%eax), %esi
	movl	28(%eax), %edi
	movl	12(%ebp), %eax
	movl	16(%eax), %eax
	movl	28(%eax), %edx
	movl	24(%eax), %eax
	movl	%edi, %ecx
	xorl	%edx, %ecx
	xorl	%esi, %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	jne	.L582
	movl	$1, -36(%ebp)
	jmp	.L585
.L582:
	movl	$0, -36(%ebp)
.L585:
	movl	-36(%ebp), %eax
	movl	%eax, -160(%ebp)
	jmp	.L417
.L467:
	.loc 1 1050 0
	movl	12(%ebp), %eax
	movl	16(%eax), %edx
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	cp_tree_equal@PLT
	testl	%eax, %eax
	jg	.L586
	.loc 1 1052 0
	movl	$0, -160(%ebp)
	jmp	.L417
.L586:
	.loc 1 1053 0
	movl	12(%ebp), %eax
	movl	80(%eax), %edx
	movl	8(%ebp), %eax
	movl	80(%eax), %eax
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	comptypes@PLT
	movl	%eax, -160(%ebp)
	jmp	.L417
.L468:
	.loc 1 1056 0
	movl	12(%ebp), %eax
	movl	56(%eax), %eax
	movl	52(%eax), %edx
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	movl	52(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	cp_tree_equal@PLT
	testl	%eax, %eax
	jg	.L588
	.loc 1 1058 0
	movl	$0, -160(%ebp)
	jmp	.L417
.L588:
	.loc 1 1059 0
	movl	12(%ebp), %eax
	movl	80(%eax), %edx
	movl	8(%ebp), %eax
	movl	80(%eax), %eax
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	comptypes@PLT
	movl	%eax, -160(%ebp)
	jmp	.L417
.L459:
	.loc 1 1062 0
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	comptypes@PLT
	movl	%eax, -160(%ebp)
	jmp	.L417
.L458:
	.loc 1 1067 0
	cmpl	$2, -24(%ebp)
	jne	.L590
	cmpl	$1, -20(%ebp)
	je	.L592
.L590:
	movl	-20(%ebp), %edx
	movl	%edx, -32(%ebp)
	jmp	.L593
.L592:
	movl	$2, -32(%ebp)
.L593:
	movl	-32(%ebp), %eax
	movl	%eax, -160(%ebp)
.L417:
	movl	-160(%ebp), %eax
	.loc 1 1068 0
	addl	$172, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE30:
	.size	comptypes, .-comptypes
	.type	comp_cv_target_types, @function
comp_cv_target_types:
.LFB31:
	.loc 1 1077 0
	pushl	%ebp
.LCFI65:
	movl	%esp, %ebp
.LCFI66:
	pushl	%ebx
.LCFI67:
	subl	$36, %esp
.LCFI68:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1080 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	at_least_as_qualified_p@PLT
	testl	%eax, %eax
	jne	.L596
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	at_least_as_qualified_p@PLT
	testl	%eax, %eax
	jne	.L596
	.loc 1 1083 0
	movl	$0, -28(%ebp)
	jmp	.L599
.L596:
	.loc 1 1085 0
	movl	8(%ebp), %eax
	movl	72(%eax), %edx
	movl	12(%ebp), %eax
	movl	72(%eax), %eax
	cmpl	%eax, %edx
	jne	.L600
	.loc 1 1086 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	more_qualified_p@PLT
	testl	%eax, %eax
	je	.L602
	movl	$-1, -24(%ebp)
	jmp	.L604
.L602:
	movl	$1, -24(%ebp)
.L604:
	movl	-24(%ebp), %eax
	movl	%eax, -28(%ebp)
	jmp	.L599
.L600:
	.loc 1 1088 0
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	comp_target_types@PLT
	movl	%eax, -8(%ebp)
	.loc 1 1089 0
	cmpl	$1, -8(%ebp)
	jne	.L605
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	at_least_as_qualified_p@PLT
	testl	%eax, %eax
	jne	.L607
.L605:
	cmpl	$-1, -8(%ebp)
	jne	.L608
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	at_least_as_qualified_p@PLT
	testl	%eax, %eax
	je	.L608
.L607:
	.loc 1 1091 0
	movl	-8(%ebp), %eax
	movl	%eax, -28(%ebp)
	jmp	.L599
.L608:
	.loc 1 1093 0
	movl	$0, -28(%ebp)
.L599:
	movl	-28(%ebp), %eax
	.loc 1 1094 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE31:
	.size	comp_cv_target_types, .-comp_cv_target_types
.globl comp_target_types
	.type	comp_target_types, @function
comp_target_types:
.LFB32:
	.loc 1 1112 0
	pushl	%ebp
.LCFI69:
	movl	%esp, %ebp
.LCFI70:
	pushl	%esi
.LCFI71:
	pushl	%ebx
.LCFI72:
	subl	$64, %esp
.LCFI73:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1113 0
	movl	8(%ebp), %eax
	movl	72(%eax), %eax
	movl	%eax, 8(%ebp)
	.loc 1 1114 0
	movl	12(%ebp), %eax
	movl	72(%eax), %eax
	movl	%eax, 12(%ebp)
	.loc 1 1115 0
	movl	$0, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	comptypes@PLT
	testl	%eax, %eax
	je	.L612
	.loc 1 1116 0
	movl	$1, -56(%ebp)
	jmp	.L614
.L612:
	.loc 1 1118 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %edx
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	%al, %dl
	je	.L615
	.loc 1 1119 0
	movl	$0, -56(%ebp)
	jmp	.L614
.L615:
	.loc 1 1121 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	je	.L617
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$16, %al
	jne	.L619
.L617:
	cmpl	$0, 16(%ebp)
	jle	.L619
.LBB16:
	.loc 1 1129 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -40(%ebp)
	.loc 1 1131 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 8(%ebp)
	.loc 1 1132 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 12(%ebp)
	.loc 1 1134 0
	cmpl	$0, -40(%ebp)
	je	.L621
	.loc 1 1136 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$25, %al
	je	.L623
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$25, %al
	jne	.L625
.L623:
	.loc 1 1138 0
	movl	$1, -56(%ebp)
	jmp	.L614
.L625:
	.loc 1 1139 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$6, %al
	jne	.L626
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$24, %al
	je	.L626
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$17, %al
	je	.L626
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$15, %al
	je	.L626
	.loc 1 1143 0
	movl	$1, -56(%ebp)
	jmp	.L614
.L626:
	.loc 1 1144 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$6, %al
	jne	.L631
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$24, %al
	je	.L631
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$17, %al
	je	.L631
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$15, %al
	je	.L631
	.loc 1 1148 0
	movl	$-1, -56(%ebp)
	jmp	.L614
.L631:
	.loc 1 1149 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	je	.L636
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$19, %al
	jne	.L621
.L636:
	.loc 1 1152 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	comp_ptr_ttypes@PLT
	testl	%eax, %eax
	je	.L638
	.loc 1 1153 0
	movl	$1, -56(%ebp)
	jmp	.L614
.L638:
	.loc 1 1154 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	comp_ptr_ttypes@PLT
	testl	%eax, %eax
	je	.L640
	.loc 1 1155 0
	movl	$-1, -56(%ebp)
	jmp	.L614
.L640:
	.loc 1 1156 0
	movl	$0, -56(%ebp)
	jmp	.L614
.L621:
	.loc 1 1162 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$24, %al
	je	.L642
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$17, %al
	jne	.L644
.L642:
	.loc 1 1163 0
	movl	16(%ebp), %eax
	subl	$1, %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	comp_target_types@PLT
	movl	%eax, -56(%ebp)
	jmp	.L614
.L644:
	.loc 1 1165 0
	movl	16(%ebp), %eax
	subl	$1, %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	comp_cv_target_types
	movl	%eax, -56(%ebp)
	jmp	.L614
.L619:
.LBE16:
	.loc 1 1168 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$19, %al
	jne	.L645
	.loc 1 1169 0
	movl	$0, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	comp_target_types@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	comp_array_types
	movl	%eax, -56(%ebp)
	jmp	.L614
.L645:
	.loc 1 1170 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$24, %al
	je	.L647
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$17, %al
	jne	.L649
.L647:
.LBB17:
	.loc 1 1173 0
	movl	$0, -28(%ebp)
	.loc 1 1175 0
	movl	pedantic@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L650
	.loc 1 1177 0
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	comptypes@PLT
	testl	%eax, %eax
	jne	.L654
	.loc 1 1178 0
	movl	$0, -56(%ebp)
	jmp	.L614
.L650:
	.loc 1 1182 0
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	$-1, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	comp_target_types@PLT
	movl	%eax, -52(%ebp)
	cmpl	$-1, -52(%ebp)
	je	.L655
	cmpl	$0, -52(%ebp)
	je	.L656
	jmp	.L654
.L656:
	.loc 1 1185 0
	movl	$0, -56(%ebp)
	jmp	.L614
.L655:
	.loc 1 1187 0
	movl	$1, -28(%ebp)
.L654:
	.loc 1 1191 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -36(%ebp)
	.loc 1 1192 0
	movl	12(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 1195 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$17, %al
	jne	.L657
.LBB18:
	.loc 1 1197 0
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 1198 0
	movl	12(%ebp), %eax
	movl	64(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 1200 0
	movl	$1, 8(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	comptypes@PLT
	testl	%eax, %eax
	jne	.L659
	.loc 1 1202 0
	movl	$1, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	comptypes@PLT
	testl	%eax, %eax
	je	.L661
	.loc 1 1203 0
	movl	$1, -28(%ebp)
	jmp	.L659
.L661:
	.loc 1 1205 0
	movl	$0, -56(%ebp)
	jmp	.L614
.L659:
	.loc 1 1208 0
	movl	-36(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -36(%ebp)
	.loc 1 1209 0
	movl	-32(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
.L657:
.LBE18:
	.loc 1 1212 0
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	comp_target_parms
	movl	%eax, -48(%ebp)
	cmpl	$-1, -48(%ebp)
	je	.L664
	cmpl	$0, -48(%ebp)
	je	.L665
	jmp	.L663
.L665:
	.loc 1 1215 0
	movl	$0, -56(%ebp)
	jmp	.L614
.L664:
	.loc 1 1217 0
	movl	$1, -28(%ebp)
.L663:
	.loc 1 1220 0
	cmpl	$0, -28(%ebp)
	je	.L666
	movl	$-1, -44(%ebp)
	jmp	.L668
.L666:
	movl	$1, -44(%ebp)
.L668:
	movl	-44(%ebp), %eax
	movl	%eax, -56(%ebp)
	jmp	.L614
.L649:
.LBE17:
	.loc 1 1223 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$15, %al
	jne	.L669
.LBB19:
	.loc 1 1230 0
	movl	8(%ebp), %eax
	movl	64(%eax), %edx
	movl	12(%ebp), %eax
	movl	64(%eax), %eax
	movl	$1, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	comptypes@PLT
	testl	%eax, %eax
	je	.L671
	.loc 1 1232 0
	movl	$1, -16(%ebp)
	jmp	.L673
.L671:
	.loc 1 1233 0
	movl	12(%ebp), %eax
	movl	64(%eax), %edx
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	movl	$1, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	comptypes@PLT
	testl	%eax, %eax
	je	.L674
.LBB20:
	.loc 1 1236 0
	movl	8(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1237 0
	movl	12(%ebp), %eax
	movl	%eax, 8(%ebp)
	.loc 1 1238 0
	movl	-12(%ebp), %eax
	movl	%eax, 12(%ebp)
	.loc 1 1239 0
	movl	$-1, -16(%ebp)
	jmp	.L673
.L674:
.LBE20:
	.loc 1 1242 0
	movl	$0, -56(%ebp)
	jmp	.L614
.L673:
	.loc 1 1244 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 8(%ebp)
	.loc 1 1245 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 12(%ebp)
	.loc 1 1247 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	je	.L676
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$19, %al
	jne	.L678
.L676:
	.loc 1 1250 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	comp_ptr_ttypes@PLT
	testl	%eax, %eax
	je	.L679
	.loc 1 1251 0
	movl	-16(%ebp), %eax
	movl	%eax, -56(%ebp)
	jmp	.L614
.L679:
	.loc 1 1252 0
	movl	$0, -56(%ebp)
	jmp	.L614
.L678:
	.loc 1 1256 0
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	comp_cv_target_types
	cmpl	$1, %eax
	jne	.L681
	.loc 1 1257 0
	movl	-16(%ebp), %eax
	movl	%eax, -56(%ebp)
	jmp	.L614
.L681:
	.loc 1 1258 0
	movl	$0, -56(%ebp)
	jmp	.L614
.L669:
.LBE19:
	.loc 1 1261 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L683
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L683
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L683
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L683
	movl	8(%ebp), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L688
.L683:
	.loc 1 1263 0
	cmpl	$0, 16(%ebp)
	jns	.L689
	.loc 1 1264 0
	movl	$0, -56(%ebp)
	jmp	.L614
.L689:
	.loc 1 1265 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	build_pointer_type@PLT
	movl	%eax, %esi
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_pointer_type@PLT
	movl	$1, 8(%esp)
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	call	comptypes@PLT
	testl	%eax, %eax
	je	.L691
	.loc 1 1267 0
	movl	$1, -56(%ebp)
	jmp	.L614
.L691:
	.loc 1 1268 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_pointer_type@PLT
	movl	%eax, %esi
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	build_pointer_type@PLT
	movl	$1, 8(%esp)
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	call	comptypes@PLT
	testl	%eax, %eax
	je	.L693
	.loc 1 1270 0
	movl	$-1, -56(%ebp)
	jmp	.L614
.L693:
	.loc 1 1271 0
	movl	$0, -56(%ebp)
	jmp	.L614
.L688:
	.loc 1 1274 0
	movl	$0, -56(%ebp)
.L614:
	movl	-56(%ebp), %eax
	.loc 1 1275 0
	addl	$64, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE32:
	.size	comp_target_types, .-comp_target_types
.globl at_least_as_qualified_p
	.type	at_least_as_qualified_p, @function
at_least_as_qualified_p:
.LFB33:
	.loc 1 1283 0
	pushl	%ebp
.LCFI74:
	movl	%esp, %ebp
.LCFI75:
	pushl	%esi
.LCFI76:
	pushl	%ebx
.LCFI77:
	subl	$16, %esp
.LCFI78:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1285 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cp_type_quals@PLT
	movl	%eax, %esi
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	cp_type_quals@PLT
	andl	%eax, %esi
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	cp_type_quals@PLT
	cmpl	%eax, %esi
	sete	%al
	movzbl	%al, %eax
	.loc 1 1287 0
	addl	$16, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE33:
	.size	at_least_as_qualified_p, .-at_least_as_qualified_p
.globl more_qualified_p
	.type	more_qualified_p, @function
more_qualified_p:
.LFB34:
	.loc 1 1295 0
	pushl	%ebp
.LCFI79:
	movl	%esp, %ebp
.LCFI80:
	pushl	%esi
.LCFI81:
	pushl	%ebx
.LCFI82:
	subl	$16, %esp
.LCFI83:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1296 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cp_type_quals@PLT
	movl	%eax, %esi
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	cp_type_quals@PLT
	cmpl	%eax, %esi
	je	.L699
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	at_least_as_qualified_p@PLT
	testl	%eax, %eax
	je	.L699
	movl	$1, -12(%ebp)
	jmp	.L702
.L699:
	movl	$0, -12(%ebp)
.L702:
	movl	-12(%ebp), %eax
	.loc 1 1298 0
	addl	$16, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE34:
	.size	more_qualified_p, .-more_qualified_p
.globl comp_cv_qualification
	.type	comp_cv_qualification, @function
comp_cv_qualification:
.LFB35:
	.loc 1 1307 0
	pushl	%ebp
.LCFI84:
	movl	%esp, %ebp
.LCFI85:
	pushl	%esi
.LCFI86:
	pushl	%ebx
.LCFI87:
	subl	$16, %esp
.LCFI88:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1308 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cp_type_quals@PLT
	movl	%eax, %esi
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	cp_type_quals@PLT
	cmpl	%eax, %esi
	jne	.L705
	.loc 1 1309 0
	movl	$0, -12(%ebp)
	jmp	.L707
.L705:
	.loc 1 1311 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	at_least_as_qualified_p@PLT
	testl	%eax, %eax
	je	.L708
	.loc 1 1312 0
	movl	$1, -12(%ebp)
	jmp	.L707
.L708:
	.loc 1 1314 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	at_least_as_qualified_p@PLT
	testl	%eax, %eax
	je	.L710
	.loc 1 1315 0
	movl	$-1, -12(%ebp)
	jmp	.L707
.L710:
	.loc 1 1317 0
	movl	$0, -12(%ebp)
.L707:
	movl	-12(%ebp), %eax
	.loc 1 1318 0
	addl	$16, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE35:
	.size	comp_cv_qualification, .-comp_cv_qualification
.globl comp_cv_qual_signature
	.type	comp_cv_qual_signature, @function
comp_cv_qual_signature:
.LFB36:
	.loc 1 1328 0
	pushl	%ebp
.LCFI89:
	movl	%esp, %ebp
.LCFI90:
	subl	$24, %esp
.LCFI91:
	.loc 1 1329 0
	movl	$-1, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	comp_ptr_ttypes_real
	testl	%eax, %eax
	je	.L714
	.loc 1 1330 0
	movl	$1, -4(%ebp)
	jmp	.L716
.L714:
	.loc 1 1331 0
	movl	$-1, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	comp_ptr_ttypes_real
	testl	%eax, %eax
	je	.L717
	.loc 1 1332 0
	movl	$-1, -4(%ebp)
	jmp	.L716
.L717:
	.loc 1 1334 0
	movl	$0, -4(%ebp)
.L716:
	movl	-4(%ebp), %eax
	.loc 1 1335 0
	leave
	ret
.LFE36:
	.size	comp_cv_qual_signature, .-comp_cv_qual_signature
	.type	common_base_type, @function
common_base_type:
.LFB37:
	.loc 1 1344 0
	pushl	%ebp
.LCFI92:
	movl	%esp, %ebp
.LCFI93:
	pushl	%ebx
.LCFI94:
	subl	$68, %esp
.LCFI95:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1345 0
	movl	$0, -28(%ebp)
	.loc 1 1349 0
	movl	$0, 12(%esp)
	movl	$5, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	lookup_base@PLT
	testl	%eax, %eax
	je	.L721
	.loc 1 1350 0
	movl	8(%ebp), %eax
	movl	%eax, -48(%ebp)
	jmp	.L723
.L721:
	.loc 1 1351 0
	movl	$0, 12(%esp)
	movl	$5, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	lookup_base@PLT
	testl	%eax, %eax
	je	.L724
	.loc 1 1352 0
	movl	12(%ebp), %eax
	movl	%eax, -48(%ebp)
	jmp	.L723
.L724:
	.loc 1 1356 0
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	movl	36(%eax), %eax
	testl	%eax, %eax
	je	.L726
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	movl	36(%eax), %eax
	movl	16(%eax), %eax
	subl	$1, %eax
	movl	%eax, -44(%ebp)
	jmp	.L728
.L726:
	movl	$-1, -44(%ebp)
.L728:
	movl	-44(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L729
.L730:
.LBB21:
	.loc 1 1358 0
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	movl	36(%eax), %edx
	movl	-24(%ebp), %eax
	movl	20(%edx,%eax,4), %eax
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 1359 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	common_base_type
	movl	%eax, -16(%ebp)
	.loc 1 1360 0
	cmpl	$0, -16(%ebp)
	je	.L731
	.loc 1 1362 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-16(%ebp), %eax
	jne	.L733
	.loc 1 1363 0
	movl	-16(%ebp), %eax
	movl	%eax, -48(%ebp)
	jmp	.L723
.L733:
	.loc 1 1364 0
	cmpl	$0, -28(%ebp)
	jne	.L735
	.loc 1 1365 0
	movl	-16(%ebp), %eax
	movl	%eax, -28(%ebp)
	jmp	.L731
.L735:
	.loc 1 1366 0
	movl	-28(%ebp), %eax
	cmpl	-16(%ebp), %eax
	je	.L731
	.loc 1 1367 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -48(%ebp)
	jmp	.L723
.L731:
.LBE21:
	.loc 1 1356 0
	subl	$1, -24(%ebp)
.L729:
	cmpl	$0, -24(%ebp)
	jns	.L730
	.loc 1 1372 0
	movl	12(%ebp), %eax
	movl	76(%eax), %eax
	movl	36(%eax), %eax
	testl	%eax, %eax
	je	.L739
	movl	12(%ebp), %eax
	movl	76(%eax), %eax
	movl	36(%eax), %eax
	movl	16(%eax), %eax
	subl	$1, %eax
	movl	%eax, -40(%ebp)
	jmp	.L741
.L739:
	movl	$-1, -40(%ebp)
.L741:
	movl	-40(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L742
.L743:
.LBB22:
	.loc 1 1374 0
	movl	12(%ebp), %eax
	movl	76(%eax), %eax
	movl	36(%eax), %edx
	movl	-24(%ebp), %eax
	movl	20(%edx,%eax,4), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1375 0
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	common_base_type
	movl	%eax, -8(%ebp)
	.loc 1 1376 0
	cmpl	$0, -8(%ebp)
	je	.L744
	.loc 1 1378 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-8(%ebp), %eax
	jne	.L746
	.loc 1 1379 0
	movl	-8(%ebp), %eax
	movl	%eax, -48(%ebp)
	jmp	.L723
.L746:
	.loc 1 1380 0
	cmpl	$0, -28(%ebp)
	jne	.L748
	.loc 1 1381 0
	movl	-8(%ebp), %eax
	movl	%eax, -28(%ebp)
	jmp	.L744
.L748:
	.loc 1 1382 0
	movl	-28(%ebp), %eax
	cmpl	-8(%ebp), %eax
	je	.L744
	.loc 1 1383 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -48(%ebp)
	jmp	.L723
.L744:
.LBE22:
	.loc 1 1372 0
	subl	$1, -24(%ebp)
.L742:
	cmpl	$0, -24(%ebp)
	jns	.L743
	.loc 1 1386 0
	movl	-28(%ebp), %eax
	movl	%eax, -48(%ebp)
.L723:
	movl	-48(%ebp), %eax
	.loc 1 1387 0
	addl	$68, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE37:
	.size	common_base_type, .-common_base_type
.globl compparms
	.type	compparms, @function
compparms:
.LFB38:
	.loc 1 1401 0
	pushl	%ebp
.LCFI96:
	movl	%esp, %ebp
.LCFI97:
	pushl	%ebx
.LCFI98:
	subl	$36, %esp
.LCFI99:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1402 0
	movl	8(%ebp), %eax
	movl	%eax, -12(%ebp)
	movl	12(%ebp), %edx
	movl	%edx, -8(%ebp)
.L754:
	.loc 1 1409 0
	cmpl	$0, -12(%ebp)
	jne	.L755
	cmpl	$0, -8(%ebp)
	jne	.L755
	.loc 1 1410 0
	movl	$1, -16(%ebp)
	jmp	.L758
.L755:
	.loc 1 1413 0
	cmpl	$0, -12(%ebp)
	je	.L759
	cmpl	$0, -8(%ebp)
	jne	.L761
.L759:
	.loc 1 1414 0
	movl	$0, -16(%ebp)
	jmp	.L758
.L761:
	.loc 1 1415 0
	movl	-12(%ebp), %ecx
	movl	20(%ecx), %eax
	movl	-8(%ebp), %ecx
	movl	20(%ecx), %edx
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	comptypes@PLT
	testl	%eax, %eax
	jne	.L762
	.loc 1 1416 0
	movl	$0, -16(%ebp)
	jmp	.L758
.L762:
	.loc 1 1418 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1419 0
	movl	-8(%ebp), %edx
	movl	(%edx), %edx
	movl	%edx, -8(%ebp)
	.loc 1 1420 0
	jmp	.L754
.L758:
	movl	-16(%ebp), %eax
	.loc 1 1421 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE38:
	.size	compparms, .-compparms
	.section	.rodata
	.align 4
.LC4:
	.string	"ISO C++ prohibits conversion from `%#T' to `(...)'"
	.text
	.type	comp_target_parms, @function
comp_target_parms:
.LFB39:
	.loc 1 1435 0
	pushl	%ebp
.LCFI100:
	movl	%esp, %ebp
.LCFI101:
	pushl	%ebx
.LCFI102:
	subl	$52, %esp
.LCFI103:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1436 0
	movl	8(%ebp), %eax
	movl	%eax, -28(%ebp)
	movl	12(%ebp), %edx
	movl	%edx, -24(%ebp)
	.loc 1 1437 0
	movl	$0, -16(%ebp)
	.loc 1 1443 0
	cmpl	$0, -28(%ebp)
	jne	.L766
	cmpl	$0, -24(%ebp)
	je	.L766
	.loc 1 1445 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC4@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	pedwarn@PLT
	.loc 1 1447 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	self_promoting_args_p@PLT
	movl	%eax, -36(%ebp)
	jmp	.L769
.L766:
	.loc 1 1449 0
	cmpl	$0, -24(%ebp)
	jne	.L772
	.loc 1 1450 0
	movl	-28(%ebp), %edx
	movl	%edx, (%esp)
	call	self_promoting_args_p@PLT
	movl	%eax, -36(%ebp)
	jmp	.L769
.L773:
.LBB23:
	.loc 1 1458 0
	cmpl	$0, -28(%ebp)
	je	.L774
	cmpl	$0, -24(%ebp)
	jne	.L776
.L774:
	.loc 1 1459 0
	movl	$0, -36(%ebp)
	jmp	.L769
.L776:
	.loc 1 1460 0
	movl	-28(%ebp), %edx
	movl	20(%edx), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1461 0
	movl	-24(%ebp), %edx
	movl	20(%edx), %eax
	movl	%eax, -8(%ebp)
	.loc 1 1462 0
	movl	$0, 8(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	comptypes@PLT
	testl	%eax, %eax
	jne	.L777
	.loc 1 1465 0
	movl	pedantic@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L779
	.loc 1 1466 0
	movl	$0, -36(%ebp)
	jmp	.L769
.L779:
	.loc 1 1468 0
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L781
	movl	-8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	je	.L783
.L781:
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$16, %al
	jne	.L784
	movl	-8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$16, %al
	jne	.L784
.L783:
	.loc 1 1474 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	128(%eax), %eax
	cmpl	%eax, %edx
	je	.L777
	.loc 1 1476 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	128(%eax), %eax
	cmpl	%eax, %edx
	jne	.L787
	.loc 1 1478 0
	movl	$1, -16(%ebp)
	.loc 1 1479 0
	jmp	.L777
.L787:
	.loc 1 1481 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L789
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L789
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L789
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L789
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L784
.L789:
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	72(%eax), %edx
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	72(%eax), %eax
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	comptypes@PLT
	testl	%eax, %eax
	jne	.L784
	.loc 1 1484 0
	movl	$0, -36(%ebp)
	jmp	.L769
.L784:
	.loc 1 1487 0
	movl	$1, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	comp_target_types@PLT
	testl	%eax, %eax
	jg	.L777
	.loc 1 1489 0
	movl	$1, 8(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	comp_target_types@PLT
	testl	%eax, %eax
	jle	.L796
	.loc 1 1491 0
	movl	$1, -16(%ebp)
	.loc 1 1492 0
	jmp	.L777
.L796:
	.loc 1 1494 0
	movl	$0, -36(%ebp)
	jmp	.L769
.L777:
.LBE23:
	.loc 1 1452 0
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
	movl	-24(%ebp), %edx
	movl	(%edx), %edx
	movl	%edx, -24(%ebp)
.L772:
	cmpl	$0, -28(%ebp)
	jne	.L773
	cmpl	$0, -24(%ebp)
	jne	.L773
	.loc 1 1497 0
	cmpl	$0, -16(%ebp)
	je	.L800
	movl	$-1, -32(%ebp)
	jmp	.L802
.L800:
	movl	$1, -32(%ebp)
.L802:
	movl	-32(%ebp), %eax
	movl	%eax, -36(%ebp)
.L769:
	movl	-36(%ebp), %eax
	.loc 1 1498 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE39:
	.size	comp_target_parms, .-comp_target_parms
	.section	.rodata
	.type	__FUNCTION__.18196, @object
	.size	__FUNCTION__.18196, 27
__FUNCTION__.18196:
	.string	"cxx_sizeof_or_alignof_type"
	.align 4
.LC5:
	.string	"invalid application of `%s' to a member function"
	.align 4
.LC6:
	.string	"invalid application of `%s' to non-static member"
	.text
.globl cxx_sizeof_or_alignof_type
	.type	cxx_sizeof_or_alignof_type, @function
cxx_sizeof_or_alignof_type:
.LFB40:
	.loc 1 1505 0
	pushl	%ebp
.LCFI104:
	movl	%esp, %ebp
.LCFI105:
	pushl	%ebx
.LCFI106:
	subl	$36, %esp
.LCFI107:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1510 0
	cmpl	$153, 12(%ebp)
	je	.L805
	cmpl	$155, 12(%ebp)
	jne	.L807
.L805:
	movl	$1, -28(%ebp)
	jmp	.L808
.L807:
	movl	$0, -28(%ebp)
.L808:
	cmpl	$0, -28(%ebp)
	jne	.L809
	leal	__FUNCTION__.18196@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1510, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L809:
	.loc 1 1511 0
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	64(%eax), %edx
	movl	60(%eax), %eax
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L811
	.loc 1 1512 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	build_min_nt@PLT
	movl	%eax, -24(%ebp)
	jmp	.L813
.L811:
	.loc 1 1514 0
	movl	12(%ebp), %eax
	movl	operator_name_info@GOT(%ebx), %edx
	sall	$4, %eax
	addl	%edx, %eax
	addl	$4, %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 1516 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$16, %al
	jne	.L814
	.loc 1 1517 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 8(%ebp)
.L814:
	.loc 1 1518 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -16(%ebp)
	.loc 1 1520 0
	cmpl	$17, -16(%ebp)
	jne	.L816
	.loc 1 1522 0
	cmpl	$0, 16(%ebp)
	je	.L818
	movl	pedantic@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L820
	movl	warn_pointer_arith@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L818
.L820:
	.loc 1 1523 0
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC5@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	pedwarn@PLT
.L818:
	.loc 1 1524 0
	movl	global_trees@GOT(%ebx), %eax
	movl	84(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L822
.L816:
	.loc 1 1526 0
	cmpl	$15, -16(%ebp)
	jne	.L823
	.loc 1 1528 0
	cmpl	$0, 16(%ebp)
	je	.L825
	.loc 1 1529 0
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC6@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L825:
	.loc 1 1530 0
	movl	global_trees@GOT(%ebx), %eax
	movl	80(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L822
.L823:
	.loc 1 1533 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	complete_type@PLT
	movl	%eax, %edx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	c_sizeof_or_alignof_type@PLT
	movl	%eax, -12(%ebp)
.L822:
	.loc 1 1535 0
	movl	-12(%ebp), %eax
	movl	%eax, -24(%ebp)
.L813:
	movl	-24(%ebp), %eax
	.loc 1 1536 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE40:
	.size	cxx_sizeof_or_alignof_type, .-cxx_sizeof_or_alignof_type
	.section	.rodata
.LC7:
	.string	"sizeof applied to a bit-field"
	.align 4
.LC8:
	.string	"ISO C++ forbids applying `sizeof' to an expression of function type"
	.text
.globl expr_sizeof
	.type	expr_sizeof, @function
expr_sizeof:
.LFB41:
	.loc 1 1541 0
	pushl	%ebp
.LCFI108:
	movl	%esp, %ebp
.LCFI109:
	pushl	%ebx
.LCFI110:
	subl	$20, %esp
.LCFI111:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1542 0
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	64(%eax), %edx
	movl	60(%eax), %eax
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L829
	.loc 1 1543 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$153, (%esp)
	call	build_min_nt@PLT
	movl	%eax, -8(%ebp)
	jmp	.L831
.L829:
	.loc 1 1545 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$40, %al
	jne	.L832
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movzbl	38(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L832
	.loc 1 1547 0
	leal	.LC7@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L832:
	.loc 1 1548 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	is_overloaded_fn@PLT
	testl	%eax, %eax
	je	.L835
	.loc 1 1550 0
	leal	.LC8@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	pedwarn@PLT
	.loc 1 1551 0
	movl	integer_types@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	$1, 8(%esp)
	movl	$153, 4(%esp)
	movl	%eax, (%esp)
	call	c_sizeof_or_alignof_type@PLT
	movl	%eax, -8(%ebp)
	jmp	.L831
.L835:
	.loc 1 1553 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	type_unknown_p@PLT
	testl	%eax, %eax
	je	.L837
	.loc 1 1555 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cxx_incomplete_type_diagnostic@PLT
	.loc 1 1556 0
	movl	integer_types@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	$1, 8(%esp)
	movl	$153, 4(%esp)
	movl	%eax, (%esp)
	call	c_sizeof_or_alignof_type@PLT
	movl	%eax, -8(%ebp)
	jmp	.L831
.L837:
	.loc 1 1561 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-77, %al
	jne	.L839
	.loc 1 1562 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	resolve_offset_ref@PLT
	movl	%eax, 8(%ebp)
.L839:
	.loc 1 1564 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L841
	.loc 1 1565 0
	movl	8(%ebp), %eax
	movl	%eax, -8(%ebp)
	jmp	.L831
.L841:
	.loc 1 1567 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	$1, 8(%esp)
	movl	$153, 4(%esp)
	movl	%eax, (%esp)
	call	cxx_sizeof_or_alignof_type@PLT
	movl	%eax, -8(%ebp)
.L831:
	movl	-8(%ebp), %eax
	.loc 1 1568 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE41:
	.size	expr_sizeof, .-expr_sizeof
	.section	.rodata
	.type	__FUNCTION__.18278, @object
	.size	__FUNCTION__.18278, 17
__FUNCTION__.18278:
	.string	"decay_conversion"
	.align 4
.LC9:
	.string	"void value not ignored as it ought to be"
	.align 4
.LC10:
	.string	"invalid use of non-lvalue array"
	.text
.globl decay_conversion
	.type	decay_conversion, @function
decay_conversion:
.LFB42:
	.loc 1 1580 0
	pushl	%ebp
.LCFI112:
	movl	%esp, %ebp
.LCFI113:
	pushl	%ebx
.LCFI114:
	subl	$52, %esp
.LCFI115:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1584 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-77, %al
	jne	.L845
	.loc 1 1585 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	resolve_offset_ref@PLT
	movl	%eax, 8(%ebp)
.L845:
	.loc 1 1587 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 1588 0
	movl	-32(%ebp), %edx
	movzbl	8(%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -28(%ebp)
	.loc 1 1590 0
	cmpl	$16, -28(%ebp)
	jne	.L847
	.loc 1 1592 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	convert_from_reference@PLT
	movl	%eax, 8(%ebp)
	.loc 1 1593 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 1594 0
	movl	-32(%ebp), %ecx
	movzbl	8(%ecx), %eax
	movzbl	%al, %eax
	movl	%eax, -28(%ebp)
.L847:
	.loc 1 1597 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-32(%ebp), %eax
	jne	.L849
	.loc 1 1598 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -36(%ebp)
	jmp	.L851
.L849:
	.loc 1 1600 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	type_unknown_p@PLT
	testl	%eax, %eax
	je	.L852
	.loc 1 1602 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cxx_incomplete_type_diagnostic@PLT
	.loc 1 1603 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -36(%ebp)
	jmp	.L851
.L852:
	.loc 1 1607 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$33, %al
	jne	.L854
	.loc 1 1608 0
	movl	8(%ebp), %eax
	movl	68(%eax), %eax
	movl	%eax, 8(%ebp)
	jmp	.L856
.L854:
	.loc 1 1613 0
	cmpl	$19, -28(%ebp)
	je	.L856
	.loc 1 1615 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	decl_constant_value@PLT
	movl	%eax, 8(%ebp)
	.loc 1 1616 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -32(%ebp)
.L856:
	.loc 1 1622 0
	cmpl	$6, -28(%ebp)
	jne	.L858
	.loc 1 1624 0
	leal	.LC9@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 1625 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -36(%ebp)
	jmp	.L851
.L858:
	.loc 1 1627 0
	cmpl	$17, -28(%ebp)
	jne	.L860
	.loc 1 1628 0
	leal	__FUNCTION__.18278@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1628, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L860:
	.loc 1 1629 0
	cmpl	$24, -28(%ebp)
	je	.L862
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	is_overloaded_fn@PLT
	testl	%eax, %eax
	je	.L864
.L862:
	.loc 1 1630 0
	movl	$0, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$123, (%esp)
	call	build_unary_op@PLT
	movl	%eax, -36(%ebp)
	jmp	.L851
.L864:
	.loc 1 1631 0
	cmpl	$19, -28(%ebp)
	jne	.L865
.LBB24:
	.loc 1 1636 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$42, %al
	jne	.L867
.LBB25:
	.loc 1 1640 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1641 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$16, %al
	jne	.L869
	.loc 1 1643 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	build_pointer_type@PLT
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$116, (%esp)
	call	build1@PLT
	movl	%eax, -12(%ebp)
	.loc 1 1647 0
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	9(%eax), %eax
	shrb	%al
	andl	$1, %eax
	movl	-12(%ebp), %ecx
	andl	$1, %eax
	leal	(%eax,%eax), %edx
	movzbl	9(%ecx), %eax
	andl	$-3, %eax
	orl	%edx, %eax
	movb	%al, 9(%ecx)
.L869:
	.loc 1 1649 0
	movl	-32(%ebp), %edx
	movl	4(%edx), %eax
	movl	%eax, (%esp)
	call	build_pointer_type@PLT
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	cp_convert@PLT
	movl	%eax, -36(%ebp)
	jmp	.L851
.L867:
.LBE25:
	.loc 1 1652 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$48, %al
	jne	.L871
.LBB26:
	.loc 1 1654 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, (%esp)
	call	decay_conversion@PLT
	movl	%eax, -8(%ebp)
	.loc 1 1655 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	-8(%ebp), %eax
	movl	4(%eax), %ecx
	movl	-8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	$48, (%esp)
	call	build@PLT
	movl	%eax, -36(%ebp)
	jmp	.L851
.L871:
.LBE26:
	.loc 1 1659 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	lvalue_p@PLT
	testl	%eax, %eax
	jne	.L873
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$47, %al
	jne	.L875
	movl	8(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L873
.L875:
	.loc 1 1662 0
	leal	.LC10@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 1663 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -36(%ebp)
	jmp	.L851
.L873:
	.loc 1 1666 0
	movl	-32(%ebp), %ecx
	movl	4(%ecx), %eax
	movl	%eax, (%esp)
	call	build_pointer_type@PLT
	movl	%eax, -16(%ebp)
	.loc 1 1668 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$35, %al
	jne	.L877
	.loc 1 1674 0
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$123, (%esp)
	call	build1@PLT
	movl	%eax, -24(%ebp)
	.loc 1 1675 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cxx_mark_addressable@PLT
	xorl	$1, %eax
	testb	%al, %al
	je	.L879
	.loc 1 1676 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -36(%ebp)
	jmp	.L851
.L879:
	.loc 1 1677 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	staticp@PLT
	andl	$1, %eax
	andl	$1, %eax
	leal	(%eax,%eax), %edx
	movl	-24(%ebp), %ecx
	movzbl	9(%ecx), %eax
	andl	$-3, %eax
	orl	%edx, %eax
	movl	-24(%ebp), %edx
	movb	%al, 9(%edx)
	.loc 1 1678 0
	movl	-24(%ebp), %ecx
	movzbl	9(%ecx), %eax
	andl	$-2, %eax
	movl	-24(%ebp), %edx
	movb	%al, 9(%edx)
	.loc 1 1679 0
	movl	-24(%ebp), %ecx
	movl	%ecx, -36(%ebp)
	jmp	.L851
.L877:
	.loc 1 1683 0
	movl	$1, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$123, (%esp)
	call	build_unary_op@PLT
	movl	%eax, -24(%ebp)
	.loc 1 1684 0
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	cp_convert@PLT
	movl	%eax, -36(%ebp)
	jmp	.L851
.L865:
.LBE24:
	.loc 1 1689 0
	movl	-32(%ebp), %edx
	movzbl	8(%edx), %eax
	cmpb	$21, %al
	je	.L881
	movl	-32(%ebp), %ecx
	movzbl	8(%ecx), %eax
	cmpb	$22, %al
	jne	.L883
.L881:
	movl	-32(%ebp), %edx
	movzbl	8(%edx), %eax
	cmpb	$-62, %al
	je	.L884
	movl	-32(%ebp), %ecx
	movzbl	8(%ecx), %eax
	cmpb	$-59, %al
	je	.L884
	movl	-32(%ebp), %edx
	movzbl	8(%edx), %eax
	cmpb	$-57, %al
	je	.L884
	movl	-32(%ebp), %ecx
	movzbl	8(%ecx), %eax
	cmpb	$-60, %al
	je	.L884
	movl	-32(%ebp), %edx
	movzbl	39(%edx), %eax
	andl	$32, %eax
	testb	%al, %al
	jne	.L884
.L883:
	.loc 1 1690 0
	movl	-32(%ebp), %ecx
	movl	72(%ecx), %eax
	movl	8(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	cp_convert@PLT
	movl	%eax, 8(%ebp)
.L884:
	.loc 1 1692 0
	movl	8(%ebp), %eax
	movl	%eax, -36(%ebp)
.L851:
	movl	-36(%ebp), %eax
	.loc 1 1693 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE42:
	.size	decay_conversion, .-decay_conversion
.globl default_conversion
	.type	default_conversion, @function
default_conversion:
.LFB43:
	.loc 1 1698 0
	pushl	%ebp
.LCFI116:
	movl	%esp, %ebp
.LCFI117:
	pushl	%ebx
.LCFI118:
	subl	$36, %esp
.LCFI119:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1702 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	decay_conversion@PLT
	movl	%eax, 8(%ebp)
	.loc 1 1704 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 1705 0
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -12(%ebp)
	.loc 1 1707 0
	cmpl	$7, -12(%ebp)
	je	.L891
	cmpl	$11, -12(%ebp)
	je	.L891
	cmpl	$12, -12(%ebp)
	jne	.L894
.L891:
.LBB27:
	.loc 1 1709 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	type_promotes_to@PLT
	movl	%eax, -8(%ebp)
	.loc 1 1710 0
	movl	-8(%ebp), %eax
	cmpl	-16(%ebp), %eax
	je	.L894
	.loc 1 1711 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	cp_convert@PLT
	movl	%eax, -24(%ebp)
	jmp	.L896
.L894:
.LBE27:
	.loc 1 1714 0
	movl	8(%ebp), %eax
	movl	%eax, -24(%ebp)
.L896:
	movl	-24(%ebp), %eax
	.loc 1 1715 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE43:
	.size	default_conversion, .-default_conversion
.globl inline_conversion
	.type	inline_conversion, @function
inline_conversion:
.LFB44:
	.loc 1 1723 0
	pushl	%ebp
.LCFI120:
	movl	%esp, %ebp
.LCFI121:
	pushl	%ebx
.LCFI122:
	subl	$20, %esp
.LCFI123:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1724 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	jne	.L899
	.loc 1 1725 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	build_pointer_type@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$123, (%esp)
	call	build1@PLT
	movl	%eax, 8(%ebp)
.L899:
	.loc 1 1727 0
	movl	8(%ebp), %eax
	.loc 1 1728 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE44:
	.size	inline_conversion, .-inline_conversion
	.section	.rodata
	.align 4
.LC11:
	.string	"deprecated conversion from string constant to `%T'"
	.text
.globl string_conv_p
	.type	string_conv_p, @function
string_conv_p:
.LFB45:
	.loc 1 1737 0
	pushl	%ebp
.LCFI124:
	movl	%esp, %ebp
.LCFI125:
	pushl	%ebx
.LCFI126:
	subl	$36, %esp
.LCFI127:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1740 0
	movl	flag_const_strings@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L903
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	je	.L905
.L903:
	.loc 1 1741 0
	movl	$0, -24(%ebp)
	jmp	.L906
.L905:
	.loc 1 1743 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 1744 0
	movl	integer_types@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	comptypes@PLT
	testl	%eax, %eax
	jne	.L907
	movl	c_global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	comptypes@PLT
	testl	%eax, %eax
	jne	.L907
	.loc 1 1746 0
	movl	$0, -24(%ebp)
	jmp	.L906
.L907:
	.loc 1 1748 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$30, %al
	jne	.L910
	.loc 1 1751 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	72(%eax), %edx
	movl	$0, 8(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	comptypes@PLT
	testl	%eax, %eax
	jne	.L914
	.loc 1 1752 0
	movl	$0, -24(%ebp)
	jmp	.L906
.L910:
	.loc 1 1757 0
	movl	$1, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_qualified_type@PLT
	movl	%eax, (%esp)
	call	build_pointer_type@PLT
	movl	%eax, -8(%ebp)
	.loc 1 1758 0
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	$0, 8(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	comptypes@PLT
	testl	%eax, %eax
	jne	.L917
	.loc 1 1759 0
	movl	$0, -24(%ebp)
	jmp	.L906
.L918:
	.loc 1 1760 0
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 12(%ebp)
.L917:
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$117, %al
	je	.L919
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$116, %al
	je	.L919
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$118, %al
	jne	.L922
.L919:
	movl	12(%ebp), %eax
	movl	20(%eax), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	je	.L922
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	movl	%eax, %edx
	shrb	%dl
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	cmpb	%al, %dl
	je	.L918
.L922:
	.loc 1 1761 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$123, %al
	jne	.L924
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$30, %al
	je	.L914
.L924:
	.loc 1 1763 0
	movl	$0, -24(%ebp)
	jmp	.L906
.L914:
	.loc 1 1767 0
	cmpl	$0, 16(%ebp)
	je	.L926
	movl	warn_write_strings@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L926
	.loc 1 1768 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC11@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
.L926:
	.loc 1 1770 0
	movl	$1, -24(%ebp)
.L906:
	movl	-24(%ebp), %eax
	.loc 1 1771 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE45:
	.size	string_conv_p, .-string_conv_p
	.type	rationalize_conditional_expr, @function
rationalize_conditional_expr:
.LFB46:
	.loc 1 1785 0
	pushl	%ebp
.LCFI128:
	movl	%esp, %ebp
.LCFI129:
	pushl	%esi
.LCFI130:
	pushl	%ebx
.LCFI131:
	subl	$48, %esp
.LCFI132:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1789 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$80, %al
	je	.L931
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$81, %al
	jne	.L933
.L931:
	.loc 1 1791 0
	movl	12(%ebp), %eax
	movl	24(%eax), %eax
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_unary_op@PLT
	movl	%eax, -28(%ebp)
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_unary_op@PLT
	movl	%eax, -24(%ebp)
	movl	12(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -20(%ebp)
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -16(%ebp)
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$80, %al
	jne	.L934
	movl	$100, -12(%ebp)
	jmp	.L936
.L934:
	movl	$102, -12(%ebp)
.L936:
	movl	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-16(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	build_x_binary_op@PLT
	movl	-28(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	-24(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	build_conditional_expr@PLT
	movl	%eax, -32(%ebp)
	jmp	.L937
.L933:
	.loc 1 1800 0
	movl	12(%ebp), %eax
	movl	28(%eax), %eax
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_unary_op@PLT
	movl	%eax, %esi
	movl	12(%ebp), %eax
	movl	24(%eax), %eax
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_unary_op@PLT
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%esi, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	build_conditional_expr@PLT
	movl	%eax, -32(%ebp)
.L937:
	movl	-32(%ebp), %eax
	.loc 1 1804 0
	addl	$48, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE46:
	.size	rationalize_conditional_expr, .-rationalize_conditional_expr
	.type	lookup_anon_field, @function
lookup_anon_field:
.LFB47:
	.loc 1 1814 0
	pushl	%ebp
.LCFI133:
	movl	%esp, %ebp
.LCFI134:
	subl	$28, %esp
.LCFI135:
	.loc 1 1817 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L940
.L941:
	.loc 1 1819 0
	movl	-8(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L942
	.loc 1 1821 0
	movl	-8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$38, %al
	jne	.L942
	movl	-8(%ebp), %eax
	movzbl	35(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L942
	.loc 1 1825 0
	movl	-8(%ebp), %eax
	movl	52(%eax), %eax
	testl	%eax, %eax
	jne	.L946
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	72(%eax), %eax
	cmpl	12(%ebp), %eax
	jne	.L946
	.loc 1 1828 0
	movl	-8(%ebp), %eax
	movl	%eax, -20(%ebp)
	jmp	.L949
.L946:
	.loc 1 1832 0
	movl	-8(%ebp), %eax
	movl	52(%eax), %eax
	testl	%eax, %eax
	jne	.L942
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	je	.L951
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	jne	.L942
.L951:
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L953
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L953
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L953
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L953
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L942
.L953:
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	92(%eax), %eax
	movzbl	9(%eax), %eax
	andl	$-128, %eax
	testb	%al, %al
	je	.L942
.LBB28:
	.loc 1 1835 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	lookup_anon_field
	movl	%eax, -4(%ebp)
	.loc 1 1836 0
	cmpl	$0, -4(%ebp)
	je	.L942
	.loc 1 1837 0
	movl	-4(%ebp), %eax
	movl	%eax, -20(%ebp)
	jmp	.L949
.L942:
.LBE28:
	.loc 1 1817 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
.L940:
	cmpl	$0, -8(%ebp)
	jne	.L941
	.loc 1 1840 0
	movl	$0, -20(%ebp)
.L949:
	movl	-20(%ebp), %eax
	.loc 1 1841 0
	leave
	ret
.LFE47:
	.size	lookup_anon_field, .-lookup_anon_field
	.section	.rodata
	.align 4
	.type	__FUNCTION__.18581, @object
	.size	__FUNCTION__.18581, 31
__FUNCTION__.18581:
	.string	"build_class_member_access_expr"
	.align 4
.LC12:
	.string	"request for member `%D' in `%E', which is of non-class type `%T'"
.LC13:
	.string	"`%D' is not a member of `%T'"
	.align 4
.LC14:
	.string	"invalid access to non-static data member `%D' of NULL object"
	.align 4
.LC15:
	.string	"(perhaps the `offsetof' macro was used incorrectly)"
.LC16:
	.string	"invalid use of `%D'"
	.text
.globl build_class_member_access_expr
	.type	build_class_member_access_expr, @function
build_class_member_access_expr:
.LFB48:
	.loc 1 1858 0
	pushl	%ebp
.LCFI136:
	movl	%esp, %ebp
.LCFI137:
	pushl	%esi
.LCFI138:
	pushl	%ebx
.LCFI139:
	subl	$96, %esp
.LCFI140:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	20(%ebp), %eax
	movb	%al, -60(%ebp)
	.loc 1 1861 0
	movl	$0, -36(%ebp)
	.loc 1 1863 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	8(%ebp), %eax
	je	.L963
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	12(%ebp), %eax
	jne	.L965
.L963:
	.loc 1 1864 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -80(%ebp)
	jmp	.L966
.L965:
	.loc 1 1866 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$100, %al
	je	.L967
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-65, %al
	jne	.L969
.L967:
	movl	$1, -76(%ebp)
	jmp	.L970
.L969:
	movl	$0, -76(%ebp)
.L970:
	cmpl	$0, -76(%ebp)
	jne	.L971
	leal	__FUNCTION__.18581@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1867, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L971:
	.loc 1 1872 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$48, %al
	jne	.L973
	.loc 1 1874 0
	movzbl	-60(%ebp), %edx
	movl	8(%ebp), %eax
	movl	24(%eax), %ecx
	movl	%edx, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	build_class_member_access_expr@PLT
	movl	%eax, -36(%ebp)
	.loc 1 1877 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	-36(%ebp), %eax
	movl	4(%eax), %ecx
	movl	-36(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	$48, (%esp)
	call	build@PLT
	movl	%eax, -80(%ebp)
	jmp	.L966
.L973:
	.loc 1 1880 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$52, %al
	jne	.L975
	.loc 1 1881 0
	movzbl	-60(%ebp), %edx
	movl	8(%ebp), %eax
	movl	28(%eax), %ecx
	movl	%edx, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	build_class_member_access_expr@PLT
	movl	%eax, %esi
	movzbl	-60(%ebp), %edx
	movl	8(%ebp), %eax
	movl	24(%eax), %ecx
	movl	%edx, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	build_class_member_access_expr@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%esi, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	build_conditional_expr@PLT
	movl	%eax, -80(%ebp)
	jmp	.L966
.L975:
	.loc 1 1894 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -44(%ebp)
	.loc 1 1895 0
	movl	$0, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	complete_type_or_diagnostic@PLT
	testl	%eax, %eax
	jne	.L977
	.loc 1 1896 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -80(%ebp)
	jmp	.L966
.L977:
	.loc 1 1897 0
	movl	-44(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	je	.L979
	movl	-44(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	jne	.L981
.L979:
	movl	-44(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L982
	movl	-44(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L982
	movl	-44(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L982
	movl	-44(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L982
	movl	-44(%ebp), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	jne	.L982
.L981:
	.loc 1 1899 0
	movl	-44(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC12@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 1901 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -80(%ebp)
	jmp	.L966
.L982:
	.loc 1 1907 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$100, %al
	jne	.L987
	.loc 1 1909 0
	movl	12(%ebp), %eax
	movl	56(%eax), %eax
	testl	%eax, %eax
	je	.L989
	movl	12(%ebp), %eax
	movl	56(%eax), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$116, %al
	jne	.L989
	movl	12(%ebp), %eax
	movl	56(%eax), %eax
	movl	%eax, -72(%ebp)
	jmp	.L992
.L989:
	movl	$0, -72(%ebp)
.L992:
	movl	-72(%ebp), %eax
	movl	%eax, -40(%ebp)
	.loc 1 1910 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	mark_used@PLT
	.loc 1 1911 0
	movl	12(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$-128, %eax
	testb	%al, %al
	je	.L996
	.loc 1 1912 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	warn_deprecated_use@PLT
	jmp	.L996
.L987:
	.loc 1 1915 0
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 1919 0
	jmp	.L996
.L997:
	.loc 1 1922 0
	movl	-40(%ebp), %eax
	movl	80(%eax), %eax
	movl	%eax, -40(%ebp)
.L996:
	.loc 1 1919 0
	movl	-40(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	je	.L998
	movl	-40(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	jne	.L1000
.L998:
	movl	-40(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L1001
	movl	-40(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L1001
	movl	-40(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L1001
	movl	-40(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L1001
	movl	-40(%ebp), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L1000
.L1001:
	movl	-40(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	9(%eax), %eax
	andl	$-128, %eax
	testb	%al, %al
	je	.L1000
	movl	-44(%ebp), %eax
	movl	72(%eax), %edx
	movl	-40(%ebp), %eax
	movl	72(%eax), %eax
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	comptypes@PLT
	testl	%eax, %eax
	je	.L997
.L1000:
	.loc 1 1923 0
	cmpl	$0, -40(%ebp)
	je	.L1007
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	lookup_base@PLT
	testl	%eax, %eax
	jne	.L1009
.L1007:
	.loc 1 1925 0
	movl	-44(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC13@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 1926 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -80(%ebp)
	jmp	.L966
.L1009:
	.loc 1 1931 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$35, %al
	jne	.L1010
	.loc 1 1934 0
	movl	12(%ebp), %eax
	movl	%eax, -36(%ebp)
	.loc 1 1936 0
	movl	8(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L1014
	.loc 1 1937 0
	movl	-36(%ebp), %eax
	movl	4(%eax), %edx
	movl	-36(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$48, (%esp)
	call	build@PLT
	movl	%eax, -36(%ebp)
	jmp	.L1014
.L1010:
	.loc 1 1939 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$38, %al
	jne	.L1015
.LBB29:
	.loc 1 1946 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$42, %al
	jne	.L1017
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	integer_zerop@PLT
	testl	%eax, %eax
	je	.L1017
	movl	$1, -68(%ebp)
	jmp	.L1020
.L1017:
	movl	$0, -68(%ebp)
.L1020:
	movzbl	-68(%ebp), %eax
	movb	%al, -9(%ebp)
	.loc 1 1950 0
	movl	-40(%ebp), %eax
	movl	72(%eax), %edx
	movl	-44(%ebp), %eax
	movl	72(%eax), %eax
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	comptypes@PLT
	testl	%eax, %eax
	jne	.L1021
.LBB30:
	.loc 1 1956 0
	cmpl	$0, 16(%ebp)
	je	.L1023
	movl	16(%ebp), %eax
	movl	%eax, -64(%ebp)
	jmp	.L1025
.L1023:
	movl	-44(%ebp), %eax
	movl	%eax, -64(%ebp)
.L1025:
	leal	-48(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$1, 8(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	lookup_base@PLT
	movl	%eax, -24(%ebp)
	.loc 1 1958 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-24(%ebp), %eax
	jne	.L1026
	.loc 1 1959 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -80(%ebp)
	jmp	.L966
.L1026:
	.loc 1 1964 0
	cmpb	$0, -9(%ebp)
	je	.L1028
	movl	-48(%ebp), %eax
	cmpl	$2, %eax
	jne	.L1028
	.loc 1 1966 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC14@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 1968 0
	leal	.LC15@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 1969 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -80(%ebp)
	jmp	.L966
.L1028:
	.loc 1 1973 0
	movl	$1, 12(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$60, (%esp)
	call	build_base_path@PLT
	movl	%eax, 8(%ebp)
	.loc 1 1977 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L1021
	leal	__FUNCTION__.18581@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1978, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1021:
.LBE30:
	.loc 1 1985 0
	cmpb	$0, -9(%ebp)
	je	.L1033
	movl	-44(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	5(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L1033
	.loc 1 1987 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC14@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
	.loc 1 1989 0
	leal	.LC15@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
.L1033:
	.loc 1 1996 0
	movl	12(%ebp), %eax
	movl	56(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	je	.L1036
	movl	12(%ebp), %eax
	movl	56(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	jne	.L1038
.L1036:
	movl	12(%ebp), %eax
	movl	56(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L1039
	movl	12(%ebp), %eax
	movl	56(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L1039
	movl	12(%ebp), %eax
	movl	56(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L1039
	movl	12(%ebp), %eax
	movl	56(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L1039
	movl	12(%ebp), %eax
	movl	56(%eax), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L1038
.L1039:
	movl	12(%ebp), %eax
	movl	56(%eax), %eax
	movl	92(%eax), %eax
	movzbl	9(%eax), %eax
	andl	$-128, %eax
	testb	%al, %al
	je	.L1038
	movl	12(%ebp), %eax
	movl	56(%eax), %eax
	movl	72(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	72(%eax), %eax
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	comptypes@PLT
	testl	%eax, %eax
	jne	.L1038
.LBB31:
	.loc 1 2008 0
	movl	12(%ebp), %eax
	movl	56(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	lookup_anon_field
	movl	%eax, -20(%ebp)
	.loc 1 2010 0
	movzbl	-60(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$0, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_class_member_access_expr@PLT
	movl	%eax, 8(%ebp)
.L1038:
.LBE31:
	.loc 1 2017 0
	movl	$0, -32(%ebp)
	.loc 1 2018 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 2019 0
	movl	-28(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$16, %al
	je	.L1046
	.loc 1 2021 0
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	cp_type_quals@PLT
	movl	%eax, %esi
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	cp_type_quals@PLT
	orl	%esi, %eax
	movl	%eax, -32(%ebp)
	.loc 1 2027 0
	movl	12(%ebp), %eax
	movzbl	37(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L1048
	.loc 1 2028 0
	andl	$-2, -32(%ebp)
.L1048:
	.loc 1 2029 0
	movl	$3, 8(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	cp_build_qualified_type_real@PLT
	movl	%eax, -28(%ebp)
.L1046:
	.loc 1 2032 0
	movl	12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$40, (%esp)
	call	build@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -36(%ebp)
	.loc 1 2037 0
	movl	-32(%ebp), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L1050
	.loc 1 2038 0
	movl	-36(%ebp), %eax
	movzbl	9(%eax), %edx
	orl	$16, %edx
	movb	%dl, 9(%eax)
	jmp	.L1014
.L1050:
	.loc 1 2039 0
	movl	-32(%ebp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L1014
	.loc 1 2040 0
	movl	-36(%ebp), %eax
	movzbl	9(%eax), %edx
	orl	$8, %edx
	movb	%dl, 9(%eax)
	jmp	.L1014
.L1015:
.LBE29:
	.loc 1 2042 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-65, %al
	jne	.L1054
.LBB32:
	.loc 1 2050 0
	movl	12(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 2051 0
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	jne	.L1056
	movl	-16(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	5(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L1056
	.loc 1 2055 0
	movl	-16(%ebp), %eax
	movl	%eax, -36(%ebp)
	.loc 1 2056 0
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	mark_used@PLT
	.loc 1 2058 0
	movl	8(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L1014
	.loc 1 2059 0
	movl	-36(%ebp), %eax
	movl	4(%eax), %edx
	movl	-36(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$48, (%esp)
	call	build@PLT
	movl	%eax, -36(%ebp)
	.loc 1 2051 0
	jmp	.L1014
.L1056:
	.loc 1 2065 0
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	116(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$40, (%esp)
	call	build@PLT
	movl	%eax, -36(%ebp)
	jmp	.L1014
.L1054:
.LBE32:
	.loc 1 2067 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$33, %al
	jne	.L1062
	.loc 1 2070 0
	movl	12(%ebp), %eax
	movl	%eax, -36(%ebp)
	.loc 1 2072 0
	movl	8(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L1014
	.loc 1 2073 0
	movl	-36(%ebp), %eax
	movl	4(%eax), %edx
	movl	-36(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$48, (%esp)
	call	build@PLT
	movl	%eax, -36(%ebp)
	jmp	.L1014
.L1062:
	.loc 1 2078 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC16@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 2079 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -80(%ebp)
	jmp	.L966
.L1014:
	.loc 1 2082 0
	movzbl	-60(%ebp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L1066
	.loc 1 2087 0
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	convert_from_reference@PLT
	movl	%eax, -36(%ebp)
.L1066:
	.loc 1 2089 0
	movl	-36(%ebp), %eax
	movl	%eax, -80(%ebp)
.L966:
	movl	-80(%ebp), %eax
	.loc 1 2090 0
	addl	$96, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE48:
	.size	build_class_member_access_expr, .-build_class_member_access_expr
	.section	.rodata
	.align 32
	.type	__FUNCTION__.18853, @object
	.size	__FUNCTION__.18853, 32
__FUNCTION__.18853:
	.string	"finish_class_member_access_expr"
	.align 4
.LC17:
	.string	"`%D::%D' is not a member of `%T'"
.LC18:
	.string	"'%D' has no member named '%E'"
	.align 4
.LC19:
	.string	"destructor specifier `%T::~%T' must have matching names"
.LC20:
	.string	"type `%T' has no destructor"
	.align 4
.LC21:
	.string	"`%D' is not a member template function"
	.text
.globl finish_class_member_access_expr
	.type	finish_class_member_access_expr, @function
finish_class_member_access_expr:
.LFB49:
	.loc 1 2102 0
	pushl	%ebp
.LCFI141:
	movl	%esp, %ebp
.LCFI142:
	pushl	%ebx
.LCFI143:
	subl	$68, %esp
.LCFI144:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2105 0
	movl	$0, -24(%ebp)
	.loc 1 2107 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	8(%ebp), %eax
	je	.L1070
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	12(%ebp), %eax
	jne	.L1072
.L1070:
	.loc 1 2108 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -48(%ebp)
	jmp	.L1073
.L1072:
	.loc 1 2110 0
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	64(%eax), %edx
	movl	60(%eax), %eax
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L1074
	.loc 1 2111 0
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$40, (%esp)
	call	build_min_nt@PLT
	movl	%eax, -48(%ebp)
	jmp	.L1073
.L1074:
	.loc 1 2113 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-77, %al
	jne	.L1076
	.loc 1 2114 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	resolve_offset_ref@PLT
	movl	%eax, 8(%ebp)
.L1076:
	.loc 1 2116 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 2117 0
	movl	-32(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$16, %al
	jne	.L1078
	.loc 1 2119 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	convert_from_reference@PLT
	movl	%eax, 8(%ebp)
	.loc 1 2120 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -32(%ebp)
.L1078:
	.loc 1 2127 0
	movl	$0, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	complete_type_or_diagnostic@PLT
	testl	%eax, %eax
	jne	.L1080
	.loc 1 2128 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -48(%ebp)
	jmp	.L1073
.L1080:
	.loc 1 2129 0
	movl	-32(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	je	.L1082
	movl	-32(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	jne	.L1084
.L1082:
	movl	-32(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L1085
	movl	-32(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L1085
	movl	-32(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L1085
	movl	-32(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L1085
	movl	-32(%ebp), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	jne	.L1085
.L1084:
	.loc 1 2131 0
	movl	-32(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC12@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 2133 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -48(%ebp)
	jmp	.L1073
.L1085:
	.loc 1 2136 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-65, %al
	jne	.L1090
	.loc 1 2139 0
	movl	12(%ebp), %eax
	movl	24(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-53, %al
	je	.L1092
	leal	__FUNCTION__.18853@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2141, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1092:
	.loc 1 2142 0
	movl	12(%ebp), %eax
	movl	%eax, -28(%ebp)
	jmp	.L1094
.L1090:
.LBB33:
	.loc 1 2146 0
	movb	$0, -5(%ebp)
	.loc 1 2147 0
	movl	$0, -20(%ebp)
	.loc 1 2149 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-53, %al
	jne	.L1095
	.loc 1 2151 0
	movb	$1, -5(%ebp)
	.loc 1 2152 0
	movl	12(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 2153 0
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 12(%ebp)
.L1095:
	.loc 1 2156 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-71, %al
	jne	.L1097
.LBB34:
	.loc 1 2164 0
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 2165 0
	movl	12(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, 12(%ebp)
	.loc 1 2166 0
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	je	.L1099
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	jne	.L1101
.L1099:
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L1102
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L1102
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L1102
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L1102
	movl	-16(%ebp), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	jne	.L1102
.L1101:
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$39, %al
	jne	.L1107
.L1102:
	movl	$1, -44(%ebp)
	jmp	.L1108
.L1107:
	movl	$0, -44(%ebp)
.L1108:
	cmpl	$0, -44(%ebp)
	jne	.L1109
	leal	__FUNCTION__.18853@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2168, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1109:
	.loc 1 2169 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$1, %al
	je	.L1111
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$92, %al
	jne	.L1113
.L1111:
	movl	$1, -40(%ebp)
	jmp	.L1114
.L1113:
	movl	$0, -40(%ebp)
.L1114:
	cmpl	$0, -40(%ebp)
	jne	.L1115
	leal	__FUNCTION__.18853@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2171, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1115:
	.loc 1 2175 0
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$39, %al
	jne	.L1117
	.loc 1 2177 0
	movl	-32(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC17@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 2179 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -48(%ebp)
	jmp	.L1073
.L1117:
	.loc 1 2183 0
	movl	$0, 12(%esp)
	movl	$2, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	lookup_base@PLT
	movl	%eax, -24(%ebp)
	.loc 1 2184 0
	cmpl	$0, -24(%ebp)
	je	.L1119
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-24(%ebp), %eax
	jne	.L1121
.L1119:
	.loc 1 2185 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -48(%ebp)
	jmp	.L1073
.L1121:
	.loc 1 2188 0
	movl	$0, 12(%esp)
	movl	$1, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	lookup_member@PLT
	movl	%eax, -28(%ebp)
	.loc 1 2190 0
	cmpl	$0, -28(%ebp)
	jne	.L1122
	.loc 1 2192 0
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC18@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 2193 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -48(%ebp)
	jmp	.L1073
.L1122:
	.loc 1 2195 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-28(%ebp), %eax
	jne	.L1126
	.loc 1 2196 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -48(%ebp)
	jmp	.L1073
.L1097:
.LBE34:
	.loc 1 2198 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$92, %al
	jne	.L1127
	.loc 1 2201 0
	movl	-32(%ebp), %eax
	movl	56(%eax), %eax
	movl	52(%eax), %edx
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	cmpl	%eax, %edx
	je	.L1129
	.loc 1 2203 0
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 8(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC19@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 2205 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -48(%ebp)
	jmp	.L1073
.L1129:
	.loc 1 2207 0
	movl	-32(%ebp), %eax
	movzbl	39(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L1131
	.loc 1 2209 0
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC20@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 2210 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -48(%ebp)
	jmp	.L1073
.L1131:
	.loc 1 2212 0
	movl	-32(%ebp), %eax
	movl	92(%eax), %eax
	movl	52(%eax), %eax
	movl	24(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L1126
.L1127:
	.loc 1 2214 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$1, %al
	jne	.L1133
	.loc 1 2217 0
	movl	$0, 12(%esp)
	movl	$1, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	lookup_member@PLT
	movl	%eax, -28(%ebp)
	.loc 1 2219 0
	cmpl	$0, -28(%ebp)
	jne	.L1135
	.loc 1 2221 0
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC18@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 2222 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -48(%ebp)
	jmp	.L1073
.L1135:
	.loc 1 2224 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-28(%ebp), %eax
	jne	.L1126
	.loc 1 2225 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -48(%ebp)
	jmp	.L1073
.L1133:
	.loc 1 2233 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC16@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 2234 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -48(%ebp)
	jmp	.L1073
.L1126:
	.loc 1 2237 0
	cmpb	$0, -5(%ebp)
	je	.L1094
.LBB35:
	.loc 1 2239 0
	movl	-28(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 2241 0
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-65, %al
	jne	.L1140
	.loc 1 2242 0
	movl	-12(%ebp), %eax
	movl	24(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$203, (%esp)
	call	build_nt@PLT
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	movl	%edx, 24(%eax)
	jmp	.L1094
.L1140:
	.loc 1 2248 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC21@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 2249 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -48(%ebp)
	jmp	.L1073
.L1094:
.LBE35:
.LBE33:
	.loc 1 2254 0
	movl	$0, 12(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_class_member_access_expr@PLT
	movl	%eax, -48(%ebp)
.L1073:
	movl	-48(%ebp), %eax
	.loc 1 2256 0
	addl	$68, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE49:
	.size	finish_class_member_access_expr, .-finish_class_member_access_expr
	.section	.rodata
	.type	__FUNCTION__.19005, @object
	.size	__FUNCTION__.19005, 29
__FUNCTION__.19005:
	.string	"build_ptrmemfunc_access_expr"
	.text
.globl build_ptrmemfunc_access_expr
	.type	build_ptrmemfunc_access_expr, @function
build_ptrmemfunc_access_expr:
.LFB50:
	.loc 1 2267 0
	pushl	%ebp
.LCFI145:
	movl	%esp, %ebp
.LCFI146:
	pushl	%ebx
.LCFI147:
	subl	$36, %esp
.LCFI148:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2276 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 2277 0
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	jne	.L1144
	movl	-16(%ebp), %eax
	movl	92(%eax), %eax
	testl	%eax, %eax
	je	.L1144
	movl	-16(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	8(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L1144
	movl	$1, -24(%ebp)
	jmp	.L1148
.L1144:
	movl	$0, -24(%ebp)
.L1148:
	cmpl	$0, -24(%ebp)
	jne	.L1149
	leal	__FUNCTION__.19005@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2277, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1149:
	.loc 1 2278 0
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	lookup_member@PLT
	movl	%eax, -12(%ebp)
	.loc 1 2280 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	cp_type_quals@PLT
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	$3, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	cp_build_qualified_type_real@PLT
	movl	%eax, -8(%ebp)
	.loc 1 2282 0
	movl	-12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$40, (%esp)
	call	build@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	.loc 1 2283 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE50:
	.size	build_ptrmemfunc_access_expr, .-build_ptrmemfunc_access_expr
.globl build_x_indirect_ref
	.type	build_x_indirect_ref, @function
build_x_indirect_ref:
.LFB51:
	.loc 1 2296 0
	pushl	%ebp
.LCFI149:
	movl	%esp, %ebp
.LCFI150:
	pushl	%ebx
.LCFI151:
	subl	$52, %esp
.LCFI152:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2299 0
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	64(%eax), %edx
	movl	60(%eax), %eax
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L1153
	.loc 1 2300 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$42, (%esp)
	call	build_min_nt@PLT
	movl	%eax, -24(%ebp)
	jmp	.L1155
.L1153:
	.loc 1 2302 0
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$3, 4(%esp)
	movl	$42, (%esp)
	call	build_opfncall@PLT
	movl	%eax, -8(%ebp)
	.loc 1 2304 0
	cmpl	$0, -8(%ebp)
	je	.L1156
	.loc 1 2305 0
	movl	-8(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L1155
.L1156:
	.loc 1 2306 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_indirect_ref@PLT
	movl	%eax, -24(%ebp)
.L1155:
	movl	-24(%ebp), %eax
	.loc 1 2307 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE51:
	.size	build_x_indirect_ref, .-build_x_indirect_ref
	.section	.rodata
	.align 4
.LC22:
	.string	"`%T' is not a pointer-to-object type"
	.align 4
.LC23:
	.string	"invalid use of `%s' on pointer to member"
.LC24:
	.string	"invalid type argument of `%s'"
.LC25:
	.string	"invalid type argument"
	.text
.globl build_indirect_ref
	.type	build_indirect_ref, @function
build_indirect_ref:
.LFB52:
	.loc 1 2313 0
	pushl	%ebp
.LCFI153:
	movl	%esp, %ebp
.LCFI154:
	pushl	%ebx
.LCFI155:
	subl	$68, %esp
.LCFI156:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2316 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L1160
	.loc 1 2317 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -48(%ebp)
	jmp	.L1162
.L1160:
	.loc 1 2319 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1163
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	288(%eax), %eax
	movl	24(%eax), %eax
	movl	%eax, -44(%ebp)
	jmp	.L1165
.L1163:
	movl	$0, -44(%ebp)
.L1165:
	movl	-44(%ebp), %eax
	cmpl	8(%ebp), %eax
	jne	.L1166
	.loc 1 2320 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1168
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	288(%eax), %eax
	movl	28(%eax), %eax
	movl	%eax, -40(%ebp)
	jmp	.L1170
.L1168:
	movl	$0, -40(%ebp)
.L1170:
	movl	-40(%ebp), %edx
	movl	%edx, -48(%ebp)
	jmp	.L1162
.L1166:
	.loc 1 2322 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$16, %al
	je	.L1171
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	default_conversion@PLT
	movl	%eax, -36(%ebp)
	jmp	.L1173
.L1171:
	movl	8(%ebp), %eax
	movl	%eax, -36(%ebp)
.L1173:
	movl	-36(%ebp), %edx
	movl	%edx, -28(%ebp)
	.loc 1 2324 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 2326 0
	movl	-24(%ebp), %edx
	movzbl	8(%edx), %eax
	cmpb	$14, %al
	jne	.L1174
	movl	-24(%ebp), %edx
	movl	4(%edx), %eax
	movzbl	8(%eax), %eax
	cmpb	$15, %al
	jne	.L1176
.L1174:
	movl	-24(%ebp), %edx
	movzbl	8(%edx), %eax
	cmpb	$16, %al
	jne	.L1177
.L1176:
.LBB36:
	.loc 1 2336 0
	movl	-24(%ebp), %edx
	movl	4(%edx), %eax
	movl	%eax, (%esp)
	call	canonical_type_variant@PLT
	movl	%eax, -12(%ebp)
	.loc 1 2338 0
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$6, %al
	jne	.L1178
	.loc 1 2342 0
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC22@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 2343 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -48(%ebp)
	jmp	.L1162
.L1178:
	.loc 1 2345 0
	movl	-28(%ebp), %edx
	movzbl	8(%edx), %eax
	cmpb	$123, %al
	jne	.L1180
	movl	flag_volatile@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L1180
	movl	-28(%ebp), %edx
	movl	20(%edx), %eax
	movl	4(%eax), %eax
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	comptypes@PLT
	testl	%eax, %eax
	je	.L1180
	.loc 1 2350 0
	movl	-28(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -48(%ebp)
	jmp	.L1162
.L1180:
.LBB37:
	.loc 1 2353 0
	movl	-28(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$42, (%esp)
	call	build1@PLT
	movl	%eax, -8(%ebp)
	.loc 1 2358 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	cp_type_quals@PLT
	andl	$1, %eax
	andl	$1, %eax
	andl	$1, %eax
	movl	-8(%ebp), %ecx
	andl	$1, %eax
	movl	%eax, %edx
	sall	$4, %edx
	movzbl	9(%ecx), %eax
	andl	$-17, %eax
	orl	%edx, %eax
	movb	%al, 9(%ecx)
	.loc 1 2359 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	cp_type_quals@PLT
	andl	$2, %eax
	testl	%eax, %eax
	setne	%al
	movl	-8(%ebp), %ecx
	andl	$1, %eax
	leal	0(,%eax,8), %edx
	movzbl	9(%ecx), %eax
	andl	$-9, %eax
	orl	%edx, %eax
	movb	%al, 9(%ecx)
	.loc 1 2360 0
	movl	-8(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L1184
	movl	-28(%ebp), %edx
	movzbl	9(%edx), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L1184
	movl	flag_volatile@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1187
.L1184:
	movl	$1, -32(%ebp)
	jmp	.L1188
.L1187:
	movl	$0, -32(%ebp)
.L1188:
	movzbl	-32(%ebp), %eax
	andl	$1, %eax
	movl	-8(%ebp), %edx
	movl	%eax, %ecx
	andl	$1, %ecx
	movzbl	9(%edx), %eax
	andl	$-2, %eax
	orl	%ecx, %eax
	movb	%al, 9(%edx)
	.loc 1 2363 0
	movl	-8(%ebp), %eax
	movl	%eax, -48(%ebp)
	jmp	.L1162
.L1177:
.LBE37:
.LBE36:
	.loc 1 2368 0
	movl	-24(%ebp), %edx
	movzbl	8(%edx), %eax
	cmpb	$14, %al
	jne	.L1189
	movl	-24(%ebp), %edx
	movl	4(%edx), %eax
	movzbl	8(%eax), %eax
	cmpb	$15, %al
	je	.L1191
.L1189:
	movl	-24(%ebp), %edx
	movzbl	8(%edx), %eax
	cmpb	$21, %al
	jne	.L1192
	movl	-24(%ebp), %edx
	movl	92(%edx), %eax
	testl	%eax, %eax
	je	.L1192
	movl	-24(%ebp), %edx
	movl	92(%edx), %eax
	movzbl	8(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L1192
.L1191:
	.loc 1 2369 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC23@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 2368 0
	jmp	.L1195
.L1192:
	.loc 1 2370 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-28(%ebp), %eax
	je	.L1195
	.loc 1 2372 0
	cmpl	$0, 12(%ebp)
	je	.L1197
	.loc 1 2373 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC24@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	jmp	.L1195
.L1197:
	.loc 1 2375 0
	leal	.LC25@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L1195:
	.loc 1 2377 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -48(%ebp)
.L1162:
	movl	-48(%ebp), %eax
	.loc 1 2378 0
	addl	$68, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE52:
	.size	build_indirect_ref, .-build_indirect_ref
	.section	.rodata
	.align 4
.LC26:
	.string	"subscript missing in array reference"
	.align 4
.LC27:
	.string	"array subscript has type `char'"
	.align 4
.LC28:
	.string	"array subscript is not an integer"
	.align 4
.LC29:
	.string	"ISO C++ forbids subscripting non-lvalue array"
	.align 4
.LC30:
	.string	"subscripting array declared `register'"
	.align 4
.LC31:
	.string	"subscripted value is neither array nor pointer"
.LC32:
	.string	"array indexing"
	.text
.globl build_array_ref
	.type	build_array_ref, @function
build_array_ref:
.LFB53:
	.loc 1 2396 0
	pushl	%ebp
.LCFI157:
	movl	%esp, %ebp
.LCFI158:
	pushl	%esi
.LCFI159:
	pushl	%ebx
.LCFI160:
	subl	$64, %esp
.LCFI161:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2397 0
	cmpl	$0, 12(%ebp)
	jne	.L1201
	.loc 1 2399 0
	leal	.LC26@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 2400 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -48(%ebp)
	jmp	.L1203
.L1201:
	.loc 1 2403 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	je	.L1204
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jne	.L1206
.L1204:
	.loc 1 2405 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -48(%ebp)
	jmp	.L1203
.L1206:
	.loc 1 2409 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -44(%ebp)
	cmpl	$48, -44(%ebp)
	je	.L1208
	cmpl	$52, -44(%ebp)
	je	.L1209
	jmp	.L1207
.L1208:
.LBB38:
	.loc 1 2413 0
	movl	8(%ebp), %eax
	movl	24(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	build_array_ref@PLT
	movl	%eax, -36(%ebp)
	.loc 1 2414 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	-36(%ebp), %eax
	movl	4(%eax), %ecx
	movl	-36(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	$48, (%esp)
	call	build@PLT
	movl	%eax, -48(%ebp)
	jmp	.L1203
.L1209:
.LBE38:
	.loc 1 2419 0
	movl	8(%ebp), %eax
	movl	28(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	build_array_ref@PLT
	movl	%eax, %esi
	movl	8(%ebp), %eax
	movl	24(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	build_array_ref@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%esi, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	build_conditional_expr@PLT
	movl	%eax, -48(%ebp)
	jmp	.L1203
.L1207:
	.loc 1 2428 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$19, %al
	jne	.L1210
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$42, %al
	je	.L1210
.LBB39:
	.loc 1 2439 0
	movl	warn_char_subscripts@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1213
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	72(%eax), %edx
	movl	integer_types@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jne	.L1213
	.loc 1 2441 0
	leal	.LC27@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
.L1213:
	.loc 1 2444 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	default_conversion@PLT
	movl	%eax, 12(%ebp)
	.loc 1 2446 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$7, %al
	je	.L1216
	.loc 1 2448 0
	leal	.LC28@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 2449 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -48(%ebp)
	jmp	.L1203
.L1216:
	.loc 1 2456 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	jne	.L1218
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L1220
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	20(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	je	.L1220
.L1218:
	.loc 1 2461 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cxx_mark_addressable@PLT
	xorl	$1, %eax
	testb	%al, %al
	je	.L1220
	.loc 1 2462 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -48(%ebp)
	jmp	.L1203
.L1220:
	.loc 1 2469 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	jne	.L1223
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L1223
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	int_fits_type_p@PLT
	testl	%eax, %eax
	jne	.L1223
	.loc 1 2473 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cxx_mark_addressable@PLT
	xorl	$1, %eax
	testb	%al, %al
	je	.L1223
	.loc 1 2474 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -48(%ebp)
	jmp	.L1203
.L1223:
	.loc 1 2477 0
	movl	pedantic@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1228
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	lvalue_p@PLT
	testl	%eax, %eax
	jne	.L1228
	.loc 1 2478 0
	leal	.LC29@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	pedwarn@PLT
.L1228:
	.loc 1 2483 0
	movl	extra_warnings@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1231
.LBB40:
	.loc 1 2485 0
	movl	8(%ebp), %eax
	movl	%eax, -24(%ebp)
	.loc 1 2486 0
	jmp	.L1233
.L1234:
	.loc 1 2487 0
	movl	-24(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -24(%ebp)
.L1233:
	.loc 1 2486 0
	movl	-24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$40, %al
	je	.L1234
	.loc 1 2488 0
	movl	-24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$35, %al
	jne	.L1231
	movl	-24(%ebp), %eax
	movzbl	33(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L1231
	.loc 1 2489 0
	leal	.LC30@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
.L1231:
.LBE40:
	.loc 1 2492 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 2493 0
	movl	12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$44, (%esp)
	call	build@PLT
	movl	%eax, -32(%ebp)
	.loc 1 2496 0
	movl	-32(%ebp), %eax
	movzbl	9(%eax), %eax
	shrb	$4, %al
	andl	$1, %eax
	movl	%eax, %esi
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	cp_type_quals@PLT
	movl	%eax, %edx
	andl	$1, %edx
	movl	8(%ebp), %eax
	movzbl	9(%eax), %eax
	shrb	$4, %al
	andl	$1, %eax
	orl	%edx, %eax
	orl	%esi, %eax
	andl	$1, %eax
	movl	-32(%ebp), %ecx
	andl	$1, %eax
	movl	%eax, %edx
	sall	$4, %edx
	movzbl	9(%ecx), %eax
	andl	$-17, %eax
	orl	%edx, %eax
	movb	%al, 9(%ecx)
	.loc 1 2498 0
	movl	-32(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$1, %eax
	movl	%eax, %esi
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	cp_type_quals@PLT
	andl	$2, %eax
	testl	%eax, %eax
	setne	%dl
	movl	8(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$1, %eax
	orl	%edx, %eax
	orl	%esi, %eax
	andl	$1, %eax
	movl	-32(%ebp), %edx
	movl	%eax, %ecx
	andl	$1, %ecx
	movzbl	9(%edx), %eax
	andl	$-2, %eax
	orl	%ecx, %eax
	movb	%al, 9(%edx)
	.loc 1 2500 0
	movl	-32(%ebp), %eax
	movzbl	9(%eax), %eax
	shrb	$3, %al
	andl	$1, %eax
	movl	%eax, %esi
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	cp_type_quals@PLT
	andl	$2, %eax
	testl	%eax, %eax
	setne	%dl
	movl	8(%ebp), %eax
	movzbl	9(%eax), %eax
	shrb	$3, %al
	andl	$1, %eax
	orl	%edx, %eax
	orl	%esi, %eax
	andl	$1, %eax
	movl	-32(%ebp), %ecx
	andl	$1, %eax
	leal	0(,%eax,8), %edx
	movzbl	9(%ecx), %eax
	andl	$-9, %eax
	orl	%edx, %eax
	movb	%al, 9(%ecx)
	.loc 1 2502 0
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, (%esp)
	call	require_complete_type@PLT
	movl	%eax, -48(%ebp)
	jmp	.L1203
.L1210:
.LBE39:
.LBB41:
	.loc 1 2506 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	default_conversion@PLT
	movl	%eax, -20(%ebp)
	.loc 1 2507 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	default_conversion@PLT
	movl	%eax, -16(%ebp)
	.loc 1 2510 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$7, %al
	jne	.L1238
.LBB42:
	.loc 1 2512 0
	movl	-20(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 2513 0
	movl	-16(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 2514 0
	movl	-12(%ebp), %eax
	movl	%eax, -16(%ebp)
.L1238:
.LBE42:
	.loc 1 2517 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-20(%ebp), %eax
	jne	.L1240
	.loc 1 2518 0
	movl	-20(%ebp), %eax
	movl	%eax, -48(%ebp)
	jmp	.L1203
.L1240:
	.loc 1 2520 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	je	.L1242
	.loc 1 2522 0
	leal	.LC31@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 2523 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -48(%ebp)
	jmp	.L1203
.L1242:
	.loc 1 2525 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$7, %al
	je	.L1244
	.loc 1 2527 0
	leal	.LC28@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 2528 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -48(%ebp)
	jmp	.L1203
.L1244:
	.loc 1 2531 0
	movl	$1, 12(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$60, (%esp)
	call	build_binary_op@PLT
	movl	%eax, %edx
	leal	.LC32@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	build_indirect_ref@PLT
	movl	%eax, -48(%ebp)
.L1203:
	movl	-48(%ebp), %eax
.LBE41:
	.loc 1 2534 0
	addl	$64, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE53:
	.size	build_array_ref, .-build_array_ref
	.section	.rodata
	.align 32
	.type	__FUNCTION__.19331, @object
	.size	__FUNCTION__.19331, 33
__FUNCTION__.19331:
	.string	"get_member_function_from_ptrfunc"
.LC33:
	.string	"object missing in use of `%E'"
	.text
.globl get_member_function_from_ptrfunc
	.type	get_member_function_from_ptrfunc, @function
get_member_function_from_ptrfunc:
.LFB54:
	.loc 1 2550 0
	pushl	%ebp
.LCFI162:
	movl	%esp, %ebp
.LCFI163:
	pushl	%ebx
.LCFI164:
	subl	$68, %esp
.LCFI165:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2551 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-77, %al
	jne	.L1248
	.loc 1 2552 0
	movl	12(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, 12(%ebp)
.L1248:
	.loc 1 2554 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	jne	.L1250
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	92(%eax), %eax
	testl	%eax, %eax
	je	.L1250
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	92(%eax), %eax
	movzbl	8(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L1250
.LBB43:
	.loc 1 2557 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	16(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 2559 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 2560 0
	movl	$0, -8(%ebp)
	.loc 1 2561 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-12(%ebp), %eax
	jne	.L1254
	.loc 1 2563 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-76, %al
	jne	.L1256
	.loc 1 2568 0
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	build_addr_func@PLT
	movl	%eax, -36(%ebp)
	.loc 1 2569 0
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, -36(%ebp)
	.loc 1 2570 0
	movl	-36(%ebp), %eax
	movl	%eax, -56(%ebp)
	jmp	.L1258
.L1256:
	.loc 1 2574 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC33@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 2575 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -56(%ebp)
	jmp	.L1258
.L1254:
	.loc 1 2579 0
	movl	-12(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L1259
	.loc 1 2580 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	save_expr@PLT
	movl	%eax, -8(%ebp)
	movl	-8(%ebp), %eax
	movl	%eax, -12(%ebp)
.L1259:
	.loc 1 2582 0
	movl	12(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L1261
	.loc 1 2583 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	save_expr@PLT
	movl	%eax, 12(%ebp)
.L1261:
	.loc 1 2586 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	pfn_from_ptrmemfunc@PLT
	movl	%eax, -28(%ebp)
	.loc 1 2587 0
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	216(%eax), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	build_ptrmemfunc_access_expr@PLT
	movl	%eax, -40(%ebp)
	.loc 1 2588 0
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	44(%eax), %edx
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$117, (%esp)
	call	build1@PLT
	movl	%eax, -44(%ebp)
	.loc 1 2597 0
	movl	global_trees@GOT(%ebx), %eax
	movl	48(%eax), %eax
	movl	$1, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$90, (%esp)
	call	build_binary_op@PLT
	movl	%eax, -36(%ebp)
	.loc 1 2598 0
	movl	global_trees@GOT(%ebx), %eax
	movl	48(%eax), %eax
	movl	$1, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$85, (%esp)
	call	build_binary_op@PLT
	movl	%eax, -40(%ebp)
	.loc 1 2607 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	64(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 2608 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %edx
	movl	$0, 12(%esp)
	movl	$2, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	lookup_base@PLT
	movl	%eax, -20(%ebp)
	.loc 1 2610 0
	movl	$1, 12(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$60, (%esp)
	call	build_base_path@PLT
	movl	%eax, -12(%ebp)
	.loc 1 2611 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-12(%ebp), %eax
	jne	.L1263
	.loc 1 2612 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -56(%ebp)
	jmp	.L1258
.L1263:
	.loc 1 2614 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %edx
	movl	-40(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$60, (%esp)
	call	build@PLT
	movl	%eax, -12(%ebp)
	.loc 1 2618 0
	movl	8(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 2621 0
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	124(%eax), %eax
	movl	%eax, (%esp)
	call	build_pointer_type@PLT
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$117, (%esp)
	call	build1@PLT
	movl	%eax, -24(%ebp)
	.loc 1 2623 0
	movl	$0, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	build_indirect_ref@PLT
	movl	%eax, -24(%ebp)
	.loc 1 2626 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %edx
	movl	-44(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$60, (%esp)
	call	build@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -32(%ebp)
	.loc 1 2627 0
	movl	$0, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	build_indirect_ref@PLT
	movl	%eax, -32(%ebp)
	.loc 1 2628 0
	movl	-32(%ebp), %edx
	movzbl	9(%edx), %eax
	orl	$2, %eax
	movb	%al, 9(%edx)
	.loc 1 2636 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %edx
	movl	-32(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 2637 0
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	build_conditional_expr@PLT
	movl	%eax, -36(%ebp)
	.loc 1 2641 0
	cmpl	$0, -8(%ebp)
	je	.L1265
	.loc 1 2642 0
	movl	-36(%ebp), %eax
	movl	4(%eax), %edx
	movl	-36(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$48, (%esp)
	call	build@PLT
	movl	%eax, -36(%ebp)
.L1265:
	.loc 1 2645 0
	movl	-36(%ebp), %eax
	movl	%eax, 12(%ebp)
.L1250:
.LBE43:
	.loc 1 2647 0
	movl	12(%ebp), %eax
	movl	%eax, -56(%ebp)
.L1258:
	movl	-56(%ebp), %eax
	.loc 1 2648 0
	addl	$68, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE54:
	.size	get_member_function_from_ptrfunc, .-get_member_function_from_ptrfunc
	.section	.rodata
	.align 4
.LC34:
	.string	"ISO C++ forbids calling `::main' from within program"
	.align 4
.LC35:
	.string	"must use .* or ->* to call pointer-to-member function in `%E (...)'"
	.align 4
.LC36:
	.string	"`%E' cannot be used as a function"
	.text
.globl build_function_call_real
	.type	build_function_call_real, @function
build_function_call_real:
.LFB55:
	.loc 1 2654 0
	pushl	%ebp
.LCFI166:
	movl	%esp, %ebp
.LCFI167:
	pushl	%ebx
.LCFI168:
	subl	$84, %esp
.LCFI169:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2658 0
	movl	$0, -20(%ebp)
	movl	$0, -16(%ebp)
	.loc 1 2660 0
	movl	8(%ebp), %eax
	movl	%eax, -8(%ebp)
	.loc 1 2664 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$117, %al
	jne	.L1269
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	jne	.L1269
	.loc 1 2666 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 8(%ebp)
.L1269:
	.loc 1 2668 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	jne	.L1272
	.loc 1 2670 0
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 2671 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	decl_assembler_name@PLT
	movl	%eax, -16(%ebp)
	.loc 1 2673 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	mark_used@PLT
	.loc 1 2674 0
	movl	8(%ebp), %eax
	movl	%eax, -44(%ebp)
	.loc 1 2677 0
	movl	pedantic@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1274
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	jne	.L1274
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	jne	.L1277
	movl	8(%ebp), %eax
	movzbl	38(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	jne	.L1274
.L1277:
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	testl	%eax, %eax
	je	.L1279
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	4(%eax), %eax
	testb	%al, %al
	sete	-57(%ebp)
	jmp	.L1281
.L1279:
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	sete	-57(%ebp)
.L1281:
	cmpb	$0, -57(%ebp)
	je	.L1274
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	testl	%eax, %eax
	je	.L1274
	movl	8(%ebp), %eax
	movl	52(%eax), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	252(%eax), %eax
	cmpl	%eax, %edx
	jne	.L1274
	.loc 1 2678 0
	leal	.LC34@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	pedwarn@PLT
.L1274:
	.loc 1 2684 0
	movl	8(%ebp), %eax
	movzbl	33(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L1285
	.loc 1 2685 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	inline_conversion@PLT
	movl	%eax, 8(%ebp)
	jmp	.L1288
.L1285:
	.loc 1 2687 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_addr_func@PLT
	movl	%eax, 8(%ebp)
	jmp	.L1288
.L1272:
	.loc 1 2691 0
	movl	$0, -44(%ebp)
	.loc 1 2693 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_addr_func@PLT
	movl	%eax, 8(%ebp)
.L1288:
	.loc 1 2696 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L1289
	.loc 1 2697 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -56(%ebp)
	jmp	.L1291
.L1289:
	.loc 1 2699 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -48(%ebp)
	.loc 1 2701 0
	movl	-48(%ebp), %edx
	movzbl	8(%edx), %eax
	cmpb	$21, %al
	jne	.L1292
	movl	-48(%ebp), %edx
	movl	92(%edx), %eax
	testl	%eax, %eax
	je	.L1292
	movl	-48(%ebp), %edx
	movl	92(%edx), %eax
	movzbl	8(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L1292
	.loc 1 2703 0
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC35@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 2705 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -56(%ebp)
	jmp	.L1291
.L1292:
	.loc 1 2708 0
	movl	-48(%ebp), %edx
	movzbl	8(%edx), %eax
	cmpb	$14, %al
	jne	.L1296
	movl	-48(%ebp), %edx
	movl	4(%edx), %eax
	movzbl	8(%eax), %eax
	cmpb	$17, %al
	jne	.L1296
	movl	$1, -52(%ebp)
	jmp	.L1299
.L1296:
	movl	$0, -52(%ebp)
.L1299:
	movl	-52(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 2711 0
	movl	-48(%ebp), %edx
	movzbl	8(%edx), %eax
	cmpb	$14, %al
	jne	.L1300
	movl	-48(%ebp), %edx
	movl	4(%edx), %eax
	movzbl	8(%eax), %eax
	cmpb	$24, %al
	je	.L1302
.L1300:
	cmpl	$0, -12(%ebp)
	jne	.L1302
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-53, %al
	je	.L1302
	.loc 1 2716 0
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC36@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 2717 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -56(%ebp)
	jmp	.L1291
.L1302:
	.loc 1 2721 0
	movl	-48(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -48(%ebp)
	.loc 1 2726 0
	movl	16(%ebp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L1305
	.loc 1 2727 0
	movl	-48(%ebp), %edx
	movl	16(%edx), %eax
	movl	$3, 12(%esp)
	movl	-44(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	12(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	convert_arguments@PLT
	movl	%eax, -40(%ebp)
	jmp	.L1307
.L1305:
	.loc 1 2730 0
	movl	-48(%ebp), %edx
	movl	16(%edx), %eax
	movl	$0, 12(%esp)
	movl	-44(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	12(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	convert_arguments@PLT
	movl	%eax, -40(%ebp)
.L1307:
	.loc 1 2733 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-40(%ebp), %eax
	jne	.L1308
	.loc 1 2735 0
	movl	16(%ebp), %eax
	andl	$64, %eax
	testl	%eax, %eax
	je	.L1310
	.loc 1 2736 0
	movl	$0, -56(%ebp)
	jmp	.L1291
.L1310:
	.loc 1 2738 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -56(%ebp)
	jmp	.L1291
.L1308:
	.loc 1 2743 0
	movl	warn_format@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1312
	.loc 1 2744 0
	movl	-48(%ebp), %edx
	movl	28(%edx), %eax
	movl	-40(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	check_function_format@PLT
.L1312:
	.loc 1 2750 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$123, %al
	jne	.L1314
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	jne	.L1314
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	36(%eax), %eax
	andl	$12, %eax
	testb	%al, %al
	je	.L1314
	.loc 1 2754 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	-40(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	expand_tree_builtin@PLT
	movl	%eax, -24(%ebp)
	.loc 1 2756 0
	cmpl	$0, -24(%ebp)
	je	.L1314
	.loc 1 2757 0
	movl	-24(%ebp), %edx
	movl	%edx, -56(%ebp)
	jmp	.L1291
.L1314:
	.loc 1 2760 0
	movl	-40(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_cxx_call@PLT
	movl	%eax, -56(%ebp)
.L1291:
	movl	-56(%ebp), %eax
	.loc 1 2761 0
	addl	$84, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE55:
	.size	build_function_call_real, .-build_function_call_real
.globl build_function_call
	.type	build_function_call, @function
build_function_call:
.LFB56:
	.loc 1 2766 0
	pushl	%ebp
.LCFI170:
	movl	%esp, %ebp
.LCFI171:
	pushl	%ebx
.LCFI172:
	subl	$20, %esp
.LCFI173:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2767 0
	movl	$3, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_function_call_real@PLT
	.loc 1 2768 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE56:
	.size	build_function_call, .-build_function_call
	.section	.rodata
.LC37:
	.string	"constructor"
.LC38:
	.string	"member function"
.LC39:
	.string	"function"
	.align 4
.LC40:
	.string	"too many arguments to %s `%+#D'"
.LC41:
	.string	"at this point in file"
	.align 4
.LC42:
	.string	"too many arguments to function"
	.align 4
.LC43:
	.string	"parameter type of called function is incomplete"
.LC44:
	.string	"argument passing"
	.align 4
.LC45:
	.string	"too few arguments to %s `%+#D'"
.LC46:
	.string	"too few arguments to function"
	.text
.globl convert_arguments
	.type	convert_arguments, @function
convert_arguments:
.LFB57:
	.loc 1 2791 0
	pushl	%ebp
.LCFI174:
	movl	%esp, %ebp
.LCFI175:
	pushl	%ebx
.LCFI176:
	subl	$84, %esp
.LCFI177:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2793 0
	movl	$0, -32(%ebp)
	.loc 1 2794 0
	movl	$0, -20(%ebp)
	.loc 1 2795 0
	movl	$0, -16(%ebp)
	.loc 1 2798 0
	orl	$128, 20(%ebp)
	.loc 1 2800 0
	cmpl	$0, 16(%ebp)
	je	.L1323
	.loc 1 2802 0
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$17, %al
	jne	.L1325
	.loc 1 2804 0
	movl	16(%ebp), %eax
	movl	52(%eax), %eax
	testl	%eax, %eax
	je	.L1327
	movl	16(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, (%esp)
	call	identifier_type_value@PLT
	testl	%eax, %eax
	je	.L1329
.L1327:
	.loc 1 2806 0
	leal	.LC37@GOTOFF(%ebx), %eax
	movl	%eax, -20(%ebp)
	.loc 1 2804 0
	jmp	.L1323
.L1329:
	.loc 1 2808 0
	leal	.LC38@GOTOFF(%ebx), %eax
	movl	%eax, -20(%ebp)
	jmp	.L1323
.L1325:
	.loc 1 2811 0
	leal	.LC39@GOTOFF(%ebx), %eax
	movl	%eax, -20(%ebp)
.L1323:
	.loc 1 2814 0
	movl	12(%ebp), %eax
	movl	%eax, -36(%ebp)
	movl	8(%ebp), %edx
	movl	%edx, -40(%ebp)
	.loc 1 2815 0
	jmp	.L1331
.L1332:
.LBB44:
	.loc 1 2818 0
	cmpl	$0, -40(%ebp)
	je	.L1333
	movl	-40(%ebp), %ecx
	movl	20(%ecx), %ecx
	movl	%ecx, -48(%ebp)
	jmp	.L1335
.L1333:
	movl	$0, -48(%ebp)
.L1335:
	movl	-48(%ebp), %eax
	movl	%eax, -28(%ebp)
	.loc 1 2819 0
	movl	-36(%ebp), %edx
	movl	20(%edx), %edx
	movl	%edx, -24(%ebp)
	.loc 1 2821 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-24(%ebp), %eax
	jne	.L1336
	.loc 1 2822 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -44(%ebp)
	jmp	.L1338
.L1336:
	.loc 1 2824 0
	movl	global_trees@GOT(%ebx), %eax
	movl	128(%eax), %eax
	cmpl	-28(%ebp), %eax
	jne	.L1339
	.loc 1 2826 0
	cmpl	$0, 16(%ebp)
	je	.L1341
	.loc 1 2828 0
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC40@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	cp_error_at@PLT
	.loc 1 2830 0
	leal	.LC41@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	jmp	.L1343
.L1341:
	.loc 1 2833 0
	leal	.LC42@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L1343:
	.loc 1 2836 0
	cmpl	$0, -32(%ebp)
	je	.L1346
	.loc 1 2837 0
	movl	-32(%ebp), %ecx
	movl	%ecx, (%esp)
	call	tree_last@PLT
	movl	global_trees@GOT(%ebx), %edx
	movl	(%edx), %edx
	movl	%edx, 4(%eax)
	.loc 1 2838 0
	jmp	.L1346
.L1339:
	.loc 1 2841 0
	movl	-24(%ebp), %edx
	movzbl	8(%edx), %eax
	cmpb	$-77, %al
	jne	.L1347
	.loc 1 2842 0
	movl	-24(%ebp), %ecx
	movl	%ecx, (%esp)
	call	resolve_offset_ref@PLT
	movl	%eax, -24(%ebp)
.L1347:
	.loc 1 2846 0
	movl	-24(%ebp), %edx
	movzbl	8(%edx), %eax
	cmpb	$117, %al
	jne	.L1349
	movl	-24(%ebp), %ecx
	movl	4(%ecx), %eax
	movl	-24(%ebp), %ecx
	movl	20(%ecx), %edx
	movl	4(%edx), %edx
	cmpl	%edx, %eax
	jne	.L1349
	cmpl	$0, -28(%ebp)
	je	.L1352
	movl	-28(%ebp), %edx
	movzbl	8(%edx), %eax
	cmpb	$16, %al
	je	.L1349
.L1352:
	.loc 1 2849 0
	movl	-24(%ebp), %ecx
	movl	20(%ecx), %ecx
	movl	%ecx, -24(%ebp)
.L1349:
	.loc 1 2851 0
	cmpl	$0, -28(%ebp)
	je	.L1354
	movl	-28(%ebp), %edx
	movzbl	8(%edx), %eax
	cmpb	$16, %al
	je	.L1356
.L1354:
	.loc 1 2853 0
	movl	-24(%ebp), %ecx
	movl	4(%ecx), %eax
	movzbl	8(%eax), %eax
	cmpb	$19, %al
	je	.L1357
	movl	-24(%ebp), %edx
	movl	4(%edx), %eax
	movzbl	8(%eax), %eax
	cmpb	$24, %al
	je	.L1357
	movl	-24(%ebp), %ecx
	movl	4(%ecx), %eax
	movzbl	8(%eax), %eax
	cmpb	$17, %al
	jne	.L1356
.L1357:
	.loc 1 2856 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	default_conversion@PLT
	movl	%eax, -24(%ebp)
.L1356:
	.loc 1 2859 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-24(%ebp), %eax
	jne	.L1360
	.loc 1 2860 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -44(%ebp)
	jmp	.L1338
.L1360:
	.loc 1 2862 0
	cmpl	$0, -28(%ebp)
	je	.L1362
.LBB45:
	.loc 1 2867 0
	movl	-28(%ebp), %edx
	movl	%edx, (%esp)
	call	complete_type@PLT
	movl	20(%eax), %eax
	testl	%eax, %eax
	jne	.L1364
	.loc 1 2869 0
	leal	.LC43@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 2870 0
	movl	-24(%ebp), %ecx
	movl	%ecx, -12(%ebp)
	jmp	.L1366
.L1364:
	.loc 1 2874 0
	movl	-16(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 20(%esp)
	leal	.LC44@GOTOFF(%ebx), %eax
	movl	%eax, 16(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-28(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	$0, (%esp)
	call	convert_for_initialization@PLT
	movl	%eax, -12(%ebp)
	.loc 1 2877 0
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %ecx
	movl	%ecx, (%esp)
	call	convert_for_arg_passing@PLT
	movl	%eax, -12(%ebp)
.L1366:
	.loc 1 2880 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-12(%ebp), %eax
	jne	.L1367
	.loc 1 2881 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -44(%ebp)
	jmp	.L1338
.L1367:
	.loc 1 2883 0
	movl	-32(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	tree_cons@PLT
	movl	%eax, -32(%ebp)
	jmp	.L1369
.L1362:
.LBE45:
	.loc 1 2887 0
	movl	-24(%ebp), %edx
	movl	4(%edx), %eax
	movzbl	8(%eax), %eax
	cmpb	$16, %al
	jne	.L1370
	.loc 1 2888 0
	movl	-24(%ebp), %ecx
	movl	%ecx, (%esp)
	call	convert_from_reference@PLT
	movl	%eax, -24(%ebp)
.L1370:
	.loc 1 2890 0
	cmpl	$0, 16(%ebp)
	je	.L1372
	movl	16(%ebp), %eax
	movzbl	36(%eax), %eax
	andl	$12, %eax
	testb	%al, %al
	je	.L1372
	movl	16(%ebp), %eax
	movl	40(%eax), %eax
	cmpl	$296, %eax
	jne	.L1372
	.loc 1 2895 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	require_complete_type@PLT
	movl	%eax, -24(%ebp)
	.loc 1 2890 0
	jmp	.L1376
.L1372:
	.loc 1 2897 0
	movl	-24(%ebp), %edx
	movl	%edx, (%esp)
	call	convert_arg_to_ellipsis@PLT
	movl	%eax, -24(%ebp)
.L1376:
	.loc 1 2899 0
	movl	-32(%ebp), %ecx
	movl	%ecx, 8(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	tree_cons@PLT
	movl	%eax, -32(%ebp)
.L1369:
	.loc 1 2902 0
	cmpl	$0, -40(%ebp)
	je	.L1377
	.loc 1 2903 0
	movl	-40(%ebp), %edx
	movl	(%edx), %edx
	movl	%edx, -40(%ebp)
.L1377:
.LBE44:
	.loc 1 2816 0
	movl	-36(%ebp), %ecx
	movl	(%ecx), %ecx
	movl	%ecx, -36(%ebp)
	addl	$1, -16(%ebp)
.L1331:
	.loc 1 2815 0
	cmpl	$0, -36(%ebp)
	jne	.L1332
.L1346:
	.loc 1 2906 0
	cmpl	$0, -40(%ebp)
	je	.L1379
	movl	global_trees@GOT(%ebx), %eax
	movl	152(%eax), %eax
	cmpl	-40(%ebp), %eax
	je	.L1379
	.loc 1 2909 0
	movl	-40(%ebp), %edx
	movl	16(%edx), %eax
	testl	%eax, %eax
	je	.L1382
	.loc 1 2911 0
	jmp	.L1384
.L1385:
.LBB46:
	.loc 1 2916 0
	movl	-40(%ebp), %ecx
	movl	16(%ecx), %edx
	movl	-40(%ebp), %eax
	movl	20(%eax), %ecx
	movl	-16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	convert_default_arg@PLT
	movl	%eax, -8(%ebp)
	.loc 1 2918 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-8(%ebp), %eax
	jne	.L1386
	.loc 1 2919 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -44(%ebp)
	jmp	.L1338
.L1386:
	.loc 1 2921 0
	movl	-32(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	tree_cons@PLT
	movl	%eax, -32(%ebp)
	.loc 1 2922 0
	movl	-40(%ebp), %ecx
	movl	(%ecx), %ecx
	movl	%ecx, -40(%ebp)
	.loc 1 2924 0
	cmpl	$0, -40(%ebp)
	je	.L1379
.LBE46:
	.loc 1 2911 0
	addl	$1, -16(%ebp)
.L1384:
	movl	global_trees@GOT(%ebx), %eax
	movl	152(%eax), %eax
	cmpl	-40(%ebp), %eax
	jne	.L1385
	jmp	.L1379
.L1382:
	.loc 1 2930 0
	cmpl	$0, 16(%ebp)
	je	.L1390
	.loc 1 2932 0
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC45@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	cp_error_at@PLT
	.loc 1 2934 0
	leal	.LC41@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	jmp	.L1392
.L1390:
	.loc 1 2937 0
	leal	.LC46@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L1392:
	.loc 1 2938 0
	movl	error_mark_list@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -44(%ebp)
	jmp	.L1338
.L1379:
	.loc 1 2942 0
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	nreverse@PLT
	movl	%eax, -44(%ebp)
.L1338:
	movl	-44(%ebp), %eax
	.loc 1 2943 0
	addl	$84, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE57:
	.size	convert_arguments, .-convert_arguments
.globl build_x_binary_op
	.type	build_x_binary_op, @function
build_x_binary_op:
.LFB58:
	.loc 1 2952 0
	pushl	%ebp
.LCFI178:
	movl	%esp, %ebp
.LCFI179:
	pushl	%ebx
.LCFI180:
	subl	$36, %esp
.LCFI181:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2953 0
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	64(%eax), %edx
	movl	60(%eax), %eax
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L1395
	.loc 1 2954 0
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_min_nt@PLT
	movl	%eax, -8(%ebp)
	jmp	.L1397
.L1395:
	.loc 1 2956 0
	movl	$0, 16(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$3, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_new_op@PLT
	movl	%eax, -8(%ebp)
.L1397:
	movl	-8(%ebp), %eax
	.loc 1 2957 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE58:
	.size	build_x_binary_op, .-build_x_binary_op
	.section	.rodata
	.type	__FUNCTION__.19769, @object
	.size	__FUNCTION__.19769, 16
__FUNCTION__.19769:
	.string	"build_binary_op"
	.align 4
.LC47:
	.string	"assuming cast to type `%T' from overloaded function"
.LC48:
	.string	"division by zero in `%E / 0'"
.LC49:
	.string	"division by zero in `%E / 0.'"
.LC50:
	.string	"division by zero in `%E %% 0'"
	.align 4
.LC51:
	.string	"division by zero in `%E %% 0.'"
.LC52:
	.string	"right shift count is negative"
	.align 4
.LC53:
	.string	"right shift count >= width of type"
.LC54:
	.string	"left shift count is negative"
	.align 4
.LC55:
	.string	"left shift count >= width of type"
.LC56:
	.string	"left"
.LC57:
	.string	"right"
.LC58:
	.string	"%s rotate count is negative"
	.align 4
.LC59:
	.string	"%s rotate count >= width of type"
	.align 4
.LC60:
	.string	"comparing floating point with == or != is unsafe"
.LC61:
	.string	"comparison"
	.align 4
.LC62:
	.string	"ISO C++ forbids comparison between pointer and integer"
	.align 4
.LC63:
	.string	"unordered comparison on non-floating point argument"
	.align 4
.LC64:
	.string	"comparison between types `%#T' and `%#T'"
	.align 4
.LC65:
	.string	"comparison between signed and unsigned integer expressions"
	.align 4
.LC66:
	.string	"comparison of promoted ~unsigned with constant"
	.align 4
.LC67:
	.string	"comparison of promoted ~unsigned with unsigned"
	.align 4
.LC68:
	.string	"invalid operands of types `%T' and `%T' to binary `%O'"
.LC69:
	.string	"NULL used in arithmetic"
	.text
.globl build_binary_op
	.type	build_binary_op, @function
build_binary_op:
.LFB59:
	.loc 1 2982 0
	pushl	%ebp
.LCFI182:
	movl	%esp, %ebp
.LCFI183:
	pushl	%esi
.LCFI184:
	pushl	%ebx
.LCFI185:
	subl	$256, %esp
.LCFI186:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2990 0
	movl	8(%ebp), %eax
	movl	%eax, -196(%ebp)
	.loc 1 2994 0
	movl	$0, -192(%ebp)
	.loc 1 2999 0
	movl	$0, -128(%ebp)
	.loc 1 3003 0
	movl	$0, -124(%ebp)
	.loc 1 3007 0
	movl	$0, -120(%ebp)
	.loc 1 3015 0
	movl	$0, -116(%ebp)
	.loc 1 3020 0
	movl	$0, -112(%ebp)
	.loc 1 3024 0
	movl	$0, -108(%ebp)
	.loc 1 3027 0
	movl	$0, -104(%ebp)
	.loc 1 3030 0
	movl	12(%ebp), %eax
	movl	%eax, -144(%ebp)
	.loc 1 3031 0
	movl	16(%ebp), %eax
	movl	%eax, -140(%ebp)
	.loc 1 3033 0
	cmpl	$95, 8(%ebp)
	je	.L1400
	cmpl	$93, 8(%ebp)
	je	.L1400
	cmpl	$96, 8(%ebp)
	je	.L1400
	cmpl	$94, 8(%ebp)
	je	.L1400
	cmpl	$97, 8(%ebp)
	jne	.L1405
.L1400:
	.loc 1 3037 0
	movl	-144(%ebp), %eax
	movl	%eax, (%esp)
	call	really_overloaded_fn@PLT
	testl	%eax, %eax
	jne	.L1406
	.loc 1 3038 0
	movl	-144(%ebp), %eax
	movl	%eax, (%esp)
	call	decay_conversion@PLT
	movl	%eax, -144(%ebp)
.L1406:
	.loc 1 3039 0
	movl	-140(%ebp), %eax
	movl	%eax, (%esp)
	call	really_overloaded_fn@PLT
	testl	%eax, %eax
	jne	.L1414
	.loc 1 3040 0
	movl	-140(%ebp), %eax
	movl	%eax, (%esp)
	call	decay_conversion@PLT
	movl	%eax, -140(%ebp)
	.loc 1 3033 0
	jmp	.L1414
.L1405:
	.loc 1 3044 0
	movl	-144(%ebp), %eax
	movl	%eax, (%esp)
	call	really_overloaded_fn@PLT
	testl	%eax, %eax
	jne	.L1411
	.loc 1 3045 0
	movl	-144(%ebp), %eax
	movl	%eax, (%esp)
	call	default_conversion@PLT
	movl	%eax, -144(%ebp)
.L1411:
	.loc 1 3046 0
	movl	-140(%ebp), %eax
	movl	%eax, (%esp)
	call	really_overloaded_fn@PLT
	testl	%eax, %eax
	jne	.L1414
	.loc 1 3047 0
	movl	-140(%ebp), %eax
	movl	%eax, (%esp)
	call	default_conversion@PLT
	movl	%eax, -140(%ebp)
	.loc 1 3051 0
	jmp	.L1414
.L1415:
	movl	-144(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -144(%ebp)
.L1414:
	movl	-144(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$117, %al
	je	.L1416
	movl	-144(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$116, %al
	je	.L1416
	movl	-144(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$118, %al
	jne	.L1421
.L1416:
	movl	-144(%ebp), %eax
	movl	20(%eax), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	je	.L1421
	movl	-144(%ebp), %eax
	movl	4(%eax), %edx
	movl	-144(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	je	.L1415
	.loc 1 3052 0
	jmp	.L1421
.L1422:
	movl	-140(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -140(%ebp)
.L1421:
	movl	-140(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$117, %al
	je	.L1423
	movl	-140(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$116, %al
	je	.L1423
	movl	-140(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$118, %al
	jne	.L1426
.L1423:
	movl	-140(%ebp), %eax
	movl	20(%eax), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	je	.L1426
	movl	-140(%ebp), %eax
	movl	4(%eax), %edx
	movl	-140(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	je	.L1422
.L1426:
	.loc 1 3055 0
	movl	-144(%ebp), %eax
	movl	%eax, (%esp)
	call	type_unknown_p@PLT
	testl	%eax, %eax
	je	.L1428
.LBB47:
	.loc 1 3057 0
	movl	-140(%ebp), %eax
	movl	4(%eax), %edx
	movl	$0, 8(%esp)
	movl	-144(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	instantiate_type@PLT
	movl	%eax, -100(%ebp)
	.loc 1 3058 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-100(%ebp), %eax
	je	.L1428
	.loc 1 3060 0
	movl	-100(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC47@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	pedwarn@PLT
	.loc 1 3062 0
	movl	-100(%ebp), %eax
	movl	%eax, -144(%ebp)
.L1428:
.LBE47:
	.loc 1 3065 0
	movl	-140(%ebp), %eax
	movl	%eax, (%esp)
	call	type_unknown_p@PLT
	testl	%eax, %eax
	je	.L1431
.LBB48:
	.loc 1 3067 0
	movl	-144(%ebp), %eax
	movl	4(%eax), %edx
	movl	$0, 8(%esp)
	movl	-140(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	instantiate_type@PLT
	movl	%eax, -96(%ebp)
	.loc 1 3068 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-96(%ebp), %eax
	je	.L1431
	.loc 1 3070 0
	movl	-96(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC47@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	pedwarn@PLT
	.loc 1 3072 0
	movl	-96(%ebp), %eax
	movl	%eax, -140(%ebp)
.L1431:
.LBE48:
	.loc 1 3076 0
	movl	-144(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -136(%ebp)
	.loc 1 3077 0
	movl	-140(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -132(%ebp)
	.loc 1 3081 0
	movl	-136(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -204(%ebp)
	.loc 1 3082 0
	movl	-132(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -200(%ebp)
	.loc 1 3087 0
	cmpl	$0, -204(%ebp)
	je	.L1434
	cmpl	$0, -200(%ebp)
	jne	.L1436
.L1434:
	.loc 1 3088 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -228(%ebp)
	jmp	.L1437
.L1436:
	.loc 1 3090 0
	movl	8(%ebp), %edx
	subl	$60, %edx
	movl	%edx, -232(%ebp)
	cmpl	$51, -232(%ebp)
	ja	.L1438
	movl	-232(%ebp), %eax
	sall	$2, %eax
	movl	.L1453@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L1453:
	.long	.L1439@GOTOFF
	.long	.L1440@GOTOFF
	.long	.L1441@GOTOFF
	.long	.L1442@GOTOFF
	.long	.L1442@GOTOFF
	.long	.L1442@GOTOFF
	.long	.L1442@GOTOFF
	.long	.L1443@GOTOFF
	.long	.L1438@GOTOFF
	.long	.L1443@GOTOFF
	.long	.L1438@GOTOFF
	.long	.L1438@GOTOFF
	.long	.L1442@GOTOFF
	.long	.L1438@GOTOFF
	.long	.L1438@GOTOFF
	.long	.L1438@GOTOFF
	.long	.L1438@GOTOFF
	.long	.L1438@GOTOFF
	.long	.L1438@GOTOFF
	.long	.L1438@GOTOFF
	.long	.L1444@GOTOFF
	.long	.L1444@GOTOFF
	.long	.L1438@GOTOFF
	.long	.L1438@GOTOFF
	.long	.L1445@GOTOFF
	.long	.L1446@GOTOFF
	.long	.L1447@GOTOFF
	.long	.L1447@GOTOFF
	.long	.L1448@GOTOFF
	.long	.L1448@GOTOFF
	.long	.L1448@GOTOFF
	.long	.L1448@GOTOFF
	.long	.L1438@GOTOFF
	.long	.L1449@GOTOFF
	.long	.L1449@GOTOFF
	.long	.L1449@GOTOFF
	.long	.L1449@GOTOFF
	.long	.L1438@GOTOFF
	.long	.L1438@GOTOFF
	.long	.L1450@GOTOFF
	.long	.L1450@GOTOFF
	.long	.L1450@GOTOFF
	.long	.L1450@GOTOFF
	.long	.L1451@GOTOFF
	.long	.L1451@GOTOFF
	.long	.L1452@GOTOFF
	.long	.L1452@GOTOFF
	.long	.L1452@GOTOFF
	.long	.L1452@GOTOFF
	.long	.L1452@GOTOFF
	.long	.L1452@GOTOFF
	.long	.L1452@GOTOFF
	.text
.L1439:
	.loc 1 3094 0
	cmpl	$14, -204(%ebp)
	jne	.L1454
	cmpl	$7, -200(%ebp)
	jne	.L1454
	.loc 1 3095 0
	movl	-140(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-144(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$60, (%esp)
	call	cp_pointer_int_sum
	movl	%eax, -228(%ebp)
	jmp	.L1437
.L1454:
	.loc 1 3096 0
	cmpl	$14, -200(%ebp)
	jne	.L1457
	cmpl	$7, -204(%ebp)
	jne	.L1457
	.loc 1 3097 0
	movl	-144(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-140(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$60, (%esp)
	call	cp_pointer_int_sum
	movl	%eax, -228(%ebp)
	jmp	.L1437
.L1457:
	.loc 1 3099 0
	movl	$1, -104(%ebp)
	.loc 1 3100 0
	jmp	.L1438
.L1440:
	.loc 1 3105 0
	cmpl	$14, -204(%ebp)
	jne	.L1460
	cmpl	$14, -200(%ebp)
	jne	.L1460
	movl	$1, 8(%esp)
	movl	-132(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-136(%ebp), %eax
	movl	%eax, (%esp)
	call	comp_target_types@PLT
	testl	%eax, %eax
	je	.L1460
	.loc 1 3107 0
	movl	-132(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-136(%ebp), %eax
	movl	%eax, (%esp)
	call	common_type@PLT
	movl	%eax, 8(%esp)
	movl	-140(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-144(%ebp), %eax
	movl	%eax, (%esp)
	call	pointer_diff
	movl	%eax, -228(%ebp)
	jmp	.L1437
.L1460:
	.loc 1 3109 0
	cmpl	$14, -204(%ebp)
	jne	.L1464
	cmpl	$7, -200(%ebp)
	jne	.L1464
	.loc 1 3110 0
	movl	-140(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-144(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$61, (%esp)
	call	cp_pointer_int_sum
	movl	%eax, -228(%ebp)
	jmp	.L1437
.L1464:
	.loc 1 3112 0
	movl	$1, -104(%ebp)
	.loc 1 3113 0
	jmp	.L1438
.L1441:
	.loc 1 3116 0
	movl	$1, -104(%ebp)
	.loc 1 3117 0
	jmp	.L1438
.L1442:
	.loc 1 3124 0
	cmpl	$7, -204(%ebp)
	je	.L1467
	cmpl	$8, -204(%ebp)
	je	.L1467
	cmpl	$9, -204(%ebp)
	jne	.L1438
.L1467:
	cmpl	$7, -200(%ebp)
	je	.L1471
	cmpl	$8, -200(%ebp)
	je	.L1471
	cmpl	$9, -200(%ebp)
	jne	.L1438
.L1471:
	.loc 1 3129 0
	movl	-140(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	jne	.L1474
	movl	-140(%ebp), %eax
	movl	%eax, (%esp)
	call	integer_zerop@PLT
	testl	%eax, %eax
	je	.L1474
	.loc 1 3130 0
	movl	-144(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC48@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
	.loc 1 3129 0
	jmp	.L1477
.L1474:
	.loc 1 3131 0
	movl	-140(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$27, %al
	jne	.L1477
	movl	-140(%ebp), %eax
	movl	%eax, (%esp)
	call	real_zerop@PLT
	testl	%eax, %eax
	je	.L1477
	.loc 1 3132 0
	movl	-144(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC49@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
.L1477:
	.loc 1 3134 0
	cmpl	$7, -204(%ebp)
	jne	.L1480
	cmpl	$7, -200(%ebp)
	je	.L1482
.L1480:
	.loc 1 3135 0
	movl	$71, -196(%ebp)
	.loc 1 3134 0
	jmp	.L1483
.L1482:
	.loc 1 3142 0
	movl	-144(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$117, %al
	jne	.L1484
	movl	-144(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movzbl	9(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	jne	.L1486
.L1484:
	movl	-140(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	jne	.L1487
	movl	-140(%ebp), %eax
	movl	%eax, (%esp)
	call	integer_all_onesp@PLT
	testl	%eax, %eax
	jne	.L1487
.L1486:
	movl	$1, -224(%ebp)
	jmp	.L1489
.L1487:
	movl	$0, -224(%ebp)
.L1489:
	movl	-224(%ebp), %ecx
	movl	%ecx, -116(%ebp)
.L1483:
	.loc 1 3147 0
	movl	$1, -104(%ebp)
	.loc 1 3149 0
	jmp	.L1438
.L1448:
	.loc 1 3155 0
	cmpl	$7, -204(%ebp)
	jne	.L1438
	cmpl	$7, -200(%ebp)
	jne	.L1438
	.loc 1 3156 0
	movl	$-1, -116(%ebp)
	.loc 1 3157 0
	jmp	.L1438
.L1443:
	.loc 1 3161 0
	cmpl	$7, -200(%ebp)
	jne	.L1493
	movl	-140(%ebp), %eax
	movl	%eax, (%esp)
	call	integer_zerop@PLT
	testl	%eax, %eax
	je	.L1493
	.loc 1 3162 0
	movl	-144(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC50@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
	.loc 1 3161 0
	jmp	.L1496
.L1493:
	.loc 1 3163 0
	cmpl	$8, -200(%ebp)
	jne	.L1496
	movl	-140(%ebp), %eax
	movl	%eax, (%esp)
	call	real_zerop@PLT
	testl	%eax, %eax
	je	.L1496
	.loc 1 3164 0
	movl	-144(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC51@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
.L1496:
	.loc 1 3166 0
	cmpl	$7, -204(%ebp)
	jne	.L1438
	cmpl	$7, -200(%ebp)
	jne	.L1438
	.loc 1 3172 0
	movl	-144(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$117, %al
	jne	.L1502
	movl	-144(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movzbl	9(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	jne	.L1504
.L1502:
	movl	-140(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	jne	.L1505
	movl	-140(%ebp), %eax
	movl	%eax, (%esp)
	call	integer_all_onesp@PLT
	testl	%eax, %eax
	jne	.L1505
.L1504:
	movl	$1, -220(%ebp)
	jmp	.L1507
.L1505:
	movl	$0, -220(%ebp)
.L1507:
	movl	-220(%ebp), %eax
	movl	%eax, -116(%ebp)
	.loc 1 3176 0
	movl	$1, -104(%ebp)
	.loc 1 3178 0
	jmp	.L1438
.L1449:
	.loc 1 3184 0
	movl	c_global_trees@GOT(%ebx), %eax
	movl	60(%eax), %eax
	movl	%eax, -192(%ebp)
	.loc 1 3185 0
	jmp	.L1438
.L1446:
	.loc 1 3192 0
	cmpl	$7, -204(%ebp)
	jne	.L1438
	cmpl	$7, -200(%ebp)
	jne	.L1438
	.loc 1 3194 0
	movl	-136(%ebp), %edx
	movl	%edx, -192(%ebp)
	.loc 1 3195 0
	movl	-140(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	jne	.L1511
	.loc 1 3197 0
	movl	global_trees@GOT(%ebx), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-140(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_int_cst_lt@PLT
	testl	%eax, %eax
	je	.L1513
	.loc 1 3198 0
	leal	.LC52@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
	jmp	.L1511
.L1513:
	.loc 1 3201 0
	movl	-140(%ebp), %eax
	movl	%eax, (%esp)
	call	integer_zerop@PLT
	testl	%eax, %eax
	jne	.L1515
	.loc 1 3202 0
	movl	$1, -108(%ebp)
.L1515:
	.loc 1 3203 0
	movl	-136(%ebp), %eax
	movzwl	36(%eax), %ecx
	andw	$511, %cx
	movzwl	%cx, %eax
	movl	$0, %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	-140(%ebp), %eax
	movl	%eax, (%esp)
	call	compare_tree_int@PLT
	testl	%eax, %eax
	js	.L1511
	.loc 1 3204 0
	leal	.LC53@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
.L1511:
	.loc 1 3209 0
	movl	-140(%ebp), %eax
	movl	4(%eax), %eax
	movl	72(%eax), %edx
	movl	integer_types@GOT(%ebx), %eax
	movl	20(%eax), %eax
	cmpl	%eax, %edx
	je	.L1518
	.loc 1 3210 0
	movl	integer_types@GOT(%ebx), %eax
	movl	20(%eax), %edx
	movl	-140(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	cp_convert@PLT
	movl	%eax, -140(%ebp)
.L1518:
	.loc 1 3212 0
	movl	$1, -128(%ebp)
	.loc 1 3214 0
	jmp	.L1438
.L1445:
	.loc 1 3217 0
	cmpl	$7, -204(%ebp)
	jne	.L1438
	cmpl	$7, -200(%ebp)
	jne	.L1438
	.loc 1 3219 0
	movl	-136(%ebp), %ecx
	movl	%ecx, -192(%ebp)
	.loc 1 3220 0
	movl	-140(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	jne	.L1523
	.loc 1 3222 0
	movl	global_trees@GOT(%ebx), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-140(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_int_cst_lt@PLT
	testl	%eax, %eax
	je	.L1525
	.loc 1 3223 0
	leal	.LC54@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
	jmp	.L1523
.L1525:
	.loc 1 3224 0
	movl	-136(%ebp), %eax
	movzwl	36(%eax), %ecx
	andw	$511, %cx
	movzwl	%cx, %eax
	movl	$0, %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	-140(%ebp), %eax
	movl	%eax, (%esp)
	call	compare_tree_int@PLT
	testl	%eax, %eax
	js	.L1523
	.loc 1 3225 0
	leal	.LC55@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
.L1523:
	.loc 1 3229 0
	movl	-140(%ebp), %eax
	movl	4(%eax), %eax
	movl	72(%eax), %edx
	movl	integer_types@GOT(%ebx), %eax
	movl	20(%eax), %eax
	cmpl	%eax, %edx
	je	.L1528
	.loc 1 3230 0
	movl	integer_types@GOT(%ebx), %eax
	movl	20(%eax), %edx
	movl	-140(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	cp_convert@PLT
	movl	%eax, -140(%ebp)
.L1528:
	.loc 1 3232 0
	movl	$1, -128(%ebp)
	.loc 1 3234 0
	jmp	.L1438
.L1447:
	.loc 1 3238 0
	cmpl	$7, -204(%ebp)
	jne	.L1438
	cmpl	$7, -200(%ebp)
	jne	.L1438
	.loc 1 3240 0
	movl	-136(%ebp), %eax
	movl	%eax, -192(%ebp)
	.loc 1 3241 0
	movl	-140(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	jne	.L1533
	.loc 1 3243 0
	movl	global_trees@GOT(%ebx), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-140(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_int_cst_lt@PLT
	testl	%eax, %eax
	je	.L1535
	.loc 1 3244 0
	cmpl	$86, 8(%ebp)
	jne	.L1537
	leal	.LC56@GOTOFF(%ebx), %edx
	movl	%edx, -216(%ebp)
	jmp	.L1539
.L1537:
	leal	.LC57@GOTOFF(%ebx), %ecx
	movl	%ecx, -216(%ebp)
.L1539:
	movl	-216(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC58@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
	jmp	.L1533
.L1535:
	.loc 1 3246 0
	movl	-136(%ebp), %eax
	movzwl	36(%eax), %ecx
	andw	$511, %cx
	movzwl	%cx, %eax
	movl	$0, %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	-140(%ebp), %eax
	movl	%eax, (%esp)
	call	compare_tree_int@PLT
	testl	%eax, %eax
	js	.L1533
	.loc 1 3247 0
	cmpl	$86, 8(%ebp)
	jne	.L1541
	leal	.LC56@GOTOFF(%ebx), %edx
	movl	%edx, -212(%ebp)
	jmp	.L1543
.L1541:
	leal	.LC57@GOTOFF(%ebx), %ecx
	movl	%ecx, -212(%ebp)
.L1543:
	movl	-212(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC59@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
.L1533:
	.loc 1 3252 0
	movl	-140(%ebp), %eax
	movl	4(%eax), %eax
	movl	72(%eax), %edx
	movl	integer_types@GOT(%ebx), %eax
	movl	20(%eax), %eax
	cmpl	%eax, %edx
	je	.L1438
	.loc 1 3253 0
	movl	integer_types@GOT(%ebx), %eax
	movl	20(%eax), %edx
	movl	-140(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	cp_convert@PLT
	movl	%eax, -140(%ebp)
	.loc 1 3255 0
	jmp	.L1438
.L1451:
	.loc 1 3259 0
	movl	warn_float_equal@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1545
	cmpl	$8, -204(%ebp)
	je	.L1547
	cmpl	$8, -200(%ebp)
	jne	.L1545
.L1547:
	.loc 1 3260 0
	leal	.LC60@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
.L1545:
	.loc 1 3262 0
	movl	c_global_trees@GOT(%ebx), %eax
	movl	60(%eax), %eax
	movl	%eax, -124(%ebp)
	.loc 1 3263 0
	cmpl	$7, -204(%ebp)
	je	.L1549
	cmpl	$8, -204(%ebp)
	je	.L1549
	cmpl	$9, -204(%ebp)
	jne	.L1552
.L1549:
	cmpl	$7, -200(%ebp)
	je	.L1553
	cmpl	$8, -200(%ebp)
	je	.L1553
	cmpl	$9, -200(%ebp)
	jne	.L1552
.L1553:
	.loc 1 3267 0
	movl	$1, -112(%ebp)
	.loc 1 3263 0
	jmp	.L1438
.L1552:
	.loc 1 3268 0
	cmpl	$14, -204(%ebp)
	jne	.L1557
	cmpl	$14, -200(%ebp)
	jne	.L1557
	.loc 1 3269 0
	leal	.LC61@GOTOFF(%ebx), %eax
	movl	%eax, 16(%esp)
	movl	-140(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-144(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-132(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-136(%ebp), %eax
	movl	%eax, (%esp)
	call	composite_pointer_type@PLT
	movl	%eax, -192(%ebp)
	.loc 1 3268 0
	jmp	.L1438
.L1557:
	.loc 1 3271 0
	cmpl	$14, -204(%ebp)
	jne	.L1560
	movl	-140(%ebp), %eax
	movl	%eax, (%esp)
	call	null_ptr_cst_p@PLT
	testl	%eax, %eax
	je	.L1560
	.loc 1 3272 0
	movl	-136(%ebp), %edx
	movl	%edx, -192(%ebp)
	.loc 1 3271 0
	jmp	.L1438
.L1560:
	.loc 1 3273 0
	cmpl	$14, -200(%ebp)
	jne	.L1563
	movl	-144(%ebp), %eax
	movl	%eax, (%esp)
	call	null_ptr_cst_p@PLT
	testl	%eax, %eax
	je	.L1563
	.loc 1 3274 0
	movl	-132(%ebp), %ecx
	movl	%ecx, -192(%ebp)
	.loc 1 3273 0
	jmp	.L1438
.L1563:
	.loc 1 3275 0
	cmpl	$14, -204(%ebp)
	jne	.L1566
	cmpl	$7, -200(%ebp)
	jne	.L1566
	.loc 1 3277 0
	movl	-136(%ebp), %eax
	movl	%eax, -192(%ebp)
	.loc 1 3278 0
	leal	.LC62@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 3275 0
	jmp	.L1438
.L1566:
	.loc 1 3280 0
	cmpl	$7, -204(%ebp)
	jne	.L1569
	cmpl	$14, -200(%ebp)
	jne	.L1569
	.loc 1 3282 0
	movl	-132(%ebp), %edx
	movl	%edx, -192(%ebp)
	.loc 1 3283 0
	leal	.LC62@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 3280 0
	jmp	.L1438
.L1569:
	.loc 1 3285 0
	movl	-136(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	jne	.L1572
	movl	-136(%ebp), %eax
	movl	92(%eax), %eax
	testl	%eax, %eax
	je	.L1572
	movl	-136(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	8(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L1572
	movl	-140(%ebp), %eax
	movl	%eax, (%esp)
	call	null_ptr_cst_p@PLT
	testl	%eax, %eax
	je	.L1572
	.loc 1 3287 0
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	236(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-144(%ebp), %eax
	movl	%eax, (%esp)
	call	build_ptrmemfunc_access_expr@PLT
	movl	%eax, -144(%ebp)
	.loc 1 3288 0
	movl	global_trees@GOT(%ebx), %eax
	movl	44(%eax), %edx
	movl	-144(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	cp_convert@PLT
	movl	%eax, -140(%ebp)
	.loc 1 3289 0
	movl	-144(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -192(%ebp)
	.loc 1 3285 0
	jmp	.L1438
.L1572:
	.loc 1 3291 0
	movl	-132(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	jne	.L1577
	movl	-132(%ebp), %eax
	movl	92(%eax), %eax
	testl	%eax, %eax
	je	.L1577
	movl	-132(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	8(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L1577
	movl	-144(%ebp), %eax
	movl	%eax, (%esp)
	call	null_ptr_cst_p@PLT
	testl	%eax, %eax
	je	.L1577
	.loc 1 3292 0
	movl	$1, 12(%esp)
	movl	-144(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-140(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_binary_op@PLT
	movl	%eax, -228(%ebp)
	jmp	.L1437
.L1577:
	.loc 1 3293 0
	movl	-136(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	jne	.L1582
	movl	-136(%ebp), %eax
	movl	92(%eax), %eax
	testl	%eax, %eax
	je	.L1582
	movl	-136(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	8(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L1582
	movl	-132(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	jne	.L1582
	movl	-132(%ebp), %eax
	movl	92(%eax), %eax
	testl	%eax, %eax
	je	.L1582
	movl	-132(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	8(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L1582
	movl	$0, 8(%esp)
	movl	-132(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-136(%ebp), %eax
	movl	%eax, (%esp)
	call	comptypes@PLT
	testl	%eax, %eax
	je	.L1582
.LBB49:
	.loc 1 3306 0
	movl	-144(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L1590
	.loc 1 3307 0
	movl	-144(%ebp), %eax
	movl	%eax, (%esp)
	call	save_expr@PLT
	movl	%eax, -144(%ebp)
.L1590:
	.loc 1 3308 0
	movl	-140(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L1592
	.loc 1 3309 0
	movl	-140(%ebp), %eax
	movl	%eax, (%esp)
	call	save_expr@PLT
	movl	%eax, -140(%ebp)
.L1592:
	.loc 1 3319 0
	movl	-144(%ebp), %eax
	movl	%eax, (%esp)
	call	pfn_from_ptrmemfunc@PLT
	movl	%eax, -80(%ebp)
	.loc 1 3320 0
	movl	-140(%ebp), %eax
	movl	%eax, (%esp)
	call	pfn_from_ptrmemfunc@PLT
	movl	%eax, -76(%ebp)
	.loc 1 3321 0
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	216(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-144(%ebp), %eax
	movl	%eax, (%esp)
	call	build_ptrmemfunc_access_expr@PLT
	movl	%eax, -72(%ebp)
	.loc 1 3323 0
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	216(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-140(%ebp), %eax
	movl	%eax, (%esp)
	call	build_ptrmemfunc_access_expr@PLT
	movl	%eax, -68(%ebp)
	.loc 1 3325 0
	movl	$1, 12(%esp)
	movl	-68(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-72(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$103, (%esp)
	call	build_binary_op@PLT
	movl	%eax, -88(%ebp)
	.loc 1 3326 0
	movl	global_trees@GOT(%ebx), %eax
	movl	44(%eax), %edx
	movl	-80(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	cp_convert@PLT
	movl	$1, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-80(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$103, (%esp)
	call	build_binary_op@PLT
	movl	%eax, -84(%ebp)
	.loc 1 3330 0
	movl	$1, 12(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-88(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$94, (%esp)
	call	build_binary_op@PLT
	movl	%eax, -88(%ebp)
	.loc 1 3331 0
	movl	c_global_trees@GOT(%ebx), %eax
	movl	60(%eax), %edx
	movl	-76(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-80(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$103, (%esp)
	call	build@PLT
	movl	%eax, -84(%ebp)
	.loc 1 3332 0
	movl	$1, 12(%esp)
	movl	-88(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$93, (%esp)
	call	build_binary_op@PLT
	movl	%eax, -92(%ebp)
	.loc 1 3333 0
	cmpl	$103, 8(%ebp)
	jne	.L1594
	.loc 1 3334 0
	movl	-92(%ebp), %ecx
	movl	%ecx, -228(%ebp)
	jmp	.L1437
.L1594:
	.loc 1 3335 0
	movl	global_trees@GOT(%ebx), %eax
	movl	44(%eax), %eax
	movl	$1, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-92(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$103, (%esp)
	call	build_binary_op@PLT
	movl	%eax, -228(%ebp)
	jmp	.L1437
.L1582:
.LBE49:
	.loc 1 3337 0
	movl	-136(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	jne	.L1596
	movl	-136(%ebp), %eax
	movl	92(%eax), %eax
	testl	%eax, %eax
	je	.L1596
	movl	-136(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	8(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L1596
	movl	-136(%ebp), %eax
	movl	16(%eax), %eax
	movl	4(%eax), %edx
	movl	$0, 8(%esp)
	movl	-132(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	comptypes@PLT
	testl	%eax, %eax
	jne	.L1600
.L1596:
	movl	-132(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	jne	.L1438
	movl	-132(%ebp), %eax
	movl	92(%eax), %eax
	testl	%eax, %eax
	je	.L1438
	movl	-132(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	8(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L1438
	movl	-132(%ebp), %eax
	movl	16(%eax), %eax
	movl	4(%eax), %edx
	movl	$0, 8(%esp)
	movl	-136(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	comptypes@PLT
	testl	%eax, %eax
	je	.L1438
.L1600:
	.loc 1 3341 0
	leal	__FUNCTION__.19769@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3341, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1444:
	.loc 1 3346 0
	cmpl	$7, -204(%ebp)
	je	.L1604
	cmpl	$8, -204(%ebp)
	jne	.L1606
.L1604:
	cmpl	$7, -200(%ebp)
	je	.L1607
	cmpl	$8, -200(%ebp)
	jne	.L1606
.L1607:
	.loc 1 3348 0
	movl	$1, -116(%ebp)
	.loc 1 3346 0
	jmp	.L1438
.L1606:
	.loc 1 3349 0
	cmpl	$14, -204(%ebp)
	jne	.L1438
	cmpl	$14, -200(%ebp)
	jne	.L1438
	.loc 1 3350 0
	leal	.LC61@GOTOFF(%ebx), %eax
	movl	%eax, 16(%esp)
	movl	-140(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-144(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-132(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-136(%ebp), %eax
	movl	%eax, (%esp)
	call	composite_pointer_type@PLT
	movl	%eax, -192(%ebp)
	.loc 1 3352 0
	jmp	.L1438
.L1450:
	.loc 1 3358 0
	movl	c_global_trees@GOT(%ebx), %eax
	movl	60(%eax), %eax
	movl	%eax, -124(%ebp)
	.loc 1 3359 0
	cmpl	$7, -204(%ebp)
	je	.L1612
	cmpl	$8, -204(%ebp)
	jne	.L1614
.L1612:
	cmpl	$7, -200(%ebp)
	je	.L1615
	cmpl	$8, -200(%ebp)
	jne	.L1614
.L1615:
	.loc 1 3361 0
	movl	$1, -112(%ebp)
	.loc 1 3359 0
	jmp	.L1438
.L1614:
	.loc 1 3362 0
	cmpl	$14, -204(%ebp)
	jne	.L1618
	cmpl	$14, -200(%ebp)
	jne	.L1618
	.loc 1 3363 0
	leal	.LC61@GOTOFF(%ebx), %eax
	movl	%eax, 16(%esp)
	movl	-140(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-144(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-132(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-136(%ebp), %eax
	movl	%eax, (%esp)
	call	composite_pointer_type@PLT
	movl	%eax, -192(%ebp)
	.loc 1 3362 0
	jmp	.L1438
.L1618:
	.loc 1 3365 0
	cmpl	$14, -204(%ebp)
	jne	.L1621
	movl	-140(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	jne	.L1621
	movl	-140(%ebp), %eax
	movl	%eax, (%esp)
	call	integer_zerop@PLT
	testl	%eax, %eax
	je	.L1621
	.loc 1 3367 0
	movl	-136(%ebp), %eax
	movl	%eax, -192(%ebp)
	.loc 1 3365 0
	jmp	.L1438
.L1621:
	.loc 1 3368 0
	cmpl	$14, -200(%ebp)
	jne	.L1625
	movl	-144(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	jne	.L1625
	movl	-144(%ebp), %eax
	movl	%eax, (%esp)
	call	integer_zerop@PLT
	testl	%eax, %eax
	je	.L1625
	.loc 1 3370 0
	movl	-132(%ebp), %edx
	movl	%edx, -192(%ebp)
	.loc 1 3368 0
	jmp	.L1438
.L1625:
	.loc 1 3371 0
	cmpl	$14, -204(%ebp)
	jne	.L1629
	cmpl	$7, -200(%ebp)
	jne	.L1629
	.loc 1 3373 0
	movl	-136(%ebp), %ecx
	movl	%ecx, -192(%ebp)
	.loc 1 3374 0
	leal	.LC62@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	pedwarn@PLT
	.loc 1 3371 0
	jmp	.L1438
.L1629:
	.loc 1 3376 0
	cmpl	$7, -204(%ebp)
	jne	.L1438
	cmpl	$14, -200(%ebp)
	jne	.L1438
	.loc 1 3378 0
	movl	-132(%ebp), %eax
	movl	%eax, -192(%ebp)
	.loc 1 3379 0
	leal	.LC62@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	pedwarn@PLT
	.loc 1 3381 0
	jmp	.L1438
.L1452:
	.loc 1 3390 0
	movl	integer_types@GOT(%ebx), %eax
	movl	20(%eax), %eax
	movl	%eax, -124(%ebp)
	.loc 1 3391 0
	cmpl	$8, -204(%ebp)
	jne	.L1634
	cmpl	$8, -200(%ebp)
	je	.L1636
.L1634:
	.loc 1 3393 0
	leal	.LC63@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 3394 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -228(%ebp)
	jmp	.L1437
.L1636:
	.loc 1 3396 0
	movl	$1, -104(%ebp)
.L1438:
	.loc 1 3403 0
	cmpl	$7, -204(%ebp)
	je	.L1637
	cmpl	$8, -204(%ebp)
	je	.L1637
	cmpl	$9, -204(%ebp)
	jne	.L1640
.L1637:
	cmpl	$7, -200(%ebp)
	je	.L1641
	cmpl	$8, -200(%ebp)
	je	.L1641
	cmpl	$9, -200(%ebp)
	jne	.L1640
.L1641:
.LBB50:
	.loc 1 3407 0
	cmpl	$9, -204(%ebp)
	je	.L1644
	cmpl	$9, -200(%ebp)
	je	.L1644
	movl	$1, -208(%ebp)
	jmp	.L1647
.L1644:
	movl	$0, -208(%ebp)
.L1647:
	movl	-208(%ebp), %edx
	movl	%edx, -64(%ebp)
	.loc 1 3409 0
	cmpl	$0, -116(%ebp)
	jne	.L1648
	cmpl	$0, -104(%ebp)
	jne	.L1648
	cmpl	$0, -112(%ebp)
	je	.L1651
.L1648:
	.loc 1 3410 0
	movl	-132(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-136(%ebp), %eax
	movl	%eax, (%esp)
	call	common_type@PLT
	movl	%eax, -192(%ebp)
.L1651:
	.loc 1 3423 0
	cmpl	$0, -116(%ebp)
	je	.L1652
	cmpl	$0, -64(%ebp)
	je	.L1652
.LBB51:
	.loc 1 3426 0
	leal	-152(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-144(%ebp), %eax
	movl	%eax, (%esp)
	call	get_narrower@PLT
	movl	%eax, -60(%ebp)
	.loc 1 3427 0
	leal	-148(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-140(%ebp), %eax
	movl	%eax, (%esp)
	call	get_narrower@PLT
	movl	%eax, -56(%ebp)
	.loc 1 3429 0
	movl	-192(%ebp), %ecx
	movzbl	9(%ecx), %eax
	shrb	$5, %al
	andl	$1, %eax
	movzbl	%al, %eax
	movl	%eax, -52(%ebp)
	.loc 1 3432 0
	movl	-192(%ebp), %eax
	movl	%eax, -120(%ebp)
	.loc 1 3437 0
	movl	-144(%ebp), %eax
	cmpl	-60(%ebp), %eax
	jne	.L1655
	movl	-144(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-120(%ebp), %eax
	je	.L1655
	.loc 1 3438 0
	movl	-144(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	9(%eax), %eax
	shrb	$5, %al
	andl	$1, %eax
	movzbl	%al, %eax
	movl	%eax, -152(%ebp)
.L1655:
	.loc 1 3439 0
	movl	-140(%ebp), %eax
	cmpl	-56(%ebp), %eax
	jne	.L1658
	movl	-140(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-120(%ebp), %eax
	je	.L1658
	.loc 1 3440 0
	movl	-140(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	9(%eax), %eax
	shrb	$5, %al
	andl	$1, %eax
	movzbl	%al, %eax
	movl	%eax, -148(%ebp)
.L1658:
	.loc 1 3446 0
	cmpl	$-1, -116(%ebp)
	jne	.L1661
	.loc 1 3447 0
	movl	-152(%ebp), %eax
	movl	%eax, -52(%ebp)
.L1661:
	.loc 1 3456 0
	movl	-60(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	36(%eax), %eax
	andw	$511, %ax
	movzwl	%ax, %edx
	movl	-192(%ebp), %ecx
	movzwl	36(%ecx), %eax
	andw	$511, %ax
	movzwl	%ax, %eax
	cmpl	%eax, %edx
	jge	.L1663
	movl	-56(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	36(%eax), %edx
	andw	$511, %dx
	movl	-60(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	36(%eax), %eax
	andw	$511, %ax
	cmpw	%ax, %dx
	jne	.L1663
	movl	-152(%ebp), %edx
	movl	-148(%ebp), %eax
	cmpl	%eax, %edx
	jne	.L1663
	movl	-152(%ebp), %eax
	testl	%eax, %eax
	jne	.L1667
	cmpl	$0, -52(%ebp)
	jne	.L1663
.L1667:
	.loc 1 3462 0
	movl	-56(%ebp), %eax
	movl	4(%eax), %edx
	movl	-60(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	common_type@PLT
	movl	-152(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	c_common_signed_or_unsigned_type@PLT
	movl	%eax, -192(%ebp)
	.loc 1 3456 0
	jmp	.L1652
.L1663:
	.loc 1 3464 0
	movl	-60(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	jne	.L1669
	movl	-148(%ebp), %eax
	testl	%eax, %eax
	jne	.L1671
	cmpl	$0, -52(%ebp)
	jne	.L1669
.L1671:
	movl	-56(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	36(%eax), %eax
	andw	$511, %ax
	movzwl	%ax, %edx
	movl	-192(%ebp), %ecx
	movzwl	36(%ecx), %eax
	andw	$511, %ax
	movzwl	%ax, %eax
	cmpl	%eax, %edx
	jge	.L1669
	movl	-56(%ebp), %eax
	movl	4(%eax), %eax
	movl	-148(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	c_common_signed_or_unsigned_type@PLT
	movl	%eax, -48(%ebp)
	movl	-48(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	int_fits_type_p@PLT
	testl	%eax, %eax
	je	.L1669
	.loc 1 3471 0
	movl	-48(%ebp), %eax
	movl	%eax, -192(%ebp)
	.loc 1 3464 0
	jmp	.L1652
.L1669:
	.loc 1 3472 0
	movl	-56(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	jne	.L1652
	movl	-152(%ebp), %eax
	testl	%eax, %eax
	jne	.L1676
	cmpl	$0, -52(%ebp)
	jne	.L1652
.L1676:
	movl	-60(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	36(%eax), %eax
	andw	$511, %ax
	movzwl	%ax, %edx
	movl	-192(%ebp), %ecx
	movzwl	36(%ecx), %eax
	andw	$511, %ax
	movzwl	%ax, %eax
	cmpl	%eax, %edx
	jge	.L1652
	movl	-60(%ebp), %eax
	movl	4(%eax), %eax
	movl	-152(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	c_common_signed_or_unsigned_type@PLT
	movl	%eax, -48(%ebp)
	movl	-48(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	int_fits_type_p@PLT
	testl	%eax, %eax
	je	.L1652
	.loc 1 3479 0
	movl	-48(%ebp), %eax
	movl	%eax, -192(%ebp)
.L1652:
.LBE51:
	.loc 1 3484 0
	cmpl	$0, -108(%ebp)
	je	.L1680
.LBB52:
	.loc 1 3487 0
	leal	-148(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-144(%ebp), %eax
	movl	%eax, (%esp)
	call	get_narrower@PLT
	movl	%eax, -44(%ebp)
	.loc 1 3489 0
	movl	-192(%ebp), %edx
	movl	%edx, -120(%ebp)
	.loc 1 3491 0
	movl	-44(%ebp), %eax
	cmpl	-144(%ebp), %eax
	jne	.L1682
	movl	-144(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-120(%ebp), %eax
	jne	.L1682
	.loc 1 3492 0
	movl	-144(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	9(%eax), %eax
	shrb	$5, %al
	andl	$1, %eax
	movzbl	%al, %eax
	movl	%eax, -148(%ebp)
.L1682:
	.loc 1 3494 0
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	36(%eax), %eax
	andw	$511, %ax
	movzwl	%ax, %edx
	movl	-192(%ebp), %ecx
	movzwl	36(%ecx), %eax
	andw	$511, %ax
	movzwl	%ax, %eax
	cmpl	%eax, %edx
	jge	.L1680
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	36(%eax), %ecx
	andw	$511, %cx
	movzwl	%cx, %eax
	movl	$0, %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	-140(%ebp), %eax
	movl	%eax, (%esp)
	call	compare_tree_int@PLT
	testl	%eax, %eax
	jns	.L1680
	movl	-120(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L1687
	movl	-148(%ebp), %eax
	testl	%eax, %eax
	jne	.L1687
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	36(%eax), %eax
	andw	$511, %ax
	movzwl	%ax, %eax
	leal	(%eax,%eax), %edx
	movl	-192(%ebp), %ecx
	movzwl	36(%ecx), %eax
	andw	$511, %ax
	movzwl	%ax, %eax
	cmpl	%eax, %edx
	ja	.L1680
.L1687:
	.loc 1 3511 0
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	movl	-148(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	c_common_signed_or_unsigned_type@PLT
	movl	%eax, -192(%ebp)
	.loc 1 3515 0
	movl	-144(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-192(%ebp), %eax
	je	.L1690
	.loc 1 3516 0
	movl	-144(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-192(%ebp), %eax
	movl	%eax, (%esp)
	call	cp_convert@PLT
	movl	%eax, -144(%ebp)
.L1690:
	.loc 1 3517 0
	movl	$1, -128(%ebp)
.L1680:
.LBE52:
	.loc 1 3524 0
	cmpl	$0, -112(%ebp)
	je	.L1692
.LBB53:
	.loc 1 3530 0
	movl	-144(%ebp), %eax
	movl	%eax, -148(%ebp)
	movl	-140(%ebp), %eax
	movl	%eax, -152(%ebp)
	movl	-192(%ebp), %edx
	movl	%edx, -160(%ebp)
	.loc 1 3531 0
	movl	-196(%ebp), %ecx
	movl	%ecx, -156(%ebp)
	.loc 1 3533 0
	leal	-156(%ebp), %eax
	movl	%eax, 12(%esp)
	leal	-160(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-152(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-148(%ebp), %eax
	movl	%eax, (%esp)
	call	shorten_compare@PLT
	movl	%eax, -40(%ebp)
	.loc 1 3534 0
	cmpl	$0, -40(%ebp)
	je	.L1694
	.loc 1 3535 0
	movl	c_global_trees@GOT(%ebx), %eax
	movl	60(%eax), %edx
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	cp_convert@PLT
	movl	%eax, -228(%ebp)
	jmp	.L1437
.L1694:
	.loc 1 3536 0
	movl	-148(%ebp), %eax
	movl	%eax, -144(%ebp)
	movl	-152(%ebp), %eax
	movl	%eax, -140(%ebp)
	.loc 1 3537 0
	movl	$1, -128(%ebp)
	.loc 1 3538 0
	movl	-156(%ebp), %eax
	movl	%eax, -196(%ebp)
.L1692:
.LBE53:
	.loc 1 3541 0
	cmpl	$0, -112(%ebp)
	jne	.L1696
	cmpl	$80, 8(%ebp)
	je	.L1696
	cmpl	$81, 8(%ebp)
	jne	.L1640
.L1696:
	movl	warn_sign_compare@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1640
.LBB54:
	.loc 1 3544 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	9(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -36(%ebp)
	.loc 1 3545 0
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	9(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -32(%ebp)
	.loc 1 3548 0
	leal	-156(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-144(%ebp), %eax
	movl	%eax, (%esp)
	call	get_narrower@PLT
	movl	%eax, -28(%ebp)
	.loc 1 3549 0
	leal	-160(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-140(%ebp), %eax
	movl	%eax, (%esp)
	call	get_narrower@PLT
	movl	%eax, -24(%ebp)
	.loc 1 3552 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$11, %al
	jne	.L1700
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$11, %al
	jne	.L1700
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	72(%eax), %edx
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	72(%eax), %eax
	cmpl	%eax, %edx
	je	.L1700
	.loc 1 3557 0
	movl	16(%ebp), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	leal	.LC64@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
.L1700:
	.loc 1 3569 0
	movl	-192(%ebp), %edx
	movzbl	9(%edx), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L1704
	.loc 1 3572 0
	movl	-36(%ebp), %eax
	cmpl	-32(%ebp), %eax
	je	.L1704
	.loc 1 3578 0
	cmpl	$0, -36(%ebp)
	je	.L1707
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_expr_nonnegative_p@PLT
	testl	%eax, %eax
	je	.L1707
	jmp	.L1704
.L1707:
	cmpl	$0, -32(%ebp)
	je	.L1710
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_expr_nonnegative_p@PLT
	testl	%eax, %eax
	je	.L1710
	jmp	.L1704
.L1710:
	.loc 1 3584 0
	cmpl	$103, -196(%ebp)
	je	.L1713
	cmpl	$104, -196(%ebp)
	jne	.L1715
.L1713:
	cmpl	$0, -36(%ebp)
	je	.L1716
	movl	16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	jne	.L1716
	movl	-192(%ebp), %ecx
	movl	%ecx, (%esp)
	call	c_common_signed_type@PLT
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	int_fits_type_p@PLT
	testl	%eax, %eax
	jne	.L1704
.L1716:
	cmpl	$0, -32(%ebp)
	je	.L1715
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	jne	.L1715
	movl	-192(%ebp), %eax
	movl	%eax, (%esp)
	call	c_common_signed_type@PLT
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	int_fits_type_p@PLT
	testl	%eax, %eax
	je	.L1715
	jmp	.L1704
.L1715:
	.loc 1 3593 0
	leal	.LC65@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
.L1704:
	.loc 1 3603 0
	movl	-28(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$92, %al
	sete	%al
	movzbl	%al, %edx
	movl	-24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$92, %al
	sete	%al
	movzbl	%al, %eax
	xorl	%edx, %eax
	testb	%al, %al
	je	.L1640
	.loc 1 3606 0
	movl	-28(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$92, %al
	jne	.L1723
	.loc 1 3607 0
	movl	-144(%ebp), %eax
	movl	20(%eax), %edx
	leal	-156(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	get_narrower@PLT
	movl	%eax, -28(%ebp)
.L1723:
	.loc 1 3608 0
	movl	-24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$92, %al
	jne	.L1725
	.loc 1 3609 0
	movl	-140(%ebp), %eax
	movl	20(%eax), %edx
	leal	-160(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	get_narrower@PLT
	movl	%eax, -24(%ebp)
.L1725:
	.loc 1 3611 0
	movl	$0, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	host_integerp@PLT
	testl	%eax, %eax
	jne	.L1727
	movl	$0, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	host_integerp@PLT
	testl	%eax, %eax
	je	.L1729
.L1727:
.LBB55:
	.loc 1 3618 0
	movl	$0, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	host_integerp@PLT
	testl	%eax, %eax
	je	.L1730
	.loc 1 3620 0
	movl	-24(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 3621 0
	movl	-160(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 3622 0
	movl	$0, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_low_cst@PLT
	movl	%eax, -176(%ebp)
	movl	%edx, -172(%ebp)
	jmp	.L1732
.L1730:
	.loc 1 3626 0
	movl	-28(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 3627 0
	movl	-156(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 3628 0
	movl	$0, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_low_cst@PLT
	movl	%eax, -176(%ebp)
	movl	%edx, -172(%ebp)
.L1732:
	.loc 1 3631 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	36(%eax), %eax
	andw	$511, %ax
	movzwl	%ax, %eax
	movl	%eax, -12(%ebp)
	.loc 1 3632 0
	movl	-192(%ebp), %edx
	movzwl	36(%edx), %eax
	andw	$511, %ax
	movzwl	%ax, %eax
	cmpl	-12(%ebp), %eax
	jbe	.L1640
	cmpl	$31, -12(%ebp)
	ja	.L1640
	cmpl	$0, -16(%ebp)
	je	.L1640
	.loc 1 3635 0
	movl	-12(%ebp), %ecx
	movl	$-1, %eax
	movl	$-1, %edx
	shldl	%eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	je	.L1770
	movl	%eax, %edx
	xorl	%eax, %eax
.L1770:
	movl	%eax, -168(%ebp)
	movl	%edx, -164(%ebp)
	.loc 1 3636 0
	movl	-176(%ebp), %ecx
	movl	-172(%ebp), %esi
	movl	-168(%ebp), %eax
	andl	%ecx, %eax
	movl	-164(%ebp), %edx
	andl	%esi, %edx
	movl	%edx, %ecx
	xorl	-164(%ebp), %ecx
	xorl	-168(%ebp), %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	je	.L1640
	.loc 1 3637 0
	leal	.LC66@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
	.loc 1 3611 0
	jmp	.L1640
.L1729:
.LBE55:
	.loc 1 3640 0
	movl	-156(%ebp), %eax
	testl	%eax, %eax
	je	.L1640
	movl	-160(%ebp), %eax
	testl	%eax, %eax
	je	.L1640
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	36(%eax), %eax
	andw	$511, %ax
	movzwl	%ax, %edx
	movl	-192(%ebp), %ecx
	movzwl	36(%ecx), %eax
	andw	$511, %ax
	movzwl	%ax, %eax
	cmpl	%eax, %edx
	jge	.L1640
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	36(%eax), %eax
	andw	$511, %ax
	movzwl	%ax, %edx
	movl	-192(%ebp), %ecx
	movzwl	36(%ecx), %eax
	andw	$511, %ax
	movzwl	%ax, %eax
	cmpl	%eax, %edx
	jge	.L1640
	.loc 1 3645 0
	leal	.LC67@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
.L1640:
.LBE54:
.LBE50:
	.loc 1 3656 0
	cmpl	$0, -192(%ebp)
	jne	.L1742
	.loc 1 3658 0
	movl	16(%ebp), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	4(%eax), %ecx
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%ecx, 4(%esp)
	leal	.LC68@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 3660 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -228(%ebp)
	jmp	.L1437
.L1742:
	.loc 1 3664 0
	cmpl	$93, 8(%ebp)
	je	.L1744
	cmpl	$94, 8(%ebp)
	je	.L1744
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	264(%eax), %eax
	cmpl	12(%ebp), %eax
	jne	.L1747
	movl	-140(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L1749
.L1747:
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	264(%eax), %eax
	cmpl	16(%ebp), %eax
	jne	.L1750
	movl	-144(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L1749
.L1750:
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	264(%eax), %eax
	cmpl	12(%ebp), %eax
	jne	.L1744
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	264(%eax), %eax
	cmpl	16(%ebp), %eax
	jne	.L1744
	cmpl	$103, 8(%ebp)
	je	.L1744
	cmpl	$104, 8(%ebp)
	je	.L1744
.L1749:
	.loc 1 3680 0
	leal	.LC69@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
.L1744:
	.loc 1 3682 0
	cmpl	$0, -128(%ebp)
	jne	.L1755
	.loc 1 3684 0
	movl	-144(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-192(%ebp), %eax
	je	.L1757
	.loc 1 3685 0
	movl	-144(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-192(%ebp), %eax
	movl	%eax, (%esp)
	call	cp_convert@PLT
	movl	%eax, -144(%ebp)
.L1757:
	.loc 1 3686 0
	movl	-140(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-192(%ebp), %eax
	je	.L1759
	.loc 1 3687 0
	movl	-140(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-192(%ebp), %edx
	movl	%edx, (%esp)
	call	cp_convert@PLT
	movl	%eax, -140(%ebp)
.L1759:
	.loc 1 3689 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-144(%ebp), %eax
	je	.L1761
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-140(%ebp), %eax
	jne	.L1755
.L1761:
	.loc 1 3690 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -228(%ebp)
	jmp	.L1437
.L1755:
	.loc 1 3693 0
	cmpl	$0, -124(%ebp)
	jne	.L1763
	.loc 1 3694 0
	movl	-192(%ebp), %ecx
	movl	%ecx, -124(%ebp)
.L1763:
.LBB56:
	.loc 1 3697 0
	movl	-140(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-144(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-124(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-196(%ebp), %eax
	movl	%eax, (%esp)
	call	build@PLT
	movl	%eax, %esi
	.loc 1 3700 0
	movl	%esi, (%esp)
	call	fold@PLT
	movl	%eax, -188(%ebp)
	.loc 1 3701 0
	cmpl	%esi, -188(%ebp)
	jne	.L1765
	.loc 1 3702 0
	movl	-144(%ebp), %eax
	movzbl	9(%eax), %eax
	shrb	%al
	andl	$1, %eax
	movl	%eax, %edx
	movl	-140(%ebp), %eax
	movzbl	9(%eax), %eax
	shrb	%al
	andl	$1, %eax
	andl	%edx, %eax
	andl	$1, %eax
	andl	$1, %eax
	leal	(%eax,%eax), %edx
	movl	-188(%ebp), %ecx
	movzbl	9(%ecx), %eax
	andl	$-3, %eax
	orl	%edx, %eax
	movl	-188(%ebp), %edx
	movb	%al, 9(%edx)
.L1765:
	.loc 1 3703 0
	cmpl	$0, -120(%ebp)
	je	.L1767
	.loc 1 3704 0
	movl	-188(%ebp), %ecx
	movl	%ecx, 4(%esp)
	movl	-120(%ebp), %eax
	movl	%eax, (%esp)
	call	cp_convert@PLT
	movl	%eax, -228(%ebp)
	jmp	.L1437
.L1767:
	.loc 1 3705 0
	movl	-188(%ebp), %eax
	movl	%eax, -228(%ebp)
.L1437:
	movl	-228(%ebp), %eax
.LBE56:
	.loc 1 3707 0
	addl	$256, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE59:
	.size	build_binary_op, .-build_binary_op
	.type	cp_pointer_int_sum, @function
cp_pointer_int_sum:
.LFB60:
	.loc 1 3716 0
	pushl	%ebp
.LCFI187:
	movl	%esp, %ebp
.LCFI188:
	pushl	%edi
.LCFI189:
	pushl	%esi
.LCFI190:
	pushl	%ebx
.LCFI191:
	subl	$28, %esp
.LCFI192:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	12(%ebp), %esi
	movl	16(%ebp), %edi
	.loc 1 3717 0
	movl	4(%esi), %eax
	movl	%eax, -16(%ebp)
	.loc 1 3724 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	complete_type@PLT
	.loc 1 3726 0
	movl	%edi, (%esp)
	call	fold@PLT
	movl	%eax, 8(%esp)
	movl	%esi, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	pointer_int_sum@PLT
	.loc 1 3727 0
	addl	$28, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE60:
	.size	cp_pointer_int_sum, .-cp_pointer_int_sum
	.section	.rodata
	.align 4
.LC70:
	.string	"ISO C++ forbids using pointer of type `void *' in subtraction"
	.align 4
.LC71:
	.string	"ISO C++ forbids using pointer to a function in subtraction"
	.align 4
.LC72:
	.string	"ISO C++ forbids using pointer to a method in subtraction"
	.align 4
.LC73:
	.string	"ISO C++ forbids using pointer to a member in subtraction"
	.align 4
.LC74:
	.string	"invalid use of a pointer to an incomplete type in pointer arithmetic"
	.text
	.type	pointer_diff, @function
pointer_diff:
.LFB61:
	.loc 1 3736 0
	pushl	%ebp
.LCFI193:
	movl	%esp, %ebp
.LCFI194:
	pushl	%esi
.LCFI195:
	pushl	%ebx
.LCFI196:
	subl	$48, %esp
.LCFI197:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	16(%ebp), %edx
	.loc 1 3738 0
	movl	global_trees@GOT(%ebx), %eax
	movl	144(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 3739 0
	movl	4(%edx), %eax
	movl	%eax, -12(%ebp)
	.loc 1 3741 0
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	complete_type_or_diagnostic@PLT
	testl	%eax, %eax
	jne	.L1774
	.loc 1 3742 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -36(%ebp)
	jmp	.L1776
.L1774:
	.loc 1 3744 0
	movl	pedantic@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L1777
	movl	warn_pointer_arith@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1779
.L1777:
	.loc 1 3746 0
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$6, %al
	jne	.L1780
	.loc 1 3747 0
	leal	.LC70@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	pedwarn@PLT
.L1780:
	.loc 1 3748 0
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$24, %al
	jne	.L1782
	.loc 1 3749 0
	leal	.LC71@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	pedwarn@PLT
.L1782:
	.loc 1 3750 0
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$17, %al
	jne	.L1784
	.loc 1 3751 0
	leal	.LC72@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	pedwarn@PLT
.L1784:
	.loc 1 3752 0
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$15, %al
	jne	.L1779
	.loc 1 3753 0
	leal	.LC73@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	pedwarn@PLT
.L1779:
	.loc 1 3759 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	cp_convert@PLT
	movl	%eax, %esi
	movl	8(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	cp_convert@PLT
	movl	$1, 12(%esp)
	movl	%esi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$61, (%esp)
	call	build_binary_op@PLT
	movl	%eax, 8(%ebp)
	.loc 1 3764 0
	movl	12(%ebp), %ecx
	movl	4(%ecx), %eax
	movl	4(%eax), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	jne	.L1787
	.loc 1 3765 0
	leal	.LC74@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L1787:
	.loc 1 3767 0
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$6, %al
	je	.L1789
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$24, %al
	je	.L1789
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$17, %al
	je	.L1789
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$15, %al
	jne	.L1793
.L1789:
	movl	global_trees@GOT(%ebx), %eax
	movl	48(%eax), %eax
	movl	%eax, -32(%ebp)
	jmp	.L1794
.L1793:
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	size_in_bytes@PLT
	movl	%eax, -32(%ebp)
.L1794:
	movl	-32(%ebp), %eax
	movl	%eax, 12(%ebp)
	.loc 1 3776 0
	movl	12(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	cp_convert@PLT
	movl	%eax, 12(%esp)
	movl	8(%ebp), %ecx
	movl	%ecx, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$72, (%esp)
	call	build@PLT
	movl	%eax, %esi
	.loc 1 3778 0
	movl	%esi, (%esp)
	call	fold@PLT
	movl	%eax, -28(%ebp)
	.loc 1 3779 0
	cmpl	%esi, -28(%ebp)
	jne	.L1795
	.loc 1 3780 0
	movl	8(%ebp), %edx
	movzbl	9(%edx), %eax
	shrb	%al
	andl	$1, %eax
	movl	%eax, %edx
	movl	12(%ebp), %ecx
	movzbl	9(%ecx), %eax
	shrb	%al
	andl	$1, %eax
	andl	%edx, %eax
	andl	$1, %eax
	andl	$1, %eax
	leal	(%eax,%eax), %edx
	movl	-28(%ebp), %ecx
	movzbl	9(%ecx), %eax
	andl	$-3, %eax
	orl	%edx, %eax
	movl	-28(%ebp), %edx
	movb	%al, 9(%edx)
.L1795:
	.loc 1 3781 0
	movl	-28(%ebp), %ecx
	movl	%ecx, -36(%ebp)
.L1776:
	movl	-36(%ebp), %eax
	.loc 1 3782 0
	addl	$48, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE61:
	.size	pointer_diff, .-pointer_diff
	.section	.rodata
	.align 4
.LC75:
	.string	"invalid use of '%E' to form a pointer-to-member-function.  Use a qualified-id."
	.align 4
.LC76:
	.string	"parenthesis around '%E' cannot be used to form a pointer-to-member-function"
.LC77:
	.string	"taking address of temporary"
	.text
.globl build_x_unary_op
	.type	build_x_unary_op, @function
build_x_unary_op:
.LFB62:
	.loc 1 3792 0
	pushl	%ebp
.LCFI198:
	movl	%esp, %ebp
.LCFI199:
	pushl	%ebx
.LCFI200:
	subl	$52, %esp
.LCFI201:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3794 0
	movl	$0, -12(%ebp)
	.loc 1 3796 0
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	64(%eax), %edx
	movl	60(%eax), %eax
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L1799
	.loc 1 3797 0
	movl	$0, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_min_nt@PLT
	movl	%eax, -24(%ebp)
	jmp	.L1801
.L1799:
	.loc 1 3801 0
	cmpl	$123, 8(%ebp)
	jne	.L1802
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-53, %al
	je	.L1802
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	je	.L1805
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	jne	.L1807
.L1805:
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L1809
.L1807:
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-77, %al
	jne	.L1802
	jmp	.L1809
.L1802:
.LBB57:
	.loc 1 3811 0
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$3, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_new_op@PLT
	movl	%eax, -8(%ebp)
	.loc 1 3813 0
	cmpl	$0, -8(%ebp)
	jne	.L1810
	cmpl	$123, 8(%ebp)
	je	.L1809
.L1810:
	.loc 1 3814 0
	movl	-8(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L1801
.L1809:
.LBE57:
	.loc 1 3816 0
	cmpl	$123, 8(%ebp)
	jne	.L1812
	.loc 1 3820 0
	movl	flag_ms_extensions@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L1814
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$17, %al
	jne	.L1814
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-77, %al
	jne	.L1817
	movl	12(%ebp), %eax
	movzbl	11(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L1814
.L1817:
	.loc 1 3823 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-77, %al
	je	.L1819
	.loc 1 3825 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC75@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 3827 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L1801
.L1819:
	.loc 1 3831 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC76@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 3833 0
	movl	12(%ebp), %edx
	movzbl	11(%edx), %eax
	orl	$1, %eax
	movb	%al, 11(%edx)
.L1814:
	.loc 1 3837 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-77, %al
	jne	.L1821
	.loc 1 3839 0
	movl	12(%ebp), %eax
	movzbl	11(%eax), %eax
	andl	$1, %eax
	movzbl	%al, %eax
	movl	%eax, -12(%ebp)
	.loc 1 3841 0
	cmpl	$0, -12(%ebp)
	jne	.L1812
	movl	flag_ms_extensions@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L1812
	movl	12(%ebp), %eax
	movl	24(%eax), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$17, %al
	jne	.L1812
	.loc 1 3846 0
	movl	12(%ebp), %eax
	movl	24(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	ovl_cons@PLT
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	20(%eax), %ecx
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$179, (%esp)
	call	build@PLT
	movl	%eax, 12(%ebp)
	.loc 1 3849 0
	movl	-12(%ebp), %eax
	andl	$1, %eax
	movl	12(%ebp), %edx
	movl	%eax, %ecx
	andl	$1, %ecx
	movzbl	11(%edx), %eax
	andl	$-2, %eax
	orl	%ecx, %eax
	movb	%al, 11(%edx)
	jmp	.L1812
.L1821:
	.loc 1 3853 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$51, %al
	jne	.L1812
	.loc 1 3854 0
	leal	.LC77@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
.L1812:
	.loc 1 3856 0
	movl	$0, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_unary_op@PLT
	movl	%eax, -16(%ebp)
	.loc 1 3857 0
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$123, %al
	jne	.L1828
	.loc 1 3858 0
	movl	-12(%ebp), %eax
	andl	$1, %eax
	movl	-16(%ebp), %edx
	movl	%eax, %ecx
	andl	$1, %ecx
	movzbl	11(%edx), %eax
	andl	$-2, %eax
	orl	%ecx, %eax
	movb	%al, 11(%edx)
.L1828:
	.loc 1 3860 0
	movl	-16(%ebp), %eax
	movl	%eax, -24(%ebp)
.L1801:
	movl	-24(%ebp), %eax
	.loc 1 3861 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE62:
	.size	build_x_unary_op, .-build_x_unary_op
.globl cp_truthvalue_conversion
	.type	cp_truthvalue_conversion, @function
cp_truthvalue_conversion:
.LFB63:
	.loc 1 3870 0
	pushl	%ebp
.LCFI202:
	movl	%esp, %ebp
.LCFI203:
	pushl	%ebx
.LCFI204:
	subl	$36, %esp
.LCFI205:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3871 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 3872 0
	movl	-8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L1832
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$15, %al
	jne	.L1832
	.loc 1 3873 0
	movl	global_trees@GOT(%ebx), %eax
	movl	44(%eax), %eax
	movl	$1, 12(%esp)
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$104, (%esp)
	call	build_binary_op@PLT
	movl	%eax, -24(%ebp)
	jmp	.L1835
.L1832:
	.loc 1 3875 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	c_common_truthvalue_conversion@PLT
	movl	%eax, -24(%ebp)
.L1835:
	movl	-24(%ebp), %eax
	.loc 1 3876 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE63:
	.size	cp_truthvalue_conversion, .-cp_truthvalue_conversion
.globl condition_conversion
	.type	condition_conversion, @function
condition_conversion:
.LFB64:
	.loc 1 3883 0
	pushl	%ebp
.LCFI206:
	movl	%esp, %ebp
.LCFI207:
	pushl	%ebx
.LCFI208:
	subl	$36, %esp
.LCFI209:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3885 0
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	64(%eax), %edx
	movl	60(%eax), %eax
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L1838
	.loc 1 3886 0
	movl	8(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L1840
.L1838:
	.loc 1 3887 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-77, %al
	jne	.L1841
	.loc 1 3888 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	resolve_offset_ref@PLT
	movl	%eax, 8(%ebp)
.L1841:
	.loc 1 3889 0
	movl	c_global_trees@GOT(%ebx), %eax
	movl	60(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	perform_implicit_conversion@PLT
	movl	%eax, -8(%ebp)
	.loc 1 3890 0
	movl	c_global_trees@GOT(%ebx), %eax
	movl	60(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$57, (%esp)
	call	build1@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -8(%ebp)
	.loc 1 3891 0
	movl	-8(%ebp), %eax
	movl	%eax, -24(%ebp)
.L1840:
	movl	-24(%ebp), %eax
	.loc 1 3892 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE64:
	.size	condition_conversion, .-condition_conversion
.globl build_address
	.type	build_address, @function
build_address:
.LFB65:
	.loc 1 3900 0
	pushl	%ebp
.LCFI210:
	movl	%esp, %ebp
.LCFI211:
	pushl	%ebx
.LCFI212:
	subl	$36, %esp
.LCFI213:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3903 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	8(%ebp), %eax
	je	.L1845
	cmpl	$0, 8(%ebp)
	je	.L1847
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	je	.L1845
.L1847:
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cxx_mark_addressable@PLT
	xorl	$1, %eax
	testb	%al, %al
	je	.L1849
.L1845:
	.loc 1 3904 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L1850
.L1849:
	.loc 1 3906 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	build_pointer_type@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$123, (%esp)
	call	build1@PLT
	movl	%eax, -8(%ebp)
	.loc 1 3909 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	staticp@PLT
	testl	%eax, %eax
	je	.L1851
	.loc 1 3910 0
	movl	-8(%ebp), %eax
	movzbl	9(%eax), %edx
	orl	$2, %edx
	movb	%dl, 9(%eax)
.L1851:
	.loc 1 3912 0
	movl	-8(%ebp), %eax
	movl	%eax, -24(%ebp)
.L1850:
	movl	-24(%ebp), %eax
	.loc 1 3913 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE65:
	.size	build_address, .-build_address
.globl build_nop
	.type	build_nop, @function
build_nop:
.LFB66:
	.loc 1 3919 0
	pushl	%ebp
.LCFI214:
	movl	%esp, %ebp
.LCFI215:
	pushl	%ebx
.LCFI216:
	subl	$36, %esp
.LCFI217:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3922 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	8(%ebp), %eax
	je	.L1855
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	12(%ebp), %eax
	je	.L1855
	cmpl	$0, 12(%ebp)
	je	.L1858
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jne	.L1858
.L1855:
	.loc 1 3923 0
	movl	12(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L1860
.L1858:
	.loc 1 3925 0
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$117, (%esp)
	call	build1@PLT
	movl	%eax, -8(%ebp)
	.loc 1 3926 0
	movl	12(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L1861
	.loc 1 3927 0
	movl	-8(%ebp), %eax
	movzbl	9(%eax), %edx
	orl	$2, %edx
	movb	%dl, 9(%eax)
.L1861:
	.loc 1 3929 0
	movl	-8(%ebp), %eax
	movl	%eax, -24(%ebp)
.L1860:
	movl	-24(%ebp), %eax
	.loc 1 3930 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE66:
	.size	build_nop, .-build_nop
	.section	.rodata
	.type	__FUNCTION__.20852, @object
	.size	__FUNCTION__.20852, 15
__FUNCTION__.20852:
	.string	"build_unary_op"
	.align 4
.LC78:
	.string	"wrong type argument to unary plus"
	.align 4
.LC79:
	.string	"wrong type argument to unary minus"
	.align 4
.LC80:
	.string	"wrong type argument to bit-complement"
.LC81:
	.string	"wrong type argument to abs"
	.align 4
.LC82:
	.string	"wrong type argument to conjugation"
.LC83:
	.string	"in argument to unary !"
	.align 4
.LC84:
	.string	"no pre-increment operator for type"
	.align 4
.LC85:
	.string	"no post-increment operator for type"
	.align 4
.LC86:
	.string	"no pre-decrement operator for type"
	.align 4
.LC87:
	.string	"no post-decrement operator for type"
.LC88:
	.string	"increment"
.LC89:
	.string	"decrement"
.LC90:
	.string	"ISO C++ forbids %sing an enum"
	.align 4
.LC91:
	.string	"cannot %s a pointer to incomplete type `%T'"
	.align 4
.LC92:
	.string	"ISO C++ forbids %sing a pointer of type `%T'"
	.align 4
.LC93:
	.string	"cast to non-reference type used as lvalue"
	.align 4
.LC94:
	.string	"invalid use of `--' on bool variable `%D'"
	.align 4
.LC95:
	.string	"ISO C++ forbids taking address of function `::main'"
	.align 4
.LC96:
	.string	"ISO C++ forbids taking the address of an unqualified non-static member function to form a pointer to member function.  Say `&%T::%D'"
	.align 4
.LC97:
	.string	"ISO C++ forbids taking the address of a bound member function to form a pointer to member function.  Say `&%T::%D'"
	.align 4
.LC98:
	.string	"ISO C++ forbids taking the address of a cast to a non-lvalue expression"
.LC99:
	.string	"unary `&'"
	.align 4
.LC100:
	.string	"attempt to take address of bit-field structure member `%D'"
.LC101:
	.string	"%s"
	.text
.globl build_unary_op
	.type	build_unary_op, @function
build_unary_op:
.LFB67:
	.loc 1 3946 0
	pushl	%ebp
.LCFI218:
	movl	%esp, %ebp
.LCFI219:
	pushl	%ebx
.LCFI220:
	subl	$180, %esp
.LCFI221:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3948 0
	movl	12(%ebp), %eax
	movl	%eax, -96(%ebp)
	.loc 1 3949 0
	movl	$0, -92(%ebp)
	.loc 1 3950 0
	movl	$0, -72(%ebp)
	.loc 1 3953 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-96(%ebp), %eax
	jne	.L1865
	.loc 1 3954 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -156(%ebp)
	jmp	.L1867
.L1865:
	.loc 1 3956 0
	movl	8(%ebp), %edx
	subl	$79, %edx
	movl	%edx, -160(%ebp)
	cmpl	$55, -160(%ebp)
	ja	.L1868
	movl	-160(%ebp), %eax
	sall	$2, %eax
	movl	.L1880@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L1880:
	.long	.L1869@GOTOFF
	.long	.L1868@GOTOFF
	.long	.L1868@GOTOFF
	.long	.L1870@GOTOFF
	.long	.L1868@GOTOFF
	.long	.L1868@GOTOFF
	.long	.L1868@GOTOFF
	.long	.L1868@GOTOFF
	.long	.L1868@GOTOFF
	.long	.L1868@GOTOFF
	.long	.L1868@GOTOFF
	.long	.L1868@GOTOFF
	.long	.L1868@GOTOFF
	.long	.L1871@GOTOFF
	.long	.L1868@GOTOFF
	.long	.L1868@GOTOFF
	.long	.L1868@GOTOFF
	.long	.L1868@GOTOFF
	.long	.L1868@GOTOFF
	.long	.L1872@GOTOFF
	.long	.L1868@GOTOFF
	.long	.L1868@GOTOFF
	.long	.L1868@GOTOFF
	.long	.L1868@GOTOFF
	.long	.L1868@GOTOFF
	.long	.L1868@GOTOFF
	.long	.L1868@GOTOFF
	.long	.L1868@GOTOFF
	.long	.L1868@GOTOFF
	.long	.L1868@GOTOFF
	.long	.L1868@GOTOFF
	.long	.L1868@GOTOFF
	.long	.L1868@GOTOFF
	.long	.L1868@GOTOFF
	.long	.L1868@GOTOFF
	.long	.L1868@GOTOFF
	.long	.L1868@GOTOFF
	.long	.L1873@GOTOFF
	.long	.L1868@GOTOFF
	.long	.L1868@GOTOFF
	.long	.L1868@GOTOFF
	.long	.L1868@GOTOFF
	.long	.L1868@GOTOFF
	.long	.L1868@GOTOFF
	.long	.L1875@GOTOFF
	.long	.L1868@GOTOFF
	.long	.L1868@GOTOFF
	.long	.L1868@GOTOFF
	.long	.L1868@GOTOFF
	.long	.L1876@GOTOFF
	.long	.L1877@GOTOFF
	.long	.L1878@GOTOFF
	.long	.L1879@GOTOFF
	.long	.L1879@GOTOFF
	.long	.L1879@GOTOFF
	.long	.L1879@GOTOFF
	.text
.L1873:
	.loc 1 3962 0
	movl	$1, 8(%esp)
	movl	-96(%ebp), %ecx
	movl	%ecx, 4(%esp)
	movl	$15, (%esp)
	call	build_expr_type_conversion@PLT
	movl	%eax, -96(%ebp)
	cmpl	$0, -96(%ebp)
	jne	.L1881
	.loc 1 3964 0
	leal	.LC78@GOTOFF(%ebx), %eax
	movl	%eax, -72(%ebp)
	jmp	.L1868
.L1881:
	.loc 1 3967 0
	cmpl	$0, 16(%ebp)
	jne	.L1884
	.loc 1 3968 0
	movl	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	default_conversion@PLT
	movl	%eax, -96(%ebp)
.L1884:
	.loc 1 3969 0
	movl	-96(%ebp), %edx
	movl	4(%edx), %eax
	movl	-96(%ebp), %ecx
	movl	%ecx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$118, (%esp)
	call	build1@PLT
	movl	%eax, -96(%ebp)
	.loc 1 3970 0
	movl	-96(%ebp), %edx
	movl	20(%edx), %eax
	movzbl	9(%eax), %eax
	shrb	%al
	andl	$1, %eax
	andl	$1, %eax
	leal	(%eax,%eax), %edx
	movl	-96(%ebp), %ecx
	movzbl	9(%ecx), %eax
	andl	$-3, %eax
	orl	%edx, %eax
	movl	-96(%ebp), %edx
	movb	%al, 9(%edx)
	.loc 1 3972 0
	jmp	.L1868
.L1869:
	.loc 1 3975 0
	movl	$1, 8(%esp)
	movl	-96(%ebp), %ecx
	movl	%ecx, 4(%esp)
	movl	$7, (%esp)
	call	build_expr_type_conversion@PLT
	movl	%eax, -96(%ebp)
	cmpl	$0, -96(%ebp)
	jne	.L1886
	.loc 1 3976 0
	leal	.LC79@GOTOFF(%ebx), %eax
	movl	%eax, -72(%ebp)
	jmp	.L1868
.L1886:
	.loc 1 3977 0
	cmpl	$0, 16(%ebp)
	jne	.L1868
	.loc 1 3978 0
	movl	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	default_conversion@PLT
	movl	%eax, -96(%ebp)
	.loc 1 3979 0
	jmp	.L1868
.L1871:
	.loc 1 3982 0
	movl	-96(%ebp), %edx
	movl	4(%edx), %eax
	movzbl	8(%eax), %eax
	cmpb	$9, %al
	jne	.L1890
	.loc 1 3984 0
	movl	$128, 8(%ebp)
	.loc 1 3985 0
	cmpl	$0, 16(%ebp)
	jne	.L1868
	.loc 1 3986 0
	movl	-96(%ebp), %ecx
	movl	%ecx, (%esp)
	call	default_conversion@PLT
	movl	%eax, -96(%ebp)
	jmp	.L1868
.L1890:
	.loc 1 3988 0
	movl	$1, 8(%esp)
	movl	-96(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$5, (%esp)
	call	build_expr_type_conversion@PLT
	movl	%eax, -96(%ebp)
	cmpl	$0, -96(%ebp)
	jne	.L1895
	.loc 1 3990 0
	leal	.LC80@GOTOFF(%ebx), %eax
	movl	%eax, -72(%ebp)
	jmp	.L1868
.L1895:
	.loc 1 3991 0
	cmpl	$0, 16(%ebp)
	jne	.L1868
	.loc 1 3992 0
	movl	-96(%ebp), %edx
	movl	%edx, (%esp)
	call	default_conversion@PLT
	movl	%eax, -96(%ebp)
	.loc 1 3993 0
	jmp	.L1868
.L1870:
	.loc 1 3996 0
	movl	$1, 8(%esp)
	movl	-96(%ebp), %ecx
	movl	%ecx, 4(%esp)
	movl	$7, (%esp)
	call	build_expr_type_conversion@PLT
	movl	%eax, -96(%ebp)
	cmpl	$0, -96(%ebp)
	jne	.L1898
	.loc 1 3997 0
	leal	.LC81@GOTOFF(%ebx), %eax
	movl	%eax, -72(%ebp)
	jmp	.L1868
.L1898:
	.loc 1 3998 0
	cmpl	$0, 16(%ebp)
	jne	.L1868
	.loc 1 3999 0
	movl	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	default_conversion@PLT
	movl	%eax, -96(%ebp)
	.loc 1 4000 0
	jmp	.L1868
.L1876:
	.loc 1 4004 0
	movl	$1, 8(%esp)
	movl	-96(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	$7, (%esp)
	call	build_expr_type_conversion@PLT
	movl	%eax, -96(%ebp)
	cmpl	$0, -96(%ebp)
	jne	.L1902
	.loc 1 4005 0
	leal	.LC82@GOTOFF(%ebx), %eax
	movl	%eax, -72(%ebp)
	jmp	.L1868
.L1902:
	.loc 1 4006 0
	cmpl	$0, 16(%ebp)
	jne	.L1868
	.loc 1 4007 0
	movl	-96(%ebp), %ecx
	movl	%ecx, (%esp)
	call	default_conversion@PLT
	movl	%eax, -96(%ebp)
	.loc 1 4008 0
	jmp	.L1868
.L1872:
	.loc 1 4011 0
	movl	c_global_trees@GOT(%ebx), %eax
	movl	60(%eax), %eax
	movl	-96(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	cp_convert@PLT
	movl	%eax, -96(%ebp)
	.loc 1 4012 0
	movl	-96(%ebp), %ecx
	movl	%ecx, (%esp)
	call	invert_truthvalue@PLT
	movl	%eax, -68(%ebp)
	.loc 1 4013 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-96(%ebp), %eax
	je	.L1906
	.loc 1 4014 0
	movl	-68(%ebp), %eax
	movl	%eax, -156(%ebp)
	jmp	.L1867
.L1906:
	.loc 1 4015 0
	leal	.LC83@GOTOFF(%ebx), %eax
	movl	%eax, -72(%ebp)
	.loc 1 4016 0
	jmp	.L1868
.L1877:
	.loc 1 4022 0
	movl	-96(%ebp), %edx
	movzbl	8(%edx), %eax
	cmpb	$28, %al
	jne	.L1908
	.loc 1 4023 0
	movl	-96(%ebp), %ecx
	movl	20(%ecx), %ecx
	movl	%ecx, -156(%ebp)
	jmp	.L1867
.L1908:
	.loc 1 4024 0
	movl	-96(%ebp), %edx
	movl	4(%edx), %eax
	movzbl	8(%eax), %eax
	cmpb	$9, %al
	jne	.L1910
	.loc 1 4025 0
	movl	-96(%ebp), %ecx
	movl	4(%ecx), %eax
	movl	4(%eax), %eax
	movl	-96(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$129, (%esp)
	call	build1@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -156(%ebp)
	jmp	.L1867
.L1910:
	.loc 1 4027 0
	movl	-96(%ebp), %ecx
	movl	%ecx, -156(%ebp)
	jmp	.L1867
.L1878:
	.loc 1 4030 0
	movl	-96(%ebp), %edx
	movzbl	8(%edx), %eax
	cmpb	$28, %al
	jne	.L1912
	.loc 1 4031 0
	movl	-96(%ebp), %ecx
	movl	24(%ecx), %ecx
	movl	%ecx, -156(%ebp)
	jmp	.L1867
.L1912:
	.loc 1 4032 0
	movl	-96(%ebp), %edx
	movl	4(%edx), %eax
	movzbl	8(%eax), %eax
	cmpb	$9, %al
	jne	.L1914
	.loc 1 4033 0
	movl	-96(%ebp), %ecx
	movl	4(%ecx), %eax
	movl	4(%eax), %eax
	movl	-96(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$130, (%esp)
	call	build1@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -156(%ebp)
	jmp	.L1867
.L1914:
	.loc 1 4035 0
	movl	global_trees@GOT(%ebx), %eax
	movl	44(%eax), %eax
	movl	-96(%ebp), %ecx
	movl	4(%ecx), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	cp_convert@PLT
	movl	%eax, -156(%ebp)
	jmp	.L1867
.L1879:
	.loc 1 4044 0
	movl	-96(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	unary_complex_lvalue@PLT
	movl	%eax, -68(%ebp)
	.loc 1 4045 0
	cmpl	$0, -68(%ebp)
	je	.L1916
	.loc 1 4046 0
	movl	-68(%ebp), %edx
	movl	%edx, -156(%ebp)
	jmp	.L1867
.L1916:
	.loc 1 4050 0
	movl	-96(%ebp), %ecx
	movl	4(%ecx), %eax
	movzbl	8(%eax), %eax
	cmpb	$9, %al
	jne	.L1918
.LBB58:
	.loc 1 4054 0
	movl	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	stabilize_reference@PLT
	movl	%eax, -96(%ebp)
	.loc 1 4055 0
	movl	$1, 8(%esp)
	movl	-96(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	$129, (%esp)
	call	build_unary_op@PLT
	movl	%eax, -64(%ebp)
	.loc 1 4056 0
	movl	$1, 8(%esp)
	movl	-96(%ebp), %ecx
	movl	%ecx, 4(%esp)
	movl	$130, (%esp)
	call	build_unary_op@PLT
	movl	%eax, -60(%ebp)
	.loc 1 4057 0
	movl	$1, 8(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_unary_op@PLT
	movl	%eax, %edx
	movl	-96(%ebp), %eax
	movl	4(%eax), %ecx
	movl	-60(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	$127, (%esp)
	call	build@PLT
	movl	%eax, -156(%ebp)
	jmp	.L1867
.L1918:
.LBE58:
	.loc 1 4063 0
	movl	$1, 8(%esp)
	movl	-96(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	$11, (%esp)
	call	build_expr_type_conversion@PLT
	movl	%eax, -96(%ebp)
	cmpl	$0, -96(%ebp)
	jne	.L1920
	.loc 1 4066 0
	cmpl	$132, 8(%ebp)
	jne	.L1922
	.loc 1 4067 0
	leal	.LC84@GOTOFF(%ebx), %eax
	movl	%eax, -72(%ebp)
	jmp	.L1868
.L1922:
	.loc 1 4068 0
	cmpl	$134, 8(%ebp)
	jne	.L1925
	.loc 1 4069 0
	leal	.LC85@GOTOFF(%ebx), %eax
	movl	%eax, -72(%ebp)
	jmp	.L1868
.L1925:
	.loc 1 4070 0
	cmpl	$131, 8(%ebp)
	jne	.L1927
	.loc 1 4071 0
	leal	.LC86@GOTOFF(%ebx), %eax
	movl	%eax, -72(%ebp)
	jmp	.L1868
.L1927:
	.loc 1 4073 0
	leal	.LC87@GOTOFF(%ebx), %eax
	movl	%eax, -72(%ebp)
	.loc 1 4074 0
	jmp	.L1868
.L1920:
	.loc 1 4079 0
	movl	-96(%ebp), %ecx
	movl	4(%ecx), %eax
	movl	%eax, (%esp)
	call	cp_type_quals@PLT
	andl	$1, %eax
	testb	%al, %al
	jne	.L1929
	movl	-96(%ebp), %edx
	movzbl	9(%edx), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L1931
.L1929:
	.loc 1 4081 0
	cmpl	$132, 8(%ebp)
	je	.L1932
	cmpl	$134, 8(%ebp)
	jne	.L1934
.L1932:
	leal	.LC88@GOTOFF(%ebx), %ecx
	movl	%ecx, -152(%ebp)
	jmp	.L1935
.L1934:
	leal	.LC89@GOTOFF(%ebx), %eax
	movl	%eax, -152(%ebp)
.L1935:
	movl	$0, 8(%esp)
	movl	-152(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	-96(%ebp), %ecx
	movl	%ecx, (%esp)
	call	readonly_error@PLT
.L1931:
.LBB59:
	.loc 1 4088 0
	movl	-96(%ebp), %edx
	movl	4(%edx), %eax
	movl	%eax, -56(%ebp)
	.loc 1 4090 0
	movl	$0, 4(%esp)
	movl	-96(%ebp), %ecx
	movl	%ecx, (%esp)
	call	get_unwidened@PLT
	movl	%eax, -96(%ebp)
	.loc 1 4091 0
	movl	-96(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -92(%ebp)
	.loc 1 4094 0
	movl	-92(%ebp), %edx
	movzbl	8(%edx), %eax
	cmpb	$11, %al
	jne	.L1936
	.loc 1 4095 0
	cmpl	$132, 8(%ebp)
	je	.L1938
	cmpl	$134, 8(%ebp)
	jne	.L1940
.L1938:
	leal	.LC88@GOTOFF(%ebx), %ecx
	movl	%ecx, -148(%ebp)
	jmp	.L1941
.L1940:
	leal	.LC89@GOTOFF(%ebx), %eax
	movl	%eax, -148(%ebp)
.L1941:
	movl	-148(%ebp), %edx
	movl	%edx, 4(%esp)
	leal	.LC90@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	pedwarn@PLT
.L1936:
	.loc 1 4101 0
	movl	-92(%ebp), %ecx
	movzbl	8(%ecx), %eax
	cmpb	$14, %al
	jne	.L1942
.LBB60:
	.loc 1 4103 0
	movl	-92(%ebp), %edx
	movl	4(%edx), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -52(%ebp)
	.loc 1 4104 0
	movl	-92(%ebp), %ecx
	movl	4(%ecx), %eax
	movl	%eax, (%esp)
	call	complete_type@PLT
	movl	%eax, -48(%ebp)
	.loc 1 4106 0
	movl	-48(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	jne	.L1944
	movl	-48(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$6, %al
	je	.L1944
	.loc 1 4107 0
	movl	-92(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -144(%ebp)
	cmpl	$132, 8(%ebp)
	je	.L1947
	cmpl	$134, 8(%ebp)
	jne	.L1949
.L1947:
	leal	.LC88@GOTOFF(%ebx), %edx
	movl	%edx, -140(%ebp)
	jmp	.L1950
.L1949:
	leal	.LC89@GOTOFF(%ebx), %ecx
	movl	%ecx, -140(%ebp)
.L1950:
	movl	-144(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-140(%ebp), %edx
	movl	%edx, 4(%esp)
	leal	.LC91@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 4106 0
	jmp	.L1951
.L1944:
	.loc 1 4111 0
	movl	pedantic@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L1952
	movl	warn_pointer_arith@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1951
.L1952:
	cmpl	$24, -52(%ebp)
	je	.L1954
	cmpl	$17, -52(%ebp)
	je	.L1954
	cmpl	$6, -52(%ebp)
	je	.L1954
	cmpl	$15, -52(%ebp)
	jne	.L1951
.L1954:
	.loc 1 4114 0
	cmpl	$132, 8(%ebp)
	je	.L1958
	cmpl	$134, 8(%ebp)
	jne	.L1960
.L1958:
	leal	.LC88@GOTOFF(%ebx), %ecx
	movl	%ecx, -136(%ebp)
	jmp	.L1961
.L1960:
	leal	.LC89@GOTOFF(%ebx), %eax
	movl	%eax, -136(%ebp)
.L1961:
	movl	-92(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	-136(%ebp), %ecx
	movl	%ecx, 4(%esp)
	leal	.LC92@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	pedwarn@PLT
.L1951:
	.loc 1 4118 0
	movl	-92(%ebp), %edx
	movl	4(%edx), %eax
	movl	$0, 8(%esp)
	movl	$153, 4(%esp)
	movl	%eax, (%esp)
	call	cxx_sizeof_or_alignof_type@PLT
	movl	%eax, -88(%ebp)
	jmp	.L1962
.L1942:
.LBE60:
	.loc 1 4121 0
	movl	global_trees@GOT(%ebx), %eax
	movl	48(%eax), %eax
	movl	%eax, -88(%ebp)
.L1962:
	.loc 1 4123 0
	movl	-88(%ebp), %ecx
	movl	%ecx, 4(%esp)
	movl	-92(%ebp), %eax
	movl	%eax, (%esp)
	call	cp_convert@PLT
	movl	%eax, -88(%ebp)
	.loc 1 4127 0
	movl	-96(%ebp), %edx
	movzbl	8(%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -132(%ebp)
	cmpl	$73, -132(%ebp)
	jb	.L1963
	cmpl	$77, -132(%ebp)
	jbe	.L1964
	movl	-132(%ebp), %eax
	subl	$116, %eax
	cmpl	$1, %eax
	ja	.L1963
.L1964:
.LBB61:
	.loc 1 4138 0
	movl	-96(%ebp), %ecx
	movl	%ecx, (%esp)
	call	lvalue_p@PLT
	testl	%eax, %eax
	jne	.L1965
	movl	pedantic@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1965
	.loc 1 4139 0
	leal	.LC93@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	pedwarn@PLT
.L1965:
	.loc 1 4140 0
	movl	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	stabilize_reference@PLT
	movl	%eax, -96(%ebp)
	.loc 1 4141 0
	cmpl	$132, 8(%ebp)
	je	.L1968
	cmpl	$131, 8(%ebp)
	jne	.L1970
.L1968:
	.loc 1 4142 0
	movl	-96(%ebp), %edx
	movl	%edx, -36(%ebp)
	.loc 1 4141 0
	jmp	.L1971
.L1970:
	.loc 1 4144 0
	movl	-96(%ebp), %ecx
	movl	%ecx, (%esp)
	call	save_expr@PLT
	movl	%eax, -36(%ebp)
.L1971:
	.loc 1 4145 0
	cmpl	$132, 8(%ebp)
	je	.L1972
	cmpl	$134, 8(%ebp)
	jne	.L1974
.L1972:
	movl	$60, -128(%ebp)
	jmp	.L1975
.L1974:
	movl	$61, -128(%ebp)
.L1975:
	movl	-88(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-92(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	-128(%ebp), %ecx
	movl	%ecx, (%esp)
	call	build@PLT
	movl	%eax, -44(%ebp)
	.loc 1 4150 0
	movl	-44(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$117, 4(%esp)
	movl	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	build_modify_expr@PLT
	movl	%eax, -40(%ebp)
	.loc 1 4151 0
	movl	-96(%ebp), %ecx
	movl	4(%ecx), %edx
	movl	-36(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$48, (%esp)
	call	build@PLT
	movl	%eax, -32(%ebp)
	.loc 1 4154 0
	movl	-32(%ebp), %edx
	movzbl	10(%edx), %eax
	orl	$4, %eax
	movb	%al, 10(%edx)
	.loc 1 4155 0
	movl	-32(%ebp), %eax
	movl	%eax, -156(%ebp)
	jmp	.L1867
.L1963:
.LBE61:
	.loc 1 4163 0
	cmpl	$132, 8(%ebp)
	je	.L1976
	cmpl	$134, 8(%ebp)
	jne	.L1978
.L1976:
	leal	.LC88@GOTOFF(%ebx), %edx
	movl	%edx, -124(%ebp)
	jmp	.L1979
.L1978:
	leal	.LC89@GOTOFF(%ebx), %ecx
	movl	%ecx, -124(%ebp)
.L1979:
	movl	-124(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-96(%ebp), %edx
	movl	%edx, (%esp)
	call	lvalue_or_else@PLT
	testl	%eax, %eax
	jne	.L1980
	.loc 1 4166 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -156(%ebp)
	jmp	.L1867
.L1980:
	.loc 1 4169 0
	movl	-96(%ebp), %ecx
	movl	4(%ecx), %eax
	movl	c_global_trees@GOT(%ebx), %edx
	movl	60(%edx), %edx
	cmpl	%edx, %eax
	jne	.L1982
	.loc 1 4171 0
	cmpl	$133, 8(%ebp)
	je	.L1984
	cmpl	$131, 8(%ebp)
	jne	.L1986
.L1984:
	.loc 1 4173 0
	movl	-96(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC94@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 4174 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -156(%ebp)
	jmp	.L1867
.L1986:
	.loc 1 4181 0
	movl	-96(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	boolean_increment@PLT
	movl	%eax, -68(%ebp)
	jmp	.L1987
.L1982:
	.loc 1 4185 0
	movl	-96(%ebp), %ecx
	movl	4(%ecx), %eax
	movl	-88(%ebp), %edx
	movl	%edx, 12(%esp)
	movl	-96(%ebp), %ecx
	movl	%ecx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	build@PLT
	movl	%eax, -68(%ebp)
.L1987:
	.loc 1 4187 0
	movl	-68(%ebp), %edx
	movzbl	9(%edx), %eax
	orl	$1, %eax
	movb	%al, 9(%edx)
	.loc 1 4188 0
	movl	-68(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	cp_convert@PLT
	movl	%eax, -156(%ebp)
	jmp	.L1867
.L1875:
.LBE59:
	.loc 1 4195 0
	movl	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	lvalue_type@PLT
	movl	%eax, -92(%ebp)
	.loc 1 4196 0
	movl	-92(%ebp), %edx
	movzbl	8(%edx), %eax
	cmpb	$16, %al
	jne	.L1988
	.loc 1 4198 0
	movl	-92(%ebp), %ecx
	movl	4(%ecx), %eax
	movl	%eax, (%esp)
	call	build_pointer_type@PLT
	movl	-96(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$116, (%esp)
	call	build1@PLT
	movl	%eax, -96(%ebp)
	.loc 1 4201 0
	movl	-96(%ebp), %ecx
	movl	20(%ecx), %eax
	movzbl	9(%eax), %eax
	shrb	%al
	andl	$1, %eax
	andl	$1, %eax
	leal	(%eax,%eax), %edx
	movl	-96(%ebp), %ecx
	movzbl	9(%ecx), %eax
	andl	$-3, %eax
	orl	%edx, %eax
	movl	-96(%ebp), %edx
	movb	%al, 9(%edx)
	.loc 1 4202 0
	movl	-96(%ebp), %ecx
	movl	%ecx, -156(%ebp)
	jmp	.L1867
.L1988:
	.loc 1 4204 0
	movl	pedantic@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1990
	movl	-96(%ebp), %edx
	movzbl	8(%edx), %eax
	cmpb	$31, %al
	jne	.L1990
	movl	-96(%ebp), %ecx
	movzbl	8(%ecx), %eax
	cmpb	$31, %al
	jne	.L1993
	movl	-96(%ebp), %edx
	movzbl	38(%edx), %eax
	andl	$16, %eax
	testb	%al, %al
	jne	.L1990
.L1993:
	movl	-96(%ebp), %ecx
	movl	136(%ecx), %eax
	testl	%eax, %eax
	je	.L1995
	movl	-96(%ebp), %edx
	movl	136(%edx), %eax
	movzbl	4(%eax), %eax
	testb	%al, %al
	sete	-117(%ebp)
	jmp	.L1997
.L1995:
	movl	-96(%ebp), %ecx
	movzbl	8(%ecx), %eax
	cmpb	$31, %al
	sete	-117(%ebp)
.L1997:
	cmpb	$0, -117(%ebp)
	je	.L1990
	movl	-96(%ebp), %edx
	movl	52(%edx), %eax
	testl	%eax, %eax
	je	.L1990
	movl	-96(%ebp), %ecx
	movl	52(%ecx), %eax
	movl	global_trees@GOT(%ebx), %edx
	movl	252(%edx), %edx
	cmpl	%edx, %eax
	jne	.L1990
	.loc 1 4206 0
	leal	.LC95@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	pedwarn@PLT
.L1990:
	.loc 1 4209 0
	movl	-96(%ebp), %edx
	movzbl	8(%edx), %eax
	cmpb	$42, %al
	jne	.L2001
	.loc 1 4213 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2003
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	288(%eax), %eax
	movl	28(%eax), %eax
	movl	%eax, -116(%ebp)
	jmp	.L2005
.L2003:
	movl	$0, -116(%ebp)
.L2005:
	movl	-96(%ebp), %ecx
	cmpl	%ecx, -116(%ebp)
	jne	.L2006
	.loc 1 4214 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2008
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	288(%eax), %eax
	movl	24(%eax), %eax
	movl	%eax, -112(%ebp)
	jmp	.L2010
.L2008:
	movl	$0, -112(%ebp)
.L2010:
	movl	-112(%ebp), %eax
	movl	%eax, -156(%ebp)
	jmp	.L1867
.L2006:
	.loc 1 4216 0
	movl	-96(%ebp), %edx
	movl	20(%edx), %edx
	movl	%edx, -96(%ebp)
	.loc 1 4217 0
	movl	-96(%ebp), %ecx
	movl	4(%ecx), %eax
	movzbl	8(%eax), %eax
	cmpb	$16, %al
	jne	.L2011
	.loc 1 4219 0
	movl	-96(%ebp), %edx
	movl	4(%edx), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	build_pointer_type@PLT
	movl	-96(%ebp), %ecx
	movl	%ecx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$116, (%esp)
	call	build1@PLT
	movl	%eax, -96(%ebp)
	.loc 1 4222 0
	movl	-96(%ebp), %edx
	movl	20(%edx), %eax
	movzbl	9(%eax), %eax
	shrb	%al
	andl	$1, %eax
	andl	$1, %eax
	leal	(%eax,%eax), %edx
	movl	-96(%ebp), %ecx
	movzbl	9(%ecx), %eax
	andl	$-3, %eax
	orl	%edx, %eax
	movl	-96(%ebp), %edx
	movb	%al, 9(%edx)
	jmp	.L2013
.L2011:
	.loc 1 4224 0
	movl	-96(%ebp), %ecx
	movl	%ecx, (%esp)
	call	lvalue_p@PLT
	testl	%eax, %eax
	je	.L2013
	.loc 1 4226 0
	movl	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	non_lvalue@PLT
	movl	%eax, -156(%ebp)
	jmp	.L1867
.L2013:
	.loc 1 4227 0
	movl	-96(%ebp), %edx
	movl	%edx, -156(%ebp)
	jmp	.L1867
.L2001:
	.loc 1 4231 0
	movl	-96(%ebp), %ecx
	movzbl	8(%ecx), %eax
	cmpb	$44, %al
	jne	.L2015
	.loc 1 4233 0
	movl	-96(%ebp), %edx
	movl	20(%edx), %eax
	movl	%eax, (%esp)
	call	cxx_mark_addressable@PLT
	xorl	$1, %eax
	testb	%al, %al
	je	.L2017
	.loc 1 4234 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -156(%ebp)
	jmp	.L1867
.L2017:
	.loc 1 4235 0
	movl	-96(%ebp), %ecx
	movl	24(%ecx), %eax
	movl	-96(%ebp), %ecx
	movl	20(%ecx), %edx
	movl	$1, 12(%esp)
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$60, (%esp)
	call	build_binary_op@PLT
	movl	%eax, -156(%ebp)
	jmp	.L1867
.L2015:
	.loc 1 4243 0
	movl	-96(%ebp), %edx
	movzbl	8(%edx), %eax
	cmpb	$1, %al
	jne	.L2019
	movl	-96(%ebp), %ecx
	movzbl	11(%ecx), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L2019
	.loc 1 4246 0
	leal	__FUNCTION__.20852@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$4246, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L2019:
	.loc 1 4252 0
	movl	-96(%ebp), %edx
	movzbl	8(%edx), %eax
	cmpb	$40, %al
	jne	.L2022
	movl	-96(%ebp), %ecx
	movl	%ecx, (%esp)
	call	type_unknown_p@PLT
	testl	%eax, %eax
	je	.L2022
	movl	-96(%ebp), %edx
	movl	24(%edx), %eax
	movl	%eax, (%esp)
	call	really_overloaded_fn@PLT
	testl	%eax, %eax
	jne	.L2022
.LBB62:
	.loc 1 4265 0
	movl	-96(%ebp), %ecx
	movl	20(%ecx), %eax
	movl	4(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 4266 0
	movl	-96(%ebp), %edx
	movl	24(%edx), %eax
	movl	%eax, (%esp)
	call	get_first_fn@PLT
	movl	52(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 4268 0
	movl	flag_ms_extensions@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L2026
	.loc 1 4270 0
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L2028
	movl	-96(%ebp), %ecx
	movl	20(%ecx), %ecx
	movl	%ecx, -108(%ebp)
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2030
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	288(%eax), %eax
	movl	28(%eax), %eax
	movl	%eax, -104(%ebp)
	jmp	.L2032
.L2030:
	movl	$0, -104(%ebp)
.L2032:
	movl	-104(%ebp), %eax
	cmpl	%eax, -108(%ebp)
	jne	.L2028
	.loc 1 4273 0
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC96@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	pedwarn@PLT
	.loc 1 4270 0
	jmp	.L2026
.L2028:
	.loc 1 4275 0
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC97@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	pedwarn@PLT
.L2026:
	.loc 1 4277 0
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	build_offset_ref@PLT
	movl	%eax, -96(%ebp)
.L2022:
.LBE62:
	.loc 1 4280 0
	movl	-96(%ebp), %edx
	movl	%edx, (%esp)
	call	type_unknown_p@PLT
	testl	%eax, %eax
	je	.L2034
	.loc 1 4281 0
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	116(%eax), %eax
	movl	-96(%ebp), %ecx
	movl	%ecx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$123, (%esp)
	call	build1@PLT
	movl	%eax, -156(%ebp)
	jmp	.L1867
.L2034:
	.loc 1 4285 0
	movl	-96(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	unary_complex_lvalue@PLT
	movl	%eax, -68(%ebp)
	.loc 1 4286 0
	cmpl	$0, -68(%ebp)
	je	.L2036
	.loc 1 4287 0
	movl	-68(%ebp), %edx
	movl	%edx, -156(%ebp)
	jmp	.L1867
.L2036:
	.loc 1 4289 0
	movl	-96(%ebp), %ecx
	movzbl	8(%ecx), %eax
	movzbl	%al, %eax
	movl	%eax, -100(%ebp)
	cmpl	$73, -100(%ebp)
	jb	.L2038
	cmpl	$77, -100(%ebp)
	jbe	.L2039
	movl	-100(%ebp), %eax
	subl	$116, %eax
	cmpl	$1, %eax
	ja	.L2038
.L2039:
	.loc 1 4298 0
	movl	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	lvalue_p@PLT
	testl	%eax, %eax
	jne	.L2038
	movl	pedantic@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2038
	.loc 1 4299 0
	leal	.LC98@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	pedwarn@PLT
.L2038:
	.loc 1 4308 0
	movl	-96(%ebp), %edx
	movzbl	8(%edx), %eax
	cmpb	$47, %al
	jne	.L2042
	movl	-96(%ebp), %ecx
	movzbl	11(%ecx), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L2042
	movl	-96(%ebp), %edx
	movzbl	9(%edx), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L2042
	jmp	.L2046
.L2042:
	.loc 1 4313 0
	movl	-92(%ebp), %ecx
	movzbl	8(%ecx), %eax
	cmpb	$24, %al
	je	.L2046
	movl	-92(%ebp), %edx
	movzbl	8(%edx), %eax
	cmpb	$17, %al
	je	.L2046
	leal	.LC99@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-96(%ebp), %ecx
	movl	%ecx, (%esp)
	call	non_cast_lvalue_or_else@PLT
	testl	%eax, %eax
	jne	.L2046
	.loc 1 4316 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -156(%ebp)
	jmp	.L1867
.L2046:
	.loc 1 4318 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-92(%ebp), %eax
	je	.L2050
	.loc 1 4319 0
	movl	-92(%ebp), %eax
	movl	%eax, (%esp)
	call	build_pointer_type@PLT
	movl	%eax, -92(%ebp)
.L2050:
.LBB63:
	.loc 1 4324 0
	movl	-96(%ebp), %edx
	movzbl	8(%edx), %eax
	cmpb	$40, %al
	je	.L2052
	.loc 1 4325 0
	movl	-96(%ebp), %ecx
	movl	%ecx, (%esp)
	call	build_address@PLT
	movl	%eax, -20(%ebp)
	jmp	.L2054
.L2052:
	.loc 1 4326 0
	movl	-96(%ebp), %edx
	movl	24(%edx), %eax
	movzbl	38(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L2055
	.loc 1 4328 0
	movl	-96(%ebp), %ecx
	movl	24(%ecx), %eax
	movl	%eax, 4(%esp)
	leal	.LC100@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 4330 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -156(%ebp)
	jmp	.L1867
.L2055:
.LBB64:
	.loc 1 4337 0
	movl	-96(%ebp), %edx
	movl	24(%edx), %eax
	movl	%eax, -16(%ebp)
	.loc 1 4338 0
	movl	-96(%ebp), %ecx
	movl	20(%ecx), %eax
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$123, (%esp)
	call	build_unary_op@PLT
	movl	%eax, -12(%ebp)
	.loc 1 4341 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	decl_type_context@PLT
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	$0, 12(%esp)
	movl	$2, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	lookup_base@PLT
	movl	%eax, -8(%ebp)
	.loc 1 4343 0
	movl	$1, 12(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$60, (%esp)
	call	build_base_path@PLT
	movl	%eax, -12(%ebp)
	.loc 1 4344 0
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-92(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$117, (%esp)
	call	build1@PLT
	movl	%eax, -12(%ebp)
	.loc 1 4345 0
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	9(%eax), %eax
	shrb	%al
	andl	$1, %eax
	movl	-12(%ebp), %ecx
	andl	$1, %eax
	leal	(%eax,%eax), %edx
	movzbl	9(%ecx), %eax
	andl	$-3, %eax
	orl	%edx, %eax
	movb	%al, 9(%ecx)
	.loc 1 4346 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	byte_position@PLT
	movl	%eax, 4(%esp)
	movl	-92(%ebp), %edx
	movl	%edx, (%esp)
	call	cp_convert@PLT
	movl	%eax, 12(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-92(%ebp), %ecx
	movl	%ecx, 4(%esp)
	movl	$60, (%esp)
	call	build@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -20(%ebp)
.L2054:
.LBE64:
	.loc 1 4350 0
	movl	-92(%ebp), %edx
	movzbl	8(%edx), %eax
	cmpb	$14, %al
	jne	.L2057
	movl	-92(%ebp), %ecx
	movl	4(%ecx), %eax
	movzbl	8(%eax), %eax
	cmpb	$17, %al
	jne	.L2057
	.loc 1 4353 0
	movl	-92(%ebp), %eax
	movl	%eax, (%esp)
	call	build_ptrmemfunc_type@PLT
	.loc 1 4354 0
	movl	$0, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-92(%ebp), %edx
	movl	%edx, (%esp)
	call	build_ptrmemfunc@PLT
	movl	%eax, -20(%ebp)
.L2057:
	.loc 1 4357 0
	movl	-20(%ebp), %ecx
	movl	%ecx, -156(%ebp)
	jmp	.L1867
.L1868:
.LBE63:
	.loc 1 4364 0
	cmpl	$0, -72(%ebp)
	jne	.L2060
	.loc 1 4366 0
	cmpl	$0, -92(%ebp)
	jne	.L2062
	.loc 1 4367 0
	movl	-96(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -92(%ebp)
.L2062:
	.loc 1 4368 0
	movl	-96(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	-92(%ebp), %ecx
	movl	%ecx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	build1@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -156(%ebp)
	jmp	.L1867
.L2060:
	.loc 1 4371 0
	movl	-72(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC101@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 4372 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -156(%ebp)
.L1867:
	movl	-156(%ebp), %eax
	.loc 1 4373 0
	addl	$180, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE67:
	.size	build_unary_op, .-build_unary_op
	.section	.rodata
	.type	__FUNCTION__.21289, @object
	.size	__FUNCTION__.21289, 21
__FUNCTION__.21289:
	.string	"unary_complex_lvalue"
.LC102:
	.string	"taking address of destructor"
	.align 4
.LC103:
	.string	"taking address of bound pointer-to-member expression"
	.align 4
.LC104:
	.string	"cannot create pointer to reference member `%D'"
	.text
.globl unary_complex_lvalue
	.type	unary_complex_lvalue, @function
unary_complex_lvalue:
.LFB68:
	.loc 1 4385 0
	pushl	%ebp
.LCFI222:
	movl	%esp, %ebp
.LCFI223:
	pushl	%edi
.LCFI224:
	pushl	%esi
.LCFI225:
	pushl	%ebx
.LCFI226:
	subl	$60, %esp
.LCFI227:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4387 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$48, %al
	jne	.L2066
.LBB65:
	.loc 1 4389 0
	movl	12(%ebp), %eax
	movl	24(%eax), %eax
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_unary_op@PLT
	movl	%eax, -36(%ebp)
	.loc 1 4390 0
	movl	12(%ebp), %eax
	movl	20(%eax), %edx
	movl	-36(%ebp), %eax
	movl	4(%eax), %ecx
	movl	-36(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	$48, (%esp)
	call	build@PLT
	movl	%eax, -48(%ebp)
	jmp	.L2068
.L2066:
.LBE65:
	.loc 1 4395 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$52, %al
	je	.L2069
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$80, %al
	je	.L2069
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$81, %al
	jne	.L2072
.L2069:
	.loc 1 4397 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	rationalize_conditional_expr
	movl	%eax, -48(%ebp)
	jmp	.L2068
.L2072:
	.loc 1 4400 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$49, %al
	je	.L2073
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-124, %al
	je	.L2073
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-125, %al
	jne	.L2076
.L2073:
.LBB66:
	.loc 1 4404 0
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 4405 0
	movl	-32(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L2077
	.loc 1 4407 0
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	stabilize_reference@PLT
	movl	%eax, -32(%ebp)
	.loc 1 4408 0
	movl	12(%ebp), %eax
	movl	24(%eax), %ecx
	movl	12(%ebp), %eax
	movl	4(%eax), %esi
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	%ecx, 12(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%esi, 4(%esp)
	movl	%edx, (%esp)
	call	build@PLT
	movl	%eax, 12(%ebp)
.L2077:
	.loc 1 4411 0
	movl	-32(%ebp), %eax
	movl	4(%eax), %edx
	movl	-32(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$48, (%esp)
	call	build@PLT
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	unary_complex_lvalue@PLT
	movl	%eax, -48(%ebp)
	jmp	.L2068
.L2076:
.LBE66:
	.loc 1 4415 0
	cmpl	$123, 8(%ebp)
	je	.L2079
	.loc 1 4416 0
	movl	$0, -48(%ebp)
	jmp	.L2068
.L2079:
	.loc 1 4419 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$49, %al
	je	.L2081
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$50, %al
	jne	.L2083
.L2081:
.LBB67:
	.loc 1 4422 0
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_unary_op@PLT
	movl	%eax, -28(%ebp)
	.loc 1 4423 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %edx
	movl	-28(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$48, (%esp)
	call	build@PLT
	movl	%eax, 12(%ebp)
	.loc 1 4424 0
	movl	12(%ebp), %edx
	movzbl	10(%edx), %eax
	orl	$4, %eax
	movb	%al, 10(%edx)
	.loc 1 4425 0
	movl	12(%ebp), %eax
	movl	%eax, -48(%ebp)
	jmp	.L2068
.L2083:
.LBE67:
	.loc 1 4428 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$24, %al
	je	.L2084
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$17, %al
	je	.L2084
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$15, %al
	jne	.L2087
.L2084:
.LBB68:
	.loc 1 4437 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-71, %al
	jne	.L2088
	leal	__FUNCTION__.21289@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$4437, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L2088:
	.loc 1 4439 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-77, %al
	je	.L2090
	.loc 1 4440 0
	movl	$0, -48(%ebp)
	jmp	.L2068
.L2090:
	.loc 1 4442 0
	movl	12(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 4445 0
	movl	-24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	jne	.L2092
	.loc 1 4447 0
	movl	-24(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	5(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L2094
	.loc 1 4448 0
	leal	.LC102@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L2094:
	.loc 1 4449 0
	movl	$0, 8(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$123, (%esp)
	call	build_unary_op@PLT
	movl	%eax, -48(%ebp)
	jmp	.L2068
.L2092:
	.loc 1 4451 0
	movl	-24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$35, %al
	jne	.L2096
	.loc 1 4452 0
	movl	$0, 8(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$123, (%esp)
	call	build_unary_op@PLT
	movl	%eax, -48(%ebp)
	jmp	.L2068
.L2096:
.LBB69:
	.loc 1 4457 0
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L2098
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	is_dummy_object@PLT
	testl	%eax, %eax
	jne	.L2098
	movl	-24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$38, %al
	je	.L2098
	.loc 1 4461 0
	leal	.LC103@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 4462 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -48(%ebp)
	jmp	.L2068
.L2098:
	.loc 1 4464 0
	movl	12(%ebp), %eax
	movzbl	11(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L2102
	.loc 1 4470 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	resolve_offset_ref@PLT
	movl	%eax, 12(%ebp)
	.loc 1 4472 0
	movl	$0, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_unary_op@PLT
	movl	%eax, -48(%ebp)
	jmp	.L2068
.L2102:
	.loc 1 4475 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$16, %al
	jne	.L2104
	.loc 1 4477 0
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC104@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 4478 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -48(%ebp)
	jmp	.L2068
.L2104:
	.loc 1 4481 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %edx
	movl	-24(%ebp), %eax
	movl	56(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	build_ptrmem_type@PLT
	movl	%eax, -20(%ebp)
	.loc 1 4482 0
	movl	12(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	make_ptrmem_cst@PLT
	movl	%eax, -24(%ebp)
	.loc 1 4483 0
	movl	-24(%ebp), %eax
	movl	%eax, -48(%ebp)
	jmp	.L2068
.L2087:
.LBE69:
.LBE68:
.LBB70:
	.loc 1 4491 0
	movl	12(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 4493 0
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$120, %al
	jne	.L2106
	.loc 1 4494 0
	movl	-16(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -16(%ebp)
.L2106:
	.loc 1 4496 0
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$54, %al
	jne	.L2108
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L2110
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L2110
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L2110
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L2110
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L2108
.L2110:
	.loc 1 4498 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$120, %al
	jne	.L2115
	.loc 1 4499 0
	movl	12(%ebp), %eax
	movl	%eax, -16(%ebp)
	jmp	.L2117
.L2115:
	.loc 1 4501 0
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	build_cplus_new@PLT
	movl	%eax, -16(%ebp)
.L2117:
	.loc 1 4502 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	build_pointer_type@PLT
	movl	%eax, %edx
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$123, (%esp)
	call	build1@PLT
	movl	%eax, -48(%ebp)
	jmp	.L2068
.L2108:
	.loc 1 4505 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$120, %al
	jne	.L2118
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$42, %al
	jne	.L2118
	.loc 1 4506 0
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %esi
	movl	-16(%ebp), %eax
	movl	20(%eax), %edi
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	build_pointer_type@PLT
	movl	$0, 16(%esp)
	movl	%esi, 12(%esp)
	movl	%edi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$120, (%esp)
	call	build@PLT
	movl	%eax, -48(%ebp)
	jmp	.L2068
.L2118:
.LBE70:
	.loc 1 4511 0
	movl	$0, -48(%ebp)
.L2068:
	movl	-48(%ebp), %eax
	.loc 1 4512 0
	addl	$60, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE68:
	.size	unary_complex_lvalue, .-unary_complex_lvalue
	.section	.rodata
	.type	__FUNCTION__.21452, @object
	.size	__FUNCTION__.21452, 21
__FUNCTION__.21452:
	.string	"cxx_mark_addressable"
	.align 4
.LC105:
	.string	"cannot take the address of `this', which is an rvalue expression"
	.align 4
.LC106:
	.string	"address requested for `%D', which is declared `register'"
	.text
.globl cxx_mark_addressable
	.type	cxx_mark_addressable, @function
cxx_mark_addressable:
.LFB69:
	.loc 1 4523 0
	pushl	%ebp
.LCFI228:
	movl	%esp, %ebp
.LCFI229:
	pushl	%ebx
.LCFI230:
	subl	$36, %esp
.LCFI231:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4524 0
	movl	8(%ebp), %eax
	movl	%eax, -8(%ebp)
.L2123:
	.loc 1 4527 0
	movl	-8(%ebp), %edx
	movzbl	8(%edx), %eax
	movzbl	%al, %eax
	subl	$31, %eax
	movl	%eax, -24(%ebp)
	cmpl	$99, -24(%ebp)
	ja	.L2124
	movl	-24(%ebp), %eax
	sall	$2, %eax
	movl	.L2132@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L2132:
	.long	.L2125@GOTOFF
	.long	.L2124@GOTOFF
	.long	.L2126@GOTOFF
	.long	.L2124@GOTOFF
	.long	.L2127@GOTOFF
	.long	.L2128@GOTOFF
	.long	.L2126@GOTOFF
	.long	.L2124@GOTOFF
	.long	.L2124@GOTOFF
	.long	.L2129@GOTOFF
	.long	.L2124@GOTOFF
	.long	.L2124@GOTOFF
	.long	.L2124@GOTOFF
	.long	.L2129@GOTOFF
	.long	.L2124@GOTOFF
	.long	.L2124@GOTOFF
	.long	.L2130@GOTOFF
	.long	.L2124@GOTOFF
	.long	.L2124@GOTOFF
	.long	.L2124@GOTOFF
	.long	.L2131@GOTOFF
	.long	.L2124@GOTOFF
	.long	.L2124@GOTOFF
	.long	.L2124@GOTOFF
	.long	.L2124@GOTOFF
	.long	.L2124@GOTOFF
	.long	.L2124@GOTOFF
	.long	.L2124@GOTOFF
	.long	.L2124@GOTOFF
	.long	.L2124@GOTOFF
	.long	.L2124@GOTOFF
	.long	.L2124@GOTOFF
	.long	.L2124@GOTOFF
	.long	.L2124@GOTOFF
	.long	.L2124@GOTOFF
	.long	.L2124@GOTOFF
	.long	.L2124@GOTOFF
	.long	.L2124@GOTOFF
	.long	.L2124@GOTOFF
	.long	.L2124@GOTOFF
	.long	.L2124@GOTOFF
	.long	.L2124@GOTOFF
	.long	.L2124@GOTOFF
	.long	.L2124@GOTOFF
	.long	.L2124@GOTOFF
	.long	.L2124@GOTOFF
	.long	.L2124@GOTOFF
	.long	.L2124@GOTOFF
	.long	.L2124@GOTOFF
	.long	.L2124@GOTOFF
	.long	.L2124@GOTOFF
	.long	.L2124@GOTOFF
	.long	.L2124@GOTOFF
	.long	.L2124@GOTOFF
	.long	.L2124@GOTOFF
	.long	.L2124@GOTOFF
	.long	.L2124@GOTOFF
	.long	.L2124@GOTOFF
	.long	.L2124@GOTOFF
	.long	.L2124@GOTOFF
	.long	.L2124@GOTOFF
	.long	.L2124@GOTOFF
	.long	.L2124@GOTOFF
	.long	.L2124@GOTOFF
	.long	.L2124@GOTOFF
	.long	.L2124@GOTOFF
	.long	.L2124@GOTOFF
	.long	.L2124@GOTOFF
	.long	.L2124@GOTOFF
	.long	.L2124@GOTOFF
	.long	.L2124@GOTOFF
	.long	.L2124@GOTOFF
	.long	.L2124@GOTOFF
	.long	.L2124@GOTOFF
	.long	.L2124@GOTOFF
	.long	.L2124@GOTOFF
	.long	.L2124@GOTOFF
	.long	.L2124@GOTOFF
	.long	.L2124@GOTOFF
	.long	.L2124@GOTOFF
	.long	.L2124@GOTOFF
	.long	.L2124@GOTOFF
	.long	.L2124@GOTOFF
	.long	.L2124@GOTOFF
	.long	.L2124@GOTOFF
	.long	.L2124@GOTOFF
	.long	.L2124@GOTOFF
	.long	.L2124@GOTOFF
	.long	.L2124@GOTOFF
	.long	.L2124@GOTOFF
	.long	.L2124@GOTOFF
	.long	.L2124@GOTOFF
	.long	.L2129@GOTOFF
	.long	.L2124@GOTOFF
	.long	.L2124@GOTOFF
	.long	.L2124@GOTOFF
	.long	.L2124@GOTOFF
	.long	.L2124@GOTOFF
	.long	.L2129@GOTOFF
	.long	.L2129@GOTOFF
	.text
.L2129:
	.loc 1 4534 0
	movl	-8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 4581 0
	jmp	.L2123
.L2128:
	.loc 1 4538 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2133
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	288(%eax), %eax
	movl	24(%eax), %eax
	movl	%eax, -20(%ebp)
	jmp	.L2135
.L2133:
	movl	$0, -20(%ebp)
.L2135:
	movl	-8(%ebp), %edx
	cmpl	%edx, -20(%ebp)
	jne	.L2127
	.loc 1 4540 0
	leal	.LC105@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 4541 0
	movl	-8(%ebp), %edx
	movzbl	9(%edx), %eax
	orl	$4, %eax
	movl	-8(%ebp), %edx
	movb	%al, 9(%edx)
	.loc 1 4542 0
	movl	$1, -16(%ebp)
	jmp	.L2137
.L2127:
	.loc 1 4549 0
	movl	-8(%ebp), %edx
	movl	136(%edx), %eax
	testl	%eax, %eax
	je	.L2138
	movl	-8(%ebp), %edx
	movzbl	38(%edx), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L2138
	movl	-8(%ebp), %edx
	movzbl	10(%edx), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L2138
	movl	-8(%ebp), %edx
	movzbl	33(%edx), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L2142
.L2138:
	movl	$1, -12(%ebp)
	jmp	.L2143
.L2142:
	movl	$0, -12(%ebp)
.L2143:
	cmpl	$0, -12(%ebp)
	jne	.L2126
	leal	__FUNCTION__.21452@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$4552, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L2126:
	.loc 1 4557 0
	movl	-8(%ebp), %edx
	movzbl	33(%edx), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L2146
	movl	-8(%ebp), %edx
	movzbl	9(%edx), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L2146
	movl	-8(%ebp), %edx
	movzbl	35(%edx), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L2146
	movl	extra_warnings@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2146
	.loc 1 4559 0
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC106@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
.L2146:
	.loc 1 4561 0
	movl	-8(%ebp), %edx
	movzbl	9(%edx), %eax
	orl	$4, %eax
	movl	-8(%ebp), %edx
	movb	%al, 9(%edx)
	.loc 1 4562 0
	movl	$1, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	put_var_into_stack@PLT
	.loc 1 4563 0
	movl	$1, -16(%ebp)
	jmp	.L2137
.L2125:
	.loc 1 4566 0
	movl	-8(%ebp), %edx
	movzbl	9(%edx), %eax
	orl	$4, %eax
	movl	-8(%ebp), %edx
	movb	%al, 9(%edx)
	.loc 1 4567 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	decl_assembler_name@PLT
	movl	%eax, %edx
	movzbl	9(%edx), %eax
	orl	$4, %eax
	movb	%al, 9(%edx)
	.loc 1 4568 0
	movl	$1, -16(%ebp)
	jmp	.L2137
.L2130:
	.loc 1 4571 0
	movl	-8(%ebp), %edx
	movzbl	9(%edx), %eax
	orl	$4, %eax
	movl	-8(%ebp), %edx
	movb	%al, 9(%edx)
	.loc 1 4572 0
	movl	$1, -16(%ebp)
	jmp	.L2137
.L2131:
	.loc 1 4575 0
	movl	-8(%ebp), %edx
	movzbl	9(%edx), %eax
	orl	$4, %eax
	movl	-8(%ebp), %edx
	movb	%al, 9(%edx)
	.loc 1 4576 0
	movl	-8(%ebp), %edx
	movl	20(%edx), %eax
	movl	%eax, (%esp)
	call	cxx_mark_addressable@PLT
	.loc 1 4577 0
	movl	$1, -16(%ebp)
	jmp	.L2137
.L2124:
	.loc 1 4580 0
	movl	$1, -16(%ebp)
.L2137:
	movl	-16(%ebp), %eax
	.loc 1 4582 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE69:
	.size	cxx_mark_addressable, .-cxx_mark_addressable
.globl build_x_conditional_expr
	.type	build_x_conditional_expr, @function
build_x_conditional_expr:
.LFB70:
	.loc 1 4589 0
	pushl	%ebp
.LCFI232:
	movl	%esp, %ebp
.LCFI233:
	pushl	%ebx
.LCFI234:
	subl	$20, %esp
.LCFI235:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4590 0
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	64(%eax), %edx
	movl	60(%eax), %eax
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L2153
	.loc 1 4591 0
	movl	16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$52, (%esp)
	call	build_min_nt@PLT
	movl	%eax, -8(%ebp)
	jmp	.L2155
.L2153:
	.loc 1 4593 0
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_conditional_expr@PLT
	movl	%eax, -8(%ebp)
.L2155:
	movl	-8(%ebp), %eax
	.loc 1 4594 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE70:
	.size	build_x_conditional_expr, .-build_x_conditional_expr
	.section	.rodata
	.align 4
.LC107:
	.string	"left-hand operand of comma expression has no effect"
	.text
.globl build_x_compound_expr
	.type	build_x_compound_expr, @function
build_x_compound_expr:
.LFB71:
	.loc 1 4602 0
	pushl	%ebp
.LCFI236:
	movl	%esp, %ebp
.LCFI237:
	pushl	%ebx
.LCFI238:
	subl	$52, %esp
.LCFI239:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4603 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 4606 0
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	64(%eax), %edx
	movl	60(%eax), %eax
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L2158
	.loc 1 4607 0
	movl	$0, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$48, (%esp)
	call	build_min_nt@PLT
	movl	%eax, -24(%ebp)
	jmp	.L2160
.L2158:
	.loc 1 4609 0
	cmpl	$0, -12(%ebp)
	jne	.L2161
	.loc 1 4610 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_compound_expr@PLT
	movl	%eax, -24(%ebp)
	jmp	.L2160
.L2161:
	.loc 1 4612 0
	movl	-12(%ebp), %eax
	movl	20(%eax), %edx
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	$0, 16(%esp)
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$3, 4(%esp)
	movl	$48, (%esp)
	call	build_opfncall@PLT
	movl	%eax, -8(%ebp)
	.loc 1 4614 0
	cmpl	$0, -8(%ebp)
	je	.L2163
	.loc 1 4615 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	tree_cons@PLT
	movl	%eax, (%esp)
	call	build_x_compound_expr@PLT
	movl	%eax, -24(%ebp)
	jmp	.L2160
.L2163:
	.loc 1 4618 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	9(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L2165
	.loc 1 4624 0
	movl	extra_warnings@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L2167
	movl	warn_unused_value@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2165
.L2167:
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$116, %al
	jne	.L2169
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$6, %al
	je	.L2165
.L2169:
	.loc 1 4627 0
	leal	.LC107@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
.L2165:
	.loc 1 4634 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	build_x_compound_expr@PLT
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	build_tree_list@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	tree_cons@PLT
	movl	%eax, (%esp)
	call	build_compound_expr@PLT
	movl	%eax, -24(%ebp)
.L2160:
	movl	-24(%ebp), %eax
	.loc 1 4638 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE71:
	.size	build_x_compound_expr, .-build_x_compound_expr
	.section	.rodata
.LC108:
	.string	"left-hand operand of comma"
	.text
.globl build_compound_expr
	.type	build_compound_expr, @function
build_compound_expr:
.LFB72:
	.loc 1 4646 0
	pushl	%ebp
.LCFI240:
	movl	%esp, %ebp
.LCFI241:
	pushl	%ebx
.LCFI242:
	subl	$52, %esp
.LCFI243:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4650 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	decl_constant_value@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 20(%eax)
	.loc 1 4652 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L2173
	.loc 1 4656 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$117, %al
	jne	.L2175
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	jne	.L2175
	.loc 1 4658 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 8(%ebp)
.L2175:
	.loc 1 4660 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L2178
.L2173:
	.loc 1 4663 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 4664 0
	leal	.LC108@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	convert_to_void@PLT
	movl	%eax, -8(%ebp)
	.loc 1 4665 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-8(%ebp), %eax
	jne	.L2179
	.loc 1 4666 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L2178
.L2179:
	.loc 1 4668 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	build_compound_expr@PLT
	movl	%eax, -24(%ebp)
	.loc 1 4669 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-24(%ebp), %eax
	jne	.L2181
	.loc 1 4670 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L2178
.L2181:
	.loc 1 4673 0
	movl	-8(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L2183
	movl	pedantic@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L2183
	.loc 1 4674 0
	movl	-24(%ebp), %eax
	movl	%eax, -28(%ebp)
	jmp	.L2178
.L2183:
	.loc 1 4676 0
	movl	-24(%ebp), %edx
	movl	4(%edx), %eax
	movl	-24(%ebp), %edx
	movl	%edx, 12(%esp)
	movl	-8(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$48, (%esp)
	call	build@PLT
	movl	%eax, -28(%ebp)
.L2178:
	movl	-28(%ebp), %eax
	.loc 1 4677 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE72:
	.size	build_compound_expr, .-build_compound_expr
	.section	.rodata
	.align 4
.LC109:
	.string	"static_cast from type `%T' to type `%T' casts away constness"
	.text
	.type	check_for_casting_away_constness, @function
check_for_casting_away_constness:
.LFB73:
	.loc 1 4684 0
	pushl	%ebp
.LCFI244:
	movl	%esp, %ebp
.LCFI245:
	pushl	%ebx
.LCFI246:
	subl	$20, %esp
.LCFI247:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4685 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	casts_away_constness
	testl	%eax, %eax
	je	.L2190
	.loc 1 4686 0
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC109@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L2190:
	.loc 1 4688 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE73:
	.size	check_for_casting_away_constness, .-check_for_casting_away_constness
	.section	.rodata
	.align 4
.LC110:
	.string	"invalid static_cast from type `%T' to type `%T'"
	.text
.globl build_static_cast
	.type	build_static_cast, @function
build_static_cast:
.LFB74:
	.loc 1 4695 0
	pushl	%ebp
.LCFI248:
	movl	%esp, %ebp
.LCFI249:
	pushl	%esi
.LCFI250:
	pushl	%ebx
.LCFI251:
	subl	$96, %esp
.LCFI252:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4699 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	8(%ebp), %eax
	je	.L2192
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	12(%ebp), %eax
	jne	.L2194
.L2192:
	.loc 1 4700 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -76(%ebp)
	jmp	.L2195
.L2194:
	.loc 1 4702 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-77, %al
	jne	.L2196
	.loc 1 4703 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	resolve_offset_ref@PLT
	movl	%eax, 12(%ebp)
.L2196:
	.loc 1 4705 0
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	64(%eax), %edx
	movl	60(%eax), %eax
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L2198
.LBB71:
	.loc 1 4707 0
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$211, (%esp)
	call	build_min@PLT
	movl	%eax, -36(%ebp)
	.loc 1 4708 0
	movl	-36(%ebp), %eax
	movl	%eax, -76(%ebp)
	jmp	.L2195
.L2198:
.LBE71:
	.loc 1 4713 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$16, %al
	je	.L2200
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$117, %al
	jne	.L2200
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	jne	.L2200
	.loc 1 4716 0
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 12(%ebp)
.L2200:
	.loc 1 4718 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -44(%ebp)
	.loc 1 4739 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$16, %al
	jne	.L2204
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	je	.L2206
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	jne	.L2204
.L2206:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L2208
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L2208
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L2208
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L2208
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L2204
.L2208:
	movl	-44(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	je	.L2213
	movl	-44(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	jne	.L2204
.L2213:
	movl	-44(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L2215
	movl	-44(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L2215
	movl	-44(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L2215
	movl	-44(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L2215
	movl	-44(%ebp), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L2204
.L2215:
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	real_non_cast_lvalue_p@PLT
	testl	%eax, %eax
	je	.L2204
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	lookup_base@PLT
	testl	%eax, %eax
	je	.L2204
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	72(%eax), %eax
	movl	%eax, (%esp)
	call	build_pointer_type@PLT
	movl	%eax, %esi
	movl	-44(%ebp), %eax
	movl	72(%eax), %eax
	movl	%eax, (%esp)
	call	build_pointer_type@PLT
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	call	can_convert@PLT
	testl	%eax, %eax
	je	.L2204
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	at_least_as_qualified_p@PLT
	testl	%eax, %eax
	je	.L2204
.LBB72:
	.loc 1 4752 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	$0, 12(%esp)
	movl	$2, 8(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	lookup_base@PLT
	movl	%eax, -32(%ebp)
	.loc 1 4756 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	build_address@PLT
	movl	%eax, %edx
	movl	$0, 12(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$61, (%esp)
	call	build_base_path@PLT
	movl	%eax, 12(%ebp)
	.loc 1 4760 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_nop@PLT
	movl	%eax, (%esp)
	call	convert_from_reference@PLT
	movl	%eax, -76(%ebp)
	jmp	.L2195
.L2204:
.LBE72:
	.loc 1 4769 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	perform_direct_initialization_if_possible@PLT
	movl	%eax, -40(%ebp)
	.loc 1 4770 0
	cmpl	$0, -40(%ebp)
	je	.L2224
	.loc 1 4771 0
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	convert_from_reference@PLT
	movl	%eax, -76(%ebp)
	jmp	.L2195
.L2224:
	.loc 1 4776 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$6, %al
	jne	.L2226
	.loc 1 4777 0
	movl	$0, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	convert_to_void@PLT
	movl	%eax, -76(%ebp)
	jmp	.L2195
.L2226:
	.loc 1 4792 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$12, %al
	je	.L2228
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$7, %al
	je	.L2228
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$8, %al
	jne	.L2231
.L2228:
	movl	-44(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$12, %al
	je	.L2232
	movl	-44(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$7, %al
	je	.L2232
	movl	-44(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$8, %al
	je	.L2232
.L2231:
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$12, %al
	je	.L2235
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$7, %al
	je	.L2235
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$11, %al
	jne	.L2238
.L2235:
	movl	-44(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$12, %al
	je	.L2232
	movl	-44(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$7, %al
	je	.L2232
	movl	-44(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$11, %al
	jne	.L2238
.L2232:
	.loc 1 4801 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_c_cast@PLT
	movl	%eax, -76(%ebp)
	jmp	.L2195
.L2238:
	.loc 1 4802 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L2241
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$15, %al
	je	.L2241
	movl	-44(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L2241
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$15, %al
	je	.L2241
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	je	.L2246
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	jne	.L2241
.L2246:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L2248
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L2248
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L2248
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L2248
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L2241
.L2248:
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	je	.L2253
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	jne	.L2241
.L2253:
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L2255
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L2255
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L2255
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L2255
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L2241
.L2255:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	72(%eax), %eax
	movl	%eax, (%esp)
	call	build_pointer_type@PLT
	movl	%eax, %esi
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	movl	72(%eax), %eax
	movl	%eax, (%esp)
	call	build_pointer_type@PLT
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	call	can_convert@PLT
	testl	%eax, %eax
	je	.L2241
.LBB73:
	.loc 1 4812 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	check_for_casting_away_constness
	.loc 1 4813 0
	movl	-44(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 12(%esp)
	movl	$2, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	lookup_base@PLT
	movl	%eax, -28(%ebp)
	.loc 1 4815 0
	movl	$0, 12(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$61, (%esp)
	call	build_base_path@PLT
	movl	%eax, -76(%ebp)
	jmp	.L2195
.L2241:
.LBE73:
	.loc 1 4817 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L2261
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$15, %al
	jne	.L2261
	movl	-44(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L2261
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$15, %al
	je	.L2265
.L2261:
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	jne	.L2266
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	testl	%eax, %eax
	je	.L2266
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	8(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L2266
	movl	-44(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	jne	.L2266
	movl	-44(%ebp), %eax
	movl	92(%eax), %eax
	testl	%eax, %eax
	je	.L2266
	movl	-44(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	8(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L2266
.L2265:
.LBB74:
	.loc 1 4825 0
	movl	-44(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L2272
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$15, %al
	jne	.L2272
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	movl	64(%eax), %eax
	movl	%eax, -72(%ebp)
	jmp	.L2275
.L2272:
	movl	-44(%ebp), %eax
	movl	16(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	64(%eax), %eax
	movl	%eax, -72(%ebp)
.L2275:
	movl	-72(%ebp), %edx
	movl	%edx, -24(%ebp)
	.loc 1 4826 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L2276
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$15, %al
	jne	.L2276
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	64(%eax), %eax
	movl	%eax, -68(%ebp)
	jmp	.L2279
.L2276:
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	64(%eax), %eax
	movl	%eax, -68(%ebp)
.L2279:
	movl	-68(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 4828 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L2280
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$15, %al
	jne	.L2280
	.loc 1 4830 0
	movl	-44(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L2283
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$15, %al
	jne	.L2283
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -64(%ebp)
	jmp	.L2286
.L2283:
	movl	-44(%ebp), %eax
	movl	16(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -64(%ebp)
.L2286:
	movl	-64(%ebp), %edx
	movl	72(%edx), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	build_ptrmem_type@PLT
	movl	%eax, -16(%ebp)
	.loc 1 4833 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L2287
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$15, %al
	jne	.L2287
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -60(%ebp)
	jmp	.L2290
.L2287:
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -60(%ebp)
.L2290:
	movl	-60(%ebp), %edx
	movl	72(%edx), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	build_ptrmem_type@PLT
	movl	%eax, -12(%ebp)
	.loc 1 4828 0
	jmp	.L2291
.L2280:
	.loc 1 4839 0
	movl	-44(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 4840 0
	movl	8(%ebp), %eax
	movl	%eax, -12(%ebp)
.L2291:
	.loc 1 4842 0
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	can_convert@PLT
	testl	%eax, %eax
	je	.L2266
	.loc 1 4844 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	check_for_casting_away_constness
	.loc 1 4845 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L2293
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$15, %al
	jne	.L2293
	.loc 1 4847 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-76, %al
	jne	.L2296
	.loc 1 4848 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	cplus_expand_constant@PLT
	movl	%eax, 12(%ebp)
.L2296:
	.loc 1 4849 0
	movl	$1, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	get_delta_difference
	movl	%eax, %esi
	movl	global_trees@GOT(%ebx), %eax
	movl	144(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	cp_convert@PLT
	movl	$1, 12(%esp)
	movl	%esi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$60, (%esp)
	call	build_binary_op@PLT
	movl	%eax, 12(%ebp)
	.loc 1 4853 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_nop@PLT
	movl	%eax, -76(%ebp)
	jmp	.L2195
.L2293:
	.loc 1 4856 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	4(%eax), %edx
	movl	$1, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	build_ptrmemfunc@PLT
	movl	%eax, -76(%ebp)
	jmp	.L2195
.L2266:
.LBE74:
	.loc 1 4867 0
	movl	-44(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L2298
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$6, %al
	jne	.L2298
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L2298
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$15, %al
	je	.L2298
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$24, %al
	je	.L2298
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$6, %al
	je	.L2298
	.loc 1 4871 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	check_for_casting_away_constness
	.loc 1 4872 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_nop@PLT
	movl	%eax, -76(%ebp)
	jmp	.L2195
.L2298:
	.loc 1 4875 0
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC110@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 4876 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -76(%ebp)
.L2195:
	movl	-76(%ebp), %eax
	.loc 1 4877 0
	addl	$96, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE74:
	.size	build_static_cast, .-build_static_cast
	.section	.rodata
	.align 4
.LC111:
	.string	"invalid reinterpret_cast of an rvalue expression of type `%T' to type `%T'"
	.align 4
.LC112:
	.string	"reinterpret_cast from `%T' to `%T' loses precision"
	.align 4
.LC113:
	.string	"reinterpret_cast from `%T' to `%T' casts away const (or volatile)"
	.align 4
.LC114:
	.string	"ISO C++ forbids casting between pointer-to-function and pointer-to-object"
	.align 4
.LC115:
	.string	"invalid reinterpret_cast from type `%T' to type `%T'"
	.text
.globl build_reinterpret_cast
	.type	build_reinterpret_cast, @function
build_reinterpret_cast:
.LFB75:
	.loc 1 4882 0
	pushl	%ebp
.LCFI253:
	movl	%esp, %ebp
.LCFI254:
	pushl	%ebx
.LCFI255:
	subl	$36, %esp
.LCFI256:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4885 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	8(%ebp), %eax
	je	.L2307
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	12(%ebp), %eax
	jne	.L2309
.L2307:
	.loc 1 4886 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L2310
.L2309:
	.loc 1 4888 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-77, %al
	jne	.L2311
	.loc 1 4889 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	resolve_offset_ref@PLT
	movl	%eax, 12(%ebp)
.L2311:
	.loc 1 4891 0
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	64(%eax), %edx
	movl	60(%eax), %eax
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L2313
.LBB75:
	.loc 1 4893 0
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$209, (%esp)
	call	build_min@PLT
	movl	%eax, -8(%ebp)
	.loc 1 4894 0
	movl	-8(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L2310
.L2313:
.LBE75:
	.loc 1 4897 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$16, %al
	je	.L2315
	.loc 1 4899 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	decay_conversion@PLT
	movl	%eax, 12(%ebp)
	.loc 1 4903 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$117, %al
	jne	.L2315
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	jne	.L2315
	.loc 1 4905 0
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 12(%ebp)
.L2315:
	.loc 1 4908 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 4910 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$16, %al
	jne	.L2319
	.loc 1 4912 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	real_lvalue_p@PLT
	testl	%eax, %eax
	jne	.L2321
	.loc 1 4914 0
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC111@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 4915 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L2310
.L2321:
	.loc 1 4917 0
	movl	$0, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$123, (%esp)
	call	build_unary_op@PLT
	movl	%eax, 12(%ebp)
	.loc 1 4918 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	12(%ebp), %eax
	je	.L2323
	.loc 1 4919 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	build_pointer_type@PLT
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	build_reinterpret_cast@PLT
	movl	%eax, 12(%ebp)
.L2323:
	.loc 1 4921 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	12(%ebp), %eax
	je	.L2325
	.loc 1 4922 0
	movl	$0, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	build_indirect_ref@PLT
	movl	%eax, 12(%ebp)
.L2325:
	.loc 1 4923 0
	movl	12(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L2310
.L2319:
	.loc 1 4925 0
	movl	8(%ebp), %eax
	movl	72(%eax), %edx
	movl	-12(%ebp), %eax
	movl	72(%eax), %eax
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	comptypes@PLT
	testl	%eax, %eax
	je	.L2327
	.loc 1 4926 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_static_cast@PLT
	movl	%eax, -24(%ebp)
	jmp	.L2310
.L2327:
	.loc 1 4928 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L2329
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$15, %al
	je	.L2329
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$7, %al
	je	.L2334
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$11, %al
	jne	.L2329
	jmp	.L2334
.L2329:
	.loc 1 4931 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$7, %al
	jne	.L2335
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L2335
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$15, %al
	je	.L2335
	.loc 1 4933 0
	movl	8(%ebp), %eax
	movzwl	36(%eax), %eax
	andw	$511, %ax
	movzwl	%ax, %edx
	movl	-12(%ebp), %eax
	movzwl	36(%eax), %eax
	andw	$511, %ax
	movzwl	%ax, %eax
	cmpl	%eax, %edx
	jge	.L2334
	.loc 1 4934 0
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC112@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	pedwarn@PLT
	.loc 1 4931 0
	jmp	.L2334
.L2335:
	.loc 1 4937 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L2341
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$24, %al
	jne	.L2341
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L2341
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$24, %al
	je	.L2345
.L2341:
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	jne	.L2346
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	testl	%eax, %eax
	je	.L2346
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	8(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L2346
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	jne	.L2346
	movl	-12(%ebp), %eax
	movl	92(%eax), %eax
	testl	%eax, %eax
	je	.L2346
	movl	-12(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	8(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L2346
.L2345:
	.loc 1 4940 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	decl_constant_value@PLT
	movl	%eax, 12(%ebp)
	.loc 1 4941 0
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$117, (%esp)
	call	build1@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -24(%ebp)
	jmp	.L2310
.L2346:
	.loc 1 4943 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L2352
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$15, %al
	jne	.L2352
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L2352
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$15, %al
	je	.L2356
.L2352:
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L2357
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$15, %al
	je	.L2357
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$24, %al
	je	.L2357
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L2357
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$15, %al
	je	.L2357
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$24, %al
	je	.L2357
.L2356:
	.loc 1 4946 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	comp_ptr_ttypes_reinterpret
	testl	%eax, %eax
	jne	.L2363
	.loc 1 4947 0
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC113@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	pedwarn@PLT
.L2363:
	.loc 1 4950 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	decl_constant_value@PLT
	movl	%eax, 12(%ebp)
	.loc 1 4951 0
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$117, (%esp)
	call	build1@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -24(%ebp)
	jmp	.L2310
.L2357:
	.loc 1 4953 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L2365
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$24, %al
	jne	.L2365
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L2365
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$15, %al
	je	.L2365
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$24, %al
	jne	.L2370
.L2365:
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L2371
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$24, %al
	jne	.L2371
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L2371
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$15, %al
	je	.L2371
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$24, %al
	je	.L2371
.L2370:
	.loc 1 4956 0
	leal	.LC114@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	pedwarn@PLT
	.loc 1 4957 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	decl_constant_value@PLT
	movl	%eax, 12(%ebp)
	.loc 1 4958 0
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$117, (%esp)
	call	build1@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -24(%ebp)
	jmp	.L2310
.L2371:
	.loc 1 4962 0
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC115@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 4964 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L2310
.L2334:
	.loc 1 4967 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cp_convert@PLT
	movl	%eax, -24(%ebp)
.L2310:
	movl	-24(%ebp), %eax
	.loc 1 4968 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE75:
	.size	build_reinterpret_cast, .-build_reinterpret_cast
	.section	.rodata
	.align 4
.LC116:
	.string	"invalid use of const_cast with type `%T', which is not a pointer, reference, nor a pointer-to-data-member type"
	.align 4
.LC117:
	.string	"invalid use of const_cast with type `%T', which is a pointer or reference to a function type"
	.align 4
.LC118:
	.string	"invalid const_cast of an rvalue of type `%T' to type `%T'"
	.align 4
.LC119:
	.string	"invalid const_cast from type `%T' to type `%T'"
	.text
.globl build_const_cast
	.type	build_const_cast, @function
build_const_cast:
.LFB76:
	.loc 1 4973 0
	pushl	%ebp
.LCFI257:
	movl	%esp, %ebp
.LCFI258:
	pushl	%ebx
.LCFI259:
	subl	$36, %esp
.LCFI260:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4976 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	8(%ebp), %eax
	je	.L2378
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	12(%ebp), %eax
	jne	.L2380
.L2378:
	.loc 1 4977 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L2381
.L2380:
	.loc 1 4979 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-77, %al
	jne	.L2382
	.loc 1 4980 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	resolve_offset_ref@PLT
	movl	%eax, 12(%ebp)
.L2382:
	.loc 1 4982 0
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	64(%eax), %edx
	movl	60(%eax), %eax
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L2384
.LBB76:
	.loc 1 4984 0
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$210, (%esp)
	call	build_min@PLT
	movl	%eax, -8(%ebp)
	.loc 1 4985 0
	movl	-8(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L2381
.L2384:
.LBE76:
	.loc 1 4988 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	je	.L2386
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$16, %al
	je	.L2386
	.loc 1 4989 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC116@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 4988 0
	jmp	.L2389
.L2386:
	.loc 1 4990 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$24, %al
	jne	.L2389
	.loc 1 4992 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC117@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 4993 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L2381
.L2389:
	.loc 1 4996 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$16, %al
	je	.L2391
	.loc 1 4998 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	decay_conversion@PLT
	movl	%eax, 12(%ebp)
	.loc 1 5002 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$117, %al
	jne	.L2391
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	jne	.L2391
	.loc 1 5004 0
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 12(%ebp)
.L2391:
	.loc 1 5007 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 5009 0
	movl	8(%ebp), %eax
	movl	72(%eax), %edx
	movl	-12(%ebp), %eax
	movl	72(%eax), %eax
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	comptypes@PLT
	testl	%eax, %eax
	je	.L2395
	.loc 1 5010 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_static_cast@PLT
	movl	%eax, -24(%ebp)
	jmp	.L2381
.L2395:
	.loc 1 5011 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$16, %al
	jne	.L2397
	.loc 1 5013 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	real_lvalue_p@PLT
	testl	%eax, %eax
	jne	.L2399
	.loc 1 5015 0
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC118@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 5016 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L2381
.L2399:
	.loc 1 5019 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	comp_ptr_ttypes_const
	testl	%eax, %eax
	je	.L2403
	.loc 1 5021 0
	movl	$0, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$123, (%esp)
	call	build_unary_op@PLT
	movl	%eax, 12(%ebp)
	.loc 1 5022 0
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$117, (%esp)
	call	build1@PLT
	movl	%eax, 12(%ebp)
	.loc 1 5023 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	convert_from_reference@PLT
	movl	%eax, -24(%ebp)
	jmp	.L2381
.L2397:
	.loc 1 5026 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L2403
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L2403
	movl	-12(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	comp_ptr_ttypes_const
	testl	%eax, %eax
	je	.L2403
	.loc 1 5029 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cp_convert@PLT
	movl	%eax, -24(%ebp)
	jmp	.L2381
.L2403:
	.loc 1 5031 0
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC119@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 5032 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
.L2381:
	movl	-24(%ebp), %eax
	.loc 1 5033 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE76:
	.size	build_const_cast, .-build_const_cast
	.section	.rodata
	.align 4
.LC120:
	.string	"ISO C++ forbids casting to an array type `%T'"
	.align 4
.LC121:
	.string	"invalid cast to function type `%T'"
	.align 4
.LC122:
	.string	"cast from `%T' to `%T' discards qualifiers from pointer target type"
	.align 4
.LC123:
	.string	"cast from pointer to integer of different size"
	.align 4
.LC124:
	.string	"cast to pointer from integer of different size"
	.align 4
.LC125:
	.string	"cast from `%T' to `%T' increases required alignment of target type"
	.text
.globl build_c_cast
	.type	build_c_cast, @function
build_c_cast:
.LFB77:
	.loc 1 5043 0
	pushl	%ebp
.LCFI261:
	movl	%esp, %ebp
.LCFI262:
	pushl	%ebx
.LCFI263:
	subl	$52, %esp
.LCFI264:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 5044 0
	movl	12(%ebp), %eax
	movl	%eax, -24(%ebp)
	.loc 1 5047 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	8(%ebp), %eax
	je	.L2409
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	12(%ebp), %eax
	jne	.L2411
.L2409:
	.loc 1 5048 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L2412
.L2411:
	.loc 1 5050 0
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	64(%eax), %edx
	movl	60(%eax), %eax
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L2413
.LBB77:
	.loc 1 5053 0
	movl	$0, 8(%esp)
	movl	-24(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	$0, (%esp)
	call	tree_cons@PLT
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$208, (%esp)
	call	build_min@PLT
	movl	%eax, -12(%ebp)
	.loc 1 5054 0
	movl	-12(%ebp), %ecx
	movl	%ecx, -28(%ebp)
	jmp	.L2412
.L2413:
.LBE77:
	.loc 1 5059 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$16, %al
	je	.L2415
	movl	-24(%ebp), %edx
	movzbl	8(%edx), %eax
	cmpb	$117, %al
	jne	.L2415
	movl	-24(%ebp), %ecx
	movl	4(%ecx), %eax
	movl	-24(%ebp), %ecx
	movl	20(%ecx), %edx
	movl	4(%edx), %edx
	cmpl	%edx, %eax
	jne	.L2415
	.loc 1 5062 0
	movl	-24(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -24(%ebp)
.L2415:
	.loc 1 5064 0
	movl	-24(%ebp), %edx
	movzbl	8(%edx), %eax
	cmpb	$-77, %al
	jne	.L2419
	.loc 1 5065 0
	movl	-24(%ebp), %ecx
	movl	%ecx, (%esp)
	call	resolve_offset_ref@PLT
	movl	%eax, -24(%ebp)
.L2419:
	.loc 1 5067 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$19, %al
	jne	.L2421
	.loc 1 5071 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L2423
	.loc 1 5073 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC120@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	pedwarn@PLT
	.loc 1 5074 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	build_pointer_type@PLT
	movl	%eax, 8(%ebp)
	jmp	.L2421
.L2423:
	.loc 1 5078 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC120@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 5079 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L2412
.L2421:
	.loc 1 5083 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$24, %al
	je	.L2425
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$17, %al
	jne	.L2427
.L2425:
	.loc 1 5086 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC121@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 5087 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L2412
.L2427:
	.loc 1 5090 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$6, %al
	jne	.L2428
	.loc 1 5095 0
	movl	$0, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	convert_to_void@PLT
	movl	%eax, -24(%ebp)
	.loc 1 5096 0
	movl	-24(%ebp), %edx
	movl	%edx, -28(%ebp)
	jmp	.L2412
.L2428:
	.loc 1 5099 0
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	complete_type_or_diagnostic@PLT
	testl	%eax, %eax
	jne	.L2430
	.loc 1 5100 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L2412
.L2430:
	.loc 1 5115 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L2432
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L2432
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L2432
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L2432
	movl	8(%ebp), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	jne	.L2432
	.loc 1 5117 0
	movl	-24(%ebp), %ecx
	movl	4(%ecx), %eax
	movzbl	8(%eax), %eax
	cmpb	$24, %al
	je	.L2438
	movl	-24(%ebp), %edx
	movl	4(%edx), %eax
	movzbl	8(%eax), %eax
	cmpb	$17, %al
	jne	.L2440
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L2438
	movl	-24(%ebp), %ecx
	movl	%ecx, (%esp)
	call	bound_pmf_p@PLT
	testl	%eax, %eax
	je	.L2438
.L2440:
	movl	-24(%ebp), %edx
	movl	4(%edx), %eax
	movzbl	8(%eax), %eax
	cmpb	$19, %al
	je	.L2438
	movl	-24(%ebp), %ecx
	movl	4(%ecx), %eax
	movzbl	8(%eax), %eax
	cmpb	$16, %al
	jne	.L2445
.L2438:
	.loc 1 5124 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	default_conversion@PLT
	movl	%eax, -24(%ebp)
	.loc 1 5115 0
	jmp	.L2445
.L2432:
	.loc 1 5126 0
	movl	-24(%ebp), %edx
	movl	4(%edx), %eax
	movzbl	8(%eax), %eax
	cmpb	$16, %al
	jne	.L2445
	.loc 1 5131 0
	movl	-24(%ebp), %ecx
	movl	%ecx, (%esp)
	call	convert_from_reference@PLT
	movl	%eax, -24(%ebp)
.L2445:
	.loc 1 5133 0
	movl	-24(%ebp), %edx
	movl	4(%edx), %eax
	movl	%eax, -16(%ebp)
	.loc 1 5137 0
	movl	warn_cast_qual@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2447
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L2447
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L2447
	movl	-16(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	at_least_as_qualified_p@PLT
	testl	%eax, %eax
	jne	.L2447
	.loc 1 5142 0
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC122@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
.L2447:
	.loc 1 5145 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$7, %al
	jne	.L2452
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L2452
	movl	8(%ebp), %eax
	movzwl	36(%eax), %edx
	andw	$511, %dx
	movl	-16(%ebp), %eax
	movzwl	36(%eax), %eax
	andw	$511, %ax
	cmpw	%ax, %dx
	je	.L2452
	.loc 1 5148 0
	leal	.LC123@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
.L2452:
	.loc 1 5150 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L2456
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$7, %al
	jne	.L2456
	movl	8(%ebp), %eax
	movzwl	36(%eax), %edx
	andw	$511, %dx
	movl	-16(%ebp), %eax
	movzwl	36(%eax), %eax
	andw	$511, %ax
	cmpw	%ax, %dx
	je	.L2456
	movl	-24(%ebp), %ecx
	movzbl	9(%ecx), %eax
	andl	$2, %eax
	testb	%al, %al
	jne	.L2456
	.loc 1 5155 0
	leal	.LC124@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
.L2456:
	.loc 1 5157 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$16, %al
	jne	.L2461
	.loc 1 5158 0
	movl	$0, 16(%esp)
	movl	$2, 12(%esp)
	movl	$95, 8(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	convert_to_reference@PLT
	movl	%eax, (%esp)
	call	convert_from_reference@PLT
	movl	%eax, -24(%ebp)
	jmp	.L2463
.L2461:
.LBB78:
	.loc 1 5165 0
	movl	-24(%ebp), %edx
	movl	%edx, (%esp)
	call	decl_constant_value@PLT
	movl	%eax, -24(%ebp)
	.loc 1 5167 0
	movl	-24(%ebp), %ecx
	movl	%ecx, -8(%ebp)
	.loc 1 5168 0
	movl	$95, 8(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	convert_force@PLT
	movl	%eax, -24(%ebp)
	.loc 1 5171 0
	movl	-24(%ebp), %edx
	movzbl	8(%edx), %eax
	cmpb	$26, %al
	jne	.L2463
	.loc 1 5173 0
	movl	-8(%ebp), %eax
	movzbl	10(%eax), %eax
	shrb	$3, %al
	andl	$1, %eax
	andl	$1, %eax
	leal	0(,%eax,8), %edx
	movl	-24(%ebp), %ecx
	movzbl	10(%ecx), %eax
	andl	$-9, %eax
	orl	%edx, %eax
	movl	-24(%ebp), %edx
	movb	%al, 10(%edx)
	.loc 1 5174 0
	movl	-8(%ebp), %eax
	movzbl	10(%eax), %eax
	shrb	$2, %al
	andl	$1, %eax
	andl	$1, %eax
	leal	0(,%eax,4), %edx
	movl	-24(%ebp), %ecx
	movzbl	10(%ecx), %eax
	andl	$-5, %eax
	orl	%edx, %eax
	movl	-24(%ebp), %edx
	movb	%al, 10(%edx)
.L2463:
.LBE78:
	.loc 1 5180 0
	movl	warn_cast_align@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2465
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L2465
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L2465
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$6, %al
	je	.L2465
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$24, %al
	je	.L2465
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L2465
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L2465
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	40(%eax), %edx
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	40(%eax), %eax
	cmpl	%eax, %edx
	jbe	.L2465
	.loc 1 5188 0
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC125@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
.L2465:
	.loc 1 5193 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$16, %al
	je	.L2474
	movl	-24(%ebp), %ecx
	cmpl	12(%ebp), %ecx
	jne	.L2474
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	real_lvalue_p@PLT
	testl	%eax, %eax
	je	.L2474
	.loc 1 5195 0
	movl	-24(%ebp), %edx
	movl	%edx, (%esp)
	call	non_lvalue@PLT
	movl	%eax, -24(%ebp)
.L2474:
	.loc 1 5197 0
	movl	-24(%ebp), %ecx
	movl	%ecx, -28(%ebp)
.L2412:
	movl	-28(%ebp), %eax
	.loc 1 5198 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE77:
	.size	build_c_cast, .-build_c_cast
	.section	.rodata
	.type	__FUNCTION__.22411, @object
	.size	__FUNCTION__.22411, 18
__FUNCTION__.22411:
	.string	"build_modify_expr"
.LC126:
	.string	"assignment"
	.align 4
.LC127:
	.string	"  in evaluation of `%Q(%#T, %#T)'"
	.align 4
.LC128:
	.string	"ISO C++ forbids cast to non-reference type used as lvalue"
	.align 4
.LC129:
	.string	"incompatible types in assignment of `%T' to `%T'"
	.align 4
.LC130:
	.string	"ISO C++ forbids assignment of arrays"
.LC131:
	.string	"initialization"
	.text
.globl build_modify_expr
	.type	build_modify_expr, @function
build_modify_expr:
.LFB78:
	.loc 1 5212 0
	pushl	%ebp
.LCFI265:
	movl	%esp, %ebp
.LCFI266:
	pushl	%esi
.LCFI267:
	pushl	%ebx
.LCFI268:
	subl	$112, %esp
.LCFI269:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 5214 0
	movl	16(%ebp), %eax
	movl	%eax, -52(%ebp)
	.loc 1 5215 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -48(%ebp)
	.loc 1 5216 0
	movl	-48(%ebp), %eax
	movl	%eax, -44(%ebp)
	.loc 1 5217 0
	movl	8(%ebp), %eax
	movl	%eax, -40(%ebp)
	.loc 1 5220 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	8(%ebp), %eax
	je	.L2480
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	16(%ebp), %eax
	jne	.L2482
.L2480:
	.loc 1 5221 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -92(%ebp)
	jmp	.L2483
.L2482:
	.loc 1 5224 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -88(%ebp)
	cmpl	$52, -88(%ebp)
	je	.L2487
	cmpl	$52, -88(%ebp)
	ja	.L2490
	cmpl	$48, -88(%ebp)
	je	.L2485
	cmpl	$49, -88(%ebp)
	je	.L2486
	jmp	.L2484
.L2490:
	cmpl	$131, -88(%ebp)
	jb	.L2484
	cmpl	$132, -88(%ebp)
	jbe	.L2488
	cmpl	$179, -88(%ebp)
	je	.L2489
	jmp	.L2484
.L2488:
	.loc 1 5229 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	9(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L2491
	.loc 1 5230 0
	movl	8(%ebp), %eax
	movl	24(%eax), %esi
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	stabilize_reference@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %ecx
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	movl	%esi, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	build@PLT
	movl	%eax, 8(%ebp)
.L2491:
	.loc 1 5233 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	build_modify_expr@PLT
	movl	%eax, 12(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$48, (%esp)
	call	build@PLT
	movl	%eax, -92(%ebp)
	jmp	.L2483
.L2485:
	.loc 1 5240 0
	movl	8(%ebp), %eax
	movl	24(%eax), %edx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	build_modify_expr@PLT
	movl	%eax, -52(%ebp)
	.loc 1 5242 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-52(%ebp), %eax
	jne	.L2493
	.loc 1 5243 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -92(%ebp)
	jmp	.L2483
.L2493:
	.loc 1 5244 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	-52(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$48, (%esp)
	call	build@PLT
	movl	%eax, -92(%ebp)
	jmp	.L2483
.L2486:
	.loc 1 5248 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	9(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L2495
	.loc 1 5249 0
	movl	8(%ebp), %eax
	movl	24(%eax), %esi
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	stabilize_reference@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %ecx
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	movl	%esi, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	build@PLT
	movl	%eax, 8(%ebp)
.L2495:
	.loc 1 5252 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	build_modify_expr@PLT
	movl	%eax, -52(%ebp)
	.loc 1 5253 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-52(%ebp), %eax
	jne	.L2497
	.loc 1 5254 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -92(%ebp)
	jmp	.L2483
.L2497:
	.loc 1 5255 0
	movl	-52(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$48, (%esp)
	call	build@PLT
	movl	%eax, -92(%ebp)
	jmp	.L2483
.L2487:
.LBB79:
	.loc 1 5264 0
	movl	$0, -56(%ebp)
	.loc 1 5266 0
	leal	-56(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	stabilize_expr@PLT
	movl	%eax, 16(%ebp)
	.loc 1 5270 0
	leal	.LC126@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	lvalue_or_else@PLT
	testl	%eax, %eax
	jne	.L2499
	.loc 1 5271 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -92(%ebp)
	jmp	.L2483
.L2499:
	.loc 1 5273 0
	movl	8(%ebp), %eax
	movl	28(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	cp_convert@PLT
	movl	%eax, %edx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	build_modify_expr@PLT
	movl	%eax, %esi
	movl	8(%ebp), %eax
	movl	24(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	cp_convert@PLT
	movl	%eax, %edx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	build_modify_expr@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%esi, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	build_conditional_expr@PLT
	movl	%eax, -36(%ebp)
	.loc 1 5282 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-36(%ebp), %eax
	jne	.L2501
	.loc 1 5283 0
	movl	-36(%ebp), %eax
	movl	%eax, -92(%ebp)
	jmp	.L2483
.L2501:
	.loc 1 5286 0
	movl	-56(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %ecx
	movl	-36(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	$48, (%esp)
	call	build@PLT
	movl	%eax, -92(%ebp)
	jmp	.L2483
.L2489:
.LBE79:
	.loc 1 5290 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	resolve_offset_ref@PLT
	movl	%eax, 8(%ebp)
	.loc 1 5291 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L2503
	.loc 1 5292 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -92(%ebp)
	jmp	.L2483
.L2503:
	.loc 1 5293 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -48(%ebp)
	movl	-48(%ebp), %eax
	movl	%eax, -44(%ebp)
.L2484:
	.loc 1 5299 0
	cmpl	$50, 12(%ebp)
	jne	.L2505
	.loc 1 5301 0
	movl	16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$47, %al
	jne	.L2507
	.loc 1 5303 0
	movl	16(%ebp), %eax
	movl	4(%eax), %edx
	movl	$0, 8(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	comptypes@PLT
	testl	%eax, %eax
	jne	.L2509
	leal	__FUNCTION__.22411@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$5304, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L2509:
	.loc 1 5305 0
	movl	16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$50, (%esp)
	call	build@PLT
	movl	%eax, -60(%ebp)
	.loc 1 5306 0
	movl	-60(%ebp), %edx
	movzbl	9(%edx), %eax
	orl	$1, %eax
	movl	-60(%ebp), %edx
	movb	%al, 9(%edx)
	.loc 1 5307 0
	movl	-60(%ebp), %eax
	movl	%eax, -92(%ebp)
	jmp	.L2483
.L2507:
	.loc 1 5309 0
	movl	-48(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L2511
	movl	-48(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L2511
	movl	-48(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L2511
	movl	-48(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L2511
	movl	-48(%ebp), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	jne	.L2511
	jmp	.L2517
.L2511:
	.loc 1 5313 0
	movl	-48(%ebp), %eax
	movl	76(%eax), %esi
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	build_tree_list@PLT
	movl	%eax, %edx
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	192(%eax), %eax
	movl	$3, 16(%esp)
	movl	%esi, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_special_member_call@PLT
	movl	%eax, -60(%ebp)
	.loc 1 5317 0
	cmpl	$0, -60(%ebp)
	jne	.L2518
	.loc 1 5318 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -92(%ebp)
	jmp	.L2483
.L2518:
	.loc 1 5319 0
	movl	-60(%ebp), %edx
	movl	%edx, -92(%ebp)
	jmp	.L2483
.L2505:
	.loc 1 5324 0
	movl	-48(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$16, %al
	jne	.L2520
	.loc 1 5326 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	convert_from_reference@PLT
	movl	%eax, 8(%ebp)
	.loc 1 5327 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -48(%ebp)
	movl	-48(%ebp), %eax
	movl	%eax, -44(%ebp)
.L2520:
	.loc 1 5329 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	require_complete_type@PLT
	movl	%eax, 8(%ebp)
	.loc 1 5330 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L2522
	.loc 1 5331 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -92(%ebp)
	jmp	.L2483
.L2522:
	.loc 1 5333 0
	cmpl	$117, 12(%ebp)
	jne	.L2524
	.loc 1 5336 0
	movl	-48(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L2526
	movl	-48(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L2526
	movl	-48(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L2526
	movl	-48(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L2526
	movl	-48(%ebp), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	jne	.L2526
	.loc 1 5346 0
	movl	-44(%ebp), %eax
	movl	%eax, -48(%ebp)
	jmp	.L2532
.L2526:
	.loc 1 5340 0
	movl	$117, (%esp)
	call	make_node@PLT
	movl	%eax, 16(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$3, 4(%esp)
	movl	$49, (%esp)
	call	build_opfncall@PLT
	movl	%eax, -60(%ebp)
	.loc 1 5342 0
	cmpl	$0, -60(%ebp)
	jne	.L2533
	.loc 1 5343 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -92(%ebp)
	jmp	.L2483
.L2533:
	.loc 1 5344 0
	movl	-60(%ebp), %eax
	movl	%eax, -92(%ebp)
	jmp	.L2483
.L2524:
	.loc 1 5354 0
	movl	-48(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$16, %al
	jne	.L2535
	movl	-48(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L2537
	movl	-48(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L2537
	movl	-48(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L2537
	movl	-48(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L2537
	movl	-48(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	jne	.L2537
.L2535:
	movl	-48(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L2537
	movl	-48(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L2537
	movl	-48(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L2537
	movl	-48(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L2537
	movl	-48(%ebp), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	jne	.L2537
	movl	$1, -84(%ebp)
	jmp	.L2547
.L2537:
	movl	$0, -84(%ebp)
.L2547:
	cmpl	$0, -84(%ebp)
	jne	.L2548
	leal	__FUNCTION__.22411@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$5355, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L2548:
	.loc 1 5356 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	stabilize_reference@PLT
	movl	%eax, 8(%ebp)
	.loc 1 5357 0
	movl	$1, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	build_binary_op@PLT
	movl	%eax, -52(%ebp)
	.loc 1 5358 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-52(%ebp), %eax
	jne	.L2550
	.loc 1 5360 0
	movl	16(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC127@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 5362 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -92(%ebp)
	jmp	.L2483
.L2550:
	.loc 1 5366 0
	movl	$117, 12(%ebp)
.L2532:
	.loc 1 5368 0
	movl	-48(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$16, %al
	jne	.L2552
	leal	__FUNCTION__.22411@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$5368, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L2552:
	.loc 1 5369 0
	movl	-52(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$16, %al
	jne	.L2517
	leal	__FUNCTION__.22411@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$5370, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L2517:
	.loc 1 5380 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -80(%ebp)
	cmpl	$73, -80(%ebp)
	jb	.L2556
	cmpl	$77, -80(%ebp)
	jbe	.L2557
	movl	-80(%ebp), %eax
	subl	$116, %eax
	cmpl	$1, %eax
	ja	.L2556
.L2557:
.LBB80:
	.loc 1 5390 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 5393 0
	movl	-52(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$19, %al
	je	.L2558
	movl	-52(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$24, %al
	je	.L2558
	movl	-52(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$17, %al
	je	.L2558
	movl	-52(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$15, %al
	jne	.L2562
.L2558:
	.loc 1 5397 0
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	default_conversion@PLT
	movl	%eax, -52(%ebp)
.L2562:
	.loc 1 5401 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	lvalue_p@PLT
	testl	%eax, %eax
	jne	.L2563
	.loc 1 5402 0
	leal	.LC128@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	pedwarn@PLT
.L2563:
	.loc 1 5404 0
	movl	-52(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	cp_convert@PLT
	movl	%eax, %edx
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	cp_convert@PLT
	movl	%eax, 8(%esp)
	movl	$117, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	build_modify_expr@PLT
	movl	%eax, -28(%ebp)
	.loc 1 5407 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-28(%ebp), %eax
	jne	.L2565
	.loc 1 5408 0
	movl	-28(%ebp), %edx
	movl	%edx, -92(%ebp)
	jmp	.L2483
.L2565:
	.loc 1 5409 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	cp_convert@PLT
	movl	%eax, -92(%ebp)
	jmp	.L2483
.L2556:
.LBE80:
	.loc 1 5419 0
	leal	.LC126@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	lvalue_or_else@PLT
	testl	%eax, %eax
	jne	.L2567
	.loc 1 5420 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -92(%ebp)
	jmp	.L2483
.L2567:
	.loc 1 5424 0
	cmpl	$50, 12(%ebp)
	je	.L2569
	movl	8(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	jne	.L2571
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	cp_type_quals@PLT
	andl	$1, %eax
	testb	%al, %al
	jne	.L2571
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$24, %al
	je	.L2571
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$17, %al
	je	.L2571
	movl	-48(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	je	.L2576
	movl	-48(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	jne	.L2569
.L2576:
	movl	-48(%ebp), %eax
	movzbl	39(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L2569
.L2571:
	.loc 1 5434 0
	movl	$0, 8(%esp)
	leal	.LC126@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	readonly_error@PLT
.L2569:
	.loc 1 5440 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$40, %al
	jne	.L2578
	movl	-48(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$7, %al
	je	.L2580
	movl	-48(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$8, %al
	je	.L2580
	movl	-48(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$11, %al
	jne	.L2578
.L2580:
	.loc 1 5445 0
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	get_unwidened@PLT
	movl	4(%eax), %eax
	movl	%eax, -48(%ebp)
	.loc 1 5450 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-48(%ebp), %eax
	je	.L2578
	.loc 1 5452 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_node@PLT
	movl	%eax, 8(%ebp)
	.loc 1 5453 0
	movl	8(%ebp), %edx
	movl	-48(%ebp), %eax
	movl	%eax, 4(%edx)
.L2578:
	.loc 1 5460 0
	movl	-48(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$16, %al
	je	.L2584
	.loc 1 5462 0
	movl	8(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L2586
	.loc 1 5463 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	stabilize_reference@PLT
	movl	%eax, 8(%ebp)
.L2586:
	.loc 1 5464 0
	movl	-52(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L2584
	.loc 1 5465 0
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	stabilize_reference@PLT
	movl	%eax, -52(%ebp)
.L2584:
	.loc 1 5471 0
	movl	-48(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$19, %al
	jne	.L2589
.LBB81:
	.loc 1 5475 0
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	72(%eax), %edx
	movl	-48(%ebp), %eax
	movl	72(%eax), %eax
	movl	$1, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	comptypes@PLT
	testl	%eax, %eax
	jne	.L2591
	.loc 1 5478 0
	movl	16(%ebp), %eax
	movl	4(%eax), %edx
	movl	-48(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	leal	.LC129@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 5480 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -92(%ebp)
	jmp	.L2483
.L2591:
	.loc 1 5484 0
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	movzbl	35(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L2593
	.loc 1 5485 0
	leal	.LC130@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	pedwarn@PLT
.L2593:
	.loc 1 5487 0
	movl	-52(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$19, %al
	jne	.L2595
	cmpl	$50, 12(%ebp)
	je	.L2597
	movl	$2, -72(%ebp)
	jmp	.L2599
.L2597:
	movl	$1, -72(%ebp)
.L2599:
	movl	-72(%ebp), %eax
	movl	%eax, -76(%ebp)
	jmp	.L2600
.L2595:
	movl	$0, -76(%ebp)
.L2600:
	movl	-76(%ebp), %edx
	movl	%edx, -24(%ebp)
	.loc 1 5489 0
	movl	-24(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_vec_init@PLT
	movl	%eax, -92(%ebp)
	jmp	.L2483
.L2589:
.LBE81:
	.loc 1 5492 0
	cmpl	$50, 12(%ebp)
	jne	.L2601
	.loc 1 5493 0
	movl	$0, 24(%esp)
	movl	$0, 20(%esp)
	leal	.LC131@GOTOFF(%ebx), %eax
	movl	%eax, 16(%esp)
	movl	$3, 12(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	convert_for_initialization@PLT
	movl	%eax, -52(%ebp)
	jmp	.L2603
.L2601:
	.loc 1 5498 0
	movl	-44(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$11, %al
	jne	.L2604
	movl	-48(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$7, %al
	jne	.L2604
	.loc 1 5501 0
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	leal	.LC126@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	convert_for_assignment
	movl	%eax, -52(%ebp)
	.loc 1 5503 0
	movl	$0, 8(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	convert_force@PLT
	movl	%eax, -52(%ebp)
	.loc 1 5498 0
	jmp	.L2607
.L2604:
	.loc 1 5506 0
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	leal	.LC126@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	convert_for_assignment
	movl	%eax, -52(%ebp)
.L2607:
	.loc 1 5508 0
	movl	-52(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$54, %al
	jne	.L2608
	movl	-48(%ebp), %eax
	movzbl	38(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L2608
	.loc 1 5510 0
	movl	-52(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	build_cplus_new@PLT
	movl	%eax, -52(%ebp)
.L2608:
	.loc 1 5516 0
	movl	-52(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$51, %al
	jne	.L2603
	.loc 1 5517 0
	movl	-52(%ebp), %eax
	movl	20(%eax), %edx
	movl	-52(%ebp), %eax
	movl	4(%eax), %ecx
	movl	%edx, 12(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	$48, (%esp)
	call	build@PLT
	movl	%eax, -52(%ebp)
.L2603:
	.loc 1 5521 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-52(%ebp), %eax
	jne	.L2612
	.loc 1 5522 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -92(%ebp)
	jmp	.L2483
.L2612:
	.loc 1 5524 0
	movl	-52(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$52, %al
	jne	.L2614
.LBB82:
	.loc 1 5527 0
	movl	-52(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 5529 0
	movl	8(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L2616
	.loc 1 5530 0
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	build_tree_list@PLT
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	tree_cons@PLT
	movl	%eax, (%esp)
	call	build_compound_expr@PLT
	movl	%eax, -16(%ebp)
.L2616:
	.loc 1 5538 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	break_out_calls@PLT
	movl	%eax, -20(%ebp)
	.loc 1 5540 0
	movl	8(%ebp), %eax
	cmpl	-20(%ebp), %eax
	jne	.L2618
	.loc 1 5542 0
	cmpl	$117, 12(%ebp)
	jne	.L2620
	movl	$49, -68(%ebp)
	jmp	.L2622
.L2620:
	movl	$50, -68(%ebp)
.L2622:
	movl	-52(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-68(%ebp), %eax
	movl	%eax, (%esp)
	call	build@PLT
	movl	%eax, -60(%ebp)
	jmp	.L2624
.L2618:
.LBB83:
	.loc 1 5546 0
	movl	-52(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 5549 0
	movl	-52(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	cp_convert@PLT
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	build_modify_expr@PLT
	movl	%eax, %esi
	movl	-52(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	cp_convert@PLT
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_modify_expr@PLT
	movl	%esi, 16(%esp)
	movl	%eax, 12(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$52, (%esp)
	call	build@PLT
	movl	%eax, -60(%ebp)
	jmp	.L2624
.L2614:
.LBE83:
.LBE82:
	.loc 1 5560 0
	cmpl	$117, 12(%ebp)
	jne	.L2625
	movl	$49, -64(%ebp)
	jmp	.L2627
.L2625:
	movl	$50, -64(%ebp)
.L2627:
	movl	-52(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-64(%ebp), %edx
	movl	%edx, (%esp)
	call	build@PLT
	movl	%eax, -60(%ebp)
.L2624:
	.loc 1 5563 0
	movl	-60(%ebp), %edx
	movzbl	9(%edx), %eax
	orl	$1, %eax
	movl	-60(%ebp), %edx
	movb	%al, 9(%edx)
	.loc 1 5570 0
	movl	-60(%ebp), %edx
	movl	4(%edx), %eax
	cmpl	-44(%ebp), %eax
	jne	.L2628
	.loc 1 5571 0
	movl	-60(%ebp), %eax
	movl	%eax, -92(%ebp)
	jmp	.L2483
.L2628:
	.loc 1 5574 0
	movl	-60(%ebp), %edx
	movl	4(%edx), %eax
	movzbl	8(%eax), %eax
	cmpb	$7, %al
	jne	.L2630
	movl	-44(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$11, %al
	jne	.L2630
	.loc 1 5577 0
	movl	-40(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$48, (%esp)
	call	build@PLT
	movl	%eax, -60(%ebp)
	.loc 1 5578 0
	movl	-60(%ebp), %edx
	movzbl	10(%edx), %eax
	orl	$4, %eax
	movl	-60(%ebp), %edx
	movb	%al, 10(%edx)
	.loc 1 5579 0
	movl	-60(%ebp), %eax
	movl	%eax, -92(%ebp)
	jmp	.L2483
.L2630:
	.loc 1 5581 0
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	leal	.LC126@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	-60(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	convert_for_assignment
	movl	%eax, -92(%ebp)
.L2483:
	movl	-92(%ebp), %eax
	.loc 1 5583 0
	addl	$112, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE78:
	.size	build_modify_expr, .-build_modify_expr
	.section	.rodata
	.align 4
.LC132:
	.string	"direct assignment to vbuf array is forbidden"
	.text
.globl build_x_modify_expr
	.type	build_x_modify_expr, @function
build_x_modify_expr:
.LFB79:
	.loc 1 5590 0
	pushl	%ebp
.LCFI270:
	movl	%esp, %ebp
.LCFI271:
	pushl	%ebx
.LCFI272:
	subl	$52, %esp
.LCFI273:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 5591 0
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	64(%eax), %edx
	movl	60(%eax), %eax
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L2635
	.loc 1 5592 0
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	build_min_nt@PLT
	movl	%eax, %edx
	movl	16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$207, (%esp)
	call	build_min_nt@PLT
	movl	%eax, -24(%ebp)
	jmp	.L2637
.L2635:
	.loc 1 5595 0
	cmpl	$117, 12(%ebp)
	je	.L2638
.LBB84:
	.loc 1 5598 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	make_node@PLT
	movl	%eax, 16(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$3, 4(%esp)
	movl	$49, (%esp)
	call	build_opfncall@PLT
	movl	%eax, -12(%ebp)
	.loc 1 5599 0
	cmpl	$0, -12(%ebp)
	je	.L2638
	.loc 1 5600 0
	movl	-12(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L2637
.L2638:
.LBE84:
	.loc 1 5606 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$44, %al
	jne	.L2641
.LBB85:
	.loc 1 5608 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 5609 0
	jmp	.L2643
.L2644:
	.loc 1 5610 0
	movl	-8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -8(%ebp)
.L2643:
	.loc 1 5609 0
	movl	-8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$44, %al
	je	.L2644
	.loc 1 5611 0
	cmpl	$0, -8(%ebp)
	je	.L2641
	movl	-8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$35, %al
	jne	.L2641
	movl	-8(%ebp), %eax
	movzbl	34(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L2648
	movl	-8(%ebp), %eax
	movzbl	34(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L2648
	movl	-8(%ebp), %eax
	movzbl	34(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L2641
.L2648:
	.loc 1 5613 0
	leal	.LC132@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L2641:
.LBE85:
	.loc 1 5617 0
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_modify_expr@PLT
	movl	%eax, -24(%ebp)
.L2637:
	movl	-24(%ebp), %eax
	.loc 1 5618 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE79:
	.size	build_x_modify_expr, .-build_x_modify_expr
	.section	.rodata
	.align 4
.LC133:
	.string	"   in pointer to member function conversion"
	.align 4
.LC134:
	.string	"   in pointer to member conversion"
	.align 4
.LC135:
	.string	"pointer to member cast via virtual base `%T' of `%T'"
	.align 4
.LC136:
	.string	"pointer to member conversion via virtual base `%T' of `%T'"
	.text
	.type	get_delta_difference, @function
get_delta_difference:
.LFB80:
	.loc 1 5634 0
	pushl	%ebp
.LCFI274:
	movl	%esp, %ebp
.LCFI275:
	pushl	%ebx
.LCFI276:
	subl	$36, %esp
.LCFI277:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 5635 0
	movl	global_trees@GOT(%ebx), %eax
	movl	44(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 5640 0
	leal	-20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$2, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	lookup_base@PLT
	movl	%eax, -12(%ebp)
	.loc 1 5641 0
	movl	-20(%ebp), %eax
	cmpl	$-3, %eax
	je	.L2653
	movl	-20(%ebp), %eax
	cmpl	$-2, %eax
	jne	.L2655
.L2653:
	.loc 1 5643 0
	leal	.LC133@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 5644 0
	movl	-16(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L2656
.L2655:
	.loc 1 5646 0
	cmpl	$0, -12(%ebp)
	jne	.L2657
	.loc 1 5648 0
	cmpl	$0, 16(%ebp)
	jne	.L2659
	.loc 1 5650 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	error_not_base_type@PLT
	.loc 1 5651 0
	leal	.LC134@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 5652 0
	movl	-16(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L2656
.L2659:
	.loc 1 5654 0
	leal	-20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$2, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	lookup_base@PLT
	movl	%eax, -12(%ebp)
	.loc 1 5655 0
	cmpl	$0, -12(%ebp)
	jne	.L2661
	.loc 1 5656 0
	movl	-16(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L2656
.L2661:
	.loc 1 5657 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	binfo_from_vbase@PLT
	movl	%eax, -8(%ebp)
	.loc 1 5659 0
	cmpl	$0, -8(%ebp)
	je	.L2663
	.loc 1 5662 0
	movl	-8(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %edx
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	leal	.LC135@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
	.loc 1 5665 0
	movl	-16(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L2656
.L2663:
	.loc 1 5667 0
	movl	-12(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 5668 0
	movl	global_trees@GOT(%ebx), %eax
	movl	144(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	cp_convert@PLT
	movl	%eax, -16(%ebp)
	.loc 1 5669 0
	movl	global_trees@GOT(%ebx), %eax
	movl	44(%eax), %edx
	movl	$1, 12(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$61, (%esp)
	call	build_binary_op@PLT
	movl	%eax, -16(%ebp)
	.loc 1 5673 0
	movl	-16(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L2656
.L2657:
	.loc 1 5676 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	binfo_from_vbase@PLT
	movl	%eax, -8(%ebp)
	.loc 1 5677 0
	cmpl	$0, -8(%ebp)
	je	.L2665
	.loc 1 5680 0
	cmpl	$0, 16(%ebp)
	je	.L2667
	.loc 1 5681 0
	movl	-8(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %edx
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	leal	.LC135@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
	jmp	.L2669
.L2667:
	.loc 1 5685 0
	movl	-8(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %edx
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	leal	.LC136@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L2669:
	.loc 1 5688 0
	movl	-16(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L2656
.L2665:
	.loc 1 5690 0
	movl	-12(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 5692 0
	movl	global_trees@GOT(%ebx), %eax
	movl	144(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	cp_convert@PLT
	movl	%eax, -24(%ebp)
.L2656:
	movl	-24(%ebp), %eax
	.loc 1 5693 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE80:
	.size	get_delta_difference, .-get_delta_difference
.globl build_ptrmemfunc1
	.type	build_ptrmemfunc1, @function
build_ptrmemfunc1:
.LFB81:
	.loc 1 5701 0
	pushl	%ebp
.LCFI278:
	movl	%esp, %ebp
.LCFI279:
	pushl	%ebx
.LCFI280:
	subl	$52, %esp
.LCFI281:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 5702 0
	movl	$0, -16(%ebp)
	.loc 1 5707 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 5708 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 5711 0
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	40(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	convert_and_check@PLT
	movl	%eax, 12(%ebp)
	.loc 1 5714 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	build_tree_list@PLT
	movl	%eax, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_cons@PLT
	movl	%eax, -16(%ebp)
	.loc 1 5716 0
	movl	-16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$0, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$47, (%esp)
	call	build@PLT
	movl	%eax, -16(%ebp)
	.loc 1 5717 0
	movl	16(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L2672
	movl	12(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L2672
	movl	$1, -28(%ebp)
	jmp	.L2675
.L2672:
	movl	$0, -28(%ebp)
.L2675:
	movzbl	-28(%ebp), %eax
	andl	$1, %eax
	movl	-16(%ebp), %ecx
	andl	$1, %eax
	leal	(%eax,%eax), %edx
	movzbl	9(%ecx), %eax
	andl	$-3, %eax
	orl	%edx, %eax
	movb	%al, 9(%ecx)
	.loc 1 5718 0
	movl	-16(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L2676
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	initializer_constant_valid_p@PLT
	testl	%eax, %eax
	je	.L2676
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	initializer_constant_valid_p@PLT
	testl	%eax, %eax
	je	.L2676
	movl	$1, -24(%ebp)
	jmp	.L2680
.L2676:
	movl	$0, -24(%ebp)
.L2680:
	movzbl	-24(%ebp), %eax
	andl	$1, %eax
	movl	-16(%ebp), %ecx
	andl	$1, %eax
	leal	0(,%eax,4), %edx
	movzbl	10(%ecx), %eax
	andl	$-5, %eax
	orl	%edx, %eax
	movb	%al, 10(%ecx)
	.loc 1 5723 0
	movl	-16(%ebp), %eax
	.loc 1 5724 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE81:
	.size	build_ptrmemfunc1, .-build_ptrmemfunc1
	.section	.rodata
	.type	__FUNCTION__.22940, @object
	.size	__FUNCTION__.22940, 17
__FUNCTION__.22940:
	.string	"build_ptrmemfunc"
	.align 4
.LC137:
	.string	"invalid conversion to type `%T' from type `%T'"
	.text
.globl build_ptrmemfunc
	.type	build_ptrmemfunc, @function
build_ptrmemfunc:
.LFB82:
	.loc 1 5741 0
	pushl	%ebp
.LCFI282:
	movl	%esp, %ebp
.LCFI283:
	pushl	%ebx
.LCFI284:
	subl	$52, %esp
.LCFI285:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 5746 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	12(%ebp), %eax
	je	.L2683
	cmpl	$0, 12(%ebp)
	je	.L2685
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jne	.L2685
.L2683:
	.loc 1 5747 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -40(%ebp)
	jmp	.L2687
.L2685:
	.loc 1 5749 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 5750 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_ptrmemfunc_type@PLT
	movl	%eax, -12(%ebp)
	.loc 1 5753 0
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	jne	.L2688
	movl	-16(%ebp), %eax
	movl	92(%eax), %eax
	testl	%eax, %eax
	je	.L2688
	movl	-16(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	8(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L2688
.LBB86:
	.loc 1 5755 0
	movl	$0, -24(%ebp)
	.loc 1 5756 0
	movl	$0, -28(%ebp)
	.loc 1 5759 0
	cmpl	$0, 16(%ebp)
	jne	.L2692
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	can_convert_arg@PLT
	testl	%eax, %eax
	jne	.L2692
	.loc 1 5761 0
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC137@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L2692:
	.loc 1 5764 0
	movl	-12(%ebp), %eax
	movl	16(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	64(%eax), %ecx
	movl	-16(%ebp), %eax
	movl	16(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	64(%eax), %edx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	get_delta_difference
	movl	%eax, -8(%ebp)
	.loc 1 5772 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-76, %al
	je	.L2695
	.loc 1 5774 0
	movl	$0, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	comptypes@PLT
	testl	%eax, %eax
	je	.L2697
	.loc 1 5775 0
	movl	12(%ebp), %eax
	movl	%eax, -40(%ebp)
	jmp	.L2687
.L2697:
	.loc 1 5776 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	integer_zerop@PLT
	testl	%eax, %eax
	je	.L2695
	.loc 1 5777 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	build_reinterpret_cast@PLT
	movl	%eax, -40(%ebp)
	jmp	.L2687
.L2695:
	.loc 1 5780 0
	movl	12(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L2700
	.loc 1 5781 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	save_expr@PLT
	movl	%eax, 12(%ebp)
.L2700:
	.loc 1 5784 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-76, %al
	jne	.L2702
	.loc 1 5785 0
	leal	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_ptrmemfunc_cst@PLT
	jmp	.L2704
.L2702:
	.loc 1 5788 0
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	236(%eax), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	build_ptrmemfunc_access_expr@PLT
	movl	%eax, -28(%ebp)
	.loc 1 5789 0
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	216(%eax), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	build_ptrmemfunc_access_expr@PLT
	movl	%eax, -24(%ebp)
.L2704:
	.loc 1 5793 0
	movl	-24(%ebp), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	144(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	cp_convert@PLT
	movl	%eax, -24(%ebp)
	.loc 1 5795 0
	movl	global_trees@GOT(%ebx), %eax
	movl	48(%eax), %eax
	movl	$1, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$84, (%esp)
	call	build_binary_op@PLT
	movl	%eax, -8(%ebp)
	.loc 1 5796 0
	movl	-24(%ebp), %edx
	movl	$1, 12(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$60, (%esp)
	call	build_binary_op@PLT
	movl	%eax, -24(%ebp)
	.loc 1 5797 0
	movl	-28(%ebp), %eax
	movl	-24(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	build_ptrmemfunc1@PLT
	movl	%eax, -40(%ebp)
	jmp	.L2687
.L2688:
.LBE86:
	.loc 1 5801 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	integer_zerop@PLT
	testl	%eax, %eax
	je	.L2705
	.loc 1 5803 0
	movl	global_trees@GOT(%ebx), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_c_cast@PLT
	movl	%eax, 12(%ebp)
	.loc 1 5804 0
	movl	global_trees@GOT(%ebx), %eax
	movl	44(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	build_ptrmemfunc1@PLT
	movl	%eax, -40(%ebp)
	jmp	.L2687
.L2705:
	.loc 1 5809 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	type_unknown_p@PLT
	testl	%eax, %eax
	je	.L2707
	.loc 1 5810 0
	movl	$3, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	instantiate_type@PLT
	movl	%eax, -40(%ebp)
	jmp	.L2687
.L2707:
	.loc 1 5812 0
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 5813 0
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	je	.L2709
	leal	__FUNCTION__.22940@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$5813, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L2709:
	.loc 1 5814 0
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	make_ptrmem_cst@PLT
	movl	%eax, -40(%ebp)
.L2687:
	movl	-40(%ebp), %eax
	.loc 1 5815 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE82:
	.size	build_ptrmemfunc, .-build_ptrmemfunc
	.section	.rodata
	.type	__FUNCTION__.23036, @object
	.size	__FUNCTION__.23036, 22
__FUNCTION__.23036:
	.string	"expand_ptrmemfunc_cst"
	.text
.globl expand_ptrmemfunc_cst
	.type	expand_ptrmemfunc_cst, @function
expand_ptrmemfunc_cst:
.LFB83:
	.loc 1 5829 0
	pushl	%ebp
.LCFI286:
	movl	%esp, %ebp
.LCFI287:
	pushl	%ebx
.LCFI288:
	subl	$52, %esp
.LCFI289:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 5830 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 5831 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 5834 0
	movl	-24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	je	.L2713
	leal	__FUNCTION__.23036@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$5834, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L2713:
	.loc 1 5837 0
	movl	-24(%ebp), %eax
	movl	56(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 5840 0
	movl	-28(%ebp), %eax
	movl	16(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	64(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 5843 0
	movl	$0, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	get_delta_difference
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 5845 0
	movl	-24(%ebp), %eax
	movzbl	33(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	jne	.L2715
	.loc 1 5846 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	build_addr_func@PLT
	movl	%eax, %edx
	movl	-28(%ebp), %eax
	movl	16(%eax), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, %edx
	movl	16(%ebp), %eax
	movl	%edx, (%eax)
	jmp	.L2718
.L2715:
.LBB87:
	.loc 1 5852 0
	movl	-24(%ebp), %eax
	movl	56(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 5853 0
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	binfo_or_else@PLT
	movl	%eax, -8(%ebp)
	.loc 1 5854 0
	movl	-8(%ebp), %eax
	movl	24(%eax), %ecx
	movl	12(%ebp), %eax
	movl	(%eax), %edx
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	%ecx, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$60, (%esp)
	call	build@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 5860 0
	movl	-24(%ebp), %eax
	movl	124(%eax), %edx
	movl	16(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 5861 0
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	36(%eax), %eax
	movl	24(%eax), %edx
	movl	16(%ebp), %eax
	movl	(%eax), %ecx
	movl	integer_types@GOT(%ebx), %eax
	movl	20(%eax), %eax
	movl	%edx, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$62, (%esp)
	call	build@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, %edx
	movl	16(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 5872 0
	movl	global_trees@GOT(%ebx), %eax
	movl	48(%eax), %ecx
	movl	12(%ebp), %eax
	movl	(%eax), %edx
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	%ecx, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$84, (%esp)
	call	build@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 5874 0
	movl	global_trees@GOT(%ebx), %eax
	movl	48(%eax), %ecx
	movl	12(%ebp), %eax
	movl	(%eax), %edx
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	%ecx, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$60, (%esp)
	call	build@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 5882 0
	movl	16(%ebp), %eax
	movl	(%eax), %edx
	movl	-28(%ebp), %eax
	movl	16(%eax), %eax
	movl	4(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$117, (%esp)
	call	build1@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, %edx
	movl	16(%ebp), %eax
	movl	%edx, (%eax)
.L2718:
.LBE87:
	.loc 1 5885 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE83:
	.size	expand_ptrmemfunc_cst, .-expand_ptrmemfunc_cst
.globl pfn_from_ptrmemfunc
	.type	pfn_from_ptrmemfunc, @function
pfn_from_ptrmemfunc:
.LFB84:
	.loc 1 5893 0
	pushl	%ebp
.LCFI290:
	movl	%esp, %ebp
.LCFI291:
	pushl	%ebx
.LCFI292:
	subl	$36, %esp
.LCFI293:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 5894 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-76, %al
	jne	.L2720
.LBB88:
	.loc 1 5899 0
	leal	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_ptrmemfunc_cst@PLT
	.loc 1 5900 0
	movl	-12(%ebp), %eax
	testl	%eax, %eax
	je	.L2720
	.loc 1 5901 0
	movl	-12(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L2723
.L2720:
.LBE88:
	.loc 1 5904 0
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	236(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_ptrmemfunc_access_expr@PLT
	movl	%eax, -24(%ebp)
.L2723:
	movl	-24(%ebp), %eax
	.loc 1 5905 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE84:
	.size	pfn_from_ptrmemfunc, .-pfn_from_ptrmemfunc
	.section	.rodata
	.align 4
.LC138:
	.string	"passing NULL used for non-pointer %s %P of `%D'"
	.align 4
.LC139:
	.string	"%s to non-pointer type `%T' from NULL"
	.align 4
.LC140:
	.string	"passing `%T' for %s %P of `%D'"
.LC141:
	.string	"%s to `%T' from `%T'"
	.align 4
.LC142:
	.string	"passing negative value `%E' for %s %P of `%D'"
	.align 4
.LC143:
	.string	"%s of negative value `%E' to `%T'"
	.text
.globl dubious_conversion_warnings
	.type	dubious_conversion_warnings, @function
dubious_conversion_warnings:
.LFB85:
	.loc 1 5918 0
	pushl	%ebp
.LCFI294:
	movl	%esp, %ebp
.LCFI295:
	pushl	%ebx
.LCFI296:
	subl	$20, %esp
.LCFI297:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 5919 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$16, %al
	jne	.L2726
	.loc 1 5920 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 8(%ebp)
.L2726:
	.loc 1 5923 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$12, %al
	je	.L2728
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$7, %al
	je	.L2728
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$8, %al
	jne	.L2731
.L2728:
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	264(%eax), %eax
	cmpl	12(%ebp), %eax
	jne	.L2731
	.loc 1 5925 0
	cmpl	$0, 20(%ebp)
	je	.L2733
	.loc 1 5926 0
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC138@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
	jmp	.L2731
.L2733:
	.loc 1 5929 0
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC139@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
.L2731:
	.loc 1 5933 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$8, %al
	jne	.L2735
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$7, %al
	jne	.L2735
	.loc 1 5936 0
	cmpl	$0, 20(%ebp)
	je	.L2738
	.loc 1 5937 0
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	20(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	leal	.LC140@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
	jmp	.L2741
.L2738:
	.loc 1 5940 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 12(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC141@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
	.loc 1 5933 0
	jmp	.L2741
.L2735:
	.loc 1 5944 0
	movl	8(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L2741
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$12, %al
	je	.L2741
	.loc 1 5946 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	jne	.L2744
	movl	12(%ebp), %eax
	movzbl	11(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L2744
	.loc 1 5949 0
	cmpl	$0, 20(%ebp)
	je	.L2747
	.loc 1 5950 0
	movl	20(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC142@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
	jmp	.L2744
.L2747:
	.loc 1 5953 0
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC143@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
.L2744:
	.loc 1 5957 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	overflow_warning@PLT
	.loc 1 5959 0
	movl	12(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L2741
	.loc 1 5960 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, 12(%ebp)
.L2741:
	.loc 1 5962 0
	movl	12(%ebp), %eax
	.loc 1 5963 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE85:
	.size	dubious_conversion_warnings, .-dubious_conversion_warnings
	.section	.rodata
	.type	__FUNCTION__.23182, @object
	.size	__FUNCTION__.23182, 23
__FUNCTION__.23182:
	.string	"convert_for_assignment"
	.align 4
.LC144:
	.string	"cannot convert `%T' to `%T' for argument `%P' to `%D'"
	.align 4
.LC145:
	.string	"cannot convert `%T' to `%T' in %s"
	.text
	.type	convert_for_assignment, @function
convert_for_assignment:
.LFB86:
	.loc 1 5977 0
	pushl	%ebp
.LCFI298:
	movl	%esp, %ebp
.LCFI299:
	pushl	%ebx
.LCFI300:
	subl	$36, %esp
.LCFI301:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 5978 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	.loc 1 5982 0
	cmpl	$15, %eax
	jne	.L2752
	.loc 1 5983 0
	leal	__FUNCTION__.23182@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$5983, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L2752:
	.loc 1 5985 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-77, %al
	jne	.L2754
	.loc 1 5986 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	resolve_offset_ref@PLT
	movl	%eax, 12(%ebp)
.L2754:
	.loc 1 5989 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$118, %al
	jne	.L2756
	.loc 1 5990 0
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 12(%ebp)
.L2756:
	.loc 1 5992 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 5993 0
	movl	-12(%ebp), %edx
	movzbl	8(%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -8(%ebp)
	.loc 1 5995 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	12(%ebp), %eax
	je	.L2758
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-12(%ebp), %eax
	jne	.L2760
.L2758:
	.loc 1 5996 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
	jmp	.L2761
.L2760:
	.loc 1 5997 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$3, %al
	jne	.L2762
	movl	12(%ebp), %eax
	movl	20(%eax), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jne	.L2762
	.loc 1 5998 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
	jmp	.L2761
.L2762:
	.loc 1 6000 0
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
	call	dubious_conversion_warnings@PLT
	movl	%eax, 12(%ebp)
	.loc 1 6003 0
	cmpl	$6, -8(%ebp)
	jne	.L2765
	.loc 1 6005 0
	leal	.LC9@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 6006 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
	jmp	.L2761
.L2765:
	.loc 1 6010 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$33, %al
	jne	.L2767
	.loc 1 6011 0
	movl	12(%ebp), %eax
	movl	68(%eax), %eax
	movl	%eax, 12(%ebp)
.L2767:
	.loc 1 6031 0
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	can_convert_arg_bad@PLT
	testl	%eax, %eax
	jne	.L2769
	.loc 1 6036 0
	movl	warn_pmf2ptr@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L2771
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L2771
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$15, %al
	je	.L2771
	movl	-12(%ebp), %edx
	movzbl	8(%edx), %eax
	cmpb	$21, %al
	jne	.L2771
	movl	-12(%ebp), %edx
	movl	92(%edx), %eax
	testl	%eax, %eax
	je	.L2771
	movl	-12(%ebp), %edx
	movl	92(%edx), %eax
	movzbl	8(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L2771
	.loc 1 6039 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	strip_top_quals@PLT
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	cp_convert@PLT
	movl	%eax, 12(%ebp)
	.loc 1 6036 0
	jmp	.L2769
.L2771:
	.loc 1 6045 0
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	116(%eax), %eax
	cmpl	-12(%ebp), %eax
	jne	.L2778
	.loc 1 6046 0
	movl	$3, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	instantiate_type@PLT
	jmp	.L2780
.L2778:
	.loc 1 6047 0
	cmpl	$0, 20(%ebp)
	je	.L2781
	.loc 1 6048 0
	movl	20(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC144@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	jmp	.L2780
.L2781:
	.loc 1 6051 0
	movl	16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-12(%ebp), %edx
	movl	%edx, 4(%esp)
	leal	.LC145@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L2780:
	.loc 1 6053 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
	jmp	.L2761
.L2769:
	.loc 1 6056 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	strip_top_quals@PLT
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	perform_implicit_conversion@PLT
	movl	%eax, -16(%ebp)
.L2761:
	movl	-16(%ebp), %eax
	.loc 1 6057 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE86:
	.size	convert_for_assignment, .-convert_for_assignment
	.section	.rodata
	.align 4
.LC146:
	.string	"in passing argument %P of `%+D'"
	.text
.globl convert_for_initialization
	.type	convert_for_initialization, @function
convert_for_initialization:
.LFB87:
	.loc 1 6082 0
	pushl	%ebp
.LCFI302:
	movl	%esp, %ebp
.LCFI303:
	pushl	%ebx
.LCFI304:
	subl	$52, %esp
.LCFI305:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 6083 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -28(%ebp)
	.loc 1 6089 0
	movl	16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$117, %al
	jne	.L2785
	movl	16(%ebp), %eax
	movl	4(%eax), %edx
	movl	16(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	jne	.L2785
	cmpl	$16, -28(%ebp)
	je	.L2785
	.loc 1 6092 0
	movl	16(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 16(%ebp)
.L2785:
	.loc 1 6094 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	16(%ebp), %eax
	je	.L2789
	movl	16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$3, %al
	jne	.L2791
	movl	16(%ebp), %eax
	movl	20(%eax), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jne	.L2791
.L2789:
	.loc 1 6096 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
	jmp	.L2793
.L2791:
	.loc 1 6098 0
	movl	16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-77, %al
	jne	.L2794
	.loc 1 6100 0
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	resolve_offset_ref@PLT
	movl	%eax, 16(%ebp)
	.loc 1 6101 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	16(%ebp), %eax
	jne	.L2794
	.loc 1 6102 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
	jmp	.L2793
.L2794:
	.loc 1 6105 0
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$16, %al
	jne	.L2797
	.loc 1 6106 0
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	convert_from_reference@PLT
	movl	%eax, 16(%ebp)
.L2797:
	.loc 1 6108 0
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$19, %al
	jne	.L2799
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$19, %al
	je	.L2799
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$16, %al
	jne	.L2802
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$19, %al
	jne	.L2802
.L2799:
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$24, %al
	jne	.L2804
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$16, %al
	jne	.L2802
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$24, %al
	jne	.L2802
.L2804:
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$17, %al
	jne	.L2807
.L2802:
	.loc 1 6116 0
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	default_conversion@PLT
	movl	%eax, 16(%ebp)
.L2807:
	.loc 1 6118 0
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 6119 0
	movl	-24(%ebp), %edx
	movzbl	8(%edx), %eax
	movzbl	%al, %eax
	.loc 1 6121 0
	testl	%eax, %eax
	jne	.L2808
	.loc 1 6122 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
	jmp	.L2793
.L2808:
	.loc 1 6127 0
	cmpl	$16, -28(%ebp)
	jne	.L2810
.LBB89:
	.loc 1 6130 0
	movl	$0, -12(%ebp)
	movl	$0, -8(%ebp)
	.loc 1 6132 0
	cmpl	$0, 28(%ebp)
	je	.L2812
	.loc 1 6133 0
	movl	global_dc@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	224(%eax), %eax
	movl	%eax, -12(%ebp)
	movl	global_dc@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	220(%eax), %eax
	movl	%eax, -8(%ebp)
.L2812:
	.loc 1 6134 0
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	initialize_reference@PLT
	movl	%eax, 16(%ebp)
	.loc 1 6136 0
	cmpl	$0, 28(%ebp)
	je	.L2814
	.loc 1 6138 0
	movl	global_dc@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	224(%eax), %eax
	cmpl	-12(%ebp), %eax
	jle	.L2816
	.loc 1 6139 0
	movl	28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	32(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC146@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	cp_warning_at@PLT
	jmp	.L2814
.L2816:
	.loc 1 6140 0
	movl	global_dc@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	220(%eax), %eax
	cmpl	-8(%ebp), %eax
	jle	.L2814
	.loc 1 6141 0
	movl	28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	32(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC146@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	cp_error_at@PLT
.L2814:
	.loc 1 6143 0
	movl	16(%ebp), %eax
	movl	%eax, -32(%ebp)
	jmp	.L2793
.L2810:
.LBE89:
	.loc 1 6146 0
	cmpl	$0, 8(%ebp)
	je	.L2819
	.loc 1 6147 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	require_complete_type@PLT
	movl	%eax, 8(%ebp)
.L2819:
	.loc 1 6148 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L2821
	.loc 1 6149 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
	jmp	.L2793
.L2821:
	.loc 1 6151 0
	movl	-24(%ebp), %edx
	movzbl	8(%edx), %eax
	cmpb	$16, %al
	jne	.L2823
.L2823:
	.loc 1 6154 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	complete_type@PLT
	movl	%eax, 12(%ebp)
	.loc 1 6156 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L2825
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L2825
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L2825
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L2825
	movl	12(%ebp), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L2830
.L2825:
	.loc 1 6157 0
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$65, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	ocp_convert@PLT
	movl	%eax, -32(%ebp)
	jmp	.L2793
.L2830:
	.loc 1 6159 0
	movl	32(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	convert_for_assignment
	movl	%eax, -32(%ebp)
.L2793:
	movl	-32(%ebp), %eax
	.loc 1 6160 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE87:
	.size	convert_for_initialization, .-convert_for_initialization
	.section	.rodata
.LC147:
	.string	"modification by `asm'"
	.text
.globl c_expand_asm_operands
	.type	c_expand_asm_operands, @function
c_expand_asm_operands:
.LFB88:
	.loc 1 6177 0
	pushl	%ebp
.LCFI306:
	movl	%esp, %ebp
.LCFI307:
	pushl	%esi
.LCFI308:
	pushl	%ebx
.LCFI309:
	subl	$80, %esp
.LCFI310:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	movl	%eax, -28(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -32(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, -36(%ebp)
	movl	20(%ebp), %eax
	movl	%eax, -40(%ebp)
	movl	28(%ebp), %eax
	movl	%eax, -44(%ebp)
	.loc 1 6177 0
	movl	%gs:20, %eax
	movl	%eax, -12(%ebp)
	xorl	%eax, %eax
	.loc 1 6178 0
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	list_length@PLT
	movl	%eax, -20(%ebp)
	.loc 1 6181 0
	movl	-20(%ebp), %eax
	sall	$2, %eax
	addl	$15, %eax
	addl	$15, %eax
	shrl	$4, %eax
	sall	$4, %eax
	subl	%eax, %esp
	leal	28(%esp), %edx
	movl	%edx, -60(%ebp)
	movl	-60(%ebp), %eax
	addl	$15, %eax
	shrl	$4, %eax
	sall	$4, %eax
	movl	%eax, -60(%ebp)
	movl	-60(%ebp), %ecx
	movl	%ecx, -52(%ebp)
	.loc 1 6185 0
	movl	$0, -56(%ebp)
	movl	-32(%ebp), %eax
	movl	%eax, -48(%ebp)
	jmp	.L2833
.L2834:
	.loc 1 6186 0
	movl	-56(%ebp), %eax
	sall	$2, %eax
	movl	-52(%ebp), %ecx
	leal	(%eax,%ecx), %edx
	movl	-48(%ebp), %ecx
	movl	20(%ecx), %eax
	movl	%eax, (%edx)
	.loc 1 6185 0
	movl	-48(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -48(%ebp)
	addl	$1, -56(%ebp)
.L2833:
	cmpl	$0, -48(%ebp)
	jne	.L2834
	.loc 1 6191 0
	movl	32(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_asm_operands@PLT
	.loc 1 6194 0
	movl	$0, -56(%ebp)
	movl	-32(%ebp), %edx
	movl	%edx, -48(%ebp)
	jmp	.L2836
.L2837:
	.loc 1 6196 0
	movl	-56(%ebp), %eax
	sall	$2, %eax
	addl	-52(%ebp), %eax
	movl	(%eax), %edx
	movl	-48(%ebp), %ecx
	movl	20(%ecx), %eax
	cmpl	%eax, %edx
	je	.L2838
	.loc 1 6198 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %esi
	movl	-48(%ebp), %eax
	movl	20(%eax), %edx
	movl	-56(%ebp), %eax
	sall	$2, %eax
	addl	-52(%ebp), %eax
	movl	(%eax), %eax
	movl	%edx, 8(%esp)
	movl	$117, 4(%esp)
	movl	%eax, (%esp)
	call	build_modify_expr@PLT
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	call	expand_expr@PLT
	.loc 1 6200 0
	call	free_temp_slots@PLT
	.loc 1 6204 0
	movl	-56(%ebp), %eax
	sall	$2, %eax
	addl	-52(%ebp), %eax
	movl	(%eax), %eax
	movl	-48(%ebp), %edx
	movl	%eax, 20(%edx)
	jmp	.L2840
.L2838:
.LBB90:
	.loc 1 6210 0
	movl	-56(%ebp), %eax
	sall	$2, %eax
	addl	-52(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 6211 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-16(%ebp), %eax
	je	.L2840
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	cp_type_quals@PLT
	andl	$1, %eax
	testb	%al, %al
	jne	.L2842
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	je	.L2844
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	jne	.L2840
.L2844:
	movl	-16(%ebp), %eax
	movzbl	39(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L2840
.L2842:
	.loc 1 6215 0
	movl	-56(%ebp), %eax
	sall	$2, %eax
	addl	-52(%ebp), %eax
	movl	(%eax), %edx
	movl	$1, 8(%esp)
	leal	.LC147@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	readonly_error@PLT
.L2840:
.LBE90:
	.loc 1 6194 0
	movl	-48(%ebp), %ecx
	movl	(%ecx), %ecx
	movl	%ecx, -48(%ebp)
	addl	$1, -56(%ebp)
.L2836:
	cmpl	$0, -48(%ebp)
	jne	.L2837
	.loc 1 6220 0
	call	emit_queue@PLT
	.loc 1 6221 0
	movl	-12(%ebp), %eax
	xorl	%gs:20, %eax
	je	.L2848
	call	__stack_chk_fail_local
.L2848:
	leal	-8(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE88:
	.size	c_expand_asm_operands, .-c_expand_asm_operands
	.section	.rodata
	.align 4
.LC148:
	.string	"returning reference to temporary"
.LC149:
	.string	"_.tmp_"
	.align 4
.LC150:
	.string	"reference to non-lvalue returned"
	.align 4
.LC151:
	.string	"reference to local variable `%D' returned"
	.align 4
.LC152:
	.string	"address of local variable `%D' returned"
	.text
	.type	maybe_warn_about_returning_address_of_local, @function
maybe_warn_about_returning_address_of_local:
.LFB89:
	.loc 1 6229 0
	pushl	%ebp
.LCFI311:
	movl	%esp, %ebp
.LCFI312:
	pushl	%edi
.LCFI313:
	pushl	%esi
.LCFI314:
	pushl	%ebx
.LCFI315:
	subl	$44, %esp
.LCFI316:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 6230 0
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	64(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 6231 0
	movl	8(%ebp), %eax
	movl	%eax, -16(%ebp)
	jmp	.L2878
.L2850:
.L2878:
	.loc 1 6235 0
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$48, %al
	jne	.L2851
	.loc 1 6236 0
	movl	-16(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -16(%ebp)
	jmp	.L2850
.L2851:
	.loc 1 6237 0
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$116, %al
	je	.L2854
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$118, %al
	je	.L2854
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$117, %al
	jne	.L2857
.L2854:
	.loc 1 6240 0
	movl	-16(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 6243 0
	jmp	.L2850
.L2857:
	.loc 1 6245 0
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$123, %al
	jne	.L2877
	.loc 1 6247 0
	movl	-16(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 6249 0
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$16, %al
	jne	.L2860
	.loc 1 6251 0
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-68, %al
	je	.L2862
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$51, %al
	jne	.L2864
.L2862:
	.loc 1 6255 0
	movl	-16(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 6256 0
	leal	.LC148@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
	.loc 1 6257 0
	jmp	.L2877
.L2864:
	.loc 1 6259 0
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$35, %al
	jne	.L2860
	movl	-16(%ebp), %eax
	movl	52(%eax), %eax
	testl	%eax, %eax
	je	.L2860
	movl	-16(%ebp), %eax
	movl	52(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -32(%ebp)
	leal	.LC149@GOTOFF(%ebx), %eax
	movl	%eax, -36(%ebp)
	movl	$6, -40(%ebp)
	cld
	movl	-32(%ebp), %esi
	movl	-36(%ebp), %edi
	movl	-40(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L2860
	.loc 1 6263 0
	leal	.LC150@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
	.loc 1 6264 0
	jmp	.L2877
.L2860:
	.loc 1 6268 0
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$35, %al
	jne	.L2877
	movl	-16(%ebp), %eax
	movl	52(%eax), %eax
	testl	%eax, %eax
	je	.L2877
	movl	-16(%ebp), %eax
	movl	56(%eax), %eax
	testl	%eax, %eax
	je	.L2877
	movl	-16(%ebp), %eax
	movl	56(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	jne	.L2877
	movl	-16(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L2877
	movl	-16(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L2877
	.loc 1 6274 0
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$16, %al
	jne	.L2874
	.loc 1 6275 0
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC151@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	cp_warning_at@PLT
	jmp	.L2877
.L2874:
	.loc 1 6278 0
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC152@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	cp_warning_at@PLT
.L2877:
	.loc 1 6282 0
	addl	$44, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE89:
	.size	maybe_warn_about_returning_address_of_local, .-maybe_warn_about_returning_address_of_local
	.section	.rodata
	.type	__FUNCTION__.23512, @object
	.size	__FUNCTION__.23512, 18
__FUNCTION__.23512:
	.string	"check_return_expr"
	.align 4
.LC153:
	.string	"function declared `noreturn' has a `return' statement"
	.align 4
.LC154:
	.string	"returning a value from a destructor"
	.align 4
.LC155:
	.string	"cannot return from a handler of a function-try-block of a constructor"
	.align 4
.LC156:
	.string	"returning a value from a constructor"
	.align 4
.LC157:
	.string	"return-statement with no value, in function declared with a non-void return type"
	.align 4
.LC158:
	.string	"return-statement with a value, in function declared with a void return type"
	.align 4
.LC159:
	.string	"`operator new' must not return NULL unless it is declared `throw()' (or -fcheck-new is in effect)"
	.align 4
.LC160:
	.string	"`operator=' should return a reference to `*this'"
.LC161:
	.string	"return"
	.text
.globl check_return_expr
	.type	check_return_expr, @function
check_return_expr:
.LFB90:
	.loc 1 6292 0
	pushl	%ebp
.LCFI317:
	movl	%esp, %ebp
.LCFI318:
	pushl	%ebx
.LCFI319:
	subl	$52, %esp
.LCFI320:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 6302 0
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	movzbl	9(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L2880
	.loc 1 6303 0
	leal	.LC153@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
.L2880:
	.loc 1 6306 0
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	136(%eax), %eax
	movzbl	5(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L2882
	.loc 1 6308 0
	cmpl	$0, 8(%ebp)
	je	.L2884
	.loc 1 6309 0
	leal	.LC154@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L2884:
	.loc 1 6310 0
	movl	$0, -28(%ebp)
	jmp	.L2886
.L2882:
	.loc 1 6312 0
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	136(%eax), %eax
	movzbl	5(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L2887
	.loc 1 6314 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	288(%eax), %eax
	movl	60(%eax), %eax
	testl	%eax, %eax
	je	.L2889
	.loc 1 6317 0
	leal	.LC155@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	jmp	.L2891
.L2889:
	.loc 1 6318 0
	cmpl	$0, 8(%ebp)
	je	.L2891
	.loc 1 6320 0
	leal	.LC156@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L2891:
	.loc 1 6321 0
	movl	$0, -28(%ebp)
	jmp	.L2886
.L2887:
	.loc 1 6326 0
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	64(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 6327 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 6328 0
	cmpl	$0, -16(%ebp)
	jne	.L2893
	leal	__FUNCTION__.23512@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$6328, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L2893:
	.loc 1 6329 0
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$6, %al
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -12(%ebp)
	.loc 1 6330 0
	cmpl	$0, 8(%ebp)
	jne	.L2895
	movl	-20(%ebp), %eax
	movl	52(%eax), %eax
	testl	%eax, %eax
	je	.L2895
	cmpl	$0, -12(%ebp)
	je	.L2895
	.loc 1 6331 0
	movl	-20(%ebp), %eax
	movl	%eax, 8(%ebp)
.L2895:
	.loc 1 6335 0
	cmpl	$0, 8(%ebp)
	jne	.L2899
	cmpl	$0, -12(%ebp)
	je	.L2899
	.loc 1 6337 0
	leal	.LC157@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	pedwarn@PLT
	.loc 1 6341 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	288(%eax), %eax
	movl	$0, 52(%eax)
	.loc 1 6335 0
	jmp	.L2902
.L2899:
	.loc 1 6345 0
	cmpl	$0, 8(%ebp)
	je	.L2903
	cmpl	$0, -12(%ebp)
	jne	.L2903
	.loc 1 6347 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$6, %al
	jne	.L2906
	.loc 1 6351 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	finish_expr_stmt@PLT
	jmp	.L2908
.L2906:
	.loc 1 6353 0
	leal	.LC158@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	pedwarn@PLT
.L2908:
	.loc 1 6355 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	288(%eax), %eax
	movl	$1, 52(%eax)
	.loc 1 6358 0
	movl	$0, -28(%ebp)
	jmp	.L2886
.L2903:
	.loc 1 6360 0
	cmpl	$0, 8(%ebp)
	jne	.L2909
	.loc 1 6363 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	288(%eax), %eax
	movl	$1, 52(%eax)
	jmp	.L2902
.L2909:
	.loc 1 6366 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	288(%eax), %eax
	movl	$1, 48(%eax)
.L2902:
	.loc 1 6369 0
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	52(%eax), %eax
	movzbl	11(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L2911
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	136(%eax), %eax
	movl	40(%eax), %eax
	cmpl	$181, %eax
	je	.L2913
.L2911:
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	52(%eax), %eax
	movzbl	11(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L2914
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	136(%eax), %eax
	movl	40(%eax), %eax
	cmpl	$182, %eax
	jne	.L2914
.L2913:
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	76(%eax), %eax
	testl	%eax, %eax
	je	.L2916
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	76(%eax), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L2914
.L2916:
	movl	flag_check_new@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L2914
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	null_ptr_cst_p@PLT
	testl	%eax, %eax
	je	.L2914
	.loc 1 6374 0
	leal	.LC159@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
.L2914:
	.loc 1 6377 0
	movl	warn_ecpp@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2920
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	52(%eax), %edx
	movl	assignment_operator_name_info@GOT(%ebx), %eax
	movl	1872(%eax), %eax
	cmpl	%eax, %edx
	jne	.L2920
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2923
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	288(%eax), %eax
	movl	28(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L2925
.L2923:
	movl	$0, -24(%ebp)
.L2925:
	movl	-24(%ebp), %eax
	cmpl	8(%ebp), %eax
	je	.L2920
	.loc 1 6380 0
	leal	.LC160@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
.L2920:
	.loc 1 6402 0
	cmpl	$0, -12(%ebp)
	je	.L2927
	movl	flag_elide_constructors@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2927
	.loc 1 6404 0
	cmpl	$0, 8(%ebp)
	je	.L2930
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	288(%eax), %eax
	movl	44(%eax), %eax
	testl	%eax, %eax
	je	.L2932
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	288(%eax), %eax
	movl	44(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L2930
.L2932:
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$35, %al
	jne	.L2930
	movl	8(%ebp), %eax
	movl	56(%eax), %edx
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jne	.L2930
	movl	8(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L2930
	movl	8(%ebp), %eax
	movl	40(%eax), %eax
	andl	$16777215, %eax
	movl	%eax, %edx
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	64(%eax), %eax
	movl	40(%eax), %eax
	andl	$16777215, %eax
	cmpl	%eax, %edx
	jl	.L2930
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	72(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	72(%eax), %eax
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	comptypes@PLT
	testl	%eax, %eax
	je	.L2930
	.loc 1 6417 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	288(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 44(%edx)
	.loc 1 6420 0
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	136(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 36(%edx)
	.loc 1 6404 0
	jmp	.L2927
.L2930:
	.loc 1 6425 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	288(%eax), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 44(%edx)
	.loc 1 6429 0
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	136(%eax), %eax
	movl	$0, 36(%eax)
.L2927:
	.loc 1 6436 0
	cmpl	$0, 8(%ebp)
	je	.L2939
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L2941
.L2939:
	.loc 1 6437 0
	movl	8(%ebp), %eax
	movl	%eax, -28(%ebp)
	jmp	.L2886
.L2941:
	.loc 1 6440 0
	movl	8(%ebp), %eax
	cmpl	-20(%ebp), %eax
	je	.L2942
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	136(%eax), %eax
	movzbl	5(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	jne	.L2942
.LBB91:
	.loc 1 6446 0
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 6451 0
	movl	$0, 24(%esp)
	movl	$0, 20(%esp)
	leal	.LC161@GOTOFF(%ebx), %eax
	movl	%eax, 16(%esp)
	movl	$131, 12(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	convert_for_initialization@PLT
	movl	%eax, 8(%ebp)
	.loc 1 6454 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, 8(%ebp)
	.loc 1 6457 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L2945
	.loc 1 6458 0
	movl	8(%ebp), %eax
	movl	%eax, -28(%ebp)
	jmp	.L2886
.L2945:
	.loc 1 6460 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movzbl	296(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L2947
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$51, %al
	jne	.L2947
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-68, %al
	jne	.L2947
	.loc 1 6463 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %ecx
	movl	%edx, 12(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	$48, (%esp)
	call	build@PLT
	movl	%eax, 8(%ebp)
	.loc 1 6460 0
	jmp	.L2942
.L2947:
	.loc 1 6466 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	maybe_warn_about_returning_address_of_local
.L2942:
.LBE91:
	.loc 1 6470 0
	cmpl	$0, 8(%ebp)
	je	.L2951
	movl	8(%ebp), %eax
	cmpl	-20(%ebp), %eax
	je	.L2951
	.loc 1 6471 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$50, (%esp)
	call	build@PLT
	movl	%eax, 8(%ebp)
.L2951:
	.loc 1 6473 0
	movl	8(%ebp), %eax
	movl	%eax, -28(%ebp)
.L2886:
	movl	-28(%ebp), %eax
	.loc 1 6474 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE90:
	.size	check_return_expr, .-check_return_expr
	.type	comp_ptr_ttypes_real, @function
comp_ptr_ttypes_real:
.LFB91:
	.loc 1 6489 0
	pushl	%ebp
.LCFI321:
	movl	%esp, %ebp
.LCFI322:
	pushl	%ebx
.LCFI323:
	subl	$36, %esp
.LCFI324:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 6490 0
	movl	$0, -8(%ebp)
.L2956:
	.loc 1 6494 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %edx
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	%al, %dl
	je	.L2957
	.loc 1 6495 0
	movl	$0, -28(%ebp)
	jmp	.L2959
.L2957:
	.loc 1 6497 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$15, %al
	jne	.L2960
	movl	8(%ebp), %eax
	movl	64(%eax), %edx
	movl	12(%ebp), %eax
	movl	64(%eax), %eax
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	comptypes@PLT
	testl	%eax, %eax
	jne	.L2962
.L2960:
	.loc 1 6504 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$24, %al
	je	.L2963
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$17, %al
	je	.L2963
	.loc 1 6506 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	at_least_as_qualified_p@PLT
	testl	%eax, %eax
	jne	.L2966
	.loc 1 6507 0
	movl	$0, -28(%ebp)
	jmp	.L2959
.L2966:
	.loc 1 6509 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	at_least_as_qualified_p@PLT
	testl	%eax, %eax
	jne	.L2968
	.loc 1 6511 0
	cmpl	$0, 16(%ebp)
	jne	.L2970
	.loc 1 6512 0
	movl	$0, -28(%ebp)
	jmp	.L2959
.L2970:
	.loc 1 6514 0
	addl	$1, -8(%ebp)
.L2968:
	.loc 1 6517 0
	cmpl	$0, 16(%ebp)
	jle	.L2963
	.loc 1 6518 0
	movl	8(%ebp), %eax
	movzbl	9(%eax), %eax
	shrb	$4, %al
	andl	$1, %eax
	movzbl	%al, %eax
	andl	%eax, 16(%ebp)
.L2963:
	.loc 1 6521 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	je	.L2962
	.loc 1 6522 0
	movl	12(%ebp), %eax
	movl	72(%eax), %edx
	movl	8(%ebp), %eax
	movl	72(%eax), %eax
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	comptypes@PLT
	testl	%eax, %eax
	je	.L2974
	cmpl	$0, 16(%ebp)
	jns	.L2976
	cmpl	$0, -8(%ebp)
	je	.L2974
.L2976:
	movl	$1, -24(%ebp)
	jmp	.L2978
.L2974:
	movl	$0, -24(%ebp)
.L2978:
	movl	-24(%ebp), %eax
	movl	%eax, -28(%ebp)
	jmp	.L2959
.L2962:
	.loc 1 6492 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 8(%ebp)
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 12(%ebp)
	.loc 1 6525 0
	jmp	.L2956
.L2959:
	movl	-28(%ebp), %eax
	.loc 1 6526 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE91:
	.size	comp_ptr_ttypes_real, .-comp_ptr_ttypes_real
.globl comp_ptr_ttypes
	.type	comp_ptr_ttypes, @function
comp_ptr_ttypes:
.LFB92:
	.loc 1 6535 0
	pushl	%ebp
.LCFI325:
	movl	%esp, %ebp
.LCFI326:
	subl	$24, %esp
.LCFI327:
	.loc 1 6536 0
	movl	$1, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	comp_ptr_ttypes_real
	.loc 1 6537 0
	leave
	ret
.LFE92:
	.size	comp_ptr_ttypes, .-comp_ptr_ttypes
.globl ptr_reasonably_similar
	.type	ptr_reasonably_similar, @function
ptr_reasonably_similar:
.LFB93:
	.loc 1 6545 0
	pushl	%ebp
.LCFI328:
	movl	%esp, %ebp
.LCFI329:
	pushl	%ebx
.LCFI330:
	subl	$20, %esp
.LCFI331:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
.L2983:
	.loc 1 6549 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$6, %al
	je	.L2984
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$6, %al
	jne	.L2986
.L2984:
	.loc 1 6551 0
	movl	$1, -8(%ebp)
	jmp	.L2987
.L2986:
	.loc 1 6553 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %edx
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	%al, %dl
	je	.L2988
	.loc 1 6554 0
	movl	$0, -8(%ebp)
	jmp	.L2987
.L2988:
	.loc 1 6556 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$15, %al
	jne	.L2990
	movl	12(%ebp), %eax
	movl	64(%eax), %edx
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	movl	$3, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	comptypes@PLT
	testl	%eax, %eax
	jne	.L2992
.L2990:
	.loc 1 6562 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$7, %al
	jne	.L2993
	movl	8(%ebp), %eax
	movzwl	36(%eax), %edx
	andw	$511, %dx
	movl	12(%ebp), %eax
	movzwl	36(%eax), %eax
	andw	$511, %ax
	cmpw	%ax, %dx
	jne	.L2993
	.loc 1 6564 0
	movl	$1, -8(%ebp)
	jmp	.L2987
.L2993:
	.loc 1 6566 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$24, %al
	jne	.L2996
	.loc 1 6567 0
	movl	$1, -8(%ebp)
	jmp	.L2987
.L2996:
	.loc 1 6569 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	je	.L2992
	.loc 1 6570 0
	movl	12(%ebp), %eax
	movl	72(%eax), %edx
	movl	8(%ebp), %eax
	movl	72(%eax), %eax
	movl	$3, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	comptypes@PLT
	movl	%eax, -8(%ebp)
	jmp	.L2987
.L2992:
	.loc 1 6546 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 8(%ebp)
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 12(%ebp)
	.loc 1 6573 0
	jmp	.L2983
.L2987:
	movl	-8(%ebp), %eax
	.loc 1 6574 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE93:
	.size	ptr_reasonably_similar, .-ptr_reasonably_similar
	.type	comp_ptr_ttypes_const, @function
comp_ptr_ttypes_const:
.LFB94:
	.loc 1 6581 0
	pushl	%ebp
.LCFI332:
	movl	%esp, %ebp
.LCFI333:
	pushl	%ebx
.LCFI334:
	subl	$20, %esp
.LCFI335:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
.L3001:
	.loc 1 6584 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %edx
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	%al, %dl
	je	.L3002
	.loc 1 6585 0
	movl	$0, -8(%ebp)
	jmp	.L3004
.L3002:
	.loc 1 6587 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$15, %al
	jne	.L3005
	movl	8(%ebp), %eax
	movl	64(%eax), %edx
	movl	12(%ebp), %eax
	movl	64(%eax), %eax
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	comptypes@PLT
	testl	%eax, %eax
	jne	.L3007
.L3005:
	.loc 1 6592 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	je	.L3007
	.loc 1 6593 0
	movl	12(%ebp), %eax
	movl	72(%eax), %edx
	movl	8(%ebp), %eax
	movl	72(%eax), %eax
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	comptypes@PLT
	movl	%eax, -8(%ebp)
	jmp	.L3004
.L3007:
	.loc 1 6582 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 8(%ebp)
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 12(%ebp)
	.loc 1 6594 0
	jmp	.L3001
.L3004:
	movl	-8(%ebp), %eax
	.loc 1 6595 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE94:
	.size	comp_ptr_ttypes_const, .-comp_ptr_ttypes_const
	.type	comp_ptr_ttypes_reinterpret, @function
comp_ptr_ttypes_reinterpret:
.LFB95:
	.loc 1 6602 0
	pushl	%ebp
.LCFI336:
	movl	%esp, %ebp
.LCFI337:
	pushl	%ebx
.LCFI338:
	subl	$36, %esp
.LCFI339:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 6603 0
	movl	$1, -8(%ebp)
.L3011:
	.loc 1 6607 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$15, %al
	jne	.L3012
	.loc 1 6608 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 12(%ebp)
.L3012:
	.loc 1 6609 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$15, %al
	jne	.L3014
	.loc 1 6610 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 8(%ebp)
.L3014:
	.loc 1 6614 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$24, %al
	je	.L3016
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$17, %al
	je	.L3016
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$24, %al
	je	.L3016
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$17, %al
	je	.L3016
	.loc 1 6617 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	at_least_as_qualified_p@PLT
	testl	%eax, %eax
	jne	.L3021
	.loc 1 6618 0
	movl	$0, -24(%ebp)
	jmp	.L3023
.L3021:
	.loc 1 6620 0
	cmpl	$0, -8(%ebp)
	jne	.L3024
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	at_least_as_qualified_p@PLT
	testl	%eax, %eax
	jne	.L3024
	.loc 1 6622 0
	movl	$0, -24(%ebp)
	jmp	.L3023
.L3024:
	.loc 1 6623 0
	movl	8(%ebp), %eax
	movzbl	9(%eax), %eax
	shrb	$4, %al
	andl	$1, %eax
	movzbl	%al, %eax
	andl	%eax, -8(%ebp)
.L3016:
	.loc 1 6626 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L3027
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	je	.L3029
.L3027:
	.loc 1 6628 0
	movl	$1, -24(%ebp)
	jmp	.L3023
.L3029:
	.loc 1 6605 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 8(%ebp)
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 12(%ebp)
	.loc 1 6629 0
	jmp	.L3011
.L3023:
	movl	-24(%ebp), %eax
	.loc 1 6630 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE95:
	.size	comp_ptr_ttypes_reinterpret, .-comp_ptr_ttypes_reinterpret
.globl cp_type_quals
	.type	cp_type_quals, @function
cp_type_quals:
.LFB96:
	.loc 1 6638 0
	pushl	%ebp
.LCFI340:
	movl	%esp, %ebp
.LCFI341:
	pushl	%ebx
.LCFI342:
	subl	$20, %esp
.LCFI343:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 6639 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	strip_array_types@PLT
	movl	%eax, 8(%ebp)
	.loc 1 6640 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L3032
	.loc 1 6641 0
	movl	$0, -16(%ebp)
	jmp	.L3034
.L3032:
	.loc 1 6642 0
	movl	8(%ebp), %eax
	movzbl	9(%eax), %eax
	shrb	$4, %al
	andl	$1, %eax
	movzbl	%al, %edx
	movl	8(%ebp), %eax
	movzbl	9(%eax), %eax
	shrb	$3, %al
	andl	$1, %eax
	movzbl	%al, %eax
	addl	%eax, %eax
	orl	%eax, %edx
	movl	8(%ebp), %eax
	movzbl	38(%eax), %eax
	shrb	$5, %al
	andl	$1, %eax
	movzbl	%al, %eax
	sall	$2, %eax
	movl	%edx, %ecx
	orl	%eax, %ecx
	movl	%ecx, -12(%ebp)
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	jne	.L3035
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L3035
	movl	$1, -8(%ebp)
	jmp	.L3038
.L3035:
	movl	$0, -8(%ebp)
.L3038:
	movl	-8(%ebp), %eax
	sall	$3, %eax
	movl	-12(%ebp), %edx
	orl	%eax, %edx
	movl	%edx, -16(%ebp)
.L3034:
	movl	-16(%ebp), %eax
	.loc 1 6643 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE96:
	.size	cp_type_quals, .-cp_type_quals
.globl cp_has_mutable_p
	.type	cp_has_mutable_p, @function
cp_has_mutable_p:
.LFB97:
	.loc 1 6650 0
	pushl	%ebp
.LCFI344:
	movl	%esp, %ebp
.LCFI345:
	pushl	%ebx
.LCFI346:
	subl	$20, %esp
.LCFI347:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 6651 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	strip_array_types@PLT
	movl	%eax, 8(%ebp)
	.loc 1 6653 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	je	.L3041
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	jne	.L3043
.L3041:
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L3044
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L3044
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L3044
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L3044
	movl	8(%ebp), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L3043
.L3044:
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	5(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L3043
	movl	$1, -8(%ebp)
	jmp	.L3050
.L3043:
	movl	$0, -8(%ebp)
.L3050:
	movl	-8(%ebp), %eax
	.loc 1 6654 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE97:
	.size	cp_has_mutable_p, .-cp_has_mutable_p
	.type	casts_away_constness_r, @function
casts_away_constness_r:
.LFB98:
	.loc 1 6664 0
	pushl	%ebp
.LCFI348:
	movl	%esp, %ebp
.LCFI349:
	pushl	%ebx
.LCFI350:
	subl	$36, %esp
.LCFI351:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 6674 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L3053
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$15, %al
	jne	.L3053
	.loc 1 6675 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	build_pointer_type@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
.L3053:
	.loc 1 6676 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L3056
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$15, %al
	jne	.L3056
	.loc 1 6677 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	build_pointer_type@PLT
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
.L3056:
	.loc 1 6697 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L3059
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	je	.L3061
.L3059:
	.loc 1 6700 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	cp_type_quals@PLT
	movl	%eax, %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	128(%eax), %eax
	movl	$3, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	cp_build_qualified_type_real@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 6702 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	cp_type_quals@PLT
	movl	%eax, %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	128(%eax), %eax
	movl	$3, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	cp_build_qualified_type_real@PLT
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 6704 0
	jmp	.L3063
.L3061:
	.loc 1 6707 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	cp_type_quals@PLT
	movl	%eax, -12(%ebp)
	.loc 1 6708 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	cp_type_quals@PLT
	movl	%eax, -8(%ebp)
	.loc 1 6709 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 6710 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 6711 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	casts_away_constness_r
	.loc 1 6712 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	build_pointer_type@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 6713 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	build_pointer_type@PLT
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 6714 0
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	$3, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	cp_build_qualified_type_real@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 6715 0
	movl	12(%ebp), %eax
	movl	(%eax), %edx
	movl	$3, 8(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	cp_build_qualified_type_real@PLT
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
.L3063:
	.loc 1 6716 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE98:
	.size	casts_away_constness_r, .-casts_away_constness_r
	.type	casts_away_constness, @function
casts_away_constness:
.LFB99:
	.loc 1 6725 0
	pushl	%ebp
.LCFI352:
	movl	%esp, %ebp
.LCFI353:
	pushl	%esi
.LCFI354:
	pushl	%ebx
.LCFI355:
	subl	$16, %esp
.LCFI356:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 6726 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$16, %al
	jne	.L3065
	.loc 1 6734 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$16, %al
	jne	.L3067
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
	jmp	.L3069
.L3067:
	movl	8(%ebp), %eax
	movl	%eax, -16(%ebp)
.L3069:
	movl	-16(%ebp), %eax
	movl	%eax, 8(%ebp)
	.loc 1 6736 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	build_pointer_type@PLT
	movl	%eax, %esi
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_pointer_type@PLT
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	call	casts_away_constness
	movl	%eax, -12(%ebp)
	jmp	.L3070
.L3065:
	.loc 1 6740 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L3071
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$15, %al
	jne	.L3071
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L3071
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$15, %al
	jne	.L3071
	.loc 1 6748 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	build_pointer_type@PLT
	movl	%eax, %esi
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	build_pointer_type@PLT
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	call	casts_away_constness
	movl	%eax, -12(%ebp)
	jmp	.L3070
.L3071:
	.loc 1 6754 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L3076
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	je	.L3078
.L3076:
	.loc 1 6756 0
	movl	$0, -12(%ebp)
	jmp	.L3070
.L3078:
	.loc 1 6759 0
	movl	8(%ebp), %eax
	movl	72(%eax), %eax
	movl	%eax, 8(%ebp)
	.loc 1 6760 0
	movl	12(%ebp), %eax
	movl	72(%eax), %eax
	movl	%eax, 12(%ebp)
	.loc 1 6761 0
	leal	12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	8(%ebp), %eax
	movl	%eax, (%esp)
	call	casts_away_constness_r
	.loc 1 6762 0
	movl	8(%ebp), %eax
	movl	12(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	can_convert@PLT
	testl	%eax, %eax
	jne	.L3079
	.loc 1 6763 0
	movl	$1, -12(%ebp)
	jmp	.L3070
.L3079:
	.loc 1 6765 0
	movl	$0, -12(%ebp)
.L3070:
	movl	-12(%ebp), %eax
	.loc 1 6766 0
	addl	$16, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE99:
	.size	casts_away_constness, .-casts_away_constness
	.type	strip_all_pointer_quals, @function
strip_all_pointer_quals:
.LFB100:
	.loc 1 6776 0
	pushl	%ebp
.LCFI357:
	movl	%esp, %ebp
.LCFI358:
	pushl	%ebx
.LCFI359:
	subl	$20, %esp
.LCFI360:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 6777 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L3083
	.loc 1 6778 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	strip_all_pointer_quals
	movl	%eax, (%esp)
	call	build_pointer_type@PLT
	movl	%eax, -8(%ebp)
	jmp	.L3085
.L3083:
	.loc 1 6779 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$15, %al
	jne	.L3086
	.loc 1 6780 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	strip_all_pointer_quals
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	build_offset_type@PLT
	movl	%eax, -8(%ebp)
	jmp	.L3085
.L3086:
	.loc 1 6783 0
	movl	8(%ebp), %eax
	movl	72(%eax), %eax
	movl	%eax, -8(%ebp)
.L3085:
	movl	-8(%ebp), %eax
	.loc 1 6784 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE100:
	.size	strip_all_pointer_quals, .-strip_all_pointer_quals
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
	.byte	0x4
	.long	.LCFI9-.LCFI7
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
	.long	.LCFI10-.LFB18
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
.LEFDE6:
.LSFDE8:
	.long	.LEFDE8-.LASFDE8
.LASFDE8:
	.long	.Lframe0
	.long	.LFB19
	.long	.LFE19-.LFB19
	.byte	0x4
	.long	.LCFI14-.LFB19
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI15-.LCFI14
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
	.long	.LCFI17-.LFB20
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI18-.LCFI17
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI21-.LCFI18
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
	.long	.LCFI22-.LFB21
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
.LEFDE12:
.LSFDE14:
	.long	.LEFDE14-.LASFDE14
.LASFDE14:
	.long	.Lframe0
	.long	.LFB22
	.long	.LFE22-.LFB22
	.byte	0x4
	.long	.LCFI26-.LFB22
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI27-.LCFI26
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
	.long	.LCFI29-.LFB23
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
.LEFDE16:
.LSFDE18:
	.long	.LEFDE18-.LASFDE18
.LASFDE18:
	.long	.Lframe0
	.long	.LFB24
	.long	.LFE24-.LFB24
	.byte	0x4
	.long	.LCFI33-.LFB24
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI34-.LCFI33
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI37-.LCFI34
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
	.long	.LCFI58-.LCFI56
	.byte	0x83
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
	.long	.LCFI59-.LFB30
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
.LEFDE30:
.LSFDE32:
	.long	.LEFDE32-.LASFDE32
.LASFDE32:
	.long	.Lframe0
	.long	.LFB31
	.long	.LFE31-.LFB31
	.byte	0x4
	.long	.LCFI65-.LFB31
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI66-.LCFI65
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI68-.LCFI66
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
	.long	.LCFI69-.LFB32
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI70-.LCFI69
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI73-.LCFI70
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
	.long	.LCFI74-.LFB33
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI75-.LCFI74
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI78-.LCFI75
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
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
	.long	.LCFI79-.LFB34
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI80-.LCFI79
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI83-.LCFI80
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
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
	.long	.LCFI84-.LFB35
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
.LEFDE40:
.LSFDE42:
	.long	.LEFDE42-.LASFDE42
.LASFDE42:
	.long	.Lframe0
	.long	.LFB36
	.long	.LFE36-.LFB36
	.byte	0x4
	.long	.LCFI89-.LFB36
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI90-.LCFI89
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE42:
.LSFDE44:
	.long	.LEFDE44-.LASFDE44
.LASFDE44:
	.long	.Lframe0
	.long	.LFB37
	.long	.LFE37-.LFB37
	.byte	0x4
	.long	.LCFI92-.LFB37
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI93-.LCFI92
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI95-.LCFI93
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
	.long	.LCFI96-.LFB38
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI97-.LCFI96
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI99-.LCFI97
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
	.long	.LCFI100-.LFB39
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI101-.LCFI100
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI103-.LCFI101
	.byte	0x83
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
	.long	.LCFI104-.LFB40
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
.LEFDE50:
.LSFDE52:
	.long	.LEFDE52-.LASFDE52
.LASFDE52:
	.long	.Lframe0
	.long	.LFB41
	.long	.LFE41-.LFB41
	.byte	0x4
	.long	.LCFI108-.LFB41
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI109-.LCFI108
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI111-.LCFI109
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE52:
.LSFDE54:
	.long	.LEFDE54-.LASFDE54
.LASFDE54:
	.long	.Lframe0
	.long	.LFB42
	.long	.LFE42-.LFB42
	.byte	0x4
	.long	.LCFI112-.LFB42
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI113-.LCFI112
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI115-.LCFI113
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE54:
.LSFDE56:
	.long	.LEFDE56-.LASFDE56
.LASFDE56:
	.long	.Lframe0
	.long	.LFB43
	.long	.LFE43-.LFB43
	.byte	0x4
	.long	.LCFI116-.LFB43
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI117-.LCFI116
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI119-.LCFI117
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
	.long	.LCFI120-.LFB44
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI121-.LCFI120
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI123-.LCFI121
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE58:
.LSFDE60:
	.long	.LEFDE60-.LASFDE60
.LASFDE60:
	.long	.Lframe0
	.long	.LFB45
	.long	.LFE45-.LFB45
	.byte	0x4
	.long	.LCFI124-.LFB45
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI125-.LCFI124
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI127-.LCFI125
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE60:
.LSFDE62:
	.long	.LEFDE62-.LASFDE62
.LASFDE62:
	.long	.Lframe0
	.long	.LFB46
	.long	.LFE46-.LFB46
	.byte	0x4
	.long	.LCFI128-.LFB46
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI129-.LCFI128
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI132-.LCFI129
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x3
	.align 4
.LEFDE62:
.LSFDE64:
	.long	.LEFDE64-.LASFDE64
.LASFDE64:
	.long	.Lframe0
	.long	.LFB47
	.long	.LFE47-.LFB47
	.byte	0x4
	.long	.LCFI133-.LFB47
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI134-.LCFI133
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE64:
.LSFDE66:
	.long	.LEFDE66-.LASFDE66
.LASFDE66:
	.long	.Lframe0
	.long	.LFB48
	.long	.LFE48-.LFB48
	.byte	0x4
	.long	.LCFI136-.LFB48
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI137-.LCFI136
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI140-.LCFI137
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x3
	.align 4
.LEFDE66:
.LSFDE68:
	.long	.LEFDE68-.LASFDE68
.LASFDE68:
	.long	.Lframe0
	.long	.LFB49
	.long	.LFE49-.LFB49
	.byte	0x4
	.long	.LCFI141-.LFB49
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI142-.LCFI141
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI144-.LCFI142
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE68:
.LSFDE70:
	.long	.LEFDE70-.LASFDE70
.LASFDE70:
	.long	.Lframe0
	.long	.LFB50
	.long	.LFE50-.LFB50
	.byte	0x4
	.long	.LCFI145-.LFB50
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI146-.LCFI145
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI148-.LCFI146
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE70:
.LSFDE72:
	.long	.LEFDE72-.LASFDE72
.LASFDE72:
	.long	.Lframe0
	.long	.LFB51
	.long	.LFE51-.LFB51
	.byte	0x4
	.long	.LCFI149-.LFB51
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI150-.LCFI149
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI152-.LCFI150
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE72:
.LSFDE74:
	.long	.LEFDE74-.LASFDE74
.LASFDE74:
	.long	.Lframe0
	.long	.LFB52
	.long	.LFE52-.LFB52
	.byte	0x4
	.long	.LCFI153-.LFB52
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI154-.LCFI153
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI156-.LCFI154
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE74:
.LSFDE76:
	.long	.LEFDE76-.LASFDE76
.LASFDE76:
	.long	.Lframe0
	.long	.LFB53
	.long	.LFE53-.LFB53
	.byte	0x4
	.long	.LCFI157-.LFB53
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI158-.LCFI157
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI161-.LCFI158
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x3
	.align 4
.LEFDE76:
.LSFDE78:
	.long	.LEFDE78-.LASFDE78
.LASFDE78:
	.long	.Lframe0
	.long	.LFB54
	.long	.LFE54-.LFB54
	.byte	0x4
	.long	.LCFI162-.LFB54
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI163-.LCFI162
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI165-.LCFI163
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE78:
.LSFDE80:
	.long	.LEFDE80-.LASFDE80
.LASFDE80:
	.long	.Lframe0
	.long	.LFB55
	.long	.LFE55-.LFB55
	.byte	0x4
	.long	.LCFI166-.LFB55
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI167-.LCFI166
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI169-.LCFI167
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE80:
.LSFDE82:
	.long	.LEFDE82-.LASFDE82
.LASFDE82:
	.long	.Lframe0
	.long	.LFB56
	.long	.LFE56-.LFB56
	.byte	0x4
	.long	.LCFI170-.LFB56
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI171-.LCFI170
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI173-.LCFI171
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE82:
.LSFDE84:
	.long	.LEFDE84-.LASFDE84
.LASFDE84:
	.long	.Lframe0
	.long	.LFB57
	.long	.LFE57-.LFB57
	.byte	0x4
	.long	.LCFI174-.LFB57
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI175-.LCFI174
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI177-.LCFI175
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE84:
.LSFDE86:
	.long	.LEFDE86-.LASFDE86
.LASFDE86:
	.long	.Lframe0
	.long	.LFB58
	.long	.LFE58-.LFB58
	.byte	0x4
	.long	.LCFI178-.LFB58
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI179-.LCFI178
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI181-.LCFI179
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE86:
.LSFDE88:
	.long	.LEFDE88-.LASFDE88
.LASFDE88:
	.long	.Lframe0
	.long	.LFB59
	.long	.LFE59-.LFB59
	.byte	0x4
	.long	.LCFI182-.LFB59
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI183-.LCFI182
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI186-.LCFI183
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x3
	.align 4
.LEFDE88:
.LSFDE90:
	.long	.LEFDE90-.LASFDE90
.LASFDE90:
	.long	.Lframe0
	.long	.LFB60
	.long	.LFE60-.LFB60
	.byte	0x4
	.long	.LCFI187-.LFB60
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI188-.LCFI187
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI192-.LCFI188
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE90:
.LSFDE92:
	.long	.LEFDE92-.LASFDE92
.LASFDE92:
	.long	.Lframe0
	.long	.LFB61
	.long	.LFE61-.LFB61
	.byte	0x4
	.long	.LCFI193-.LFB61
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI194-.LCFI193
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI197-.LCFI194
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x3
	.align 4
.LEFDE92:
.LSFDE94:
	.long	.LEFDE94-.LASFDE94
.LASFDE94:
	.long	.Lframe0
	.long	.LFB62
	.long	.LFE62-.LFB62
	.byte	0x4
	.long	.LCFI198-.LFB62
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI199-.LCFI198
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI201-.LCFI199
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE94:
.LSFDE96:
	.long	.LEFDE96-.LASFDE96
.LASFDE96:
	.long	.Lframe0
	.long	.LFB63
	.long	.LFE63-.LFB63
	.byte	0x4
	.long	.LCFI202-.LFB63
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI203-.LCFI202
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI205-.LCFI203
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE96:
.LSFDE98:
	.long	.LEFDE98-.LASFDE98
.LASFDE98:
	.long	.Lframe0
	.long	.LFB64
	.long	.LFE64-.LFB64
	.byte	0x4
	.long	.LCFI206-.LFB64
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI207-.LCFI206
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI209-.LCFI207
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE98:
.LSFDE100:
	.long	.LEFDE100-.LASFDE100
.LASFDE100:
	.long	.Lframe0
	.long	.LFB65
	.long	.LFE65-.LFB65
	.byte	0x4
	.long	.LCFI210-.LFB65
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI211-.LCFI210
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI213-.LCFI211
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE100:
.LSFDE102:
	.long	.LEFDE102-.LASFDE102
.LASFDE102:
	.long	.Lframe0
	.long	.LFB66
	.long	.LFE66-.LFB66
	.byte	0x4
	.long	.LCFI214-.LFB66
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI215-.LCFI214
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI217-.LCFI215
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE102:
.LSFDE104:
	.long	.LEFDE104-.LASFDE104
.LASFDE104:
	.long	.Lframe0
	.long	.LFB67
	.long	.LFE67-.LFB67
	.byte	0x4
	.long	.LCFI218-.LFB67
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI219-.LCFI218
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI221-.LCFI219
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE104:
.LSFDE106:
	.long	.LEFDE106-.LASFDE106
.LASFDE106:
	.long	.Lframe0
	.long	.LFB68
	.long	.LFE68-.LFB68
	.byte	0x4
	.long	.LCFI222-.LFB68
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI223-.LCFI222
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI227-.LCFI223
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE106:
.LSFDE108:
	.long	.LEFDE108-.LASFDE108
.LASFDE108:
	.long	.Lframe0
	.long	.LFB69
	.long	.LFE69-.LFB69
	.byte	0x4
	.long	.LCFI228-.LFB69
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI229-.LCFI228
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI231-.LCFI229
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE108:
.LSFDE110:
	.long	.LEFDE110-.LASFDE110
.LASFDE110:
	.long	.Lframe0
	.long	.LFB70
	.long	.LFE70-.LFB70
	.byte	0x4
	.long	.LCFI232-.LFB70
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI233-.LCFI232
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI235-.LCFI233
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE110:
.LSFDE112:
	.long	.LEFDE112-.LASFDE112
.LASFDE112:
	.long	.Lframe0
	.long	.LFB71
	.long	.LFE71-.LFB71
	.byte	0x4
	.long	.LCFI236-.LFB71
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI237-.LCFI236
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI239-.LCFI237
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE112:
.LSFDE114:
	.long	.LEFDE114-.LASFDE114
.LASFDE114:
	.long	.Lframe0
	.long	.LFB72
	.long	.LFE72-.LFB72
	.byte	0x4
	.long	.LCFI240-.LFB72
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI241-.LCFI240
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI243-.LCFI241
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE114:
.LSFDE116:
	.long	.LEFDE116-.LASFDE116
.LASFDE116:
	.long	.Lframe0
	.long	.LFB73
	.long	.LFE73-.LFB73
	.byte	0x4
	.long	.LCFI244-.LFB73
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI245-.LCFI244
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI247-.LCFI245
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE116:
.LSFDE118:
	.long	.LEFDE118-.LASFDE118
.LASFDE118:
	.long	.Lframe0
	.long	.LFB74
	.long	.LFE74-.LFB74
	.byte	0x4
	.long	.LCFI248-.LFB74
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI249-.LCFI248
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI252-.LCFI249
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x3
	.align 4
.LEFDE118:
.LSFDE120:
	.long	.LEFDE120-.LASFDE120
.LASFDE120:
	.long	.Lframe0
	.long	.LFB75
	.long	.LFE75-.LFB75
	.byte	0x4
	.long	.LCFI253-.LFB75
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI254-.LCFI253
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI256-.LCFI254
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE120:
.LSFDE122:
	.long	.LEFDE122-.LASFDE122
.LASFDE122:
	.long	.Lframe0
	.long	.LFB76
	.long	.LFE76-.LFB76
	.byte	0x4
	.long	.LCFI257-.LFB76
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI258-.LCFI257
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI260-.LCFI258
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE122:
.LSFDE124:
	.long	.LEFDE124-.LASFDE124
.LASFDE124:
	.long	.Lframe0
	.long	.LFB77
	.long	.LFE77-.LFB77
	.byte	0x4
	.long	.LCFI261-.LFB77
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI262-.LCFI261
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI264-.LCFI262
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE124:
.LSFDE126:
	.long	.LEFDE126-.LASFDE126
.LASFDE126:
	.long	.Lframe0
	.long	.LFB78
	.long	.LFE78-.LFB78
	.byte	0x4
	.long	.LCFI265-.LFB78
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI266-.LCFI265
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI269-.LCFI266
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x3
	.align 4
.LEFDE126:
.LSFDE128:
	.long	.LEFDE128-.LASFDE128
.LASFDE128:
	.long	.Lframe0
	.long	.LFB79
	.long	.LFE79-.LFB79
	.byte	0x4
	.long	.LCFI270-.LFB79
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI271-.LCFI270
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI273-.LCFI271
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE128:
.LSFDE130:
	.long	.LEFDE130-.LASFDE130
.LASFDE130:
	.long	.Lframe0
	.long	.LFB80
	.long	.LFE80-.LFB80
	.byte	0x4
	.long	.LCFI274-.LFB80
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI275-.LCFI274
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI277-.LCFI275
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE130:
.LSFDE132:
	.long	.LEFDE132-.LASFDE132
.LASFDE132:
	.long	.Lframe0
	.long	.LFB81
	.long	.LFE81-.LFB81
	.byte	0x4
	.long	.LCFI278-.LFB81
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI279-.LCFI278
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI281-.LCFI279
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE132:
.LSFDE134:
	.long	.LEFDE134-.LASFDE134
.LASFDE134:
	.long	.Lframe0
	.long	.LFB82
	.long	.LFE82-.LFB82
	.byte	0x4
	.long	.LCFI282-.LFB82
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI283-.LCFI282
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI285-.LCFI283
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE134:
.LSFDE136:
	.long	.LEFDE136-.LASFDE136
.LASFDE136:
	.long	.Lframe0
	.long	.LFB83
	.long	.LFE83-.LFB83
	.byte	0x4
	.long	.LCFI286-.LFB83
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI287-.LCFI286
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI289-.LCFI287
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE136:
.LSFDE138:
	.long	.LEFDE138-.LASFDE138
.LASFDE138:
	.long	.Lframe0
	.long	.LFB84
	.long	.LFE84-.LFB84
	.byte	0x4
	.long	.LCFI290-.LFB84
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI291-.LCFI290
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI293-.LCFI291
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE138:
.LSFDE140:
	.long	.LEFDE140-.LASFDE140
.LASFDE140:
	.long	.Lframe0
	.long	.LFB85
	.long	.LFE85-.LFB85
	.byte	0x4
	.long	.LCFI294-.LFB85
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI295-.LCFI294
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI297-.LCFI295
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE140:
.LSFDE142:
	.long	.LEFDE142-.LASFDE142
.LASFDE142:
	.long	.Lframe0
	.long	.LFB86
	.long	.LFE86-.LFB86
	.byte	0x4
	.long	.LCFI298-.LFB86
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI299-.LCFI298
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI301-.LCFI299
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE142:
.LSFDE144:
	.long	.LEFDE144-.LASFDE144
.LASFDE144:
	.long	.Lframe0
	.long	.LFB87
	.long	.LFE87-.LFB87
	.byte	0x4
	.long	.LCFI302-.LFB87
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI303-.LCFI302
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI305-.LCFI303
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE144:
.LSFDE146:
	.long	.LEFDE146-.LASFDE146
.LASFDE146:
	.long	.Lframe0
	.long	.LFB88
	.long	.LFE88-.LFB88
	.byte	0x4
	.long	.LCFI306-.LFB88
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI307-.LCFI306
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI310-.LCFI307
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x3
	.align 4
.LEFDE146:
.LSFDE148:
	.long	.LEFDE148-.LASFDE148
.LASFDE148:
	.long	.Lframe0
	.long	.LFB89
	.long	.LFE89-.LFB89
	.byte	0x4
	.long	.LCFI311-.LFB89
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI312-.LCFI311
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI316-.LCFI312
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE148:
.LSFDE150:
	.long	.LEFDE150-.LASFDE150
.LASFDE150:
	.long	.Lframe0
	.long	.LFB90
	.long	.LFE90-.LFB90
	.byte	0x4
	.long	.LCFI317-.LFB90
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI318-.LCFI317
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI320-.LCFI318
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE150:
.LSFDE152:
	.long	.LEFDE152-.LASFDE152
.LASFDE152:
	.long	.Lframe0
	.long	.LFB91
	.long	.LFE91-.LFB91
	.byte	0x4
	.long	.LCFI321-.LFB91
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI322-.LCFI321
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI324-.LCFI322
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE152:
.LSFDE154:
	.long	.LEFDE154-.LASFDE154
.LASFDE154:
	.long	.Lframe0
	.long	.LFB92
	.long	.LFE92-.LFB92
	.byte	0x4
	.long	.LCFI325-.LFB92
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI326-.LCFI325
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE154:
.LSFDE156:
	.long	.LEFDE156-.LASFDE156
.LASFDE156:
	.long	.Lframe0
	.long	.LFB93
	.long	.LFE93-.LFB93
	.byte	0x4
	.long	.LCFI328-.LFB93
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI329-.LCFI328
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI331-.LCFI329
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE156:
.LSFDE158:
	.long	.LEFDE158-.LASFDE158
.LASFDE158:
	.long	.Lframe0
	.long	.LFB94
	.long	.LFE94-.LFB94
	.byte	0x4
	.long	.LCFI332-.LFB94
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI333-.LCFI332
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI335-.LCFI333
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE158:
.LSFDE160:
	.long	.LEFDE160-.LASFDE160
.LASFDE160:
	.long	.Lframe0
	.long	.LFB95
	.long	.LFE95-.LFB95
	.byte	0x4
	.long	.LCFI336-.LFB95
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI337-.LCFI336
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI339-.LCFI337
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE160:
.LSFDE162:
	.long	.LEFDE162-.LASFDE162
.LASFDE162:
	.long	.Lframe0
	.long	.LFB96
	.long	.LFE96-.LFB96
	.byte	0x4
	.long	.LCFI340-.LFB96
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI341-.LCFI340
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI343-.LCFI341
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE162:
.LSFDE164:
	.long	.LEFDE164-.LASFDE164
.LASFDE164:
	.long	.Lframe0
	.long	.LFB97
	.long	.LFE97-.LFB97
	.byte	0x4
	.long	.LCFI344-.LFB97
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI345-.LCFI344
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI347-.LCFI345
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE164:
.LSFDE166:
	.long	.LEFDE166-.LASFDE166
.LASFDE166:
	.long	.Lframe0
	.long	.LFB98
	.long	.LFE98-.LFB98
	.byte	0x4
	.long	.LCFI348-.LFB98
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI349-.LCFI348
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI351-.LCFI349
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE166:
.LSFDE168:
	.long	.LEFDE168-.LASFDE168
.LASFDE168:
	.long	.Lframe0
	.long	.LFB99
	.long	.LFE99-.LFB99
	.byte	0x4
	.long	.LCFI352-.LFB99
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI353-.LCFI352
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI356-.LCFI353
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x3
	.align 4
.LEFDE168:
.LSFDE170:
	.long	.LEFDE170-.LASFDE170
.LASFDE170:
	.long	.Lframe0
	.long	.LFB100
	.long	.LFE100-.LFB100
	.byte	0x4
	.long	.LCFI357-.LFB100
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI358-.LCFI357
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI360-.LCFI358
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE170:
	.file 2 "../../../kg++fe/gnu/MIPS/config.h"
	.file 3 "../../../kg++fe/gnu/tree.h"
	.file 4 "../../../kg++fe/gnu/rtl.h"
	.file 5 "../../../kg++fe/gnu/machmode.h"
	.file 6 "../../../kg++fe/gnu/hashtable.h"
	.file 7 "../../../kg++fe/gnu/location.h"
	.file 8 "../../../kg++fe/gnu/function.h"
	.file 9 "../../../kg++fe/gnu/MIPS/mips.h"
	.file 10 "../../../kg++fe/gnu/cp/cp-tree.h"
	.file 11 "../../../kg++fe/gnu/c-common.h"
	.file 12 "../../../kg++fe/gnu/varray.h"
	.file 13 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h"
	.file 14 "../../../kg++fe/omp_types.h"
	.file 15 "../../../kg++fe/gnu/flags.h"
	.file 16 "../../../kg++fe/gnu/diagnostic.h"
	.file 17 "/usr/include/stdio.h"
	.file 18 "/usr/include/libio.h"
	.file 19 "/usr/include/bits/types.h"
	.file 20 "../../../include/gnu/obstack.h"
	.file 21 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stdarg.h"
	.file 22 "../../../kg++fe/gnu/target.h"
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
	.long	.LFE18-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST4:
	.long	.LFB19-.Ltext0
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
	.long	.LFE19-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST5:
	.long	.LFB20-.Ltext0
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
	.long	.LFE20-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST6:
	.long	.LFB21-.Ltext0
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
	.long	.LFE21-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST7:
	.long	.LFB22-.Ltext0
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
	.long	.LFE22-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST8:
	.long	.LFB23-.Ltext0
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
	.long	.LFE23-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST9:
	.long	.LFB24-.Ltext0
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
	.long	.LFE31-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST17:
	.long	.LFB32-.Ltext0
	.long	.LCFI69-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI69-.Ltext0
	.long	.LCFI70-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI70-.Ltext0
	.long	.LFE32-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST18:
	.long	.LFB33-.Ltext0
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
	.long	.LFE33-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST19:
	.long	.LFB34-.Ltext0
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
	.long	.LFE34-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST20:
	.long	.LFB35-.Ltext0
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
	.long	.LFE35-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST21:
	.long	.LFB36-.Ltext0
	.long	.LCFI89-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI89-.Ltext0
	.long	.LCFI90-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI90-.Ltext0
	.long	.LFE36-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST22:
	.long	.LFB37-.Ltext0
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
	.long	.LFE37-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST23:
	.long	.LFB38-.Ltext0
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
	.long	.LFE38-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST24:
	.long	.LFB39-.Ltext0
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
	.long	.LFE39-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST25:
	.long	.LFB40-.Ltext0
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
	.long	.LFE40-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST26:
	.long	.LFB41-.Ltext0
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
	.long	.LFE41-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST27:
	.long	.LFB42-.Ltext0
	.long	.LCFI112-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI112-.Ltext0
	.long	.LCFI113-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI113-.Ltext0
	.long	.LFE42-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST28:
	.long	.LFB43-.Ltext0
	.long	.LCFI116-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI116-.Ltext0
	.long	.LCFI117-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI117-.Ltext0
	.long	.LFE43-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST29:
	.long	.LFB44-.Ltext0
	.long	.LCFI120-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI120-.Ltext0
	.long	.LCFI121-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI121-.Ltext0
	.long	.LFE44-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST30:
	.long	.LFB45-.Ltext0
	.long	.LCFI124-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI124-.Ltext0
	.long	.LCFI125-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI125-.Ltext0
	.long	.LFE45-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST31:
	.long	.LFB46-.Ltext0
	.long	.LCFI128-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI128-.Ltext0
	.long	.LCFI129-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI129-.Ltext0
	.long	.LFE46-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST32:
	.long	.LFB47-.Ltext0
	.long	.LCFI133-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI133-.Ltext0
	.long	.LCFI134-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI134-.Ltext0
	.long	.LFE47-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST33:
	.long	.LFB48-.Ltext0
	.long	.LCFI136-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI136-.Ltext0
	.long	.LCFI137-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI137-.Ltext0
	.long	.LFE48-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST34:
	.long	.LFB49-.Ltext0
	.long	.LCFI141-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI141-.Ltext0
	.long	.LCFI142-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI142-.Ltext0
	.long	.LFE49-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST35:
	.long	.LFB50-.Ltext0
	.long	.LCFI145-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI145-.Ltext0
	.long	.LCFI146-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI146-.Ltext0
	.long	.LFE50-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST36:
	.long	.LFB51-.Ltext0
	.long	.LCFI149-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI149-.Ltext0
	.long	.LCFI150-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI150-.Ltext0
	.long	.LFE51-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST37:
	.long	.LFB52-.Ltext0
	.long	.LCFI153-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI153-.Ltext0
	.long	.LCFI154-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI154-.Ltext0
	.long	.LFE52-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST38:
	.long	.LFB53-.Ltext0
	.long	.LCFI157-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI157-.Ltext0
	.long	.LCFI158-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI158-.Ltext0
	.long	.LFE53-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST39:
	.long	.LFB54-.Ltext0
	.long	.LCFI162-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI162-.Ltext0
	.long	.LCFI163-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI163-.Ltext0
	.long	.LFE54-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST40:
	.long	.LFB55-.Ltext0
	.long	.LCFI166-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI166-.Ltext0
	.long	.LCFI167-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI167-.Ltext0
	.long	.LFE55-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST41:
	.long	.LFB56-.Ltext0
	.long	.LCFI170-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI170-.Ltext0
	.long	.LCFI171-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI171-.Ltext0
	.long	.LFE56-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST42:
	.long	.LFB57-.Ltext0
	.long	.LCFI174-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI174-.Ltext0
	.long	.LCFI175-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI175-.Ltext0
	.long	.LFE57-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST43:
	.long	.LFB58-.Ltext0
	.long	.LCFI178-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI178-.Ltext0
	.long	.LCFI179-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI179-.Ltext0
	.long	.LFE58-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST44:
	.long	.LFB59-.Ltext0
	.long	.LCFI182-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI182-.Ltext0
	.long	.LCFI183-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI183-.Ltext0
	.long	.LFE59-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST45:
	.long	.LFB60-.Ltext0
	.long	.LCFI187-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI187-.Ltext0
	.long	.LCFI188-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI188-.Ltext0
	.long	.LFE60-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST46:
	.long	.LFB61-.Ltext0
	.long	.LCFI193-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI193-.Ltext0
	.long	.LCFI194-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI194-.Ltext0
	.long	.LFE61-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST47:
	.long	.LFB62-.Ltext0
	.long	.LCFI198-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI198-.Ltext0
	.long	.LCFI199-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI199-.Ltext0
	.long	.LFE62-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST48:
	.long	.LFB63-.Ltext0
	.long	.LCFI202-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI202-.Ltext0
	.long	.LCFI203-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI203-.Ltext0
	.long	.LFE63-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST49:
	.long	.LFB64-.Ltext0
	.long	.LCFI206-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI206-.Ltext0
	.long	.LCFI207-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI207-.Ltext0
	.long	.LFE64-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST50:
	.long	.LFB65-.Ltext0
	.long	.LCFI210-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI210-.Ltext0
	.long	.LCFI211-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI211-.Ltext0
	.long	.LFE65-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST51:
	.long	.LFB66-.Ltext0
	.long	.LCFI214-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI214-.Ltext0
	.long	.LCFI215-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI215-.Ltext0
	.long	.LFE66-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST52:
	.long	.LFB67-.Ltext0
	.long	.LCFI218-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI218-.Ltext0
	.long	.LCFI219-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI219-.Ltext0
	.long	.LFE67-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST53:
	.long	.LFB68-.Ltext0
	.long	.LCFI222-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI222-.Ltext0
	.long	.LCFI223-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI223-.Ltext0
	.long	.LFE68-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST54:
	.long	.LFB69-.Ltext0
	.long	.LCFI228-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI228-.Ltext0
	.long	.LCFI229-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI229-.Ltext0
	.long	.LFE69-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST55:
	.long	.LFB70-.Ltext0
	.long	.LCFI232-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI232-.Ltext0
	.long	.LCFI233-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI233-.Ltext0
	.long	.LFE70-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST56:
	.long	.LFB71-.Ltext0
	.long	.LCFI236-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI236-.Ltext0
	.long	.LCFI237-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI237-.Ltext0
	.long	.LFE71-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST57:
	.long	.LFB72-.Ltext0
	.long	.LCFI240-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI240-.Ltext0
	.long	.LCFI241-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI241-.Ltext0
	.long	.LFE72-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST58:
	.long	.LFB73-.Ltext0
	.long	.LCFI244-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI244-.Ltext0
	.long	.LCFI245-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI245-.Ltext0
	.long	.LFE73-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST59:
	.long	.LFB74-.Ltext0
	.long	.LCFI248-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI248-.Ltext0
	.long	.LCFI249-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI249-.Ltext0
	.long	.LFE74-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST60:
	.long	.LFB75-.Ltext0
	.long	.LCFI253-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI253-.Ltext0
	.long	.LCFI254-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI254-.Ltext0
	.long	.LFE75-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST61:
	.long	.LFB76-.Ltext0
	.long	.LCFI257-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI257-.Ltext0
	.long	.LCFI258-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI258-.Ltext0
	.long	.LFE76-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST62:
	.long	.LFB77-.Ltext0
	.long	.LCFI261-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI261-.Ltext0
	.long	.LCFI262-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI262-.Ltext0
	.long	.LFE77-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST63:
	.long	.LFB78-.Ltext0
	.long	.LCFI265-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI265-.Ltext0
	.long	.LCFI266-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI266-.Ltext0
	.long	.LFE78-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST64:
	.long	.LFB79-.Ltext0
	.long	.LCFI270-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI270-.Ltext0
	.long	.LCFI271-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI271-.Ltext0
	.long	.LFE79-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST65:
	.long	.LFB80-.Ltext0
	.long	.LCFI274-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI274-.Ltext0
	.long	.LCFI275-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI275-.Ltext0
	.long	.LFE80-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST66:
	.long	.LFB81-.Ltext0
	.long	.LCFI278-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI278-.Ltext0
	.long	.LCFI279-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI279-.Ltext0
	.long	.LFE81-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST67:
	.long	.LFB82-.Ltext0
	.long	.LCFI282-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI282-.Ltext0
	.long	.LCFI283-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI283-.Ltext0
	.long	.LFE82-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST68:
	.long	.LFB83-.Ltext0
	.long	.LCFI286-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI286-.Ltext0
	.long	.LCFI287-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI287-.Ltext0
	.long	.LFE83-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST69:
	.long	.LFB84-.Ltext0
	.long	.LCFI290-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI290-.Ltext0
	.long	.LCFI291-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI291-.Ltext0
	.long	.LFE84-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST70:
	.long	.LFB85-.Ltext0
	.long	.LCFI294-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI294-.Ltext0
	.long	.LCFI295-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI295-.Ltext0
	.long	.LFE85-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST71:
	.long	.LFB86-.Ltext0
	.long	.LCFI298-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI298-.Ltext0
	.long	.LCFI299-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI299-.Ltext0
	.long	.LFE86-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST72:
	.long	.LFB87-.Ltext0
	.long	.LCFI302-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI302-.Ltext0
	.long	.LCFI303-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI303-.Ltext0
	.long	.LFE87-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST73:
	.long	.LFB88-.Ltext0
	.long	.LCFI306-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI306-.Ltext0
	.long	.LCFI307-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI307-.Ltext0
	.long	.LFE88-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST74:
	.long	.LFB89-.Ltext0
	.long	.LCFI311-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI311-.Ltext0
	.long	.LCFI312-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI312-.Ltext0
	.long	.LFE89-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST75:
	.long	.LFB90-.Ltext0
	.long	.LCFI317-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI317-.Ltext0
	.long	.LCFI318-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI318-.Ltext0
	.long	.LFE90-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST76:
	.long	.LFB91-.Ltext0
	.long	.LCFI321-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI321-.Ltext0
	.long	.LCFI322-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI322-.Ltext0
	.long	.LFE91-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST77:
	.long	.LFB92-.Ltext0
	.long	.LCFI325-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI325-.Ltext0
	.long	.LCFI326-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI326-.Ltext0
	.long	.LFE92-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST78:
	.long	.LFB93-.Ltext0
	.long	.LCFI328-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI328-.Ltext0
	.long	.LCFI329-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI329-.Ltext0
	.long	.LFE93-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST79:
	.long	.LFB94-.Ltext0
	.long	.LCFI332-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI332-.Ltext0
	.long	.LCFI333-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI333-.Ltext0
	.long	.LFE94-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST80:
	.long	.LFB95-.Ltext0
	.long	.LCFI336-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI336-.Ltext0
	.long	.LCFI337-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI337-.Ltext0
	.long	.LFE95-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST81:
	.long	.LFB96-.Ltext0
	.long	.LCFI340-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI340-.Ltext0
	.long	.LCFI341-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI341-.Ltext0
	.long	.LFE96-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST82:
	.long	.LFB97-.Ltext0
	.long	.LCFI344-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI344-.Ltext0
	.long	.LCFI345-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI345-.Ltext0
	.long	.LFE97-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST83:
	.long	.LFB98-.Ltext0
	.long	.LCFI348-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI348-.Ltext0
	.long	.LCFI349-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI349-.Ltext0
	.long	.LFE98-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST84:
	.long	.LFB99-.Ltext0
	.long	.LCFI352-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI352-.Ltext0
	.long	.LCFI353-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI353-.Ltext0
	.long	.LFE99-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST85:
	.long	.LFB100-.Ltext0
	.long	.LCFI357-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI357-.Ltext0
	.long	.LCFI358-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI358-.Ltext0
	.long	.LFE100-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
	.section	.debug_info
	.long	0xc539
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.Ldebug_line0
	.long	.Letext0
	.long	.Ltext0
	.string	"GNU C 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.byte	0x1
	.string	"../../../kg++fe/gnu/cp/typeck.c"
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
	.long	0x19e
	.string	"rtx_def"
	.byte	0xc
	.byte	0x2
	.byte	0xb
	.uleb128 0x5
	.long	.LASF0
	.byte	0x4
	.byte	0x84
	.long	0x53a3
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"mode"
	.byte	0x4
	.byte	0x87
	.long	0x83a
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"jump"
	.byte	0x4
	.byte	0x8e
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"call"
	.byte	0x4
	.byte	0x91
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"unchanging"
	.byte	0x4
	.byte	0x99
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"volatil"
	.byte	0x4
	.byte	0xa2
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"in_struct"
	.byte	0x4
	.byte	0xb4
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"used"
	.byte	0x4
	.byte	0xbb
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"integrated"
	.byte	0x4
	.byte	0xc0
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"frame_related"
	.byte	0x4
	.byte	0xc9
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"fld"
	.byte	0x4
	.byte	0xce
	.long	0x5dfc
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
	.byte	0x4
	.byte	0xf2
	.long	0x2dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"elem"
	.byte	0x4
	.byte	0xf3
	.long	0x5e0c
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
	.long	0x2ca
	.string	"tree_node"
	.byte	0xa0
	.byte	0x2
	.byte	0xf
	.uleb128 0x9
	.long	.LASF1
	.byte	0x3
	.value	0x887
	.long	0x3142
	.uleb128 0xa
	.string	"int_cst"
	.byte	0x3
	.value	0x888
	.long	0x345f
	.uleb128 0xa
	.string	"real_cst"
	.byte	0x3
	.value	0x889
	.long	0x34a7
	.uleb128 0xa
	.string	"vector"
	.byte	0x3
	.value	0x88a
	.long	0x35c3
	.uleb128 0xa
	.string	"string"
	.byte	0x3
	.value	0x88b
	.long	0x3508
	.uleb128 0xa
	.string	"complex"
	.byte	0x3
	.value	0x88c
	.long	0x356e
	.uleb128 0x9
	.long	.LASF2
	.byte	0x3
	.value	0x88d
	.long	0x37f8
	.uleb128 0xa
	.string	"decl"
	.byte	0x3
	.value	0x88e
	.long	0x4859
	.uleb128 0x9
	.long	.LASF3
	.byte	0x3
	.value	0x88f
	.long	0x3a54
	.uleb128 0xa
	.string	"list"
	.byte	0x3
	.value	0x890
	.long	0x382f
	.uleb128 0xa
	.string	"vec"
	.byte	0x3
	.value	0x891
	.long	0x3874
	.uleb128 0xa
	.string	"exp"
	.byte	0x3
	.value	0x892
	.long	0x38c2
	.uleb128 0xa
	.string	"block"
	.byte	0x3
	.value	0x893
	.long	0x390e
	.uleb128 0xa
	.string	"omp"
	.byte	0x3
	.value	0x895
	.long	0x524b
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x2d0
	.uleb128 0xb
	.long	0x2d5
	.uleb128 0xc
	.string	"char"
	.byte	0x1
	.byte	0x8
	.uleb128 0xc
	.string	"int"
	.byte	0x4
	.byte	0x5
	.uleb128 0xd
	.long	0x3b6
	.string	"mips_args"
	.byte	0x40
	.byte	0x9
	.value	0xaaa
	.uleb128 0xe
	.string	"gp_reg_found"
	.byte	0x9
	.value	0xaad
	.long	0x2dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"arg_number"
	.byte	0x9
	.value	0xab0
	.long	0x3b6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"num_gprs"
	.byte	0x9
	.value	0xab5
	.long	0x3b6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"num_fprs"
	.byte	0x9
	.value	0xab8
	.long	0x3b6
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.string	"stack_words"
	.byte	0x9
	.value	0xabb
	.long	0x3b6
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"fp_code"
	.byte	0x9
	.value	0xac8
	.long	0x2dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xe
	.string	"prototype"
	.byte	0x9
	.value	0xacb
	.long	0x2dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xe
	.string	"num_adjusts"
	.byte	0x9
	.value	0xad3
	.long	0x3b6
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xe
	.string	"adjust"
	.byte	0x9
	.value	0xad4
	.long	0x3bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0xf
	.long	.LASF4
	.byte	0x4
	.byte	0x7
	.uleb128 0x10
	.long	0x3cd
	.long	0x9e
	.uleb128 0x11
	.long	0x3cd
	.byte	0x7
	.byte	0x0
	.uleb128 0xf
	.long	.LASF4
	.byte	0x4
	.byte	0x7
	.uleb128 0x12
	.string	"CUMULATIVE_ARGS"
	.byte	0x9
	.value	0xad5
	.long	0x2e4
	.uleb128 0x2
	.string	"__gnuc_va_list"
	.byte	0x15
	.byte	0x2b
	.long	0x402
	.uleb128 0x3
	.byte	0x4
	.long	0x2d5
	.uleb128 0x2
	.string	"va_list"
	.byte	0x15
	.byte	0x69
	.long	0x3ec
	.uleb128 0x2
	.string	"size_t"
	.byte	0xd
	.byte	0xd6
	.long	0x3b6
	.uleb128 0xc
	.string	"unsigned char"
	.byte	0x1
	.byte	0x8
	.uleb128 0xc
	.string	"short unsigned int"
	.byte	0x2
	.byte	0x7
	.uleb128 0xc
	.string	"long unsigned int"
	.byte	0x4
	.byte	0x7
	.uleb128 0xc
	.string	"signed char"
	.byte	0x1
	.byte	0x6
	.uleb128 0xc
	.string	"short int"
	.byte	0x2
	.byte	0x5
	.uleb128 0xc
	.string	"long long int"
	.byte	0x8
	.byte	0x5
	.uleb128 0xc
	.string	"long long unsigned int"
	.byte	0x8
	.byte	0x7
	.uleb128 0x2
	.string	"__quad_t"
	.byte	0x13
	.byte	0x3b
	.long	0x47d
	.uleb128 0x2
	.string	"__off_t"
	.byte	0x13
	.byte	0x90
	.long	0x4c7
	.uleb128 0xc
	.string	"long int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x2
	.string	"__off64_t"
	.byte	0x13
	.byte	0x91
	.long	0x4a8
	.uleb128 0x13
	.byte	0x4
	.uleb128 0x3
	.byte	0x4
	.long	0x2d5
	.uleb128 0x2
	.string	"FILE"
	.byte	0x11
	.byte	0x2e
	.long	0x4f8
	.uleb128 0x14
	.long	0x773
	.long	.LASF5
	.byte	0x94
	.byte	0x11
	.byte	0x2e
	.uleb128 0xe
	.string	"_flags"
	.byte	0x12
	.value	0x10c
	.long	0x2dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"_IO_read_ptr"
	.byte	0x12
	.value	0x111
	.long	0x4e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"_IO_read_end"
	.byte	0x12
	.value	0x112
	.long	0x4e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"_IO_read_base"
	.byte	0x12
	.value	0x113
	.long	0x4e6
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.string	"_IO_write_base"
	.byte	0x12
	.value	0x114
	.long	0x4e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"_IO_write_ptr"
	.byte	0x12
	.value	0x115
	.long	0x4e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xe
	.string	"_IO_write_end"
	.byte	0x12
	.value	0x116
	.long	0x4e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xe
	.string	"_IO_buf_base"
	.byte	0x12
	.value	0x117
	.long	0x4e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xe
	.string	"_IO_buf_end"
	.byte	0x12
	.value	0x118
	.long	0x4e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xe
	.string	"_IO_save_base"
	.byte	0x12
	.value	0x11a
	.long	0x4e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xe
	.string	"_IO_backup_base"
	.byte	0x12
	.value	0x11b
	.long	0x4e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xe
	.string	"_IO_save_end"
	.byte	0x12
	.value	0x11c
	.long	0x4e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xe
	.string	"_markers"
	.byte	0x12
	.value	0x11e
	.long	0x7e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xe
	.string	"_chain"
	.byte	0x12
	.value	0x120
	.long	0x7eb
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xe
	.string	"_fileno"
	.byte	0x12
	.value	0x122
	.long	0x2dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xe
	.string	"_flags2"
	.byte	0x12
	.value	0x126
	.long	0x2dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xe
	.string	"_old_offset"
	.byte	0x12
	.value	0x128
	.long	0x4b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xe
	.string	"_cur_column"
	.byte	0x12
	.value	0x12c
	.long	0x436
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xe
	.string	"_vtable_offset"
	.byte	0x12
	.value	0x12d
	.long	0x461
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0xe
	.string	"_shortbuf"
	.byte	0x12
	.value	0x12e
	.long	0x7f1
	.byte	0x2
	.byte	0x23
	.uleb128 0x47
	.uleb128 0xe
	.string	"_lock"
	.byte	0x12
	.value	0x132
	.long	0x801
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xe
	.string	"_offset"
	.byte	0x12
	.value	0x13b
	.long	0x4d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xe
	.string	"__pad1"
	.byte	0x12
	.value	0x144
	.long	0x4e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xe
	.string	"__pad2"
	.byte	0x12
	.value	0x145
	.long	0x4e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xe
	.string	"__pad3"
	.byte	0x12
	.value	0x146
	.long	0x4e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xe
	.string	"__pad4"
	.byte	0x12
	.value	0x147
	.long	0x4e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xe
	.string	"__pad5"
	.byte	0x12
	.value	0x148
	.long	0x417
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xe
	.string	"_mode"
	.byte	0x12
	.value	0x14a
	.long	0x2dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xe
	.string	"_unused2"
	.byte	0x12
	.value	0x14c
	.long	0x807
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.byte	0x0
	.uleb128 0x10
	.long	0x783
	.long	0x2d5
	.uleb128 0x11
	.long	0x3cd
	.byte	0x3
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x789
	.uleb128 0xb
	.long	0x425
	.uleb128 0x3
	.byte	0x4
	.long	0x425
	.uleb128 0x15
	.string	"_IO_lock_t"
	.byte	0x12
	.byte	0xb0
	.uleb128 0x4
	.long	0x7e5
	.string	"_IO_marker"
	.byte	0xc
	.byte	0x12
	.byte	0xb6
	.uleb128 0x7
	.string	"_next"
	.byte	0x12
	.byte	0xb7
	.long	0x7e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"_sbuf"
	.byte	0x12
	.byte	0xb8
	.long	0x7eb
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"_pos"
	.byte	0x12
	.byte	0xbc
	.long	0x2dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7a2
	.uleb128 0x3
	.byte	0x4
	.long	0x4f8
	.uleb128 0x10
	.long	0x801
	.long	0x2d5
	.uleb128 0x11
	.long	0x3cd
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x794
	.uleb128 0x10
	.long	0x817
	.long	0x2d5
	.uleb128 0x11
	.long	0x3cd
	.byte	0x27
	.byte	0x0
	.uleb128 0x10
	.long	0x827
	.long	0x2d5
	.uleb128 0x11
	.long	0x3cd
	.byte	0x1f
	.byte	0x0
	.uleb128 0xb
	.long	0x2dd
	.uleb128 0x3
	.byte	0x4
	.long	0x2dd
	.uleb128 0x16
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x832
	.uleb128 0x17
	.long	0xa83
	.string	"machine_mode"
	.byte	0x4
	.byte	0x5
	.byte	0x1d
	.uleb128 0x18
	.string	"VOIDmode"
	.sleb128 0
	.uleb128 0x18
	.string	"BImode"
	.sleb128 1
	.uleb128 0x18
	.string	"QImode"
	.sleb128 2
	.uleb128 0x18
	.string	"HImode"
	.sleb128 3
	.uleb128 0x18
	.string	"SImode"
	.sleb128 4
	.uleb128 0x18
	.string	"DImode"
	.sleb128 5
	.uleb128 0x18
	.string	"TImode"
	.sleb128 6
	.uleb128 0x18
	.string	"OImode"
	.sleb128 7
	.uleb128 0x18
	.string	"PQImode"
	.sleb128 8
	.uleb128 0x18
	.string	"PHImode"
	.sleb128 9
	.uleb128 0x18
	.string	"PSImode"
	.sleb128 10
	.uleb128 0x18
	.string	"PDImode"
	.sleb128 11
	.uleb128 0x18
	.string	"QFmode"
	.sleb128 12
	.uleb128 0x18
	.string	"HFmode"
	.sleb128 13
	.uleb128 0x18
	.string	"TQFmode"
	.sleb128 14
	.uleb128 0x18
	.string	"SFmode"
	.sleb128 15
	.uleb128 0x18
	.string	"DFmode"
	.sleb128 16
	.uleb128 0x18
	.string	"XFmode"
	.sleb128 17
	.uleb128 0x18
	.string	"TFmode"
	.sleb128 18
	.uleb128 0x18
	.string	"QCmode"
	.sleb128 19
	.uleb128 0x18
	.string	"HCmode"
	.sleb128 20
	.uleb128 0x18
	.string	"SCmode"
	.sleb128 21
	.uleb128 0x18
	.string	"DCmode"
	.sleb128 22
	.uleb128 0x18
	.string	"XCmode"
	.sleb128 23
	.uleb128 0x18
	.string	"TCmode"
	.sleb128 24
	.uleb128 0x18
	.string	"CQImode"
	.sleb128 25
	.uleb128 0x18
	.string	"CHImode"
	.sleb128 26
	.uleb128 0x18
	.string	"CSImode"
	.sleb128 27
	.uleb128 0x18
	.string	"CDImode"
	.sleb128 28
	.uleb128 0x18
	.string	"CTImode"
	.sleb128 29
	.uleb128 0x18
	.string	"COImode"
	.sleb128 30
	.uleb128 0x18
	.string	"V1DImode"
	.sleb128 31
	.uleb128 0x18
	.string	"V2QImode"
	.sleb128 32
	.uleb128 0x18
	.string	"V2HImode"
	.sleb128 33
	.uleb128 0x18
	.string	"V2SImode"
	.sleb128 34
	.uleb128 0x18
	.string	"V2DImode"
	.sleb128 35
	.uleb128 0x18
	.string	"V4QImode"
	.sleb128 36
	.uleb128 0x18
	.string	"V4HImode"
	.sleb128 37
	.uleb128 0x18
	.string	"V4SImode"
	.sleb128 38
	.uleb128 0x18
	.string	"V4DImode"
	.sleb128 39
	.uleb128 0x18
	.string	"V8QImode"
	.sleb128 40
	.uleb128 0x18
	.string	"V8HImode"
	.sleb128 41
	.uleb128 0x18
	.string	"V8SImode"
	.sleb128 42
	.uleb128 0x18
	.string	"V8DImode"
	.sleb128 43
	.uleb128 0x18
	.string	"V16QImode"
	.sleb128 44
	.uleb128 0x18
	.string	"V2SFmode"
	.sleb128 45
	.uleb128 0x18
	.string	"V2DFmode"
	.sleb128 46
	.uleb128 0x18
	.string	"V4SFmode"
	.sleb128 47
	.uleb128 0x18
	.string	"V4DFmode"
	.sleb128 48
	.uleb128 0x18
	.string	"V8SFmode"
	.sleb128 49
	.uleb128 0x18
	.string	"V8DFmode"
	.sleb128 50
	.uleb128 0x18
	.string	"V16SFmode"
	.sleb128 51
	.uleb128 0x18
	.string	"BLKmode"
	.sleb128 52
	.uleb128 0x18
	.string	"CCmode"
	.sleb128 53
	.uleb128 0x18
	.string	"MAX_MACHINE_MODE"
	.sleb128 54
	.byte	0x0
	.uleb128 0x4
	.long	0xab5
	.string	"location_s"
	.byte	0x8
	.byte	0x7
	.byte	0x1c
	.uleb128 0x7
	.string	"file"
	.byte	0x7
	.byte	0x1e
	.long	0x2ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"line"
	.byte	0x7
	.byte	0x21
	.long	0x2dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"location_t"
	.byte	0x7
	.byte	0x23
	.long	0xa83
	.uleb128 0x17
	.long	0x13e9
	.string	"tree_code"
	.byte	0x4
	.byte	0x3
	.byte	0x25
	.uleb128 0x18
	.string	"ERROR_MARK"
	.sleb128 0
	.uleb128 0x18
	.string	"IDENTIFIER_NODE"
	.sleb128 1
	.uleb128 0x18
	.string	"OP_IDENTIFIER"
	.sleb128 2
	.uleb128 0x18
	.string	"TREE_LIST"
	.sleb128 3
	.uleb128 0x18
	.string	"TREE_VEC"
	.sleb128 4
	.uleb128 0x18
	.string	"BLOCK"
	.sleb128 5
	.uleb128 0x18
	.string	"VOID_TYPE"
	.sleb128 6
	.uleb128 0x18
	.string	"INTEGER_TYPE"
	.sleb128 7
	.uleb128 0x18
	.string	"REAL_TYPE"
	.sleb128 8
	.uleb128 0x18
	.string	"COMPLEX_TYPE"
	.sleb128 9
	.uleb128 0x18
	.string	"VECTOR_TYPE"
	.sleb128 10
	.uleb128 0x18
	.string	"ENUMERAL_TYPE"
	.sleb128 11
	.uleb128 0x18
	.string	"BOOLEAN_TYPE"
	.sleb128 12
	.uleb128 0x18
	.string	"CHAR_TYPE"
	.sleb128 13
	.uleb128 0x18
	.string	"POINTER_TYPE"
	.sleb128 14
	.uleb128 0x18
	.string	"OFFSET_TYPE"
	.sleb128 15
	.uleb128 0x18
	.string	"REFERENCE_TYPE"
	.sleb128 16
	.uleb128 0x18
	.string	"METHOD_TYPE"
	.sleb128 17
	.uleb128 0x18
	.string	"FILE_TYPE"
	.sleb128 18
	.uleb128 0x18
	.string	"ARRAY_TYPE"
	.sleb128 19
	.uleb128 0x18
	.string	"SET_TYPE"
	.sleb128 20
	.uleb128 0x18
	.string	"RECORD_TYPE"
	.sleb128 21
	.uleb128 0x18
	.string	"UNION_TYPE"
	.sleb128 22
	.uleb128 0x18
	.string	"QUAL_UNION_TYPE"
	.sleb128 23
	.uleb128 0x18
	.string	"FUNCTION_TYPE"
	.sleb128 24
	.uleb128 0x18
	.string	"LANG_TYPE"
	.sleb128 25
	.uleb128 0x18
	.string	"INTEGER_CST"
	.sleb128 26
	.uleb128 0x18
	.string	"REAL_CST"
	.sleb128 27
	.uleb128 0x18
	.string	"COMPLEX_CST"
	.sleb128 28
	.uleb128 0x18
	.string	"VECTOR_CST"
	.sleb128 29
	.uleb128 0x18
	.string	"STRING_CST"
	.sleb128 30
	.uleb128 0x18
	.string	"FUNCTION_DECL"
	.sleb128 31
	.uleb128 0x18
	.string	"LABEL_DECL"
	.sleb128 32
	.uleb128 0x18
	.string	"CONST_DECL"
	.sleb128 33
	.uleb128 0x18
	.string	"TYPE_DECL"
	.sleb128 34
	.uleb128 0x18
	.string	"VAR_DECL"
	.sleb128 35
	.uleb128 0x18
	.string	"PARM_DECL"
	.sleb128 36
	.uleb128 0x18
	.string	"RESULT_DECL"
	.sleb128 37
	.uleb128 0x18
	.string	"FIELD_DECL"
	.sleb128 38
	.uleb128 0x18
	.string	"NAMESPACE_DECL"
	.sleb128 39
	.uleb128 0x18
	.string	"COMPONENT_REF"
	.sleb128 40
	.uleb128 0x18
	.string	"BIT_FIELD_REF"
	.sleb128 41
	.uleb128 0x18
	.string	"INDIRECT_REF"
	.sleb128 42
	.uleb128 0x18
	.string	"BUFFER_REF"
	.sleb128 43
	.uleb128 0x18
	.string	"ARRAY_REF"
	.sleb128 44
	.uleb128 0x18
	.string	"ARRAY_RANGE_REF"
	.sleb128 45
	.uleb128 0x18
	.string	"VTABLE_REF"
	.sleb128 46
	.uleb128 0x18
	.string	"CONSTRUCTOR"
	.sleb128 47
	.uleb128 0x18
	.string	"COMPOUND_EXPR"
	.sleb128 48
	.uleb128 0x18
	.string	"MODIFY_EXPR"
	.sleb128 49
	.uleb128 0x18
	.string	"INIT_EXPR"
	.sleb128 50
	.uleb128 0x18
	.string	"TARGET_EXPR"
	.sleb128 51
	.uleb128 0x18
	.string	"COND_EXPR"
	.sleb128 52
	.uleb128 0x18
	.string	"BIND_EXPR"
	.sleb128 53
	.uleb128 0x18
	.string	"CALL_EXPR"
	.sleb128 54
	.uleb128 0x18
	.string	"METHOD_CALL_EXPR"
	.sleb128 55
	.uleb128 0x18
	.string	"WITH_CLEANUP_EXPR"
	.sleb128 56
	.uleb128 0x18
	.string	"CLEANUP_POINT_EXPR"
	.sleb128 57
	.uleb128 0x18
	.string	"PLACEHOLDER_EXPR"
	.sleb128 58
	.uleb128 0x18
	.string	"WITH_RECORD_EXPR"
	.sleb128 59
	.uleb128 0x18
	.string	"PLUS_EXPR"
	.sleb128 60
	.uleb128 0x18
	.string	"MINUS_EXPR"
	.sleb128 61
	.uleb128 0x18
	.string	"MULT_EXPR"
	.sleb128 62
	.uleb128 0x18
	.string	"TRUNC_DIV_EXPR"
	.sleb128 63
	.uleb128 0x18
	.string	"CEIL_DIV_EXPR"
	.sleb128 64
	.uleb128 0x18
	.string	"FLOOR_DIV_EXPR"
	.sleb128 65
	.uleb128 0x18
	.string	"ROUND_DIV_EXPR"
	.sleb128 66
	.uleb128 0x18
	.string	"TRUNC_MOD_EXPR"
	.sleb128 67
	.uleb128 0x18
	.string	"CEIL_MOD_EXPR"
	.sleb128 68
	.uleb128 0x18
	.string	"FLOOR_MOD_EXPR"
	.sleb128 69
	.uleb128 0x18
	.string	"ROUND_MOD_EXPR"
	.sleb128 70
	.uleb128 0x18
	.string	"RDIV_EXPR"
	.sleb128 71
	.uleb128 0x18
	.string	"EXACT_DIV_EXPR"
	.sleb128 72
	.uleb128 0x18
	.string	"FIX_TRUNC_EXPR"
	.sleb128 73
	.uleb128 0x18
	.string	"FIX_CEIL_EXPR"
	.sleb128 74
	.uleb128 0x18
	.string	"FIX_FLOOR_EXPR"
	.sleb128 75
	.uleb128 0x18
	.string	"FIX_ROUND_EXPR"
	.sleb128 76
	.uleb128 0x18
	.string	"FLOAT_EXPR"
	.sleb128 77
	.uleb128 0x18
	.string	"EXPON_EXPR"
	.sleb128 78
	.uleb128 0x18
	.string	"NEGATE_EXPR"
	.sleb128 79
	.uleb128 0x18
	.string	"MIN_EXPR"
	.sleb128 80
	.uleb128 0x18
	.string	"MAX_EXPR"
	.sleb128 81
	.uleb128 0x18
	.string	"ABS_EXPR"
	.sleb128 82
	.uleb128 0x18
	.string	"FFS_EXPR"
	.sleb128 83
	.uleb128 0x18
	.string	"LSHIFT_EXPR"
	.sleb128 84
	.uleb128 0x18
	.string	"RSHIFT_EXPR"
	.sleb128 85
	.uleb128 0x18
	.string	"LROTATE_EXPR"
	.sleb128 86
	.uleb128 0x18
	.string	"RROTATE_EXPR"
	.sleb128 87
	.uleb128 0x18
	.string	"BIT_IOR_EXPR"
	.sleb128 88
	.uleb128 0x18
	.string	"BIT_XOR_EXPR"
	.sleb128 89
	.uleb128 0x18
	.string	"BIT_AND_EXPR"
	.sleb128 90
	.uleb128 0x18
	.string	"BIT_ANDTC_EXPR"
	.sleb128 91
	.uleb128 0x18
	.string	"BIT_NOT_EXPR"
	.sleb128 92
	.uleb128 0x18
	.string	"TRUTH_ANDIF_EXPR"
	.sleb128 93
	.uleb128 0x18
	.string	"TRUTH_ORIF_EXPR"
	.sleb128 94
	.uleb128 0x18
	.string	"TRUTH_AND_EXPR"
	.sleb128 95
	.uleb128 0x18
	.string	"TRUTH_OR_EXPR"
	.sleb128 96
	.uleb128 0x18
	.string	"TRUTH_XOR_EXPR"
	.sleb128 97
	.uleb128 0x18
	.string	"TRUTH_NOT_EXPR"
	.sleb128 98
	.uleb128 0x18
	.string	"LT_EXPR"
	.sleb128 99
	.uleb128 0x18
	.string	"LE_EXPR"
	.sleb128 100
	.uleb128 0x18
	.string	"GT_EXPR"
	.sleb128 101
	.uleb128 0x18
	.string	"GE_EXPR"
	.sleb128 102
	.uleb128 0x18
	.string	"EQ_EXPR"
	.sleb128 103
	.uleb128 0x18
	.string	"NE_EXPR"
	.sleb128 104
	.uleb128 0x18
	.string	"UNORDERED_EXPR"
	.sleb128 105
	.uleb128 0x18
	.string	"ORDERED_EXPR"
	.sleb128 106
	.uleb128 0x18
	.string	"UNLT_EXPR"
	.sleb128 107
	.uleb128 0x18
	.string	"UNLE_EXPR"
	.sleb128 108
	.uleb128 0x18
	.string	"UNGT_EXPR"
	.sleb128 109
	.uleb128 0x18
	.string	"UNGE_EXPR"
	.sleb128 110
	.uleb128 0x18
	.string	"UNEQ_EXPR"
	.sleb128 111
	.uleb128 0x18
	.string	"IN_EXPR"
	.sleb128 112
	.uleb128 0x18
	.string	"SET_LE_EXPR"
	.sleb128 113
	.uleb128 0x18
	.string	"CARD_EXPR"
	.sleb128 114
	.uleb128 0x18
	.string	"RANGE_EXPR"
	.sleb128 115
	.uleb128 0x18
	.string	"CONVERT_EXPR"
	.sleb128 116
	.uleb128 0x18
	.string	"NOP_EXPR"
	.sleb128 117
	.uleb128 0x18
	.string	"NON_LVALUE_EXPR"
	.sleb128 118
	.uleb128 0x18
	.string	"VIEW_CONVERT_EXPR"
	.sleb128 119
	.uleb128 0x18
	.string	"SAVE_EXPR"
	.sleb128 120
	.uleb128 0x18
	.string	"UNSAVE_EXPR"
	.sleb128 121
	.uleb128 0x18
	.string	"RTL_EXPR"
	.sleb128 122
	.uleb128 0x18
	.string	"ADDR_EXPR"
	.sleb128 123
	.uleb128 0x18
	.string	"REFERENCE_EXPR"
	.sleb128 124
	.uleb128 0x18
	.string	"ENTRY_VALUE_EXPR"
	.sleb128 125
	.uleb128 0x18
	.string	"FDESC_EXPR"
	.sleb128 126
	.uleb128 0x18
	.string	"COMPLEX_EXPR"
	.sleb128 127
	.uleb128 0x18
	.string	"CONJ_EXPR"
	.sleb128 128
	.uleb128 0x18
	.string	"REALPART_EXPR"
	.sleb128 129
	.uleb128 0x18
	.string	"IMAGPART_EXPR"
	.sleb128 130
	.uleb128 0x18
	.string	"PREDECREMENT_EXPR"
	.sleb128 131
	.uleb128 0x18
	.string	"PREINCREMENT_EXPR"
	.sleb128 132
	.uleb128 0x18
	.string	"POSTDECREMENT_EXPR"
	.sleb128 133
	.uleb128 0x18
	.string	"POSTINCREMENT_EXPR"
	.sleb128 134
	.uleb128 0x18
	.string	"VA_ARG_EXPR"
	.sleb128 135
	.uleb128 0x18
	.string	"TRY_CATCH_EXPR"
	.sleb128 136
	.uleb128 0x18
	.string	"TRY_FINALLY_EXPR"
	.sleb128 137
	.uleb128 0x18
	.string	"GOTO_SUBROUTINE_EXPR"
	.sleb128 138
	.uleb128 0x18
	.string	"POPDHC_EXPR"
	.sleb128 139
	.uleb128 0x18
	.string	"POPDCC_EXPR"
	.sleb128 140
	.uleb128 0x18
	.string	"LABEL_EXPR"
	.sleb128 141
	.uleb128 0x18
	.string	"GOTO_EXPR"
	.sleb128 142
	.uleb128 0x18
	.string	"RETURN_EXPR"
	.sleb128 143
	.uleb128 0x18
	.string	"EXIT_EXPR"
	.sleb128 144
	.uleb128 0x18
	.string	"LOOP_EXPR"
	.sleb128 145
	.uleb128 0x18
	.string	"LABELED_BLOCK_EXPR"
	.sleb128 146
	.uleb128 0x18
	.string	"EXIT_BLOCK_EXPR"
	.sleb128 147
	.uleb128 0x18
	.string	"EXPR_WITH_FILE_LOCATION"
	.sleb128 148
	.uleb128 0x18
	.string	"SWITCH_EXPR"
	.sleb128 149
	.uleb128 0x18
	.string	"EXC_PTR_EXPR"
	.sleb128 150
	.uleb128 0x18
	.string	"LAST_AND_UNUSED_TREE_CODE"
	.sleb128 151
	.byte	0x0
	.uleb128 0x2
	.string	"LABEL_IDX"
	.byte	0x3
	.byte	0x2f
	.long	0x3b6
	.uleb128 0x4
	.long	0x1439
	.string	"mongoose_gcc_DST_IDX"
	.byte	0x8
	.byte	0x3
	.byte	0x30
	.uleb128 0x7
	.string	"block"
	.byte	0x3
	.byte	0x30
	.long	0x3b6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"offset"
	.byte	0x3
	.byte	0x30
	.long	0x3b6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"ST"
	.byte	0x3
	.byte	0x34
	.long	0x1443
	.uleb128 0x19
	.string	"st"
	.byte	0x1
	.uleb128 0x1a
	.long	0x1498
	.long	.LASF6
	.byte	0x4
	.byte	0x3
	.byte	0x58
	.uleb128 0x18
	.string	"NOT_BUILT_IN"
	.sleb128 0
	.uleb128 0x18
	.string	"BUILT_IN_FRONTEND"
	.sleb128 1
	.uleb128 0x18
	.string	"BUILT_IN_MD"
	.sleb128 2
	.uleb128 0x18
	.string	"BUILT_IN_NORMAL"
	.sleb128 3
	.byte	0x0
	.uleb128 0x17
	.long	0x3142
	.string	"built_in_function"
	.byte	0x4
	.byte	0x3
	.byte	0x67
	.uleb128 0x18
	.string	"BUILT_IN_ALLOCA"
	.sleb128 0
	.uleb128 0x18
	.string	"BUILT_IN_ABS"
	.sleb128 1
	.uleb128 0x18
	.string	"BUILT_IN_LABS"
	.sleb128 2
	.uleb128 0x18
	.string	"BUILT_IN_FABS"
	.sleb128 3
	.uleb128 0x18
	.string	"BUILT_IN_FABSF"
	.sleb128 4
	.uleb128 0x18
	.string	"BUILT_IN_FABSL"
	.sleb128 5
	.uleb128 0x18
	.string	"BUILT_IN_LLABS"
	.sleb128 6
	.uleb128 0x18
	.string	"BUILT_IN_IMAXABS"
	.sleb128 7
	.uleb128 0x18
	.string	"BUILT_IN_CONJ"
	.sleb128 8
	.uleb128 0x18
	.string	"BUILT_IN_CONJF"
	.sleb128 9
	.uleb128 0x18
	.string	"BUILT_IN_CONJL"
	.sleb128 10
	.uleb128 0x18
	.string	"BUILT_IN_CREAL"
	.sleb128 11
	.uleb128 0x18
	.string	"BUILT_IN_CREALF"
	.sleb128 12
	.uleb128 0x18
	.string	"BUILT_IN_CREALL"
	.sleb128 13
	.uleb128 0x18
	.string	"BUILT_IN_CIMAG"
	.sleb128 14
	.uleb128 0x18
	.string	"BUILT_IN_CIMAGF"
	.sleb128 15
	.uleb128 0x18
	.string	"BUILT_IN_CIMAGL"
	.sleb128 16
	.uleb128 0x18
	.string	"BUILT_IN_DIV"
	.sleb128 17
	.uleb128 0x18
	.string	"BUILT_IN_LDIV"
	.sleb128 18
	.uleb128 0x18
	.string	"BUILT_IN_FFLOOR"
	.sleb128 19
	.uleb128 0x18
	.string	"BUILT_IN_FCEIL"
	.sleb128 20
	.uleb128 0x18
	.string	"BUILT_IN_FMOD"
	.sleb128 21
	.uleb128 0x18
	.string	"BUILT_IN_FREM"
	.sleb128 22
	.uleb128 0x18
	.string	"BUILT_IN_BZERO"
	.sleb128 23
	.uleb128 0x18
	.string	"BUILT_IN_BCOPY"
	.sleb128 24
	.uleb128 0x18
	.string	"BUILT_IN_BCMP"
	.sleb128 25
	.uleb128 0x18
	.string	"BUILT_IN_FFS"
	.sleb128 26
	.uleb128 0x18
	.string	"BUILT_IN_INDEX"
	.sleb128 27
	.uleb128 0x18
	.string	"BUILT_IN_RINDEX"
	.sleb128 28
	.uleb128 0x18
	.string	"BUILT_IN_MEMCPY"
	.sleb128 29
	.uleb128 0x18
	.string	"BUILT_IN_MEMMOVE"
	.sleb128 30
	.uleb128 0x18
	.string	"BUILT_IN_MEMCMP"
	.sleb128 31
	.uleb128 0x18
	.string	"BUILT_IN_MEMSET"
	.sleb128 32
	.uleb128 0x18
	.string	"BUILT_IN_MEMPCPY"
	.sleb128 33
	.uleb128 0x18
	.string	"BUILT_IN_STRCAT"
	.sleb128 34
	.uleb128 0x18
	.string	"BUILT_IN_STRNCAT"
	.sleb128 35
	.uleb128 0x18
	.string	"BUILT_IN_STPCPY"
	.sleb128 36
	.uleb128 0x18
	.string	"BUILT_IN_STRCPY"
	.sleb128 37
	.uleb128 0x18
	.string	"BUILT_IN_STRNCPY"
	.sleb128 38
	.uleb128 0x18
	.string	"BUILT_IN_STRCMP"
	.sleb128 39
	.uleb128 0x18
	.string	"BUILT_IN_STRNCMP"
	.sleb128 40
	.uleb128 0x18
	.string	"BUILT_IN_STRLEN"
	.sleb128 41
	.uleb128 0x18
	.string	"BUILT_IN_STRSTR"
	.sleb128 42
	.uleb128 0x18
	.string	"BUILT_IN_STRPBRK"
	.sleb128 43
	.uleb128 0x18
	.string	"BUILT_IN_STRSPN"
	.sleb128 44
	.uleb128 0x18
	.string	"BUILT_IN_STRCSPN"
	.sleb128 45
	.uleb128 0x18
	.string	"BUILT_IN_STRCHR"
	.sleb128 46
	.uleb128 0x18
	.string	"BUILT_IN_STRRCHR"
	.sleb128 47
	.uleb128 0x18
	.string	"BUILT_IN_CVT64_LOW"
	.sleb128 48
	.uleb128 0x18
	.string	"BUILT_IN_CVT64_HIGH"
	.sleb128 49
	.uleb128 0x18
	.string	"BUILT_IN_CVT32"
	.sleb128 50
	.uleb128 0x18
	.string	"BUILT_IN_PERIPHERAL_RW_BEGIN"
	.sleb128 51
	.uleb128 0x18
	.string	"BUILT_IN_PERIPHERAL_RW_END"
	.sleb128 52
	.uleb128 0x18
	.string	"BUILT_IN_VBUF_OFFSET"
	.sleb128 53
	.uleb128 0x18
	.string	"BUILT_IN_SBUF_OFFSET"
	.sleb128 54
	.uleb128 0x18
	.string	"BUILD_IN_MUL_SHIFT_HI"
	.sleb128 55
	.uleb128 0x18
	.string	"BUILD_IN_MUL_SHIFT"
	.sleb128 56
	.uleb128 0x18
	.string	"BUILD_IN_C3_LEAD"
	.sleb128 57
	.uleb128 0x18
	.string	"BUILD_IN_C3_MAC"
	.sleb128 58
	.uleb128 0x18
	.string	"BUILD_IN_C3_MACN"
	.sleb128 59
	.uleb128 0x18
	.string	"BUILD_IN_C3_ROUND"
	.sleb128 60
	.uleb128 0x18
	.string	"BUILD_IN_C3_SAADDS"
	.sleb128 61
	.uleb128 0x18
	.string	"BUILD_IN_C3_SASUBS"
	.sleb128 62
	.uleb128 0x18
	.string	"BUILD_IN_C3_MULA"
	.sleb128 63
	.uleb128 0x18
	.string	"BUILD_IN_C3_INIT_ACC"
	.sleb128 64
	.uleb128 0x18
	.string	"BUILD_IN_C3_SAVE_ACC"
	.sleb128 65
	.uleb128 0x18
	.string	"BUILD_IN_MPY_32_16"
	.sleb128 66
	.uleb128 0x18
	.string	"BUILD_IN_C3_MACD"
	.sleb128 67
	.uleb128 0x18
	.string	"BUILD_IN_C3_MULAD"
	.sleb128 68
	.uleb128 0x18
	.string	"BUILD_IN_C3_SAADDSH"
	.sleb128 69
	.uleb128 0x18
	.string	"BUILD_IN_C3_SASUBSH"
	.sleb128 70
	.uleb128 0x18
	.string	"BUILD_IN_C3_MVFS"
	.sleb128 71
	.uleb128 0x18
	.string	"BUILD_IN_C3_INIT_ADDR"
	.sleb128 72
	.uleb128 0x18
	.string	"BUILD_IN_C3_SAVE_ADDR"
	.sleb128 73
	.uleb128 0x18
	.string	"BUILD_IN_C3_MAC_A"
	.sleb128 74
	.uleb128 0x18
	.string	"BUILD_IN_C3_MACN_A"
	.sleb128 75
	.uleb128 0x18
	.string	"BUILD_IN_C3_DMAC_A"
	.sleb128 76
	.uleb128 0x18
	.string	"BUILD_IN_C3_DMACN_A"
	.sleb128 77
	.uleb128 0x18
	.string	"BUILD_IN_C3_INIT_DACC"
	.sleb128 78
	.uleb128 0x18
	.string	"BUILD_IN_C3_SAVE_DACC"
	.sleb128 79
	.uleb128 0x18
	.string	"BUILD_IN_C3_SAADDH_A"
	.sleb128 80
	.uleb128 0x18
	.string	"BUILD_IN_C3_SASUBH_A"
	.sleb128 81
	.uleb128 0x18
	.string	"BUILD_IN_C3_SAMULSH"
	.sleb128 82
	.uleb128 0x18
	.string	"BUILD_IN_C3_MULA_A"
	.sleb128 83
	.uleb128 0x18
	.string	"BUILD_IN_C3_SAMULH_A"
	.sleb128 84
	.uleb128 0x18
	.string	"BUILD_IN_C3_PTR"
	.sleb128 85
	.uleb128 0x18
	.string	"BUILD_IN_C3_MAC_AR"
	.sleb128 86
	.uleb128 0x18
	.string	"BUILD_IN_C3_MACN_AR"
	.sleb128 87
	.uleb128 0x18
	.string	"BUILD_IN_C3_MULA_AR"
	.sleb128 88
	.uleb128 0x18
	.string	"BUILD_IN_C3_INIT_PTR"
	.sleb128 89
	.uleb128 0x18
	.string	"BUILD_IN_C3_TRBACK"
	.sleb128 90
	.uleb128 0x18
	.string	"BUILD_IN_C3_VITERBI"
	.sleb128 91
	.uleb128 0x18
	.string	"BUILD_IN_C3_DMULT"
	.sleb128 92
	.uleb128 0x18
	.string	"BUILD_IN_C3_DMULT_A"
	.sleb128 93
	.uleb128 0x18
	.string	"BUILD_IN_C3_DMULTN"
	.sleb128 94
	.uleb128 0x18
	.string	"BUILD_IN_C3_DMULTN_A"
	.sleb128 95
	.uleb128 0x18
	.string	"BUILD_IN_SET_CIRCBUF"
	.sleb128 96
	.uleb128 0x18
	.string	"BUILD_IN_RESET_CIRCBUF"
	.sleb128 97
	.uleb128 0x18
	.string	"BUILD_IN_C3_DADD"
	.sleb128 98
	.uleb128 0x18
	.string	"BUILD_IN_C3_DSUB"
	.sleb128 99
	.uleb128 0x18
	.string	"BUILD_IN_C3_FFT"
	.sleb128 100
	.uleb128 0x18
	.string	"BUILD_IN_C3_FFTLD"
	.sleb128 101
	.uleb128 0x18
	.string	"BUILD_IN_C3_FFTST"
	.sleb128 102
	.uleb128 0x18
	.string	"BUILD_IN_DEPOSIT"
	.sleb128 103
	.uleb128 0x18
	.string	"BUILD_IN_EXTRACT"
	.sleb128 104
	.uleb128 0x18
	.string	"BUILD_IN_C3_BITR"
	.sleb128 105
	.uleb128 0x18
	.string	"BUILD_IN_C3_DMAC"
	.sleb128 106
	.uleb128 0x18
	.string	"BUILD_IN_C3_DMACN"
	.sleb128 107
	.uleb128 0x18
	.string	"BUILD_IN_C3_LOAD"
	.sleb128 108
	.uleb128 0x18
	.string	"BUILD_IN_C3_STORE"
	.sleb128 109
	.uleb128 0x18
	.string	"BUILD_IN_C3_REVB"
	.sleb128 110
	.uleb128 0x18
	.string	"BUILD_IN_C3_DSHL_I"
	.sleb128 111
	.uleb128 0x18
	.string	"BUILD_IN_C3_DSHR_I"
	.sleb128 112
	.uleb128 0x18
	.string	"BUILD_IN_C3_MAC_I"
	.sleb128 113
	.uleb128 0x18
	.string	"BUILD_IN_C3_MACN_I"
	.sleb128 114
	.uleb128 0x18
	.string	"BUILD_IN_C3_MULA_I"
	.sleb128 115
	.uleb128 0x18
	.string	"BUILD_IN_C3_SAADD_A"
	.sleb128 116
	.uleb128 0x18
	.string	"BUILD_IN_C3_SADDHA"
	.sleb128 117
	.uleb128 0x18
	.string	"BUILD_IN_C3_SAADDHA_A"
	.sleb128 118
	.uleb128 0x18
	.string	"BUILD_IN_C3_SASUB_A"
	.sleb128 119
	.uleb128 0x18
	.string	"BUILD_IN_COPY_ADDR"
	.sleb128 120
	.uleb128 0x18
	.string	"BUILD_IN_SET_ADDR"
	.sleb128 121
	.uleb128 0x18
	.string	"BUILT_IN_C2_MVGR_G2R"
	.sleb128 122
	.uleb128 0x18
	.string	"BUILT_IN_C2_MVGR_R2G"
	.sleb128 123
	.uleb128 0x18
	.string	"BUILT_IN_C2_MVGR_G2S"
	.sleb128 124
	.uleb128 0x18
	.string	"BUILT_IN_C2_MVGR_S2G"
	.sleb128 125
	.uleb128 0x18
	.string	"BUILT_IN_C2_MVGC_C2G"
	.sleb128 126
	.uleb128 0x18
	.string	"BUILT_IN_C2_MVGC_G2C"
	.sleb128 127
	.uleb128 0x18
	.string	"BUILT_IN_C2_LD_V"
	.sleb128 128
	.uleb128 0x18
	.string	"BUILT_IN_C2_LD_G"
	.sleb128 129
	.uleb128 0x18
	.string	"BUILT_IN_C2_LD_S"
	.sleb128 130
	.uleb128 0x18
	.string	"BUILT_IN_C2_ST_V"
	.sleb128 131
	.uleb128 0x18
	.string	"BUILT_IN_C2_ST_G"
	.sleb128 132
	.uleb128 0x18
	.string	"BUILT_IN_C2_LD_G_IMM"
	.sleb128 133
	.uleb128 0x18
	.string	"BUILT_IN_C2_LD_C_IMM"
	.sleb128 134
	.uleb128 0x18
	.string	"BUILT_IN_C2_LD_V_IMM"
	.sleb128 135
	.uleb128 0x18
	.string	"BUILT_IN_C2_ST_V_IMM"
	.sleb128 136
	.uleb128 0x18
	.string	"BUILT_IN_C2_ST_C_IMM"
	.sleb128 137
	.uleb128 0x18
	.string	"BUILT_IN_C2_ST_G_IMM"
	.sleb128 138
	.uleb128 0x18
	.string	"BUILT_IN_C2_VADDS"
	.sleb128 139
	.uleb128 0x18
	.string	"BUILT_IN_C2_VSUBS"
	.sleb128 140
	.uleb128 0x18
	.string	"BUILT_IN_C2_VMUL"
	.sleb128 141
	.uleb128 0x18
	.string	"BUILT_IN_C2_VNEG"
	.sleb128 142
	.uleb128 0x18
	.string	"BUILT_IN_C2_VSHFT"
	.sleb128 143
	.uleb128 0x18
	.string	"BUILT_IN_C2_VCLP"
	.sleb128 144
	.uleb128 0x18
	.string	"BUILT_IN_C2_VCLG"
	.sleb128 145
	.uleb128 0x18
	.string	"BUILT_IN_C2_VCMOV"
	.sleb128 146
	.uleb128 0x18
	.string	"BUILT_IN_C2_LCZERO"
	.sleb128 147
	.uleb128 0x18
	.string	"BUILT_IN_C2_VRND"
	.sleb128 148
	.uleb128 0x18
	.string	"BUILT_IN_C2_VSPAS"
	.sleb128 149
	.uleb128 0x18
	.string	"BUILT_IN_C2_VSPEL"
	.sleb128 150
	.uleb128 0x18
	.string	"BUILT_IN_C2_VSPEL_MAC"
	.sleb128 151
	.uleb128 0x18
	.string	"BUILT_IN_C2_MMUL"
	.sleb128 152
	.uleb128 0x18
	.string	"BUILT_IN_C2_VMOV"
	.sleb128 153
	.uleb128 0x18
	.string	"BUILT_IN_C2_VCOPY"
	.sleb128 154
	.uleb128 0x18
	.string	"BUILT_IN_C2_VCMPR"
	.sleb128 155
	.uleb128 0x18
	.string	"BUILT_IN_C2_SAD"
	.sleb128 156
	.uleb128 0x18
	.string	"BUILT_IN_C2_SAD_TMP"
	.sleb128 157
	.uleb128 0x18
	.string	"BUILT_IN_C2_SATD"
	.sleb128 158
	.uleb128 0x18
	.string	"BUILT_IN_C2_INTRA"
	.sleb128 159
	.uleb128 0x18
	.string	"BUILT_IN_C2_MVSEL"
	.sleb128 160
	.uleb128 0x18
	.string	"BUILT_IN_C2_BCST"
	.sleb128 161
	.uleb128 0x18
	.string	"BUILT_IN_C2_VLCS_R"
	.sleb128 162
	.uleb128 0x18
	.string	"BUILT_IN_C2_VLCS"
	.sleb128 163
	.uleb128 0x18
	.string	"BUILT_IN_C2_ADDS"
	.sleb128 164
	.uleb128 0x18
	.string	"BUILT_IN_C2_ADDS_R"
	.sleb128 165
	.uleb128 0x18
	.string	"BUILT_IN_C2_SUBS"
	.sleb128 166
	.uleb128 0x18
	.string	"BUILT_IN_C2_SUBS_R"
	.sleb128 167
	.uleb128 0x18
	.string	"BUILT_IN_C2_MULS"
	.sleb128 168
	.uleb128 0x18
	.string	"BUILT_IN_C2_MADS"
	.sleb128 169
	.uleb128 0x18
	.string	"BUILT_IN_C2_SMADS"
	.sleb128 170
	.uleb128 0x18
	.string	"BUILT_IN_C2_CMOV"
	.sleb128 171
	.uleb128 0x18
	.string	"BUILT_IN_C2_MOV"
	.sleb128 172
	.uleb128 0x18
	.string	"BUILT_IN_C2_MOV_R"
	.sleb128 173
	.uleb128 0x18
	.string	"BUILT_IN_C2_CLP"
	.sleb128 174
	.uleb128 0x18
	.string	"BUILT_IN_C2_CHKRNG"
	.sleb128 175
	.uleb128 0x18
	.string	"BUILT_IN_C2_SCOND"
	.sleb128 176
	.uleb128 0x18
	.string	"BUILT_IN_C2_SCOND_R_WB"
	.sleb128 177
	.uleb128 0x18
	.string	"BUILT_IN_C2_SCOND_R"
	.sleb128 178
	.uleb128 0x18
	.string	"BUILT_IN_C2_SCOND_BR"
	.sleb128 179
	.uleb128 0x18
	.string	"BUILT_IN_C2_SCOND_BR_R"
	.sleb128 180
	.uleb128 0x18
	.string	"BUILT_IN_C2_BOP"
	.sleb128 181
	.uleb128 0x18
	.string	"BUILT_IN_C2_BDEP"
	.sleb128 182
	.uleb128 0x18
	.string	"BUILT_IN_C2_WRAP"
	.sleb128 183
	.uleb128 0x18
	.string	"BUILT_IN_C2_BXTR"
	.sleb128 184
	.uleb128 0x18
	.string	"BUILT_IN_C2_SUM4"
	.sleb128 185
	.uleb128 0x18
	.string	"BUILT_IN_C2_SUM3_SADDR"
	.sleb128 186
	.uleb128 0x18
	.string	"BUILT_IN_C2_SUM4_R"
	.sleb128 187
	.uleb128 0x18
	.string	"BUILT_IN_C2_MED"
	.sleb128 188
	.uleb128 0x18
	.string	"BUILT_IN_C2_GSUMS"
	.sleb128 189
	.uleb128 0x18
	.string	"BUILT_IN_C2_CLZOB"
	.sleb128 190
	.uleb128 0x18
	.string	"BUILT_IN_C2_THCTRL"
	.sleb128 191
	.uleb128 0x18
	.string	"BUILT_IN_C2_BR_F"
	.sleb128 192
	.uleb128 0x18
	.string	"BUILT_IN_C2_BR_T"
	.sleb128 193
	.uleb128 0x18
	.string	"BUILT_IN_C2_LD_V2G"
	.sleb128 194
	.uleb128 0x18
	.string	"BUILT_IN_C2_LD_V2G_IMM"
	.sleb128 195
	.uleb128 0x18
	.string	"BUILT_IN_C2_ST_G2V"
	.sleb128 196
	.uleb128 0x18
	.string	"BUILT_IN_C2_ST_G2V_IMM"
	.sleb128 197
	.uleb128 0x18
	.string	"BUILT_IN_C2_MVGR_R2S"
	.sleb128 198
	.uleb128 0x18
	.string	"BUILT_IN_C2_FORK"
	.sleb128 199
	.uleb128 0x18
	.string	"BUILT_IN_C2_JOINT"
	.sleb128 200
	.uleb128 0x18
	.string	"BUILT_IN_C2_THREAD_MAJOR"
	.sleb128 201
	.uleb128 0x18
	.string	"BUILT_IN_C2_THREAD_MINOR"
	.sleb128 202
	.uleb128 0x18
	.string	"BUILT_IN_FLOOR"
	.sleb128 203
	.uleb128 0x18
	.string	"BUILT_IN_FLOORF"
	.sleb128 204
	.uleb128 0x18
	.string	"BUILT_IN_FLOORL"
	.sleb128 205
	.uleb128 0x18
	.string	"BUILT_IN_POW"
	.sleb128 206
	.uleb128 0x18
	.string	"BUILT_IN_TAN"
	.sleb128 207
	.uleb128 0x18
	.string	"BUILT_IN_ACOS"
	.sleb128 208
	.uleb128 0x18
	.string	"BUILT_IN_ACOSF"
	.sleb128 209
	.uleb128 0x18
	.string	"BUILT_IN_ACOSH"
	.sleb128 210
	.uleb128 0x18
	.string	"BUILT_IN_ACOSHF"
	.sleb128 211
	.uleb128 0x18
	.string	"BUILT_IN_ACOSHL"
	.sleb128 212
	.uleb128 0x18
	.string	"BUILT_IN_ACOSL"
	.sleb128 213
	.uleb128 0x18
	.string	"BUILT_IN_ASIN"
	.sleb128 214
	.uleb128 0x18
	.string	"BUILT_IN_ASINF"
	.sleb128 215
	.uleb128 0x18
	.string	"BUILT_IN_ASINH"
	.sleb128 216
	.uleb128 0x18
	.string	"BUILT_IN_ASINHF"
	.sleb128 217
	.uleb128 0x18
	.string	"BUILT_IN_ASINHL"
	.sleb128 218
	.uleb128 0x18
	.string	"BUILT_IN_ASINL"
	.sleb128 219
	.uleb128 0x18
	.string	"BUILT_IN_ATAN"
	.sleb128 220
	.uleb128 0x18
	.string	"BUILT_IN_ATAN2"
	.sleb128 221
	.uleb128 0x18
	.string	"BUILT_IN_ATAN2F"
	.sleb128 222
	.uleb128 0x18
	.string	"BUILT_IN_ATAN2L"
	.sleb128 223
	.uleb128 0x18
	.string	"BUILT_IN_ATANF"
	.sleb128 224
	.uleb128 0x18
	.string	"BUILT_IN_ATANH"
	.sleb128 225
	.uleb128 0x18
	.string	"BUILT_IN_ATANHF"
	.sleb128 226
	.uleb128 0x18
	.string	"BUILT_IN_ATANHL"
	.sleb128 227
	.uleb128 0x18
	.string	"BUILT_IN_ATANL"
	.sleb128 228
	.uleb128 0x18
	.string	"BUILT_IN_CEIL"
	.sleb128 229
	.uleb128 0x18
	.string	"BUILT_IN_CEILF"
	.sleb128 230
	.uleb128 0x18
	.string	"BUILT_IN_CEILL"
	.sleb128 231
	.uleb128 0x18
	.string	"BUILT_IN_FMODF"
	.sleb128 232
	.uleb128 0x18
	.string	"BUILT_IN_FMODL"
	.sleb128 233
	.uleb128 0x18
	.string	"BUILT_IN_FREXP"
	.sleb128 234
	.uleb128 0x18
	.string	"BUILT_IN_FREXPF"
	.sleb128 235
	.uleb128 0x18
	.string	"BUILT_IN_FREXPL"
	.sleb128 236
	.uleb128 0x18
	.string	"BUILT_IN_LDEXP"
	.sleb128 237
	.uleb128 0x18
	.string	"BUILT_IN_LDEXPF"
	.sleb128 238
	.uleb128 0x18
	.string	"BUILT_IN_LDEXPL"
	.sleb128 239
	.uleb128 0x18
	.string	"BUILT_IN_LOG10"
	.sleb128 240
	.uleb128 0x18
	.string	"BUILT_IN_LOG10F"
	.sleb128 241
	.uleb128 0x18
	.string	"BUILT_IN_LOG10L"
	.sleb128 242
	.uleb128 0x18
	.string	"BUILT_IN_MODF"
	.sleb128 243
	.uleb128 0x18
	.string	"BUILT_IN_MODFF"
	.sleb128 244
	.uleb128 0x18
	.string	"BUILT_IN_MODFL"
	.sleb128 245
	.uleb128 0x18
	.string	"BUILT_IN_POWF"
	.sleb128 246
	.uleb128 0x18
	.string	"BUILT_IN_POWL"
	.sleb128 247
	.uleb128 0x18
	.string	"BUILT_IN_SINH"
	.sleb128 248
	.uleb128 0x18
	.string	"BUILT_IN_SINHF"
	.sleb128 249
	.uleb128 0x18
	.string	"BUILT_IN_SINHL"
	.sleb128 250
	.uleb128 0x18
	.string	"BUILT_IN_TANF"
	.sleb128 251
	.uleb128 0x18
	.string	"BUILT_IN_TANH"
	.sleb128 252
	.uleb128 0x18
	.string	"BUILT_IN_TANHF"
	.sleb128 253
	.uleb128 0x18
	.string	"BUILT_IN_TANHL"
	.sleb128 254
	.uleb128 0x18
	.string	"BUILT_IN_TANL"
	.sleb128 255
	.uleb128 0x18
	.string	"BUILT_IN_COSH"
	.sleb128 256
	.uleb128 0x18
	.string	"BUILT_IN_COSHF"
	.sleb128 257
	.uleb128 0x18
	.string	"BUILT_IN_COSHL"
	.sleb128 258
	.uleb128 0x18
	.string	"BUILT_IN_POPCOUNT"
	.sleb128 259
	.uleb128 0x18
	.string	"BUILT_IN_POPCOUNTL"
	.sleb128 260
	.uleb128 0x18
	.string	"BUILT_IN_POPCOUNTLL"
	.sleb128 261
	.uleb128 0x18
	.string	"BUILT_IN_CTZ"
	.sleb128 262
	.uleb128 0x18
	.string	"BUILT_IN_CTZL"
	.sleb128 263
	.uleb128 0x18
	.string	"BUILT_IN_CTZLL"
	.sleb128 264
	.uleb128 0x18
	.string	"BUILT_IN_SQRT"
	.sleb128 265
	.uleb128 0x18
	.string	"BUILT_IN_SIN"
	.sleb128 266
	.uleb128 0x18
	.string	"BUILT_IN_COS"
	.sleb128 267
	.uleb128 0x18
	.string	"BUILT_IN_EXP"
	.sleb128 268
	.uleb128 0x18
	.string	"BUILT_IN_LOG"
	.sleb128 269
	.uleb128 0x18
	.string	"BUILT_IN_SQRTF"
	.sleb128 270
	.uleb128 0x18
	.string	"BUILT_IN_SINF"
	.sleb128 271
	.uleb128 0x18
	.string	"BUILT_IN_COSF"
	.sleb128 272
	.uleb128 0x18
	.string	"BUILT_IN_EXPF"
	.sleb128 273
	.uleb128 0x18
	.string	"BUILT_IN_LOGF"
	.sleb128 274
	.uleb128 0x18
	.string	"BUILT_IN_SQRTL"
	.sleb128 275
	.uleb128 0x18
	.string	"BUILT_IN_SINL"
	.sleb128 276
	.uleb128 0x18
	.string	"BUILT_IN_COSL"
	.sleb128 277
	.uleb128 0x18
	.string	"BUILT_IN_EXPL"
	.sleb128 278
	.uleb128 0x18
	.string	"BUILT_IN_LOGL"
	.sleb128 279
	.uleb128 0x18
	.string	"BUILT_IN_INF"
	.sleb128 280
	.uleb128 0x18
	.string	"BUILT_IN_INFF"
	.sleb128 281
	.uleb128 0x18
	.string	"BUILT_IN_INFL"
	.sleb128 282
	.uleb128 0x18
	.string	"BUILT_IN_HUGE_VAL"
	.sleb128 283
	.uleb128 0x18
	.string	"BUILT_IN_HUGE_VALF"
	.sleb128 284
	.uleb128 0x18
	.string	"BUILT_IN_HUGE_VALL"
	.sleb128 285
	.uleb128 0x18
	.string	"BUILT_IN_NAN"
	.sleb128 286
	.uleb128 0x18
	.string	"BUILT_IN_NANF"
	.sleb128 287
	.uleb128 0x18
	.string	"BUILT_IN_NANL"
	.sleb128 288
	.uleb128 0x18
	.string	"BUILT_IN_NANS"
	.sleb128 289
	.uleb128 0x18
	.string	"BUILT_IN_NANSF"
	.sleb128 290
	.uleb128 0x18
	.string	"BUILT_IN_NANSL"
	.sleb128 291
	.uleb128 0x18
	.string	"BUILT_IN_SAVEREGS"
	.sleb128 292
	.uleb128 0x18
	.string	"BUILT_IN_CLASSIFY_TYPE"
	.sleb128 293
	.uleb128 0x18
	.string	"BUILT_IN_NEXT_ARG"
	.sleb128 294
	.uleb128 0x18
	.string	"BUILT_IN_ARGS_INFO"
	.sleb128 295
	.uleb128 0x18
	.string	"BUILT_IN_CONSTANT_P"
	.sleb128 296
	.uleb128 0x18
	.string	"BUILT_IN_FRAME_ADDRESS"
	.sleb128 297
	.uleb128 0x18
	.string	"BUILT_IN_RETURN_ADDRESS"
	.sleb128 298
	.uleb128 0x18
	.string	"BUILT_IN_AGGREGATE_INCOMING_ADDRESS"
	.sleb128 299
	.uleb128 0x18
	.string	"BUILT_IN_APPLY_ARGS"
	.sleb128 300
	.uleb128 0x18
	.string	"BUILT_IN_APPLY"
	.sleb128 301
	.uleb128 0x18
	.string	"BUILT_IN_RETURN"
	.sleb128 302
	.uleb128 0x18
	.string	"BUILT_IN_SETJMP"
	.sleb128 303
	.uleb128 0x18
	.string	"BUILT_IN_LONGJMP"
	.sleb128 304
	.uleb128 0x18
	.string	"BUILT_IN_TRAP"
	.sleb128 305
	.uleb128 0x18
	.string	"BUILT_IN_PREFETCH"
	.sleb128 306
	.uleb128 0x18
	.string	"BUILT_IN_PRINTF"
	.sleb128 307
	.uleb128 0x18
	.string	"BUILT_IN_PUTCHAR"
	.sleb128 308
	.uleb128 0x18
	.string	"BUILT_IN_PUTS"
	.sleb128 309
	.uleb128 0x18
	.string	"BUILT_IN_SNPRINTF"
	.sleb128 310
	.uleb128 0x18
	.string	"BUILT_IN_SPRINTF"
	.sleb128 311
	.uleb128 0x18
	.string	"BUILT_IN_SCANF"
	.sleb128 312
	.uleb128 0x18
	.string	"BUILT_IN_SSCANF"
	.sleb128 313
	.uleb128 0x18
	.string	"BUILT_IN_VPRINTF"
	.sleb128 314
	.uleb128 0x18
	.string	"BUILT_IN_VSCANF"
	.sleb128 315
	.uleb128 0x18
	.string	"BUILT_IN_VSSCANF"
	.sleb128 316
	.uleb128 0x18
	.string	"BUILT_IN_VSNPRINTF"
	.sleb128 317
	.uleb128 0x18
	.string	"BUILT_IN_VSPRINTF"
	.sleb128 318
	.uleb128 0x18
	.string	"BUILT_IN_FPUTC"
	.sleb128 319
	.uleb128 0x18
	.string	"BUILT_IN_FPUTS"
	.sleb128 320
	.uleb128 0x18
	.string	"BUILT_IN_FWRITE"
	.sleb128 321
	.uleb128 0x18
	.string	"BUILT_IN_FPRINTF"
	.sleb128 322
	.uleb128 0x18
	.string	"BUILT_IN_PUTCHAR_UNLOCKED"
	.sleb128 323
	.uleb128 0x18
	.string	"BUILT_IN_PUTS_UNLOCKED"
	.sleb128 324
	.uleb128 0x18
	.string	"BUILT_IN_PRINTF_UNLOCKED"
	.sleb128 325
	.uleb128 0x18
	.string	"BUILT_IN_FPUTC_UNLOCKED"
	.sleb128 326
	.uleb128 0x18
	.string	"BUILT_IN_FPUTS_UNLOCKED"
	.sleb128 327
	.uleb128 0x18
	.string	"BUILT_IN_FWRITE_UNLOCKED"
	.sleb128 328
	.uleb128 0x18
	.string	"BUILT_IN_ISGREATER"
	.sleb128 329
	.uleb128 0x18
	.string	"BUILT_IN_ISGREATEREQUAL"
	.sleb128 330
	.uleb128 0x18
	.string	"BUILT_IN_ISLESS"
	.sleb128 331
	.uleb128 0x18
	.string	"BUILT_IN_ISLESSEQUAL"
	.sleb128 332
	.uleb128 0x18
	.string	"BUILT_IN_ISLESSGREATER"
	.sleb128 333
	.uleb128 0x18
	.string	"BUILT_IN_ISUNORDERED"
	.sleb128 334
	.uleb128 0x18
	.string	"BUILT_IN_UNWIND_INIT"
	.sleb128 335
	.uleb128 0x18
	.string	"BUILT_IN_DWARF_CFA"
	.sleb128 336
	.uleb128 0x18
	.string	"BUILT_IN_DWARF_SP_COLUMN"
	.sleb128 337
	.uleb128 0x18
	.string	"BUILT_IN_INIT_DWARF_REG_SIZES"
	.sleb128 338
	.uleb128 0x18
	.string	"BUILT_IN_FROB_RETURN_ADDR"
	.sleb128 339
	.uleb128 0x18
	.string	"BUILT_IN_EXTRACT_RETURN_ADDR"
	.sleb128 340
	.uleb128 0x18
	.string	"BUILT_IN_EH_RETURN"
	.sleb128 341
	.uleb128 0x18
	.string	"BUILT_IN_EH_RETURN_DATA_REGNO"
	.sleb128 342
	.uleb128 0x18
	.string	"BUILT_IN_VA_START"
	.sleb128 343
	.uleb128 0x18
	.string	"BUILT_IN_STDARG_START"
	.sleb128 344
	.uleb128 0x18
	.string	"BUILT_IN_VA_END"
	.sleb128 345
	.uleb128 0x18
	.string	"BUILT_IN_VA_COPY"
	.sleb128 346
	.uleb128 0x18
	.string	"BUILT_IN_EXPECT"
	.sleb128 347
	.uleb128 0x18
	.string	"BUILT_IN_EXTEND_POINTER"
	.sleb128 348
	.uleb128 0x18
	.string	"BUILT_IN_NEW"
	.sleb128 349
	.uleb128 0x18
	.string	"BUILT_IN_VEC_NEW"
	.sleb128 350
	.uleb128 0x18
	.string	"BUILT_IN_DELETE"
	.sleb128 351
	.uleb128 0x18
	.string	"BUILT_IN_VEC_DELETE"
	.sleb128 352
	.uleb128 0x18
	.string	"BUILT_IN_ABORT"
	.sleb128 353
	.uleb128 0x18
	.string	"BUILT_IN_EXIT"
	.sleb128 354
	.uleb128 0x18
	.string	"BUILT_IN__EXIT"
	.sleb128 355
	.uleb128 0x18
	.string	"BUILT_IN__EXIT2"
	.sleb128 356
	.uleb128 0x18
	.string	"END_BUILTINS"
	.sleb128 357
	.byte	0x0
	.uleb128 0x4
	.long	0x3423
	.string	"tree_common"
	.byte	0x10
	.byte	0x3
	.byte	0x8c
	.uleb128 0x7
	.string	"chain"
	.byte	0x3
	.byte	0x8d
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1b
	.long	.LASF3
	.byte	0x3
	.byte	0x8e
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x5
	.long	.LASF0
	.byte	0x3
	.byte	0x90
	.long	0xac7
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"side_effects_flag"
	.byte	0x3
	.byte	0x92
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"constant_flag"
	.byte	0x3
	.byte	0x93
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"addressable_flag"
	.byte	0x3
	.byte	0x94
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"volatile_flag"
	.byte	0x3
	.byte	0x95
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"readonly_flag"
	.byte	0x3
	.byte	0x96
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"unsigned_flag"
	.byte	0x3
	.byte	0x97
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"asm_written_flag"
	.byte	0x3
	.byte	0x98
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"not_emitted_by_gxx"
	.byte	0x3
	.byte	0x9a
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"used_flag"
	.byte	0x3
	.byte	0x9f
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"nothrow_flag"
	.byte	0x3
	.byte	0xa0
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"static_flag"
	.byte	0x3
	.byte	0xa1
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"public_flag"
	.byte	0x3
	.byte	0xa2
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"private_flag"
	.byte	0x3
	.byte	0xa3
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"protected_flag"
	.byte	0x3
	.byte	0xa4
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"bounded_flag"
	.byte	0x3
	.byte	0xa5
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"deprecated_flag"
	.byte	0x3
	.byte	0xa6
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.long	.LASF7
	.byte	0x3
	.byte	0xa8
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.long	.LASF8
	.byte	0x3
	.byte	0xa9
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.long	.LASF9
	.byte	0x3
	.byte	0xaa
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.long	.LASF10
	.byte	0x3
	.byte	0xab
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.long	.LASF11
	.byte	0x3
	.byte	0xac
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.long	.LASF12
	.byte	0x3
	.byte	0xad
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.long	.LASF13
	.byte	0x3
	.byte	0xae
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.long	.LASF14
	.byte	0x3
	.byte	0xb0
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"sbuf"
	.byte	0x3
	.byte	0xb5
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"sdram"
	.byte	0x3
	.byte	0xb6
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"v1buf"
	.byte	0x3
	.byte	0xb7
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"v2buf"
	.byte	0x3
	.byte	0xb8
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"v4buf"
	.byte	0x3
	.byte	0xb9
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0xd
	.long	0x345f
	.string	"tree_int_cst_lowhi"
	.byte	0x10
	.byte	0x3
	.value	0x30a
	.uleb128 0xe
	.string	"low"
	.byte	0x3
	.value	0x30b
	.long	0x48e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"high"
	.byte	0x3
	.value	0x30c
	.long	0x47d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0xd
	.long	0x34a7
	.string	"tree_int_cst"
	.byte	0x24
	.byte	0x3
	.value	0x303
	.uleb128 0x1c
	.long	.LASF1
	.byte	0x3
	.value	0x304
	.long	0x3142
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"rtl"
	.byte	0x3
	.value	0x305
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"int_cst"
	.byte	0x3
	.value	0x30d
	.long	0x3423
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xd
	.long	0x34f5
	.string	"tree_real_cst"
	.byte	0x18
	.byte	0x3
	.value	0x31f
	.uleb128 0x1c
	.long	.LASF1
	.byte	0x3
	.value	0x320
	.long	0x3142
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"rtl"
	.byte	0x3
	.value	0x321
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"real_cst_ptr"
	.byte	0x3
	.value	0x322
	.long	0x3502
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x19
	.string	"real_value"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x34f5
	.uleb128 0xd
	.long	0x3568
	.string	"tree_string"
	.byte	0x20
	.byte	0x3
	.value	0x333
	.uleb128 0x1c
	.long	.LASF1
	.byte	0x3
	.value	0x334
	.long	0x3142
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"rtl"
	.byte	0x3
	.value	0x335
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x1c
	.long	.LASF15
	.byte	0x3
	.value	0x336
	.long	0x2dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x1c
	.long	.LASF16
	.byte	0x3
	.value	0x337
	.long	0x2ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xe
	.string	"st"
	.byte	0x3
	.value	0x339
	.long	0x3568
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1439
	.uleb128 0xd
	.long	0x35c3
	.string	"tree_complex"
	.byte	0x1c
	.byte	0x3
	.value	0x342
	.uleb128 0x1c
	.long	.LASF1
	.byte	0x3
	.value	0x343
	.long	0x3142
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"rtl"
	.byte	0x3
	.value	0x344
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"real"
	.byte	0x3
	.value	0x345
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xe
	.string	"imag"
	.byte	0x3
	.value	0x346
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0xd
	.long	0x360b
	.string	"tree_vector"
	.byte	0x18
	.byte	0x3
	.value	0x355
	.uleb128 0x1c
	.long	.LASF1
	.byte	0x3
	.value	0x356
	.long	0x3142
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"rtl"
	.byte	0x3
	.value	0x357
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"elements"
	.byte	0x3
	.value	0x358
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x4
	.long	0x3655
	.string	"_obstack_chunk"
	.byte	0xc
	.byte	0x14
	.byte	0xa2
	.uleb128 0x7
	.string	"limit"
	.byte	0x14
	.byte	0xa3
	.long	0x4e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"prev"
	.byte	0x14
	.byte	0xa4
	.long	0x3655
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"contents"
	.byte	0x14
	.byte	0xa5
	.long	0x773
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x360b
	.uleb128 0xd
	.long	0x3788
	.string	"obstack"
	.byte	0x2c
	.byte	0x11
	.value	0x31b
	.uleb128 0x7
	.string	"chunk_size"
	.byte	0x14
	.byte	0xaa
	.long	0x4c7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"chunk"
	.byte	0x14
	.byte	0xab
	.long	0x3655
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"object_base"
	.byte	0x14
	.byte	0xac
	.long	0x4e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"next_free"
	.byte	0x14
	.byte	0xad
	.long	0x4e6
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"chunk_limit"
	.byte	0x14
	.byte	0xae
	.long	0x4e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"temp"
	.byte	0x14
	.byte	0xaf
	.long	0x2dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"alignment_mask"
	.byte	0x14
	.byte	0xb0
	.long	0x2dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"chunkfun"
	.byte	0x14
	.byte	0xb5
	.long	0x379d
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"freefun"
	.byte	0x14
	.byte	0xb6
	.long	0x37b4
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x7
	.string	"extra_arg"
	.byte	0x14
	.byte	0xb7
	.long	0x4e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.string	"use_extra_arg"
	.byte	0x14
	.byte	0xbd
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x6
	.string	"maybe_empty_object"
	.byte	0x14
	.byte	0xbe
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x6
	.string	"alloc_failed"
	.byte	0x14
	.byte	0xc2
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x1d
	.long	0x379d
	.byte	0x1
	.long	0x3655
	.uleb128 0x1e
	.long	0x4e4
	.uleb128 0x1e
	.long	0x4c7
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x3788
	.uleb128 0x1f
	.long	0x37b4
	.byte	0x1
	.uleb128 0x1e
	.long	0x4e4
	.uleb128 0x1e
	.long	0x3655
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x37a3
	.uleb128 0x14
	.long	0x37f8
	.long	.LASF17
	.byte	0xc
	.byte	0x6
	.byte	0x19
	.uleb128 0x7
	.string	"str"
	.byte	0x6
	.byte	0x1c
	.long	0x783
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"len"
	.byte	0x6
	.byte	0x1d
	.long	0x3b6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"hash_value"
	.byte	0x6
	.byte	0x1e
	.long	0x3b6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0xd
	.long	0x382f
	.string	"tree_identifier"
	.byte	0x1c
	.byte	0x3
	.value	0x376
	.uleb128 0x1c
	.long	.LASF1
	.byte	0x3
	.value	0x377
	.long	0x3142
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"id"
	.byte	0x3
	.value	0x378
	.long	0x37ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0xd
	.long	0x3874
	.string	"tree_list"
	.byte	0x18
	.byte	0x3
	.value	0x380
	.uleb128 0x1c
	.long	.LASF1
	.byte	0x3
	.value	0x381
	.long	0x3142
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"purpose"
	.byte	0x3
	.value	0x382
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x1c
	.long	.LASF18
	.byte	0x3
	.value	0x383
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xd
	.long	0x38b2
	.string	"tree_vec"
	.byte	0x18
	.byte	0x3
	.value	0x38e
	.uleb128 0x1c
	.long	.LASF1
	.byte	0x3
	.value	0x38f
	.long	0x3142
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1c
	.long	.LASF15
	.byte	0x3
	.value	0x390
	.long	0x2dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"a"
	.byte	0x3
	.value	0x391
	.long	0x38b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x10
	.long	0x38c2
	.long	0x1e6
	.uleb128 0x11
	.long	0x3cd
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x390e
	.string	"tree_exp"
	.byte	0x18
	.byte	0x3
	.value	0x3d4
	.uleb128 0x1c
	.long	.LASF1
	.byte	0x3
	.value	0x3d5
	.long	0x3142
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"complexity"
	.byte	0x3
	.value	0x3d6
	.long	0x2dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"operands"
	.byte	0x3
	.value	0x3d9
	.long	0x38b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xd
	.long	0x39fe
	.string	"tree_block"
	.byte	0x2c
	.byte	0x3
	.value	0x40a
	.uleb128 0x1c
	.long	.LASF1
	.byte	0x3
	.value	0x40b
	.long	0x3142
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x20
	.string	"handler_block_flag"
	.byte	0x3
	.value	0x40d
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x21
	.long	.LASF19
	.byte	0x3
	.value	0x40e
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x20
	.string	"block_num"
	.byte	0x3
	.value	0x40f
	.long	0x3b6
	.byte	0x4
	.byte	0x1e
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"vars"
	.byte	0x3
	.value	0x411
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xe
	.string	"subblocks"
	.byte	0x3
	.value	0x412
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xe
	.string	"supercontext"
	.byte	0x3
	.value	0x413
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x1c
	.long	.LASF20
	.byte	0x3
	.value	0x414
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xe
	.string	"fragment_origin"
	.byte	0x3
	.value	0x415
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xe
	.string	"fragment_chain"
	.byte	0x3
	.value	0x416
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x22
	.long	0x3a41
	.string	"tree_type_symtab"
	.byte	0x4
	.byte	0x3
	.value	0x570
	.uleb128 0xa
	.string	"address"
	.byte	0x3
	.value	0x571
	.long	0x2dd
	.uleb128 0x9
	.long	.LASF16
	.byte	0x3
	.value	0x572
	.long	0x4e6
	.uleb128 0xa
	.string	"die"
	.byte	0x3
	.value	0x573
	.long	0x3a4e
	.byte	0x0
	.uleb128 0x19
	.string	"die_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x3a41
	.uleb128 0xd
	.long	0x3d99
	.string	"tree_type"
	.byte	0x74
	.byte	0x3
	.value	0x551
	.uleb128 0x1c
	.long	.LASF1
	.byte	0x3
	.value	0x552
	.long	0x3142
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"values"
	.byte	0x3
	.value	0x553
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"size"
	.byte	0x3
	.value	0x554
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x1c
	.long	.LASF21
	.byte	0x3
	.value	0x555
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x1c
	.long	.LASF22
	.byte	0x3
	.value	0x556
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xe
	.string	"uid"
	.byte	0x3
	.value	0x557
	.long	0x3b6
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x20
	.string	"precision"
	.byte	0x3
	.value	0x559
	.long	0x3b6
	.byte	0x4
	.byte	0x9
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.string	"mode"
	.byte	0x3
	.value	0x55a
	.long	0x83a
	.byte	0x4
	.byte	0x7
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.string	"string_flag"
	.byte	0x3
	.value	0x55c
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.string	"no_force_blk_flag"
	.byte	0x3
	.value	0x55d
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.string	"needs_constructing_flag"
	.byte	0x3
	.value	0x55e
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.string	"transparent_union_flag"
	.byte	0x3
	.value	0x55f
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.string	"packed_flag"
	.byte	0x3
	.value	0x560
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.string	"restrict_flag"
	.byte	0x3
	.value	0x561
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x21
	.long	.LASF23
	.byte	0x3
	.value	0x562
	.long	0x3b6
	.byte	0x4
	.byte	0x2
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x21
	.long	.LASF7
	.byte	0x3
	.value	0x564
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x21
	.long	.LASF8
	.byte	0x3
	.value	0x565
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x21
	.long	.LASF9
	.byte	0x3
	.value	0x566
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x21
	.long	.LASF10
	.byte	0x3
	.value	0x567
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x21
	.long	.LASF11
	.byte	0x3
	.value	0x568
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x21
	.long	.LASF12
	.byte	0x3
	.value	0x569
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x21
	.long	.LASF13
	.byte	0x3
	.value	0x56a
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x21
	.long	.LASF24
	.byte	0x3
	.value	0x56b
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1c
	.long	.LASF25
	.byte	0x3
	.value	0x56d
	.long	0x3b6
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xe
	.string	"pointer_to"
	.byte	0x3
	.value	0x56e
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xe
	.string	"reference_to"
	.byte	0x3
	.value	0x56f
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xe
	.string	"symtab"
	.byte	0x3
	.value	0x574
	.long	0x39fe
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x1c
	.long	.LASF26
	.byte	0x3
	.value	0x576
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xe
	.string	"minval"
	.byte	0x3
	.value	0x577
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xe
	.string	"maxval"
	.byte	0x3
	.value	0x578
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xe
	.string	"next_variant"
	.byte	0x3
	.value	0x579
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xe
	.string	"main_variant"
	.byte	0x3
	.value	0x57a
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x1c
	.long	.LASF27
	.byte	0x3
	.value	0x57b
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x1c
	.long	.LASF28
	.byte	0x3
	.value	0x57c
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xe
	.string	"alias_set"
	.byte	0x3
	.value	0x57d
	.long	0x47d
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x1c
	.long	.LASF29
	.byte	0x3
	.value	0x57f
	.long	0x3dba
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xe
	.string	"ty_idx"
	.byte	0x3
	.value	0x581
	.long	0x3b6
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xe
	.string	"field_ids_used"
	.byte	0x3
	.value	0x582
	.long	0x3b6
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xe
	.string	"dst_id"
	.byte	0x3
	.value	0x583
	.long	0x13fa
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xe
	.string	"extra_methods"
	.byte	0x3
	.value	0x58a
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.byte	0x0
	.uleb128 0xd
	.long	0x3dba
	.string	"lang_type"
	.byte	0x4c
	.byte	0x3
	.value	0x57f
	.uleb128 0xe
	.string	"u"
	.byte	0xa
	.value	0x4e0
	.long	0x74a8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x3d99
	.uleb128 0xd
	.long	0x3e03
	.string	"tree_decl_u1_a"
	.byte	0x4
	.byte	0x3
	.value	0x817
	.uleb128 0x21
	.long	.LASF25
	.byte	0x3
	.value	0x818
	.long	0x3b6
	.byte	0x4
	.byte	0x18
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x20
	.string	"off_align"
	.byte	0x3
	.value	0x819
	.long	0x3b6
	.byte	0x4
	.byte	0x8
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x22
	.long	0x3e38
	.string	"tree_decl_u1"
	.byte	0x8
	.byte	0x3
	.value	0x80e
	.uleb128 0xa
	.string	"f"
	.byte	0x3
	.value	0x811
	.long	0x1498
	.uleb128 0xa
	.string	"i"
	.byte	0x3
	.value	0x814
	.long	0x47d
	.uleb128 0xa
	.string	"a"
	.byte	0x3
	.value	0x81a
	.long	0x3dc0
	.byte	0x0
	.uleb128 0x22
	.long	0x3e77
	.string	"tree_decl_u2"
	.byte	0x4
	.byte	0x3
	.value	0x837
	.uleb128 0xa
	.string	"f"
	.byte	0x3
	.value	0x838
	.long	0x481b
	.uleb128 0xa
	.string	"r"
	.byte	0x3
	.value	0x839
	.long	0x9e
	.uleb128 0xa
	.string	"t"
	.byte	0x3
	.value	0x83a
	.long	0x1e6
	.uleb128 0xa
	.string	"i"
	.byte	0x3
	.value	0x83b
	.long	0x2dd
	.byte	0x0
	.uleb128 0x23
	.long	0x481b
	.long	.LASF30
	.value	0x134
	.byte	0x3
	.value	0x7c2
	.uleb128 0x7
	.string	"eh"
	.byte	0x8
	.byte	0xb5
	.long	0x617c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"stmt"
	.byte	0x8
	.byte	0xb6
	.long	0x6190
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1b
	.long	.LASF31
	.byte	0x8
	.byte	0xb7
	.long	0x6196
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"emit"
	.byte	0x8
	.byte	0xb8
	.long	0x619c
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"varasm"
	.byte	0x8
	.byte	0xb9
	.long	0x61b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x1b
	.long	.LASF26
	.byte	0x8
	.byte	0xbe
	.long	0x2ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"decl"
	.byte	0x8
	.byte	0xc1
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"outer"
	.byte	0x8
	.byte	0xc4
	.long	0x481b
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"pops_args"
	.byte	0x8
	.byte	0xc9
	.long	0x2dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1b
	.long	.LASF32
	.byte	0x8
	.byte	0xce
	.long	0x2dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x7
	.string	"pretend_args_size"
	.byte	0x8
	.byte	0xd3
	.long	0x2dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x7
	.string	"outgoing_args_size"
	.byte	0x8
	.byte	0xd7
	.long	0x2dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x7
	.string	"arg_offset_rtx"
	.byte	0x8
	.byte	0xdb
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x7
	.string	"args_info"
	.byte	0x8
	.byte	0xdf
	.long	0x3d4
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x7
	.string	"return_rtx"
	.byte	0x8
	.byte	0xe5
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x7
	.string	"internal_arg_pointer"
	.byte	0x8
	.byte	0xe8
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x1b
	.long	.LASF33
	.byte	0x8
	.byte	0xec
	.long	0x2ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x7
	.string	"hard_reg_initial_vals"
	.byte	0x8
	.byte	0xf0
	.long	0x61cf
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x7
	.string	"x_function_call_count"
	.byte	0x8
	.byte	0xf3
	.long	0x2dd
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0x7
	.string	"x_nonlocal_labels"
	.byte	0x8
	.byte	0xf8
	.long	0x1e6
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x7
	.string	"x_nonlocal_goto_handler_slots"
	.byte	0x8
	.byte	0xfe
	.long	0x9e
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0xe
	.string	"x_nonlocal_goto_handler_labels"
	.byte	0x8
	.value	0x102
	.long	0x9e
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xe
	.string	"x_nonlocal_goto_stack_level"
	.byte	0x8
	.value	0x107
	.long	0x9e
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0xe
	.string	"x_cleanup_label"
	.byte	0x8
	.value	0x10d
	.long	0x9e
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0xe
	.string	"x_return_label"
	.byte	0x8
	.value	0x112
	.long	0x9e
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.uleb128 0xe
	.string	"computed_goto_common_label"
	.byte	0x8
	.value	0x115
	.long	0x9e
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0xe
	.string	"computed_goto_common_reg"
	.byte	0x8
	.value	0x116
	.long	0x9e
	.byte	0x3
	.byte	0x23
	.uleb128 0xa4
	.uleb128 0xe
	.string	"x_save_expr_regs"
	.byte	0x8
	.value	0x11a
	.long	0x9e
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0xe
	.string	"x_stack_slot_list"
	.byte	0x8
	.value	0x11e
	.long	0x9e
	.byte	0x3
	.byte	0x23
	.uleb128 0xac
	.uleb128 0xe
	.string	"x_rtl_expr_chain"
	.byte	0x8
	.value	0x121
	.long	0x1e6
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0xe
	.string	"x_tail_recursion_label"
	.byte	0x8
	.value	0x125
	.long	0x9e
	.byte	0x3
	.byte	0x23
	.uleb128 0xb4
	.uleb128 0xe
	.string	"x_tail_recursion_reentry"
	.byte	0x8
	.value	0x128
	.long	0x9e
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0xe
	.string	"x_arg_pointer_save_area"
	.byte	0x8
	.value	0x12e
	.long	0x9e
	.byte	0x3
	.byte	0x23
	.uleb128 0xbc
	.uleb128 0xe
	.string	"x_clobber_return_insn"
	.byte	0x8
	.value	0x133
	.long	0x9e
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0xe
	.string	"x_frame_offset"
	.byte	0x8
	.value	0x138
	.long	0x47d
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.uleb128 0xe
	.string	"x_context_display"
	.byte	0x8
	.value	0x13d
	.long	0x1e6
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.uleb128 0xe
	.string	"x_trampoline_list"
	.byte	0x8
	.value	0x146
	.long	0x1e6
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0xe
	.string	"x_parm_birth_insn"
	.byte	0x8
	.value	0x149
	.long	0x9e
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0xe
	.string	"x_last_parm_insn"
	.byte	0x8
	.value	0x14d
	.long	0x9e
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0xe
	.string	"x_max_parm_reg"
	.byte	0x8
	.value	0x151
	.long	0x3b6
	.byte	0x3
	.byte	0x23
	.uleb128 0xdc
	.uleb128 0xe
	.string	"x_parm_reg_stack_loc"
	.byte	0x8
	.value	0x157
	.long	0x5e1c
	.byte	0x3
	.byte	0x23
	.uleb128 0xe0
	.uleb128 0xe
	.string	"x_temp_slots"
	.byte	0x8
	.value	0x15a
	.long	0x61e1
	.byte	0x3
	.byte	0x23
	.uleb128 0xe4
	.uleb128 0xe
	.string	"x_temp_slot_level"
	.byte	0x8
	.value	0x15d
	.long	0x2dd
	.byte	0x3
	.byte	0x23
	.uleb128 0xe8
	.uleb128 0xe
	.string	"x_var_temp_slot_level"
	.byte	0x8
	.value	0x160
	.long	0x2dd
	.byte	0x3
	.byte	0x23
	.uleb128 0xec
	.uleb128 0xe
	.string	"x_target_temp_slot_level"
	.byte	0x8
	.value	0x166
	.long	0x2dd
	.byte	0x3
	.byte	0x23
	.uleb128 0xf0
	.uleb128 0xe
	.string	"fixup_var_refs_queue"
	.byte	0x8
	.value	0x16a
	.long	0x5e82
	.byte	0x3
	.byte	0x23
	.uleb128 0xf4
	.uleb128 0xe
	.string	"inlinable"
	.byte	0x8
	.value	0x16d
	.long	0x2dd
	.byte	0x3
	.byte	0x23
	.uleb128 0xf8
	.uleb128 0xe
	.string	"no_debugging_symbols"
	.byte	0x8
	.value	0x16e
	.long	0x2dd
	.byte	0x3
	.byte	0x23
	.uleb128 0xfc
	.uleb128 0xe
	.string	"original_arg_vector"
	.byte	0x8
	.value	0x16f
	.long	0x19e
	.byte	0x3
	.byte	0x23
	.uleb128 0x100
	.uleb128 0xe
	.string	"original_decl_initial"
	.byte	0x8
	.value	0x170
	.long	0x1e6
	.byte	0x3
	.byte	0x23
	.uleb128 0x104
	.uleb128 0xe
	.string	"inl_last_parm_insn"
	.byte	0x8
	.value	0x173
	.long	0x9e
	.byte	0x3
	.byte	0x23
	.uleb128 0x108
	.uleb128 0xe
	.string	"inl_max_label_num"
	.byte	0x8
	.value	0x175
	.long	0x2dd
	.byte	0x3
	.byte	0x23
	.uleb128 0x10c
	.uleb128 0xe
	.string	"funcdef_no"
	.byte	0x8
	.value	0x178
	.long	0x2dd
	.byte	0x3
	.byte	0x23
	.uleb128 0x110
	.uleb128 0xe
	.string	"machine"
	.byte	0x8
	.value	0x17d
	.long	0x61fa
	.byte	0x3
	.byte	0x23
	.uleb128 0x114
	.uleb128 0xe
	.string	"stack_alignment_needed"
	.byte	0x8
	.value	0x17f
	.long	0x2dd
	.byte	0x3
	.byte	0x23
	.uleb128 0x118
	.uleb128 0xe
	.string	"preferred_stack_boundary"
	.byte	0x8
	.value	0x181
	.long	0x2dd
	.byte	0x3
	.byte	0x23
	.uleb128 0x11c
	.uleb128 0x1c
	.long	.LASF34
	.byte	0x8
	.value	0x184
	.long	0x6435
	.byte	0x3
	.byte	0x23
	.uleb128 0x120
	.uleb128 0xe
	.string	"epilogue_delay_list"
	.byte	0x8
	.value	0x18a
	.long	0x9e
	.byte	0x3
	.byte	0x23
	.uleb128 0x124
	.uleb128 0x20
	.string	"returns_struct"
	.byte	0x8
	.value	0x190
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x20
	.string	"returns_pcc_struct"
	.byte	0x8
	.value	0x194
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x20
	.string	"returns_pointer"
	.byte	0x8
	.value	0x197
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x20
	.string	"needs_context"
	.byte	0x8
	.value	0x19a
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x20
	.string	"calls_setjmp"
	.byte	0x8
	.value	0x19d
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x20
	.string	"calls_longjmp"
	.byte	0x8
	.value	0x1a0
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x20
	.string	"calls_alloca"
	.byte	0x8
	.value	0x1a4
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x20
	.string	"calls_eh_return"
	.byte	0x8
	.value	0x1a7
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x20
	.string	"has_nonlocal_label"
	.byte	0x8
	.value	0x1ab
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x20
	.string	"has_nonlocal_goto"
	.byte	0x8
	.value	0x1af
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x20
	.string	"contains_functions"
	.byte	0x8
	.value	0x1b2
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x20
	.string	"has_computed_jump"
	.byte	0x8
	.value	0x1b5
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x20
	.string	"is_thunk"
	.byte	0x8
	.value	0x1ba
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x20
	.string	"all_throwers_are_sibcalls"
	.byte	0x8
	.value	0x1c1
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x20
	.string	"instrument_entry_exit"
	.byte	0x8
	.value	0x1c5
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x20
	.string	"arc_profile"
	.byte	0x8
	.value	0x1c8
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x20
	.string	"profile"
	.byte	0x8
	.value	0x1cb
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x20
	.string	"limit_stack"
	.byte	0x8
	.value	0x1cf
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x20
	.string	"stdarg"
	.byte	0x8
	.value	0x1d2
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x20
	.string	"x_whole_function_mode_p"
	.byte	0x8
	.value	0x1d8
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x20
	.string	"x_dont_save_pending_sizes_p"
	.byte	0x8
	.value	0x1e1
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x20
	.string	"uses_const_pool"
	.byte	0x8
	.value	0x1e4
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x20
	.string	"uses_pic_offset_table"
	.byte	0x8
	.value	0x1e7
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x20
	.string	"uses_eh_lsda"
	.byte	0x8
	.value	0x1ea
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x20
	.string	"arg_pointer_save_area_init"
	.byte	0x8
	.value	0x1ed
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1c
	.long	.LASF35
	.byte	0x8
	.value	0x1fa
	.long	0x6106
	.byte	0x3
	.byte	0x23
	.uleb128 0x12c
	.uleb128 0xe
	.string	"max_jumptable_ents"
	.byte	0x8
	.value	0x1fe
	.long	0x2dd
	.byte	0x3
	.byte	0x23
	.uleb128 0x130
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x3e77
	.uleb128 0x24
	.long	0x4859
	.byte	0x4
	.byte	0x3
	.value	0x84e
	.uleb128 0xa
	.string	"st"
	.byte	0x3
	.value	0x84f
	.long	0x3568
	.uleb128 0xa
	.string	"label_idx"
	.byte	0x3
	.value	0x850
	.long	0x13e9
	.uleb128 0xa
	.string	"field_id"
	.byte	0x3
	.value	0x851
	.long	0x3b6
	.byte	0x0
	.uleb128 0xd
	.long	0x4f90
	.string	"tree_decl"
	.byte	0xa0
	.byte	0x3
	.value	0x7c5
	.uleb128 0x1c
	.long	.LASF1
	.byte	0x3
	.value	0x7c6
	.long	0x3142
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"locus"
	.byte	0x3
	.value	0x7c7
	.long	0xab5
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"uid"
	.byte	0x3
	.value	0x7c8
	.long	0x3b6
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xe
	.string	"size"
	.byte	0x3
	.value	0x7c9
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x20
	.string	"mode"
	.byte	0x3
	.value	0x7ca
	.long	0x83a
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x20
	.string	"external_flag"
	.byte	0x3
	.value	0x7cc
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x20
	.string	"nonlocal_flag"
	.byte	0x3
	.value	0x7cd
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x20
	.string	"regdecl_flag"
	.byte	0x3
	.value	0x7ce
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x20
	.string	"inline_flag"
	.byte	0x3
	.value	0x7cf
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x20
	.string	"bit_field_flag"
	.byte	0x3
	.value	0x7d0
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x20
	.string	"virtual_flag"
	.byte	0x3
	.value	0x7d1
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x20
	.string	"ignored_flag"
	.byte	0x3
	.value	0x7d2
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x21
	.long	.LASF19
	.byte	0x3
	.value	0x7d3
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x20
	.string	"sbuf_flag"
	.byte	0x3
	.value	0x7d7
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x20
	.string	"sdram_flag"
	.byte	0x3
	.value	0x7d8
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x20
	.string	"v1buf_flag"
	.byte	0x3
	.value	0x7d9
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x20
	.string	"v2buf_flag"
	.byte	0x3
	.value	0x7da
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x20
	.string	"v4buf_flag"
	.byte	0x3
	.value	0x7db
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x20
	.string	"in_system_header_flag"
	.byte	0x3
	.value	0x7df
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x20
	.string	"common_flag"
	.byte	0x3
	.value	0x7e0
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x20
	.string	"defer_output"
	.byte	0x3
	.value	0x7e1
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x20
	.string	"transparent_union"
	.byte	0x3
	.value	0x7e2
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x20
	.string	"static_ctor_flag"
	.byte	0x3
	.value	0x7e3
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x20
	.string	"static_dtor_flag"
	.byte	0x3
	.value	0x7e4
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x20
	.string	"artificial_flag"
	.byte	0x3
	.value	0x7e5
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x20
	.string	"weak_flag"
	.byte	0x3
	.value	0x7e6
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x20
	.string	"non_addr_const_p"
	.byte	0x3
	.value	0x7e8
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x20
	.string	"no_instrument_function_entry_exit"
	.byte	0x3
	.value	0x7e9
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x20
	.string	"comdat_flag"
	.byte	0x3
	.value	0x7ea
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x20
	.string	"malloc_flag"
	.byte	0x3
	.value	0x7eb
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.string	"no_limit_stack"
	.byte	0x3
	.value	0x7ec
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x21
	.long	.LASF6
	.byte	0x3
	.value	0x7ed
	.long	0x1448
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.string	"pure_flag"
	.byte	0x3
	.value	0x7ee
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x21
	.long	.LASF23
	.byte	0x3
	.value	0x7f0
	.long	0x3b6
	.byte	0x4
	.byte	0x2
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.string	"non_addressable"
	.byte	0x3
	.value	0x7f1
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x21
	.long	.LASF24
	.byte	0x3
	.value	0x7f2
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.string	"uninlinable"
	.byte	0x3
	.value	0x7f3
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.string	"thread_local_flag"
	.byte	0x3
	.value	0x7f4
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.string	"inlined_function_flag"
	.byte	0x3
	.value	0x7f5
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.string	"threadprivate_flag"
	.byte	0x3
	.value	0x7f7
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x21
	.long	.LASF7
	.byte	0x3
	.value	0x7fa
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x21
	.long	.LASF8
	.byte	0x3
	.value	0x7fb
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x21
	.long	.LASF9
	.byte	0x3
	.value	0x7fc
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x21
	.long	.LASF10
	.byte	0x3
	.value	0x7fd
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x21
	.long	.LASF11
	.byte	0x3
	.value	0x7fe
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x21
	.long	.LASF12
	.byte	0x3
	.value	0x7ff
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x21
	.long	.LASF13
	.byte	0x3
	.value	0x800
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x21
	.long	.LASF14
	.byte	0x3
	.value	0x801
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.string	"syscall_linkage_flag"
	.byte	0x3
	.value	0x804
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.string	"widen_retval_flag"
	.byte	0x3
	.value	0x805
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.string	"emitted_by_gxx"
	.byte	0x3
	.value	0x808
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xe
	.string	"u1"
	.byte	0x3
	.value	0x81b
	.long	0x3e03
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x1c
	.long	.LASF21
	.byte	0x3
	.value	0x81d
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x1c
	.long	.LASF26
	.byte	0x3
	.value	0x81e
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x1c
	.long	.LASF28
	.byte	0x3
	.value	0x81f
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xe
	.string	"arguments"
	.byte	0x3
	.value	0x820
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x1c
	.long	.LASF36
	.byte	0x3
	.value	0x821
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xe
	.string	"initial"
	.byte	0x3
	.value	0x822
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xe
	.string	"initial_2"
	.byte	0x3
	.value	0x824
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xe
	.string	"alias_target"
	.byte	0x3
	.value	0x825
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xe
	.string	"thunk_delta"
	.byte	0x3
	.value	0x829
	.long	0x47d
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x1c
	.long	.LASF20
	.byte	0x3
	.value	0x82b
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x1c
	.long	.LASF37
	.byte	0x3
	.value	0x82c
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xe
	.string	"section_name"
	.byte	0x3
	.value	0x82d
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x1c
	.long	.LASF22
	.byte	0x3
	.value	0x82e
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xe
	.string	"rtl"
	.byte	0x3
	.value	0x82f
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xe
	.string	"live_range_rtl"
	.byte	0x3
	.value	0x830
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0xe
	.string	"u2"
	.byte	0x3
	.value	0x83c
	.long	0x3e38
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xe
	.string	"saved_tree"
	.byte	0x3
	.value	0x83f
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0xe
	.string	"inlined_fns"
	.byte	0x3
	.value	0x843
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xe
	.string	"vindex"
	.byte	0x3
	.value	0x845
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0xe
	.string	"pointer_alias_set"
	.byte	0x3
	.value	0x846
	.long	0x47d
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x1c
	.long	.LASF29
	.byte	0x3
	.value	0x848
	.long	0x4fc7
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x20
	.string	"symtab_idx"
	.byte	0x3
	.value	0x84b
	.long	0x3b6
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0x20
	.string	"label_defined"
	.byte	0x3
	.value	0x84c
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0xe
	.string	"sgi_u1"
	.byte	0x3
	.value	0x852
	.long	0x4821
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xe
	.string	"decl_dst_id"
	.byte	0x3
	.value	0x858
	.long	0x13fa
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0xe
	.string	"sl_model_name"
	.byte	0x3
	.value	0x85c
	.long	0x1e6
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.byte	0x0
	.uleb128 0xd
	.long	0x4fc7
	.string	"lang_decl"
	.byte	0x34
	.byte	0x3
	.value	0x848
	.uleb128 0xe
	.string	"decl_flags"
	.byte	0xa
	.value	0x73a
	.long	0x755f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"u"
	.byte	0xa
	.value	0x763
	.long	0x797c
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x4f90
	.uleb128 0x17
	.long	0x524b
	.string	"omp_tree_type"
	.byte	0x4
	.byte	0xe
	.byte	0x1d
	.uleb128 0x18
	.string	"parallel_dir_b"
	.sleb128 0
	.uleb128 0x18
	.string	"parallel_dir_e"
	.sleb128 1
	.uleb128 0x18
	.string	"for_dir_b"
	.sleb128 2
	.uleb128 0x18
	.string	"for_dir_e"
	.sleb128 3
	.uleb128 0x18
	.string	"sections_cons_b"
	.sleb128 4
	.uleb128 0x18
	.string	"sections_cons_e"
	.sleb128 5
	.uleb128 0x18
	.string	"section_cons_b"
	.sleb128 6
	.uleb128 0x18
	.string	"section_cons_e"
	.sleb128 7
	.uleb128 0x18
	.string	"single_cons_b"
	.sleb128 8
	.uleb128 0x18
	.string	"single_cons_e"
	.sleb128 9
	.uleb128 0x18
	.string	"par_for_cons_b"
	.sleb128 10
	.uleb128 0x18
	.string	"par_for_cons_e"
	.sleb128 11
	.uleb128 0x18
	.string	"par_sctn_cons_b"
	.sleb128 12
	.uleb128 0x18
	.string	"par_sctn_cons_e"
	.sleb128 13
	.uleb128 0x18
	.string	"master_cons_b"
	.sleb128 14
	.uleb128 0x18
	.string	"master_cons_e"
	.sleb128 15
	.uleb128 0x18
	.string	"critical_cons_b"
	.sleb128 16
	.uleb128 0x18
	.string	"critical_cons_e"
	.sleb128 17
	.uleb128 0x18
	.string	"barrier_dir"
	.sleb128 18
	.uleb128 0x18
	.string	"flush_dir"
	.sleb128 19
	.uleb128 0x18
	.string	"atomic_cons"
	.sleb128 20
	.uleb128 0x18
	.string	"atomic_cons_b"
	.sleb128 21
	.uleb128 0x18
	.string	"atomic_cons_e"
	.sleb128 22
	.uleb128 0x18
	.string	"thdprv_dir"
	.sleb128 23
	.uleb128 0x18
	.string	"ordered_cons_b"
	.sleb128 24
	.uleb128 0x18
	.string	"ordered_cons_e"
	.sleb128 25
	.uleb128 0x18
	.string	"options_dir"
	.sleb128 26
	.uleb128 0x18
	.string	"exec_freq_dir"
	.sleb128 27
	.uleb128 0x18
	.string	"sl2_sections_cons_b"
	.sleb128 28
	.uleb128 0x18
	.string	"sl2_minor_sections_cons_b"
	.sleb128 29
	.uleb128 0x18
	.string	"sl2_sections_cons_e"
	.sleb128 30
	.uleb128 0x18
	.string	"sl2_section_cons_b"
	.sleb128 31
	.uleb128 0x18
	.string	"sl2_section_cons_e"
	.sleb128 32
	.uleb128 0x18
	.string	"sl2_minor_section_cons_b"
	.sleb128 33
	.uleb128 0x18
	.string	"sl2_minor_section_cons_e"
	.sleb128 34
	.byte	0x0
	.uleb128 0xd
	.long	0x529a
	.string	"tree_omp"
	.byte	0x18
	.byte	0x3
	.value	0x864
	.uleb128 0x1c
	.long	.LASF1
	.byte	0x3
	.value	0x865
	.long	0x3142
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"choice"
	.byte	0x3
	.value	0x866
	.long	0x4fcd
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"omp_clause_list"
	.byte	0x3
	.value	0x867
	.long	0x4e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xd
	.long	0x5355
	.string	"attribute_spec"
	.byte	0x14
	.byte	0x3
	.value	0xa1d
	.uleb128 0x1c
	.long	.LASF26
	.byte	0x3
	.value	0xa20
	.long	0x5355
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"min_length"
	.byte	0x3
	.value	0xa22
	.long	0x827
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"max_length"
	.byte	0x3
	.value	0xa25
	.long	0x827
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"decl_required"
	.byte	0x3
	.value	0xa2d
	.long	0x535a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.string	"type_required"
	.byte	0x3
	.value	0xa30
	.long	0x535a
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.uleb128 0xe
	.string	"function_type_required"
	.byte	0x3
	.value	0xa35
	.long	0x535a
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xe
	.string	"handler"
	.byte	0x3
	.value	0xa44
	.long	0x5398
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0xb
	.long	0x2ca
	.uleb128 0xb
	.long	0x535f
	.uleb128 0xc
	.string	"_Bool"
	.byte	0x1
	.byte	0x2
	.uleb128 0x1d
	.long	0x538c
	.byte	0x1
	.long	0x1e6
	.uleb128 0x1e
	.long	0x538c
	.uleb128 0x1e
	.long	0x1e6
	.uleb128 0x1e
	.long	0x1e6
	.uleb128 0x1e
	.long	0x2dd
	.uleb128 0x1e
	.long	0x5392
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1e6
	.uleb128 0x3
	.byte	0x4
	.long	0x535f
	.uleb128 0xb
	.long	0x539d
	.uleb128 0x3
	.byte	0x4
	.long	0x5368
	.uleb128 0x17
	.long	0x5b72
	.string	"rtx_code"
	.byte	0x4
	.byte	0x4
	.byte	0x29
	.uleb128 0x18
	.string	"UNKNOWN"
	.sleb128 0
	.uleb128 0x18
	.string	"NIL"
	.sleb128 1
	.uleb128 0x18
	.string	"INCLUDE"
	.sleb128 2
	.uleb128 0x18
	.string	"EXPR_LIST"
	.sleb128 3
	.uleb128 0x18
	.string	"INSN_LIST"
	.sleb128 4
	.uleb128 0x18
	.string	"MATCH_OPERAND"
	.sleb128 5
	.uleb128 0x18
	.string	"MATCH_SCRATCH"
	.sleb128 6
	.uleb128 0x18
	.string	"MATCH_DUP"
	.sleb128 7
	.uleb128 0x18
	.string	"MATCH_OPERATOR"
	.sleb128 8
	.uleb128 0x18
	.string	"MATCH_PARALLEL"
	.sleb128 9
	.uleb128 0x18
	.string	"MATCH_OP_DUP"
	.sleb128 10
	.uleb128 0x18
	.string	"MATCH_PAR_DUP"
	.sleb128 11
	.uleb128 0x18
	.string	"MATCH_INSN"
	.sleb128 12
	.uleb128 0x18
	.string	"DEFINE_INSN"
	.sleb128 13
	.uleb128 0x18
	.string	"DEFINE_PEEPHOLE"
	.sleb128 14
	.uleb128 0x18
	.string	"DEFINE_SPLIT"
	.sleb128 15
	.uleb128 0x18
	.string	"DEFINE_INSN_AND_SPLIT"
	.sleb128 16
	.uleb128 0x18
	.string	"DEFINE_PEEPHOLE2"
	.sleb128 17
	.uleb128 0x18
	.string	"DEFINE_COMBINE"
	.sleb128 18
	.uleb128 0x18
	.string	"DEFINE_EXPAND"
	.sleb128 19
	.uleb128 0x18
	.string	"DEFINE_DELAY"
	.sleb128 20
	.uleb128 0x18
	.string	"DEFINE_FUNCTION_UNIT"
	.sleb128 21
	.uleb128 0x18
	.string	"DEFINE_ASM_ATTRIBUTES"
	.sleb128 22
	.uleb128 0x18
	.string	"DEFINE_COND_EXEC"
	.sleb128 23
	.uleb128 0x18
	.string	"SEQUENCE"
	.sleb128 24
	.uleb128 0x18
	.string	"ADDRESS"
	.sleb128 25
	.uleb128 0x18
	.string	"DEFINE_CPU_UNIT"
	.sleb128 26
	.uleb128 0x18
	.string	"DEFINE_QUERY_CPU_UNIT"
	.sleb128 27
	.uleb128 0x18
	.string	"EXCLUSION_SET"
	.sleb128 28
	.uleb128 0x18
	.string	"PRESENCE_SET"
	.sleb128 29
	.uleb128 0x18
	.string	"ABSENCE_SET"
	.sleb128 30
	.uleb128 0x18
	.string	"DEFINE_BYPASS"
	.sleb128 31
	.uleb128 0x18
	.string	"DEFINE_AUTOMATON"
	.sleb128 32
	.uleb128 0x18
	.string	"AUTOMATA_OPTION"
	.sleb128 33
	.uleb128 0x18
	.string	"DEFINE_RESERVATION"
	.sleb128 34
	.uleb128 0x18
	.string	"DEFINE_INSN_RESERVATION"
	.sleb128 35
	.uleb128 0x18
	.string	"DEFINE_ATTR"
	.sleb128 36
	.uleb128 0x18
	.string	"ATTR"
	.sleb128 37
	.uleb128 0x18
	.string	"SET_ATTR"
	.sleb128 38
	.uleb128 0x18
	.string	"SET_ATTR_ALTERNATIVE"
	.sleb128 39
	.uleb128 0x18
	.string	"EQ_ATTR"
	.sleb128 40
	.uleb128 0x18
	.string	"ATTR_FLAG"
	.sleb128 41
	.uleb128 0x18
	.string	"INSN"
	.sleb128 42
	.uleb128 0x18
	.string	"JUMP_INSN"
	.sleb128 43
	.uleb128 0x18
	.string	"CALL_INSN"
	.sleb128 44
	.uleb128 0x18
	.string	"BARRIER"
	.sleb128 45
	.uleb128 0x18
	.string	"CODE_LABEL"
	.sleb128 46
	.uleb128 0x18
	.string	"NOTE"
	.sleb128 47
	.uleb128 0x18
	.string	"COND_EXEC"
	.sleb128 48
	.uleb128 0x18
	.string	"PARALLEL"
	.sleb128 49
	.uleb128 0x18
	.string	"ASM_INPUT"
	.sleb128 50
	.uleb128 0x18
	.string	"ASM_OPERANDS"
	.sleb128 51
	.uleb128 0x18
	.string	"UNSPEC"
	.sleb128 52
	.uleb128 0x18
	.string	"UNSPEC_VOLATILE"
	.sleb128 53
	.uleb128 0x18
	.string	"ADDR_VEC"
	.sleb128 54
	.uleb128 0x18
	.string	"ADDR_DIFF_VEC"
	.sleb128 55
	.uleb128 0x18
	.string	"PREFETCH"
	.sleb128 56
	.uleb128 0x18
	.string	"SET"
	.sleb128 57
	.uleb128 0x18
	.string	"USE"
	.sleb128 58
	.uleb128 0x18
	.string	"CLOBBER"
	.sleb128 59
	.uleb128 0x18
	.string	"CALL"
	.sleb128 60
	.uleb128 0x18
	.string	"RETURN"
	.sleb128 61
	.uleb128 0x18
	.string	"TRAP_IF"
	.sleb128 62
	.uleb128 0x18
	.string	"RESX"
	.sleb128 63
	.uleb128 0x18
	.string	"CONST_INT"
	.sleb128 64
	.uleb128 0x18
	.string	"CONST_DOUBLE"
	.sleb128 65
	.uleb128 0x18
	.string	"CONST_VECTOR"
	.sleb128 66
	.uleb128 0x18
	.string	"CONST_STRING"
	.sleb128 67
	.uleb128 0x18
	.string	"CONST"
	.sleb128 68
	.uleb128 0x18
	.string	"PC"
	.sleb128 69
	.uleb128 0x18
	.string	"VALUE"
	.sleb128 70
	.uleb128 0x18
	.string	"REG"
	.sleb128 71
	.uleb128 0x18
	.string	"SCRATCH"
	.sleb128 72
	.uleb128 0x18
	.string	"SUBREG"
	.sleb128 73
	.uleb128 0x18
	.string	"STRICT_LOW_PART"
	.sleb128 74
	.uleb128 0x18
	.string	"CONCAT"
	.sleb128 75
	.uleb128 0x18
	.string	"MEM"
	.sleb128 76
	.uleb128 0x18
	.string	"LABEL_REF"
	.sleb128 77
	.uleb128 0x18
	.string	"SYMBOL_REF"
	.sleb128 78
	.uleb128 0x18
	.string	"CC0"
	.sleb128 79
	.uleb128 0x18
	.string	"ADDRESSOF"
	.sleb128 80
	.uleb128 0x18
	.string	"QUEUED"
	.sleb128 81
	.uleb128 0x18
	.string	"IF_THEN_ELSE"
	.sleb128 82
	.uleb128 0x18
	.string	"COND"
	.sleb128 83
	.uleb128 0x18
	.string	"COMPARE"
	.sleb128 84
	.uleb128 0x18
	.string	"PLUS"
	.sleb128 85
	.uleb128 0x18
	.string	"MINUS"
	.sleb128 86
	.uleb128 0x18
	.string	"NEG"
	.sleb128 87
	.uleb128 0x18
	.string	"MULT"
	.sleb128 88
	.uleb128 0x18
	.string	"DIV"
	.sleb128 89
	.uleb128 0x18
	.string	"MOD"
	.sleb128 90
	.uleb128 0x18
	.string	"UDIV"
	.sleb128 91
	.uleb128 0x18
	.string	"UMOD"
	.sleb128 92
	.uleb128 0x18
	.string	"AND"
	.sleb128 93
	.uleb128 0x18
	.string	"IOR"
	.sleb128 94
	.uleb128 0x18
	.string	"XOR"
	.sleb128 95
	.uleb128 0x18
	.string	"NOT"
	.sleb128 96
	.uleb128 0x18
	.string	"ASHIFT"
	.sleb128 97
	.uleb128 0x18
	.string	"ROTATE"
	.sleb128 98
	.uleb128 0x18
	.string	"ASHIFTRT"
	.sleb128 99
	.uleb128 0x18
	.string	"LSHIFTRT"
	.sleb128 100
	.uleb128 0x18
	.string	"ROTATERT"
	.sleb128 101
	.uleb128 0x18
	.string	"SMIN"
	.sleb128 102
	.uleb128 0x18
	.string	"SMAX"
	.sleb128 103
	.uleb128 0x18
	.string	"UMIN"
	.sleb128 104
	.uleb128 0x18
	.string	"UMAX"
	.sleb128 105
	.uleb128 0x18
	.string	"PRE_DEC"
	.sleb128 106
	.uleb128 0x18
	.string	"PRE_INC"
	.sleb128 107
	.uleb128 0x18
	.string	"POST_DEC"
	.sleb128 108
	.uleb128 0x18
	.string	"POST_INC"
	.sleb128 109
	.uleb128 0x18
	.string	"PRE_MODIFY"
	.sleb128 110
	.uleb128 0x18
	.string	"POST_MODIFY"
	.sleb128 111
	.uleb128 0x18
	.string	"NE"
	.sleb128 112
	.uleb128 0x18
	.string	"EQ"
	.sleb128 113
	.uleb128 0x18
	.string	"GE"
	.sleb128 114
	.uleb128 0x18
	.string	"GT"
	.sleb128 115
	.uleb128 0x18
	.string	"LE"
	.sleb128 116
	.uleb128 0x18
	.string	"LT"
	.sleb128 117
	.uleb128 0x18
	.string	"GEU"
	.sleb128 118
	.uleb128 0x18
	.string	"GTU"
	.sleb128 119
	.uleb128 0x18
	.string	"LEU"
	.sleb128 120
	.uleb128 0x18
	.string	"LTU"
	.sleb128 121
	.uleb128 0x18
	.string	"UNORDERED"
	.sleb128 122
	.uleb128 0x18
	.string	"ORDERED"
	.sleb128 123
	.uleb128 0x18
	.string	"UNEQ"
	.sleb128 124
	.uleb128 0x18
	.string	"UNGE"
	.sleb128 125
	.uleb128 0x18
	.string	"UNGT"
	.sleb128 126
	.uleb128 0x18
	.string	"UNLE"
	.sleb128 127
	.uleb128 0x18
	.string	"UNLT"
	.sleb128 128
	.uleb128 0x18
	.string	"LTGT"
	.sleb128 129
	.uleb128 0x18
	.string	"SIGN_EXTEND"
	.sleb128 130
	.uleb128 0x18
	.string	"ZERO_EXTEND"
	.sleb128 131
	.uleb128 0x18
	.string	"TRUNCATE"
	.sleb128 132
	.uleb128 0x18
	.string	"FLOAT_EXTEND"
	.sleb128 133
	.uleb128 0x18
	.string	"FLOAT_TRUNCATE"
	.sleb128 134
	.uleb128 0x18
	.string	"FLOAT"
	.sleb128 135
	.uleb128 0x18
	.string	"FIX"
	.sleb128 136
	.uleb128 0x18
	.string	"UNSIGNED_FLOAT"
	.sleb128 137
	.uleb128 0x18
	.string	"UNSIGNED_FIX"
	.sleb128 138
	.uleb128 0x18
	.string	"ABS"
	.sleb128 139
	.uleb128 0x18
	.string	"SQRT"
	.sleb128 140
	.uleb128 0x18
	.string	"FFS"
	.sleb128 141
	.uleb128 0x18
	.string	"SIGN_EXTRACT"
	.sleb128 142
	.uleb128 0x18
	.string	"ZERO_EXTRACT"
	.sleb128 143
	.uleb128 0x18
	.string	"HIGH"
	.sleb128 144
	.uleb128 0x18
	.string	"LO_SUM"
	.sleb128 145
	.uleb128 0x18
	.string	"RANGE_INFO"
	.sleb128 146
	.uleb128 0x18
	.string	"RANGE_REG"
	.sleb128 147
	.uleb128 0x18
	.string	"RANGE_VAR"
	.sleb128 148
	.uleb128 0x18
	.string	"RANGE_LIVE"
	.sleb128 149
	.uleb128 0x18
	.string	"CONSTANT_P_RTX"
	.sleb128 150
	.uleb128 0x18
	.string	"CALL_PLACEHOLDER"
	.sleb128 151
	.uleb128 0x18
	.string	"VEC_MERGE"
	.sleb128 152
	.uleb128 0x18
	.string	"VEC_SELECT"
	.sleb128 153
	.uleb128 0x18
	.string	"VEC_CONCAT"
	.sleb128 154
	.uleb128 0x18
	.string	"VEC_DUPLICATE"
	.sleb128 155
	.uleb128 0x18
	.string	"SS_PLUS"
	.sleb128 156
	.uleb128 0x18
	.string	"US_PLUS"
	.sleb128 157
	.uleb128 0x18
	.string	"SS_MINUS"
	.sleb128 158
	.uleb128 0x18
	.string	"US_MINUS"
	.sleb128 159
	.uleb128 0x18
	.string	"SS_TRUNCATE"
	.sleb128 160
	.uleb128 0x18
	.string	"US_TRUNCATE"
	.sleb128 161
	.uleb128 0x18
	.string	"PHI"
	.sleb128 162
	.uleb128 0x18
	.string	"LAST_AND_UNUSED_RTX_CODE"
	.sleb128 163
	.byte	0x0
	.uleb128 0x25
	.long	0x5c4c
	.byte	0x4
	.byte	0x4
	.byte	0x47
	.uleb128 0x6
	.string	"min_align"
	.byte	0x4
	.byte	0x49
	.long	0x3b6
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"base_after_vec"
	.byte	0x4
	.byte	0x4b
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"min_after_vec"
	.byte	0x4
	.byte	0x4c
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"max_after_vec"
	.byte	0x4
	.byte	0x4e
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"min_after_base"
	.byte	0x4
	.byte	0x50
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"max_after_base"
	.byte	0x4
	.byte	0x52
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"offset_unsigned"
	.byte	0x4
	.byte	0x55
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"scale"
	.byte	0x4
	.byte	0x57
	.long	0x3b6
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x2
	.string	"addr_diff_vec_flags"
	.byte	0x4
	.byte	0x58
	.long	0x5b72
	.uleb128 0x14
	.long	0x5cc0
	.long	.LASF38
	.byte	0x18
	.byte	0x4
	.byte	0x62
	.uleb128 0x7
	.string	"alias"
	.byte	0x4
	.byte	0x63
	.long	0x47d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1b
	.long	.LASF31
	.byte	0x4
	.byte	0x64
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"offset"
	.byte	0x4
	.byte	0x65
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"size"
	.byte	0x4
	.byte	0x66
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x1b
	.long	.LASF25
	.byte	0x4
	.byte	0x67
	.long	0x3b6
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x26
	.long	.LASF38
	.byte	0x4
	.byte	0x68
	.long	0x5c67
	.uleb128 0x8
	.long	0x5d9d
	.string	"rtunion_def"
	.byte	0x8
	.byte	0x4
	.byte	0x6d
	.uleb128 0x27
	.string	"rtwint"
	.byte	0x4
	.byte	0x6e
	.long	0x47d
	.uleb128 0x27
	.string	"rtint"
	.byte	0x4
	.byte	0x6f
	.long	0x2dd
	.uleb128 0x27
	.string	"rtuint"
	.byte	0x4
	.byte	0x70
	.long	0x3b6
	.uleb128 0x27
	.string	"rtstr"
	.byte	0x4
	.byte	0x71
	.long	0x2ca
	.uleb128 0x27
	.string	"rtx"
	.byte	0x4
	.byte	0x72
	.long	0x9e
	.uleb128 0x27
	.string	"rtvec"
	.byte	0x4
	.byte	0x73
	.long	0x19e
	.uleb128 0x27
	.string	"rttype"
	.byte	0x4
	.byte	0x74
	.long	0x83a
	.uleb128 0x27
	.string	"rt_addr_diff_vec_flags"
	.byte	0x4
	.byte	0x75
	.long	0x5c4c
	.uleb128 0x27
	.string	"rt_cselib"
	.byte	0x4
	.byte	0x76
	.long	0x5db1
	.uleb128 0x27
	.string	"rtbit"
	.byte	0x4
	.byte	0x77
	.long	0x5dc9
	.uleb128 0x27
	.string	"rttree"
	.byte	0x4
	.byte	0x78
	.long	0x1e6
	.uleb128 0x27
	.string	"bb"
	.byte	0x4
	.byte	0x79
	.long	0x5de1
	.uleb128 0x27
	.string	"rtmem"
	.byte	0x4
	.byte	0x7a
	.long	0x5de7
	.byte	0x0
	.uleb128 0x19
	.string	"cselib_val_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x5d9d
	.uleb128 0x19
	.string	"bitmap_head_def"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x5db7
	.uleb128 0x19
	.string	"basic_block_def"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x5dcf
	.uleb128 0x3
	.byte	0x4
	.long	0x5cc0
	.uleb128 0x2
	.string	"rtunion"
	.byte	0x4
	.byte	0x7c
	.long	0x5ccb
	.uleb128 0x10
	.long	0x5e0c
	.long	0x5ded
	.uleb128 0x11
	.long	0x3cd
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	0x5e1c
	.long	0x9e
	.uleb128 0x11
	.long	0x3cd
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x9e
	.uleb128 0x4
	.long	0x5e82
	.string	"var_refs_queue"
	.byte	0x10
	.byte	0x8
	.byte	0x17
	.uleb128 0x7
	.string	"modified"
	.byte	0x8
	.byte	0x18
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"promoted_mode"
	.byte	0x8
	.byte	0x19
	.long	0x83a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1b
	.long	.LASF39
	.byte	0x8
	.byte	0x1a
	.long	0x2dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"next"
	.byte	0x8
	.byte	0x1b
	.long	0x5e82
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5e22
	.uleb128 0x14
	.long	0x5ed1
	.long	.LASF40
	.byte	0x10
	.byte	0x8
	.byte	0x24
	.uleb128 0x7
	.string	"first"
	.byte	0x8
	.byte	0x26
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"last"
	.byte	0x8
	.byte	0x27
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1b
	.long	.LASF41
	.byte	0x8
	.byte	0x28
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"next"
	.byte	0x8
	.byte	0x29
	.long	0x5ed1
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5e88
	.uleb128 0x4
	.long	0x6026
	.string	"emit_status"
	.byte	0x34
	.byte	0x8
	.byte	0x37
	.uleb128 0x7
	.string	"x_reg_rtx_no"
	.byte	0x8
	.byte	0x3a
	.long	0x2dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"x_first_label_num"
	.byte	0x8
	.byte	0x3d
	.long	0x2dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"x_first_insn"
	.byte	0x8
	.byte	0x44
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"x_last_insn"
	.byte	0x8
	.byte	0x45
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x1b
	.long	.LASF41
	.byte	0x8
	.byte	0x4a
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x1b
	.long	.LASF40
	.byte	0x8
	.byte	0x50
	.long	0x5ed1
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"x_cur_insn_uid"
	.byte	0x8
	.byte	0x54
	.long	0x2dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"x_last_linenum"
	.byte	0x8
	.byte	0x58
	.long	0x2dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"x_last_filename"
	.byte	0x8
	.byte	0x59
	.long	0x2ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x7
	.string	"regno_pointer_align_length"
	.byte	0x8
	.byte	0x5f
	.long	0x2dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x7
	.string	"regno_pointer_align"
	.byte	0x8
	.byte	0x65
	.long	0x78e
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x7
	.string	"regno_decl"
	.byte	0x8
	.byte	0x69
	.long	0x538c
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x7
	.string	"x_regno_reg_rtx"
	.byte	0x8
	.byte	0x70
	.long	0x5e1c
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.byte	0x0
	.uleb128 0x4
	.long	0x6106
	.string	"expr_status"
	.byte	0x1c
	.byte	0x8
	.byte	0x7d
	.uleb128 0x7
	.string	"x_pending_stack_adjust"
	.byte	0x8
	.byte	0x80
	.long	0x2dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"x_inhibit_defer_pop"
	.byte	0x8
	.byte	0x91
	.long	0x2dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"x_stack_pointer_delta"
	.byte	0x8
	.byte	0x97
	.long	0x2dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"x_saveregs_value"
	.byte	0x8
	.byte	0x9c
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"x_apply_args_value"
	.byte	0x8
	.byte	0x9f
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"x_forced_labels"
	.byte	0x8
	.byte	0xa2
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"x_pending_chain"
	.byte	0x8
	.byte	0xa5
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x28
	.long	0x6170
	.long	.LASF35
	.byte	0x4
	.byte	0x8
	.value	0x1f1
	.uleb128 0x18
	.string	"FUNCTION_FREQUENCY_UNLIKELY_EXECUTED"
	.sleb128 0
	.uleb128 0x18
	.string	"FUNCTION_FREQUENCY_NORMAL"
	.sleb128 1
	.uleb128 0x18
	.string	"FUNCTION_FREQUENCY_HOT"
	.sleb128 2
	.byte	0x0
	.uleb128 0x19
	.string	"eh_status"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x6170
	.uleb128 0x19
	.string	"stmt_status"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x6182
	.uleb128 0x3
	.byte	0x4
	.long	0x6026
	.uleb128 0x3
	.byte	0x4
	.long	0x5ed7
	.uleb128 0x19
	.string	"varasm_status"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x61a2
	.uleb128 0x19
	.string	"initial_value_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x61b8
	.uleb128 0x19
	.string	"temp_slot"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x61d5
	.uleb128 0x19
	.string	"machine_function"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x61e7
	.uleb128 0xd
	.long	0x6435
	.string	"language_function"
	.byte	0x64
	.byte	0x8
	.value	0x184
	.uleb128 0x1c
	.long	.LASF42
	.byte	0xa
	.value	0x370
	.long	0x6988
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"x_dtor_label"
	.byte	0xa
	.value	0x372
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xe
	.string	"x_current_class_ptr"
	.byte	0xa
	.value	0x373
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xe
	.string	"x_current_class_ref"
	.byte	0xa
	.value	0x374
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xe
	.string	"x_eh_spec_block"
	.byte	0xa
	.value	0x375
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xe
	.string	"x_in_charge_parm"
	.byte	0xa
	.value	0x376
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xe
	.string	"x_vtt_parm"
	.byte	0xa
	.value	0x377
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xe
	.string	"x_return_value"
	.byte	0xa
	.value	0x378
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xe
	.string	"returns_value"
	.byte	0xa
	.value	0x37a
	.long	0x2dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xe
	.string	"returns_null"
	.byte	0xa
	.value	0x37b
	.long	0x2dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xe
	.string	"returns_abnormally"
	.byte	0xa
	.value	0x37c
	.long	0x2dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xe
	.string	"in_function_try_handler"
	.byte	0xa
	.value	0x37d
	.long	0x2dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xe
	.string	"in_base_initializer"
	.byte	0xa
	.value	0x37e
	.long	0x2dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xe
	.string	"x_expanding_p"
	.byte	0xa
	.value	0x37f
	.long	0x2dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x20
	.string	"can_throw"
	.byte	0xa
	.value	0x382
	.long	0x535f
	.byte	0x1
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xe
	.string	"x_named_label_uses"
	.byte	0xa
	.value	0x384
	.long	0x6cf4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xe
	.string	"x_named_labels"
	.byte	0xa
	.value	0x385
	.long	0x6d0d
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x1c
	.long	.LASF43
	.byte	0xa
	.value	0x386
	.long	0x6a2b
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xe
	.string	"x_local_names"
	.byte	0xa
	.value	0x387
	.long	0x68e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x1c
	.long	.LASF33
	.byte	0xa
	.value	0x389
	.long	0x2ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xe
	.string	"unparsed_inlines"
	.byte	0xa
	.value	0x38a
	.long	0x6d23
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6200
	.uleb128 0x4
	.long	0x6471
	.string	"const_equiv_data"
	.byte	0x8
	.byte	0xc
	.byte	0x24
	.uleb128 0x7
	.string	"rtx"
	.byte	0xc
	.byte	0x32
	.long	0xa9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"age"
	.byte	0xc
	.byte	0x36
	.long	0x3b6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x17
	.long	0x660c
	.string	"varray_data_enum"
	.byte	0x4
	.byte	0xc
	.byte	0x3c
	.uleb128 0x18
	.string	"VARRAY_DATA_C"
	.sleb128 0
	.uleb128 0x18
	.string	"VARRAY_DATA_UC"
	.sleb128 1
	.uleb128 0x18
	.string	"VARRAY_DATA_S"
	.sleb128 2
	.uleb128 0x18
	.string	"VARRAY_DATA_US"
	.sleb128 3
	.uleb128 0x18
	.string	"VARRAY_DATA_I"
	.sleb128 4
	.uleb128 0x18
	.string	"VARRAY_DATA_U"
	.sleb128 5
	.uleb128 0x18
	.string	"VARRAY_DATA_L"
	.sleb128 6
	.uleb128 0x18
	.string	"VARRAY_DATA_UL"
	.sleb128 7
	.uleb128 0x18
	.string	"VARRAY_DATA_HINT"
	.sleb128 8
	.uleb128 0x18
	.string	"VARRAY_DATA_UHINT"
	.sleb128 9
	.uleb128 0x18
	.string	"VARRAY_DATA_GENERIC"
	.sleb128 10
	.uleb128 0x18
	.string	"VARRAY_DATA_CPTR"
	.sleb128 11
	.uleb128 0x18
	.string	"VARRAY_DATA_RTX"
	.sleb128 12
	.uleb128 0x18
	.string	"VARRAY_DATA_RTVEC"
	.sleb128 13
	.uleb128 0x18
	.string	"VARRAY_DATA_TREE"
	.sleb128 14
	.uleb128 0x18
	.string	"VARRAY_DATA_BITMAP"
	.sleb128 15
	.uleb128 0x18
	.string	"VARRAY_DATA_REG"
	.sleb128 16
	.uleb128 0x18
	.string	"VARRAY_DATA_CONST_EQUIV"
	.sleb128 17
	.uleb128 0x18
	.string	"VARRAY_DATA_BB"
	.sleb128 18
	.uleb128 0x18
	.string	"VARRAY_DATA_TE"
	.sleb128 19
	.uleb128 0x18
	.string	"NUM_VARRAY_DATA"
	.sleb128 20
	.byte	0x0
	.uleb128 0x8
	.long	0x6708
	.string	"varray_data_tag"
	.byte	0x8
	.byte	0xc
	.byte	0x55
	.uleb128 0x27
	.string	"c"
	.byte	0xc
	.byte	0x56
	.long	0x7f1
	.uleb128 0x27
	.string	"uc"
	.byte	0xc
	.byte	0x58
	.long	0x6708
	.uleb128 0x27
	.string	"s"
	.byte	0xc
	.byte	0x5a
	.long	0x6718
	.uleb128 0x27
	.string	"us"
	.byte	0xc
	.byte	0x5c
	.long	0x6728
	.uleb128 0x27
	.string	"i"
	.byte	0xc
	.byte	0x5e
	.long	0x6738
	.uleb128 0x27
	.string	"u"
	.byte	0xc
	.byte	0x60
	.long	0x6748
	.uleb128 0x27
	.string	"l"
	.byte	0xc
	.byte	0x62
	.long	0x6758
	.uleb128 0x27
	.string	"ul"
	.byte	0xc
	.byte	0x64
	.long	0x6768
	.uleb128 0x27
	.string	"hint"
	.byte	0xc
	.byte	0x66
	.long	0x6778
	.uleb128 0x27
	.string	"uhint"
	.byte	0xc
	.byte	0x68
	.long	0x6788
	.uleb128 0x27
	.string	"generic"
	.byte	0xc
	.byte	0x6a
	.long	0x6798
	.uleb128 0x27
	.string	"cptr"
	.byte	0xc
	.byte	0x6c
	.long	0x67a8
	.uleb128 0x27
	.string	"rtx"
	.byte	0xc
	.byte	0x6e
	.long	0x67b8
	.uleb128 0x27
	.string	"rtvec"
	.byte	0xc
	.byte	0x70
	.long	0x67c8
	.uleb128 0x27
	.string	"tree"
	.byte	0xc
	.byte	0x72
	.long	0x67d8
	.uleb128 0x27
	.string	"bitmap"
	.byte	0xc
	.byte	0x74
	.long	0x67e8
	.uleb128 0x27
	.string	"reg"
	.byte	0xc
	.byte	0x76
	.long	0x67f8
	.uleb128 0x27
	.string	"const_equiv"
	.byte	0xc
	.byte	0x78
	.long	0x681d
	.uleb128 0x27
	.string	"bb"
	.byte	0xc
	.byte	0x7a
	.long	0x682d
	.uleb128 0x27
	.string	"te"
	.byte	0xc
	.byte	0x7c
	.long	0x683d
	.byte	0x0
	.uleb128 0x10
	.long	0x6718
	.long	0x425
	.uleb128 0x11
	.long	0x3cd
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	0x6728
	.long	0x470
	.uleb128 0x11
	.long	0x3cd
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	0x6738
	.long	0x436
	.uleb128 0x11
	.long	0x3cd
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	0x6748
	.long	0x2dd
	.uleb128 0x11
	.long	0x3cd
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	0x6758
	.long	0x3b6
	.uleb128 0x11
	.long	0x3cd
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	0x6768
	.long	0x4c7
	.uleb128 0x11
	.long	0x3cd
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	0x6778
	.long	0x44c
	.uleb128 0x11
	.long	0x3cd
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	0x6788
	.long	0x47d
	.uleb128 0x11
	.long	0x3cd
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	0x6798
	.long	0x48e
	.uleb128 0x11
	.long	0x3cd
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	0x67a8
	.long	0x4e4
	.uleb128 0x11
	.long	0x3cd
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	0x67b8
	.long	0x4e6
	.uleb128 0x11
	.long	0x3cd
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	0x67c8
	.long	0xa9
	.uleb128 0x11
	.long	0x3cd
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	0x67d8
	.long	0x1ab
	.uleb128 0x11
	.long	0x3cd
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	0x67e8
	.long	0x1f2
	.uleb128 0x11
	.long	0x3cd
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	0x67f8
	.long	0x5dc9
	.uleb128 0x11
	.long	0x3cd
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	0x6808
	.long	0x6817
	.uleb128 0x11
	.long	0x3cd
	.byte	0x0
	.byte	0x0
	.uleb128 0x19
	.string	"reg_info_def"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x6808
	.uleb128 0x10
	.long	0x682d
	.long	0x643b
	.uleb128 0x11
	.long	0x3cd
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	0x683d
	.long	0x5de1
	.uleb128 0x11
	.long	0x3cd
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	0x684d
	.long	0x6858
	.uleb128 0x11
	.long	0x3cd
	.byte	0x0
	.byte	0x0
	.uleb128 0x19
	.string	"elt_list"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x684d
	.uleb128 0x2
	.string	"varray_data"
	.byte	0xc
	.byte	0x7e
	.long	0x660c
	.uleb128 0x4
	.long	0x68e4
	.string	"varray_head_tag"
	.byte	0x18
	.byte	0xc
	.byte	0x81
	.uleb128 0x7
	.string	"num_elements"
	.byte	0xc
	.byte	0x82
	.long	0x417
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"elements_used"
	.byte	0xc
	.byte	0x83
	.long	0x417
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1b
	.long	.LASF3
	.byte	0xc
	.byte	0x85
	.long	0x6471
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1b
	.long	.LASF26
	.byte	0xc
	.byte	0x86
	.long	0x2ca
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"data"
	.byte	0xc
	.byte	0x87
	.long	0x685e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x2
	.string	"varray_type"
	.byte	0xc
	.byte	0x8a
	.long	0x68f7
	.uleb128 0x3
	.byte	0x4
	.long	0x6871
	.uleb128 0xd
	.long	0x6988
	.string	"stmt_tree_s"
	.byte	0x10
	.byte	0xb
	.value	0x101
	.uleb128 0xe
	.string	"x_last_stmt"
	.byte	0xb
	.value	0x103
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"x_last_expr_type"
	.byte	0xb
	.value	0x106
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"x_last_expr_filename"
	.byte	0xb
	.value	0x108
	.long	0x2ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"stmts_are_full_exprs_p"
	.byte	0xb
	.value	0x117
	.long	0x2dd
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0xd
	.long	0x69d3
	.string	"c_language_function"
	.byte	0x14
	.byte	0xb
	.value	0x11f
	.uleb128 0x1c
	.long	.LASF44
	.byte	0xb
	.value	0x122
	.long	0x68fd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"x_scope_stmt_stack"
	.byte	0xb
	.value	0x124
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0xd
	.long	0x6a07
	.string	"c_lang_decl"
	.byte	0x4
	.byte	0xb
	.value	0x169
	.uleb128 0x20
	.string	"declared_inline"
	.byte	0xb
	.value	0x16a
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x26
	.long	.LASF45
	.byte	0xa
	.byte	0xe4
	.long	0x6a12
	.uleb128 0x29
	.long	.LASF45
	.byte	0x1
	.uleb128 0x19
	.string	"cp_binding_level"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x6a18
	.uleb128 0x12
	.string	"binding_table"
	.byte	0xa
	.value	0x103
	.long	0x6a47
	.uleb128 0x3
	.byte	0x4
	.long	0x6a4d
	.uleb128 0x19
	.string	"binding_table_s"
	.byte	0x1
	.uleb128 0xd
	.long	0x6cd1
	.string	"saved_scope"
	.byte	0x6c
	.byte	0xa
	.value	0x316
	.uleb128 0xe
	.string	"old_bindings"
	.byte	0xa
	.value	0x317
	.long	0x6cd1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"old_namespace"
	.byte	0xa
	.value	0x318
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"decl_ns_list"
	.byte	0xa
	.value	0x319
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"class_name"
	.byte	0xa
	.value	0x31a
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.string	"class_type"
	.byte	0xa
	.value	0x31b
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"access_specifier"
	.byte	0xa
	.value	0x31c
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xe
	.string	"function_decl"
	.byte	0xa
	.value	0x31d
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xe
	.string	"lang_base"
	.byte	0xa
	.value	0x31e
	.long	0x68e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xe
	.string	"lang_name"
	.byte	0xa
	.value	0x31f
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xe
	.string	"template_parms"
	.byte	0xa
	.value	0x320
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xe
	.string	"x_previous_class_type"
	.byte	0xa
	.value	0x321
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xe
	.string	"x_previous_class_values"
	.byte	0xa
	.value	0x322
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xe
	.string	"x_saved_tree"
	.byte	0xa
	.value	0x323
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xe
	.string	"lookups"
	.byte	0xa
	.value	0x324
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xe
	.string	"last_parms"
	.byte	0xa
	.value	0x325
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xe
	.string	"x_processing_template_decl"
	.byte	0xa
	.value	0x327
	.long	0x47d
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xe
	.string	"x_processing_specialization"
	.byte	0xa
	.value	0x328
	.long	0x2dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xe
	.string	"x_processing_explicit_instantiation"
	.byte	0xa
	.value	0x329
	.long	0x2dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xe
	.string	"need_pop_function_context"
	.byte	0xa
	.value	0x32a
	.long	0x2dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x1c
	.long	.LASF44
	.byte	0xa
	.value	0x32c
	.long	0x68fd
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xe
	.string	"class_bindings"
	.byte	0xa
	.value	0x32e
	.long	0x6a2b
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x1c
	.long	.LASF43
	.byte	0xa
	.value	0x32f
	.long	0x6a2b
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xe
	.string	"prev"
	.byte	0xa
	.value	0x331
	.long	0x6cd7
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6a07
	.uleb128 0x3
	.byte	0x4
	.long	0x6a5f
	.uleb128 0x19
	.string	"named_label_use_list"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x6cdd
	.uleb128 0x19
	.string	"named_label_list"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x6cfa
	.uleb128 0x19
	.string	"unparsed_text"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x6d13
	.uleb128 0x2a
	.long	0x6d63
	.string	"languages"
	.byte	0x4
	.byte	0xa
	.value	0x3f1
	.uleb128 0x18
	.string	"lang_c"
	.sleb128 0
	.uleb128 0x18
	.string	"lang_cplusplus"
	.sleb128 1
	.uleb128 0x18
	.string	"lang_java"
	.sleb128 2
	.byte	0x0
	.uleb128 0xd
	.long	0x6e82
	.string	"lang_type_header"
	.byte	0x4
	.byte	0xa
	.value	0x464
	.uleb128 0x20
	.string	"is_lang_type_class"
	.byte	0xa
	.value	0x465
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x20
	.string	"has_type_conversion"
	.byte	0xa
	.value	0x467
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x20
	.string	"has_init_ref"
	.byte	0xa
	.value	0x468
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x20
	.string	"has_default_ctor"
	.byte	0xa
	.value	0x469
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x20
	.string	"uses_multiple_inheritance"
	.byte	0xa
	.value	0x46a
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x20
	.string	"const_needs_init"
	.byte	0xa
	.value	0x46b
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x20
	.string	"ref_needs_init"
	.byte	0xa
	.value	0x46c
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x20
	.string	"has_const_assign_ref"
	.byte	0xa
	.value	0x46d
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x746e
	.string	"lang_type_class"
	.byte	0x4c
	.byte	0xa
	.value	0x47e
	.uleb128 0xe
	.string	"h"
	.byte	0xa
	.value	0x47f
	.long	0x6d63
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1c
	.long	.LASF25
	.byte	0xa
	.value	0x481
	.long	0x425
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x20
	.string	"has_mutable"
	.byte	0xa
	.value	0x483
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x20
	.string	"com_interface"
	.byte	0xa
	.value	0x484
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x20
	.string	"non_pod_class"
	.byte	0xa
	.value	0x485
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x20
	.string	"nearly_empty_p"
	.byte	0xa
	.value	0x486
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x21
	.long	.LASF24
	.byte	0xa
	.value	0x487
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x20
	.string	"has_assign_ref"
	.byte	0xa
	.value	0x488
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x20
	.string	"has_new"
	.byte	0xa
	.value	0x489
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x20
	.string	"has_array_new"
	.byte	0xa
	.value	0x48a
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x20
	.string	"gets_delete"
	.byte	0xa
	.value	0x48c
	.long	0x3b6
	.byte	0x4
	.byte	0x2
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x20
	.string	"has_call_overloaded"
	.byte	0xa
	.value	0x48d
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x20
	.string	"has_array_ref_overloaded"
	.byte	0xa
	.value	0x48e
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x20
	.string	"has_arrow_overloaded"
	.byte	0xa
	.value	0x48f
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x20
	.string	"interface_only"
	.byte	0xa
	.value	0x490
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x20
	.string	"interface_unknown"
	.byte	0xa
	.value	0x491
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x20
	.string	"marks"
	.byte	0xa
	.value	0x493
	.long	0x3b6
	.byte	0x4
	.byte	0x6
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x20
	.string	"vec_new_uses_cookie"
	.byte	0xa
	.value	0x494
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x20
	.string	"declared_class"
	.byte	0xa
	.value	0x495
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x20
	.string	"being_defined"
	.byte	0xa
	.value	0x497
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x20
	.string	"redefined"
	.byte	0xa
	.value	0x498
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x20
	.string	"debug_requested"
	.byte	0xa
	.value	0x499
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x21
	.long	.LASF46
	.byte	0xa
	.value	0x49a
	.long	0x3b6
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x20
	.string	"got_semicolon"
	.byte	0xa
	.value	0x49b
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x20
	.string	"ptrmemfunc_flag"
	.byte	0xa
	.value	0x49c
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x20
	.string	"was_anonymous"
	.byte	0xa
	.value	0x49d
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x20
	.string	"has_real_assign_ref"
	.byte	0xa
	.value	0x49f
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x20
	.string	"has_const_init_ref"
	.byte	0xa
	.value	0x4a0
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x20
	.string	"has_complex_init_ref"
	.byte	0xa
	.value	0x4a1
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x20
	.string	"has_complex_assign_ref"
	.byte	0xa
	.value	0x4a2
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x20
	.string	"has_abstract_assign_ref"
	.byte	0xa
	.value	0x4a3
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x20
	.string	"non_aggregate"
	.byte	0xa
	.value	0x4a4
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x20
	.string	"is_partial_instantiation"
	.byte	0xa
	.value	0x4a5
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x20
	.string	"java_interface"
	.byte	0xa
	.value	0x4a6
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x20
	.string	"anon_aggr"
	.byte	0xa
	.value	0x4a8
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x20
	.string	"non_zero_init"
	.byte	0xa
	.value	0x4a9
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x20
	.string	"empty_p"
	.byte	0xa
	.value	0x4aa
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x20
	.string	"contains_empty_class_p"
	.byte	0xa
	.value	0x4ab
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x20
	.string	"has_implicit_copy_constructor"
	.byte	0xa
	.value	0x4b7
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x20
	.string	"dummy"
	.byte	0xa
	.value	0x4b8
	.long	0x3b6
	.byte	0x4
	.byte	0x4
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"primary_base"
	.byte	0xa
	.value	0x4bd
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.string	"vfields"
	.byte	0xa
	.value	0x4be
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"vcall_indices"
	.byte	0xa
	.value	0x4bf
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xe
	.string	"vtables"
	.byte	0xa
	.value	0x4c0
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xe
	.string	"typeinfo_var"
	.byte	0xa
	.value	0x4c1
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xe
	.string	"vbases"
	.byte	0xa
	.value	0x4c2
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xe
	.string	"nested_udts"
	.byte	0xa
	.value	0x4c3
	.long	0x6a31
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xe
	.string	"as_base"
	.byte	0xa
	.value	0x4c4
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xe
	.string	"pure_virtuals"
	.byte	0xa
	.value	0x4c5
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xe
	.string	"friend_classes"
	.byte	0xa
	.value	0x4c6
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xe
	.string	"methods"
	.byte	0xa
	.value	0x4c7
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xe
	.string	"key_method"
	.byte	0xa
	.value	0x4c8
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xe
	.string	"decl_list"
	.byte	0xa
	.value	0x4c9
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x1c
	.long	.LASF47
	.byte	0xa
	.value	0x4ca
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x1c
	.long	.LASF48
	.byte	0xa
	.value	0x4cb
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xe
	.string	"copy_constructor"
	.byte	0xa
	.value	0x4cf
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.byte	0x0
	.uleb128 0xd
	.long	0x74a8
	.string	"lang_type_ptrmem"
	.byte	0x8
	.byte	0xa
	.value	0x4d4
	.uleb128 0xe
	.string	"h"
	.byte	0xa
	.value	0x4d5
	.long	0x6d63
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"record"
	.byte	0xa
	.value	0x4d6
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x22
	.long	0x74de
	.string	"lang_type_u"
	.byte	0x4c
	.byte	0xa
	.value	0x4dc
	.uleb128 0xa
	.string	"h"
	.byte	0xa
	.value	0x4dd
	.long	0x6d63
	.uleb128 0xa
	.string	"c"
	.byte	0xa
	.value	0x4de
	.long	0x6e82
	.uleb128 0x9
	.long	.LASF49
	.byte	0xa
	.value	0x4df
	.long	0x746e
	.byte	0x0
	.uleb128 0x22
	.long	0x750e
	.string	"lang_decl_u"
	.byte	0x4
	.byte	0xa
	.value	0x722
	.uleb128 0x9
	.long	.LASF47
	.byte	0xa
	.value	0x725
	.long	0x1e6
	.uleb128 0xa
	.string	"level"
	.byte	0xa
	.value	0x728
	.long	0x6a2b
	.byte	0x0
	.uleb128 0x22
	.long	0x755f
	.string	"lang_decl_u2"
	.byte	0x4
	.byte	0xa
	.value	0x72b
	.uleb128 0xa
	.string	"access"
	.byte	0xa
	.value	0x72d
	.long	0x1e6
	.uleb128 0xa
	.string	"discriminator"
	.byte	0xa
	.value	0x730
	.long	0x2dd
	.uleb128 0xa
	.string	"vcall_offset"
	.byte	0xa
	.value	0x734
	.long	0x1e6
	.byte	0x0
	.uleb128 0xd
	.long	0x783a
	.string	"lang_decl_flags"
	.byte	0x10
	.byte	0xa
	.value	0x703
	.uleb128 0x1c
	.long	.LASF42
	.byte	0xa
	.value	0x704
	.long	0x69d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x21
	.long	.LASF34
	.byte	0xa
	.value	0x706
	.long	0x6d29
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x20
	.string	"operator_attr"
	.byte	0xa
	.value	0x708
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x20
	.string	"constructor_attr"
	.byte	0xa
	.value	0x709
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x20
	.string	"destructor_attr"
	.byte	0xa
	.value	0x70a
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x20
	.string	"friend_attr"
	.byte	0xa
	.value	0x70b
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x20
	.string	"static_function"
	.byte	0xa
	.value	0x70c
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x20
	.string	"pure_virtual"
	.byte	0xa
	.value	0x70d
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x20
	.string	"has_in_charge_parm_p"
	.byte	0xa
	.value	0x70e
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x20
	.string	"has_vtt_parm_p"
	.byte	0xa
	.value	0x70f
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x20
	.string	"deferred"
	.byte	0xa
	.value	0x711
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x21
	.long	.LASF46
	.byte	0xa
	.value	0x712
	.long	0x3b6
	.byte	0x4
	.byte	0x2
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x20
	.string	"nonconverting"
	.byte	0xa
	.value	0x713
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x20
	.string	"not_really_extern"
	.byte	0xa
	.value	0x714
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x20
	.string	"needs_final_overrider"
	.byte	0xa
	.value	0x715
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x20
	.string	"initialized_in_class"
	.byte	0xa
	.value	0x716
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x20
	.string	"assignment_operator_p"
	.byte	0xa
	.value	0x717
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x20
	.string	"global_ctor_p"
	.byte	0xa
	.value	0x719
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x20
	.string	"global_dtor_p"
	.byte	0xa
	.value	0x71a
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x20
	.string	"anticipated_p"
	.byte	0xa
	.value	0x71b
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x20
	.string	"template_conv_p"
	.byte	0xa
	.value	0x71c
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x20
	.string	"u1sel"
	.byte	0xa
	.value	0x71d
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x20
	.string	"u2sel"
	.byte	0xa
	.value	0x71e
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x20
	.string	"can_be_full"
	.byte	0xa
	.value	0x71f
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x20
	.string	"unused"
	.byte	0xa
	.value	0x720
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"u"
	.byte	0xa
	.value	0x729
	.long	0x74de
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"u2"
	.byte	0xa
	.value	0x735
	.long	0x750e
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x22
	.long	0x78a3
	.string	"lang_decl_u3"
	.byte	0x4
	.byte	0xa
	.value	0x75c
	.uleb128 0xa
	.string	"sorted_fields"
	.byte	0xa
	.value	0x75d
	.long	0x1e6
	.uleb128 0xa
	.string	"pending_inline_info"
	.byte	0xa
	.value	0x75e
	.long	0x6d23
	.uleb128 0xa
	.string	"saved_language_function"
	.byte	0xa
	.value	0x760
	.long	0x6435
	.byte	0x0
	.uleb128 0xd
	.long	0x797c
	.string	"full_lang_decl"
	.byte	0x24
	.byte	0xa
	.value	0x73f
	.uleb128 0x1c
	.long	.LASF48
	.byte	0xa
	.value	0x740
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1c
	.long	.LASF28
	.byte	0xa
	.value	0x745
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"cloned_function"
	.byte	0xa
	.value	0x748
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1c
	.long	.LASF50
	.byte	0xa
	.value	0x74c
	.long	0x47d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.string	"named_return_object"
	.byte	0xa
	.value	0x751
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xe
	.string	"operator_code"
	.byte	0xa
	.value	0x756
	.long	0xac7
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x20
	.string	"u3sel"
	.byte	0xa
	.value	0x758
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x20
	.string	"pending_inline_p"
	.byte	0xa
	.value	0x759
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xe
	.string	"u"
	.byte	0xa
	.value	0x761
	.long	0x783a
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0x22
	.long	0x799d
	.string	"lang_decl_u4"
	.byte	0x24
	.byte	0xa
	.value	0x73d
	.uleb128 0xa
	.string	"f"
	.byte	0xa
	.value	0x762
	.long	0x78a3
	.byte	0x0
	.uleb128 0x28
	.long	0x7a07
	.long	.LASF51
	.byte	0x4
	.byte	0xa
	.value	0xc8d
	.uleb128 0x18
	.string	"bk_inaccessible"
	.sleb128 -3
	.uleb128 0x18
	.string	"bk_ambig"
	.sleb128 -2
	.uleb128 0x18
	.string	"bk_not_base"
	.sleb128 -1
	.uleb128 0x18
	.string	"bk_same_type"
	.sleb128 0
	.uleb128 0x18
	.string	"bk_proper_base"
	.sleb128 1
	.uleb128 0x18
	.string	"bk_via_virtual"
	.sleb128 2
	.byte	0x0
	.uleb128 0x2b
	.long	.LASF51
	.byte	0xa
	.value	0xc96
	.long	0x799d
	.uleb128 0x2c
	.long	0x7a68
	.long	.LASF52
	.byte	0x10
	.byte	0xa
	.value	0xe26
	.uleb128 0x1c
	.long	.LASF2
	.byte	0xa
	.value	0xe28
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1c
	.long	.LASF26
	.byte	0xa
	.value	0xe2a
	.long	0x2ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"mangled_name"
	.byte	0xa
	.value	0xe2c
	.long	0x2ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"arity"
	.byte	0xa
	.value	0xe2e
	.long	0x2dd
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x2b
	.long	.LASF52
	.byte	0xa
	.value	0xe2f
	.long	0x7a13
	.uleb128 0x25
	.long	0x7aa6
	.byte	0x8
	.byte	0x10
	.byte	0x1f
	.uleb128 0x7
	.string	"format_spec"
	.byte	0x10
	.byte	0x20
	.long	0x2ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"args_ptr"
	.byte	0x10
	.byte	0x21
	.long	0x7aa6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x408
	.uleb128 0x2
	.string	"text_info"
	.byte	0x10
	.byte	0x22
	.long	0x7a74
	.uleb128 0x2d
	.long	0x7b3d
	.byte	0x4
	.byte	0x10
	.byte	0x26
	.uleb128 0x18
	.string	"DK_FATAL"
	.sleb128 0
	.uleb128 0x18
	.string	"DK_ICE"
	.sleb128 1
	.uleb128 0x18
	.string	"DK_SORRY"
	.sleb128 2
	.uleb128 0x18
	.string	"DK_ERROR"
	.sleb128 3
	.uleb128 0x18
	.string	"DK_WARNING"
	.sleb128 4
	.uleb128 0x18
	.string	"DK_ANACHRONISM"
	.sleb128 5
	.uleb128 0x18
	.string	"DK_NOTE"
	.sleb128 6
	.uleb128 0x18
	.string	"DK_DEBUG"
	.sleb128 7
	.uleb128 0x18
	.string	"DK_LAST_DIAGNOSTIC_KIND"
	.sleb128 8
	.byte	0x0
	.uleb128 0x2
	.string	"diagnostic_t"
	.byte	0x10
	.byte	0x2b
	.long	0x7abd
	.uleb128 0x25
	.long	0x7b89
	.byte	0x14
	.byte	0x10
	.byte	0x31
	.uleb128 0x7
	.string	"message"
	.byte	0x10
	.byte	0x32
	.long	0x7aac
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1b
	.long	.LASF53
	.byte	0x10
	.byte	0x33
	.long	0xab5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"kind"
	.byte	0x10
	.byte	0x35
	.long	0x7b3d
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x2
	.string	"diagnostic_info"
	.byte	0x10
	.byte	0x36
	.long	0x7b51
	.uleb128 0x2d
	.long	0x7c0d
	.byte	0x4
	.byte	0x10
	.byte	0x40
	.uleb128 0x18
	.string	"DIAGNOSTICS_SHOW_PREFIX_ONCE"
	.sleb128 0
	.uleb128 0x18
	.string	"DIAGNOSTICS_SHOW_PREFIX_NEVER"
	.sleb128 1
	.uleb128 0x18
	.string	"DIAGNOSTICS_SHOW_PREFIX_EVERY_LINE"
	.sleb128 2
	.byte	0x0
	.uleb128 0x2
	.string	"diagnostic_prefixing_rule_t"
	.byte	0x10
	.byte	0x44
	.long	0x7ba0
	.uleb128 0x25
	.long	0x7ce5
	.byte	0x18
	.byte	0x10
	.byte	0x48
	.uleb128 0x7
	.string	"prefix"
	.byte	0x10
	.byte	0x4a
	.long	0x2ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"maximum_length"
	.byte	0x10
	.byte	0x4e
	.long	0x2dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"ideal_maximum_length"
	.byte	0x10
	.byte	0x52
	.long	0x2dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"indent_skip"
	.byte	0x10
	.byte	0x55
	.long	0x2dd
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"emitted_prefix_p"
	.byte	0x10
	.byte	0x58
	.long	0x535f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"need_newline_p"
	.byte	0x10
	.byte	0x5b
	.long	0x535f
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.uleb128 0x7
	.string	"prefixing_rule"
	.byte	0x10
	.byte	0x5e
	.long	0x7c0d
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x2
	.string	"output_state"
	.byte	0x10
	.byte	0x5f
	.long	0x7c30
	.uleb128 0x26
	.long	.LASF54
	.byte	0x10
	.byte	0x64
	.long	0x7d04
	.uleb128 0x14
	.long	0x7d8b
	.long	.LASF54
	.byte	0xd0
	.byte	0x10
	.byte	0x64
	.uleb128 0x7
	.string	"state"
	.byte	0x10
	.byte	0x6c
	.long	0x7ce5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"stream"
	.byte	0x10
	.byte	0x6f
	.long	0x7dc4
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"obstack"
	.byte	0x10
	.byte	0x72
	.long	0x365b
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"line_length"
	.byte	0x10
	.byte	0x75
	.long	0x2dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x7
	.string	"digit_buffer"
	.byte	0x10
	.byte	0x79
	.long	0x7dca
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x7
	.string	"format_decoder"
	.byte	0x10
	.byte	0x83
	.long	0x7d8b
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.byte	0x0
	.uleb128 0x2
	.string	"printer_fn"
	.byte	0x10
	.byte	0x65
	.long	0x7d9d
	.uleb128 0x3
	.byte	0x4
	.long	0x7da3
	.uleb128 0x1d
	.long	0x7db8
	.byte	0x1
	.long	0x535f
	.uleb128 0x1e
	.long	0x7db8
	.uleb128 0x1e
	.long	0x7dbe
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7cf9
	.uleb128 0x3
	.byte	0x4
	.long	0x7aac
	.uleb128 0x3
	.byte	0x4
	.long	0x4ec
	.uleb128 0x10
	.long	0x7dda
	.long	0x2d5
	.uleb128 0x11
	.long	0x3cd
	.byte	0x7f
	.byte	0x0
	.uleb128 0x26
	.long	.LASF55
	.byte	0x10
	.byte	0xac
	.long	0x7de5
	.uleb128 0x2e
	.long	0x7ee9
	.long	.LASF55
	.value	0x110
	.byte	0xa
	.byte	0x29
	.uleb128 0x7
	.string	"buffer"
	.byte	0x10
	.byte	0xb8
	.long	0x7cf9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"diagnostic_count"
	.byte	0x10
	.byte	0xbb
	.long	0x7f48
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0x7
	.string	"warnings_are_errors_message"
	.byte	0x10
	.byte	0xbf
	.long	0x535f
	.byte	0x3
	.byte	0x23
	.uleb128 0xf0
	.uleb128 0x7
	.string	"begin_diagnostic"
	.byte	0x10
	.byte	0xc8
	.long	0x7ee9
	.byte	0x3
	.byte	0x23
	.uleb128 0xf4
	.uleb128 0x7
	.string	"end_diagnostic"
	.byte	0x10
	.byte	0xcb
	.long	0x7f29
	.byte	0x3
	.byte	0x23
	.uleb128 0xf8
	.uleb128 0x7
	.string	"internal_error"
	.byte	0x10
	.byte	0xce
	.long	0x7f69
	.byte	0x3
	.byte	0x23
	.uleb128 0xfc
	.uleb128 0x7
	.string	"last_function"
	.byte	0x10
	.byte	0xd3
	.long	0x1e6
	.byte	0x3
	.byte	0x23
	.uleb128 0x100
	.uleb128 0x7
	.string	"last_module"
	.byte	0x10
	.byte	0xd6
	.long	0x2dd
	.byte	0x3
	.byte	0x23
	.uleb128 0x104
	.uleb128 0x7
	.string	"lock"
	.byte	0x10
	.byte	0xd8
	.long	0x2dd
	.byte	0x3
	.byte	0x23
	.uleb128 0x108
	.uleb128 0x7
	.string	"x_data"
	.byte	0x10
	.byte	0xdb
	.long	0x4e4
	.byte	0x3
	.byte	0x23
	.uleb128 0x10c
	.byte	0x0
	.uleb128 0x2
	.string	"diagnostic_starter_fn"
	.byte	0x10
	.byte	0xad
	.long	0x7f06
	.uleb128 0x3
	.byte	0x4
	.long	0x7f0c
	.uleb128 0x1f
	.long	0x7f1d
	.byte	0x1
	.uleb128 0x1e
	.long	0x7f1d
	.uleb128 0x1e
	.long	0x7f23
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7dda
	.uleb128 0x3
	.byte	0x4
	.long	0x7b89
	.uleb128 0x2
	.string	"diagnostic_finalizer_fn"
	.byte	0x10
	.byte	0xaf
	.long	0x7ee9
	.uleb128 0x10
	.long	0x7f58
	.long	0x2dd
	.uleb128 0x11
	.long	0x3cd
	.byte	0x7
	.byte	0x0
	.uleb128 0x1f
	.long	0x7f69
	.byte	0x1
	.uleb128 0x1e
	.long	0x2ca
	.uleb128 0x1e
	.long	0x7aa6
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7f58
	.uleb128 0x4
	.long	0x7fb7
	.string	"asm_int_op"
	.byte	0x10
	.byte	0x16
	.byte	0x3a
	.uleb128 0x7
	.string	"hi"
	.byte	0x16
	.byte	0x3b
	.long	0x2ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"si"
	.byte	0x16
	.byte	0x3c
	.long	0x2ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"di"
	.byte	0x16
	.byte	0x3d
	.long	0x2ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"ti"
	.byte	0x16
	.byte	0x3e
	.long	0x2ca
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x4
	.long	0x81ed
	.string	"asm_out"
	.byte	0x70
	.byte	0x16
	.byte	0x33
	.uleb128 0x7
	.string	"open_paren"
	.byte	0x16
	.byte	0x35
	.long	0x2ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"close_paren"
	.byte	0x16
	.byte	0x35
	.long	0x2ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"byte_op"
	.byte	0x16
	.byte	0x38
	.long	0x2ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"aligned_op"
	.byte	0x16
	.byte	0x3f
	.long	0x7f6f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"unaligned_op"
	.byte	0x16
	.byte	0x3f
	.long	0x7f6f
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"integer"
	.byte	0x16
	.byte	0x46
	.long	0x8207
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x7
	.string	"globalize_label"
	.byte	0x16
	.byte	0x49
	.long	0x821e
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x7
	.string	"visibility"
	.byte	0x16
	.byte	0x4d
	.long	0x8235
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x7
	.string	"function_prologue"
	.byte	0x16
	.byte	0x50
	.long	0x824c
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x7
	.string	"function_end_prologue"
	.byte	0x16
	.byte	0x53
	.long	0x825e
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x7
	.string	"function_begin_epilogue"
	.byte	0x16
	.byte	0x56
	.long	0x825e
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x7
	.string	"function_epilogue"
	.byte	0x16
	.byte	0x59
	.long	0x824c
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x7
	.string	"named_section"
	.byte	0x16
	.byte	0x5d
	.long	0x8275
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x7
	.string	"exception_section"
	.byte	0x16
	.byte	0x60
	.long	0x834
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x7
	.string	"eh_frame_section"
	.byte	0x16
	.byte	0x63
	.long	0x834
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x7
	.string	"select_section"
	.byte	0x16
	.byte	0x6a
	.long	0x8291
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x7
	.string	"select_rtx_section"
	.byte	0x16
	.byte	0x6e
	.long	0x82ad
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x7
	.string	"unique_section"
	.byte	0x16
	.byte	0x73
	.long	0x8235
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x7
	.string	"constructor"
	.byte	0x16
	.byte	0x76
	.long	0x82c4
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x7
	.string	"destructor"
	.byte	0x16
	.byte	0x79
	.long	0x82c4
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x7
	.string	"output_mi_thunk"
	.byte	0x16
	.byte	0x80
	.long	0x82ea
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x7
	.string	"can_output_mi_thunk"
	.byte	0x16
	.byte	0x8b
	.long	0x830f
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.byte	0x0
	.uleb128 0x1d
	.long	0x8207
	.byte	0x1
	.long	0x535f
	.uleb128 0x1e
	.long	0x9e
	.uleb128 0x1e
	.long	0x3b6
	.uleb128 0x1e
	.long	0x2dd
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x81ed
	.uleb128 0x1f
	.long	0x821e
	.byte	0x1
	.uleb128 0x1e
	.long	0x7dc4
	.uleb128 0x1e
	.long	0x2ca
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x820d
	.uleb128 0x1f
	.long	0x8235
	.byte	0x1
	.uleb128 0x1e
	.long	0x1e6
	.uleb128 0x1e
	.long	0x2dd
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x8224
	.uleb128 0x1f
	.long	0x824c
	.byte	0x1
	.uleb128 0x1e
	.long	0x7dc4
	.uleb128 0x1e
	.long	0x47d
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x823b
	.uleb128 0x1f
	.long	0x825e
	.byte	0x1
	.uleb128 0x1e
	.long	0x7dc4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x8252
	.uleb128 0x1f
	.long	0x8275
	.byte	0x1
	.uleb128 0x1e
	.long	0x2ca
	.uleb128 0x1e
	.long	0x3b6
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x8264
	.uleb128 0x1f
	.long	0x8291
	.byte	0x1
	.uleb128 0x1e
	.long	0x1e6
	.uleb128 0x1e
	.long	0x2dd
	.uleb128 0x1e
	.long	0x48e
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x827b
	.uleb128 0x1f
	.long	0x82ad
	.byte	0x1
	.uleb128 0x1e
	.long	0x83a
	.uleb128 0x1e
	.long	0x9e
	.uleb128 0x1e
	.long	0x48e
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x8297
	.uleb128 0x1f
	.long	0x82c4
	.byte	0x1
	.uleb128 0x1e
	.long	0x9e
	.uleb128 0x1e
	.long	0x2dd
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x82b3
	.uleb128 0x1f
	.long	0x82ea
	.byte	0x1
	.uleb128 0x1e
	.long	0x7dc4
	.uleb128 0x1e
	.long	0x1e6
	.uleb128 0x1e
	.long	0x47d
	.uleb128 0x1e
	.long	0x47d
	.uleb128 0x1e
	.long	0x1e6
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x82ca
	.uleb128 0x1d
	.long	0x830f
	.byte	0x1
	.long	0x535f
	.uleb128 0x1e
	.long	0x1e6
	.uleb128 0x1e
	.long	0x47d
	.uleb128 0x1e
	.long	0x47d
	.uleb128 0x1e
	.long	0x1e6
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x82f0
	.uleb128 0x4
	.long	0x84d0
	.string	"sched"
	.byte	0x40
	.byte	0x16
	.byte	0x93
	.uleb128 0x7
	.string	"adjust_cost"
	.byte	0x16
	.byte	0x97
	.long	0x84ef
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"adjust_priority"
	.byte	0x16
	.byte	0x9b
	.long	0x850a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"issue_rate"
	.byte	0x16
	.byte	0xa0
	.long	0x8516
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"variable_issue"
	.byte	0x16
	.byte	0xa4
	.long	0x853b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"md_init"
	.byte	0x16
	.byte	0xa7
	.long	0x8557
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"md_finish"
	.byte	0x16
	.byte	0xaa
	.long	0x856e
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"reorder"
	.byte	0x16
	.byte	0xae
	.long	0x8598
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"reorder2"
	.byte	0x16
	.byte	0xaf
	.long	0x8598
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"use_dfa_pipeline_interface"
	.byte	0x16
	.byte	0xb4
	.long	0x8516
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x7
	.string	"init_dfa_pre_cycle_insn"
	.byte	0x16
	.byte	0xc2
	.long	0x834
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x7
	.string	"dfa_pre_cycle_insn"
	.byte	0x16
	.byte	0xc3
	.long	0x85a4
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x7
	.string	"init_dfa_post_cycle_insn"
	.byte	0x16
	.byte	0xc4
	.long	0x834
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x7
	.string	"dfa_post_cycle_insn"
	.byte	0x16
	.byte	0xc5
	.long	0x85a4
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x7
	.string	"first_cycle_multipass_dfa_lookahead"
	.byte	0x16
	.byte	0xcd
	.long	0x8516
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x7
	.string	"init_dfa_bubbles"
	.byte	0x16
	.byte	0xd8
	.long	0x834
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x7
	.string	"dfa_bubble"
	.byte	0x16
	.byte	0xd9
	.long	0x85ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.byte	0x0
	.uleb128 0x1d
	.long	0x84ef
	.byte	0x1
	.long	0x2dd
	.uleb128 0x1e
	.long	0x9e
	.uleb128 0x1e
	.long	0x9e
	.uleb128 0x1e
	.long	0x9e
	.uleb128 0x1e
	.long	0x2dd
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x84d0
	.uleb128 0x1d
	.long	0x850a
	.byte	0x1
	.long	0x2dd
	.uleb128 0x1e
	.long	0x9e
	.uleb128 0x1e
	.long	0x2dd
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x84f5
	.uleb128 0x2f
	.byte	0x1
	.long	0x2dd
	.uleb128 0x3
	.byte	0x4
	.long	0x8510
	.uleb128 0x1d
	.long	0x853b
	.byte	0x1
	.long	0x2dd
	.uleb128 0x1e
	.long	0x7dc4
	.uleb128 0x1e
	.long	0x2dd
	.uleb128 0x1e
	.long	0x9e
	.uleb128 0x1e
	.long	0x2dd
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x851c
	.uleb128 0x1f
	.long	0x8557
	.byte	0x1
	.uleb128 0x1e
	.long	0x7dc4
	.uleb128 0x1e
	.long	0x2dd
	.uleb128 0x1e
	.long	0x2dd
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x8541
	.uleb128 0x1f
	.long	0x856e
	.byte	0x1
	.uleb128 0x1e
	.long	0x7dc4
	.uleb128 0x1e
	.long	0x2dd
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x855d
	.uleb128 0x1d
	.long	0x8598
	.byte	0x1
	.long	0x2dd
	.uleb128 0x1e
	.long	0x7dc4
	.uleb128 0x1e
	.long	0x2dd
	.uleb128 0x1e
	.long	0x5e1c
	.uleb128 0x1e
	.long	0x82c
	.uleb128 0x1e
	.long	0x2dd
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x8574
	.uleb128 0x2f
	.byte	0x1
	.long	0x9e
	.uleb128 0x3
	.byte	0x4
	.long	0x859e
	.uleb128 0x1d
	.long	0x85ba
	.byte	0x1
	.long	0x9e
	.uleb128 0x1e
	.long	0x2dd
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x85aa
	.uleb128 0x4
	.long	0x88a9
	.string	"gcc_target"
	.byte	0xfc
	.byte	0x16
	.byte	0x30
	.uleb128 0x7
	.string	"asm_out"
	.byte	0x16
	.byte	0x8f
	.long	0x7fb7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"sched"
	.byte	0x16
	.byte	0xda
	.long	0x8315
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x7
	.string	"merge_decl_attributes"
	.byte	0x16
	.byte	0xdd
	.long	0x88be
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x7
	.string	"merge_type_attributes"
	.byte	0x16
	.byte	0xe0
	.long	0x88be
	.byte	0x3
	.byte	0x23
	.uleb128 0xb4
	.uleb128 0x7
	.string	"attribute_table"
	.byte	0x16
	.byte	0xe4
	.long	0x88c4
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0x7
	.string	"comp_type_attributes"
	.byte	0x16
	.byte	0xe9
	.long	0x88e4
	.byte	0x3
	.byte	0x23
	.uleb128 0xbc
	.uleb128 0x7
	.string	"set_default_type_attributes"
	.byte	0x16
	.byte	0xec
	.long	0x88f6
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0x7
	.string	"insert_attributes"
	.byte	0x16
	.byte	0xef
	.long	0x890d
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.uleb128 0x7
	.string	"function_attribute_inlinable_p"
	.byte	0x16
	.byte	0xf3
	.long	0x8923
	.byte	0x3
	.byte	0x23
	.uleb128 0xc8
	.uleb128 0x7
	.string	"ms_bitfield_layout_p"
	.byte	0x16
	.byte	0xf7
	.long	0x8923
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.uleb128 0x7
	.string	"init_builtins"
	.byte	0x16
	.byte	0xfa
	.long	0x834
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0x7
	.string	"expand_builtin"
	.byte	0x16
	.byte	0xfd
	.long	0x894d
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0xe
	.string	"section_type_flags"
	.byte	0x16
	.value	0x103
	.long	0x896d
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0xe
	.string	"cannot_modify_jumps_p"
	.byte	0x16
	.value	0x107
	.long	0x8979
	.byte	0x3
	.byte	0x23
	.uleb128 0xdc
	.uleb128 0xe
	.string	"cannot_force_const_mem"
	.byte	0x16
	.value	0x10a
	.long	0x898f
	.byte	0x3
	.byte	0x23
	.uleb128 0xe0
	.uleb128 0xe
	.string	"in_small_data_p"
	.byte	0x16
	.value	0x10d
	.long	0x8923
	.byte	0x3
	.byte	0x23
	.uleb128 0xe4
	.uleb128 0xe
	.string	"binds_local_p"
	.byte	0x16
	.value	0x111
	.long	0x8923
	.byte	0x3
	.byte	0x23
	.uleb128 0xe8
	.uleb128 0xe
	.string	"encode_section_info"
	.byte	0x16
	.value	0x115
	.long	0x8235
	.byte	0x3
	.byte	0x23
	.uleb128 0xec
	.uleb128 0xe
	.string	"strip_name_encoding"
	.byte	0x16
	.value	0x118
	.long	0x89a5
	.byte	0x3
	.byte	0x23
	.uleb128 0xf0
	.uleb128 0xe
	.string	"have_named_sections"
	.byte	0x16
	.value	0x11d
	.long	0x535f
	.byte	0x3
	.byte	0x23
	.uleb128 0xf4
	.uleb128 0xe
	.string	"have_ctors_dtors"
	.byte	0x16
	.value	0x121
	.long	0x535f
	.byte	0x3
	.byte	0x23
	.uleb128 0xf5
	.uleb128 0xe
	.string	"have_tls"
	.byte	0x16
	.value	0x124
	.long	0x535f
	.byte	0x3
	.byte	0x23
	.uleb128 0xf6
	.uleb128 0xe
	.string	"have_srodata_section"
	.byte	0x16
	.value	0x127
	.long	0x535f
	.byte	0x3
	.byte	0x23
	.uleb128 0xf7
	.uleb128 0xe
	.string	"terminate_dw2_eh_frame_info"
	.byte	0x16
	.value	0x12a
	.long	0x535f
	.byte	0x3
	.byte	0x23
	.uleb128 0xf8
	.byte	0x0
	.uleb128 0x1d
	.long	0x88be
	.byte	0x1
	.long	0x1e6
	.uleb128 0x1e
	.long	0x1e6
	.uleb128 0x1e
	.long	0x1e6
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x88a9
	.uleb128 0x3
	.byte	0x4
	.long	0x88ca
	.uleb128 0xb
	.long	0x529a
	.uleb128 0x1d
	.long	0x88e4
	.byte	0x1
	.long	0x2dd
	.uleb128 0x1e
	.long	0x1e6
	.uleb128 0x1e
	.long	0x1e6
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x88cf
	.uleb128 0x1f
	.long	0x88f6
	.byte	0x1
	.uleb128 0x1e
	.long	0x1e6
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x88ea
	.uleb128 0x1f
	.long	0x890d
	.byte	0x1
	.uleb128 0x1e
	.long	0x1e6
	.uleb128 0x1e
	.long	0x538c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x88fc
	.uleb128 0x1d
	.long	0x8923
	.byte	0x1
	.long	0x535f
	.uleb128 0x1e
	.long	0x1e6
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x8913
	.uleb128 0x1d
	.long	0x894d
	.byte	0x1
	.long	0x9e
	.uleb128 0x1e
	.long	0x1e6
	.uleb128 0x1e
	.long	0x9e
	.uleb128 0x1e
	.long	0x9e
	.uleb128 0x1e
	.long	0x83a
	.uleb128 0x1e
	.long	0x2dd
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x8929
	.uleb128 0x1d
	.long	0x896d
	.byte	0x1
	.long	0x3b6
	.uleb128 0x1e
	.long	0x1e6
	.uleb128 0x1e
	.long	0x2ca
	.uleb128 0x1e
	.long	0x2dd
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x8953
	.uleb128 0x2f
	.byte	0x1
	.long	0x535f
	.uleb128 0x3
	.byte	0x4
	.long	0x8973
	.uleb128 0x1d
	.long	0x898f
	.byte	0x1
	.long	0x535f
	.uleb128 0x1e
	.long	0x9e
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x897f
	.uleb128 0x1d
	.long	0x89a5
	.byte	0x1
	.long	0x2ca
	.uleb128 0x1e
	.long	0x2ca
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x8995
	.uleb128 0x30
	.long	0x89d7
	.byte	0x1
	.long	.LASF56
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.long	0x1e6
	.long	.LFB15
	.long	.LFE15
	.long	.LLST0
	.uleb128 0x31
	.long	.LASF3
	.byte	0x1
	.byte	0x50
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x32
	.long	0x8a23
	.byte	0x1
	.string	"require_complete_type"
	.byte	0x1
	.byte	0x65
	.byte	0x1
	.long	0x1e6
	.long	.LFB16
	.long	.LFE16
	.long	.LLST1
	.uleb128 0x31
	.long	.LASF18
	.byte	0x1
	.byte	0x64
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.long	.LASF3
	.byte	0x1
	.byte	0x66
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x32
	.long	0x8a6f
	.byte	0x1
	.string	"complete_type"
	.byte	0x1
	.byte	0x8d
	.byte	0x1
	.long	0x1e6
	.long	.LFB17
	.long	.LFE17
	.long	.LLST2
	.uleb128 0x31
	.long	.LASF3
	.byte	0x1
	.byte	0x8c
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x34
	.long	.LBB2
	.long	.LBE2
	.uleb128 0x35
	.string	"t"
	.byte	0x1
	.byte	0x97
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x32
	.long	0x8ad5
	.byte	0x1
	.string	"complete_type_or_diagnostic"
	.byte	0x1
	.byte	0xaf
	.byte	0x1
	.long	0x1e6
	.long	.LFB18
	.long	.LFE18
	.long	.LLST3
	.uleb128 0x31
	.long	.LASF3
	.byte	0x1
	.byte	0xac
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.long	.LASF18
	.byte	0x1
	.byte	0xad
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x36
	.string	"diag_type"
	.byte	0x1
	.byte	0xae
	.long	0x2dd
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.byte	0x0
	.uleb128 0x32
	.long	0x8b0c
	.byte	0x1
	.string	"type_unknown_p"
	.byte	0x1
	.byte	0xc2
	.byte	0x1
	.long	0x2dd
	.long	.LFB19
	.long	.LFE19
	.long	.LLST4
	.uleb128 0x36
	.string	"exp"
	.byte	0x1
	.byte	0xc1
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x37
	.long	0x8bb3
	.string	"qualify_type_recursive"
	.byte	0x1
	.byte	0xd1
	.byte	0x1
	.long	0x1e6
	.long	.LFB20
	.long	.LFE20
	.long	.LLST5
	.uleb128 0x36
	.string	"t1"
	.byte	0x1
	.byte	0xd0
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x36
	.string	"t2"
	.byte	0x1
	.byte	0xd0
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x34
	.long	.LBB3
	.long	.LBE3
	.uleb128 0x35
	.string	"tt1"
	.byte	0x1
	.byte	0xd5
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x35
	.string	"tt2"
	.byte	0x1
	.byte	0xd6
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x35
	.string	"b1"
	.byte	0x1
	.byte	0xd7
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x33
	.long	.LASF57
	.byte	0x1
	.byte	0xd8
	.long	0x2dd
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x35
	.string	"tgt"
	.byte	0x1
	.byte	0xd9
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x33
	.long	.LASF22
	.byte	0x1
	.byte	0xda
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x32
	.long	0x8c58
	.byte	0x1
	.string	"commonparms"
	.byte	0x1
	.byte	0xff
	.byte	0x1
	.long	0x1e6
	.long	.LFB21
	.long	.LFE21
	.long	.LLST6
	.uleb128 0x36
	.string	"p1"
	.byte	0x1
	.byte	0xfe
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x36
	.string	"p2"
	.byte	0x1
	.byte	0xfe
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x38
	.string	"oldargs"
	.byte	0x1
	.value	0x100
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x38
	.string	"newargs"
	.byte	0x1
	.value	0x100
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x38
	.string	"n"
	.byte	0x1
	.value	0x100
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x38
	.string	"i"
	.byte	0x1
	.value	0x101
	.long	0x2dd
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x38
	.string	"len"
	.byte	0x1
	.value	0x101
	.long	0x2dd
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x38
	.string	"any_change"
	.byte	0x1
	.value	0x102
	.long	0x2dd
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x39
	.long	0x8ca5
	.byte	0x1
	.string	"original_type"
	.byte	0x1
	.value	0x13d
	.byte	0x1
	.long	0x1e6
	.long	.LFB22
	.long	.LFE22
	.long	.LLST7
	.uleb128 0x3a
	.string	"t"
	.byte	0x1
	.value	0x13c
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x34
	.long	.LBB4
	.long	.LBE4
	.uleb128 0x38
	.string	"x"
	.byte	0x1
	.value	0x140
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.byte	0x0
	.uleb128 0x39
	.long	0x8dc2
	.byte	0x1
	.string	"type_after_usual_arithmetic_conversions"
	.byte	0x1
	.value	0x153
	.byte	0x1
	.long	0x1e6
	.long	.LFB23
	.long	.LFE23
	.long	.LLST8
	.uleb128 0x3a
	.string	"t1"
	.byte	0x1
	.value	0x151
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3a
	.string	"t2"
	.byte	0x1
	.value	0x152
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x3b
	.long	.LASF58
	.byte	0x1
	.value	0x154
	.long	0xac7
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x38
	.string	"code2"
	.byte	0x1
	.value	0x155
	.long	0xac7
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3b
	.long	.LASF22
	.byte	0x1
	.value	0x156
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3c
	.long	0x8d7b
	.long	.LBB5
	.long	.LBE5
	.uleb128 0x38
	.string	"subtype1"
	.byte	0x1
	.value	0x16c
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x38
	.string	"subtype2"
	.byte	0x1
	.value	0x16d
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x38
	.string	"subtype"
	.byte	0x1
	.value	0x16e
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x3c
	.long	0x8d96
	.long	.LBB6
	.long	.LBE6
	.uleb128 0x38
	.string	"t"
	.byte	0x1
	.value	0x1ac
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x3c
	.long	0x8db1
	.long	.LBB7
	.long	.LBE7
	.uleb128 0x38
	.string	"t"
	.byte	0x1
	.value	0x1ba
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x3d
	.long	.LASF59
	.long	0xc19c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.16672
	.byte	0x0
	.uleb128 0x39
	.long	0x8eb3
	.byte	0x1
	.string	"composite_pointer_type"
	.byte	0x1
	.value	0x1e7
	.byte	0x1
	.long	0x1e6
	.long	.LFB24
	.long	.LFE24
	.long	.LLST9
	.uleb128 0x3a
	.string	"t1"
	.byte	0x1
	.value	0x1e2
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3a
	.string	"t2"
	.byte	0x1
	.value	0x1e3
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x3a
	.string	"arg1"
	.byte	0x1
	.value	0x1e4
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x3a
	.string	"arg2"
	.byte	0x1
	.value	0x1e5
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x3e
	.long	.LASF53
	.byte	0x1
	.value	0x1e6
	.long	0x2ca
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x3b
	.long	.LASF60
	.byte	0x1
	.value	0x1e8
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3b
	.long	.LASF22
	.byte	0x1
	.value	0x1e9
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3c
	.long	0x8e77
	.long	.LBB8
	.long	.LBE8
	.uleb128 0x38
	.string	"t"
	.byte	0x1
	.value	0x20a
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x34
	.long	.LBB9
	.long	.LBE9
	.uleb128 0x38
	.string	"full1"
	.byte	0x1
	.value	0x21d
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x38
	.string	"full2"
	.byte	0x1
	.value	0x21e
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x38
	.string	"val"
	.byte	0x1
	.value	0x220
	.long	0x2dd
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x39
	.long	0x9035
	.byte	0x1
	.string	"merge_types"
	.byte	0x1
	.value	0x23b
	.byte	0x1
	.long	0x1e6
	.long	.LFB25
	.long	.LFE25
	.long	.LLST10
	.uleb128 0x3a
	.string	"t1"
	.byte	0x1
	.value	0x23a
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3a
	.string	"t2"
	.byte	0x1
	.value	0x23a
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x3b
	.long	.LASF58
	.byte	0x1
	.value	0x23c
	.long	0xac7
	.byte	0x3
	.byte	0x75
	.sleb128 -76
	.uleb128 0x3f
	.string	"code2"
	.byte	0x1
	.value	0x23d
	.long	0xac7
	.uleb128 0x3b
	.long	.LASF22
	.byte	0x1
	.value	0x23e
	.long	0x1e6
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x3c
	.long	0x8f55
	.long	.LBB10
	.long	.LBE10
	.uleb128 0x38
	.string	"target"
	.byte	0x1
	.value	0x25f
	.long	0x1e6
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x38
	.string	"quals"
	.byte	0x1
	.value	0x260
	.long	0x2dd
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.byte	0x0
	.uleb128 0x3c
	.long	0x8f84
	.long	.LBB11
	.long	.LBE11
	.uleb128 0x3b
	.long	.LASF42
	.byte	0x1
	.value	0x271
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x38
	.string	"target"
	.byte	0x1
	.value	0x272
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.byte	0x0
	.uleb128 0x3c
	.long	0x8fa1
	.long	.LBB12
	.long	.LBE12
	.uleb128 0x38
	.string	"elt"
	.byte	0x1
	.value	0x279
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.byte	0x0
	.uleb128 0x3c
	.long	0x8ffb
	.long	.LBB13
	.long	.LBE13
	.uleb128 0x3b
	.long	.LASF61
	.byte	0x1
	.value	0x289
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x38
	.string	"p1"
	.byte	0x1
	.value	0x28a
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x38
	.string	"p2"
	.byte	0x1
	.value	0x28b
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3b
	.long	.LASF62
	.byte	0x1
	.value	0x28c
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x38
	.string	"raises"
	.byte	0x1
	.value	0x28c
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x34
	.long	.LBB14
	.long	.LBE14
	.uleb128 0x3b
	.long	.LASF63
	.byte	0x1
	.value	0x2ae
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x38
	.string	"raises"
	.byte	0x1
	.value	0x2af
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x38
	.string	"t3"
	.byte	0x1
	.value	0x2b0
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x39
	.long	0x90a8
	.byte	0x1
	.string	"common_type"
	.byte	0x1
	.value	0x2cf
	.byte	0x1
	.long	0x1e6
	.long	.LFB26
	.long	.LFE26
	.long	.LLST11
	.uleb128 0x3a
	.string	"t1"
	.byte	0x1
	.value	0x2ce
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3a
	.string	"t2"
	.byte	0x1
	.value	0x2ce
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x3b
	.long	.LASF58
	.byte	0x1
	.value	0x2d0
	.long	0xac7
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x38
	.string	"code2"
	.byte	0x1
	.value	0x2d1
	.long	0xac7
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x3d
	.long	.LASF59
	.long	0xc197
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.17146
	.byte	0x0
	.uleb128 0x40
	.long	0x90ff
	.string	"comp_except_types"
	.byte	0x1
	.value	0x2fd
	.byte	0x1
	.long	0x2dd
	.long	.LFB27
	.long	.LFE27
	.long	.LLST12
	.uleb128 0x3a
	.string	"a"
	.byte	0x1
	.value	0x2fb
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3a
	.string	"b"
	.byte	0x1
	.value	0x2fb
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x3a
	.string	"exact"
	.byte	0x1
	.value	0x2fc
	.long	0x2dd
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.byte	0x0
	.uleb128 0x39
	.long	0x91ac
	.byte	0x1
	.string	"comp_except_specs"
	.byte	0x1
	.value	0x322
	.byte	0x1
	.long	0x2dd
	.long	.LFB28
	.long	.LFE28
	.long	.LLST13
	.uleb128 0x3a
	.string	"t1"
	.byte	0x1
	.value	0x320
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3a
	.string	"t2"
	.byte	0x1
	.value	0x320
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x3a
	.string	"exact"
	.byte	0x1
	.value	0x321
	.long	0x2dd
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x38
	.string	"probe"
	.byte	0x1
	.value	0x323
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x3b
	.long	.LASF42
	.byte	0x1
	.value	0x324
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3b
	.long	.LASF15
	.byte	0x1
	.value	0x325
	.long	0x2dd
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x34
	.long	.LBB15
	.long	.LBE15
	.uleb128 0x38
	.string	"a"
	.byte	0x1
	.value	0x33b
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x38
	.string	"b"
	.byte	0x1
	.value	0x33c
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x40
	.long	0x9230
	.string	"comp_array_types"
	.byte	0x1
	.value	0x354
	.byte	0x1
	.long	0x2dd
	.long	.LFB29
	.long	.LFE29
	.long	.LLST14
	.uleb128 0x3a
	.string	"cmp"
	.byte	0x1
	.value	0x351
	.long	0x924a
	.byte	0x2
	.byte	0x75
	.sleb128 8
	.uleb128 0x3a
	.string	"t1"
	.byte	0x1
	.value	0x352
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x3a
	.string	"t2"
	.byte	0x1
	.value	0x352
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x3a
	.string	"strict"
	.byte	0x1
	.value	0x353
	.long	0x2dd
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x38
	.string	"d1"
	.byte	0x1
	.value	0x355
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x38
	.string	"d2"
	.byte	0x1
	.value	0x356
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x1d
	.long	0x924a
	.byte	0x1
	.long	0x2dd
	.uleb128 0x1e
	.long	0x1e6
	.uleb128 0x1e
	.long	0x1e6
	.uleb128 0x1e
	.long	0x2dd
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x9230
	.uleb128 0x39
	.long	0x92fe
	.byte	0x1
	.string	"comptypes"
	.byte	0x1
	.value	0x386
	.byte	0x1
	.long	0x2dd
	.long	.LFB30
	.long	.LFE30
	.long	.LLST15
	.uleb128 0x3a
	.string	"t1"
	.byte	0x1
	.value	0x383
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3a
	.string	"t2"
	.byte	0x1
	.value	0x384
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x3a
	.string	"strict"
	.byte	0x1
	.value	0x385
	.long	0x2dd
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x38
	.string	"attrval"
	.byte	0x1
	.value	0x387
	.long	0x2dd
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x38
	.string	"val"
	.byte	0x1
	.value	0x387
	.long	0x2dd
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x38
	.string	"orig_strict"
	.byte	0x1
	.value	0x388
	.long	0x2dd
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x41
	.string	"look_hard"
	.byte	0x1
	.value	0x404
	.long	.L513
	.uleb128 0x3d
	.long	.LASF59
	.long	0xc182
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.17359
	.byte	0x0
	.uleb128 0x40
	.long	0x9369
	.string	"comp_cv_target_types"
	.byte	0x1
	.value	0x435
	.byte	0x1
	.long	0x2dd
	.long	.LFB31
	.long	.LFE31
	.long	.LLST16
	.uleb128 0x3a
	.string	"ttl"
	.byte	0x1
	.value	0x433
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3a
	.string	"ttr"
	.byte	0x1
	.value	0x433
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x3a
	.string	"nptrs"
	.byte	0x1
	.value	0x434
	.long	0x2dd
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x38
	.string	"t"
	.byte	0x1
	.value	0x436
	.long	0x2dd
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x39
	.long	0x9483
	.byte	0x1
	.string	"comp_target_types"
	.byte	0x1
	.value	0x458
	.byte	0x1
	.long	0x2dd
	.long	.LFB32
	.long	.LFE32
	.long	.LLST17
	.uleb128 0x3a
	.string	"ttl"
	.byte	0x1
	.value	0x456
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3a
	.string	"ttr"
	.byte	0x1
	.value	0x456
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x3a
	.string	"nptrs"
	.byte	0x1
	.value	0x457
	.long	0x2dd
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x3c
	.long	0x93e4
	.long	.LBB16
	.long	.LBE16
	.uleb128 0x38
	.string	"is_ptr"
	.byte	0x1
	.value	0x469
	.long	0x2dd
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.byte	0x0
	.uleb128 0x3c
	.long	0x9450
	.long	.LBB17
	.long	.LBE17
	.uleb128 0x38
	.string	"argsl"
	.byte	0x1
	.value	0x494
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x38
	.string	"argsr"
	.byte	0x1
	.value	0x494
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x38
	.string	"saw_contra"
	.byte	0x1
	.value	0x495
	.long	0x2dd
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x34
	.long	.LBB18
	.long	.LBE18
	.uleb128 0x38
	.string	"tl"
	.byte	0x1
	.value	0x4ad
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x38
	.string	"tr"
	.byte	0x1
	.value	0x4ae
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.uleb128 0x34
	.long	.LBB19
	.long	.LBE19
	.uleb128 0x3b
	.long	.LASF42
	.byte	0x1
	.value	0x4c9
	.long	0x2dd
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x34
	.long	.LBB20
	.long	.LBE20
	.uleb128 0x38
	.string	"tmp"
	.byte	0x1
	.value	0x4d4
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x39
	.long	0x94d4
	.byte	0x1
	.string	"at_least_as_qualified_p"
	.byte	0x1
	.value	0x503
	.byte	0x1
	.long	0x2dd
	.long	.LFB33
	.long	.LFE33
	.long	.LLST18
	.uleb128 0x3e
	.long	.LASF64
	.byte	0x1
	.value	0x501
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3e
	.long	.LASF65
	.byte	0x1
	.value	0x502
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x39
	.long	0x951e
	.byte	0x1
	.string	"more_qualified_p"
	.byte	0x1
	.value	0x50f
	.byte	0x1
	.long	0x2dd
	.long	.LFB34
	.long	.LFE34
	.long	.LLST19
	.uleb128 0x3e
	.long	.LASF64
	.byte	0x1
	.value	0x50d
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3e
	.long	.LASF65
	.byte	0x1
	.value	0x50e
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x39
	.long	0x956d
	.byte	0x1
	.string	"comp_cv_qualification"
	.byte	0x1
	.value	0x51b
	.byte	0x1
	.long	0x2dd
	.long	.LFB35
	.long	.LFE35
	.long	.LLST20
	.uleb128 0x3e
	.long	.LASF64
	.byte	0x1
	.value	0x519
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3e
	.long	.LASF65
	.byte	0x1
	.value	0x51a
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x39
	.long	0x95bd
	.byte	0x1
	.string	"comp_cv_qual_signature"
	.byte	0x1
	.value	0x530
	.byte	0x1
	.long	0x2dd
	.long	.LFB36
	.long	.LFE36
	.long	.LLST21
	.uleb128 0x3e
	.long	.LASF64
	.byte	0x1
	.value	0x52e
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3e
	.long	.LASF65
	.byte	0x1
	.value	0x52f
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x40
	.long	0x967b
	.string	"common_base_type"
	.byte	0x1
	.value	0x540
	.byte	0x1
	.long	0x1e6
	.long	.LFB37
	.long	.LFE37
	.long	.LLST22
	.uleb128 0x3a
	.string	"tt1"
	.byte	0x1
	.value	0x53f
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3a
	.string	"tt2"
	.byte	0x1
	.value	0x53f
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x38
	.string	"best"
	.byte	0x1
	.value	0x541
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x38
	.string	"i"
	.byte	0x1
	.value	0x542
	.long	0x2dd
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x3c
	.long	0x9650
	.long	.LBB21
	.long	.LBE21
	.uleb128 0x3b
	.long	.LASF63
	.byte	0x1
	.value	0x54e
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x38
	.string	"trial"
	.byte	0x1
	.value	0x54f
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x34
	.long	.LBB22
	.long	.LBE22
	.uleb128 0x3b
	.long	.LASF63
	.byte	0x1
	.value	0x55e
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x38
	.string	"trial"
	.byte	0x1
	.value	0x55f
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x39
	.long	0x96e0
	.byte	0x1
	.string	"compparms"
	.byte	0x1
	.value	0x579
	.byte	0x1
	.long	0x2dd
	.long	.LFB38
	.long	.LFE38
	.long	.LLST23
	.uleb128 0x3a
	.string	"parms1"
	.byte	0x1
	.value	0x578
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3a
	.string	"parms2"
	.byte	0x1
	.value	0x578
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x38
	.string	"t1"
	.byte	0x1
	.value	0x57a
	.long	0x1e6
	.byte	0x2
	.byte	0x75
	.sleb128 -12
	.uleb128 0x38
	.string	"t2"
	.byte	0x1
	.value	0x57a
	.long	0x1e6
	.byte	0x2
	.byte	0x75
	.sleb128 -8
	.byte	0x0
	.uleb128 0x40
	.long	0x9791
	.string	"comp_target_parms"
	.byte	0x1
	.value	0x59b
	.byte	0x1
	.long	0x2dd
	.long	.LFB39
	.long	.LFE39
	.long	.LLST24
	.uleb128 0x3a
	.string	"parms1"
	.byte	0x1
	.value	0x59a
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3a
	.string	"parms2"
	.byte	0x1
	.value	0x59a
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x38
	.string	"t1"
	.byte	0x1
	.value	0x59c
	.long	0x1e6
	.byte	0x2
	.byte	0x75
	.sleb128 -28
	.uleb128 0x38
	.string	"t2"
	.byte	0x1
	.value	0x59c
	.long	0x1e6
	.byte	0x2
	.byte	0x75
	.sleb128 -24
	.uleb128 0x38
	.string	"warn_contravariance"
	.byte	0x1
	.value	0x59d
	.long	0x2dd
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x34
	.long	.LBB23
	.long	.LBE23
	.uleb128 0x38
	.string	"p1"
	.byte	0x1
	.value	0x5ae
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x38
	.string	"p2"
	.byte	0x1
	.value	0x5ae
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x39
	.long	0x983f
	.byte	0x1
	.string	"cxx_sizeof_or_alignof_type"
	.byte	0x1
	.value	0x5e1
	.byte	0x1
	.long	0x1e6
	.long	.LFB40
	.long	.LFE40
	.long	.LLST25
	.uleb128 0x3e
	.long	.LASF3
	.byte	0x1
	.value	0x5de
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3a
	.string	"op"
	.byte	0x1
	.value	0x5df
	.long	0xac7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x3a
	.string	"complain"
	.byte	0x1
	.value	0x5e0
	.long	0x2dd
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x38
	.string	"type_code"
	.byte	0x1
	.value	0x5e2
	.long	0xac7
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3b
	.long	.LASF18
	.byte	0x1
	.value	0x5e3
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x38
	.string	"op_name"
	.byte	0x1
	.value	0x5e4
	.long	0x2ca
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x3d
	.long	.LASF59
	.long	0xc16d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.18196
	.byte	0x0
	.uleb128 0x39
	.long	0x9873
	.byte	0x1
	.string	"expr_sizeof"
	.byte	0x1
	.value	0x605
	.byte	0x1
	.long	0x1e6
	.long	.LFB41
	.long	.LFE41
	.long	.LLST26
	.uleb128 0x3a
	.string	"e"
	.byte	0x1
	.value	0x604
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x39
	.long	0x9944
	.byte	0x1
	.string	"decay_conversion"
	.byte	0x1
	.value	0x62c
	.byte	0x1
	.long	0x1e6
	.long	.LFB42
	.long	.LFE42
	.long	.LLST27
	.uleb128 0x3a
	.string	"exp"
	.byte	0x1
	.value	0x62b
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3b
	.long	.LASF3
	.byte	0x1
	.value	0x62d
	.long	0x1e6
	.byte	0x2
	.byte	0x75
	.sleb128 -32
	.uleb128 0x3b
	.long	.LASF0
	.byte	0x1
	.value	0x62e
	.long	0xac7
	.byte	0x2
	.byte	0x75
	.sleb128 -28
	.uleb128 0x3c
	.long	0x9933
	.long	.LBB24
	.long	.LBE24
	.uleb128 0x38
	.string	"adr"
	.byte	0x1
	.value	0x661
	.long	0x1e6
	.byte	0x2
	.byte	0x75
	.sleb128 -24
	.uleb128 0x38
	.string	"ptrtype"
	.byte	0x1
	.value	0x662
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3c
	.long	0x9919
	.long	.LBB25
	.long	.LBE25
	.uleb128 0x38
	.string	"inner"
	.byte	0x1
	.value	0x668
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x34
	.long	.LBB26
	.long	.LBE26
	.uleb128 0x38
	.string	"op1"
	.byte	0x1
	.value	0x676
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x3d
	.long	.LASF59
	.long	0xc158
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.18278
	.byte	0x0
	.uleb128 0x39
	.long	0x99b6
	.byte	0x1
	.string	"default_conversion"
	.byte	0x1
	.value	0x6a2
	.byte	0x1
	.long	0x1e6
	.long	.LFB43
	.long	.LFE43
	.long	.LLST28
	.uleb128 0x3a
	.string	"exp"
	.byte	0x1
	.value	0x6a1
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3b
	.long	.LASF3
	.byte	0x1
	.value	0x6a3
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3b
	.long	.LASF0
	.byte	0x1
	.value	0x6a4
	.long	0xac7
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x34
	.long	.LBB27
	.long	.LBE27
	.uleb128 0x38
	.string	"t"
	.byte	0x1
	.value	0x6ad
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x39
	.long	0x99f2
	.byte	0x1
	.string	"inline_conversion"
	.byte	0x1
	.value	0x6bb
	.byte	0x1
	.long	0x1e6
	.long	.LFB44
	.long	.LFE44
	.long	.LLST29
	.uleb128 0x3a
	.string	"exp"
	.byte	0x1
	.value	0x6ba
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x39
	.long	0x9a59
	.byte	0x1
	.string	"string_conv_p"
	.byte	0x1
	.value	0x6c9
	.byte	0x1
	.long	0x2dd
	.long	.LFB45
	.long	.LFE45
	.long	.LLST30
	.uleb128 0x3a
	.string	"totype"
	.byte	0x1
	.value	0x6c7
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3a
	.string	"exp"
	.byte	0x1
	.value	0x6c7
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x3a
	.string	"warn"
	.byte	0x1
	.value	0x6c8
	.long	0x2dd
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x38
	.string	"t"
	.byte	0x1
	.value	0x6ca
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x40
	.long	0x9aac
	.string	"rationalize_conditional_expr"
	.byte	0x1
	.value	0x6f9
	.byte	0x1
	.long	0x1e6
	.long	.LFB46
	.long	.LFE46
	.long	.LLST31
	.uleb128 0x3e
	.long	.LASF0
	.byte	0x1
	.value	0x6f7
	.long	0xac7
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3a
	.string	"t"
	.byte	0x1
	.value	0x6f8
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x40
	.long	0x9b23
	.string	"lookup_anon_field"
	.byte	0x1
	.value	0x716
	.byte	0x1
	.long	0x1e6
	.long	.LFB47
	.long	.LFE47
	.long	.LLST32
	.uleb128 0x3a
	.string	"t"
	.byte	0x1
	.value	0x715
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3e
	.long	.LASF3
	.byte	0x1
	.value	0x715
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x38
	.string	"field"
	.byte	0x1
	.value	0x717
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x34
	.long	.LBB28
	.long	.LBE28
	.uleb128 0x38
	.string	"subfield"
	.byte	0x1
	.value	0x72b
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.byte	0x0
	.uleb128 0x39
	.long	0x9cac
	.byte	0x1
	.string	"build_class_member_access_expr"
	.byte	0x1
	.value	0x742
	.byte	0x1
	.long	0x1e6
	.long	.LFB48
	.long	.LFE48
	.long	.LLST33
	.uleb128 0x3a
	.string	"object"
	.byte	0x1
	.value	0x740
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3e
	.long	.LASF66
	.byte	0x1
	.value	0x740
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x3e
	.long	.LASF67
	.byte	0x1
	.value	0x741
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x3a
	.string	"preserve_reference"
	.byte	0x1
	.value	0x741
	.long	0x535f
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x3b
	.long	.LASF68
	.byte	0x1
	.value	0x743
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x38
	.string	"member_scope"
	.byte	0x1
	.value	0x744
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x3b
	.long	.LASF36
	.byte	0x1
	.value	0x745
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x3c
	.long	0x9c78
	.long	.LBB29
	.long	.LBE29
	.uleb128 0x38
	.string	"null_object_p"
	.byte	0x1
	.value	0x796
	.long	0x535f
	.byte	0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x3b
	.long	.LASF57
	.byte	0x1
	.value	0x797
	.long	0x2dd
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3b
	.long	.LASF69
	.byte	0x1
	.value	0x798
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3c
	.long	0x9c52
	.long	.LBB30
	.long	.LBE30
	.uleb128 0x3b
	.long	.LASF27
	.byte	0x1
	.value	0x7a1
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x38
	.string	"kind"
	.byte	0x1
	.value	0x7a2
	.long	0x7a07
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.byte	0x0
	.uleb128 0x34
	.long	.LBB31
	.long	.LBE31
	.uleb128 0x38
	.string	"anonymous_union"
	.byte	0x1
	.value	0x7d6
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.uleb128 0x3c
	.long	0x9c9b
	.long	.LBB32
	.long	.LBE32
	.uleb128 0x38
	.string	"functions"
	.byte	0x1
	.value	0x7fd
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x3d
	.long	.LASF59
	.long	0xc153
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.18581
	.byte	0x0
	.uleb128 0x39
	.long	0x9dc3
	.byte	0x1
	.string	"finish_class_member_access_expr"
	.byte	0x1
	.value	0x836
	.byte	0x1
	.long	0x1e6
	.long	.LFB49
	.long	.LFE49
	.long	.LLST34
	.uleb128 0x3a
	.string	"object"
	.byte	0x1
	.value	0x835
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3e
	.long	.LASF26
	.byte	0x1
	.value	0x835
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x3b
	.long	.LASF68
	.byte	0x1
	.value	0x837
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3b
	.long	.LASF66
	.byte	0x1
	.value	0x838
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3b
	.long	.LASF67
	.byte	0x1
	.value	0x839
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x3c
	.long	0x9db2
	.long	.LBB33
	.long	.LBE33
	.uleb128 0x38
	.string	"is_template_id"
	.byte	0x1
	.value	0x862
	.long	0x535f
	.byte	0x2
	.byte	0x91
	.sleb128 -13
	.uleb128 0x38
	.string	"template_args"
	.byte	0x1
	.value	0x863
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3c
	.long	0x9d93
	.long	.LBB34
	.long	.LBE34
	.uleb128 0x38
	.string	"scope"
	.byte	0x1
	.value	0x86e
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x34
	.long	.LBB35
	.long	.LBE35
	.uleb128 0x38
	.string	"template"
	.byte	0x1
	.value	0x8bf
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x3d
	.long	.LASF59
	.long	0xc13e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.18853
	.byte	0x0
	.uleb128 0x39
	.long	0x9e66
	.byte	0x1
	.string	"build_ptrmemfunc_access_expr"
	.byte	0x1
	.value	0x8db
	.byte	0x1
	.long	0x1e6
	.long	.LFB50
	.long	.LFE50
	.long	.LLST35
	.uleb128 0x3e
	.long	.LASF49
	.byte	0x1
	.value	0x8da
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3a
	.string	"member_name"
	.byte	0x1
	.value	0x8da
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x38
	.string	"ptrmem_type"
	.byte	0x1
	.value	0x8dc
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3b
	.long	.LASF66
	.byte	0x1
	.value	0x8dd
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3b
	.long	.LASF69
	.byte	0x1
	.value	0x8de
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x3d
	.long	.LASF59
	.long	0xc139
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.19005
	.byte	0x0
	.uleb128 0x39
	.long	0x9ec3
	.byte	0x1
	.string	"build_x_indirect_ref"
	.byte	0x1
	.value	0x8f8
	.byte	0x1
	.long	0x1e6
	.long	.LFB51
	.long	.LFE51
	.long	.LLST36
	.uleb128 0x3a
	.string	"ptr"
	.byte	0x1
	.value	0x8f6
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3e
	.long	.LASF70
	.byte	0x1
	.value	0x8f7
	.long	0x2ca
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x3b
	.long	.LASF62
	.byte	0x1
	.value	0x8f9
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x39
	.long	0x9f5d
	.byte	0x1
	.string	"build_indirect_ref"
	.byte	0x1
	.value	0x909
	.byte	0x1
	.long	0x1e6
	.long	.LFB52
	.long	.LFE52
	.long	.LLST37
	.uleb128 0x3a
	.string	"ptr"
	.byte	0x1
	.value	0x907
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3e
	.long	.LASF70
	.byte	0x1
	.value	0x908
	.long	0x2ca
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x3b
	.long	.LASF16
	.byte	0x1
	.value	0x90a
	.long	0x1e6
	.byte	0x2
	.byte	0x75
	.sleb128 -28
	.uleb128 0x3b
	.long	.LASF3
	.byte	0x1
	.value	0x90a
	.long	0x1e6
	.byte	0x2
	.byte	0x75
	.sleb128 -24
	.uleb128 0x34
	.long	.LBB36
	.long	.LBE36
	.uleb128 0x38
	.string	"t"
	.byte	0x1
	.value	0x920
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x34
	.long	.LBB37
	.long	.LBE37
	.uleb128 0x38
	.string	"ref"
	.byte	0x1
	.value	0x931
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x39
	.long	0xa04b
	.byte	0x1
	.string	"build_array_ref"
	.byte	0x1
	.value	0x95c
	.byte	0x1
	.long	0x1e6
	.long	.LFB53
	.long	.LFE53
	.long	.LLST38
	.uleb128 0x3a
	.string	"array"
	.byte	0x1
	.value	0x95b
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3a
	.string	"idx"
	.byte	0x1
	.value	0x95b
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x3c
	.long	0x9fc4
	.long	.LBB38
	.long	.LBE38
	.uleb128 0x3b
	.long	.LASF18
	.byte	0x1
	.value	0x96d
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.byte	0x0
	.uleb128 0x3c
	.long	0xa009
	.long	.LBB39
	.long	.LBE39
	.uleb128 0x3b
	.long	.LASF62
	.byte	0x1
	.value	0x97f
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3b
	.long	.LASF3
	.byte	0x1
	.value	0x97f
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x34
	.long	.LBB40
	.long	.LBE40
	.uleb128 0x38
	.string	"foo"
	.byte	0x1
	.value	0x9b5
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.byte	0x0
	.uleb128 0x34
	.long	.LBB41
	.long	.LBE41
	.uleb128 0x38
	.string	"ar"
	.byte	0x1
	.value	0x9ca
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x38
	.string	"ind"
	.byte	0x1
	.value	0x9cb
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x34
	.long	.LBB42
	.long	.LBE42
	.uleb128 0x38
	.string	"temp"
	.byte	0x1
	.value	0x9d0
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x39
	.long	0xa17e
	.byte	0x1
	.string	"get_member_function_from_ptrfunc"
	.byte	0x1
	.value	0x9f6
	.byte	0x1
	.long	0x1e6
	.long	.LFB54
	.long	.LFE54
	.long	.LLST39
	.uleb128 0x3a
	.string	"instance_ptrptr"
	.byte	0x1
	.value	0x9f4
	.long	0x538c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3e
	.long	.LASF30
	.byte	0x1
	.value	0x9f5
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x3c
	.long	0xa16d
	.long	.LBB43
	.long	.LBE43
	.uleb128 0x38
	.string	"idx"
	.byte	0x1
	.value	0x9fc
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x3b
	.long	.LASF50
	.byte	0x1
	.value	0x9fc
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x38
	.string	"e1"
	.byte	0x1
	.value	0x9fc
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x38
	.string	"e2"
	.byte	0x1
	.value	0x9fc
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x38
	.string	"e3"
	.byte	0x1
	.value	0x9fc
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x38
	.string	"vtbl"
	.byte	0x1
	.value	0x9fc
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x3b
	.long	.LASF63
	.byte	0x1
	.value	0x9fc
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x38
	.string	"fntype"
	.byte	0x1
	.value	0x9fd
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x38
	.string	"instance_ptr"
	.byte	0x1
	.value	0x9ff
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x38
	.string	"instance_save_expr"
	.byte	0x1
	.value	0xa00
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x3d
	.long	.LASF59
	.long	0xc124
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.19331
	.byte	0x0
	.uleb128 0x39
	.long	0xa275
	.byte	0x1
	.string	"build_function_call_real"
	.byte	0x1
	.value	0xa5e
	.byte	0x1
	.long	0x1e6
	.long	.LFB55
	.long	.LFE55
	.long	.LLST40
	.uleb128 0x3e
	.long	.LASF30
	.byte	0x1
	.value	0xa5c
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3a
	.string	"params"
	.byte	0x1
	.value	0xa5c
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x3a
	.string	"flags"
	.byte	0x1
	.value	0xa5d
	.long	0x2dd
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x38
	.string	"fntype"
	.byte	0x1
	.value	0xa5f
	.long	0x1e6
	.byte	0x2
	.byte	0x75
	.sleb128 -48
	.uleb128 0x3b
	.long	.LASF71
	.byte	0x1
	.value	0xa5f
	.long	0x1e6
	.byte	0x2
	.byte	0x75
	.sleb128 -44
	.uleb128 0x38
	.string	"coerced_params"
	.byte	0x1
	.value	0xa60
	.long	0x1e6
	.byte	0x2
	.byte	0x75
	.sleb128 -40
	.uleb128 0x3b
	.long	.LASF36
	.byte	0x1
	.value	0xa61
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x3b
	.long	.LASF26
	.byte	0x1
	.value	0xa62
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3b
	.long	.LASF37
	.byte	0x1
	.value	0xa62
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x38
	.string	"is_method"
	.byte	0x1
	.value	0xa63
	.long	0x2dd
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x38
	.string	"original"
	.byte	0x1
	.value	0xa64
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x39
	.long	0xa2c5
	.byte	0x1
	.string	"build_function_call"
	.byte	0x1
	.value	0xace
	.byte	0x1
	.long	0x1e6
	.long	.LFB56
	.long	.LFE56
	.long	.LLST41
	.uleb128 0x3e
	.long	.LASF30
	.byte	0x1
	.value	0xacd
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3a
	.string	"params"
	.byte	0x1
	.value	0xacd
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x39
	.long	0xa3f9
	.byte	0x1
	.string	"convert_arguments"
	.byte	0x1
	.value	0xae7
	.byte	0x1
	.long	0x1e6
	.long	.LFB57
	.long	.LFE57
	.long	.LLST42
	.uleb128 0x3a
	.string	"typelist"
	.byte	0x1
	.value	0xae5
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3a
	.string	"values"
	.byte	0x1
	.value	0xae5
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x3e
	.long	.LASF71
	.byte	0x1
	.value	0xae5
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x3a
	.string	"flags"
	.byte	0x1
	.value	0xae6
	.long	0x2dd
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x38
	.string	"typetail"
	.byte	0x1
	.value	0xae8
	.long	0x1e6
	.byte	0x2
	.byte	0x75
	.sleb128 -40
	.uleb128 0x38
	.string	"valtail"
	.byte	0x1
	.value	0xae8
	.long	0x1e6
	.byte	0x2
	.byte	0x75
	.sleb128 -36
	.uleb128 0x3b
	.long	.LASF36
	.byte	0x1
	.value	0xae9
	.long	0x1e6
	.byte	0x2
	.byte	0x75
	.sleb128 -32
	.uleb128 0x38
	.string	"called_thing"
	.byte	0x1
	.value	0xaea
	.long	0x2ca
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x38
	.string	"i"
	.byte	0x1
	.value	0xaeb
	.long	0x2dd
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3c
	.long	0xa3db
	.long	.LBB44
	.long	.LBE44
	.uleb128 0x3b
	.long	.LASF3
	.byte	0x1
	.value	0xb02
	.long	0x1e6
	.byte	0x2
	.byte	0x75
	.sleb128 -28
	.uleb128 0x38
	.string	"val"
	.byte	0x1
	.value	0xb03
	.long	0x1e6
	.byte	0x2
	.byte	0x75
	.sleb128 -24
	.uleb128 0x34
	.long	.LBB45
	.long	.LBE45
	.uleb128 0x38
	.string	"parmval"
	.byte	0x1
	.value	0xb31
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x34
	.long	.LBB46
	.long	.LBE46
	.uleb128 0x38
	.string	"parmval"
	.byte	0x1
	.value	0xb61
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x39
	.long	0xa455
	.byte	0x1
	.string	"build_x_binary_op"
	.byte	0x1
	.value	0xb88
	.byte	0x1
	.long	0x1e6
	.long	.LFB58
	.long	.LFE58
	.long	.LLST43
	.uleb128 0x3e
	.long	.LASF0
	.byte	0x1
	.value	0xb86
	.long	0xac7
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3a
	.string	"arg1"
	.byte	0x1
	.value	0xb87
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x3a
	.string	"arg2"
	.byte	0x1
	.value	0xb87
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.byte	0x0
	.uleb128 0x39
	.long	0xa915
	.byte	0x1
	.string	"build_binary_op"
	.byte	0x1
	.value	0xba6
	.byte	0x1
	.long	0x1e6
	.long	.LFB59
	.long	.LFE59
	.long	.LLST44
	.uleb128 0x3e
	.long	.LASF0
	.byte	0x1
	.value	0xba3
	.long	0xac7
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3a
	.string	"orig_op0"
	.byte	0x1
	.value	0xba4
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x3a
	.string	"orig_op1"
	.byte	0x1
	.value	0xba4
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x3a
	.string	"convert_p"
	.byte	0x1
	.value	0xba5
	.long	0x2dd
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x38
	.string	"op0"
	.byte	0x1
	.value	0xba7
	.long	0x1e6
	.byte	0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x38
	.string	"op1"
	.byte	0x1
	.value	0xba7
	.long	0x1e6
	.byte	0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0x38
	.string	"code0"
	.byte	0x1
	.value	0xba8
	.long	0xac7
	.byte	0x3
	.byte	0x75
	.sleb128 -204
	.uleb128 0x3b
	.long	.LASF58
	.byte	0x1
	.value	0xba8
	.long	0xac7
	.byte	0x3
	.byte	0x75
	.sleb128 -200
	.uleb128 0x38
	.string	"type0"
	.byte	0x1
	.value	0xba9
	.long	0x1e6
	.byte	0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x3b
	.long	.LASF64
	.byte	0x1
	.value	0xba9
	.long	0x1e6
	.byte	0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x3b
	.long	.LASF72
	.byte	0x1
	.value	0xbae
	.long	0xac7
	.byte	0x3
	.byte	0x75
	.sleb128 -196
	.uleb128 0x3b
	.long	.LASF60
	.byte	0x1
	.value	0xbb2
	.long	0x1e6
	.byte	0x3
	.byte	0x75
	.sleb128 -192
	.uleb128 0x38
	.string	"converted"
	.byte	0x1
	.value	0xbb7
	.long	0x2dd
	.byte	0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x38
	.string	"build_type"
	.byte	0x1
	.value	0xbbb
	.long	0x1e6
	.byte	0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x38
	.string	"final_type"
	.byte	0x1
	.value	0xbbf
	.long	0x1e6
	.byte	0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x38
	.string	"shorten"
	.byte	0x1
	.value	0xbc7
	.long	0x2dd
	.byte	0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x38
	.string	"short_compare"
	.byte	0x1
	.value	0xbcc
	.long	0x2dd
	.byte	0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x38
	.string	"short_shift"
	.byte	0x1
	.value	0xbd0
	.long	0x2dd
	.byte	0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x3b
	.long	.LASF1
	.byte	0x1
	.value	0xbd3
	.long	0x2dd
	.byte	0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x3c
	.long	0xa605
	.long	.LBB47
	.long	.LBE47
	.uleb128 0x38
	.string	"t"
	.byte	0x1
	.value	0xbf1
	.long	0x1e6
	.byte	0x3
	.byte	0x91
	.sleb128 -108
	.byte	0x0
	.uleb128 0x3c
	.long	0xa621
	.long	.LBB48
	.long	.LBE48
	.uleb128 0x38
	.string	"t"
	.byte	0x1
	.value	0xbfb
	.long	0x1e6
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.byte	0x0
	.uleb128 0x3c
	.long	0xa6a3
	.long	.LBB49
	.long	.LBE49
	.uleb128 0x38
	.string	"e"
	.byte	0x1
	.value	0xce1
	.long	0x1e6
	.byte	0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x38
	.string	"e1"
	.byte	0x1
	.value	0xce3
	.long	0x1e6
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x38
	.string	"e2"
	.byte	0x1
	.value	0xce4
	.long	0x1e6
	.byte	0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x38
	.string	"pfn0"
	.byte	0x1
	.value	0xce5
	.long	0x1e6
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x38
	.string	"pfn1"
	.byte	0x1
	.value	0xce6
	.long	0x1e6
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x38
	.string	"delta0"
	.byte	0x1
	.value	0xce7
	.long	0x1e6
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x38
	.string	"delta1"
	.byte	0x1
	.value	0xce8
	.long	0x1e6
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.byte	0x0
	.uleb128 0x3c
	.long	0xa8d5
	.long	.LBB50
	.long	.LBE50
	.uleb128 0x38
	.string	"none_complex"
	.byte	0x1
	.value	0xd4f
	.long	0x2dd
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x3c
	.long	0xa742
	.long	.LBB51
	.long	.LBE51
	.uleb128 0x38
	.string	"unsigned0"
	.byte	0x1
	.value	0xd61
	.long	0x2dd
	.byte	0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x38
	.string	"unsigned1"
	.byte	0x1
	.value	0xd61
	.long	0x2dd
	.byte	0x3
	.byte	0x91
	.sleb128 -156
	.uleb128 0x38
	.string	"arg0"
	.byte	0x1
	.value	0xd62
	.long	0x1e6
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x38
	.string	"arg1"
	.byte	0x1
	.value	0xd63
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x38
	.string	"uns"
	.byte	0x1
	.value	0xd65
	.long	0x2dd
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x3b
	.long	.LASF3
	.byte	0x1
	.value	0xd66
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.byte	0x0
	.uleb128 0x3c
	.long	0xa779
	.long	.LBB52
	.long	.LBE52
	.uleb128 0x38
	.string	"unsigned_arg"
	.byte	0x1
	.value	0xd9e
	.long	0x2dd
	.byte	0x3
	.byte	0x91
	.sleb128 -156
	.uleb128 0x38
	.string	"arg0"
	.byte	0x1
	.value	0xd9f
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.byte	0x0
	.uleb128 0x3c
	.long	0xa7e9
	.long	.LBB53
	.long	.LBE53
	.uleb128 0x38
	.string	"xop0"
	.byte	0x1
	.value	0xdca
	.long	0x1e6
	.byte	0x3
	.byte	0x91
	.sleb128 -156
	.uleb128 0x38
	.string	"xop1"
	.byte	0x1
	.value	0xdca
	.long	0x1e6
	.byte	0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x38
	.string	"xresult_type"
	.byte	0x1
	.value	0xdca
	.long	0x1e6
	.byte	0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x38
	.string	"xresultcode"
	.byte	0x1
	.value	0xdcb
	.long	0xac7
	.byte	0x3
	.byte	0x91
	.sleb128 -164
	.uleb128 0x38
	.string	"val"
	.byte	0x1
	.value	0xdcc
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.byte	0x0
	.uleb128 0x34
	.long	.LBB54
	.long	.LBE54
	.uleb128 0x38
	.string	"op0_signed"
	.byte	0x1
	.value	0xdd8
	.long	0x2dd
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x38
	.string	"op1_signed"
	.byte	0x1
	.value	0xdd9
	.long	0x2dd
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x38
	.string	"unsignedp0"
	.byte	0x1
	.value	0xddb
	.long	0x2dd
	.byte	0x3
	.byte	0x91
	.sleb128 -164
	.uleb128 0x38
	.string	"unsignedp1"
	.byte	0x1
	.value	0xddb
	.long	0x2dd
	.byte	0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x38
	.string	"primop0"
	.byte	0x1
	.value	0xddc
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x38
	.string	"primop1"
	.byte	0x1
	.value	0xddd
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x34
	.long	.LBB55
	.long	.LBE55
	.uleb128 0x38
	.string	"primop"
	.byte	0x1
	.value	0xe1d
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x38
	.string	"constant"
	.byte	0x1
	.value	0xe1e
	.long	0x47d
	.byte	0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x38
	.string	"mask"
	.byte	0x1
	.value	0xe1e
	.long	0x47d
	.byte	0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x3b
	.long	.LASF39
	.byte	0x1
	.value	0xe1f
	.long	0x2dd
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x38
	.string	"bits"
	.byte	0x1
	.value	0xe20
	.long	0x3b6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x3c
	.long	0xa904
	.long	.LBB56
	.long	.LBE56
	.uleb128 0x3b
	.long	.LASF36
	.byte	0x1
	.value	0xe71
	.long	0x1e6
	.byte	0x1
	.byte	0x56
	.uleb128 0x38
	.string	"folded"
	.byte	0x1
	.value	0xe72
	.long	0x1e6
	.byte	0x3
	.byte	0x75
	.sleb128 -188
	.byte	0x0
	.uleb128 0x3d
	.long	.LASF59
	.long	0xc10f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.19769
	.byte	0x0
	.uleb128 0x40
	.long	0xa985
	.string	"cp_pointer_int_sum"
	.byte	0x1
	.value	0xe84
	.byte	0x1
	.long	0x1e6
	.long	.LFB60
	.long	.LFE60
	.long	.LLST45
	.uleb128 0x3e
	.long	.LASF72
	.byte	0x1
	.value	0xe82
	.long	0xac7
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3a
	.string	"ptrop"
	.byte	0x1
	.value	0xe83
	.long	0x1e6
	.byte	0x1
	.byte	0x56
	.uleb128 0x3a
	.string	"intop"
	.byte	0x1
	.value	0xe83
	.long	0x1e6
	.byte	0x1
	.byte	0x57
	.uleb128 0x38
	.string	"res_type"
	.byte	0x1
	.value	0xe85
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x40
	.long	0xaa1e
	.string	"pointer_diff"
	.byte	0x1
	.value	0xe98
	.byte	0x1
	.long	0x1e6
	.long	.LFB61
	.long	.LFE61
	.long	.LLST46
	.uleb128 0x3a
	.string	"op0"
	.byte	0x1
	.value	0xe96
	.long	0x1e6
	.byte	0x2
	.byte	0x75
	.sleb128 8
	.uleb128 0x3a
	.string	"op1"
	.byte	0x1
	.value	0xe96
	.long	0x1e6
	.byte	0x2
	.byte	0x75
	.sleb128 12
	.uleb128 0x3a
	.string	"ptrtype"
	.byte	0x1
	.value	0xe97
	.long	0x1e6
	.byte	0x1
	.byte	0x52
	.uleb128 0x3b
	.long	.LASF36
	.byte	0x1
	.value	0xe99
	.long	0x1e6
	.byte	0x1
	.byte	0x56
	.uleb128 0x38
	.string	"folded"
	.byte	0x1
	.value	0xe99
	.long	0x1e6
	.byte	0x2
	.byte	0x75
	.sleb128 -28
	.uleb128 0x38
	.string	"restype"
	.byte	0x1
	.value	0xe9a
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3b
	.long	.LASF56
	.byte	0x1
	.value	0xe9b
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x39
	.long	0xaaa0
	.byte	0x1
	.string	"build_x_unary_op"
	.byte	0x1
	.value	0xed0
	.byte	0x1
	.long	0x1e6
	.long	.LFB62
	.long	.LFE62
	.long	.LLST47
	.uleb128 0x3e
	.long	.LASF0
	.byte	0x1
	.value	0xece
	.long	0xac7
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3a
	.string	"xarg"
	.byte	0x1
	.value	0xecf
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x38
	.string	"exp"
	.byte	0x1
	.value	0xed1
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3b
	.long	.LASF49
	.byte	0x1
	.value	0xed2
	.long	0x2dd
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x34
	.long	.LBB57
	.long	.LBE57
	.uleb128 0x3b
	.long	.LASF62
	.byte	0x1
	.value	0xee1
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x39
	.long	0xaaf2
	.byte	0x1
	.string	"cp_truthvalue_conversion"
	.byte	0x1
	.value	0xf1e
	.byte	0x1
	.long	0x1e6
	.long	.LFB63
	.long	.LFE63
	.long	.LLST48
	.uleb128 0x3e
	.long	.LASF31
	.byte	0x1
	.value	0xf1d
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3b
	.long	.LASF3
	.byte	0x1
	.value	0xf1f
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x39
	.long	0xab3e
	.byte	0x1
	.string	"condition_conversion"
	.byte	0x1
	.value	0xf2b
	.byte	0x1
	.long	0x1e6
	.long	.LFB64
	.long	.LFE64
	.long	.LLST49
	.uleb128 0x3e
	.long	.LASF31
	.byte	0x1
	.value	0xf2a
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x38
	.string	"t"
	.byte	0x1
	.value	0xf2c
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x39
	.long	0xab84
	.byte	0x1
	.string	"build_address"
	.byte	0x1
	.value	0xf3c
	.byte	0x1
	.long	0x1e6
	.long	.LFB65
	.long	.LFE65
	.long	.LLST50
	.uleb128 0x3a
	.string	"t"
	.byte	0x1
	.value	0xf3b
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x38
	.string	"addr"
	.byte	0x1
	.value	0xf3d
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x39
	.long	0xabd6
	.byte	0x1
	.string	"build_nop"
	.byte	0x1
	.value	0xf4f
	.byte	0x1
	.long	0x1e6
	.long	.LFB66
	.long	.LFE66
	.long	.LLST51
	.uleb128 0x3e
	.long	.LASF3
	.byte	0x1
	.value	0xf4e
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3e
	.long	.LASF31
	.byte	0x1
	.value	0xf4e
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x38
	.string	"nop"
	.byte	0x1
	.value	0xf50
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x39
	.long	0xadf0
	.byte	0x1
	.string	"build_unary_op"
	.byte	0x1
	.value	0xf6a
	.byte	0x1
	.long	0x1e6
	.long	.LFB67
	.long	.LFE67
	.long	.LLST52
	.uleb128 0x3e
	.long	.LASF0
	.byte	0x1
	.value	0xf67
	.long	0xac7
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3a
	.string	"xarg"
	.byte	0x1
	.value	0xf68
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x3a
	.string	"noconvert"
	.byte	0x1
	.value	0xf69
	.long	0x2dd
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x38
	.string	"arg"
	.byte	0x1
	.value	0xf6c
	.long	0x1e6
	.byte	0x3
	.byte	0x75
	.sleb128 -96
	.uleb128 0x38
	.string	"argtype"
	.byte	0x1
	.value	0xf6d
	.long	0x1e6
	.byte	0x3
	.byte	0x75
	.sleb128 -92
	.uleb128 0x38
	.string	"errstring"
	.byte	0x1
	.value	0xf6e
	.long	0x2ca
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x38
	.string	"val"
	.byte	0x1
	.value	0xf6f
	.long	0x1e6
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x3c
	.long	0xacad
	.long	.LBB58
	.long	.LBE58
	.uleb128 0x38
	.string	"real"
	.byte	0x1
	.value	0xfd4
	.long	0x1e6
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x38
	.string	"imag"
	.byte	0x1
	.value	0xfd4
	.long	0x1e6
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.byte	0x0
	.uleb128 0x3c
	.long	0xad5c
	.long	.LBB59
	.long	.LBE59
	.uleb128 0x38
	.string	"inc"
	.byte	0x1
	.value	0xff7
	.long	0x1e6
	.byte	0x3
	.byte	0x75
	.sleb128 -88
	.uleb128 0x3b
	.long	.LASF60
	.byte	0x1
	.value	0xff8
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x3c
	.long	0xad05
	.long	.LBB60
	.long	.LBE60
	.uleb128 0x38
	.string	"tmp"
	.byte	0x1
	.value	0x1007
	.long	0xac7
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x3b
	.long	.LASF3
	.byte	0x1
	.value	0x1008
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.byte	0x0
	.uleb128 0x34
	.long	.LBB61
	.long	.LBE61
	.uleb128 0x38
	.string	"incremented"
	.byte	0x1
	.value	0x1029
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x38
	.string	"modify"
	.byte	0x1
	.value	0x1029
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x3b
	.long	.LASF18
	.byte	0x1
	.value	0x1029
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x38
	.string	"compound"
	.byte	0x1
	.value	0x1029
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0x0
	.byte	0x0
	.uleb128 0x3c
	.long	0xad88
	.long	.LBB62
	.long	.LBE62
	.uleb128 0x3b
	.long	.LASF42
	.byte	0x1
	.value	0x10a9
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3b
	.long	.LASF26
	.byte	0x1
	.value	0x10aa
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x3c
	.long	0xaddf
	.long	.LBB63
	.long	.LBE63
	.uleb128 0x38
	.string	"addr"
	.byte	0x1
	.value	0x10e2
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x34
	.long	.LBB64
	.long	.LBE64
	.uleb128 0x38
	.string	"field"
	.byte	0x1
	.value	0x10f1
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3b
	.long	.LASF62
	.byte	0x1
	.value	0x10f2
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3b
	.long	.LASF27
	.byte	0x1
	.value	0x10f3
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x3d
	.long	.LASF59
	.long	0xc0fa
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.20852
	.byte	0x0
	.uleb128 0x39
	.long	0xaefa
	.byte	0x1
	.string	"unary_complex_lvalue"
	.byte	0x1
	.value	0x1121
	.byte	0x1
	.long	0x1e6
	.long	.LFB68
	.long	.LFE68
	.long	.LLST53
	.uleb128 0x3e
	.long	.LASF0
	.byte	0x1
	.value	0x111f
	.long	0xac7
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3a
	.string	"arg"
	.byte	0x1
	.value	0x1120
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x3c
	.long	0xae5a
	.long	.LBB65
	.long	.LBE65
	.uleb128 0x3b
	.long	.LASF73
	.byte	0x1
	.value	0x1125
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.byte	0x0
	.uleb128 0x3c
	.long	0xae7a
	.long	.LBB66
	.long	.LBE66
	.uleb128 0x38
	.string	"lvalue"
	.byte	0x1
	.value	0x1134
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0x0
	.uleb128 0x3c
	.long	0xae97
	.long	.LBB67
	.long	.LBE67
	.uleb128 0x3b
	.long	.LASF73
	.byte	0x1
	.value	0x1146
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.uleb128 0x3c
	.long	0xaecb
	.long	.LBB68
	.long	.LBE68
	.uleb128 0x38
	.string	"t"
	.byte	0x1
	.value	0x1153
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x34
	.long	.LBB69
	.long	.LBE69
	.uleb128 0x3b
	.long	.LASF3
	.byte	0x1
	.value	0x1167
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.uleb128 0x3c
	.long	0xaee9
	.long	.LBB70
	.long	.LBE70
	.uleb128 0x38
	.string	"targ"
	.byte	0x1
	.value	0x118b
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x3d
	.long	.LASF59
	.long	0xc0e5
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.21289
	.byte	0x0
	.uleb128 0x39
	.long	0xaf56
	.byte	0x1
	.string	"cxx_mark_addressable"
	.byte	0x1
	.value	0x11ab
	.byte	0x1
	.long	0x535f
	.long	.LFB69
	.long	.LFE69
	.long	.LLST54
	.uleb128 0x3a
	.string	"exp"
	.byte	0x1
	.value	0x11aa
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x38
	.string	"x"
	.byte	0x1
	.value	0x11ac
	.long	0x1e6
	.byte	0x2
	.byte	0x75
	.sleb128 -8
	.uleb128 0x3d
	.long	.LASF59
	.long	0xc0e0
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.21452
	.byte	0x0
	.uleb128 0x39
	.long	0xafb9
	.byte	0x1
	.string	"build_x_conditional_expr"
	.byte	0x1
	.value	0x11ed
	.byte	0x1
	.long	0x1e6
	.long	.LFB70
	.long	.LFE70
	.long	.LLST55
	.uleb128 0x3a
	.string	"ifexp"
	.byte	0x1
	.value	0x11ec
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3a
	.string	"op1"
	.byte	0x1
	.value	0x11ec
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x3a
	.string	"op2"
	.byte	0x1
	.value	0x11ec
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.byte	0x0
	.uleb128 0x39
	.long	0xb019
	.byte	0x1
	.string	"build_x_compound_expr"
	.byte	0x1
	.value	0x11fa
	.byte	0x1
	.long	0x1e6
	.long	.LFB71
	.long	.LFE71
	.long	.LLST56
	.uleb128 0x3a
	.string	"list"
	.byte	0x1
	.value	0x11f9
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x38
	.string	"rest"
	.byte	0x1
	.value	0x11fb
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3b
	.long	.LASF36
	.byte	0x1
	.value	0x11fc
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x39
	.long	0xb079
	.byte	0x1
	.string	"build_compound_expr"
	.byte	0x1
	.value	0x1226
	.byte	0x1
	.long	0x1e6
	.long	.LFB72
	.long	.LFE72
	.long	.LLST57
	.uleb128 0x3a
	.string	"list"
	.byte	0x1
	.value	0x1225
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x38
	.string	"rest"
	.byte	0x1
	.value	0x1227
	.long	0x1e6
	.byte	0x2
	.byte	0x75
	.sleb128 -24
	.uleb128 0x38
	.string	"first"
	.byte	0x1
	.value	0x1228
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x42
	.long	0xb0d9
	.string	"check_for_casting_away_constness"
	.byte	0x1
	.value	0x124c
	.byte	0x1
	.long	.LFB73
	.long	.LFE73
	.long	.LLST58
	.uleb128 0x3a
	.string	"src_type"
	.byte	0x1
	.value	0x124b
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3a
	.string	"dest_type"
	.byte	0x1
	.value	0x124b
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x39
	.long	0xb1d9
	.byte	0x1
	.string	"build_static_cast"
	.byte	0x1
	.value	0x1257
	.byte	0x1
	.long	0x1e6
	.long	.LFB74
	.long	.LFE74
	.long	.LLST59
	.uleb128 0x3e
	.long	.LASF3
	.byte	0x1
	.value	0x1256
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3e
	.long	.LASF31
	.byte	0x1
	.value	0x1256
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x3b
	.long	.LASF74
	.byte	0x1
	.value	0x1258
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x3b
	.long	.LASF36
	.byte	0x1
	.value	0x1259
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x3c
	.long	0xb15c
	.long	.LBB71
	.long	.LBE71
	.uleb128 0x38
	.string	"t"
	.byte	0x1
	.value	0x1263
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.byte	0x0
	.uleb128 0x3c
	.long	0xb179
	.long	.LBB72
	.long	.LBE72
	.uleb128 0x3b
	.long	.LASF42
	.byte	0x1
	.value	0x1290
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0x0
	.uleb128 0x3c
	.long	0xb196
	.long	.LBB73
	.long	.LBE73
	.uleb128 0x3b
	.long	.LASF42
	.byte	0x1
	.value	0x12ca
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.uleb128 0x34
	.long	.LBB74
	.long	.LBE74
	.uleb128 0x38
	.string	"c1"
	.byte	0x1
	.value	0x12d4
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x38
	.string	"c2"
	.byte	0x1
	.value	0x12d5
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x38
	.string	"t1"
	.byte	0x1
	.value	0x12d6
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x38
	.string	"t2"
	.byte	0x1
	.value	0x12d7
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x39
	.long	0xb24f
	.byte	0x1
	.string	"build_reinterpret_cast"
	.byte	0x1
	.value	0x1312
	.byte	0x1
	.long	0x1e6
	.long	.LFB75
	.long	.LFE75
	.long	.LLST60
	.uleb128 0x3e
	.long	.LASF3
	.byte	0x1
	.value	0x1311
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3e
	.long	.LASF31
	.byte	0x1
	.value	0x1311
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x3b
	.long	.LASF74
	.byte	0x1
	.value	0x1313
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x34
	.long	.LBB75
	.long	.LBE75
	.uleb128 0x38
	.string	"t"
	.byte	0x1
	.value	0x131d
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x39
	.long	0xb2bf
	.byte	0x1
	.string	"build_const_cast"
	.byte	0x1
	.value	0x136d
	.byte	0x1
	.long	0x1e6
	.long	.LFB76
	.long	.LFE76
	.long	.LLST61
	.uleb128 0x3e
	.long	.LASF3
	.byte	0x1
	.value	0x136c
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3e
	.long	.LASF31
	.byte	0x1
	.value	0x136c
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x3b
	.long	.LASF74
	.byte	0x1
	.value	0x136e
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x34
	.long	.LBB76
	.long	.LBE76
	.uleb128 0x38
	.string	"t"
	.byte	0x1
	.value	0x1378
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x39
	.long	0xb35c
	.byte	0x1
	.string	"build_c_cast"
	.byte	0x1
	.value	0x13b3
	.byte	0x1
	.long	0x1e6
	.long	.LFB77
	.long	.LFE77
	.long	.LLST62
	.uleb128 0x3e
	.long	.LASF3
	.byte	0x1
	.value	0x13b2
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3e
	.long	.LASF31
	.byte	0x1
	.value	0x13b2
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x3b
	.long	.LASF18
	.byte	0x1
	.value	0x13b4
	.long	0x1e6
	.byte	0x2
	.byte	0x75
	.sleb128 -24
	.uleb128 0x38
	.string	"otype"
	.byte	0x1
	.value	0x13b5
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3c
	.long	0xb33f
	.long	.LBB77
	.long	.LBE77
	.uleb128 0x38
	.string	"t"
	.byte	0x1
	.value	0x13bc
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x34
	.long	.LBB78
	.long	.LBE78
	.uleb128 0x38
	.string	"ovalue"
	.byte	0x1
	.value	0x142b
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x39
	.long	0xb4ec
	.byte	0x1
	.string	"build_modify_expr"
	.byte	0x1
	.value	0x145c
	.byte	0x1
	.long	0x1e6
	.long	.LFB78
	.long	.LFE78
	.long	.LLST63
	.uleb128 0x3a
	.string	"lhs"
	.byte	0x1
	.value	0x1459
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3e
	.long	.LASF75
	.byte	0x1
	.value	0x145a
	.long	0xac7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x3a
	.string	"rhs"
	.byte	0x1
	.value	0x145b
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x3b
	.long	.LASF36
	.byte	0x1
	.value	0x145d
	.long	0x1e6
	.byte	0x2
	.byte	0x75
	.sleb128 -60
	.uleb128 0x38
	.string	"newrhs"
	.byte	0x1
	.value	0x145e
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x38
	.string	"lhstype"
	.byte	0x1
	.value	0x145f
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x38
	.string	"olhstype"
	.byte	0x1
	.value	0x1460
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x38
	.string	"olhs"
	.byte	0x1
	.value	0x1461
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x3c
	.long	0xb43e
	.long	.LBB79
	.long	.LBE79
	.uleb128 0x38
	.string	"cond"
	.byte	0x1
	.value	0x148f
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x38
	.string	"preeval"
	.byte	0x1
	.value	0x1490
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.byte	0x0
	.uleb128 0x3c
	.long	0xb470
	.long	.LBB80
	.long	.LBE80
	.uleb128 0x38
	.string	"inner_lhs"
	.byte	0x1
	.value	0x150e
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3b
	.long	.LASF36
	.byte	0x1
	.value	0x150f
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.uleb128 0x3c
	.long	0xb494
	.long	.LBB81
	.long	.LBE81
	.uleb128 0x38
	.string	"from_array"
	.byte	0x1
	.value	0x1561
	.long	0x2dd
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x3c
	.long	0xb4db
	.long	.LBB82
	.long	.LBE82
	.uleb128 0x38
	.string	"lhs1"
	.byte	0x1
	.value	0x1596
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x38
	.string	"cond"
	.byte	0x1
	.value	0x1597
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x34
	.long	.LBB83
	.long	.LBE83
	.uleb128 0x3b
	.long	.LASF60
	.byte	0x1
	.value	0x15aa
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x3d
	.long	.LASF59
	.long	0xc0cb
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.22411
	.byte	0x0
	.uleb128 0x39
	.long	0xb580
	.byte	0x1
	.string	"build_x_modify_expr"
	.byte	0x1
	.value	0x15d6
	.byte	0x1
	.long	0x1e6
	.long	.LFB79
	.long	.LFE79
	.long	.LLST64
	.uleb128 0x3a
	.string	"lhs"
	.byte	0x1
	.value	0x15d3
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3e
	.long	.LASF75
	.byte	0x1
	.value	0x15d4
	.long	0xac7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x3a
	.string	"rhs"
	.byte	0x1
	.value	0x15d5
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x3c
	.long	0xb564
	.long	.LBB84
	.long	.LBE84
	.uleb128 0x3b
	.long	.LASF62
	.byte	0x1
	.value	0x15dd
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x34
	.long	.LBB85
	.long	.LBE85
	.uleb128 0x38
	.string	"opnd0"
	.byte	0x1
	.value	0x15e8
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x40
	.long	0xb621
	.string	"get_delta_difference"
	.byte	0x1
	.value	0x1602
	.byte	0x1
	.long	0x1e6
	.long	.LFB80
	.long	.LFE80
	.long	.LLST65
	.uleb128 0x3e
	.long	.LASF76
	.byte	0x1
	.value	0x1600
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3a
	.string	"to"
	.byte	0x1
	.value	0x1600
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x3a
	.string	"force"
	.byte	0x1
	.value	0x1601
	.long	0x2dd
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x3b
	.long	.LASF50
	.byte	0x1
	.value	0x1603
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3b
	.long	.LASF27
	.byte	0x1
	.value	0x1604
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x38
	.string	"virt_binfo"
	.byte	0x1
	.value	0x1605
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x38
	.string	"kind"
	.byte	0x1
	.value	0x1606
	.long	0x7a07
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x39
	.long	0xb6b4
	.byte	0x1
	.string	"build_ptrmemfunc1"
	.byte	0x1
	.value	0x1645
	.byte	0x1
	.long	0x1e6
	.long	.LFB81
	.long	.LFE81
	.long	.LLST66
	.uleb128 0x3e
	.long	.LASF3
	.byte	0x1
	.value	0x1644
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3e
	.long	.LASF50
	.byte	0x1
	.value	0x1644
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x3a
	.string	"pfn"
	.byte	0x1
	.value	0x1644
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x38
	.string	"u"
	.byte	0x1
	.value	0x1646
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x38
	.string	"delta_field"
	.byte	0x1
	.value	0x1647
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x38
	.string	"pfn_field"
	.byte	0x1
	.value	0x1648
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x39
	.long	0xb78e
	.byte	0x1
	.string	"build_ptrmemfunc"
	.byte	0x1
	.value	0x166d
	.byte	0x1
	.long	0x1e6
	.long	.LFB82
	.long	.LFE82
	.long	.LLST67
	.uleb128 0x3e
	.long	.LASF3
	.byte	0x1
	.value	0x166b
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3a
	.string	"pfn"
	.byte	0x1
	.value	0x166b
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x3a
	.string	"force"
	.byte	0x1
	.value	0x166c
	.long	0x2dd
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x38
	.string	"fn"
	.byte	0x1
	.value	0x166e
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x38
	.string	"pfn_type"
	.byte	0x1
	.value	0x166f
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x38
	.string	"to_type"
	.byte	0x1
	.value	0x1670
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3c
	.long	0xb77d
	.long	.LBB86
	.long	.LBE86
	.uleb128 0x3b
	.long	.LASF50
	.byte	0x1
	.value	0x167b
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x38
	.string	"npfn"
	.byte	0x1
	.value	0x167c
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x38
	.string	"n"
	.byte	0x1
	.value	0x167d
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x3d
	.long	.LASF59
	.long	0xc0c6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.22940
	.byte	0x0
	.uleb128 0x43
	.long	0xb871
	.byte	0x1
	.string	"expand_ptrmemfunc_cst"
	.byte	0x1
	.value	0x16c5
	.byte	0x1
	.long	.LFB83
	.long	.LFE83
	.long	.LLST68
	.uleb128 0x3a
	.string	"cst"
	.byte	0x1
	.value	0x16c2
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3e
	.long	.LASF50
	.byte	0x1
	.value	0x16c3
	.long	0x538c
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x3a
	.string	"pfn"
	.byte	0x1
	.value	0x16c4
	.long	0x538c
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x3b
	.long	.LASF3
	.byte	0x1
	.value	0x16c6
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x38
	.string	"fn"
	.byte	0x1
	.value	0x16c7
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x38
	.string	"ptr_class"
	.byte	0x1
	.value	0x16c8
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x38
	.string	"fn_class"
	.byte	0x1
	.value	0x16c8
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3c
	.long	0xb860
	.long	.LBB87
	.long	.LBE87
	.uleb128 0x38
	.string	"orig_class"
	.byte	0x1
	.value	0x16dc
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3b
	.long	.LASF27
	.byte	0x1
	.value	0x16dd
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x3d
	.long	.LASF59
	.long	0xc0b1
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.23036
	.byte	0x0
	.uleb128 0x39
	.long	0xb8d5
	.byte	0x1
	.string	"pfn_from_ptrmemfunc"
	.byte	0x1
	.value	0x1705
	.byte	0x1
	.long	0x1e6
	.long	.LFB84
	.long	.LFE84
	.long	.LLST69
	.uleb128 0x3a
	.string	"t"
	.byte	0x1
	.value	0x1704
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x34
	.long	.LBB88
	.long	.LBE88
	.uleb128 0x3b
	.long	.LASF50
	.byte	0x1
	.value	0x1708
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x38
	.string	"pfn"
	.byte	0x1
	.value	0x1709
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x39
	.long	0xb957
	.byte	0x1
	.string	"dubious_conversion_warnings"
	.byte	0x1
	.value	0x171e
	.byte	0x1
	.long	0x1e6
	.long	.LFB85
	.long	.LFE85
	.long	.LLST70
	.uleb128 0x3e
	.long	.LASF3
	.byte	0x1
	.value	0x1719
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3e
	.long	.LASF31
	.byte	0x1
	.value	0x171a
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x3e
	.long	.LASF77
	.byte	0x1
	.value	0x171b
	.long	0x2ca
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x3e
	.long	.LASF71
	.byte	0x1
	.value	0x171c
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x3e
	.long	.LASF78
	.byte	0x1
	.value	0x171d
	.long	0x2dd
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.byte	0x0
	.uleb128 0x40
	.long	0xba17
	.string	"convert_for_assignment"
	.byte	0x1
	.value	0x1759
	.byte	0x1
	.long	0x1e6
	.long	.LFB86
	.long	.LFE86
	.long	.LLST71
	.uleb128 0x3e
	.long	.LASF3
	.byte	0x1
	.value	0x1755
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3a
	.string	"rhs"
	.byte	0x1
	.value	0x1755
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x3e
	.long	.LASF77
	.byte	0x1
	.value	0x1756
	.long	0x2ca
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x3e
	.long	.LASF71
	.byte	0x1
	.value	0x1757
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x3e
	.long	.LASF78
	.byte	0x1
	.value	0x1758
	.long	0x2dd
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x38
	.string	"codel"
	.byte	0x1
	.value	0x175a
	.long	0xac7
	.byte	0x1
	.byte	0x50
	.uleb128 0x38
	.string	"rhstype"
	.byte	0x1
	.value	0x175b
	.long	0x1e6
	.byte	0x2
	.byte	0x75
	.sleb128 -12
	.uleb128 0x38
	.string	"coder"
	.byte	0x1
	.value	0x175c
	.long	0xac7
	.byte	0x2
	.byte	0x75
	.sleb128 -8
	.uleb128 0x3d
	.long	.LASF59
	.long	0xc09c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.23182
	.byte	0x0
	.uleb128 0x39
	.long	0xbb18
	.byte	0x1
	.string	"convert_for_initialization"
	.byte	0x1
	.value	0x17c2
	.byte	0x1
	.long	0x1e6
	.long	.LFB87
	.long	.LFE87
	.long	.LLST72
	.uleb128 0x3a
	.string	"exp"
	.byte	0x1
	.value	0x17bd
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3e
	.long	.LASF3
	.byte	0x1
	.value	0x17bd
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x3a
	.string	"rhs"
	.byte	0x1
	.value	0x17bd
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x3a
	.string	"flags"
	.byte	0x1
	.value	0x17be
	.long	0x2dd
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x3e
	.long	.LASF77
	.byte	0x1
	.value	0x17bf
	.long	0x2ca
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x3e
	.long	.LASF71
	.byte	0x1
	.value	0x17c0
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x3e
	.long	.LASF78
	.byte	0x1
	.value	0x17c1
	.long	0x2dd
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x38
	.string	"codel"
	.byte	0x1
	.value	0x17c3
	.long	0xac7
	.byte	0x2
	.byte	0x75
	.sleb128 -28
	.uleb128 0x38
	.string	"rhstype"
	.byte	0x1
	.value	0x17c4
	.long	0x1e6
	.byte	0x2
	.byte	0x75
	.sleb128 -24
	.uleb128 0x38
	.string	"coder"
	.byte	0x1
	.value	0x17c5
	.long	0xac7
	.byte	0x1
	.byte	0x50
	.uleb128 0x34
	.long	.LBB89
	.long	.LBE89
	.uleb128 0x38
	.string	"savew"
	.byte	0x1
	.value	0x17f2
	.long	0x2dd
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x38
	.string	"savee"
	.byte	0x1
	.value	0x17f2
	.long	0x2dd
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x43
	.long	0xbc1a
	.byte	0x1
	.string	"c_expand_asm_operands"
	.byte	0x1
	.value	0x1821
	.byte	0x1
	.long	.LFB88
	.long	.LFE88
	.long	.LLST73
	.uleb128 0x3a
	.string	"string"
	.byte	0x1
	.value	0x181d
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3a
	.string	"outputs"
	.byte	0x1
	.value	0x181d
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3a
	.string	"inputs"
	.byte	0x1
	.value	0x181d
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x3a
	.string	"clobbers"
	.byte	0x1
	.value	0x181d
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x3a
	.string	"vol"
	.byte	0x1
	.value	0x181e
	.long	0x2dd
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x3a
	.string	"filename"
	.byte	0x1
	.value	0x181f
	.long	0x2ca
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x3a
	.string	"line"
	.byte	0x1
	.value	0x1820
	.long	0x2dd
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x38
	.string	"noutputs"
	.byte	0x1
	.value	0x1822
	.long	0x2dd
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x38
	.string	"i"
	.byte	0x1
	.value	0x1823
	.long	0x2dd
	.byte	0x2
	.byte	0x75
	.sleb128 -56
	.uleb128 0x38
	.string	"o"
	.byte	0x1
	.value	0x1825
	.long	0x538c
	.byte	0x2
	.byte	0x75
	.sleb128 -52
	.uleb128 0x38
	.string	"tail"
	.byte	0x1
	.value	0x1826
	.long	0x1e6
	.byte	0x2
	.byte	0x75
	.sleb128 -48
	.uleb128 0x34
	.long	.LBB90
	.long	.LBE90
	.uleb128 0x3b
	.long	.LASF3
	.byte	0x1
	.value	0x1842
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.uleb128 0x42
	.long	0xbc97
	.string	"maybe_warn_about_returning_address_of_local"
	.byte	0x1
	.value	0x1855
	.byte	0x1
	.long	.LFB89
	.long	.LFE89
	.long	.LLST74
	.uleb128 0x3a
	.string	"retval"
	.byte	0x1
	.value	0x1854
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3b
	.long	.LASF61
	.byte	0x1
	.value	0x1856
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x38
	.string	"whats_returned"
	.byte	0x1
	.value	0x1857
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x39
	.long	0xbd44
	.byte	0x1
	.string	"check_return_expr"
	.byte	0x1
	.value	0x1894
	.byte	0x1
	.long	0x1e6
	.long	.LFB90
	.long	.LFE90
	.long	.LLST75
	.uleb128 0x3a
	.string	"retval"
	.byte	0x1
	.value	0x1893
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3b
	.long	.LASF36
	.byte	0x1
	.value	0x1895
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3b
	.long	.LASF61
	.byte	0x1
	.value	0x1898
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x38
	.string	"fn_returns_value_p"
	.byte	0x1
	.value	0x1899
	.long	0x2dd
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3c
	.long	0xbd33
	.long	.LBB91
	.long	.LBE91
	.uleb128 0x38
	.string	"functype"
	.byte	0x1
	.value	0x192e
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x3d
	.long	.LASF59
	.long	0xc087
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.23512
	.byte	0x0
	.uleb128 0x40
	.long	0xbdc2
	.string	"comp_ptr_ttypes_real"
	.byte	0x1
	.value	0x1959
	.byte	0x1
	.long	0x2dd
	.long	.LFB91
	.long	.LFE91
	.long	.LLST76
	.uleb128 0x3a
	.string	"to"
	.byte	0x1
	.value	0x1957
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3e
	.long	.LASF76
	.byte	0x1
	.value	0x1957
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x3a
	.string	"constp"
	.byte	0x1
	.value	0x1958
	.long	0x2dd
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x38
	.string	"to_more_cv_qualified"
	.byte	0x1
	.value	0x195a
	.long	0x2dd
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x39
	.long	0xbe0a
	.byte	0x1
	.string	"comp_ptr_ttypes"
	.byte	0x1
	.value	0x1987
	.byte	0x1
	.long	0x2dd
	.long	.LFB92
	.long	.LFE92
	.long	.LLST77
	.uleb128 0x3a
	.string	"to"
	.byte	0x1
	.value	0x1986
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3e
	.long	.LASF76
	.byte	0x1
	.value	0x1986
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x39
	.long	0xbe59
	.byte	0x1
	.string	"ptr_reasonably_similar"
	.byte	0x1
	.value	0x1991
	.byte	0x1
	.long	0x2dd
	.long	.LFB93
	.long	.LFE93
	.long	.LLST78
	.uleb128 0x3a
	.string	"to"
	.byte	0x1
	.value	0x1990
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3e
	.long	.LASF76
	.byte	0x1
	.value	0x1990
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x40
	.long	0xbea6
	.string	"comp_ptr_ttypes_const"
	.byte	0x1
	.value	0x19b5
	.byte	0x1
	.long	0x2dd
	.long	.LFB94
	.long	.LFE94
	.long	.LLST79
	.uleb128 0x3a
	.string	"to"
	.byte	0x1
	.value	0x19b4
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3e
	.long	.LASF76
	.byte	0x1
	.value	0x19b4
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x40
	.long	0xbf0b
	.string	"comp_ptr_ttypes_reinterpret"
	.byte	0x1
	.value	0x19ca
	.byte	0x1
	.long	0x2dd
	.long	.LFB95
	.long	.LFE95
	.long	.LLST80
	.uleb128 0x3a
	.string	"to"
	.byte	0x1
	.value	0x19c9
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3e
	.long	.LASF76
	.byte	0x1
	.value	0x19c9
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x38
	.string	"constp"
	.byte	0x1
	.value	0x19cb
	.long	0x2dd
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x39
	.long	0xbf43
	.byte	0x1
	.string	"cp_type_quals"
	.byte	0x1
	.value	0x19ee
	.byte	0x1
	.long	0x2dd
	.long	.LFB96
	.long	.LFE96
	.long	.LLST81
	.uleb128 0x3e
	.long	.LASF3
	.byte	0x1
	.value	0x19ed
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x39
	.long	0xbf7e
	.byte	0x1
	.string	"cp_has_mutable_p"
	.byte	0x1
	.value	0x19fa
	.byte	0x1
	.long	0x2dd
	.long	.LFB97
	.long	.LFE97
	.long	.LLST82
	.uleb128 0x3e
	.long	.LASF3
	.byte	0x1
	.value	0x19f9
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x42
	.long	0xbfeb
	.string	"casts_away_constness_r"
	.byte	0x1
	.value	0x1a08
	.byte	0x1
	.long	.LFB98
	.long	.LFE98
	.long	.LLST83
	.uleb128 0x3a
	.string	"t1"
	.byte	0x1
	.value	0x1a06
	.long	0x538c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3a
	.string	"t2"
	.byte	0x1
	.value	0x1a07
	.long	0x538c
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x38
	.string	"quals1"
	.byte	0x1
	.value	0x1a09
	.long	0x2dd
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x38
	.string	"quals2"
	.byte	0x1
	.value	0x1a0a
	.long	0x2dd
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x40
	.long	0xc036
	.string	"casts_away_constness"
	.byte	0x1
	.value	0x1a45
	.byte	0x1
	.long	0x2dd
	.long	.LFB99
	.long	.LFE99
	.long	.LLST84
	.uleb128 0x3a
	.string	"t1"
	.byte	0x1
	.value	0x1a43
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3a
	.string	"t2"
	.byte	0x1
	.value	0x1a44
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x40
	.long	0xc077
	.string	"strip_all_pointer_quals"
	.byte	0x1
	.value	0x1a78
	.byte	0x1
	.long	0x1e6
	.long	.LFB100
	.long	.LFE100
	.long	.LLST85
	.uleb128 0x3e
	.long	.LASF3
	.byte	0x1
	.value	0x1a77
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x10
	.long	0xc087
	.long	0x2d5
	.uleb128 0x11
	.long	0x3cd
	.byte	0x11
	.byte	0x0
	.uleb128 0xb
	.long	0xc077
	.uleb128 0x10
	.long	0xc09c
	.long	0x2d5
	.uleb128 0x11
	.long	0x3cd
	.byte	0x16
	.byte	0x0
	.uleb128 0xb
	.long	0xc08c
	.uleb128 0x10
	.long	0xc0b1
	.long	0x2d5
	.uleb128 0x11
	.long	0x3cd
	.byte	0x15
	.byte	0x0
	.uleb128 0xb
	.long	0xc0a1
	.uleb128 0x10
	.long	0xc0c6
	.long	0x2d5
	.uleb128 0x11
	.long	0x3cd
	.byte	0x10
	.byte	0x0
	.uleb128 0xb
	.long	0xc0b6
	.uleb128 0xb
	.long	0xc077
	.uleb128 0x10
	.long	0xc0e0
	.long	0x2d5
	.uleb128 0x11
	.long	0x3cd
	.byte	0x14
	.byte	0x0
	.uleb128 0xb
	.long	0xc0d0
	.uleb128 0xb
	.long	0xc0d0
	.uleb128 0x10
	.long	0xc0fa
	.long	0x2d5
	.uleb128 0x11
	.long	0x3cd
	.byte	0xe
	.byte	0x0
	.uleb128 0xb
	.long	0xc0ea
	.uleb128 0x10
	.long	0xc10f
	.long	0x2d5
	.uleb128 0x11
	.long	0x3cd
	.byte	0xf
	.byte	0x0
	.uleb128 0xb
	.long	0xc0ff
	.uleb128 0x10
	.long	0xc124
	.long	0x2d5
	.uleb128 0x11
	.long	0x3cd
	.byte	0x20
	.byte	0x0
	.uleb128 0xb
	.long	0xc114
	.uleb128 0x10
	.long	0xc139
	.long	0x2d5
	.uleb128 0x11
	.long	0x3cd
	.byte	0x1c
	.byte	0x0
	.uleb128 0xb
	.long	0xc129
	.uleb128 0xb
	.long	0x817
	.uleb128 0x10
	.long	0xc153
	.long	0x2d5
	.uleb128 0x11
	.long	0x3cd
	.byte	0x1e
	.byte	0x0
	.uleb128 0xb
	.long	0xc143
	.uleb128 0xb
	.long	0xc0b6
	.uleb128 0x10
	.long	0xc16d
	.long	0x2d5
	.uleb128 0x11
	.long	0x3cd
	.byte	0x1a
	.byte	0x0
	.uleb128 0xb
	.long	0xc15d
	.uleb128 0x10
	.long	0xc182
	.long	0x2d5
	.uleb128 0x11
	.long	0x3cd
	.byte	0x9
	.byte	0x0
	.uleb128 0xb
	.long	0xc172
	.uleb128 0x10
	.long	0xc197
	.long	0x2d5
	.uleb128 0x11
	.long	0x3cd
	.byte	0xb
	.byte	0x0
	.uleb128 0xb
	.long	0xc187
	.uleb128 0xb
	.long	0x807
	.uleb128 0x10
	.long	0xc1ac
	.long	0x2d5
	.uleb128 0x44
	.byte	0x0
	.uleb128 0x45
	.string	"tree_code_type"
	.byte	0x3
	.byte	0x43
	.long	0xc1c4
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.long	0xc1a1
	.uleb128 0x10
	.long	0xc1d9
	.long	0x1e6
	.uleb128 0x11
	.long	0x3cd
	.byte	0x3f
	.byte	0x0
	.uleb128 0x46
	.string	"global_trees"
	.byte	0x3
	.value	0x8ee
	.long	0xc1c9
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.long	0xc200
	.long	0x1e6
	.uleb128 0x11
	.long	0x3cd
	.byte	0xa
	.byte	0x0
	.uleb128 0x46
	.string	"integer_types"
	.byte	0x3
	.value	0x95f
	.long	0xc1f0
	.byte	0x1
	.byte	0x1
	.uleb128 0x46
	.string	"current_function_decl"
	.byte	0x3
	.value	0xc07
	.long	0x1e6
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.long	0xc248
	.long	0x9e
	.uleb128 0x11
	.long	0x3cd
	.byte	0x80
	.byte	0x0
	.uleb128 0x46
	.string	"const_int_rtx"
	.byte	0x4
	.value	0x69e
	.long	0xc238
	.byte	0x1
	.byte	0x1
	.uleb128 0x46
	.string	"cfun"
	.byte	0x8
	.value	0x202
	.long	0x481b
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.long	0xc27f
	.long	0x1e6
	.uleb128 0x11
	.long	0x3cd
	.byte	0x1e
	.byte	0x0
	.uleb128 0x45
	.string	"c_global_trees"
	.byte	0xb
	.byte	0xee
	.long	0xc26f
	.byte	0x1
	.byte	0x1
	.uleb128 0x46
	.string	"flag_ms_extensions"
	.byte	0xb
	.value	0x19b
	.long	0x2dd
	.byte	0x1
	.byte	0x1
	.uleb128 0x46
	.string	"flag_const_strings"
	.byte	0xb
	.value	0x1a4
	.long	0x2dd
	.byte	0x1
	.byte	0x1
	.uleb128 0x46
	.string	"warn_cast_qual"
	.byte	0xb
	.value	0x1b2
	.long	0x2dd
	.byte	0x1
	.byte	0x1
	.uleb128 0x46
	.string	"warn_pointer_arith"
	.byte	0xb
	.value	0x1bb
	.long	0x2dd
	.byte	0x1
	.byte	0x1
	.uleb128 0x46
	.string	"warn_sign_compare"
	.byte	0xb
	.value	0x1cd
	.long	0x2dd
	.byte	0x1
	.byte	0x1
	.uleb128 0x46
	.string	"warn_write_strings"
	.byte	0xb
	.value	0x1d6
	.long	0x2dd
	.byte	0x1
	.byte	0x1
	.uleb128 0x46
	.string	"warn_float_equal"
	.byte	0xb
	.value	0x1df
	.long	0x2dd
	.byte	0x1
	.byte	0x1
	.uleb128 0x46
	.string	"warn_char_subscripts"
	.byte	0xb
	.value	0x1e3
	.long	0x2dd
	.byte	0x1
	.byte	0x1
	.uleb128 0x46
	.string	"warn_format"
	.byte	0xb
	.value	0x1f0
	.long	0x2dd
	.byte	0x1
	.byte	0x1
	.uleb128 0x46
	.string	"flag_elide_constructors"
	.byte	0xb
	.value	0x2b1
	.long	0x2dd
	.byte	0x1
	.byte	0x1
	.uleb128 0x46
	.string	"flag_check_new"
	.byte	0xb
	.value	0x2cb
	.long	0x2dd
	.byte	0x1
	.byte	0x1
	.uleb128 0x46
	.string	"warn_pmf2ptr"
	.byte	0xb
	.value	0x324
	.long	0x2dd
	.byte	0x1
	.byte	0x1
	.uleb128 0x46
	.string	"warn_ecpp"
	.byte	0xb
	.value	0x328
	.long	0x2dd
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.long	0xc406
	.long	0x1e6
	.uleb128 0x11
	.long	0x3cd
	.byte	0x49
	.byte	0x0
	.uleb128 0x46
	.string	"cp_global_trees"
	.byte	0xa
	.value	0x28f
	.long	0xc3f6
	.byte	0x1
	.byte	0x1
	.uleb128 0x46
	.string	"scope_chain"
	.byte	0xa
	.value	0x368
	.long	0x6cd7
	.byte	0x1
	.byte	0x1
	.uleb128 0x46
	.string	"error_mark_list"
	.byte	0xa
	.value	0xc9f
	.long	0x1e6
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.long	0xc45b
	.long	0x7a68
	.uleb128 0x44
	.byte	0x0
	.uleb128 0x46
	.string	"operator_name_info"
	.byte	0xa
	.value	0xe32
	.long	0xc450
	.byte	0x1
	.byte	0x1
	.uleb128 0x46
	.string	"assignment_operator_name_info"
	.byte	0xa
	.value	0xe34
	.long	0xc450
	.byte	0x1
	.byte	0x1
	.uleb128 0x45
	.string	"extra_warnings"
	.byte	0xf
	.byte	0x5f
	.long	0x2dd
	.byte	0x1
	.byte	0x1
	.uleb128 0x45
	.string	"warn_unused_value"
	.byte	0xf
	.byte	0x6b
	.long	0x2dd
	.byte	0x1
	.byte	0x1
	.uleb128 0x45
	.string	"warn_cast_align"
	.byte	0xf
	.byte	0xa0
	.long	0x2dd
	.byte	0x1
	.byte	0x1
	.uleb128 0x45
	.string	"pedantic"
	.byte	0xf
	.byte	0xe3
	.long	0x2dd
	.byte	0x1
	.byte	0x1
	.uleb128 0x46
	.string	"flag_volatile"
	.byte	0xf
	.value	0x159
	.long	0x2dd
	.byte	0x1
	.byte	0x1
	.uleb128 0x46
	.string	"global_dc"
	.byte	0x10
	.value	0x109
	.long	0x7f1d
	.byte	0x1
	.byte	0x1
	.uleb128 0x46
	.string	"targetm"
	.byte	0x16
	.value	0x12d
	.long	0x85c0
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
	.uleb128 0x9
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
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
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
	.byte	0x0
	.byte	0x0
	.uleb128 0xb
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
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
	.uleb128 0x15
	.byte	0x0
	.uleb128 0x27
	.uleb128 0xc
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
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1f
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x27
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0x23
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
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0x24
	.uleb128 0x17
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
	.uleb128 0x13
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
	.uleb128 0x4
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
	.uleb128 0x2e
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
	.uleb128 0x2f
	.uleb128 0x15
	.byte	0x0
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x34
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uleb128 0x3b
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
	.uleb128 0x3c
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
	.uleb128 0x3d
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
	.uleb128 0x3e
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
	.uleb128 0x3f
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x40
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
	.uleb128 0x41
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
	.uleb128 0x42
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
	.uleb128 0x43
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
	.uleb128 0x44
	.uleb128 0x21
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x45
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
	.uleb128 0x46
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
	.long	0x623
	.value	0x2
	.long	.Ldebug_info0
	.long	0xc53d
	.long	0x89ab
	.string	"target_type"
	.long	0x89d7
	.string	"require_complete_type"
	.long	0x8a23
	.string	"complete_type"
	.long	0x8a6f
	.string	"complete_type_or_diagnostic"
	.long	0x8ad5
	.string	"type_unknown_p"
	.long	0x8bb3
	.string	"commonparms"
	.long	0x8c58
	.string	"original_type"
	.long	0x8ca5
	.string	"type_after_usual_arithmetic_conversions"
	.long	0x8dc2
	.string	"composite_pointer_type"
	.long	0x8eb3
	.string	"merge_types"
	.long	0x9035
	.string	"common_type"
	.long	0x90ff
	.string	"comp_except_specs"
	.long	0x9250
	.string	"comptypes"
	.long	0x9369
	.string	"comp_target_types"
	.long	0x9483
	.string	"at_least_as_qualified_p"
	.long	0x94d4
	.string	"more_qualified_p"
	.long	0x951e
	.string	"comp_cv_qualification"
	.long	0x956d
	.string	"comp_cv_qual_signature"
	.long	0x967b
	.string	"compparms"
	.long	0x9791
	.string	"cxx_sizeof_or_alignof_type"
	.long	0x983f
	.string	"expr_sizeof"
	.long	0x9873
	.string	"decay_conversion"
	.long	0x9944
	.string	"default_conversion"
	.long	0x99b6
	.string	"inline_conversion"
	.long	0x99f2
	.string	"string_conv_p"
	.long	0x9b23
	.string	"build_class_member_access_expr"
	.long	0x9cac
	.string	"finish_class_member_access_expr"
	.long	0x9dc3
	.string	"build_ptrmemfunc_access_expr"
	.long	0x9e66
	.string	"build_x_indirect_ref"
	.long	0x9ec3
	.string	"build_indirect_ref"
	.long	0x9f5d
	.string	"build_array_ref"
	.long	0xa04b
	.string	"get_member_function_from_ptrfunc"
	.long	0xa17e
	.string	"build_function_call_real"
	.long	0xa275
	.string	"build_function_call"
	.long	0xa2c5
	.string	"convert_arguments"
	.long	0xa3f9
	.string	"build_x_binary_op"
	.long	0xa455
	.string	"build_binary_op"
	.long	0xaa1e
	.string	"build_x_unary_op"
	.long	0xaaa0
	.string	"cp_truthvalue_conversion"
	.long	0xaaf2
	.string	"condition_conversion"
	.long	0xab3e
	.string	"build_address"
	.long	0xab84
	.string	"build_nop"
	.long	0xabd6
	.string	"build_unary_op"
	.long	0xadf0
	.string	"unary_complex_lvalue"
	.long	0xaefa
	.string	"cxx_mark_addressable"
	.long	0xaf56
	.string	"build_x_conditional_expr"
	.long	0xafb9
	.string	"build_x_compound_expr"
	.long	0xb019
	.string	"build_compound_expr"
	.long	0xb0d9
	.string	"build_static_cast"
	.long	0xb1d9
	.string	"build_reinterpret_cast"
	.long	0xb24f
	.string	"build_const_cast"
	.long	0xb2bf
	.string	"build_c_cast"
	.long	0xb35c
	.string	"build_modify_expr"
	.long	0xb4ec
	.string	"build_x_modify_expr"
	.long	0xb621
	.string	"build_ptrmemfunc1"
	.long	0xb6b4
	.string	"build_ptrmemfunc"
	.long	0xb78e
	.string	"expand_ptrmemfunc_cst"
	.long	0xb871
	.string	"pfn_from_ptrmemfunc"
	.long	0xb8d5
	.string	"dubious_conversion_warnings"
	.long	0xba17
	.string	"convert_for_initialization"
	.long	0xbb18
	.string	"c_expand_asm_operands"
	.long	0xbc97
	.string	"check_return_expr"
	.long	0xbdc2
	.string	"comp_ptr_ttypes"
	.long	0xbe0a
	.string	"ptr_reasonably_similar"
	.long	0xbf0b
	.string	"cp_type_quals"
	.long	0xbf43
	.string	"cp_has_mutable_p"
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
.LASF77:
	.string	"errtype"
.LASF26:
	.string	"name"
.LASF36:
	.string	"result"
.LASF42:
	.string	"base"
.LASF33:
	.string	"cannot_inline"
.LASF7:
	.string	"lang_flag_0"
.LASF8:
	.string	"lang_flag_1"
.LASF9:
	.string	"lang_flag_2"
.LASF13:
	.string	"lang_flag_6"
.LASF48:
	.string	"befriending_classes"
.LASF16:
	.string	"pointer"
.LASF51:
	.string	"base_kind"
.LASF38:
	.string	"mem_attrs"
.LASF43:
	.string	"bindings"
.LASF58:
	.string	"code1"
.LASF31:
	.string	"expr"
.LASF27:
	.string	"binfo"
.LASF78:
	.string	"parmnum"
.LASF55:
	.string	"diagnostic_context"
.LASF1:
	.string	"common"
.LASF72:
	.string	"resultcode"
.LASF29:
	.string	"lang_specific"
.LASF41:
	.string	"sequence_rtl_expr"
.LASF67:
	.string	"access_path"
.LASF66:
	.string	"member"
.LASF45:
	.string	"cxx_saved_binding"
.LASF40:
	.string	"sequence_stack"
.LASF35:
	.string	"function_frequency"
.LASF10:
	.string	"lang_flag_3"
.LASF30:
	.string	"function"
.LASF57:
	.string	"type_quals"
.LASF62:
	.string	"rval"
.LASF63:
	.string	"basetype"
.LASF61:
	.string	"valtype"
.LASF4:
	.string	"unsigned int"
.LASF52:
	.string	"operator_name_info_t"
.LASF60:
	.string	"result_type"
.LASF20:
	.string	"abstract_origin"
.LASF25:
	.string	"align"
.LASF23:
	.string	"pointer_depth"
.LASF46:
	.string	"use_template"
.LASF24:
	.string	"user_align"
.LASF53:
	.string	"location"
.LASF21:
	.string	"size_unit"
.LASF74:
	.string	"intype"
.LASF3:
	.string	"type"
.LASF34:
	.string	"language"
.LASF73:
	.string	"real_result"
.LASF18:
	.string	"value"
.LASF54:
	.string	"output_buffer"
.LASF49:
	.string	"ptrmem"
.LASF32:
	.string	"args_size"
.LASF71:
	.string	"fndecl"
.LASF69:
	.string	"member_type"
.LASF6:
	.string	"built_in_class"
.LASF50:
	.string	"delta"
.LASF75:
	.string	"modifycode"
.LASF2:
	.string	"identifier"
.LASF11:
	.string	"lang_flag_4"
.LASF12:
	.string	"lang_flag_5"
.LASF14:
	.string	"lang_flag_7"
.LASF19:
	.string	"abstract_flag"
.LASF56:
	.string	"target_type"
.LASF44:
	.string	"x_stmt_tree"
.LASF0:
	.string	"code"
.LASF28:
	.string	"context"
.LASF39:
	.string	"unsignedp"
.LASF17:
	.string	"ht_identifier"
.LASF70:
	.string	"errorstring"
.LASF68:
	.string	"object_type"
.LASF76:
	.string	"from"
.LASF47:
	.string	"template_info"
.LASF59:
	.string	"__FUNCTION__"
.LASF37:
	.string	"assembler_name"
.LASF5:
	.string	"_IO_FILE"
.LASF22:
	.string	"attributes"
.LASF15:
	.string	"length"
.LASF64:
	.string	"type1"
.LASF65:
	.string	"type2"
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
