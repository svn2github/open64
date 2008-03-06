	.file	"c-typeck.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
.globl require_complete_type
	.type	require_complete_type, @function
require_complete_type:
.LFB15:
	.file 1 "../../../kgccfe/gnu/c-typeck.c"
	.loc 1 98 0
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
	.loc 1 99 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 101 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	8(%ebp), %eax
	je	.L2
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-8(%ebp), %eax
	jne	.L4
.L2:
	.loc 1 102 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L5
.L4:
	.loc 1 105 0
	movl	-8(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L6
	.loc 1 106 0
	movl	8(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L5
.L6:
	.loc 1 108 0
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	c_incomplete_type_error@PLT
	.loc 1 109 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
.L5:
	movl	-24(%ebp), %eax
	.loc 1 110 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE15:
	.size	require_complete_type, .-require_complete_type
	.section	.rodata
	.type	__FUNCTION__.13833, @object
	.size	__FUNCTION__.13833, 24
__FUNCTION__.13833:
	.string	"c_incomplete_type_error"
.LC0:
	.string	"`%s' has an incomplete type"
.LC1:
	.string	"struct"
.LC2:
	.string	"union"
.LC3:
	.string	"enum"
	.align 4
.LC4:
	.string	"invalid use of void expression"
	.align 4
.LC5:
	.string	"invalid use of flexible array member"
	.align 4
.LC6:
	.string	"invalid use of array with unspecified bounds"
	.align 4
.LC7:
	.string	"../../../kgccfe/gnu/c-typeck.c"
	.align 4
.LC8:
	.string	"invalid use of undefined type `%s %s'"
	.align 4
.LC9:
	.string	"invalid use of incomplete typedef `%s'"
	.text
.globl c_incomplete_type_error
	.type	c_incomplete_type_error, @function
c_incomplete_type_error:
.LFB16:
	.loc 1 120 0
	pushl	%ebp
.LCFI4:
	movl	%esp, %ebp
.LCFI5:
	pushl	%ebx
.LCFI6:
	subl	$36, %esp
.LCFI7:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 124 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	testb	%al, %al
	je	.L30
	.loc 1 127 0
	cmpl	$0, 8(%ebp)
	je	.L12
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$35, %al
	je	.L14
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$36, %al
	jne	.L12
.L14:
	.loc 1 129 0
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 127 0
	jmp	.L30
.L12:
	.loc 1 136 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	subl	$6, %eax
	movl	%eax, -24(%ebp)
	cmpl	$16, -24(%ebp)
	ja	.L16
	movl	-24(%ebp), %eax
	sall	$2, %eax
	movl	.L22@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L22:
	.long	.L17@GOTOFF
	.long	.L16@GOTOFF
	.long	.L16@GOTOFF
	.long	.L16@GOTOFF
	.long	.L16@GOTOFF
	.long	.L18@GOTOFF
	.long	.L16@GOTOFF
	.long	.L16@GOTOFF
	.long	.L16@GOTOFF
	.long	.L16@GOTOFF
	.long	.L16@GOTOFF
	.long	.L16@GOTOFF
	.long	.L16@GOTOFF
	.long	.L19@GOTOFF
	.long	.L16@GOTOFF
	.long	.L20@GOTOFF
	.long	.L21@GOTOFF
	.text
.L20:
	.loc 1 139 0
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, -8(%ebp)
	.loc 1 140 0
	jmp	.L23
.L21:
	.loc 1 143 0
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, -8(%ebp)
	.loc 1 144 0
	jmp	.L23
.L18:
	.loc 1 147 0
	leal	.LC3@GOTOFF(%ebx), %eax
	movl	%eax, -8(%ebp)
	.loc 1 148 0
	jmp	.L23
.L17:
	.loc 1 151 0
	leal	.LC4@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 152 0
	jmp	.L30
.L19:
	.loc 1 155 0
	movl	12(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L24
	.loc 1 157 0
	movl	12(%ebp), %eax
	movl	16(%eax), %eax
	movl	68(%eax), %eax
	testl	%eax, %eax
	jne	.L26
	.loc 1 159 0
	leal	.LC5@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 160 0
	jmp	.L30
.L26:
	.loc 1 162 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 12(%ebp)
	.loc 1 163 0
	jmp	.L12
.L24:
	.loc 1 165 0
	leal	.LC6@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 166 0
	jmp	.L30
.L16:
	.loc 1 169 0
	leal	__FUNCTION__.13833@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$169, 4(%esp)
	leal	.LC7@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L23:
	.loc 1 172 0
	movl	12(%ebp), %eax
	movl	60(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$1, %al
	jne	.L28
	.loc 1 173 0
	movl	12(%ebp), %eax
	movl	60(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, 8(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC8@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	jmp	.L30
.L28:
	.loc 1 177 0
	movl	12(%ebp), %eax
	movl	60(%eax), %eax
	movl	52(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC9@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L30:
	.loc 1 180 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE16:
	.size	c_incomplete_type_error, .-c_incomplete_type_error
.globl c_type_promotes_to
	.type	c_type_promotes_to, @function
c_type_promotes_to:
.LFB17:
	.loc 1 188 0
	pushl	%ebp
.LCFI8:
	movl	%esp, %ebp
.LCFI9:
	pushl	%ebx
.LCFI10:
	subl	$20, %esp
.LCFI11:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 189 0
	movl	8(%ebp), %eax
	movl	76(%eax), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	96(%eax), %eax
	cmpl	%eax, %edx
	jne	.L32
	.loc 1 190 0
	movl	global_trees@GOT(%ebx), %eax
	movl	100(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L34
.L32:
	.loc 1 192 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	c_promoting_integer_type_p@PLT
	testb	%al, %al
	je	.L35
	.loc 1 195 0
	movl	8(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L37
	movl	8(%ebp), %eax
	movzwl	36(%eax), %edx
	andw	$511, %dx
	movl	integer_types@GOT(%ebx), %eax
	movl	20(%eax), %eax
	movzwl	36(%eax), %eax
	andw	$511, %ax
	cmpw	%ax, %dx
	jne	.L37
	.loc 1 197 0
	movl	integer_types@GOT(%ebx), %eax
	movl	24(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L34
.L37:
	.loc 1 198 0
	movl	integer_types@GOT(%ebx), %eax
	movl	20(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L34
.L35:
	.loc 1 201 0
	movl	8(%ebp), %eax
	movl	%eax, -8(%ebp)
.L34:
	movl	-8(%ebp), %eax
	.loc 1 202 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE17:
	.size	c_type_promotes_to, .-c_type_promotes_to
	.type	qualify_type, @function
qualify_type:
.LFB18:
	.loc 1 210 0
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
	.loc 1 211 0
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
	movl	%ecx, -24(%ebp)
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	jne	.L42
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L42
	movl	$1, -20(%ebp)
	jmp	.L45
.L42:
	movl	$0, -20(%ebp)
.L45:
	movl	-20(%ebp), %eax
	sall	$3, %eax
	movl	-24(%ebp), %edx
	orl	%eax, %edx
	movl	%edx, -16(%ebp)
	movl	12(%ebp), %eax
	movzbl	9(%eax), %eax
	shrb	$4, %al
	andl	$1, %eax
	movzbl	%al, %edx
	movl	12(%ebp), %eax
	movzbl	9(%eax), %eax
	shrb	$3, %al
	andl	$1, %eax
	movzbl	%al, %eax
	addl	%eax, %eax
	orl	%eax, %edx
	movl	12(%ebp), %eax
	movzbl	38(%eax), %eax
	shrb	$5, %al
	andl	$1, %eax
	movzbl	%al, %eax
	sall	$2, %eax
	movl	%edx, %ecx
	orl	%eax, %ecx
	movl	%ecx, -12(%ebp)
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	jne	.L46
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L46
	movl	$1, -8(%ebp)
	jmp	.L49
.L46:
	movl	$0, -8(%ebp)
.L49:
	movl	-8(%ebp), %eax
	sall	$3, %eax
	orl	-12(%ebp), %eax
	orl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	c_build_qualified_type@PLT
	.loc 1 213 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE18:
	.size	qualify_type, .-qualify_type
	.section	.rodata
	.align 4
.LC10:
	.string	"function types not truly compatible in ISO C"
	.text
.globl common_type
	.type	common_type, @function
common_type:
.LFB19:
	.loc 1 226 0
	pushl	%ebp
.LCFI16:
	movl	%esp, %ebp
.LCFI17:
	pushl	%ebx
.LCFI18:
	subl	$132, %esp
.LCFI19:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 233 0
	movl	8(%ebp), %eax
	cmpl	12(%ebp), %eax
	jne	.L52
	movl	8(%ebp), %eax
	movl	%eax, -120(%ebp)
	jmp	.L54
.L52:
	.loc 1 236 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L55
	.loc 1 237 0
	movl	12(%ebp), %edx
	movl	%edx, -120(%ebp)
	jmp	.L54
.L55:
	.loc 1 238 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	12(%ebp), %eax
	jne	.L57
	.loc 1 239 0
	movl	8(%ebp), %ecx
	movl	%ecx, -120(%ebp)
	jmp	.L54
.L57:
	.loc 1 242 0
	movl	targetm@GOT(%ebx), %eax
	movl	180(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	movl	%eax, -72(%ebp)
	.loc 1 246 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$11, %al
	jne	.L59
	.loc 1 247 0
	movl	8(%ebp), %eax
	movzwl	36(%eax), %eax
	andw	$511, %ax
	movzwl	%ax, %eax
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	c_common_type_for_size@PLT
	movl	%eax, 8(%ebp)
.L59:
	.loc 1 248 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$11, %al
	jne	.L61
	.loc 1 249 0
	movl	12(%ebp), %eax
	movzwl	36(%eax), %eax
	andw	$511, %ax
	movzwl	%ax, %eax
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	c_common_type_for_size@PLT
	movl	%eax, 12(%ebp)
.L61:
	.loc 1 251 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -80(%ebp)
	.loc 1 252 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -76(%ebp)
	.loc 1 257 0
	cmpl	$9, -80(%ebp)
	je	.L63
	cmpl	$9, -76(%ebp)
	jne	.L65
.L63:
.LBB2:
	.loc 1 259 0
	cmpl	$9, -80(%ebp)
	jne	.L66
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -116(%ebp)
	jmp	.L68
.L66:
	movl	8(%ebp), %eax
	movl	%eax, -116(%ebp)
.L68:
	movl	-116(%ebp), %edx
	movl	%edx, -68(%ebp)
	.loc 1 260 0
	cmpl	$9, -76(%ebp)
	jne	.L69
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -112(%ebp)
	jmp	.L71
.L69:
	movl	12(%ebp), %ecx
	movl	%ecx, -112(%ebp)
.L71:
	movl	-112(%ebp), %eax
	movl	%eax, -64(%ebp)
	.loc 1 261 0
	movl	-64(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-68(%ebp), %eax
	movl	%eax, (%esp)
	call	common_type@PLT
	movl	%eax, -60(%ebp)
	.loc 1 263 0
	cmpl	$9, -80(%ebp)
	jne	.L72
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-60(%ebp), %eax
	jne	.L72
	.loc 1 264 0
	movl	-72(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_type_attribute_variant@PLT
	movl	%eax, -120(%ebp)
	jmp	.L54
.L72:
	.loc 1 265 0
	cmpl	$9, -76(%ebp)
	jne	.L75
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-60(%ebp), %eax
	jne	.L75
	.loc 1 266 0
	movl	-72(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	build_type_attribute_variant@PLT
	movl	%eax, -120(%ebp)
	jmp	.L54
.L75:
	.loc 1 268 0
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	build_complex_type@PLT
	movl	%eax, %edx
	movl	-72(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	build_type_attribute_variant@PLT
	movl	%eax, -120(%ebp)
	jmp	.L54
.L65:
.LBE2:
	.loc 1 272 0
	movl	-80(%ebp), %edx
	subl	$7, %edx
	movl	%edx, -124(%ebp)
	cmpl	$17, -124(%ebp)
	ja	.L78
	movl	-124(%ebp), %eax
	sall	$2, %eax
	movl	.L83@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L83:
	.long	.L79@GOTOFF
	.long	.L79@GOTOFF
	.long	.L78@GOTOFF
	.long	.L78@GOTOFF
	.long	.L78@GOTOFF
	.long	.L78@GOTOFF
	.long	.L78@GOTOFF
	.long	.L80@GOTOFF
	.long	.L78@GOTOFF
	.long	.L78@GOTOFF
	.long	.L78@GOTOFF
	.long	.L78@GOTOFF
	.long	.L81@GOTOFF
	.long	.L78@GOTOFF
	.long	.L78@GOTOFF
	.long	.L78@GOTOFF
	.long	.L78@GOTOFF
	.long	.L82@GOTOFF
	.text
.L79:
	.loc 1 278 0
	cmpl	$8, -80(%ebp)
	jne	.L84
	cmpl	$8, -76(%ebp)
	je	.L84
	.loc 1 279 0
	movl	-72(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_type_attribute_variant@PLT
	movl	%eax, -120(%ebp)
	jmp	.L54
.L84:
	.loc 1 281 0
	cmpl	$8, -76(%ebp)
	jne	.L87
	cmpl	$8, -80(%ebp)
	je	.L87
	.loc 1 282 0
	movl	-72(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	build_type_attribute_variant@PLT
	movl	%eax, -120(%ebp)
	jmp	.L54
.L87:
	.loc 1 286 0
	movl	8(%ebp), %eax
	movzwl	36(%eax), %eax
	andw	$511, %ax
	movzwl	%ax, %edx
	movl	12(%ebp), %eax
	movzwl	36(%eax), %eax
	andw	$511, %ax
	movzwl	%ax, %eax
	cmpl	%eax, %edx
	jle	.L90
	.loc 1 287 0
	movl	-72(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_type_attribute_variant@PLT
	movl	%eax, -120(%ebp)
	jmp	.L54
.L90:
	.loc 1 288 0
	movl	12(%ebp), %eax
	movzwl	36(%eax), %eax
	andw	$511, %ax
	movzwl	%ax, %edx
	movl	8(%ebp), %eax
	movzwl	36(%eax), %eax
	andw	$511, %ax
	movzwl	%ax, %eax
	cmpl	%eax, %edx
	jle	.L92
	.loc 1 289 0
	movl	-72(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	build_type_attribute_variant@PLT
	movl	%eax, -120(%ebp)
	jmp	.L54
.L92:
	.loc 1 293 0
	movl	8(%ebp), %eax
	movl	76(%eax), %edx
	movl	integer_types@GOT(%ebx), %eax
	movl	32(%eax), %eax
	cmpl	%eax, %edx
	je	.L94
	movl	12(%ebp), %eax
	movl	76(%eax), %edx
	movl	integer_types@GOT(%ebx), %eax
	movl	32(%eax), %eax
	cmpl	%eax, %edx
	jne	.L96
.L94:
	.loc 1 295 0
	movl	integer_types@GOT(%ebx), %eax
	movl	32(%eax), %edx
	movl	-72(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	build_type_attribute_variant@PLT
	movl	%eax, -120(%ebp)
	jmp	.L54
.L96:
	.loc 1 298 0
	movl	8(%ebp), %eax
	movl	76(%eax), %edx
	movl	integer_types@GOT(%ebx), %eax
	movl	28(%eax), %eax
	cmpl	%eax, %edx
	je	.L97
	movl	12(%ebp), %eax
	movl	76(%eax), %edx
	movl	integer_types@GOT(%ebx), %eax
	movl	28(%eax), %eax
	cmpl	%eax, %edx
	jne	.L99
.L97:
	.loc 1 303 0
	movl	8(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	jne	.L100
	movl	12(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L102
.L100:
	.loc 1 304 0
	movl	integer_types@GOT(%ebx), %eax
	movl	32(%eax), %eax
	movl	%eax, 8(%ebp)
	.loc 1 303 0
	jmp	.L103
.L102:
	.loc 1 306 0
	movl	integer_types@GOT(%ebx), %eax
	movl	28(%eax), %eax
	movl	%eax, 8(%ebp)
.L103:
	.loc 1 307 0
	movl	-72(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_type_attribute_variant@PLT
	movl	%eax, -120(%ebp)
	jmp	.L54
.L99:
	.loc 1 311 0
	movl	8(%ebp), %eax
	movl	76(%eax), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	104(%eax), %eax
	cmpl	%eax, %edx
	je	.L104
	movl	12(%ebp), %eax
	movl	76(%eax), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	104(%eax), %eax
	cmpl	%eax, %edx
	jne	.L106
.L104:
	.loc 1 313 0
	movl	global_trees@GOT(%ebx), %eax
	movl	104(%eax), %edx
	movl	-72(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	build_type_attribute_variant@PLT
	movl	%eax, -120(%ebp)
	jmp	.L54
.L106:
	.loc 1 318 0
	movl	8(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L107
	.loc 1 319 0
	movl	-72(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_type_attribute_variant@PLT
	movl	%eax, -120(%ebp)
	jmp	.L54
.L107:
	.loc 1 321 0
	movl	-72(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	build_type_attribute_variant@PLT
	movl	%eax, -120(%ebp)
	jmp	.L54
.L80:
.LBB3:
	.loc 1 330 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -56(%ebp)
	.loc 1 331 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -52(%ebp)
	.loc 1 333 0
	movl	-52(%ebp), %eax
	movl	76(%eax), %edx
	movl	-56(%ebp), %eax
	movl	76(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	common_type@PLT
	movl	%eax, -48(%ebp)
	.loc 1 334 0
	movl	-56(%ebp), %eax
	movzbl	9(%eax), %eax
	shrb	$4, %al
	andl	$1, %eax
	movzbl	%al, %edx
	movl	-56(%ebp), %eax
	movzbl	9(%eax), %eax
	shrb	$3, %al
	andl	$1, %eax
	movzbl	%al, %eax
	addl	%eax, %eax
	orl	%eax, %edx
	movl	-56(%ebp), %eax
	movzbl	38(%eax), %eax
	shrb	$5, %al
	andl	$1, %eax
	movzbl	%al, %eax
	sall	$2, %eax
	movl	%edx, %ecx
	orl	%eax, %ecx
	movl	%ecx, -108(%ebp)
	movl	-56(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	jne	.L109
	movl	-56(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L109
	movl	$1, -104(%ebp)
	jmp	.L112
.L109:
	movl	$0, -104(%ebp)
.L112:
	movl	-104(%ebp), %eax
	sall	$3, %eax
	movl	-108(%ebp), %edx
	orl	%eax, %edx
	movl	%edx, -100(%ebp)
	movl	-52(%ebp), %eax
	movzbl	9(%eax), %eax
	shrb	$4, %al
	andl	$1, %eax
	movzbl	%al, %edx
	movl	-52(%ebp), %eax
	movzbl	9(%eax), %eax
	shrb	$3, %al
	andl	$1, %eax
	movzbl	%al, %eax
	addl	%eax, %eax
	orl	%eax, %edx
	movl	-52(%ebp), %eax
	movzbl	38(%eax), %eax
	shrb	$5, %al
	andl	$1, %eax
	movzbl	%al, %eax
	sall	$2, %eax
	movl	%edx, %ecx
	orl	%eax, %ecx
	movl	%ecx, -96(%ebp)
	movl	-52(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	jne	.L113
	movl	-52(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L113
	movl	$1, -92(%ebp)
	jmp	.L116
.L113:
	movl	$0, -92(%ebp)
.L116:
	movl	-92(%ebp), %eax
	sall	$3, %eax
	orl	-96(%ebp), %eax
	orl	-100(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	c_build_qualified_type@PLT
	movl	%eax, (%esp)
	call	build_pointer_type@PLT
	movl	%eax, 8(%ebp)
	.loc 1 338 0
	movl	-72(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_type_attribute_variant@PLT
	movl	%eax, -120(%ebp)
	jmp	.L54
.L81:
.LBE3:
.LBB4:
	.loc 1 347 0
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	common_type@PLT
	movl	%eax, -44(%ebp)
	.loc 1 349 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-44(%ebp), %eax
	jne	.L117
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L117
	.loc 1 350 0
	movl	-72(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_type_attribute_variant@PLT
	movl	%eax, -120(%ebp)
	jmp	.L54
.L117:
	.loc 1 351 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-44(%ebp), %eax
	jne	.L120
	movl	12(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L120
	.loc 1 352 0
	movl	-72(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	build_type_attribute_variant@PLT
	movl	%eax, -120(%ebp)
	jmp	.L54
.L120:
	.loc 1 354 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L123
	movl	8(%ebp), %eax
	movl	%eax, -88(%ebp)
	jmp	.L125
.L123:
	movl	12(%ebp), %edx
	movl	%edx, -88(%ebp)
.L125:
	movl	-88(%ebp), %ecx
	movl	16(%ecx), %eax
	movl	%eax, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	build_array_type@PLT
	movl	%eax, 8(%ebp)
	.loc 1 355 0
	movl	-72(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_type_attribute_variant@PLT
	movl	%eax, -120(%ebp)
	jmp	.L54
.L82:
.LBE4:
.LBB5:
	.loc 1 362 0
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	common_type@PLT
	movl	%eax, -40(%ebp)
	.loc 1 363 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -36(%ebp)
	.loc 1 364 0
	movl	12(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 370 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-40(%ebp), %eax
	jne	.L126
	movl	12(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	jne	.L126
	.loc 1 371 0
	movl	-72(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_type_attribute_variant@PLT
	movl	%eax, -120(%ebp)
	jmp	.L54
.L126:
	.loc 1 372 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-40(%ebp), %eax
	jne	.L129
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	jne	.L129
	.loc 1 373 0
	movl	-72(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	build_type_attribute_variant@PLT
	movl	%eax, -120(%ebp)
	jmp	.L54
.L129:
	.loc 1 376 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	jne	.L132
	.loc 1 378 0
	movl	12(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	build_function_type@PLT
	movl	%eax, 8(%ebp)
	.loc 1 379 0
	movl	-72(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_type_attribute_variant@PLT
	movl	%eax, -120(%ebp)
	jmp	.L54
.L132:
	.loc 1 381 0
	movl	12(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	jne	.L134
	.loc 1 383 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	build_function_type@PLT
	movl	%eax, 8(%ebp)
	.loc 1 384 0
	movl	-72(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_type_attribute_variant@PLT
	movl	%eax, -120(%ebp)
	jmp	.L54
.L134:
	.loc 1 390 0
	movl	$0, (%esp)
	call	pushlevel@PLT
	.loc 1 391 0
	movl	$1, (%esp)
	call	declare_parm_level@PLT
	.loc 1 393 0
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	list_length@PLT
	movl	%eax, -28(%ebp)
	.loc 1 394 0
	movl	$0, -24(%ebp)
	.loc 1 396 0
	movl	$0, -16(%ebp)
	jmp	.L136
.L137:
	.loc 1 397 0
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$0, (%esp)
	call	tree_cons@PLT
	movl	%eax, -24(%ebp)
	.loc 1 396 0
	addl	$1, -16(%ebp)
.L136:
	movl	-16(%ebp), %eax
	cmpl	-28(%ebp), %eax
	jl	.L137
	.loc 1 399 0
	movl	-24(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 401 0
	jmp	.L139
.L140:
	.loc 1 406 0
	movl	-36(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	jne	.L141
	.loc 1 408 0
	movl	-32(%ebp), %eax
	movl	20(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%edx, 20(%eax)
	.loc 1 409 0
	jmp	.L143
.L141:
	.loc 1 411 0
	movl	-32(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	jne	.L144
	.loc 1 413 0
	movl	-36(%ebp), %eax
	movl	20(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%edx, 20(%eax)
	.loc 1 414 0
	jmp	.L143
.L144:
	.loc 1 420 0
	movl	-36(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	jne	.L146
	movl	-36(%ebp), %eax
	movl	20(%eax), %edx
	movl	-32(%ebp), %eax
	movl	20(%eax), %eax
	cmpl	%eax, %edx
	je	.L146
.LBB6:
	.loc 1 424 0
	movl	-36(%ebp), %eax
	movl	20(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 425 0
	jmp	.L149
.L150:
	.loc 1 426 0
	movl	-32(%ebp), %eax
	movl	20(%eax), %edx
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	comptypes@PLT
	testl	%eax, %eax
	je	.L151
	.loc 1 428 0
	movl	-32(%ebp), %eax
	movl	20(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%edx, 20(%eax)
	.loc 1 429 0
	movl	pedantic@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L143
	.loc 1 430 0
	leal	.LC10@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	pedwarn@PLT
	.loc 1 431 0
	jmp	.L143
.L151:
	.loc 1 425 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
.L149:
	cmpl	$0, -12(%ebp)
	jne	.L150
.L146:
.LBE6:
	.loc 1 434 0
	movl	-32(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	jne	.L155
	movl	-32(%ebp), %eax
	movl	20(%eax), %edx
	movl	-36(%ebp), %eax
	movl	20(%eax), %eax
	cmpl	%eax, %edx
	je	.L155
.LBB7:
	.loc 1 438 0
	movl	-32(%ebp), %eax
	movl	20(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 439 0
	jmp	.L158
.L159:
	.loc 1 440 0
	movl	-36(%ebp), %eax
	movl	20(%eax), %edx
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	comptypes@PLT
	testl	%eax, %eax
	je	.L160
	.loc 1 442 0
	movl	-36(%ebp), %eax
	movl	20(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%edx, 20(%eax)
	.loc 1 443 0
	movl	pedantic@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L143
	.loc 1 444 0
	leal	.LC10@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	pedwarn@PLT
	.loc 1 445 0
	jmp	.L143
.L160:
	.loc 1 439 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
.L158:
	cmpl	$0, -8(%ebp)
	jne	.L159
.L155:
.LBE7:
	.loc 1 448 0
	movl	-32(%ebp), %eax
	movl	20(%eax), %edx
	movl	-36(%ebp), %eax
	movl	20(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	common_type@PLT
	movl	%eax, %edx
	movl	-20(%ebp), %eax
	movl	%edx, 20(%eax)
.L143:
	.loc 1 402 0
	movl	-36(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -36(%ebp)
	movl	-32(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
	movl	-20(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
.L139:
	.loc 1 401 0
	cmpl	$0, -36(%ebp)
	jne	.L140
	.loc 1 452 0
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	$0, (%esp)
	call	poplevel@PLT
	.loc 1 454 0
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	build_function_type@PLT
	movl	%eax, 8(%ebp)
.L78:
.LBE5:
	.loc 1 459 0
	movl	-72(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_type_attribute_variant@PLT
	movl	%eax, -120(%ebp)
.L54:
	movl	-120(%ebp), %eax
	.loc 1 462 0
	addl	$132, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE19:
	.size	common_type, .-common_type
.globl comptypes
	.type	comptypes, @function
comptypes:
.LFB20:
	.loc 1 471 0
	pushl	%ebp
.LCFI20:
	movl	%esp, %ebp
.LCFI21:
	pushl	%ebx
.LCFI22:
	subl	$100, %esp
.LCFI23:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 472 0
	movl	8(%ebp), %eax
	movl	%eax, -32(%ebp)
	.loc 1 473 0
	movl	12(%ebp), %eax
	movl	%eax, -28(%ebp)
	.loc 1 478 0
	movl	-32(%ebp), %eax
	cmpl	-28(%ebp), %eax
	je	.L167
	cmpl	$0, -32(%ebp)
	je	.L167
	cmpl	$0, -28(%ebp)
	je	.L167
	movl	-32(%ebp), %eax
	movzbl	8(%eax), %eax
	testb	%al, %al
	je	.L167
	movl	-28(%ebp), %eax
	movzbl	8(%eax), %eax
	testb	%al, %al
	jne	.L172
.L167:
	.loc 1 480 0
	movl	$1, -80(%ebp)
	jmp	.L173
.L172:
	.loc 1 484 0
	movl	-32(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$7, %al
	jne	.L174
	movl	-32(%ebp), %eax
	movzbl	38(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L174
	movl	-32(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L174
	.loc 1 486 0
	movl	-32(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -32(%ebp)
.L174:
	.loc 1 488 0
	movl	-28(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$7, %al
	jne	.L178
	movl	-28(%ebp), %eax
	movzbl	38(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L178
	movl	-28(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L178
	.loc 1 490 0
	movl	-28(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -28(%ebp)
.L178:
	.loc 1 495 0
	movl	-32(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$11, %al
	jne	.L182
	.loc 1 496 0
	movl	-32(%ebp), %eax
	movzbl	9(%eax), %eax
	shrb	$5, %al
	andl	$1, %eax
	movzbl	%al, %edx
	movl	-32(%ebp), %eax
	movzwl	36(%eax), %eax
	andw	$511, %ax
	movzwl	%ax, %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	c_common_type_for_size@PLT
	movl	%eax, -32(%ebp)
.L182:
	.loc 1 497 0
	movl	-28(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$11, %al
	jne	.L184
	.loc 1 498 0
	movl	-28(%ebp), %eax
	movzbl	9(%eax), %eax
	shrb	$5, %al
	andl	$1, %eax
	movzbl	%al, %edx
	movl	-28(%ebp), %eax
	movzwl	36(%eax), %eax
	andw	$511, %ax
	movzwl	%ax, %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	c_common_type_for_size@PLT
	movl	%eax, -28(%ebp)
.L184:
	.loc 1 500 0
	movl	-32(%ebp), %eax
	cmpl	-28(%ebp), %eax
	jne	.L186
	.loc 1 501 0
	movl	$1, -80(%ebp)
	jmp	.L173
.L186:
	.loc 1 505 0
	movl	-32(%ebp), %eax
	movzbl	8(%eax), %edx
	movl	-28(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	%al, %dl
	je	.L188
	movl	$0, -80(%ebp)
	jmp	.L173
.L188:
	.loc 1 509 0
	movl	-32(%ebp), %eax
	movzbl	9(%eax), %eax
	shrb	$4, %al
	andl	$1, %eax
	movzbl	%al, %edx
	movl	-32(%ebp), %eax
	movzbl	9(%eax), %eax
	shrb	$3, %al
	andl	$1, %eax
	movzbl	%al, %eax
	addl	%eax, %eax
	orl	%eax, %edx
	movl	-32(%ebp), %eax
	movzbl	38(%eax), %eax
	shrb	$5, %al
	andl	$1, %eax
	movzbl	%al, %eax
	sall	$2, %eax
	movl	%edx, %ecx
	orl	%eax, %ecx
	movl	%ecx, -76(%ebp)
	movl	-32(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	jne	.L190
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L190
	movl	$1, -72(%ebp)
	jmp	.L193
.L190:
	movl	$0, -72(%ebp)
.L193:
	movl	-72(%ebp), %eax
	sall	$3, %eax
	movl	-76(%ebp), %edx
	orl	%eax, %edx
	movl	%edx, -68(%ebp)
	movl	-28(%ebp), %eax
	movzbl	9(%eax), %eax
	shrb	$4, %al
	andl	$1, %eax
	movzbl	%al, %edx
	movl	-28(%ebp), %eax
	movzbl	9(%eax), %eax
	shrb	$3, %al
	andl	$1, %eax
	movzbl	%al, %eax
	addl	%eax, %eax
	orl	%eax, %edx
	movl	-28(%ebp), %eax
	movzbl	38(%eax), %eax
	shrb	$5, %al
	andl	$1, %eax
	movzbl	%al, %eax
	sall	$2, %eax
	movl	%edx, %ecx
	orl	%eax, %ecx
	movl	%ecx, -64(%ebp)
	movl	-28(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	jne	.L194
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L194
	movl	$1, -60(%ebp)
	jmp	.L197
.L194:
	movl	$0, -60(%ebp)
.L197:
	movl	-60(%ebp), %eax
	sall	$3, %eax
	orl	-64(%ebp), %eax
	cmpl	%eax, -68(%ebp)
	je	.L198
	.loc 1 510 0
	movl	$0, -80(%ebp)
	jmp	.L173
.L198:
	.loc 1 516 0
	movl	-32(%ebp), %eax
	movl	76(%eax), %edx
	movl	-28(%ebp), %eax
	movl	76(%eax), %eax
	cmpl	%eax, %edx
	jne	.L200
	.loc 1 517 0
	movl	$1, -80(%ebp)
	jmp	.L173
.L200:
	.loc 1 520 0
	movl	targetm@GOT(%ebx), %eax
	movl	188(%eax), %edx
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	movl	%eax, -24(%ebp)
	cmpl	$0, -24(%ebp)
	jne	.L202
	.loc 1 521 0
	movl	$0, -80(%ebp)
	jmp	.L173
.L202:
	.loc 1 524 0
	movl	$0, -20(%ebp)
	.loc 1 526 0
	movl	-32(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -56(%ebp)
	cmpl	$19, -56(%ebp)
	je	.L206
	cmpl	$19, -56(%ebp)
	ja	.L209
	cmpl	$14, -56(%ebp)
	je	.L205
	jmp	.L204
.L209:
	cmpl	$21, -56(%ebp)
	je	.L207
	cmpl	$24, -56(%ebp)
	je	.L208
	jmp	.L204
.L205:
	.loc 1 529 0
	movl	-32(%ebp), %eax
	movl	4(%eax), %edx
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	je	.L210
	movl	-28(%ebp), %eax
	movl	4(%eax), %edx
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	comptypes@PLT
	movl	%eax, -52(%ebp)
	jmp	.L212
.L210:
	movl	$1, -52(%ebp)
.L212:
	movl	-52(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 531 0
	jmp	.L204
.L208:
	.loc 1 534 0
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	function_types_compatible_p
	movl	%eax, -20(%ebp)
	.loc 1 535 0
	jmp	.L204
.L206:
.LBB8:
	.loc 1 539 0
	movl	-32(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 540 0
	movl	-28(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 543 0
	movl	$1, -20(%ebp)
	.loc 1 546 0
	movl	-32(%ebp), %eax
	movl	4(%eax), %edx
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	je	.L213
	movl	-28(%ebp), %eax
	movl	4(%eax), %edx
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	comptypes@PLT
	movl	%eax, -20(%ebp)
	cmpl	$0, -20(%ebp)
	jne	.L213
	.loc 1 548 0
	movl	$0, -80(%ebp)
	jmp	.L173
.L213:
	.loc 1 551 0
	cmpl	$0, -16(%ebp)
	je	.L204
	cmpl	$0, -12(%ebp)
	je	.L204
	movl	-16(%ebp), %eax
	cmpl	-12(%ebp), %eax
	je	.L204
	.loc 1 554 0
	movl	-16(%ebp), %eax
	movl	68(%eax), %eax
	testl	%eax, %eax
	sete	%al
	movb	%al, -6(%ebp)
	.loc 1 555 0
	movl	-12(%ebp), %eax
	movl	68(%eax), %eax
	testl	%eax, %eax
	sete	%al
	movb	%al, -5(%ebp)
	.loc 1 557 0
	movzbl	-6(%ebp), %eax
	xorl	$1, %eax
	xorl	$1, %eax
	testb	%al, %al
	jne	.L219
	movl	-16(%ebp), %eax
	movl	64(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	jne	.L221
	movl	-16(%ebp), %eax
	movl	68(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	je	.L219
.L221:
	movl	$1, -48(%ebp)
	jmp	.L223
.L219:
	movl	$0, -48(%ebp)
.L223:
	movzbl	-48(%ebp), %edx
	movb	%dl, -8(%ebp)
	.loc 1 560 0
	movzbl	-5(%ebp), %eax
	xorl	$1, %eax
	xorl	$1, %eax
	testb	%al, %al
	jne	.L224
	movl	-12(%ebp), %eax
	movl	64(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	jne	.L226
	movl	-12(%ebp), %eax
	movl	68(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	je	.L224
.L226:
	movl	$1, -44(%ebp)
	jmp	.L228
.L224:
	movl	$0, -44(%ebp)
.L228:
	movzbl	-44(%ebp), %ecx
	movb	%cl, -7(%ebp)
	.loc 1 564 0
	cmpb	$0, -8(%ebp)
	jne	.L204
	cmpb	$0, -7(%ebp)
	jne	.L204
	.loc 1 566 0
	cmpb	$0, -6(%ebp)
	je	.L231
	cmpb	$0, -5(%ebp)
	jne	.L204
.L231:
	.loc 1 568 0
	cmpb	$0, -6(%ebp)
	jne	.L233
	cmpb	$0, -5(%ebp)
	jne	.L233
	movl	-12(%ebp), %eax
	movl	64(%eax), %edx
	movl	-16(%ebp), %eax
	movl	64(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	tree_int_cst_equal@PLT
	testl	%eax, %eax
	je	.L233
	movl	-12(%ebp), %eax
	movl	68(%eax), %edx
	movl	-16(%ebp), %eax
	movl	68(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	tree_int_cst_equal@PLT
	testl	%eax, %eax
	jne	.L204
.L233:
	.loc 1 571 0
	movl	$0, -20(%ebp)
	.loc 1 573 0
	jmp	.L204
.L207:
.LBE8:
	.loc 1 577 0
	movl	flag_objc@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L204
	movl	$0, 8(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	objc_comptypes@PLT
	cmpl	$1, %eax
	jne	.L204
	.loc 1 578 0
	movl	$1, -20(%ebp)
.L204:
	.loc 1 584 0
	cmpl	$2, -24(%ebp)
	jne	.L240
	cmpl	$1, -20(%ebp)
	je	.L242
.L240:
	movl	-20(%ebp), %eax
	movl	%eax, -40(%ebp)
	jmp	.L243
.L242:
	movl	$2, -40(%ebp)
.L243:
	movl	-40(%ebp), %edx
	movl	%edx, -80(%ebp)
.L173:
	movl	-80(%ebp), %eax
	.loc 1 585 0
	addl	$100, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE20:
	.size	comptypes, .-comptypes
	.section	.rodata
	.align 4
.LC11:
	.string	"types are not quite compatible"
	.text
	.type	comp_target_types, @function
comp_target_types:
.LFB21:
	.loc 1 598 0
	pushl	%ebp
.LCFI24:
	movl	%esp, %ebp
.LCFI25:
	pushl	%ebx
.LCFI26:
	subl	$36, %esp
.LCFI27:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 602 0
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	objc_comptypes@PLT
	movl	%eax, -8(%ebp)
	cmpl	$0, -8(%ebp)
	js	.L246
	.loc 1 603 0
	movl	-8(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L248
.L246:
	.loc 1 605 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	76(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	76(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	comptypes@PLT
	movl	%eax, -8(%ebp)
	.loc 1 608 0
	cmpl	$2, -8(%ebp)
	jne	.L249
	movl	pedantic@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L249
	.loc 1 609 0
	leal	.LC11@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	pedwarn@PLT
.L249:
	.loc 1 610 0
	movl	-8(%ebp), %eax
	movl	%eax, -24(%ebp)
.L248:
	movl	-24(%ebp), %eax
	.loc 1 611 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE21:
	.size	comp_target_types, .-comp_target_types
	.type	function_types_compatible_p, @function
function_types_compatible_p:
.LFB22:
	.loc 1 625 0
	pushl	%ebp
.LCFI28:
	movl	%esp, %ebp
.LCFI29:
	pushl	%ebx
.LCFI30:
	subl	$36, %esp
.LCFI31:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 628 0
	movl	$1, -12(%ebp)
	.loc 1 631 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	je	.L254
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	comptypes@PLT
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	jne	.L254
	.loc 1 633 0
	movl	$0, -28(%ebp)
	jmp	.L257
.L254:
	.loc 1 635 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 636 0
	movl	12(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 641 0
	cmpl	$0, -20(%ebp)
	jne	.L258
	.loc 1 643 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	self_promoting_args_p@PLT
	testl	%eax, %eax
	jne	.L260
	.loc 1 644 0
	movl	$0, -28(%ebp)
	jmp	.L257
.L260:
	.loc 1 648 0
	movl	8(%ebp), %eax
	movl	80(%eax), %eax
	testl	%eax, %eax
	je	.L262
	movl	8(%ebp), %eax
	movl	80(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	type_lists_compatible_p
	cmpl	$1, %eax
	je	.L262
	.loc 1 650 0
	movl	$2, -12(%ebp)
.L262:
	.loc 1 651 0
	movl	-12(%ebp), %eax
	movl	%eax, -28(%ebp)
	jmp	.L257
.L258:
	.loc 1 653 0
	cmpl	$0, -16(%ebp)
	jne	.L265
	.loc 1 655 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	self_promoting_args_p@PLT
	testl	%eax, %eax
	jne	.L267
	.loc 1 656 0
	movl	$0, -28(%ebp)
	jmp	.L257
.L267:
	.loc 1 657 0
	movl	12(%ebp), %eax
	movl	80(%eax), %eax
	testl	%eax, %eax
	je	.L269
	movl	12(%ebp), %eax
	movl	80(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	type_lists_compatible_p
	cmpl	$1, %eax
	je	.L269
	.loc 1 659 0
	movl	$2, -12(%ebp)
.L269:
	.loc 1 660 0
	movl	-12(%ebp), %eax
	movl	%eax, -28(%ebp)
	jmp	.L257
.L265:
	.loc 1 664 0
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	type_lists_compatible_p
	movl	%eax, -8(%ebp)
	.loc 1 665 0
	cmpl	$1, -8(%ebp)
	je	.L272
	movl	-8(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L274
.L272:
	movl	-12(%ebp), %eax
	movl	%eax, -24(%ebp)
.L274:
	movl	-24(%ebp), %eax
	movl	%eax, -28(%ebp)
.L257:
	movl	-28(%ebp), %eax
	.loc 1 666 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE22:
	.size	function_types_compatible_p, .-function_types_compatible_p
	.type	type_lists_compatible_p, @function
type_lists_compatible_p:
.LFB23:
	.loc 1 675 0
	pushl	%ebp
.LCFI32:
	movl	%esp, %ebp
.LCFI33:
	pushl	%ebx
.LCFI34:
	subl	$36, %esp
.LCFI35:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 677 0
	movl	$1, -20(%ebp)
	.loc 1 678 0
	movl	$0, -16(%ebp)
.L277:
	.loc 1 682 0
	cmpl	$0, 8(%ebp)
	jne	.L278
	cmpl	$0, 12(%ebp)
	jne	.L278
	.loc 1 683 0
	movl	-20(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L281
.L278:
	.loc 1 686 0
	cmpl	$0, 8(%ebp)
	je	.L282
	cmpl	$0, 12(%ebp)
	jne	.L284
.L282:
	.loc 1 687 0
	movl	$0, -24(%ebp)
	jmp	.L281
.L284:
	.loc 1 692 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	jne	.L285
	.loc 1 694 0
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	c_type_promotes_to@PLT
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	cmpl	%eax, %edx
	je	.L289
	.loc 1 695 0
	movl	$0, -24(%ebp)
	jmp	.L281
.L285:
	.loc 1 697 0
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	jne	.L290
	.loc 1 699 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	c_type_promotes_to@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	cmpl	%eax, %edx
	je	.L289
	.loc 1 700 0
	movl	$0, -24(%ebp)
	jmp	.L281
.L290:
	.loc 1 702 0
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	76(%eax), %edx
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	76(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	comptypes@PLT
	movl	%eax, -16(%ebp)
	cmpl	$0, -16(%ebp)
	jne	.L289
	.loc 1 707 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	jne	.L295
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	60(%eax), %eax
	testl	%eax, %eax
	je	.L297
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	38(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L295
.L297:
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	20(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	jne	.L295
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	20(%eax), %edx
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	20(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	tree_int_cst_equal@PLT
	testl	%eax, %eax
	je	.L295
.LBB9:
	.loc 1 715 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 716 0
	jmp	.L301
.L302:
	.loc 1 717 0
	movl	12(%ebp), %eax
	movl	20(%eax), %edx
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	comptypes@PLT
	testl	%eax, %eax
	jne	.L303
	.loc 1 716 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
.L301:
	cmpl	$0, -12(%ebp)
	jne	.L302
.L303:
	.loc 1 719 0
	cmpl	$0, -12(%ebp)
	jne	.L289
	.loc 1 720 0
	movl	$0, -24(%ebp)
	jmp	.L281
.L295:
.LBE9:
	.loc 1 722 0
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	jne	.L307
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	60(%eax), %eax
	testl	%eax, %eax
	je	.L309
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	38(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L307
.L309:
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	20(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	jne	.L307
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	20(%eax), %edx
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	20(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	tree_int_cst_equal@PLT
	testl	%eax, %eax
	je	.L307
.LBB10:
	.loc 1 730 0
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 731 0
	jmp	.L313
.L314:
	.loc 1 732 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	comptypes@PLT
	testl	%eax, %eax
	jne	.L315
	.loc 1 731 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
.L313:
	cmpl	$0, -8(%ebp)
	jne	.L314
.L315:
	.loc 1 734 0
	cmpl	$0, -8(%ebp)
	jne	.L289
	.loc 1 735 0
	movl	$0, -24(%ebp)
	jmp	.L281
.L307:
.LBE10:
	.loc 1 738 0
	movl	$0, -24(%ebp)
	jmp	.L281
.L289:
	.loc 1 742 0
	movl	-16(%ebp), %eax
	cmpl	-20(%ebp), %eax
	jle	.L319
	.loc 1 743 0
	movl	-16(%ebp), %eax
	movl	%eax, -20(%ebp)
.L319:
	.loc 1 745 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%ebp)
	.loc 1 746 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%ebp)
	.loc 1 747 0
	jmp	.L277
.L281:
	movl	-24(%ebp), %eax
	.loc 1 748 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE23:
	.size	type_lists_compatible_p, .-type_lists_compatible_p
	.section	.rodata
	.align 4
.LC12:
	.string	"arithmetic on pointer to an incomplete type"
	.text
.globl c_size_in_bytes
	.type	c_size_in_bytes, @function
c_size_in_bytes:
.LFB24:
	.loc 1 755 0
	pushl	%ebp
.LCFI36:
	movl	%esp, %ebp
.LCFI37:
	pushl	%ebx
.LCFI38:
	subl	$36, %esp
.LCFI39:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 756 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -8(%ebp)
	.loc 1 758 0
	cmpl	$24, -8(%ebp)
	je	.L323
	cmpl	$6, -8(%ebp)
	je	.L323
	cmpl	$0, -8(%ebp)
	jne	.L326
.L323:
	.loc 1 759 0
	movl	global_trees@GOT(%ebx), %eax
	movl	64(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L327
.L326:
	.loc 1 761 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	jne	.L328
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$6, %al
	je	.L328
	.loc 1 763 0
	leal	.LC12@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 764 0
	movl	global_trees@GOT(%ebx), %eax
	movl	64(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L327
.L328:
	.loc 1 768 0
	movl	integer_types@GOT(%ebx), %eax
	movl	(%eax), %eax
	movzwl	36(%eax), %eax
	andw	$511, %ax
	movzwl	%ax, %edx
	movl	%edx, %eax
	sarl	$31, %eax
	shrl	$29, %eax
	addl	%edx, %eax
	sarl	$3, %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	$0, 8(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	size_int_wide@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$64, (%esp)
	call	size_binop@PLT
	movl	%eax, -24(%ebp)
.L327:
	movl	-24(%ebp), %eax
	.loc 1 771 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE24:
	.size	c_size_in_bytes, .-c_size_in_bytes
.globl decl_constant_value
	.type	decl_constant_value, @function
decl_constant_value:
.LFB25:
	.loc 1 778 0
	pushl	%ebp
.LCFI40:
	movl	%esp, %ebp
.LCFI41:
	subl	$4, %esp
.LCFI42:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 779 0
	movl	current_function_decl@GOT(%ecx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L333
	movl	8(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L333
	movl	8(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L333
	movl	8(%ebp), %eax
	movl	68(%eax), %eax
	testl	%eax, %eax
	je	.L333
	movl	8(%ebp), %eax
	movl	68(%eax), %eax
	movzbl	8(%eax), %eax
	testb	%al, %al
	je	.L333
	movl	8(%ebp), %eax
	movl	68(%eax), %eax
	movzbl	9(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L333
	movl	8(%ebp), %eax
	movl	68(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$47, %al
	je	.L333
	.loc 1 792 0
	movl	8(%ebp), %eax
	movl	68(%eax), %eax
	movl	%eax, -4(%ebp)
	jmp	.L341
.L333:
	.loc 1 793 0
	movl	8(%ebp), %eax
	movl	%eax, -4(%ebp)
.L341:
	movl	-4(%ebp), %eax
	.loc 1 794 0
	leave
	ret
.LFE25:
	.size	decl_constant_value, .-decl_constant_value
	.type	decl_constant_value_for_broken_optimization, @function
decl_constant_value_for_broken_optimization:
.LFB26:
	.loc 1 807 0
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
	.loc 1 808 0
	movl	pedantic@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L344
	movl	8(%ebp), %eax
	movzbl	32(%eax), %eax
	cmpb	$52, %al
	jne	.L346
.L344:
	.loc 1 809 0
	movl	8(%ebp), %eax
	movl	%eax, -8(%ebp)
	jmp	.L347
.L346:
	.loc 1 811 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	decl_constant_value@PLT
	movl	%eax, -8(%ebp)
.L347:
	movl	-8(%ebp), %eax
	.loc 1 812 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE26:
	.size	decl_constant_value_for_broken_optimization, .-decl_constant_value_for_broken_optimization
	.type	default_function_array_conversion, @function
default_function_array_conversion:
.LFB27:
	.loc 1 822 0
	pushl	%ebp
.LCFI47:
	movl	%esp, %ebp
.LCFI48:
	pushl	%ebx
.LCFI49:
	subl	$100, %esp
.LCFI50:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 824 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -44(%ebp)
	.loc 1 825 0
	movl	-44(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -40(%ebp)
	.loc 1 826 0
	movl	$0, -36(%ebp)
	.loc 1 833 0
	movl	8(%ebp), %eax
	movl	%eax, -48(%ebp)
	.loc 1 834 0
	jmp	.L350
.L351:
	.loc 1 838 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$118, %al
	jne	.L352
	.loc 1 839 0
	movl	$1, -36(%ebp)
.L352:
	.loc 1 840 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 8(%ebp)
.L350:
	.loc 1 834 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$118, %al
	je	.L351
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$117, %al
	jne	.L355
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	je	.L351
.L355:
	.loc 1 844 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$60, %al
	je	.L357
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$49, %al
	je	.L357
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$50, %al
	je	.L357
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$101, %al
	jne	.L361
.L357:
	.loc 1 845 0
	movl	-48(%ebp), %eax
	movl	16(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 16(%eax)
.L361:
	.loc 1 847 0
	cmpl	$24, -40(%ebp)
	jne	.L362
	.loc 1 849 0
	movl	$0, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$123, (%esp)
	call	build_unary_op@PLT
	movl	%eax, -76(%ebp)
	jmp	.L364
.L362:
	.loc 1 851 0
	cmpl	$19, -40(%ebp)
	jne	.L365
.LBB11:
	.loc 1 854 0
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 856 0
	movl	$0, -20(%ebp)
	.loc 1 857 0
	movl	$0, -16(%ebp)
	.loc 1 860 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$114, %al
	je	.L367
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$100, %al
	jne	.L369
.L367:
	.loc 1 862 0
	movl	8(%ebp), %eax
	movzbl	9(%eax), %eax
	shrb	$4, %al
	andl	$1, %eax
	movzbl	%al, %eax
	movl	%eax, -20(%ebp)
	.loc 1 863 0
	movl	8(%ebp), %eax
	movzbl	9(%eax), %eax
	shrb	$3, %al
	andl	$1, %eax
	movzbl	%al, %eax
	movl	%eax, -16(%ebp)
.L369:
	.loc 1 866 0
	movl	-44(%ebp), %eax
	movzbl	9(%eax), %eax
	shrb	$4, %al
	andl	$1, %eax
	movzbl	%al, %edx
	movl	-44(%ebp), %eax
	movzbl	9(%eax), %eax
	shrb	$3, %al
	andl	$1, %eax
	movzbl	%al, %eax
	addl	%eax, %eax
	orl	%eax, %edx
	movl	-44(%ebp), %eax
	movzbl	38(%eax), %eax
	shrb	$5, %al
	andl	$1, %eax
	movzbl	%al, %eax
	sall	$2, %eax
	movl	%edx, %ecx
	orl	%eax, %ecx
	movl	%ecx, -72(%ebp)
	movl	-44(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	jne	.L370
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L370
	movl	$1, -68(%ebp)
	jmp	.L373
.L370:
	movl	$0, -68(%ebp)
.L373:
	movl	-68(%ebp), %eax
	sall	$3, %eax
	orl	-72(%ebp), %eax
	testl	%eax, %eax
	jne	.L374
	cmpl	$0, -20(%ebp)
	jne	.L374
	cmpl	$0, -16(%ebp)
	je	.L377
.L374:
	.loc 1 867 0
	movl	-44(%ebp), %eax
	movzbl	9(%eax), %eax
	shrb	$4, %al
	andl	$1, %eax
	movzbl	%al, %edx
	movl	-44(%ebp), %eax
	movzbl	9(%eax), %eax
	shrb	$3, %al
	andl	$1, %eax
	movzbl	%al, %eax
	addl	%eax, %eax
	orl	%eax, %edx
	movl	-44(%ebp), %eax
	movzbl	38(%eax), %eax
	shrb	$5, %al
	andl	$1, %eax
	movzbl	%al, %eax
	sall	$2, %eax
	movl	%edx, %ecx
	orl	%eax, %ecx
	movl	%ecx, -64(%ebp)
	movl	-44(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	jne	.L378
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L378
	movl	$1, -60(%ebp)
	jmp	.L381
.L378:
	movl	$0, -60(%ebp)
.L381:
	movl	-60(%ebp), %eax
	sall	$3, %eax
	orl	-64(%ebp), %eax
	movl	%eax, %edx
	orl	-20(%ebp), %edx
	movl	-16(%ebp), %eax
	addl	%eax, %eax
	orl	%edx, %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	c_build_qualified_type@PLT
	movl	%eax, -28(%ebp)
.L377:
	.loc 1 873 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$42, %al
	jne	.L382
	.loc 1 874 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	-28(%ebp), %eax
	movl	48(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, -76(%ebp)
	jmp	.L364
.L382:
	.loc 1 877 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$48, %al
	jne	.L384
.LBB12:
	.loc 1 879 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, (%esp)
	call	default_conversion@PLT
	movl	%eax, -8(%ebp)
	.loc 1 880 0
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
	movl	%eax, -76(%ebp)
	jmp	.L364
.L384:
.LBE12:
	.loc 1 884 0
	cmpl	$0, -36(%ebp)
	jne	.L386
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	lvalue_p@PLT
	testl	%eax, %eax
	je	.L386
	movl	$1, -56(%ebp)
	jmp	.L389
.L386:
	movl	$0, -56(%ebp)
.L389:
	movl	-56(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 885 0
	movl	flag_isoc99@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L390
	cmpl	$0, -12(%ebp)
	jne	.L390
	.loc 1 891 0
	movl	8(%ebp), %ecx
	movl	%ecx, -76(%ebp)
	jmp	.L364
.L390:
	.loc 1 894 0
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	build_pointer_type@PLT
	movl	%eax, -24(%ebp)
	.loc 1 896 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$35, %al
	jne	.L393
	.loc 1 902 0
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$123, (%esp)
	call	build1@PLT
	movl	%eax, -32(%ebp)
	.loc 1 903 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	c_mark_addressable@PLT
	xorl	$1, %eax
	testb	%al, %al
	je	.L395
	.loc 1 904 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -76(%ebp)
	jmp	.L364
.L395:
	.loc 1 905 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	staticp@PLT
	andl	$1, %eax
	movl	-32(%ebp), %ecx
	andl	$1, %eax
	leal	(%eax,%eax), %edx
	movzbl	9(%ecx), %eax
	andl	$-3, %eax
	orl	%edx, %eax
	movb	%al, 9(%ecx)
	.loc 1 906 0
	movl	-32(%ebp), %edx
	movzbl	9(%edx), %eax
	andl	$-2, %eax
	movb	%al, 9(%edx)
	.loc 1 907 0
	movl	-32(%ebp), %eax
	movl	%eax, -76(%ebp)
	jmp	.L364
.L393:
	.loc 1 911 0
	movl	$1, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$123, (%esp)
	call	build_unary_op@PLT
	movl	%eax, -32(%ebp)
	.loc 1 912 0
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, -76(%ebp)
	jmp	.L364
.L365:
.LBE11:
	.loc 1 914 0
	movl	8(%ebp), %ecx
	movl	%ecx, -76(%ebp)
.L364:
	movl	-76(%ebp), %eax
	.loc 1 915 0
	addl	$100, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE27:
	.size	default_function_array_conversion, .-default_function_array_conversion
	.section	.rodata
	.align 4
.LC13:
	.string	"void value not ignored as it ought to be"
	.text
.globl default_conversion
	.type	default_conversion, @function
default_conversion:
.LFB28:
	.loc 1 925 0
	pushl	%ebp
.LCFI51:
	movl	%esp, %ebp
.LCFI52:
	pushl	%ebx
.LCFI53:
	subl	$52, %esp
.LCFI54:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 927 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 928 0
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -8(%ebp)
	.loc 1 930 0
	cmpl	$24, -8(%ebp)
	je	.L399
	cmpl	$19, -8(%ebp)
	jne	.L401
.L399:
	.loc 1 931 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	default_function_array_conversion
	movl	%eax, -36(%ebp)
	jmp	.L402
.L401:
	.loc 1 934 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$33, %al
	jne	.L403
	.loc 1 935 0
	movl	8(%ebp), %eax
	movl	68(%eax), %eax
	movl	%eax, 8(%ebp)
	jmp	.L405
.L403:
	.loc 1 940 0
	movl	optimize@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L405
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$35, %al
	jne	.L405
	cmpl	$19, -8(%ebp)
	je	.L405
	.loc 1 942 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	decl_constant_value_for_broken_optimization
	movl	%eax, 8(%ebp)
	.loc 1 943 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
.L405:
	.loc 1 951 0
	movl	8(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 952 0
	jmp	.L409
.L410:
	.loc 1 955 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 8(%ebp)
.L409:
	.loc 1 952 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$118, %al
	je	.L410
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$117, %al
	jne	.L412
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	je	.L410
.L412:
	.loc 1 958 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$60, %al
	je	.L414
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$49, %al
	je	.L414
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$50, %al
	je	.L414
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$101, %al
	jne	.L418
.L414:
	.loc 1 959 0
	movl	-16(%ebp), %eax
	movl	16(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 16(%eax)
.L418:
	.loc 1 963 0
	cmpl	$11, -8(%ebp)
	jne	.L419
	.loc 1 965 0
	movl	-12(%ebp), %eax
	movzwl	36(%eax), %eax
	andw	$511, %ax
	movzwl	%ax, %edx
	movl	integer_types@GOT(%ebx), %eax
	movl	20(%eax), %eax
	movzwl	36(%eax), %eax
	andw	$511, %ax
	movzwl	%ax, %eax
	cmpl	%eax, %edx
	jl	.L421
	movl	-12(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L421
	movl	$1, -32(%ebp)
	jmp	.L424
.L421:
	movl	$0, -32(%ebp)
.L424:
	movl	integer_types@GOT(%ebx), %eax
	movl	20(%eax), %eax
	movzwl	36(%eax), %eax
	andw	$511, %ax
	movzwl	%ax, %edx
	movl	-12(%ebp), %eax
	movzwl	36(%eax), %eax
	andw	$511, %ax
	movzwl	%ax, %eax
	movl	%eax, -28(%ebp)
	movl	%edx, -24(%ebp)
	movl	-28(%ebp), %eax
	cmpl	%eax, -24(%ebp)
	jge	.L425
	movl	-28(%ebp), %edx
	movl	%edx, -24(%ebp)
.L425:
	movl	-24(%ebp), %eax
	movl	-32(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	c_common_type_for_size@PLT
	movl	%eax, -12(%ebp)
	.loc 1 971 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, -36(%ebp)
	jmp	.L402
.L419:
	.loc 1 974 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$40, %al
	jne	.L426
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movzbl	38(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L426
	movl	integer_types@GOT(%ebx), %eax
	movl	20(%eax), %eax
	movzwl	36(%eax), %ecx
	andw	$511, %cx
	movzwl	%cx, %eax
	movl	$0, %edx
	movl	8(%ebp), %ecx
	movl	24(%ecx), %ecx
	movl	28(%ecx), %ecx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	%ecx, (%esp)
	call	compare_tree_int@PLT
	testl	%eax, %eax
	jns	.L426
	.loc 1 980 0
	movl	integer_types@GOT(%ebx), %eax
	movl	20(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	convert@PLT
	movl	%eax, -36(%ebp)
	jmp	.L402
.L426:
	.loc 1 982 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	c_promoting_integer_type_p@PLT
	testb	%al, %al
	je	.L430
	.loc 1 985 0
	movl	-12(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L432
	movl	-12(%ebp), %eax
	movzwl	36(%eax), %edx
	andw	$511, %dx
	movl	integer_types@GOT(%ebx), %eax
	movl	20(%eax), %eax
	movzwl	36(%eax), %eax
	andw	$511, %ax
	cmpw	%ax, %dx
	jne	.L432
	.loc 1 987 0
	movl	integer_types@GOT(%ebx), %eax
	movl	24(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	convert@PLT
	movl	%eax, -36(%ebp)
	jmp	.L402
.L432:
	.loc 1 989 0
	movl	integer_types@GOT(%ebx), %eax
	movl	20(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	convert@PLT
	movl	%eax, -36(%ebp)
	jmp	.L402
.L430:
	.loc 1 992 0
	cmpl	$6, -8(%ebp)
	jne	.L435
	.loc 1 994 0
	leal	.LC13@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 995 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -36(%ebp)
	jmp	.L402
.L435:
	.loc 1 997 0
	movl	8(%ebp), %eax
	movl	%eax, -36(%ebp)
.L402:
	movl	-36(%ebp), %eax
	.loc 1 998 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE28:
	.size	default_conversion, .-default_conversion
	.type	lookup_field, @function
lookup_field:
.LFB29:
	.loc 1 1012 0
	pushl	%ebp
.LCFI55:
	movl	%esp, %ebp
.LCFI56:
	pushl	%ebx
.LCFI57:
	subl	$52, %esp
.LCFI58:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1013 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -36(%ebp)
	.loc 1 1021 0
	movl	-36(%ebp), %eax
	movl	96(%eax), %eax
	testl	%eax, %eax
	je	.L439
.LBB13:
	.loc 1 1024 0
	movl	-36(%ebp), %eax
	movl	96(%eax), %eax
	addl	$4, %eax
	movl	%eax, -16(%ebp)
	.loc 1 1026 0
	movl	-36(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 1027 0
	movl	$0, -28(%ebp)
	.loc 1 1028 0
	movl	-36(%ebp), %eax
	movl	96(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 1029 0
	jmp	.L475
.L442:
	.loc 1 1031 0
	movl	-28(%ebp), %edx
	movl	-24(%ebp), %eax
	subl	%edx, %eax
	addl	$1, %eax
	sarl	%eax
	movl	%eax, -20(%ebp)
	.loc 1 1032 0
	movl	-20(%ebp), %eax
	addl	-28(%ebp), %eax
	sall	$2, %eax
	addl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 1034 0
	movl	-32(%ebp), %eax
	movl	52(%eax), %eax
	testl	%eax, %eax
	jne	.L443
	.loc 1 1037 0
	jmp	.L474
.L446:
	.loc 1 1039 0
	movl	-28(%ebp), %eax
	sall	$2, %eax
	addl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
	addl	$1, -28(%ebp)
	.loc 1 1040 0
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	je	.L447
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	jne	.L445
.L447:
.LBB14:
	.loc 1 1043 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	lookup_field
	movl	%eax, -12(%ebp)
	.loc 1 1045 0
	cmpl	$0, -12(%ebp)
	je	.L445
	.loc 1 1046 0
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	tree_cons@PLT
	movl	%eax, -40(%ebp)
	jmp	.L450
.L445:
.L474:
.LBE14:
	.loc 1 1037 0
	movl	-28(%ebp), %eax
	sall	$2, %eax
	addl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	52(%eax), %eax
	testl	%eax, %eax
	je	.L446
	.loc 1 1051 0
	movl	-28(%ebp), %eax
	cmpl	-24(%ebp), %eax
	jle	.L441
	.loc 1 1052 0
	movl	$0, -40(%ebp)
	jmp	.L450
.L443:
	.loc 1 1058 0
	movl	-32(%ebp), %eax
	movl	52(%eax), %eax
	cmpl	12(%ebp), %eax
	je	.L454
	.loc 1 1060 0
	movl	-32(%ebp), %eax
	movl	52(%eax), %eax
	cmpl	12(%ebp), %eax
	jae	.L456
	.loc 1 1061 0
	movl	-20(%ebp), %eax
	addl	%eax, -28(%ebp)
	jmp	.L441
.L456:
	.loc 1 1063 0
	movl	-20(%ebp), %eax
	addl	-28(%ebp), %eax
	movl	%eax, -24(%ebp)
.L441:
.L475:
	.loc 1 1029 0
	movl	-28(%ebp), %eax
	movl	-24(%ebp), %edx
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	cmpl	$1, %eax
	jg	.L442
.L454:
	.loc 1 1066 0
	movl	-28(%ebp), %eax
	sall	$2, %eax
	addl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	52(%eax), %eax
	cmpl	12(%ebp), %eax
	jne	.L458
	.loc 1 1067 0
	movl	-28(%ebp), %eax
	sall	$2, %eax
	addl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
	jmp	.L462
.L458:
	.loc 1 1068 0
	movl	-32(%ebp), %eax
	movl	52(%eax), %eax
	cmpl	12(%ebp), %eax
	je	.L462
	.loc 1 1069 0
	movl	$0, -40(%ebp)
	jmp	.L450
.L439:
.LBE13:
	.loc 1 1073 0
	movl	-36(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -32(%ebp)
	jmp	.L463
.L464:
	.loc 1 1075 0
	movl	-32(%ebp), %eax
	movl	52(%eax), %eax
	testl	%eax, %eax
	jne	.L465
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	je	.L467
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	jne	.L465
.L467:
.LBB15:
	.loc 1 1079 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	lookup_field
	movl	%eax, -8(%ebp)
	.loc 1 1081 0
	cmpl	$0, -8(%ebp)
	je	.L465
	.loc 1 1082 0
	movl	-8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	tree_cons@PLT
	movl	%eax, -40(%ebp)
	jmp	.L450
.L465:
.LBE15:
	.loc 1 1085 0
	movl	-32(%ebp), %eax
	movl	52(%eax), %eax
	cmpl	12(%ebp), %eax
	je	.L470
	.loc 1 1073 0
	movl	-32(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
.L463:
	cmpl	$0, -32(%ebp)
	jne	.L464
.L470:
	.loc 1 1089 0
	cmpl	$0, -32(%ebp)
	jne	.L462
	.loc 1 1090 0
	movl	$0, -40(%ebp)
	jmp	.L450
.L462:
	.loc 1 1093 0
	movl	$0, 8(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	tree_cons@PLT
	movl	%eax, -40(%ebp)
.L450:
	movl	-40(%ebp), %eax
	.loc 1 1094 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE29:
	.size	lookup_field, .-lookup_field
	.section	.rodata
.LC14:
	.string	"structure"
.LC15:
	.string	"%s has no member named `%s'"
	.align 4
.LC16:
	.string	"request for member `%s' in something not a structure or union"
	.text
.globl build_component_ref
	.type	build_component_ref, @function
build_component_ref:
.LFB30:
	.loc 1 1102 0
	pushl	%ebp
.LCFI59:
	movl	%esp, %ebp
.LCFI60:
	pushl	%ebx
.LCFI61:
	subl	$68, %esp
.LCFI62:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1103 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 1104 0
	movl	-28(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -24(%ebp)
	.loc 1 1105 0
	movl	$0, -20(%ebp)
	.loc 1 1116 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	cmpl	$48, %eax
	je	.L478
	jmp	.L477
.L478:
.LBB16:
	.loc 1 1120 0
	movl	8(%ebp), %eax
	movl	24(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	build_component_ref@PLT
	movl	%eax, -12(%ebp)
	.loc 1 1121 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	pedantic_non_lvalue@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	20(%eax), %ecx
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$48, (%esp)
	call	build@PLT
	movl	%eax, -48(%ebp)
	jmp	.L479
.L477:
.LBE16:
	.loc 1 1130 0
	cmpl	$21, -24(%ebp)
	je	.L480
	cmpl	$22, -24(%ebp)
	jne	.L482
.L480:
	.loc 1 1132 0
	movl	-28(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	jne	.L483
	.loc 1 1134 0
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	c_incomplete_type_error@PLT
	.loc 1 1135 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -48(%ebp)
	jmp	.L479
.L483:
	.loc 1 1138 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	lookup_field
	movl	%eax, -20(%ebp)
	.loc 1 1140 0
	cmpl	$0, -20(%ebp)
	jne	.L485
	.loc 1 1142 0
	movl	12(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -44(%ebp)
	cmpl	$21, -24(%ebp)
	jne	.L487
	leal	.LC14@GOTOFF(%ebx), %eax
	movl	%eax, -40(%ebp)
	jmp	.L489
.L487:
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, -40(%ebp)
.L489:
	movl	-44(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC15@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 1145 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -48(%ebp)
	jmp	.L479
.L485:
.LBB17:
	.loc 1 1155 0
	movl	-20(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 1157 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jne	.L490
	.loc 1 1158 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -48(%ebp)
	jmp	.L479
.L490:
	.loc 1 1160 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$40, (%esp)
	call	build@PLT
	movl	%eax, -16(%ebp)
	.loc 1 1161 0
	movl	8(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	jne	.L492
	movl	-8(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L494
.L492:
	.loc 1 1162 0
	movl	-16(%ebp), %eax
	movzbl	9(%eax), %edx
	orl	$16, %edx
	movb	%dl, 9(%eax)
.L494:
	.loc 1 1163 0
	movl	8(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L495
	movl	-8(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L497
.L495:
	.loc 1 1164 0
	movl	-16(%ebp), %eax
	movzbl	9(%eax), %edx
	orl	$8, %edx
	movb	%dl, 9(%eax)
.L497:
	.loc 1 1166 0
	movl	-8(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$-128, %eax
	testb	%al, %al
	je	.L498
	.loc 1 1167 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	warn_deprecated_use@PLT
.L498:
	.loc 1 1169 0
	movl	-16(%ebp), %eax
	movl	%eax, 8(%ebp)
	.loc 1 1171 0
	movl	-20(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
.LBE17:
	.loc 1 1173 0
	cmpl	$0, -20(%ebp)
	jne	.L485
	.loc 1 1175 0
	movl	-16(%ebp), %eax
	movl	%eax, -48(%ebp)
	jmp	.L479
.L482:
	.loc 1 1177 0
	cmpl	$0, -24(%ebp)
	je	.L501
	.loc 1 1178 0
	movl	12(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC16@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L501:
	.loc 1 1181 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -48(%ebp)
.L479:
	movl	-48(%ebp), %eax
	.loc 1 1182 0
	addl	$68, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE30:
	.size	build_component_ref, .-build_component_ref
	.section	.rodata
	.align 4
.LC17:
	.string	"dereferencing pointer to incomplete type"
	.align 4
.LC18:
	.string	"dereferencing `void *' pointer"
.LC19:
	.string	"invalid type argument of `%s'"
	.text
.globl build_indirect_ref
	.type	build_indirect_ref, @function
build_indirect_ref:
.LFB31:
	.loc 1 1192 0
	pushl	%ebp
.LCFI63:
	movl	%esp, %ebp
.LCFI64:
	pushl	%ebx
.LCFI65:
	subl	$36, %esp
.LCFI66:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1193 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	default_conversion@PLT
	movl	%eax, -20(%ebp)
	.loc 1 1194 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 1196 0
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L505
	.loc 1 1198 0
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$123, %al
	jne	.L507
	movl	flag_volatile@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L507
	movl	-20(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %edx
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	jne	.L507
	.loc 1 1202 0
	movl	-20(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L511
.L507:
.LBB18:
	.loc 1 1205 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1206 0
	movl	-12(%ebp), %eax
	movl	76(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$42, (%esp)
	call	build1@PLT
	movl	%eax, -8(%ebp)
	.loc 1 1208 0
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	jne	.L512
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$6, %al
	je	.L512
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$19, %al
	je	.L512
	.loc 1 1210 0
	leal	.LC17@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 1211 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L511
.L512:
	.loc 1 1213 0
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$6, %al
	jne	.L516
	movl	skip_evaluation@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L516
	.loc 1 1214 0
	leal	.LC18@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
.L516:
	.loc 1 1223 0
	movl	-12(%ebp), %eax
	movzbl	9(%eax), %eax
	shrb	$4, %al
	andl	$1, %eax
	movl	-8(%ebp), %ecx
	andl	$1, %eax
	movl	%eax, %edx
	sall	$4, %edx
	movzbl	9(%ecx), %eax
	andl	$-17, %eax
	orl	%edx, %eax
	movb	%al, 9(%ecx)
	.loc 1 1224 0
	movl	-12(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L519
	movl	-20(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L519
	movl	flag_volatile@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L522
.L519:
	movl	$1, -24(%ebp)
	jmp	.L523
.L522:
	movl	$0, -24(%ebp)
.L523:
	movzbl	-24(%ebp), %eax
	andl	$1, %eax
	movl	-8(%ebp), %edx
	movl	%eax, %ecx
	andl	$1, %ecx
	movzbl	9(%edx), %eax
	andl	$-2, %eax
	orl	%ecx, %eax
	movb	%al, 9(%edx)
	.loc 1 1226 0
	movl	-12(%ebp), %eax
	movzbl	9(%eax), %eax
	shrb	$3, %al
	andl	$1, %eax
	movl	-8(%ebp), %ecx
	andl	$1, %eax
	leal	0(,%eax,8), %edx
	movzbl	9(%ecx), %eax
	andl	$-9, %eax
	orl	%edx, %eax
	movb	%al, 9(%ecx)
	.loc 1 1227 0
	movl	-8(%ebp), %eax
	movl	%eax, -28(%ebp)
	jmp	.L511
.L505:
.LBE18:
	.loc 1 1230 0
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	testb	%al, %al
	je	.L524
	.loc 1 1231 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC19@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L524:
	.loc 1 1232 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
.L511:
	movl	-28(%ebp), %eax
	.loc 1 1233 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE31:
	.size	build_indirect_ref, .-build_indirect_ref
	.section	.rodata
	.align 4
.LC20:
	.string	"subscript missing in array reference"
	.align 4
.LC21:
	.string	"array subscript has type `char'"
	.align 4
.LC22:
	.string	"array subscript is not an integer"
	.align 4
.LC23:
	.string	"ISO C forbids subscripting `register' array"
	.align 4
.LC24:
	.string	"ISO C90 forbids subscripting non-lvalue array"
.LC25:
	.string	"subscript has type `char'"
	.align 4
.LC26:
	.string	"subscripted value is neither array nor pointer"
.LC27:
	.string	"array indexing"
	.text
.globl build_array_ref
	.type	build_array_ref, @function
build_array_ref:
.LFB32:
	.loc 1 1247 0
	pushl	%ebp
.LCFI67:
	movl	%esp, %ebp
.LCFI68:
	pushl	%ebx
.LCFI69:
	subl	$52, %esp
.LCFI70:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1248 0
	cmpl	$0, 12(%ebp)
	jne	.L528
	.loc 1 1250 0
	leal	.LC20@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 1251 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -40(%ebp)
	jmp	.L530
.L528:
	.loc 1 1254 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	je	.L531
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jne	.L533
.L531:
	.loc 1 1256 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -40(%ebp)
	jmp	.L530
.L533:
	.loc 1 1258 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$19, %al
	jne	.L534
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$42, %al
	je	.L534
.LBB19:
	.loc 1 1269 0
	movl	warn_char_subscripts@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L537
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	76(%eax), %edx
	movl	integer_types@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jne	.L537
	.loc 1 1271 0
	leal	.LC21@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
.L537:
	.loc 1 1274 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	default_conversion@PLT
	movl	%eax, 12(%ebp)
	.loc 1 1277 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$7, %al
	je	.L540
	.loc 1 1279 0
	leal	.LC22@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 1280 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -40(%ebp)
	jmp	.L530
.L540:
	.loc 1 1287 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	jne	.L542
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L544
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	20(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	je	.L544
.L542:
	.loc 1 1291 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	c_mark_addressable@PLT
	xorl	$1, %eax
	testb	%al, %al
	je	.L544
	.loc 1 1292 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -40(%ebp)
	jmp	.L530
.L544:
	.loc 1 1298 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	jne	.L547
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L547
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	int_fits_type_p@PLT
	testl	%eax, %eax
	jne	.L547
	.loc 1 1302 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	c_mark_addressable@PLT
	xorl	$1, %eax
	testb	%al, %al
	je	.L547
	.loc 1 1303 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -40(%ebp)
	jmp	.L530
.L547:
	.loc 1 1306 0
	movl	pedantic@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L552
.LBB20:
	.loc 1 1308 0
	movl	8(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 1309 0
	jmp	.L554
.L555:
	.loc 1 1310 0
	movl	-20(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -20(%ebp)
.L554:
	.loc 1 1309 0
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$40, %al
	je	.L555
	.loc 1 1311 0
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$35, %al
	jne	.L557
	movl	-20(%ebp), %eax
	movzbl	33(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L557
	.loc 1 1312 0
	leal	.LC23@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	pedwarn@PLT
	.loc 1 1311 0
	jmp	.L552
.L557:
	.loc 1 1313 0
	movl	flag_isoc99@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L552
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	lvalue_p@PLT
	testl	%eax, %eax
	jne	.L552
	.loc 1 1314 0
	leal	.LC24@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	pedwarn@PLT
.L552:
.LBE20:
	.loc 1 1317 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	76(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 1318 0
	movl	12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$44, (%esp)
	call	build@PLT
	movl	%eax, -28(%ebp)
	.loc 1 1321 0
	movl	-28(%ebp), %eax
	movzbl	9(%eax), %eax
	shrb	$4, %al
	andl	$1, %eax
	movl	%eax, %ecx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movzbl	9(%eax), %eax
	shrb	$4, %al
	andl	$1, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movzbl	9(%eax), %eax
	shrb	$4, %al
	andl	$1, %eax
	orl	%edx, %eax
	orl	%ecx, %eax
	andl	$1, %eax
	movl	-28(%ebp), %ecx
	andl	$1, %eax
	movl	%eax, %edx
	sall	$4, %edx
	movzbl	9(%ecx), %eax
	andl	$-17, %eax
	orl	%edx, %eax
	movb	%al, 9(%ecx)
	.loc 1 1324 0
	movl	-28(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$1, %eax
	movl	%eax, %ecx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movzbl	9(%eax), %eax
	shrb	$3, %al
	andl	$1, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$1, %eax
	orl	%edx, %eax
	orl	%ecx, %eax
	andl	$1, %eax
	movl	-28(%ebp), %edx
	movl	%eax, %ecx
	andl	$1, %ecx
	movzbl	9(%edx), %eax
	andl	$-2, %eax
	orl	%ecx, %eax
	movb	%al, 9(%edx)
	.loc 1 1327 0
	movl	-28(%ebp), %eax
	movzbl	9(%eax), %eax
	shrb	$3, %al
	andl	$1, %eax
	movl	%eax, %ecx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movzbl	9(%eax), %eax
	shrb	$3, %al
	andl	$1, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movzbl	9(%eax), %eax
	shrb	$3, %al
	andl	$1, %eax
	orl	%edx, %eax
	orl	%ecx, %eax
	andl	$1, %eax
	movl	-28(%ebp), %ecx
	andl	$1, %eax
	leal	0(,%eax,8), %edx
	movzbl	9(%ecx), %eax
	andl	$-9, %eax
	orl	%edx, %eax
	movb	%al, 9(%ecx)
	.loc 1 1334 0
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, (%esp)
	call	require_complete_type@PLT
	movl	%eax, -40(%ebp)
	jmp	.L530
.L534:
.LBE19:
.LBB21:
	.loc 1 1338 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	default_conversion@PLT
	movl	%eax, -16(%ebp)
	.loc 1 1339 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	default_conversion@PLT
	movl	%eax, -12(%ebp)
	.loc 1 1344 0
	movl	warn_char_subscripts@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L562
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$7, %al
	jne	.L562
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	76(%eax), %edx
	movl	integer_types@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jne	.L562
	.loc 1 1347 0
	leal	.LC25@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
.L562:
	.loc 1 1350 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$7, %al
	jne	.L566
.LBB22:
	.loc 1 1352 0
	movl	-16(%ebp), %eax
	movl	%eax, -8(%ebp)
	.loc 1 1353 0
	movl	-12(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 1354 0
	movl	-8(%ebp), %eax
	movl	%eax, -12(%ebp)
.L566:
.LBE22:
	.loc 1 1357 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-16(%ebp), %eax
	jne	.L568
	.loc 1 1358 0
	movl	-16(%ebp), %eax
	movl	%eax, -40(%ebp)
	jmp	.L530
.L568:
	.loc 1 1360 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L570
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$24, %al
	jne	.L572
.L570:
	.loc 1 1363 0
	leal	.LC26@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 1364 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -40(%ebp)
	jmp	.L530
.L572:
	.loc 1 1366 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$7, %al
	je	.L573
	.loc 1 1368 0
	leal	.LC22@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 1369 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -40(%ebp)
	jmp	.L530
.L573:
	.loc 1 1372 0
	movl	$0, 12(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$60, (%esp)
	call	build_binary_op@PLT
	movl	%eax, %edx
	leal	.LC27@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	build_indirect_ref@PLT
	movl	%eax, -40(%ebp)
.L530:
	movl	-40(%ebp), %eax
.LBE21:
	.loc 1 1375 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE32:
	.size	build_array_ref, .-build_array_ref
	.section	.rodata
	.align 4
.LC28:
	.string	"`%s' undeclared here (not in a function)"
	.align 4
.LC29:
	.string	"`%s' undeclared (first use in this function)"
	.align 4
.LC30:
	.string	"(Each undeclared identifier is reported only once"
	.align 4
.LC31:
	.string	"for each function it appears in.)"
	.align 4
.LC32:
	.string	"local declaration of `%s' hides instance variable"
	.text
.globl build_external_ref
	.type	build_external_ref, @function
build_external_ref:
.LFB33:
	.loc 1 1383 0
	pushl	%ebp
.LCFI71:
	movl	%esp, %ebp
.LCFI72:
	pushl	%ebx
.LCFI73:
	subl	$36, %esp
.LCFI74:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1385 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	lookup_name@PLT
	movl	%eax, -16(%ebp)
	.loc 1 1386 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	lookup_objc_ivar@PLT
	movl	%eax, -12(%ebp)
	.loc 1 1388 0
	cmpl	$0, -16(%ebp)
	je	.L577
	movl	-16(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$-128, %eax
	testb	%al, %al
	je	.L577
	.loc 1 1389 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	warn_deprecated_use@PLT
.L577:
	.loc 1 1391 0
	cmpl	$0, -16(%ebp)
	je	.L580
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-16(%ebp), %eax
	je	.L580
	movl	-16(%ebp), %eax
	movzbl	38(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L583
.L580:
	.loc 1 1393 0
	cmpl	$0, -12(%ebp)
	je	.L584
	.loc 1 1394 0
	movl	-12(%ebp), %eax
	movl	%eax, -20(%ebp)
	jmp	.L601
.L584:
	.loc 1 1395 0
	cmpl	$0, 12(%ebp)
	je	.L587
	.loc 1 1397 0
	cmpl	$0, -16(%ebp)
	je	.L589
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-16(%ebp), %eax
	jne	.L591
.L589:
	.loc 1 1399 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	implicitly_declare@PLT
	movl	%eax, -20(%ebp)
	.loc 1 1397 0
	jmp	.L601
.L591:
	.loc 1 1405 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	implicit_decl_warning@PLT
	.loc 1 1408 0
	movl	-16(%ebp), %edx
	movzbl	38(%edx), %eax
	andl	$-2, %eax
	movb	%al, 38(%edx)
	.loc 1 1409 0
	movl	-16(%ebp), %eax
	movl	%eax, -20(%ebp)
	jmp	.L601
.L587:
	.loc 1 1416 0
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L593
	.loc 1 1417 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC28@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	jmp	.L595
.L593:
	.loc 1 1421 0
	movl	8(%ebp), %eax
	movl	40(%eax), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jne	.L596
	movl	8(%ebp), %eax
	movl	56(%eax), %edx
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	je	.L598
.L596:
	.loc 1 1424 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC29@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 1427 0
	movl	undeclared_variable_notice@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L598
	.loc 1 1429 0
	leal	.LC30@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 1430 0
	leal	.LC31@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 1431 0
	movl	$1, undeclared_variable_notice@GOTOFF(%ebx)
.L598:
	.loc 1 1434 0
	movl	8(%ebp), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 40(%edx)
	.loc 1 1435 0
	movl	8(%ebp), %edx
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 56(%edx)
.L595:
	.loc 1 1437 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L600
.L583:
	.loc 1 1443 0
	cmpl	$0, -12(%ebp)
	jne	.L602
	.loc 1 1444 0
	movl	-16(%ebp), %eax
	movl	%eax, -20(%ebp)
	jmp	.L601
.L602:
	.loc 1 1445 0
	movl	-16(%ebp), %eax
	cmpl	-12(%ebp), %eax
	je	.L604
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	testl	%eax, %eax
	je	.L604
	.loc 1 1447 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC32@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
	.loc 1 1449 0
	movl	-16(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 1445 0
	jmp	.L601
.L604:
	.loc 1 1452 0
	movl	-12(%ebp), %eax
	movl	%eax, -20(%ebp)
.L601:
	.loc 1 1455 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jne	.L607
	.loc 1 1456 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L600
.L607:
	.loc 1 1458 0
	movl	skip_evaluation@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L609
	.loc 1 1459 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	assemble_external@PLT
.L609:
	.loc 1 1460 0
	movl	-20(%ebp), %edx
	movzbl	10(%edx), %eax
	orl	$1, %eax
	movb	%al, 10(%edx)
	.loc 1 1462 0
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$33, %al
	jne	.L611
	.loc 1 1464 0
	movl	-20(%ebp), %eax
	movl	68(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 1465 0
	movl	-20(%ebp), %edx
	movzbl	9(%edx), %eax
	orl	$2, %eax
	movb	%al, 9(%edx)
	jmp	.L613
.L611:
	.loc 1 1467 0
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L613
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	56(%eax), %eax
	testl	%eax, %eax
	je	.L613
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$35, %al
	je	.L616
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$36, %al
	je	.L616
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	jne	.L613
.L616:
.LBB23:
	.loc 1 1473 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	decl_function_context@PLT
	movl	%eax, -8(%ebp)
	.loc 1 1475 0
	cmpl	$0, -8(%ebp)
	je	.L613
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, -8(%ebp)
	je	.L613
	.loc 1 1476 0
	movl	-20(%ebp), %eax
	movzbl	33(%eax), %edx
	orl	$2, %edx
	movb	%dl, 33(%eax)
.L613:
.LBE23:
	.loc 1 1479 0
	movl	-20(%ebp), %eax
	movl	%eax, -24(%ebp)
.L600:
	movl	-24(%ebp), %eax
	.loc 1 1480 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE33:
	.size	build_external_ref, .-build_external_ref
	.section	.rodata
	.align 4
.LC33:
	.string	"called object is not a function"
	.text
.globl build_function_call
	.type	build_function_call, @function
build_function_call:
.LFB34:
	.loc 1 1490 0
	pushl	%ebp
.LCFI75:
	movl	%esp, %ebp
.LCFI76:
	pushl	%ebx
.LCFI77:
	subl	$68, %esp
.LCFI78:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1491 0
	movl	$0, -24(%ebp)
	.loc 1 1493 0
	movl	$0, -16(%ebp)
	movl	$0, -12(%ebp)
	.loc 1 1496 0
	jmp	.L623
.L624:
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 8(%ebp)
.L623:
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$117, %al
	je	.L625
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$116, %al
	je	.L625
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$118, %al
	jne	.L628
.L625:
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	je	.L628
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	je	.L624
.L628:
	.loc 1 1499 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	jne	.L630
	.loc 1 1501 0
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 1502 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	decl_assembler_name@PLT
	movl	%eax, -12(%ebp)
	.loc 1 1507 0
	movl	8(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -48(%ebp)
	movl	8(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L632
	movl	$2, -44(%ebp)
	jmp	.L634
.L632:
	movl	$0, -44(%ebp)
.L634:
	movl	-48(%ebp), %edx
	orl	-44(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	build_qualified_type@PLT
	movl	%eax, -28(%ebp)
	.loc 1 1510 0
	movl	8(%ebp), %eax
	movl	%eax, -24(%ebp)
	.loc 1 1511 0
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	build_pointer_type@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$123, (%esp)
	call	build1@PLT
	movl	%eax, 8(%ebp)
	jmp	.L635
.L630:
	.loc 1 1514 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	default_conversion@PLT
	movl	%eax, 8(%ebp)
.L635:
	.loc 1 1516 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 1518 0
	movl	-28(%ebp), %eax
	movzbl	8(%eax), %eax
	testb	%al, %al
	jne	.L636
	.loc 1 1519 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -40(%ebp)
	jmp	.L638
.L636:
	.loc 1 1521 0
	movl	-28(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L639
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$24, %al
	je	.L641
.L639:
	.loc 1 1524 0
	leal	.LC33@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 1525 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -40(%ebp)
	jmp	.L638
.L641:
	.loc 1 1528 0
	cmpl	$0, -24(%ebp)
	je	.L642
	movl	-24(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L642
	.loc 1 1529 0
	movl	current_function_returns_abnormally@GOT(%ebx), %eax
	movl	$1, (%eax)
.L642:
	.loc 1 1532 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 1537 0
	movl	-28(%ebp), %eax
	movl	16(%eax), %edx
	movl	-24(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	convert_arguments
	movl	%eax, -20(%ebp)
	.loc 1 1542 0
	movl	-28(%ebp), %eax
	movl	28(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	check_function_arguments@PLT
	.loc 1 1548 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$123, %al
	jne	.L645
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	jne	.L645
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	36(%eax), %eax
	andl	$12, %eax
	testb	%al, %al
	je	.L645
	.loc 1 1552 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	expand_tree_builtin@PLT
	movl	%eax, -8(%ebp)
	.loc 1 1554 0
	cmpl	$0, -8(%ebp)
	je	.L645
	.loc 1 1555 0
	movl	-8(%ebp), %eax
	movl	%eax, -40(%ebp)
	jmp	.L638
.L645:
	.loc 1 1558 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %edx
	movl	$0, 16(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$54, (%esp)
	call	build@PLT
	movl	%eax, -8(%ebp)
	.loc 1 1560 0
	movl	-8(%ebp), %edx
	movzbl	9(%edx), %eax
	orl	$1, %eax
	movb	%al, 9(%edx)
	.loc 1 1561 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -8(%ebp)
	.loc 1 1563 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$6, %al
	jne	.L650
	.loc 1 1564 0
	movl	-8(%ebp), %eax
	movl	%eax, -40(%ebp)
	jmp	.L638
.L650:
	.loc 1 1565 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	require_complete_type@PLT
	movl	%eax, -40(%ebp)
.L638:
	movl	-40(%ebp), %eax
	.loc 1 1566 0
	addl	$68, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE34:
	.size	build_function_call, .-build_function_call
	.section	.rodata
	.align 4
.LC34:
	.string	"too many arguments to function `%s'"
	.align 4
.LC35:
	.string	"too many arguments to function"
	.align 4
.LC36:
	.string	"type of formal parameter %d is incomplete"
	.align 4
.LC37:
	.string	"%s as integer rather than floating due to prototype"
	.align 4
.LC38:
	.string	"%s as integer rather than complex due to prototype"
	.align 4
.LC39:
	.string	"%s as complex rather than floating due to prototype"
	.align 4
.LC40:
	.string	"%s as floating rather than integer due to prototype"
	.align 4
.LC41:
	.string	"%s as complex rather than integer due to prototype"
	.align 4
.LC42:
	.string	"%s as floating rather than complex due to prototype"
	.align 4
.LC43:
	.string	"%s as `float' rather than `double' due to prototype"
	.align 4
.LC44:
	.string	"%s with different width due to prototype"
	.align 4
.LC45:
	.string	"%s as unsigned due to prototype"
.LC46:
	.string	"%s as signed due to prototype"
	.align 4
.LC47:
	.string	"too few arguments to function `%s'"
.LC48:
	.string	"too few arguments to function"
	.text
	.type	convert_arguments, @function
convert_arguments:
.LFB35:
	.loc 1 1589 0
	pushl	%ebp
.LCFI79:
	movl	%esp, %ebp
.LCFI80:
	pushl	%ebx
.LCFI81:
	subl	$84, %esp
.LCFI82:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1591 0
	movl	$0, -36(%ebp)
	.loc 1 1597 0
	movl	12(%ebp), %eax
	movl	%eax, -40(%ebp)
	movl	8(%ebp), %eax
	movl	%eax, -44(%ebp)
	movl	$0, -32(%ebp)
	.loc 1 1598 0
	jmp	.L654
.L655:
.LBB24:
	.loc 1 1601 0
	cmpl	$0, -44(%ebp)
	je	.L656
	movl	-44(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -56(%ebp)
	jmp	.L658
.L656:
	movl	$0, -56(%ebp)
.L658:
	movl	-56(%ebp), %eax
	movl	%eax, -28(%ebp)
	.loc 1 1602 0
	movl	-40(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 1604 0
	movl	global_trees@GOT(%ebx), %eax
	movl	108(%eax), %eax
	cmpl	-28(%ebp), %eax
	jne	.L659
	.loc 1 1606 0
	cmpl	$0, 16(%ebp)
	je	.L661
	.loc 1 1607 0
	movl	16(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC34@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	jmp	.L664
.L661:
	.loc 1 1610 0
	leal	.LC35@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 1611 0
	jmp	.L664
.L659:
	.loc 1 1617 0
	movl	-24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$118, %al
	jne	.L665
	.loc 1 1618 0
	movl	-24(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -24(%ebp)
.L665:
	.loc 1 1620 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	default_function_array_conversion
	movl	%eax, -24(%ebp)
	.loc 1 1622 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	require_complete_type@PLT
	movl	%eax, -24(%ebp)
	.loc 1 1624 0
	cmpl	$0, -28(%ebp)
	je	.L667
.LBB25:
	.loc 1 1629 0
	movl	-28(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	jne	.L669
	.loc 1 1631 0
	movl	-32(%ebp), %eax
	addl	$1, %eax
	movl	%eax, 4(%esp)
	leal	.LC36@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 1632 0
	movl	-24(%ebp), %eax
	movl	%eax, -20(%ebp)
	jmp	.L671
.L669:
	.loc 1 1638 0
	movl	warn_conversion@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L672
	movl	warn_traditional@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L674
.L672:
.LBB26:
	.loc 1 1640 0
	movl	-28(%ebp), %eax
	movzwl	36(%eax), %eax
	andw	$511, %ax
	movzwl	%ax, %eax
	movl	%eax, -16(%ebp)
	.loc 1 1642 0
	movl	-28(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$7, %al
	je	.L675
	movl	-28(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$11, %al
	je	.L675
	movl	-28(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$12, %al
	je	.L675
	movl	-28(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$13, %al
	jne	.L679
.L675:
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$8, %al
	jne	.L679
	.loc 1 1644 0
	movl	-32(%ebp), %eax
	addl	$1, %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	leal	.LC37@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warn_for_assignment
.L679:
	.loc 1 1645 0
	movl	-28(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$7, %al
	je	.L681
	movl	-28(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$11, %al
	je	.L681
	movl	-28(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$12, %al
	je	.L681
	movl	-28(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$13, %al
	jne	.L685
.L681:
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$9, %al
	jne	.L685
	.loc 1 1647 0
	movl	-32(%ebp), %eax
	addl	$1, %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	leal	.LC38@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warn_for_assignment
	.loc 1 1645 0
	jmp	.L674
.L685:
	.loc 1 1648 0
	movl	-28(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$9, %al
	jne	.L687
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$8, %al
	jne	.L687
	.loc 1 1650 0
	movl	-32(%ebp), %eax
	addl	$1, %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	leal	.LC39@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warn_for_assignment
	.loc 1 1648 0
	jmp	.L674
.L687:
	.loc 1 1651 0
	movl	-28(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$8, %al
	jne	.L690
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$7, %al
	je	.L692
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$11, %al
	je	.L692
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$12, %al
	je	.L692
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$13, %al
	jne	.L690
.L692:
	.loc 1 1653 0
	movl	-32(%ebp), %eax
	addl	$1, %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	leal	.LC40@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warn_for_assignment
	.loc 1 1651 0
	jmp	.L674
.L690:
	.loc 1 1654 0
	movl	-28(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$9, %al
	jne	.L696
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$7, %al
	je	.L698
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$11, %al
	je	.L698
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$12, %al
	je	.L698
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$13, %al
	jne	.L696
.L698:
	.loc 1 1656 0
	movl	-32(%ebp), %eax
	addl	$1, %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	leal	.LC41@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warn_for_assignment
	.loc 1 1654 0
	jmp	.L674
.L696:
	.loc 1 1657 0
	movl	-28(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$8, %al
	jne	.L702
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$9, %al
	jne	.L702
	.loc 1 1659 0
	movl	-32(%ebp), %eax
	addl	$1, %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	leal	.LC42@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warn_for_assignment
	.loc 1 1657 0
	jmp	.L674
.L702:
	.loc 1 1663 0
	movl	-28(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$8, %al
	jne	.L705
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$8, %al
	jne	.L705
	.loc 1 1668 0
	movl	global_trees@GOT(%ebx), %eax
	movl	96(%eax), %eax
	movzwl	36(%eax), %eax
	andw	$511, %ax
	movzwl	%ax, %eax
	cmpl	-16(%ebp), %eax
	jne	.L674
	.loc 1 1669 0
	movl	-32(%ebp), %eax
	addl	$1, %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	leal	.LC43@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warn_for_assignment
	.loc 1 1663 0
	jmp	.L674
.L705:
	.loc 1 1674 0
	movl	warn_conversion@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L674
	movl	-28(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$7, %al
	je	.L711
	movl	-28(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$11, %al
	je	.L711
	movl	-28(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$12, %al
	je	.L711
	movl	-28(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$13, %al
	jne	.L674
.L711:
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$7, %al
	je	.L715
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$11, %al
	je	.L715
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$12, %al
	je	.L715
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$13, %al
	jne	.L674
.L715:
.LBB27:
	.loc 1 1677 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	default_conversion@PLT
	movl	%eax, -12(%ebp)
	.loc 1 1678 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 1680 0
	movl	-28(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$11, %al
	jne	.L719
	movl	-28(%ebp), %eax
	movl	76(%eax), %edx
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	76(%eax), %eax
	cmpl	%eax, %edx
	jne	.L719
	jmp	.L674
.L719:
	.loc 1 1686 0
	movl	-8(%ebp), %eax
	movzwl	36(%eax), %eax
	andw	$511, %ax
	movzwl	%ax, %eax
	cmpl	-16(%ebp), %eax
	je	.L722
	.loc 1 1687 0
	movl	-32(%ebp), %eax
	addl	$1, %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	leal	.LC44@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warn_for_assignment
	jmp	.L674
.L722:
	.loc 1 1688 0
	movl	-28(%ebp), %eax
	movzbl	9(%eax), %eax
	movl	%eax, %edx
	shrb	$5, %dl
	andl	$1, %edx
	movl	-8(%ebp), %eax
	movzbl	9(%eax), %eax
	shrb	$5, %al
	andl	$1, %eax
	cmpb	%al, %dl
	je	.L674
	.loc 1 1693 0
	movl	-28(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$11, %al
	je	.L674
	.loc 1 1695 0
	movl	-24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	jne	.L726
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	int_fits_type_p@PLT
	testl	%eax, %eax
	je	.L726
	jmp	.L674
.L726:
	.loc 1 1701 0
	movl	-24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$117, %al
	jne	.L729
	movl	-24(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	jne	.L729
	movl	-24(%ebp), %eax
	movl	20(%eax), %edx
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	int_fits_type_p@PLT
	testl	%eax, %eax
	je	.L729
	jmp	.L674
.L729:
	.loc 1 1717 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	36(%eax), %eax
	andw	$511, %ax
	movzwl	%ax, %edx
	movl	-28(%ebp), %eax
	movzwl	36(%eax), %eax
	andw	$511, %ax
	movzwl	%ax, %eax
	cmpl	%eax, %edx
	jge	.L733
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	9(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L733
	jmp	.L674
.L733:
	.loc 1 1720 0
	movl	-28(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L736
	.loc 1 1721 0
	movl	-32(%ebp), %eax
	addl	$1, %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	leal	.LC45@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warn_for_assignment
	jmp	.L674
.L736:
	.loc 1 1723 0
	movl	-32(%ebp), %eax
	addl	$1, %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	leal	.LC46@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warn_for_assignment
.L674:
.LBE27:
.LBE26:
	.loc 1 1727 0
	movl	-32(%ebp), %eax
	addl	$1, %eax
	movl	%eax, 20(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$0, 8(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	convert_for_assignment
	movl	%eax, -20(%ebp)
	.loc 1 1731 0
	movl	-28(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$7, %al
	je	.L738
	movl	-28(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$11, %al
	je	.L738
	movl	-28(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$12, %al
	je	.L738
	movl	-28(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$13, %al
	jne	.L671
.L738:
	movl	-28(%ebp), %eax
	movzwl	36(%eax), %eax
	andw	$511, %ax
	movzwl	%ax, %edx
	movl	integer_types@GOT(%ebx), %eax
	movl	20(%eax), %eax
	movzwl	36(%eax), %eax
	andw	$511, %ax
	movzwl	%ax, %eax
	cmpl	%eax, %edx
	jge	.L671
	.loc 1 1734 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	default_conversion@PLT
	movl	%eax, -20(%ebp)
.L671:
	.loc 1 1736 0
	movl	-36(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	tree_cons@PLT
	movl	%eax, -36(%ebp)
	jmp	.L743
.L667:
.LBE25:
	.loc 1 1738 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$8, %al
	jne	.L744
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	36(%eax), %eax
	andw	$511, %ax
	movzwl	%ax, %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	100(%eax), %eax
	movzwl	36(%eax), %eax
	andw	$511, %ax
	movzwl	%ax, %eax
	cmpl	%eax, %edx
	jge	.L744
	.loc 1 1742 0
	movl	global_trees@GOT(%ebx), %eax
	movl	100(%eax), %edx
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	convert@PLT
	movl	%eax, %edx
	movl	-36(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$0, (%esp)
	call	tree_cons@PLT
	movl	%eax, -36(%ebp)
	.loc 1 1738 0
	jmp	.L743
.L744:
	.loc 1 1745 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	default_conversion@PLT
	movl	%eax, %edx
	movl	-36(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$0, (%esp)
	call	tree_cons@PLT
	movl	%eax, -36(%ebp)
.L743:
	.loc 1 1747 0
	cmpl	$0, -44(%ebp)
	je	.L747
	.loc 1 1748 0
	movl	-44(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -44(%ebp)
.L747:
.LBE24:
	.loc 1 1599 0
	movl	-40(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -40(%ebp)
	addl	$1, -32(%ebp)
.L654:
	.loc 1 1598 0
	cmpl	$0, -40(%ebp)
	jne	.L655
.L664:
	.loc 1 1751 0
	cmpl	$0, -44(%ebp)
	je	.L749
	movl	-44(%ebp), %eax
	movl	20(%eax), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	108(%eax), %eax
	cmpl	%eax, %edx
	je	.L749
	.loc 1 1753 0
	cmpl	$0, 16(%ebp)
	je	.L752
	.loc 1 1754 0
	movl	16(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC47@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	jmp	.L749
.L752:
	.loc 1 1757 0
	leal	.LC48@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L749:
	.loc 1 1760 0
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	nreverse@PLT
	.loc 1 1761 0
	addl	$84, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE35:
	.size	convert_arguments, .-convert_arguments
	.section	.rodata
	.align 4
.LC49:
	.string	"suggest parentheses around + or - inside shift"
	.align 4
.LC50:
	.string	"suggest parentheses around && within ||"
	.align 4
.LC51:
	.string	"suggest parentheses around arithmetic in operand of |"
	.align 4
.LC52:
	.string	"suggest parentheses around comparison in operand of |"
	.align 4
.LC53:
	.string	"suggest parentheses around arithmetic in operand of ^"
	.align 4
.LC54:
	.string	"suggest parentheses around comparison in operand of ^"
	.align 4
.LC55:
	.string	"suggest parentheses around + or - in operand of &"
	.align 4
.LC56:
	.string	"suggest parentheses around comparison in operand of &"
	.align 4
.LC57:
	.string	"comparisons like X<=Y<=Z do not have their mathematical meaning"
	.text
.globl parser_build_binary_op
	.type	parser_build_binary_op, @function
parser_build_binary_op:
.LFB36:
	.loc 1 1773 0
	pushl	%ebp
.LCFI83:
	movl	%esp, %ebp
.LCFI84:
	pushl	%ebx
.LCFI85:
	subl	$52, %esp
.LCFI86:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1774 0
	movl	$1, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_binary_op@PLT
	movl	%eax, -24(%ebp)
	.loc 1 1777 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movb	%al, -6(%ebp)
	.loc 1 1778 0
	movl	16(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movb	%al, -5(%ebp)
	.loc 1 1779 0
	movl	$0, -20(%ebp)
	.loc 1 1780 0
	movl	$0, -16(%ebp)
	.loc 1 1782 0
	movl	-24(%ebp), %eax
	movzbl	8(%eax), %eax
	testb	%al, %al
	jne	.L756
	.loc 1 1783 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -40(%ebp)
	jmp	.L758
.L756:
	.loc 1 1785 0
	cmpb	$60, -6(%ebp)
	je	.L759
	cmpb	$49, -6(%ebp)
	je	.L759
	cmpb	$50, -6(%ebp)
	je	.L759
	cmpb	$101, -6(%ebp)
	jne	.L763
.L759:
	.loc 1 1786 0
	movl	12(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -20(%ebp)
.L763:
	.loc 1 1787 0
	cmpb	$60, -5(%ebp)
	je	.L764
	cmpb	$49, -5(%ebp)
	je	.L764
	cmpb	$50, -5(%ebp)
	je	.L764
	cmpb	$101, -5(%ebp)
	jne	.L768
.L764:
	.loc 1 1788 0
	movl	16(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -16(%ebp)
.L768:
	.loc 1 1793 0
	movl	warn_parentheses@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L769
	.loc 1 1795 0
	cmpl	$84, 8(%ebp)
	je	.L771
	cmpl	$85, 8(%ebp)
	jne	.L773
.L771:
	.loc 1 1797 0
	cmpl	$60, -20(%ebp)
	je	.L774
	cmpl	$61, -20(%ebp)
	je	.L774
	cmpl	$60, -16(%ebp)
	je	.L774
	cmpl	$61, -16(%ebp)
	jne	.L773
.L774:
	.loc 1 1799 0
	leal	.LC49@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
.L773:
	.loc 1 1802 0
	cmpl	$94, 8(%ebp)
	jne	.L778
	.loc 1 1804 0
	cmpl	$93, -20(%ebp)
	je	.L780
	cmpl	$93, -16(%ebp)
	jne	.L778
.L780:
	.loc 1 1806 0
	leal	.LC50@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
.L778:
	.loc 1 1809 0
	cmpl	$88, 8(%ebp)
	jne	.L782
	.loc 1 1811 0
	cmpl	$90, -20(%ebp)
	je	.L784
	cmpl	$89, -20(%ebp)
	je	.L784
	cmpl	$60, -20(%ebp)
	je	.L784
	cmpl	$61, -20(%ebp)
	je	.L784
	cmpl	$90, -16(%ebp)
	je	.L784
	cmpl	$89, -16(%ebp)
	je	.L784
	cmpl	$60, -16(%ebp)
	je	.L784
	cmpl	$61, -16(%ebp)
	jne	.L792
.L784:
	.loc 1 1815 0
	leal	.LC51@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
.L792:
	.loc 1 1817 0
	movl	-20(%ebp), %eax
	movl	tree_code_type@GOT(%ebx), %edx
	movzbl	(%edx,%eax), %eax
	cmpb	$60, %al
	je	.L793
	movl	-16(%ebp), %eax
	movl	tree_code_type@GOT(%ebx), %edx
	movzbl	(%edx,%eax), %eax
	cmpb	$60, %al
	jne	.L782
.L793:
	.loc 1 1818 0
	leal	.LC52@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
.L782:
	.loc 1 1821 0
	cmpl	$89, 8(%ebp)
	jne	.L795
	.loc 1 1823 0
	cmpl	$90, -20(%ebp)
	je	.L797
	cmpl	$60, -20(%ebp)
	je	.L797
	cmpl	$61, -20(%ebp)
	je	.L797
	cmpl	$90, -16(%ebp)
	je	.L797
	cmpl	$60, -16(%ebp)
	je	.L797
	cmpl	$61, -16(%ebp)
	jne	.L803
.L797:
	.loc 1 1827 0
	leal	.LC53@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
.L803:
	.loc 1 1829 0
	movl	-20(%ebp), %eax
	movl	tree_code_type@GOT(%ebx), %edx
	movzbl	(%edx,%eax), %eax
	cmpb	$60, %al
	je	.L804
	movl	-16(%ebp), %eax
	movl	tree_code_type@GOT(%ebx), %edx
	movzbl	(%edx,%eax), %eax
	cmpb	$60, %al
	jne	.L795
.L804:
	.loc 1 1830 0
	leal	.LC54@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
.L795:
	.loc 1 1833 0
	cmpl	$90, 8(%ebp)
	jne	.L769
	.loc 1 1835 0
	cmpl	$60, -20(%ebp)
	je	.L807
	cmpl	$61, -20(%ebp)
	je	.L807
	cmpl	$60, -16(%ebp)
	je	.L807
	cmpl	$61, -16(%ebp)
	jne	.L811
.L807:
	.loc 1 1837 0
	leal	.LC55@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
.L811:
	.loc 1 1839 0
	movl	-20(%ebp), %eax
	movl	tree_code_type@GOT(%ebx), %edx
	movzbl	(%edx,%eax), %eax
	cmpb	$60, %al
	je	.L812
	movl	-16(%ebp), %eax
	movl	tree_code_type@GOT(%ebx), %edx
	movzbl	(%edx,%eax), %eax
	cmpb	$60, %al
	jne	.L769
.L812:
	.loc 1 1840 0
	leal	.LC56@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
.L769:
	.loc 1 1845 0
	movl	8(%ebp), %eax
	movl	tree_code_type@GOT(%ebx), %edx
	movzbl	(%edx,%eax), %eax
	cmpb	$60, %al
	jne	.L814
	movl	extra_warnings@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L814
	movl	-20(%ebp), %eax
	movl	tree_code_type@GOT(%ebx), %edx
	movzbl	(%edx,%eax), %eax
	cmpb	$60, %al
	je	.L817
	movl	-16(%ebp), %eax
	movl	tree_code_type@GOT(%ebx), %edx
	movzbl	(%edx,%eax), %eax
	cmpb	$60, %al
	jne	.L814
.L817:
	.loc 1 1847 0
	leal	.LC57@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
.L814:
	.loc 1 1849 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	unsigned_conversion_warning@PLT
	.loc 1 1850 0
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	unsigned_conversion_warning@PLT
	.loc 1 1851 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	overflow_warning@PLT
	.loc 1 1853 0
	movl	-24(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movb	%al, -7(%ebp)
	.loc 1 1857 0
	cmpb	$60, -7(%ebp)
	je	.L819
	cmpb	$49, -7(%ebp)
	je	.L819
	cmpb	$50, -7(%ebp)
	je	.L819
	cmpb	$101, -7(%ebp)
	jne	.L823
.L819:
	.loc 1 1858 0
	movl	8(%ebp), %edx
	movl	-24(%ebp), %eax
	movl	%edx, 16(%eax)
	.loc 1 1857 0
	jmp	.L824
.L823:
.LBB28:
	.loc 1 1861 0
	movl	-24(%ebp), %eax
	movzbl	9(%eax), %eax
	shrb	%al
	andl	$1, %eax
	movzbl	%al, %eax
	movl	%eax, -12(%ebp)
	.loc 1 1866 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %edx
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$118, (%esp)
	call	build1@PLT
	movl	%eax, -24(%ebp)
	.loc 1 1867 0
	movl	8(%ebp), %edx
	movl	-24(%ebp), %eax
	movl	%edx, 16(%eax)
	.loc 1 1868 0
	movl	-12(%ebp), %eax
	andl	$1, %eax
	movl	-24(%ebp), %ecx
	andl	$1, %eax
	leal	(%eax,%eax), %edx
	movzbl	9(%ecx), %eax
	andl	$-3, %eax
	orl	%edx, %eax
	movb	%al, 9(%ecx)
.L824:
.LBE28:
	.loc 1 1871 0
	movl	-24(%ebp), %eax
	movl	%eax, -40(%ebp)
.L758:
	movl	-40(%ebp), %eax
	.loc 1 1872 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE36:
	.size	parser_build_binary_op, .-parser_build_binary_op
	.section	.rodata
.LC58:
	.string	"division by zero"
.LC59:
	.string	"right shift count is negative"
	.align 4
.LC60:
	.string	"right shift count >= width of type"
.LC61:
	.string	"left shift count is negative"
	.align 4
.LC62:
	.string	"left shift count >= width of type"
.LC63:
	.string	"shift count is negative"
.LC64:
	.string	"shift count >= width of type"
	.align 4
.LC65:
	.string	"comparing floating point with == or != is unsafe"
	.align 4
.LC66:
	.string	"ISO C forbids comparison of `void *' with function pointer"
	.align 4
.LC67:
	.string	"comparison of distinct pointer types lacks a cast"
	.align 4
.LC68:
	.string	"comparison between pointer and integer"
	.align 4
.LC69:
	.string	"ISO C forbids ordered comparisons of pointers to functions"
	.align 4
.LC70:
	.string	"comparison of complete and incomplete pointers"
	.align 4
.LC71:
	.string	"ordered comparison of pointer with integer zero"
	.align 4
.LC72:
	.string	"unordered comparison on non-floating point argument"
	.align 4
.LC73:
	.string	"comparison between signed and unsigned"
	.align 4
.LC74:
	.string	"comparison of promoted ~unsigned with constant"
	.align 4
.LC75:
	.string	"comparison of promoted ~unsigned with unsigned"
	.text
.globl build_binary_op
	.type	build_binary_op, @function
build_binary_op:
.LFB37:
	.loc 1 1894 0
	pushl	%ebp
.LCFI87:
	movl	%esp, %ebp
.LCFI88:
	pushl	%esi
.LCFI89:
	pushl	%ebx
.LCFI90:
	subl	$240, %esp
.LCFI91:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1902 0
	movl	8(%ebp), %eax
	movl	%eax, -124(%ebp)
	.loc 1 1906 0
	movl	$0, -120(%ebp)
	.loc 1 1911 0
	movl	$0, -116(%ebp)
	.loc 1 1915 0
	movl	$0, -112(%ebp)
	.loc 1 1919 0
	movl	$0, -108(%ebp)
	.loc 1 1927 0
	movl	$0, -104(%ebp)
	.loc 1 1932 0
	movl	$0, -100(%ebp)
	.loc 1 1936 0
	movl	$0, -96(%ebp)
	.loc 1 1939 0
	movl	$0, -92(%ebp)
	.loc 1 1941 0
	cmpl	$0, 20(%ebp)
	je	.L827
	.loc 1 1943 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	default_conversion@PLT
	movl	%eax, -132(%ebp)
	.loc 1 1944 0
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	default_conversion@PLT
	movl	%eax, -128(%ebp)
	jmp	.L829
.L827:
	.loc 1 1948 0
	movl	12(%ebp), %eax
	movl	%eax, -132(%ebp)
	.loc 1 1949 0
	movl	16(%ebp), %eax
	movl	%eax, -128(%ebp)
.L829:
	.loc 1 1952 0
	movl	-132(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -148(%ebp)
	.loc 1 1953 0
	movl	-128(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -144(%ebp)
	.loc 1 1957 0
	movl	-148(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -140(%ebp)
	.loc 1 1958 0
	movl	-144(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -136(%ebp)
	.loc 1 1961 0
	jmp	.L830
.L831:
	movl	-132(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -132(%ebp)
.L830:
	movl	-132(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$117, %al
	je	.L832
	movl	-132(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$116, %al
	je	.L832
	movl	-132(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$118, %al
	jne	.L837
.L832:
	movl	-132(%ebp), %eax
	movl	20(%eax), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	je	.L837
	movl	-132(%ebp), %eax
	movl	4(%eax), %edx
	movl	-132(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	je	.L831
	.loc 1 1962 0
	jmp	.L837
.L838:
	movl	-128(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -128(%ebp)
.L837:
	movl	-128(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$117, %al
	je	.L839
	movl	-128(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$116, %al
	je	.L839
	movl	-128(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$118, %al
	jne	.L842
.L839:
	movl	-128(%ebp), %eax
	movl	20(%eax), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	je	.L842
	movl	-128(%ebp), %eax
	movl	4(%eax), %edx
	movl	-128(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	je	.L838
.L842:
	.loc 1 1967 0
	cmpl	$0, -140(%ebp)
	je	.L844
	cmpl	$0, -136(%ebp)
	jne	.L846
.L844:
	.loc 1 1968 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -220(%ebp)
	jmp	.L847
.L846:
	.loc 1 1970 0
	movl	8(%ebp), %eax
	subl	$60, %eax
	movl	%eax, -224(%ebp)
	cmpl	$51, -224(%ebp)
	ja	.L848
	movl	-224(%ebp), %eax
	sall	$2, %eax
	movl	.L863@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L863:
	.long	.L849@GOTOFF
	.long	.L850@GOTOFF
	.long	.L851@GOTOFF
	.long	.L852@GOTOFF
	.long	.L852@GOTOFF
	.long	.L852@GOTOFF
	.long	.L852@GOTOFF
	.long	.L853@GOTOFF
	.long	.L848@GOTOFF
	.long	.L853@GOTOFF
	.long	.L848@GOTOFF
	.long	.L848@GOTOFF
	.long	.L852@GOTOFF
	.long	.L848@GOTOFF
	.long	.L848@GOTOFF
	.long	.L848@GOTOFF
	.long	.L848@GOTOFF
	.long	.L848@GOTOFF
	.long	.L848@GOTOFF
	.long	.L848@GOTOFF
	.long	.L854@GOTOFF
	.long	.L854@GOTOFF
	.long	.L848@GOTOFF
	.long	.L848@GOTOFF
	.long	.L855@GOTOFF
	.long	.L856@GOTOFF
	.long	.L857@GOTOFF
	.long	.L857@GOTOFF
	.long	.L858@GOTOFF
	.long	.L858@GOTOFF
	.long	.L858@GOTOFF
	.long	.L858@GOTOFF
	.long	.L848@GOTOFF
	.long	.L859@GOTOFF
	.long	.L859@GOTOFF
	.long	.L859@GOTOFF
	.long	.L859@GOTOFF
	.long	.L859@GOTOFF
	.long	.L848@GOTOFF
	.long	.L860@GOTOFF
	.long	.L860@GOTOFF
	.long	.L860@GOTOFF
	.long	.L860@GOTOFF
	.long	.L861@GOTOFF
	.long	.L861@GOTOFF
	.long	.L862@GOTOFF
	.long	.L862@GOTOFF
	.long	.L862@GOTOFF
	.long	.L862@GOTOFF
	.long	.L862@GOTOFF
	.long	.L862@GOTOFF
	.long	.L862@GOTOFF
	.text
.L849:
	.loc 1 1974 0
	cmpl	$14, -140(%ebp)
	jne	.L864
	cmpl	$7, -136(%ebp)
	jne	.L864
	.loc 1 1975 0
	movl	-128(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-132(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$60, (%esp)
	call	pointer_int_sum@PLT
	movl	%eax, -220(%ebp)
	jmp	.L847
.L864:
	.loc 1 1976 0
	cmpl	$14, -136(%ebp)
	jne	.L867
	cmpl	$7, -140(%ebp)
	jne	.L867
	.loc 1 1977 0
	movl	-132(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-128(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$60, (%esp)
	call	pointer_int_sum@PLT
	movl	%eax, -220(%ebp)
	jmp	.L847
.L867:
	.loc 1 1979 0
	movl	$1, -92(%ebp)
	.loc 1 1980 0
	jmp	.L848
.L850:
	.loc 1 1985 0
	cmpl	$14, -140(%ebp)
	jne	.L870
	cmpl	$14, -136(%ebp)
	jne	.L870
	movl	$1, 8(%esp)
	movl	-144(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-148(%ebp), %eax
	movl	%eax, (%esp)
	call	comp_target_types
	testl	%eax, %eax
	je	.L870
	.loc 1 1987 0
	movl	-128(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-132(%ebp), %eax
	movl	%eax, (%esp)
	call	pointer_diff
	movl	%eax, -220(%ebp)
	jmp	.L847
.L870:
	.loc 1 1989 0
	cmpl	$14, -140(%ebp)
	jne	.L874
	cmpl	$7, -136(%ebp)
	jne	.L874
	.loc 1 1990 0
	movl	-128(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-132(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$61, (%esp)
	call	pointer_int_sum@PLT
	movl	%eax, -220(%ebp)
	jmp	.L847
.L874:
	.loc 1 1997 0
	movl	-132(%ebp), %eax
	movl	%eax, (%esp)
	call	convert_floor_to_floorf@PLT
	movl	%eax, -132(%ebp)
	.loc 1 1998 0
	movl	-128(%ebp), %eax
	movl	%eax, (%esp)
	call	convert_floor_to_floorf@PLT
	movl	%eax, -128(%ebp)
	.loc 1 2000 0
	jmp	.L877
.L878:
	movl	-132(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -132(%ebp)
.L877:
	movl	-132(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$117, %al
	je	.L879
	movl	-132(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$116, %al
	je	.L879
	movl	-132(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$118, %al
	jne	.L884
.L879:
	movl	-132(%ebp), %eax
	movl	20(%eax), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	je	.L884
	movl	-132(%ebp), %eax
	movl	4(%eax), %edx
	movl	-132(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	je	.L878
	.loc 1 2001 0
	jmp	.L884
.L885:
	movl	-128(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -128(%ebp)
.L884:
	movl	-128(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$117, %al
	je	.L886
	movl	-128(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$116, %al
	je	.L886
	movl	-128(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$118, %al
	jne	.L889
.L886:
	movl	-128(%ebp), %eax
	movl	20(%eax), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	je	.L889
	movl	-128(%ebp), %eax
	movl	4(%eax), %edx
	movl	-128(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	je	.L885
.L889:
	.loc 1 2003 0
	movl	-132(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -148(%ebp)
	.loc 1 2004 0
	movl	-128(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -144(%ebp)
	.loc 1 2006 0
	movl	-148(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -140(%ebp)
	.loc 1 2007 0
	movl	-144(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -136(%ebp)
	.loc 1 2010 0
	movl	$1, -92(%ebp)
	.loc 1 2011 0
	jmp	.L848
.L851:
	.loc 1 2014 0
	movl	$1, -92(%ebp)
	.loc 1 2015 0
	jmp	.L848
.L852:
	.loc 1 2024 0
	movl	warn_div_by_zero@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L891
	movl	skip_evaluation@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L891
	movl	-128(%ebp), %eax
	movl	%eax, (%esp)
	call	integer_zerop@PLT
	testl	%eax, %eax
	je	.L891
	.loc 1 2025 0
	leal	.LC58@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
.L891:
	.loc 1 2027 0
	cmpl	$7, -140(%ebp)
	je	.L895
	cmpl	$8, -140(%ebp)
	je	.L895
	cmpl	$9, -140(%ebp)
	je	.L895
	cmpl	$10, -140(%ebp)
	jne	.L848
.L895:
	cmpl	$7, -136(%ebp)
	je	.L900
	cmpl	$8, -136(%ebp)
	je	.L900
	cmpl	$9, -136(%ebp)
	je	.L900
	cmpl	$10, -136(%ebp)
	jne	.L848
.L900:
	.loc 1 2032 0
	cmpl	$7, -140(%ebp)
	jne	.L904
	cmpl	$7, -136(%ebp)
	je	.L906
.L904:
	.loc 1 2033 0
	movl	$71, -124(%ebp)
	.loc 1 2032 0
	jmp	.L907
.L906:
	.loc 1 2040 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	9(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	jne	.L908
	movl	-128(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	jne	.L910
	movl	-128(%ebp), %eax
	movl	%eax, (%esp)
	call	integer_all_onesp@PLT
	testl	%eax, %eax
	jne	.L910
.L908:
	movl	$1, -216(%ebp)
	jmp	.L912
.L910:
	movl	$0, -216(%ebp)
.L912:
	movl	-216(%ebp), %eax
	movl	%eax, -104(%ebp)
.L907:
	.loc 1 2043 0
	movl	$1, -92(%ebp)
	.loc 1 2045 0
	jmp	.L848
.L858:
	.loc 1 2051 0
	cmpl	$7, -140(%ebp)
	jne	.L913
	cmpl	$7, -136(%ebp)
	jne	.L913
	.loc 1 2052 0
	movl	$-1, -104(%ebp)
	.loc 1 2051 0
	jmp	.L848
.L913:
	.loc 1 2053 0
	cmpl	$10, -140(%ebp)
	jne	.L848
	cmpl	$10, -136(%ebp)
	jne	.L848
	.loc 1 2054 0
	movl	$1, -92(%ebp)
	.loc 1 2055 0
	jmp	.L848
.L853:
	.loc 1 2059 0
	movl	warn_div_by_zero@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L919
	movl	skip_evaluation@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L919
	movl	-128(%ebp), %eax
	movl	%eax, (%esp)
	call	integer_zerop@PLT
	testl	%eax, %eax
	je	.L919
	.loc 1 2060 0
	leal	.LC58@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
.L919:
	.loc 1 2062 0
	cmpl	$7, -140(%ebp)
	jne	.L848
	cmpl	$7, -136(%ebp)
	jne	.L848
	.loc 1 2068 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	9(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	jne	.L926
	movl	-128(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	jne	.L928
	movl	-128(%ebp), %eax
	movl	%eax, (%esp)
	call	integer_all_onesp@PLT
	testl	%eax, %eax
	jne	.L928
.L926:
	movl	$1, -212(%ebp)
	jmp	.L930
.L928:
	movl	$0, -212(%ebp)
.L930:
	movl	-212(%ebp), %eax
	movl	%eax, -104(%ebp)
	.loc 1 2071 0
	movl	$1, -92(%ebp)
	.loc 1 2073 0
	jmp	.L848
.L859:
	.loc 1 2080 0
	cmpl	$7, -140(%ebp)
	je	.L931
	cmpl	$14, -140(%ebp)
	je	.L931
	cmpl	$8, -140(%ebp)
	je	.L931
	cmpl	$9, -140(%ebp)
	jne	.L848
.L931:
	cmpl	$7, -136(%ebp)
	je	.L936
	cmpl	$14, -136(%ebp)
	je	.L936
	cmpl	$8, -136(%ebp)
	je	.L936
	cmpl	$9, -136(%ebp)
	jne	.L848
.L936:
	.loc 1 2088 0
	movl	integer_types@GOT(%ebx), %eax
	movl	20(%eax), %eax
	movl	%eax, -120(%ebp)
	.loc 1 2089 0
	movl	-132(%ebp), %eax
	movl	%eax, (%esp)
	call	c_common_truthvalue_conversion@PLT
	movl	%eax, -132(%ebp)
	.loc 1 2090 0
	movl	-128(%ebp), %eax
	movl	%eax, (%esp)
	call	c_common_truthvalue_conversion@PLT
	movl	%eax, -128(%ebp)
	.loc 1 2091 0
	movl	$1, -116(%ebp)
	.loc 1 2093 0
	jmp	.L848
.L856:
	.loc 1 2100 0
	cmpl	$7, -140(%ebp)
	jne	.L848
	cmpl	$7, -136(%ebp)
	jne	.L848
	.loc 1 2102 0
	movl	-128(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	jne	.L943
	movl	skip_evaluation@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L943
	.loc 1 2104 0
	movl	-128(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_int_cst_sgn@PLT
	testl	%eax, %eax
	jns	.L946
	.loc 1 2105 0
	leal	.LC59@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
	jmp	.L943
.L946:
	.loc 1 2108 0
	movl	-128(%ebp), %eax
	movl	%eax, (%esp)
	call	integer_zerop@PLT
	testl	%eax, %eax
	jne	.L948
	.loc 1 2109 0
	movl	$1, -96(%ebp)
.L948:
	.loc 1 2111 0
	movl	-148(%ebp), %eax
	movzwl	36(%eax), %ecx
	andw	$511, %cx
	movzwl	%cx, %eax
	movl	$0, %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	-128(%ebp), %eax
	movl	%eax, (%esp)
	call	compare_tree_int@PLT
	testl	%eax, %eax
	js	.L943
	.loc 1 2112 0
	leal	.LC60@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
.L943:
	.loc 1 2117 0
	movl	-148(%ebp), %eax
	movl	%eax, -120(%ebp)
	.loc 1 2120 0
	movl	-128(%ebp), %eax
	movl	4(%eax), %eax
	movl	76(%eax), %edx
	movl	integer_types@GOT(%ebx), %eax
	movl	20(%eax), %eax
	cmpl	%eax, %edx
	je	.L951
	.loc 1 2121 0
	movl	integer_types@GOT(%ebx), %eax
	movl	20(%eax), %edx
	movl	-128(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	convert@PLT
	movl	%eax, -128(%ebp)
.L951:
	.loc 1 2123 0
	movl	$1, -116(%ebp)
	.loc 1 2125 0
	jmp	.L848
.L855:
	.loc 1 2128 0
	cmpl	$7, -140(%ebp)
	jne	.L848
	cmpl	$7, -136(%ebp)
	jne	.L848
	.loc 1 2130 0
	movl	-128(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	jne	.L956
	movl	skip_evaluation@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L956
	.loc 1 2132 0
	movl	-128(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_int_cst_sgn@PLT
	testl	%eax, %eax
	jns	.L959
	.loc 1 2133 0
	leal	.LC61@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
	jmp	.L956
.L959:
	.loc 1 2135 0
	movl	-148(%ebp), %eax
	movzwl	36(%eax), %ecx
	andw	$511, %cx
	movzwl	%cx, %eax
	movl	$0, %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	-128(%ebp), %eax
	movl	%eax, (%esp)
	call	compare_tree_int@PLT
	testl	%eax, %eax
	js	.L956
	.loc 1 2136 0
	leal	.LC62@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
.L956:
	.loc 1 2140 0
	movl	-148(%ebp), %eax
	movl	%eax, -120(%ebp)
	.loc 1 2143 0
	movl	-128(%ebp), %eax
	movl	4(%eax), %eax
	movl	76(%eax), %edx
	movl	integer_types@GOT(%ebx), %eax
	movl	20(%eax), %eax
	cmpl	%eax, %edx
	je	.L962
	.loc 1 2144 0
	movl	integer_types@GOT(%ebx), %eax
	movl	20(%eax), %edx
	movl	-128(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	convert@PLT
	movl	%eax, -128(%ebp)
.L962:
	.loc 1 2146 0
	movl	$1, -116(%ebp)
	.loc 1 2148 0
	jmp	.L848
.L857:
	.loc 1 2152 0
	cmpl	$7, -140(%ebp)
	jne	.L848
	cmpl	$7, -136(%ebp)
	jne	.L848
	.loc 1 2154 0
	movl	-128(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	jne	.L967
	movl	skip_evaluation@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L967
	.loc 1 2156 0
	movl	-128(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_int_cst_sgn@PLT
	testl	%eax, %eax
	jns	.L970
	.loc 1 2157 0
	leal	.LC63@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
	jmp	.L967
.L970:
	.loc 1 2158 0
	movl	-148(%ebp), %eax
	movzwl	36(%eax), %ecx
	andw	$511, %cx
	movzwl	%cx, %eax
	movl	$0, %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	-128(%ebp), %eax
	movl	%eax, (%esp)
	call	compare_tree_int@PLT
	testl	%eax, %eax
	js	.L967
	.loc 1 2159 0
	leal	.LC64@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
.L967:
	.loc 1 2163 0
	movl	-148(%ebp), %eax
	movl	%eax, -120(%ebp)
	.loc 1 2166 0
	movl	-128(%ebp), %eax
	movl	4(%eax), %eax
	movl	76(%eax), %edx
	movl	integer_types@GOT(%ebx), %eax
	movl	20(%eax), %eax
	cmpl	%eax, %edx
	je	.L973
	.loc 1 2167 0
	movl	integer_types@GOT(%ebx), %eax
	movl	20(%eax), %edx
	movl	-128(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	convert@PLT
	movl	%eax, -128(%ebp)
.L973:
	.loc 1 2169 0
	movl	$1, -116(%ebp)
	.loc 1 2171 0
	jmp	.L848
.L861:
	.loc 1 2175 0
	movl	warn_float_equal@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L975
	cmpl	$8, -140(%ebp)
	je	.L977
	cmpl	$8, -136(%ebp)
	jne	.L975
.L977:
	.loc 1 2176 0
	leal	.LC65@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
.L975:
	.loc 1 2179 0
	movl	integer_types@GOT(%ebx), %eax
	movl	20(%eax), %eax
	movl	%eax, -112(%ebp)
	.loc 1 2180 0
	cmpl	$7, -140(%ebp)
	je	.L979
	cmpl	$8, -140(%ebp)
	je	.L979
	cmpl	$9, -140(%ebp)
	je	.L979
	cmpl	$10, -140(%ebp)
	jne	.L983
.L979:
	cmpl	$7, -136(%ebp)
	je	.L984
	cmpl	$8, -136(%ebp)
	je	.L984
	cmpl	$9, -136(%ebp)
	je	.L984
	cmpl	$10, -136(%ebp)
	jne	.L983
.L984:
	.loc 1 2186 0
	movl	$1, -100(%ebp)
	.loc 1 2180 0
	jmp	.L848
.L983:
	.loc 1 2187 0
	cmpl	$14, -140(%ebp)
	jne	.L989
	cmpl	$14, -136(%ebp)
	jne	.L989
.LBB29:
	.loc 1 2189 0
	movl	-148(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -88(%ebp)
	.loc 1 2190 0
	movl	-144(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -84(%ebp)
	.loc 1 2194 0
	movl	$1, 8(%esp)
	movl	-144(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-148(%ebp), %eax
	movl	%eax, (%esp)
	call	comp_target_types
	testl	%eax, %eax
	je	.L992
	.loc 1 2195 0
	movl	-144(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-148(%ebp), %eax
	movl	%eax, (%esp)
	call	common_type@PLT
	movl	%eax, -120(%ebp)
	jmp	.L994
.L992:
	.loc 1 2196 0
	movl	-88(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$6, %al
	jne	.L995
	.loc 1 2200 0
	movl	pedantic@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L994
	movl	-132(%ebp), %eax
	movl	%eax, (%esp)
	call	integer_zerop@PLT
	testl	%eax, %eax
	je	.L999
	movl	-132(%ebp), %eax
	cmpl	12(%ebp), %eax
	je	.L994
.L999:
	movl	-84(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$24, %al
	jne	.L994
	.loc 1 2202 0
	leal	.LC66@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	pedwarn@PLT
	jmp	.L994
.L995:
	.loc 1 2204 0
	movl	-84(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$6, %al
	jne	.L1002
	.loc 1 2206 0
	movl	pedantic@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L994
	movl	-128(%ebp), %eax
	movl	%eax, (%esp)
	call	integer_zerop@PLT
	testl	%eax, %eax
	je	.L1006
	movl	-128(%ebp), %eax
	cmpl	16(%ebp), %eax
	je	.L994
.L1006:
	movl	-88(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$24, %al
	jne	.L994
	.loc 1 2208 0
	leal	.LC66@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	pedwarn@PLT
	jmp	.L994
.L1002:
	.loc 1 2211 0
	leal	.LC67@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	pedwarn@PLT
.L994:
	.loc 1 2213 0
	cmpl	$0, -120(%ebp)
	jne	.L848
	.loc 1 2214 0
	movl	global_trees@GOT(%ebx), %eax
	movl	112(%eax), %eax
	movl	%eax, -120(%ebp)
	.loc 1 2187 0
	jmp	.L848
.L989:
.LBE29:
	.loc 1 2216 0
	cmpl	$14, -140(%ebp)
	jne	.L1011
	movl	-128(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	jne	.L1011
	movl	-128(%ebp), %eax
	movl	%eax, (%esp)
	call	integer_zerop@PLT
	testl	%eax, %eax
	je	.L1011
	.loc 1 2218 0
	movl	-148(%ebp), %eax
	movl	%eax, -120(%ebp)
	.loc 1 2216 0
	jmp	.L848
.L1011:
	.loc 1 2219 0
	cmpl	$14, -136(%ebp)
	jne	.L1015
	movl	-132(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	jne	.L1015
	movl	-132(%ebp), %eax
	movl	%eax, (%esp)
	call	integer_zerop@PLT
	testl	%eax, %eax
	je	.L1015
	.loc 1 2221 0
	movl	-144(%ebp), %eax
	movl	%eax, -120(%ebp)
	.loc 1 2219 0
	jmp	.L848
.L1015:
	.loc 1 2222 0
	cmpl	$14, -140(%ebp)
	jne	.L1019
	cmpl	$7, -136(%ebp)
	jne	.L1019
	.loc 1 2224 0
	movl	-148(%ebp), %eax
	movl	%eax, -120(%ebp)
	.loc 1 2225 0
	leal	.LC68@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	pedwarn@PLT
	.loc 1 2222 0
	jmp	.L848
.L1019:
	.loc 1 2227 0
	cmpl	$7, -140(%ebp)
	jne	.L848
	cmpl	$14, -136(%ebp)
	jne	.L848
	.loc 1 2229 0
	movl	-144(%ebp), %eax
	movl	%eax, -120(%ebp)
	.loc 1 2230 0
	leal	.LC68@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	pedwarn@PLT
	.loc 1 2232 0
	jmp	.L848
.L854:
	.loc 1 2236 0
	cmpl	$7, -140(%ebp)
	je	.L1024
	cmpl	$8, -140(%ebp)
	jne	.L1026
.L1024:
	cmpl	$7, -136(%ebp)
	je	.L1027
	cmpl	$8, -136(%ebp)
	jne	.L1026
.L1027:
	.loc 1 2238 0
	movl	$1, -104(%ebp)
	.loc 1 2236 0
	jmp	.L848
.L1026:
	.loc 1 2239 0
	cmpl	$14, -140(%ebp)
	jne	.L848
	cmpl	$14, -136(%ebp)
	jne	.L848
	.loc 1 2241 0
	movl	$1, 8(%esp)
	movl	-144(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-148(%ebp), %eax
	movl	%eax, (%esp)
	call	comp_target_types
	testl	%eax, %eax
	je	.L1032
	.loc 1 2243 0
	movl	-144(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-148(%ebp), %eax
	movl	%eax, (%esp)
	call	common_type@PLT
	movl	%eax, -120(%ebp)
	.loc 1 2244 0
	movl	pedantic@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L848
	movl	-148(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$24, %al
	jne	.L848
	.loc 1 2246 0
	leal	.LC69@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	pedwarn@PLT
	jmp	.L848
.L1032:
	.loc 1 2250 0
	movl	global_trees@GOT(%ebx), %eax
	movl	112(%eax), %eax
	movl	%eax, -120(%ebp)
	.loc 1 2251 0
	leal	.LC67@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	pedwarn@PLT
	.loc 1 2254 0
	jmp	.L848
.L860:
	.loc 1 2260 0
	movl	integer_types@GOT(%ebx), %eax
	movl	20(%eax), %eax
	movl	%eax, -112(%ebp)
	.loc 1 2261 0
	cmpl	$7, -140(%ebp)
	je	.L1037
	cmpl	$8, -140(%ebp)
	jne	.L1039
.L1037:
	cmpl	$7, -136(%ebp)
	je	.L1040
	cmpl	$8, -136(%ebp)
	jne	.L1039
.L1040:
	.loc 1 2263 0
	movl	$1, -100(%ebp)
	.loc 1 2261 0
	jmp	.L848
.L1039:
	.loc 1 2264 0
	cmpl	$14, -140(%ebp)
	jne	.L1043
	cmpl	$14, -136(%ebp)
	jne	.L1043
	.loc 1 2266 0
	movl	$1, 8(%esp)
	movl	-144(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-148(%ebp), %eax
	movl	%eax, (%esp)
	call	comp_target_types
	testl	%eax, %eax
	je	.L1046
	.loc 1 2268 0
	movl	-144(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-148(%ebp), %eax
	movl	%eax, (%esp)
	call	common_type@PLT
	movl	%eax, -120(%ebp)
	.loc 1 2269 0
	movl	-148(%ebp), %eax
	movl	4(%eax), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	sete	%dl
	movl	-144(%ebp), %eax
	movl	4(%eax), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	sete	%al
	xorl	%edx, %eax
	testb	%al, %al
	je	.L1048
	.loc 1 2271 0
	leal	.LC70@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	pedwarn@PLT
	jmp	.L848
.L1048:
	.loc 1 2272 0
	movl	pedantic@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L848
	movl	-148(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$24, %al
	jne	.L848
	.loc 1 2274 0
	leal	.LC69@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	pedwarn@PLT
	jmp	.L848
.L1046:
	.loc 1 2278 0
	movl	global_trees@GOT(%ebx), %eax
	movl	112(%eax), %eax
	movl	%eax, -120(%ebp)
	.loc 1 2279 0
	leal	.LC67@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	pedwarn@PLT
	.loc 1 2264 0
	jmp	.L848
.L1043:
	.loc 1 2282 0
	cmpl	$14, -140(%ebp)
	jne	.L1054
	movl	-128(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	jne	.L1054
	movl	-128(%ebp), %eax
	movl	%eax, (%esp)
	call	integer_zerop@PLT
	testl	%eax, %eax
	je	.L1054
	.loc 1 2285 0
	movl	-148(%ebp), %eax
	movl	%eax, -120(%ebp)
	.loc 1 2286 0
	movl	pedantic@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L1058
	movl	extra_warnings@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L848
.L1058:
	.loc 1 2287 0
	leal	.LC71@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	pedwarn@PLT
	.loc 1 2282 0
	jmp	.L848
.L1054:
	.loc 1 2289 0
	cmpl	$14, -136(%ebp)
	jne	.L1061
	movl	-132(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	jne	.L1061
	movl	-132(%ebp), %eax
	movl	%eax, (%esp)
	call	integer_zerop@PLT
	testl	%eax, %eax
	je	.L1061
	.loc 1 2292 0
	movl	-144(%ebp), %eax
	movl	%eax, -120(%ebp)
	.loc 1 2293 0
	movl	pedantic@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L848
	.loc 1 2294 0
	leal	.LC71@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	pedwarn@PLT
	.loc 1 2289 0
	jmp	.L848
.L1061:
	.loc 1 2296 0
	cmpl	$14, -140(%ebp)
	jne	.L1067
	cmpl	$7, -136(%ebp)
	jne	.L1067
	.loc 1 2298 0
	movl	-148(%ebp), %eax
	movl	%eax, -120(%ebp)
	.loc 1 2299 0
	leal	.LC68@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	pedwarn@PLT
	.loc 1 2296 0
	jmp	.L848
.L1067:
	.loc 1 2301 0
	cmpl	$7, -140(%ebp)
	jne	.L848
	cmpl	$14, -136(%ebp)
	jne	.L848
	.loc 1 2303 0
	movl	-144(%ebp), %eax
	movl	%eax, -120(%ebp)
	.loc 1 2304 0
	leal	.LC68@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	pedwarn@PLT
	.loc 1 2306 0
	jmp	.L848
.L862:
	.loc 1 2315 0
	movl	integer_types@GOT(%ebx), %eax
	movl	20(%eax), %eax
	movl	%eax, -112(%ebp)
	.loc 1 2316 0
	cmpl	$8, -140(%ebp)
	jne	.L1072
	cmpl	$8, -136(%ebp)
	je	.L1074
.L1072:
	.loc 1 2318 0
	leal	.LC72@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 2319 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -220(%ebp)
	jmp	.L847
.L1074:
	.loc 1 2321 0
	movl	$1, -92(%ebp)
.L848:
	.loc 1 2328 0
	cmpl	$7, -140(%ebp)
	je	.L1075
	cmpl	$8, -140(%ebp)
	je	.L1075
	cmpl	$9, -140(%ebp)
	je	.L1075
	cmpl	$10, -140(%ebp)
	jne	.L1079
.L1075:
	cmpl	$7, -136(%ebp)
	je	.L1080
	cmpl	$8, -136(%ebp)
	je	.L1080
	cmpl	$9, -136(%ebp)
	je	.L1080
	cmpl	$10, -136(%ebp)
	jne	.L1079
.L1080:
.LBB30:
	.loc 1 2334 0
	cmpl	$9, -140(%ebp)
	je	.L1084
	cmpl	$9, -136(%ebp)
	je	.L1084
	movl	$1, -208(%ebp)
	jmp	.L1087
.L1084:
	movl	$0, -208(%ebp)
.L1087:
	movl	-208(%ebp), %eax
	movl	%eax, -80(%ebp)
	.loc 1 2336 0
	cmpl	$0, -104(%ebp)
	jne	.L1088
	cmpl	$0, -92(%ebp)
	jne	.L1088
	cmpl	$0, -100(%ebp)
	je	.L1091
.L1088:
	.loc 1 2337 0
	movl	-144(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-148(%ebp), %eax
	movl	%eax, (%esp)
	call	common_type@PLT
	movl	%eax, -120(%ebp)
.L1091:
	.loc 1 2350 0
	cmpl	$0, -104(%ebp)
	je	.L1092
	cmpl	$0, -80(%ebp)
	je	.L1092
.LBB31:
	.loc 1 2353 0
	leal	-156(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-132(%ebp), %eax
	movl	%eax, (%esp)
	call	get_narrower@PLT
	movl	%eax, -76(%ebp)
	.loc 1 2354 0
	leal	-152(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-128(%ebp), %eax
	movl	%eax, (%esp)
	call	get_narrower@PLT
	movl	%eax, -72(%ebp)
	.loc 1 2356 0
	movl	-120(%ebp), %eax
	movzbl	9(%eax), %eax
	shrb	$5, %al
	andl	$1, %eax
	movzbl	%al, %eax
	movl	%eax, -68(%ebp)
	.loc 1 2359 0
	movl	-120(%ebp), %eax
	movl	%eax, -108(%ebp)
	.loc 1 2364 0
	movl	-132(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	36(%eax), %edx
	andw	$511, %dx
	movl	-76(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	36(%eax), %eax
	andw	$511, %ax
	cmpw	%ax, %dx
	jne	.L1095
	movl	-132(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-108(%ebp), %eax
	je	.L1095
	.loc 1 2367 0
	movl	-132(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	9(%eax), %eax
	shrb	$5, %al
	andl	$1, %eax
	movzbl	%al, %eax
	movl	%eax, -156(%ebp)
.L1095:
	.loc 1 2368 0
	movl	-128(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	36(%eax), %edx
	andw	$511, %dx
	movl	-72(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	36(%eax), %eax
	andw	$511, %ax
	cmpw	%ax, %dx
	jne	.L1098
	movl	-128(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-108(%ebp), %eax
	je	.L1098
	.loc 1 2371 0
	movl	-128(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	9(%eax), %eax
	shrb	$5, %al
	andl	$1, %eax
	movzbl	%al, %eax
	movl	%eax, -152(%ebp)
.L1098:
	.loc 1 2377 0
	cmpl	$-1, -104(%ebp)
	jne	.L1101
	.loc 1 2378 0
	movl	-156(%ebp), %eax
	movl	%eax, -68(%ebp)
.L1101:
	.loc 1 2387 0
	movl	-76(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	36(%eax), %eax
	andw	$511, %ax
	movzwl	%ax, %edx
	movl	-120(%ebp), %eax
	movzwl	36(%eax), %eax
	andw	$511, %ax
	movzwl	%ax, %eax
	cmpl	%eax, %edx
	jge	.L1103
	movl	-72(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	36(%eax), %edx
	andw	$511, %dx
	movl	-76(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	36(%eax), %eax
	andw	$511, %ax
	cmpw	%ax, %dx
	jne	.L1103
	movl	-156(%ebp), %edx
	movl	-152(%ebp), %eax
	cmpl	%eax, %edx
	jne	.L1103
	movl	-156(%ebp), %eax
	testl	%eax, %eax
	jne	.L1107
	cmpl	$0, -68(%ebp)
	jne	.L1103
.L1107:
	.loc 1 2393 0
	movl	-72(%ebp), %eax
	movl	4(%eax), %edx
	movl	-76(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	common_type@PLT
	movl	-156(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	c_common_signed_or_unsigned_type@PLT
	movl	%eax, -120(%ebp)
	.loc 1 2387 0
	jmp	.L1092
.L1103:
	.loc 1 2396 0
	movl	-76(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	jne	.L1109
	movl	-152(%ebp), %eax
	testl	%eax, %eax
	jne	.L1111
	cmpl	$0, -68(%ebp)
	jne	.L1109
.L1111:
	movl	-72(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	36(%eax), %eax
	andw	$511, %ax
	movzwl	%ax, %edx
	movl	-120(%ebp), %eax
	movzwl	36(%eax), %eax
	andw	$511, %ax
	movzwl	%ax, %eax
	cmpl	%eax, %edx
	jge	.L1109
	movl	-72(%ebp), %eax
	movl	4(%eax), %eax
	movl	-152(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	c_common_signed_or_unsigned_type@PLT
	movl	%eax, -64(%ebp)
	movl	-64(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-76(%ebp), %eax
	movl	%eax, (%esp)
	call	int_fits_type_p@PLT
	testl	%eax, %eax
	je	.L1109
	.loc 1 2404 0
	movl	-64(%ebp), %eax
	movl	%eax, -120(%ebp)
	.loc 1 2396 0
	jmp	.L1092
.L1109:
	.loc 1 2405 0
	movl	-72(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	jne	.L1092
	movl	-156(%ebp), %eax
	testl	%eax, %eax
	jne	.L1116
	cmpl	$0, -68(%ebp)
	jne	.L1092
.L1116:
	movl	-76(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	36(%eax), %eax
	andw	$511, %ax
	movzwl	%ax, %edx
	movl	-120(%ebp), %eax
	movzwl	36(%eax), %eax
	andw	$511, %ax
	movzwl	%ax, %eax
	cmpl	%eax, %edx
	jge	.L1092
	movl	-76(%ebp), %eax
	movl	4(%eax), %eax
	movl	-156(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	c_common_signed_or_unsigned_type@PLT
	movl	%eax, -64(%ebp)
	movl	-64(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	int_fits_type_p@PLT
	testl	%eax, %eax
	je	.L1092
	.loc 1 2413 0
	movl	-64(%ebp), %eax
	movl	%eax, -120(%ebp)
.L1092:
.LBE31:
	.loc 1 2418 0
	cmpl	$0, -96(%ebp)
	je	.L1120
.LBB32:
	.loc 1 2421 0
	leal	-152(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-132(%ebp), %eax
	movl	%eax, (%esp)
	call	get_narrower@PLT
	movl	%eax, -60(%ebp)
	.loc 1 2423 0
	movl	-120(%ebp), %eax
	movl	%eax, -108(%ebp)
	.loc 1 2425 0
	movl	-60(%ebp), %eax
	cmpl	-132(%ebp), %eax
	jne	.L1122
	movl	-132(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-108(%ebp), %eax
	jne	.L1122
	.loc 1 2426 0
	movl	-132(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	9(%eax), %eax
	shrb	$5, %al
	andl	$1, %eax
	movzbl	%al, %eax
	movl	%eax, -152(%ebp)
.L1122:
	.loc 1 2428 0
	movl	-60(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	36(%eax), %eax
	andw	$511, %ax
	movzwl	%ax, %edx
	movl	-120(%ebp), %eax
	movzwl	36(%eax), %eax
	andw	$511, %ax
	movzwl	%ax, %eax
	cmpl	%eax, %edx
	jge	.L1120
	movl	-60(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	36(%eax), %ecx
	andw	$511, %cx
	movzwl	%cx, %eax
	movl	$0, %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	-128(%ebp), %eax
	movl	%eax, (%esp)
	call	compare_tree_int@PLT
	testl	%eax, %eax
	jns	.L1120
	movl	-108(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L1127
	movl	-152(%ebp), %eax
	testl	%eax, %eax
	je	.L1120
.L1127:
	.loc 1 2436 0
	movl	-60(%ebp), %eax
	movl	4(%eax), %eax
	movl	-152(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	c_common_signed_or_unsigned_type@PLT
	movl	%eax, -120(%ebp)
	.loc 1 2440 0
	movl	-132(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-120(%ebp), %eax
	je	.L1129
	.loc 1 2441 0
	movl	-132(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-120(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, -132(%ebp)
.L1129:
	.loc 1 2442 0
	movl	$1, -116(%ebp)
.L1120:
.LBE32:
	.loc 1 2449 0
	cmpl	$0, -100(%ebp)
	je	.L1079
.LBB33:
	.loc 1 2455 0
	movl	-132(%ebp), %eax
	movl	%eax, -152(%ebp)
	movl	-128(%ebp), %eax
	movl	%eax, -156(%ebp)
	movl	-120(%ebp), %eax
	movl	%eax, -160(%ebp)
	.loc 1 2456 0
	movl	-124(%ebp), %eax
	movl	%eax, -164(%ebp)
	.loc 1 2458 0
	leal	-164(%ebp), %eax
	movl	%eax, 12(%esp)
	leal	-160(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-156(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-152(%ebp), %eax
	movl	%eax, (%esp)
	call	shorten_compare@PLT
	movl	%eax, -56(%ebp)
	.loc 1 2460 0
	cmpl	$0, -56(%ebp)
	je	.L1132
	.loc 1 2461 0
	movl	-56(%ebp), %eax
	movl	%eax, -220(%ebp)
	jmp	.L847
.L1132:
	.loc 1 2463 0
	movl	-152(%ebp), %eax
	movl	%eax, -132(%ebp)
	movl	-156(%ebp), %eax
	movl	%eax, -128(%ebp)
	.loc 1 2464 0
	movl	$1, -116(%ebp)
	.loc 1 2465 0
	movl	-164(%ebp), %eax
	movl	%eax, -124(%ebp)
	.loc 1 2467 0
	movl	warn_sign_compare@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	js	.L1134
	movl	warn_sign_compare@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	setne	-201(%ebp)
	jmp	.L1136
.L1134:
	movl	extra_warnings@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	setne	-201(%ebp)
.L1136:
	cmpb	$0, -201(%ebp)
	je	.L1079
	movl	skip_evaluation@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L1079
.LBB34:
	.loc 1 2470 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	9(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -52(%ebp)
	.loc 1 2471 0
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	9(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -48(%ebp)
	.loc 1 2473 0
	leal	-168(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-132(%ebp), %eax
	movl	%eax, (%esp)
	call	get_narrower@PLT
	movl	%eax, -44(%ebp)
	.loc 1 2474 0
	leal	-172(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-128(%ebp), %eax
	movl	%eax, (%esp)
	call	get_narrower@PLT
	movl	%eax, -40(%ebp)
	.loc 1 2476 0
	movl	12(%ebp), %eax
	movl	%eax, -152(%ebp)
	.loc 1 2477 0
	movl	16(%ebp), %eax
	movl	%eax, -156(%ebp)
	.loc 1 2478 0
	jmp	.L1139
.L1140:
	movl	-152(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -152(%ebp)
.L1139:
	movl	-152(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$117, %al
	je	.L1141
	movl	-152(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$116, %al
	je	.L1141
	movl	-152(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$118, %al
	jne	.L1146
.L1141:
	movl	-152(%ebp), %eax
	movl	20(%eax), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	je	.L1146
	movl	-152(%ebp), %eax
	movl	4(%eax), %edx
	movl	-152(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	je	.L1140
	.loc 1 2479 0
	jmp	.L1146
.L1147:
	movl	-156(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -156(%ebp)
.L1146:
	movl	-156(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$117, %al
	je	.L1148
	movl	-156(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$116, %al
	je	.L1148
	movl	-156(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$118, %al
	jne	.L1151
.L1148:
	movl	-156(%ebp), %eax
	movl	20(%eax), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	je	.L1151
	movl	-156(%ebp), %eax
	movl	4(%eax), %edx
	movl	-156(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	je	.L1147
.L1151:
	.loc 1 2490 0
	movl	-120(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L1153
	.loc 1 2493 0
	movl	-52(%ebp), %eax
	cmpl	-48(%ebp), %eax
	je	.L1153
.LBB35:
	.loc 1 2499 0
	cmpl	$0, -52(%ebp)
	je	.L1156
	.loc 1 2500 0
	movl	-152(%ebp), %eax
	movl	%eax, -36(%ebp)
	movl	-156(%ebp), %eax
	movl	%eax, -32(%ebp)
	jmp	.L1158
.L1156:
	.loc 1 2502 0
	movl	-156(%ebp), %eax
	movl	%eax, -36(%ebp)
	movl	-152(%ebp), %eax
	movl	%eax, -32(%ebp)
.L1158:
	.loc 1 2509 0
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	c_tree_expr_nonnegative_p@PLT
	testl	%eax, %eax
	jne	.L1153
	.loc 1 2514 0
	movl	-32(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	jne	.L1160
	cmpl	$103, -124(%ebp)
	je	.L1162
	cmpl	$104, -124(%ebp)
	jne	.L1160
.L1162:
	movl	-120(%ebp), %eax
	movl	%eax, (%esp)
	call	c_common_signed_type@PLT
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	int_fits_type_p@PLT
	testl	%eax, %eax
	je	.L1160
	jmp	.L1153
.L1160:
	.loc 1 2522 0
	movl	-32(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	jne	.L1165
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$11, %al
	jne	.L1165
	movl	-120(%ebp), %eax
	movl	%eax, (%esp)
	call	c_common_signed_type@PLT
	movl	%eax, %edx
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movl	68(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	int_fits_type_p@PLT
	testl	%eax, %eax
	je	.L1165
	jmp	.L1153
.L1165:
	.loc 1 2529 0
	leal	.LC73@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
.L1153:
.LBE35:
	.loc 1 2540 0
	movl	-44(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$92, %al
	sete	%dl
	movl	-40(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$92, %al
	sete	%al
	xorl	%edx, %eax
	testb	%al, %al
	je	.L1079
	.loc 1 2543 0
	movl	-44(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$92, %al
	jne	.L1170
	.loc 1 2544 0
	movl	-44(%ebp), %eax
	movl	20(%eax), %edx
	leal	-168(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	get_narrower@PLT
	movl	%eax, -44(%ebp)
	jmp	.L1172
.L1170:
	.loc 1 2547 0
	movl	-40(%ebp), %eax
	movl	20(%eax), %edx
	leal	-172(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	get_narrower@PLT
	movl	%eax, -40(%ebp)
.L1172:
	.loc 1 2550 0
	movl	$0, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	host_integerp@PLT
	testl	%eax, %eax
	jne	.L1173
	movl	$0, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	host_integerp@PLT
	testl	%eax, %eax
	je	.L1175
.L1173:
.LBB36:
	.loc 1 2556 0
	movl	$0, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	host_integerp@PLT
	testl	%eax, %eax
	je	.L1176
	.loc 1 2558 0
	movl	-40(%ebp), %eax
	movl	%eax, -28(%ebp)
	.loc 1 2559 0
	movl	-172(%ebp), %eax
	movl	%eax, -24(%ebp)
	.loc 1 2560 0
	movl	$0, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_low_cst@PLT
	movl	%eax, -192(%ebp)
	movl	%edx, -188(%ebp)
	jmp	.L1178
.L1176:
	.loc 1 2564 0
	movl	-44(%ebp), %eax
	movl	%eax, -28(%ebp)
	.loc 1 2565 0
	movl	-168(%ebp), %eax
	movl	%eax, -24(%ebp)
	.loc 1 2566 0
	movl	$0, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_low_cst@PLT
	movl	%eax, -192(%ebp)
	movl	%edx, -188(%ebp)
.L1178:
	.loc 1 2569 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	36(%eax), %eax
	andw	$511, %ax
	movzwl	%ax, %eax
	movl	%eax, -20(%ebp)
	.loc 1 2570 0
	movl	-120(%ebp), %eax
	movzwl	36(%eax), %eax
	andw	$511, %ax
	movzwl	%ax, %eax
	cmpl	-20(%ebp), %eax
	jle	.L1079
	cmpl	$63, -20(%ebp)
	jg	.L1079
	cmpl	$0, -24(%ebp)
	je	.L1079
	.loc 1 2573 0
	movl	-20(%ebp), %ecx
	movl	$-1, %eax
	movl	$-1, %edx
	shldl	%eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	je	.L1202
	movl	%eax, %edx
	xorl	%eax, %eax
.L1202:
	movl	%eax, -184(%ebp)
	movl	%edx, -180(%ebp)
	.loc 1 2574 0
	movl	-192(%ebp), %ecx
	movl	-188(%ebp), %esi
	movl	-184(%ebp), %eax
	andl	%ecx, %eax
	movl	-180(%ebp), %edx
	andl	%esi, %edx
	movl	%edx, %ecx
	xorl	-180(%ebp), %ecx
	xorl	-184(%ebp), %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	je	.L1079
	.loc 1 2575 0
	leal	.LC74@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
	.loc 1 2550 0
	jmp	.L1079
.L1175:
.LBE36:
	.loc 1 2578 0
	movl	-168(%ebp), %eax
	testl	%eax, %eax
	je	.L1079
	movl	-172(%ebp), %eax
	testl	%eax, %eax
	je	.L1079
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	36(%eax), %eax
	andw	$511, %ax
	movzwl	%ax, %edx
	movl	-120(%ebp), %eax
	movzwl	36(%eax), %eax
	andw	$511, %ax
	movzwl	%ax, %eax
	cmpl	%eax, %edx
	jge	.L1079
	movl	-40(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	36(%eax), %eax
	andw	$511, %ax
	movzwl	%ax, %edx
	movl	-120(%ebp), %eax
	movzwl	36(%eax), %eax
	andw	$511, %ax
	movzwl	%ax, %eax
	cmpl	%eax, %edx
	jge	.L1079
	.loc 1 2583 0
	leal	.LC75@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
.L1079:
.LBE34:
.LBE33:
.LBE30:
	.loc 1 2595 0
	cmpl	$0, -120(%ebp)
	jne	.L1188
	.loc 1 2597 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	binary_op_error@PLT
	.loc 1 2598 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -220(%ebp)
	jmp	.L847
.L1188:
	.loc 1 2601 0
	cmpl	$0, -116(%ebp)
	jne	.L1190
	.loc 1 2603 0
	movl	-132(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-120(%ebp), %eax
	je	.L1192
	.loc 1 2604 0
	movl	-132(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-120(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, -132(%ebp)
.L1192:
	.loc 1 2605 0
	movl	-128(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-120(%ebp), %eax
	je	.L1190
	.loc 1 2606 0
	movl	-128(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-120(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, -128(%ebp)
.L1190:
	.loc 1 2609 0
	cmpl	$0, -112(%ebp)
	jne	.L1195
	.loc 1 2610 0
	movl	-120(%ebp), %eax
	movl	%eax, -112(%ebp)
.L1195:
.LBB37:
	.loc 1 2645 0
	movl	-128(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-132(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-112(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-124(%ebp), %eax
	movl	%eax, (%esp)
	call	build@PLT
	movl	%eax, -16(%ebp)
	.loc 1 2648 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -12(%ebp)
	.loc 1 2649 0
	movl	-12(%ebp), %eax
	cmpl	-16(%ebp), %eax
	jne	.L1197
	.loc 1 2650 0
	movl	-132(%ebp), %eax
	movzbl	9(%eax), %eax
	shrb	%al
	andl	$1, %eax
	movl	%eax, %edx
	movl	-128(%ebp), %eax
	movzbl	9(%eax), %eax
	shrb	%al
	andl	$1, %eax
	andl	%edx, %eax
	andl	$1, %eax
	movl	-12(%ebp), %ecx
	andl	$1, %eax
	leal	(%eax,%eax), %edx
	movzbl	9(%ecx), %eax
	andl	$-3, %eax
	orl	%edx, %eax
	movb	%al, 9(%ecx)
.L1197:
	.loc 1 2651 0
	cmpl	$0, -108(%ebp)
	je	.L1199
	.loc 1 2652 0
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-108(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, -220(%ebp)
	jmp	.L847
.L1199:
	.loc 1 2653 0
	movl	-12(%ebp), %eax
	movl	%eax, -220(%ebp)
.L847:
	movl	-220(%ebp), %eax
.LBE37:
	.loc 1 2655 0
	addl	$240, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE37:
	.size	build_binary_op, .-build_binary_op
.globl c_tree_expr_nonnegative_p
	.type	c_tree_expr_nonnegative_p, @function
c_tree_expr_nonnegative_p:
.LFB38:
	.loc 1 2663 0
	pushl	%ebp
.LCFI92:
	movl	%esp, %ebp
.LCFI93:
	pushl	%ebx
.LCFI94:
	subl	$20, %esp
.LCFI95:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2664 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-83, %al
	jne	.L1204
	.loc 1 2666 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, 8(%ebp)
	.loc 1 2670 0
	jmp	.L1206
.L1207:
	.loc 1 2672 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%ebp)
.L1206:
	.loc 1 2670 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1208
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-86, %al
	jne	.L1207
.L1208:
	.loc 1 2673 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	tree_expr_nonnegative_p@PLT
	movl	%eax, -8(%ebp)
	jmp	.L1210
.L1204:
	.loc 1 2675 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_expr_nonnegative_p@PLT
	movl	%eax, -8(%ebp)
.L1210:
	movl	-8(%ebp), %eax
	.loc 1 2676 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE38:
	.size	c_tree_expr_nonnegative_p, .-c_tree_expr_nonnegative_p
	.section	.rodata
	.align 4
.LC76:
	.string	"pointer of type `void *' used in subtraction"
	.align 4
.LC77:
	.string	"pointer to a function used in subtraction"
	.text
	.type	pointer_diff, @function
pointer_diff:
.LFB39:
	.loc 1 2684 0
	pushl	%ebp
.LCFI96:
	movl	%esp, %ebp
.LCFI97:
	pushl	%esi
.LCFI98:
	pushl	%ebx
.LCFI99:
	subl	$80, %esp
.LCFI100:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2686 0
	movl	global_trees@GOT(%ebx), %eax
	movl	124(%eax), %eax
	movl	%eax, -36(%ebp)
	.loc 1 2688 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 2690 0
	movl	12(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 2692 0
	movl	pedantic@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L1213
	movl	warn_pointer_arith@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1215
.L1213:
	.loc 1 2694 0
	movl	-32(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$6, %al
	jne	.L1216
	.loc 1 2695 0
	leal	.LC76@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	pedwarn@PLT
.L1216:
	.loc 1 2696 0
	movl	-32(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$24, %al
	jne	.L1215
	.loc 1 2697 0
	leal	.LC77@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	pedwarn@PLT
.L1215:
	.loc 1 2708 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$117, %al
	jne	.L1219
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -64(%ebp)
	jmp	.L1221
.L1219:
	movl	8(%ebp), %eax
	movl	%eax, -64(%ebp)
.L1221:
	movl	-64(%ebp), %eax
	movl	%eax, -28(%ebp)
	.loc 1 2709 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$117, %al
	jne	.L1222
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -60(%ebp)
	jmp	.L1224
.L1222:
	movl	12(%ebp), %eax
	movl	%eax, -60(%ebp)
.L1224:
	movl	-60(%ebp), %eax
	movl	%eax, -24(%ebp)
	.loc 1 2711 0
	movl	-28(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$60, %al
	jne	.L1225
	.loc 1 2713 0
	movl	-28(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 2714 0
	movl	-28(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L1227
.L1225:
	.loc 1 2717 0
	movl	global_trees@GOT(%ebx), %eax
	movl	44(%eax), %eax
	movl	%eax, -20(%ebp)
.L1227:
	.loc 1 2719 0
	movl	-24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$60, %al
	jne	.L1228
	.loc 1 2721 0
	movl	-24(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 2722 0
	movl	-24(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L1230
.L1228:
	.loc 1 2725 0
	movl	global_trees@GOT(%ebx), %eax
	movl	44(%eax), %eax
	movl	%eax, -16(%ebp)
.L1230:
	.loc 1 2727 0
	movl	$0, 8(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	operand_equal_p@PLT
	testl	%eax, %eax
	je	.L1231
	.loc 1 2729 0
	movl	-20(%ebp), %eax
	movl	%eax, 8(%ebp)
	.loc 1 2730 0
	movl	-16(%ebp), %eax
	movl	%eax, 12(%ebp)
.L1231:
	.loc 1 2739 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, %esi
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	$0, 12(%esp)
	movl	%esi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$61, (%esp)
	call	build_binary_op@PLT
	movl	%eax, 8(%ebp)
	.loc 1 2742 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	jne	.L1233
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$6, %al
	je	.L1233
	.loc 1 2743 0
	leal	.LC12@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L1233:
	.loc 1 2746 0
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	c_size_in_bytes@PLT
	movl	%eax, 12(%ebp)
	.loc 1 2750 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, 12(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$72, (%esp)
	call	build@PLT
	movl	%eax, -44(%ebp)
	.loc 1 2752 0
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -40(%ebp)
	.loc 1 2753 0
	movl	-40(%ebp), %eax
	cmpl	-44(%ebp), %eax
	jne	.L1236
	.loc 1 2754 0
	movl	8(%ebp), %eax
	movzbl	9(%eax), %eax
	shrb	%al
	andl	$1, %eax
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movzbl	9(%eax), %eax
	shrb	%al
	andl	$1, %eax
	andl	%edx, %eax
	andl	$1, %eax
	movl	-40(%ebp), %ecx
	andl	$1, %eax
	leal	(%eax,%eax), %edx
	movzbl	9(%ecx), %eax
	andl	$-3, %eax
	orl	%edx, %eax
	movb	%al, 9(%ecx)
.L1236:
	.loc 1 2755 0
	movl	-40(%ebp), %eax
	.loc 1 2756 0
	addl	$80, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE39:
	.size	pointer_diff, .-pointer_diff
	.section	.rodata
	.align 4
.LC78:
	.string	"wrong type argument to unary plus"
	.align 4
.LC79:
	.string	"wrong type argument to unary minus"
	.align 4
.LC80:
	.string	"ISO C does not support `~' for complex conjugation"
	.align 4
.LC81:
	.string	"wrong type argument to bit-complement"
.LC82:
	.string	"wrong type argument to abs"
	.align 4
.LC83:
	.string	"wrong type argument to conjugation"
	.align 4
.LC84:
	.string	"wrong type argument to unary exclamation mark"
	.align 4
.LC85:
	.string	"ISO C does not support `++' and `--' on complex types"
	.align 4
.LC86:
	.string	"wrong type argument to increment"
	.align 4
.LC87:
	.string	"wrong type argument to decrement"
	.align 4
.LC88:
	.string	"increment of pointer to unknown structure"
	.align 4
.LC89:
	.string	"decrement of pointer to unknown structure"
.LC90:
	.string	"invalid lvalue in increment"
.LC91:
	.string	"invalid lvalue in decrement"
.LC92:
	.string	"increment"
.LC93:
	.string	"decrement"
.LC94:
	.string	"invalid lvalue in unary `&'"
	.align 4
.LC95:
	.string	"attempt to take address of bit-field structure member `%s'"
	.text
.globl build_unary_op
	.type	build_unary_op, @function
build_unary_op:
.LFB40:
	.loc 1 2772 0
	pushl	%ebp
.LCFI101:
	movl	%esp, %ebp
.LCFI102:
	pushl	%esi
.LCFI103:
	pushl	%ebx
.LCFI104:
	subl	$112, %esp
.LCFI105:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2774 0
	movl	12(%ebp), %eax
	movl	%eax, -64(%ebp)
	.loc 1 2775 0
	movl	$0, -60(%ebp)
	.loc 1 2776 0
	movl	-64(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -56(%ebp)
	.loc 1 2778 0
	movl	16(%ebp), %eax
	movl	%eax, -48(%ebp)
	.loc 1 2780 0
	cmpl	$0, -56(%ebp)
	jne	.L1240
	.loc 1 2781 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -100(%ebp)
	jmp	.L1242
.L1240:
	.loc 1 2782 0
	cmpl	$11, -56(%ebp)
	je	.L1243
	cmpl	$12, -56(%ebp)
	jne	.L1245
.L1243:
	.loc 1 2783 0
	movl	$7, -56(%ebp)
.L1245:
	.loc 1 2785 0
	movl	8(%ebp), %eax
	subl	$79, %eax
	movl	%eax, -104(%ebp)
	cmpl	$55, -104(%ebp)
	ja	.L1246
	movl	-104(%ebp), %eax
	sall	$2, %eax
	movl	.L1258@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L1258:
	.long	.L1247@GOTOFF
	.long	.L1246@GOTOFF
	.long	.L1246@GOTOFF
	.long	.L1248@GOTOFF
	.long	.L1246@GOTOFF
	.long	.L1246@GOTOFF
	.long	.L1246@GOTOFF
	.long	.L1246@GOTOFF
	.long	.L1246@GOTOFF
	.long	.L1246@GOTOFF
	.long	.L1246@GOTOFF
	.long	.L1246@GOTOFF
	.long	.L1246@GOTOFF
	.long	.L1249@GOTOFF
	.long	.L1246@GOTOFF
	.long	.L1246@GOTOFF
	.long	.L1246@GOTOFF
	.long	.L1246@GOTOFF
	.long	.L1246@GOTOFF
	.long	.L1250@GOTOFF
	.long	.L1246@GOTOFF
	.long	.L1246@GOTOFF
	.long	.L1246@GOTOFF
	.long	.L1246@GOTOFF
	.long	.L1246@GOTOFF
	.long	.L1246@GOTOFF
	.long	.L1246@GOTOFF
	.long	.L1246@GOTOFF
	.long	.L1246@GOTOFF
	.long	.L1246@GOTOFF
	.long	.L1246@GOTOFF
	.long	.L1246@GOTOFF
	.long	.L1246@GOTOFF
	.long	.L1246@GOTOFF
	.long	.L1246@GOTOFF
	.long	.L1246@GOTOFF
	.long	.L1246@GOTOFF
	.long	.L1251@GOTOFF
	.long	.L1246@GOTOFF
	.long	.L1246@GOTOFF
	.long	.L1246@GOTOFF
	.long	.L1246@GOTOFF
	.long	.L1246@GOTOFF
	.long	.L1246@GOTOFF
	.long	.L1253@GOTOFF
	.long	.L1246@GOTOFF
	.long	.L1246@GOTOFF
	.long	.L1246@GOTOFF
	.long	.L1246@GOTOFF
	.long	.L1254@GOTOFF
	.long	.L1255@GOTOFF
	.long	.L1256@GOTOFF
	.long	.L1257@GOTOFF
	.long	.L1257@GOTOFF
	.long	.L1257@GOTOFF
	.long	.L1257@GOTOFF
	.text
.L1251:
	.loc 1 2791 0
	cmpl	$7, -56(%ebp)
	je	.L1259
	cmpl	$8, -56(%ebp)
	je	.L1259
	cmpl	$9, -56(%ebp)
	je	.L1259
	.loc 1 2794 0
	leal	.LC78@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 2795 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -100(%ebp)
	jmp	.L1242
.L1259:
	.loc 1 2797 0
	cmpl	$0, -48(%ebp)
	jne	.L1263
	.loc 1 2798 0
	movl	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	default_conversion@PLT
	movl	%eax, -64(%ebp)
.L1263:
	.loc 1 2799 0
	movl	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	non_lvalue@PLT
	movl	%eax, -64(%ebp)
	.loc 1 2800 0
	jmp	.L1246
.L1247:
	.loc 1 2803 0
	cmpl	$7, -56(%ebp)
	je	.L1265
	cmpl	$8, -56(%ebp)
	je	.L1265
	cmpl	$9, -56(%ebp)
	je	.L1265
	cmpl	$10, -56(%ebp)
	je	.L1265
	.loc 1 2807 0
	leal	.LC79@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 2808 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -100(%ebp)
	jmp	.L1242
.L1265:
	.loc 1 2810 0
	cmpl	$0, -48(%ebp)
	jne	.L1246
	.loc 1 2811 0
	movl	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	default_conversion@PLT
	movl	%eax, -64(%ebp)
	.loc 1 2812 0
	jmp	.L1246
.L1249:
	.loc 1 2815 0
	cmpl	$7, -56(%ebp)
	je	.L1272
	cmpl	$10, -56(%ebp)
	jne	.L1274
.L1272:
	.loc 1 2817 0
	cmpl	$0, -48(%ebp)
	jne	.L1246
	.loc 1 2818 0
	movl	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	default_conversion@PLT
	movl	%eax, -64(%ebp)
	.loc 1 2815 0
	jmp	.L1246
.L1274:
	.loc 1 2820 0
	cmpl	$9, -56(%ebp)
	jne	.L1278
	.loc 1 2822 0
	movl	$128, 8(%ebp)
	.loc 1 2823 0
	movl	pedantic@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1280
	.loc 1 2824 0
	leal	.LC80@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	pedwarn@PLT
.L1280:
	.loc 1 2825 0
	cmpl	$0, -48(%ebp)
	jne	.L1246
	.loc 1 2826 0
	movl	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	default_conversion@PLT
	movl	%eax, -64(%ebp)
	jmp	.L1246
.L1278:
	.loc 1 2830 0
	leal	.LC81@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 2831 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -100(%ebp)
	jmp	.L1242
.L1248:
	.loc 1 2836 0
	cmpl	$7, -56(%ebp)
	je	.L1284
	cmpl	$8, -56(%ebp)
	je	.L1284
	cmpl	$9, -56(%ebp)
	je	.L1284
	.loc 1 2839 0
	leal	.LC82@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 2840 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -100(%ebp)
	jmp	.L1242
.L1284:
	.loc 1 2842 0
	cmpl	$0, -48(%ebp)
	jne	.L1246
	.loc 1 2843 0
	movl	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	default_conversion@PLT
	movl	%eax, -64(%ebp)
	.loc 1 2844 0
	jmp	.L1246
.L1254:
	.loc 1 2848 0
	cmpl	$7, -56(%ebp)
	je	.L1290
	cmpl	$8, -56(%ebp)
	je	.L1290
	cmpl	$9, -56(%ebp)
	je	.L1290
	.loc 1 2851 0
	leal	.LC83@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 2852 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -100(%ebp)
	jmp	.L1242
.L1290:
	.loc 1 2854 0
	cmpl	$0, -48(%ebp)
	jne	.L1246
	.loc 1 2855 0
	movl	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	default_conversion@PLT
	movl	%eax, -64(%ebp)
	.loc 1 2856 0
	jmp	.L1246
.L1250:
	.loc 1 2859 0
	cmpl	$7, -56(%ebp)
	je	.L1296
	cmpl	$8, -56(%ebp)
	je	.L1296
	cmpl	$14, -56(%ebp)
	je	.L1296
	cmpl	$9, -56(%ebp)
	je	.L1296
	cmpl	$19, -56(%ebp)
	je	.L1296
	cmpl	$24, -56(%ebp)
	je	.L1296
	.loc 1 2865 0
	leal	.LC84@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 2866 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -100(%ebp)
	jmp	.L1242
.L1296:
	.loc 1 2868 0
	movl	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	c_common_truthvalue_conversion@PLT
	movl	%eax, -64(%ebp)
	.loc 1 2869 0
	movl	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	invert_truthvalue@PLT
	movl	%eax, -100(%ebp)
	jmp	.L1242
.L1255:
	.loc 1 2875 0
	movl	-64(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$28, %al
	jne	.L1303
	.loc 1 2876 0
	movl	-64(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -100(%ebp)
	jmp	.L1242
.L1303:
	.loc 1 2877 0
	movl	-64(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$9, %al
	jne	.L1305
	.loc 1 2878 0
	movl	-64(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %edx
	movl	-64(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$129, (%esp)
	call	build1@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -100(%ebp)
	jmp	.L1242
.L1305:
	.loc 1 2880 0
	movl	-64(%ebp), %eax
	movl	%eax, -100(%ebp)
	jmp	.L1242
.L1256:
	.loc 1 2883 0
	movl	-64(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$28, %al
	jne	.L1307
	.loc 1 2884 0
	movl	-64(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -100(%ebp)
	jmp	.L1242
.L1307:
	.loc 1 2885 0
	movl	-64(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$9, %al
	jne	.L1309
	.loc 1 2886 0
	movl	-64(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %edx
	movl	-64(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$130, (%esp)
	call	build1@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -100(%ebp)
	jmp	.L1242
.L1309:
	.loc 1 2888 0
	movl	global_trees@GOT(%ebx), %eax
	movl	44(%eax), %edx
	movl	-64(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, -100(%ebp)
	jmp	.L1242
.L1257:
	.loc 1 2897 0
	movl	$0, 8(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	unary_complex_lvalue
	movl	%eax, -52(%ebp)
	.loc 1 2898 0
	cmpl	$0, -52(%ebp)
	je	.L1311
	.loc 1 2899 0
	movl	-52(%ebp), %eax
	movl	%eax, -100(%ebp)
	jmp	.L1242
.L1311:
	.loc 1 2903 0
	cmpl	$9, -56(%ebp)
	jne	.L1313
.LBB38:
	.loc 1 2907 0
	movl	pedantic@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1315
	.loc 1 2908 0
	leal	.LC85@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	pedwarn@PLT
.L1315:
	.loc 1 2910 0
	movl	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	stabilize_reference@PLT
	movl	%eax, -64(%ebp)
	.loc 1 2911 0
	movl	$1, 8(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$129, (%esp)
	call	build_unary_op@PLT
	movl	%eax, -44(%ebp)
	.loc 1 2912 0
	movl	$1, 8(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$130, (%esp)
	call	build_unary_op@PLT
	movl	%eax, -40(%ebp)
	.loc 1 2913 0
	movl	$1, 8(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_unary_op@PLT
	movl	%eax, %edx
	movl	-64(%ebp), %eax
	movl	4(%eax), %ecx
	movl	-40(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	$127, (%esp)
	call	build@PLT
	movl	%eax, -100(%ebp)
	jmp	.L1242
.L1313:
.LBE38:
	.loc 1 2919 0
	cmpl	$14, -56(%ebp)
	je	.L1317
	cmpl	$7, -56(%ebp)
	je	.L1317
	cmpl	$8, -56(%ebp)
	je	.L1317
	.loc 1 2922 0
	cmpl	$132, 8(%ebp)
	je	.L1321
	cmpl	$134, 8(%ebp)
	jne	.L1323
.L1321:
	.loc 1 2923 0
	leal	.LC86@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 2922 0
	jmp	.L1324
.L1323:
	.loc 1 2925 0
	leal	.LC87@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L1324:
	.loc 1 2927 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -100(%ebp)
	jmp	.L1242
.L1317:
.LBB39:
	.loc 1 2932 0
	movl	-64(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 2934 0
	movl	$0, 4(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	get_unwidened@PLT
	movl	%eax, -64(%ebp)
	.loc 1 2935 0
	movl	-64(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -60(%ebp)
	.loc 1 2939 0
	cmpl	$14, -56(%ebp)
	jne	.L1325
	.loc 1 2943 0
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	jne	.L1327
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$6, %al
	je	.L1327
	.loc 1 2945 0
	cmpl	$132, 8(%ebp)
	je	.L1330
	cmpl	$134, 8(%ebp)
	jne	.L1332
.L1330:
	.loc 1 2946 0
	leal	.LC88@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 2945 0
	jmp	.L1334
.L1332:
	.loc 1 2948 0
	leal	.LC89@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 2943 0
	jmp	.L1334
.L1327:
	.loc 1 2950 0
	movl	pedantic@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L1335
	movl	warn_pointer_arith@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1334
.L1335:
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$24, %al
	je	.L1337
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$6, %al
	jne	.L1334
.L1337:
	.loc 1 2954 0
	cmpl	$132, 8(%ebp)
	je	.L1339
	cmpl	$134, 8(%ebp)
	jne	.L1341
.L1339:
	.loc 1 2955 0
	leal	.LC86@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	pedwarn@PLT
	.loc 1 2954 0
	jmp	.L1334
.L1341:
	.loc 1 2957 0
	leal	.LC87@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	pedwarn@PLT
.L1334:
	.loc 1 2960 0
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	c_size_in_bytes@PLT
	movl	%eax, -36(%ebp)
	jmp	.L1342
.L1325:
	.loc 1 2963 0
	movl	global_trees@GOT(%ebx), %eax
	movl	48(%eax), %eax
	movl	%eax, -36(%ebp)
.L1342:
	.loc 1 2965 0
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, -36(%ebp)
.L1343:
	.loc 1 2970 0
	movl	-64(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -96(%ebp)
	cmpl	$73, -96(%ebp)
	jb	.L1360
	cmpl	$77, -96(%ebp)
	jbe	.L1345
	movl	-96(%ebp), %eax
	subl	$116, %eax
	cmpl	$1, %eax
	ja	.L1360
.L1345:
	.loc 1 2979 0
	movl	$116, (%esp)
	call	pedantic_lvalue_warning
	.loc 1 2983 0
	movl	-64(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %edx
	movl	-64(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	%al, %dl
	jne	.L1346
	movl	-64(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	movl	%eax, %edx
	shrb	%dl
	movl	-64(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	cmpb	%al, %dl
	jne	.L1346
	.loc 1 2987 0
	movl	-64(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -64(%ebp)
	.loc 1 3015 0
	jmp	.L1343
.L1346:
.LBB40:
	.loc 1 2991 0
	movl	-64(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$12, %al
	jne	.L1349
	.loc 1 2992 0
	movl	-64(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	boolean_increment@PLT
	movl	%eax, -20(%ebp)
	jmp	.L1351
.L1349:
	.loc 1 2995 0
	movl	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	stabilize_reference@PLT
	movl	%eax, -64(%ebp)
	.loc 1 2996 0
	cmpl	$132, 8(%ebp)
	je	.L1352
	cmpl	$131, 8(%ebp)
	jne	.L1354
.L1352:
	.loc 1 2997 0
	movl	-64(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 2996 0
	jmp	.L1355
.L1354:
	.loc 1 2999 0
	movl	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	save_expr@PLT
	movl	%eax, -20(%ebp)
.L1355:
	.loc 1 3000 0
	cmpl	$132, 8(%ebp)
	je	.L1356
	cmpl	$134, 8(%ebp)
	jne	.L1358
.L1356:
	movl	$60, -92(%ebp)
	jmp	.L1359
.L1358:
	movl	$61, -92(%ebp)
.L1359:
	movl	-36(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-92(%ebp), %eax
	movl	%eax, (%esp)
	call	build@PLT
	movl	%eax, -28(%ebp)
	.loc 1 3004 0
	movl	-28(%ebp), %edx
	movzbl	9(%edx), %eax
	orl	$1, %eax
	movb	%al, 9(%edx)
	.loc 1 3005 0
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$117, 4(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	build_modify_expr@PLT
	movl	%eax, -24(%ebp)
	.loc 1 3006 0
	movl	-64(%ebp), %eax
	movl	4(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$48, (%esp)
	call	build@PLT
	movl	%eax, -20(%ebp)
.L1351:
	.loc 1 3008 0
	movl	-20(%ebp), %eax
	movzbl	10(%eax), %edx
	orl	$1, %edx
	movb	%dl, 10(%eax)
	.loc 1 3009 0
	movl	-20(%ebp), %eax
	movl	%eax, -100(%ebp)
	jmp	.L1242
.L1360:
.LBE40:
	.loc 1 3019 0
	cmpl	$132, 8(%ebp)
	je	.L1361
	cmpl	$134, 8(%ebp)
	jne	.L1363
.L1361:
	leal	.LC90@GOTOFF(%ebx), %eax
	movl	%eax, -88(%ebp)
	jmp	.L1364
.L1363:
	leal	.LC91@GOTOFF(%ebx), %eax
	movl	%eax, -88(%ebp)
.L1364:
	movl	-88(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	lvalue_or_else@PLT
	testl	%eax, %eax
	jne	.L1365
	.loc 1 3023 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -100(%ebp)
	jmp	.L1242
.L1365:
	.loc 1 3026 0
	movl	-64(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L1367
	.loc 1 3027 0
	cmpl	$132, 8(%ebp)
	je	.L1369
	cmpl	$134, 8(%ebp)
	jne	.L1371
.L1369:
	leal	.LC92@GOTOFF(%ebx), %eax
	movl	%eax, -84(%ebp)
	jmp	.L1372
.L1371:
	leal	.LC93@GOTOFF(%ebx), %eax
	movl	%eax, -84(%ebp)
.L1372:
	movl	-84(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	readonly_warning@PLT
.L1367:
	.loc 1 3032 0
	movl	-64(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$12, %al
	jne	.L1373
	.loc 1 3033 0
	movl	-64(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	boolean_increment@PLT
	movl	%eax, -52(%ebp)
	jmp	.L1375
.L1373:
	.loc 1 3035 0
	movl	-64(%ebp), %eax
	movl	4(%eax), %edx
	movl	-36(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	build@PLT
	movl	%eax, -52(%ebp)
.L1375:
	.loc 1 3036 0
	movl	-52(%ebp), %edx
	movzbl	9(%edx), %eax
	orl	$1, %eax
	movb	%al, 9(%edx)
	.loc 1 3037 0
	movl	-52(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, -52(%ebp)
	.loc 1 3038 0
	movl	-52(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	cmpl	8(%ebp), %eax
	je	.L1376
	.loc 1 3039 0
	movl	-52(%ebp), %eax
	movzbl	10(%eax), %edx
	orl	$4, %edx
	movb	%dl, 10(%eax)
.L1376:
	.loc 1 3040 0
	movl	-52(%ebp), %eax
	movl	%eax, -100(%ebp)
	jmp	.L1242
.L1253:
.LBE39:
	.loc 1 3047 0
	movl	-64(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$42, %al
	jne	.L1378
	.loc 1 3050 0
	movl	-64(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	lvalue_p@PLT
	testl	%eax, %eax
	je	.L1380
	.loc 1 3051 0
	movl	-64(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	non_lvalue@PLT
	movl	%eax, -100(%ebp)
	jmp	.L1242
.L1380:
	.loc 1 3052 0
	movl	-64(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -100(%ebp)
	jmp	.L1242
.L1378:
	.loc 1 3056 0
	movl	-64(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$44, %al
	jne	.L1382
	.loc 1 3058 0
	movl	-64(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	c_mark_addressable@PLT
	xorl	$1, %eax
	testb	%al, %al
	je	.L1384
	.loc 1 3059 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -100(%ebp)
	jmp	.L1242
.L1384:
	.loc 1 3060 0
	movl	-64(%ebp), %eax
	movl	24(%eax), %edx
	movl	-64(%ebp), %eax
	movl	20(%eax), %eax
	movl	$1, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$60, (%esp)
	call	build_binary_op@PLT
	movl	%eax, -100(%ebp)
	jmp	.L1242
.L1382:
	.loc 1 3066 0
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	unary_complex_lvalue
	movl	%eax, -52(%ebp)
	.loc 1 3067 0
	cmpl	$0, -52(%ebp)
	je	.L1386
	.loc 1 3068 0
	movl	-52(%ebp), %eax
	movl	%eax, -100(%ebp)
	jmp	.L1242
.L1386:
	.loc 1 3094 0
	cmpl	$24, -56(%ebp)
	je	.L1388
	cmpl	$0, 16(%ebp)
	jne	.L1388
	leal	.LC94@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	lvalue_or_else@PLT
	testl	%eax, %eax
	jne	.L1388
	.loc 1 3096 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -100(%ebp)
	jmp	.L1242
.L1388:
	.loc 1 3099 0
	movl	-64(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -60(%ebp)
	.loc 1 3105 0
	movl	-64(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$100, %al
	je	.L1392
	movl	-64(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$114, %al
	jne	.L1394
.L1392:
	movl	-64(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	jne	.L1395
	movl	-64(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L1394
.L1395:
	.loc 1 3107 0
	movl	-64(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -80(%ebp)
	movl	-64(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L1397
	movl	$2, -76(%ebp)
	jmp	.L1399
.L1397:
	movl	$0, -76(%ebp)
.L1399:
	movl	-80(%ebp), %eax
	orl	-76(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	c_build_qualified_type@PLT
	movl	%eax, -60(%ebp)
.L1394:
	.loc 1 3111 0
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	build_pointer_type@PLT
	movl	%eax, -60(%ebp)
	.loc 1 3113 0
	movl	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	c_mark_addressable@PLT
	xorl	$1, %eax
	testb	%al, %al
	je	.L1400
	.loc 1 3114 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -100(%ebp)
	jmp	.L1242
.L1400:
.LBB41:
	.loc 1 3119 0
	movl	-64(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$40, %al
	jne	.L1402
.LBB42:
	.loc 1 3121 0
	movl	-64(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 3123 0
	movl	-64(%ebp), %eax
	movl	20(%eax), %edx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$123, (%esp)
	call	build_unary_op@PLT
	movl	%eax, -16(%ebp)
	.loc 1 3125 0
	movl	-12(%ebp), %eax
	movzbl	38(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L1404
	.loc 1 3127 0
	movl	-12(%ebp), %eax
	movl	52(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC95@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 3129 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -100(%ebp)
	jmp	.L1242
.L1404:
	.loc 1 3132 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	byte_position@PLT
	movl	%eax, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, %esi
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%esi, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$60, (%esp)
	call	build@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -16(%ebp)
	jmp	.L1406
.L1402:
.LBE42:
	.loc 1 3137 0
	movl	-64(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	build1@PLT
	movl	%eax, -16(%ebp)
.L1406:
	.loc 1 3141 0
	movl	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	staticp@PLT
	testl	%eax, %eax
	je	.L1407
	movl	-64(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	jne	.L1409
	movl	-64(%ebp), %eax
	movl	56(%eax), %eax
	testl	%eax, %eax
	jne	.L1407
.L1409:
	.loc 1 3144 0
	movl	-16(%ebp), %eax
	movzbl	9(%eax), %edx
	orl	$2, %edx
	movb	%dl, 9(%eax)
.L1407:
	.loc 1 3145 0
	movl	-16(%ebp), %eax
	movl	%eax, -100(%ebp)
	jmp	.L1242
.L1246:
.LBE41:
	.loc 1 3152 0
	cmpl	$0, -60(%ebp)
	jne	.L1411
	.loc 1 3153 0
	movl	-64(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -60(%ebp)
.L1411:
	.loc 1 3154 0
	movl	-64(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	build1@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -100(%ebp)
.L1242:
	movl	-100(%ebp), %eax
	.loc 1 3155 0
	addl	$112, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE40:
	.size	build_unary_op, .-build_unary_op
.globl lvalue_p
	.type	lvalue_p, @function
lvalue_p:
.LFB41:
	.loc 1 3193 0
	pushl	%ebp
.LCFI106:
	movl	%esp, %ebp
.LCFI107:
	pushl	%ebx
.LCFI108:
	subl	$32, %esp
.LCFI109:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3194 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -8(%ebp)
	.loc 1 3196 0
	movl	-8(%ebp), %eax
	movl	%eax, -32(%ebp)
	cmpl	$42, -32(%ebp)
	je	.L1416
	cmpl	$42, -32(%ebp)
	ja	.L1420
	cmpl	$37, -32(%ebp)
	ja	.L1421
	cmpl	$35, -32(%ebp)
	jae	.L1416
	cmpl	$0, -32(%ebp)
	je	.L1416
	cmpl	$30, -32(%ebp)
	je	.L1417
	jmp	.L1415
.L1421:
	cmpl	$40, -32(%ebp)
	je	.L1418
	jmp	.L1415
.L1420:
	cmpl	$122, -32(%ebp)
	je	.L1419
	cmpl	$122, -32(%ebp)
	ja	.L1422
	cmpl	$44, -32(%ebp)
	je	.L1416
	cmpl	$53, -32(%ebp)
	je	.L1419
	jmp	.L1415
.L1422:
	cmpl	$129, -32(%ebp)
	jb	.L1415
	cmpl	$130, -32(%ebp)
	jbe	.L1418
	cmpl	$174, -32(%ebp)
	je	.L1417
	jmp	.L1415
.L1418:
	.loc 1 3201 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	lvalue_p@PLT
	movl	%eax, -28(%ebp)
	jmp	.L1423
.L1417:
	.loc 1 3205 0
	movl	$1, -28(%ebp)
	jmp	.L1423
.L1416:
	.loc 1 3213 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$24, %al
	je	.L1424
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$17, %al
	je	.L1424
	movl	$1, -24(%ebp)
	jmp	.L1427
.L1424:
	movl	$0, -24(%ebp)
.L1427:
	movl	-24(%ebp), %eax
	movl	%eax, -28(%ebp)
	jmp	.L1423
.L1419:
	.loc 1 3218 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$19, %al
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -28(%ebp)
	jmp	.L1423
.L1415:
	.loc 1 3221 0
	movl	$0, -28(%ebp)
.L1423:
	movl	-28(%ebp), %eax
	.loc 1 3223 0
	addl	$32, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE41:
	.size	lvalue_p, .-lvalue_p
	.section	.rodata
.LC96:
	.string	"%s"
	.text
.globl lvalue_or_else
	.type	lvalue_or_else, @function
lvalue_or_else:
.LFB42:
	.loc 1 3232 0
	pushl	%ebp
.LCFI110:
	movl	%esp, %ebp
.LCFI111:
	pushl	%ebx
.LCFI112:
	subl	$36, %esp
.LCFI113:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3233 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	lvalue_p@PLT
	movl	%eax, -8(%ebp)
	.loc 1 3235 0
	cmpl	$0, -8(%ebp)
	jne	.L1430
	.loc 1 3236 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC96@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L1430:
	.loc 1 3238 0
	movl	-8(%ebp), %eax
	.loc 1 3239 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE42:
	.size	lvalue_or_else, .-lvalue_or_else
	.type	unary_complex_lvalue, @function
unary_complex_lvalue:
.LFB43:
	.loc 1 3254 0
	pushl	%ebp
.LCFI114:
	movl	%esp, %ebp
.LCFI115:
	pushl	%esi
.LCFI116:
	pushl	%ebx
.LCFI117:
	subl	$48, %esp
.LCFI118:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3256 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$48, %al
	jne	.L1434
.LBB43:
	.loc 1 3258 0
	movl	12(%ebp), %eax
	movl	24(%eax), %eax
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_unary_op@PLT
	movl	%eax, -12(%ebp)
	.loc 1 3262 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$24, %al
	je	.L1436
	cmpl	$0, 16(%ebp)
	jne	.L1436
	.loc 1 3263 0
	movl	$48, (%esp)
	call	pedantic_lvalue_warning
.L1436:
	.loc 1 3265 0
	movl	12(%ebp), %eax
	movl	20(%eax), %edx
	movl	-12(%ebp), %eax
	movl	4(%eax), %ecx
	movl	-12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	$48, (%esp)
	call	build@PLT
	movl	%eax, -28(%ebp)
	jmp	.L1439
.L1434:
.LBE43:
	.loc 1 3270 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$52, %al
	jne	.L1440
	.loc 1 3272 0
	cmpl	$0, 16(%ebp)
	jne	.L1442
	.loc 1 3273 0
	movl	$52, (%esp)
	call	pedantic_lvalue_warning
.L1442:
	.loc 1 3274 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$24, %al
	je	.L1444
	cmpl	$0, 16(%ebp)
	jne	.L1444
	.loc 1 3275 0
	movl	$48, (%esp)
	call	pedantic_lvalue_warning
.L1444:
	.loc 1 3277 0
	movl	12(%ebp), %eax
	movl	28(%eax), %edx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_unary_op@PLT
	movl	%eax, %esi
	movl	12(%ebp), %eax
	movl	24(%eax), %edx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
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
	movl	%eax, -28(%ebp)
	jmp	.L1439
.L1440:
	.loc 1 3283 0
	movl	$0, -28(%ebp)
.L1439:
	movl	-28(%ebp), %eax
	.loc 1 3284 0
	addl	$48, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE43:
	.size	unary_complex_lvalue, .-unary_complex_lvalue
	.section	.rodata
	.align 4
.LC97:
	.string	"ISO C forbids use of conditional expressions as lvalues"
	.align 4
.LC98:
	.string	"ISO C forbids use of compound expressions as lvalues"
	.align 4
.LC99:
	.string	"ISO C forbids use of cast expressions as lvalues"
	.text
	.type	pedantic_lvalue_warning, @function
pedantic_lvalue_warning:
.LFB44:
	.loc 1 3292 0
	pushl	%ebp
.LCFI119:
	movl	%esp, %ebp
.LCFI120:
	pushl	%ebx
.LCFI121:
	subl	$20, %esp
.LCFI122:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3293 0
	movl	pedantic@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1454
	.loc 1 3294 0
	movl	8(%ebp), %eax
	movl	%eax, -8(%ebp)
	cmpl	$48, -8(%ebp)
	je	.L1452
	cmpl	$52, -8(%ebp)
	je	.L1453
	jmp	.L1451
.L1453:
	.loc 1 3297 0
	leal	.LC97@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	pedwarn@PLT
	.loc 1 3298 0
	jmp	.L1454
.L1452:
	.loc 1 3300 0
	leal	.LC98@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	pedwarn@PLT
	.loc 1 3301 0
	jmp	.L1454
.L1451:
	.loc 1 3303 0
	leal	.LC99@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	pedwarn@PLT
.L1454:
	.loc 1 3306 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE44:
	.size	pedantic_lvalue_warning, .-pedantic_lvalue_warning
	.section	.rodata
.LC100:
	.string	"%s of read-only member `%s'"
.LC101:
	.string	"%s of read-only variable `%s'"
.LC102:
	.string	"%s of read-only location"
	.text
.globl readonly_warning
	.type	readonly_warning, @function
readonly_warning:
.LFB45:
	.loc 1 3314 0
	pushl	%ebp
.LCFI123:
	movl	%esp, %ebp
.LCFI124:
	pushl	%ebx
.LCFI125:
	subl	$20, %esp
.LCFI126:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3315 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$40, %al
	jne	.L1456
	.loc 1 3317 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movzbl	9(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L1458
	.loc 1 3318 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	readonly_warning@PLT
	jmp	.L1464
.L1458:
	.loc 1 3320 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	52(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC100@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	pedwarn@PLT
	jmp	.L1464
.L1456:
	.loc 1 3323 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$35, %al
	jne	.L1462
	.loc 1 3324 0
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC101@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	pedwarn@PLT
	jmp	.L1464
.L1462:
	.loc 1 3327 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC102@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	pedwarn@PLT
.L1464:
	.loc 1 3328 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE45:
	.size	readonly_warning, .-readonly_warning
	.section	.rodata
	.align 4
.LC103:
	.string	"cannot take address of bit-field `%s'"
	.align 4
.LC104:
	.string	"global register variable `%s' used in nested function"
	.align 4
.LC105:
	.string	"register variable `%s' used in nested function"
	.align 4
.LC106:
	.string	"address of global register variable `%s' requested"
	.align 4
.LC107:
	.string	"cannot put object with volatile field into register"
	.align 4
.LC108:
	.string	"address of register variable `%s' requested"
	.text
.globl c_mark_addressable
	.type	c_mark_addressable, @function
c_mark_addressable:
.LFB46:
	.loc 1 3337 0
	pushl	%ebp
.LCFI127:
	movl	%esp, %ebp
.LCFI128:
	pushl	%ebx
.LCFI129:
	subl	$36, %esp
.LCFI130:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3338 0
	movl	8(%ebp), %eax
	movl	%eax, -8(%ebp)
.L1466:
	.loc 1 3341 0
	movl	-8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -28(%ebp)
	cmpl	$44, -28(%ebp)
	je	.L1471
	cmpl	$44, -28(%ebp)
	ja	.L1473
	cmpl	$37, -28(%ebp)
	ja	.L1474
	cmpl	$35, -28(%ebp)
	jae	.L1469
	cmpl	$31, -28(%ebp)
	je	.L1468
	cmpl	$33, -28(%ebp)
	je	.L1469
	jmp	.L1467
.L1474:
	cmpl	$40, -28(%ebp)
	je	.L1470
	jmp	.L1467
.L1473:
	cmpl	$130, -28(%ebp)
	ja	.L1475
	cmpl	$129, -28(%ebp)
	jae	.L1471
	cmpl	$47, -28(%ebp)
	je	.L1472
	cmpl	$123, -28(%ebp)
	je	.L1471
	jmp	.L1467
.L1475:
	cmpl	$174, -28(%ebp)
	je	.L1472
	jmp	.L1467
.L1470:
	.loc 1 3344 0
	movl	-8(%ebp), %eax
	movl	24(%eax), %eax
	movzbl	38(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L1471
	.loc 1 3346 0
	movl	-8(%ebp), %eax
	movl	24(%eax), %eax
	movl	52(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC103@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 3348 0
	movl	$0, -24(%ebp)
	jmp	.L1477
.L1471:
	.loc 1 3357 0
	movl	-8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 3416 0
	jmp	.L1466
.L1472:
	.loc 1 3362 0
	movl	-8(%ebp), %eax
	movzbl	9(%eax), %edx
	orl	$4, %edx
	movb	%dl, 9(%eax)
	.loc 1 3363 0
	movl	$1, -24(%ebp)
	jmp	.L1477
.L1469:
	.loc 1 3369 0
	movl	-8(%ebp), %eax
	movzbl	33(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L1478
	movl	-8(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L1478
	movl	-8(%ebp), %eax
	movzbl	33(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L1478
	.loc 1 3372 0
	movl	-8(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L1482
	.loc 1 3374 0
	movl	-8(%ebp), %eax
	movl	52(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC104@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 3376 0
	movl	$0, -24(%ebp)
	jmp	.L1477
.L1482:
	.loc 1 3378 0
	movl	-8(%ebp), %eax
	movl	52(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC105@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	pedwarn@PLT
	.loc 1 3369 0
	jmp	.L1484
.L1478:
	.loc 1 3381 0
	movl	-8(%ebp), %eax
	movzbl	33(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L1484
	movl	-8(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L1484
	.loc 1 3383 0
	movl	-8(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L1487
	.loc 1 3385 0
	movl	-8(%ebp), %eax
	movl	52(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC106@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 3387 0
	movl	$0, -24(%ebp)
	jmp	.L1477
.L1487:
	.loc 1 3395 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	11(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L1489
	.loc 1 3397 0
	leal	.LC107@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 3398 0
	movl	$0, -24(%ebp)
	jmp	.L1477
.L1489:
	.loc 1 3401 0
	movl	-8(%ebp), %eax
	movl	52(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC108@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	pedwarn@PLT
.L1484:
	.loc 1 3404 0
	movl	$1, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	put_var_into_stack@PLT
.L1468:
	.loc 1 3408 0
	movl	-8(%ebp), %eax
	movzbl	9(%eax), %edx
	orl	$4, %edx
	movb	%dl, 9(%eax)
.L1467:
	.loc 1 3415 0
	movl	$1, -24(%ebp)
.L1477:
	movl	-24(%ebp), %eax
	.loc 1 3417 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE46:
	.size	c_mark_addressable, .-c_mark_addressable
	.section	.rodata
	.align 4
.LC109:
	.string	"signed and unsigned type in conditional expression"
	.align 4
.LC110:
	.string	"ISO C forbids conditional expr with only one void side"
	.align 4
.LC111:
	.string	"ISO C forbids conditional expr between `void *' and function pointer"
	.align 4
.LC112:
	.string	"pointer type mismatch in conditional expression"
	.align 4
.LC113:
	.string	"pointer/integer type mismatch in conditional expression"
	.align 4
.LC114:
	.string	"type mismatch in conditional expression"
	.text
.globl build_conditional_expr
	.type	build_conditional_expr, @function
build_conditional_expr:
.LFB47:
	.loc 1 3424 0
	pushl	%ebp
.LCFI131:
	movl	%esp, %ebp
.LCFI132:
	pushl	%ebx
.LCFI133:
	subl	$100, %esp
.LCFI134:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3429 0
	movl	$0, -24(%ebp)
	.loc 1 3430 0
	movl	12(%ebp), %eax
	movl	%eax, -20(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 3432 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	default_conversion@PLT
	movl	%eax, (%esp)
	call	c_common_truthvalue_conversion@PLT
	movl	%eax, 8(%ebp)
	.loc 1 3453 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$6, %al
	je	.L1493
	.loc 1 3454 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	default_conversion@PLT
	movl	%eax, 12(%ebp)
.L1493:
	.loc 1 3455 0
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$6, %al
	je	.L1495
	.loc 1 3456 0
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	default_conversion@PLT
	movl	%eax, 16(%ebp)
.L1495:
	.loc 1 3458 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	testb	%al, %al
	je	.L1497
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	testb	%al, %al
	je	.L1497
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	testb	%al, %al
	jne	.L1500
.L1497:
	.loc 1 3461 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -72(%ebp)
	jmp	.L1501
.L1500:
	.loc 1 3463 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 3464 0
	movl	-40(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -32(%ebp)
	.loc 1 3465 0
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -36(%ebp)
	.loc 1 3466 0
	movl	-36(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -28(%ebp)
	.loc 1 3470 0
	movl	-40(%ebp), %eax
	movl	76(%eax), %edx
	movl	-36(%ebp), %eax
	movl	76(%eax), %eax
	cmpl	%eax, %edx
	jne	.L1502
	.loc 1 3472 0
	movl	-40(%ebp), %eax
	cmpl	-36(%ebp), %eax
	jne	.L1504
	.loc 1 3473 0
	movl	-40(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L1507
.L1504:
	.loc 1 3475 0
	movl	-40(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L1507
.L1502:
	.loc 1 3477 0
	cmpl	$7, -32(%ebp)
	je	.L1508
	cmpl	$8, -32(%ebp)
	je	.L1508
	cmpl	$9, -32(%ebp)
	jne	.L1511
.L1508:
	cmpl	$7, -28(%ebp)
	je	.L1512
	cmpl	$8, -28(%ebp)
	je	.L1512
	cmpl	$9, -28(%ebp)
	jne	.L1511
.L1512:
	.loc 1 3482 0
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	common_type@PLT
	movl	%eax, -24(%ebp)
	.loc 1 3489 0
	movl	warn_sign_compare@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jns	.L1515
	movl	extra_warnings@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	setne	-65(%ebp)
	jmp	.L1517
.L1515:
	movl	warn_sign_compare@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	setne	-65(%ebp)
.L1517:
	cmpb	$0, -65(%ebp)
	je	.L1507
	movl	skip_evaluation@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L1507
.LBB44:
	.loc 1 3492 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	9(%eax), %eax
	shrb	$5, %al
	andl	$1, %eax
	movzbl	%al, %eax
	movl	%eax, -12(%ebp)
	.loc 1 3493 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	9(%eax), %eax
	shrb	$5, %al
	andl	$1, %eax
	movzbl	%al, %eax
	movl	%eax, -8(%ebp)
	.loc 1 3495 0
	movl	-12(%ebp), %eax
	cmpl	-8(%ebp), %eax
	je	.L1507
	.loc 1 3500 0
	movl	-24(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L1507
	.loc 1 3505 0
	cmpl	$0, -8(%ebp)
	je	.L1523
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	c_tree_expr_nonnegative_p@PLT
	testl	%eax, %eax
	je	.L1523
	jmp	.L1507
.L1523:
	cmpl	$0, -12(%ebp)
	je	.L1526
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	c_tree_expr_nonnegative_p@PLT
	testl	%eax, %eax
	je	.L1526
	jmp	.L1507
.L1526:
	.loc 1 3509 0
	leal	.LC109@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
	.loc 1 3477 0
	jmp	.L1507
.L1511:
.LBE44:
	.loc 1 3513 0
	cmpl	$6, -32(%ebp)
	je	.L1529
	cmpl	$6, -28(%ebp)
	jne	.L1531
.L1529:
	.loc 1 3515 0
	movl	pedantic@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1532
	cmpl	$6, -32(%ebp)
	jne	.L1534
	cmpl	$6, -28(%ebp)
	je	.L1532
.L1534:
	.loc 1 3516 0
	leal	.LC110@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	pedwarn@PLT
.L1532:
	.loc 1 3517 0
	movl	global_trees@GOT(%ebx), %eax
	movl	108(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 3513 0
	jmp	.L1507
.L1531:
	.loc 1 3519 0
	cmpl	$14, -32(%ebp)
	jne	.L1536
	cmpl	$14, -28(%ebp)
	jne	.L1536
	.loc 1 3521 0
	movl	$1, 8(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	comp_target_types
	testl	%eax, %eax
	je	.L1539
	.loc 1 3522 0
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	common_type@PLT
	movl	%eax, -24(%ebp)
	jmp	.L1507
.L1539:
	.loc 1 3523 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	integer_zerop@PLT
	testl	%eax, %eax
	je	.L1542
	movl	-40(%ebp), %eax
	movl	4(%eax), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	108(%eax), %eax
	cmpl	%eax, %edx
	jne	.L1542
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$117, %al
	je	.L1542
	.loc 1 3525 0
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	qualify_type
	movl	%eax, -24(%ebp)
	.loc 1 3523 0
	jmp	.L1507
.L1542:
	.loc 1 3526 0
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	integer_zerop@PLT
	testl	%eax, %eax
	je	.L1546
	movl	-36(%ebp), %eax
	movl	4(%eax), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	108(%eax), %eax
	cmpl	%eax, %edx
	jne	.L1546
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$117, %al
	je	.L1546
	.loc 1 3528 0
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	qualify_type
	movl	%eax, -24(%ebp)
	.loc 1 3526 0
	jmp	.L1507
.L1546:
	.loc 1 3529 0
	movl	-40(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$6, %al
	jne	.L1550
	.loc 1 3531 0
	movl	pedantic@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1552
	movl	-36(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$24, %al
	jne	.L1552
	.loc 1 3532 0
	leal	.LC111@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	pedwarn@PLT
.L1552:
	.loc 1 3533 0
	movl	-36(%ebp), %eax
	movl	4(%eax), %edx
	movl	-40(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	qualify_type
	movl	%eax, (%esp)
	call	build_pointer_type@PLT
	movl	%eax, -24(%ebp)
	jmp	.L1507
.L1550:
	.loc 1 3536 0
	movl	-36(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$6, %al
	jne	.L1555
	.loc 1 3538 0
	movl	pedantic@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1557
	movl	-40(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$24, %al
	jne	.L1557
	.loc 1 3539 0
	leal	.LC111@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	pedwarn@PLT
.L1557:
	.loc 1 3540 0
	movl	-40(%ebp), %eax
	movl	4(%eax), %edx
	movl	-36(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	qualify_type
	movl	%eax, (%esp)
	call	build_pointer_type@PLT
	movl	%eax, -24(%ebp)
	jmp	.L1507
.L1555:
	.loc 1 3545 0
	leal	.LC112@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	pedwarn@PLT
	.loc 1 3546 0
	movl	global_trees@GOT(%ebx), %eax
	movl	108(%eax), %eax
	movl	%eax, (%esp)
	call	build_pointer_type@PLT
	movl	%eax, -24(%ebp)
	.loc 1 3519 0
	jmp	.L1507
.L1536:
	.loc 1 3549 0
	cmpl	$14, -32(%ebp)
	jne	.L1560
	cmpl	$7, -28(%ebp)
	jne	.L1560
	.loc 1 3551 0
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	integer_zerop@PLT
	testl	%eax, %eax
	jne	.L1563
	.loc 1 3552 0
	leal	.LC113@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	pedwarn@PLT
	jmp	.L1565
.L1563:
	.loc 1 3555 0
	movl	global_trees@GOT(%ebx), %eax
	movl	56(%eax), %eax
	movl	%eax, 16(%ebp)
.L1565:
	.loc 1 3557 0
	movl	-40(%ebp), %eax
	movl	%eax, -24(%ebp)
	.loc 1 3549 0
	jmp	.L1507
.L1560:
	.loc 1 3559 0
	cmpl	$14, -28(%ebp)
	jne	.L1507
	cmpl	$7, -32(%ebp)
	jne	.L1507
	.loc 1 3561 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	integer_zerop@PLT
	testl	%eax, %eax
	jne	.L1568
	.loc 1 3562 0
	leal	.LC113@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	pedwarn@PLT
	jmp	.L1570
.L1568:
	.loc 1 3565 0
	movl	global_trees@GOT(%ebx), %eax
	movl	56(%eax), %eax
	movl	%eax, 12(%ebp)
.L1570:
	.loc 1 3567 0
	movl	-36(%ebp), %eax
	movl	%eax, -24(%ebp)
.L1507:
	.loc 1 3570 0
	cmpl	$0, -24(%ebp)
	jne	.L1571
	.loc 1 3572 0
	movl	flag_cond_mismatch@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1573
	.loc 1 3573 0
	movl	global_trees@GOT(%ebx), %eax
	movl	108(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L1571
.L1573:
	.loc 1 3576 0
	leal	.LC114@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 3577 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -72(%ebp)
	jmp	.L1501
.L1571:
	.loc 1 3582 0
	movl	12(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	jne	.L1575
	movl	16(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L1577
.L1575:
	movl	$1, -64(%ebp)
	jmp	.L1578
.L1577:
	movl	$0, -64(%ebp)
.L1578:
	movl	12(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L1579
	movl	16(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L1581
.L1579:
	movl	$2, -60(%ebp)
	jmp	.L1582
.L1581:
	movl	$0, -60(%ebp)
.L1582:
	movl	-64(%ebp), %eax
	orl	-60(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	build_qualified_type@PLT
	movl	%eax, -24(%ebp)
	.loc 1 3587 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-24(%ebp), %eax
	je	.L1583
	.loc 1 3588 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	convert_and_check@PLT
	movl	%eax, 12(%ebp)
.L1583:
	.loc 1 3589 0
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-24(%ebp), %eax
	je	.L1585
	.loc 1 3590 0
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	convert_and_check@PLT
	movl	%eax, 16(%ebp)
.L1585:
	.loc 1 3592 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	jne	.L1587
	.loc 1 3593 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	integer_zerop@PLT
	testl	%eax, %eax
	je	.L1589
	movl	16(%ebp), %eax
	movl	%eax, -56(%ebp)
	jmp	.L1591
.L1589:
	movl	12(%ebp), %eax
	movl	%eax, -56(%ebp)
.L1591:
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	pedantic_non_lvalue@PLT
	movl	%eax, -72(%ebp)
	jmp	.L1501
.L1587:
	.loc 1 3595 0
	movl	16(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$52, (%esp)
	call	build@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -72(%ebp)
.L1501:
	movl	-72(%ebp), %eax
	.loc 1 3596 0
	addl	$100, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE47:
	.size	build_conditional_expr, .-build_conditional_expr
.globl build_compound_expr
	.type	build_compound_expr, @function
build_compound_expr:
.LFB48:
	.loc 1 3604 0
	pushl	%ebp
.LCFI135:
	movl	%esp, %ebp
.LCFI136:
	subl	$8, %esp
.LCFI137:
	.loc 1 3605 0
	movl	$1, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	internal_build_compound_expr
	.loc 1 3606 0
	leave
	ret
.LFE48:
	.size	build_compound_expr, .-build_compound_expr
	.section	.rodata
	.align 4
.LC115:
	.string	"left-hand operand of comma expression has no effect"
	.text
	.type	internal_build_compound_expr, @function
internal_build_compound_expr:
.LFB49:
	.loc 1 3612 0
	pushl	%ebp
.LCFI138:
	movl	%esp, %ebp
.LCFI139:
	pushl	%ebx
.LCFI140:
	subl	$36, %esp
.LCFI141:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3615 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L1596
	.loc 1 3619 0
	cmpl	$0, 12(%ebp)
	jne	.L1598
	.loc 1 3620 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	default_function_array_conversion
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 20(%eax)
.L1598:
	.loc 1 3632 0
	cmpl	$0, 12(%ebp)
	jne	.L1600
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	integer_zerop@PLT
	testl	%eax, %eax
	je	.L1600
	.loc 1 3633 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	non_lvalue@PLT
	movl	%eax, -24(%ebp)
	jmp	.L1603
.L1600:
	.loc 1 3634 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L1603
.L1596:
	.loc 1 3637 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	internal_build_compound_expr
	movl	%eax, -8(%ebp)
	.loc 1 3639 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	9(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L1604
	.loc 1 3644 0
	movl	extra_warnings@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L1606
	movl	warn_unused_value@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1608
.L1606:
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$116, %al
	jne	.L1609
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$6, %al
	je	.L1608
.L1609:
	.loc 1 3647 0
	leal	.LC115@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
.L1608:
	.loc 1 3651 0
	movl	pedantic@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L1613
	.loc 1 3652 0
	movl	-8(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L1603
.L1604:
	.loc 1 3659 0
	movl	warn_unused_value@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1613
	.loc 1 3660 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	warn_if_unused_value@PLT
.L1613:
	.loc 1 3662 0
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
	movl	%eax, -24(%ebp)
.L1603:
	movl	-24(%ebp), %eax
	.loc 1 3663 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE49:
	.size	internal_build_compound_expr, .-internal_build_compound_expr
	.section	.rodata
.LC116:
	.string	"cast specifies array type"
.LC117:
	.string	"cast specifies function type"
	.align 4
.LC118:
	.string	"ISO C forbids casting nonscalar to the same type"
	.align 4
.LC119:
	.string	"ISO C forbids casts to union type"
.LC120:
	.string	""
	.align 4
.LC121:
	.string	"cast to union type from type not present in union"
	.align 4
.LC122:
	.string	" different memory casting forbidden "
	.align 4
.LC123:
	.string	"cast adds new qualifiers to function type"
	.align 4
.LC124:
	.string	"cast discards qualifiers from pointer target type"
	.align 4
.LC125:
	.string	"cast increases required alignment of target type"
	.align 4
.LC126:
	.string	"cast from pointer to integer of different size"
	.align 4
.LC127:
	.string	"cast does not match function type"
	.align 4
.LC128:
	.string	"cast to pointer from integer of different size"
	.align 4
.LC129:
	.string	"type-punning to incomplete type might break strict-aliasing rules"
	.align 4
.LC130:
	.string	"dereferencing type-punned pointer will break strict-aliasing rules"
	.text
.globl build_c_cast
	.type	build_c_cast, @function
build_c_cast:
.LFB50:
	.loc 1 3671 0
	pushl	%ebp
.LCFI142:
	movl	%esp, %ebp
.LCFI143:
	pushl	%edi
.LCFI144:
	pushl	%esi
.LCFI145:
	pushl	%ebx
.LCFI146:
	subl	$108, %esp
.LCFI147:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3672 0
	movl	12(%ebp), %eax
	movl	%eax, -60(%ebp)
	.loc 1 3674 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	8(%ebp), %eax
	je	.L1617
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	12(%ebp), %eax
	jne	.L1619
.L1617:
	.loc 1 3675 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -104(%ebp)
	jmp	.L1620
.L1619:
	.loc 1 3680 0
	movl	flag_objc@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1621
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	objc_is_id@PLT
	testl	%eax, %eax
	jne	.L1623
.L1621:
	.loc 1 3681 0
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, 8(%ebp)
.L1623:
	.loc 1 3689 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$19, %al
	jne	.L1624
	.loc 1 3691 0
	leal	.LC116@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 3692 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -104(%ebp)
	jmp	.L1620
.L1624:
	.loc 1 3695 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$24, %al
	jne	.L1626
	.loc 1 3697 0
	leal	.LC117@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 3698 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -104(%ebp)
	jmp	.L1620
.L1626:
	.loc 1 3701 0
	movl	-60(%ebp), %eax
	movl	4(%eax), %eax
	movl	76(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L1628
	.loc 1 3703 0
	movl	pedantic@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1634
	.loc 1 3705 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	je	.L1632
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	jne	.L1634
.L1632:
	.loc 1 3707 0
	leal	.LC118@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	pedwarn@PLT
	jmp	.L1634
.L1628:
	.loc 1 3710 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	jne	.L1635
.LBB45:
	.loc 1 3713 0
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	default_function_array_conversion
	movl	%eax, -60(%ebp)
	.loc 1 3715 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -56(%ebp)
	jmp	.L1637
.L1638:
	.loc 1 3716 0
	movl	-60(%ebp), %eax
	movl	4(%eax), %eax
	movl	76(%eax), %edx
	movl	-56(%ebp), %eax
	movl	4(%eax), %eax
	movl	76(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	comptypes@PLT
	testl	%eax, %eax
	jne	.L1639
	.loc 1 3715 0
	movl	-56(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -56(%ebp)
.L1637:
	cmpl	$0, -56(%ebp)
	jne	.L1638
.L1639:
	.loc 1 3720 0
	cmpl	$0, -56(%ebp)
	je	.L1641
.LBB46:
	.loc 1 3725 0
	movl	pedantic@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1643
	.loc 1 3726 0
	leal	.LC119@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	pedwarn@PLT
.L1643:
	.loc 1 3727 0
	movl	8(%ebp), %eax
	movl	60(%eax), %eax
	testl	%eax, %eax
	je	.L1645
	.loc 1 3729 0
	movl	8(%ebp), %eax
	movl	60(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$1, %al
	jne	.L1647
	.loc 1 3730 0
	movl	8(%ebp), %eax
	movl	60(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -52(%ebp)
	jmp	.L1650
.L1647:
	.loc 1 3732 0
	movl	8(%ebp), %eax
	movl	60(%eax), %eax
	movl	52(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -52(%ebp)
	jmp	.L1650
.L1645:
	.loc 1 3735 0
	leal	.LC120@GOTOFF(%ebx), %eax
	movl	%eax, -52(%ebp)
.L1650:
	.loc 1 3736 0
	movl	-60(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	build_tree_list@PLT
	movl	%eax, 12(%esp)
	movl	$0, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$47, (%esp)
	call	build@PLT
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	digest_init
	movl	%eax, -48(%ebp)
	.loc 1 3738 0
	movl	-60(%ebp), %eax
	movzbl	9(%eax), %eax
	shrb	%al
	andl	$1, %eax
	movl	-48(%ebp), %ecx
	andl	$1, %eax
	leal	(%eax,%eax), %edx
	movzbl	9(%ecx), %eax
	andl	$-3, %eax
	orl	%edx, %eax
	movb	%al, 9(%ecx)
	.loc 1 3739 0
	movl	-48(%ebp), %eax
	movl	%eax, -104(%ebp)
	jmp	.L1620
.L1641:
.LBE46:
	.loc 1 3741 0
	leal	.LC121@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 3742 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -104(%ebp)
	jmp	.L1620
.L1635:
.LBE45:
.LBB47:
	.loc 1 3750 0
	movl	global_trees@GOT(%ebx), %eax
	movl	108(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L1651
	.loc 1 3751 0
	movl	-60(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$116, (%esp)
	call	build1@PLT
	movl	%eax, -104(%ebp)
	jmp	.L1620
.L1651:
	.loc 1 3755 0
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	default_function_array_conversion
	movl	%eax, -60(%ebp)
	.loc 1 3756 0
	movl	-60(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -44(%ebp)
	.loc 1 3760 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L1653
	movl	-44(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L1653
.LBB48:
	.loc 1 3763 0
	movl	8(%ebp), %eax
	movl	%eax, -36(%ebp)
	.loc 1 3764 0
	movl	-44(%ebp), %eax
	movl	%eax, -32(%ebp)
.L1656:
	.loc 1 3767 0
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 3768 0
	movl	-36(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -36(%ebp)
	.loc 1 3769 0
	movl	-36(%ebp), %eax
	movzbl	12(%eax), %eax
	shrb	$2, %al
	andl	$1, %eax
	movzbl	%al, %eax
	movl	%eax, %edx
	sall	$6, %edx
	movl	-36(%ebp), %eax
	movzbl	12(%eax), %eax
	shrb	$3, %al
	andl	$1, %eax
	movzbl	%al, %eax
	sall	$7, %eax
	orl	%eax, %edx
	movl	-36(%ebp), %eax
	movzbl	12(%eax), %eax
	shrb	$4, %al
	andl	$1, %eax
	movzbl	%al, %eax
	sall	$8, %eax
	orl	%eax, %edx
	movl	-36(%ebp), %eax
	movzbl	12(%eax), %eax
	andl	$1, %eax
	movzbl	%al, %eax
	sall	$4, %eax
	orl	%eax, %edx
	movl	-36(%ebp), %eax
	movzbl	12(%eax), %eax
	shrb	%al
	andl	$1, %eax
	movzbl	%al, %eax
	sall	$5, %eax
	movl	%edx, %ecx
	orl	%eax, %ecx
	movl	-32(%ebp), %eax
	movzbl	12(%eax), %eax
	shrb	$2, %al
	andl	$1, %eax
	movzbl	%al, %eax
	movl	%eax, %edx
	sall	$6, %edx
	movl	-32(%ebp), %eax
	movzbl	12(%eax), %eax
	shrb	$3, %al
	andl	$1, %eax
	movzbl	%al, %eax
	sall	$7, %eax
	orl	%eax, %edx
	movl	-32(%ebp), %eax
	movzbl	12(%eax), %eax
	shrb	$4, %al
	andl	$1, %eax
	movzbl	%al, %eax
	sall	$8, %eax
	orl	%eax, %edx
	movl	-32(%ebp), %eax
	movzbl	12(%eax), %eax
	andl	$1, %eax
	movzbl	%al, %eax
	sall	$4, %eax
	orl	%eax, %edx
	movl	-32(%ebp), %eax
	movzbl	12(%eax), %eax
	shrb	%al
	andl	$1, %eax
	movzbl	%al, %eax
	sall	$5, %eax
	orl	%edx, %eax
	notl	%eax
	andl	%ecx, %eax
	testl	%eax, %eax
	je	.L1657
	.loc 1 3770 0
	leal	.LC122@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
.L1657:
	.loc 1 3773 0
	movl	-36(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L1653
	movl	-32(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	je	.L1656
.L1653:
.LBE48:
	.loc 1 3779 0
	movl	warn_cast_qual@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1660
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L1660
	movl	-44(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L1660
.LBB49:
	.loc 1 3783 0
	movl	8(%ebp), %eax
	movl	%eax, -28(%ebp)
	.loc 1 3784 0
	movl	-44(%ebp), %eax
	movl	%eax, -24(%ebp)
	.loc 1 3785 0
	movl	$0, -20(%ebp)
	.loc 1 3786 0
	movl	$0, -16(%ebp)
.L1664:
	.loc 1 3794 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 3795 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 3801 0
	movl	-24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$24, %al
	jne	.L1665
	movl	-28(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$24, %al
	jne	.L1665
	.loc 1 3803 0
	movl	-28(%ebp), %eax
	movzbl	9(%eax), %eax
	shrb	$4, %al
	andl	$1, %eax
	movzbl	%al, %edx
	movl	-28(%ebp), %eax
	movzbl	9(%eax), %eax
	shrb	$3, %al
	andl	$1, %eax
	movzbl	%al, %eax
	addl	%eax, %eax
	orl	%eax, %edx
	movl	-28(%ebp), %eax
	movzbl	38(%eax), %eax
	shrb	$5, %al
	andl	$1, %eax
	movzbl	%al, %eax
	sall	$2, %eax
	movl	%edx, %ecx
	orl	%eax, %ecx
	movl	%ecx, -100(%ebp)
	movl	-28(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	jne	.L1668
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L1668
	movl	$1, -96(%ebp)
	jmp	.L1671
.L1668:
	movl	$0, -96(%ebp)
.L1671:
	movl	-96(%ebp), %eax
	sall	$3, %eax
	movl	-100(%ebp), %edx
	orl	%eax, %edx
	movl	%edx, -92(%ebp)
	movl	-24(%ebp), %eax
	movzbl	9(%eax), %eax
	shrb	$4, %al
	andl	$1, %eax
	movzbl	%al, %edx
	movl	-24(%ebp), %eax
	movzbl	9(%eax), %eax
	shrb	$3, %al
	andl	$1, %eax
	movzbl	%al, %eax
	addl	%eax, %eax
	orl	%eax, %edx
	movl	-24(%ebp), %eax
	movzbl	38(%eax), %eax
	shrb	$5, %al
	andl	$1, %eax
	movzbl	%al, %eax
	sall	$2, %eax
	movl	%edx, %ecx
	orl	%eax, %ecx
	movl	%ecx, -88(%ebp)
	movl	-24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	jne	.L1672
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L1672
	movl	$1, -84(%ebp)
	jmp	.L1675
.L1672:
	movl	$0, -84(%ebp)
.L1675:
	movl	-84(%ebp), %eax
	sall	$3, %eax
	orl	-88(%ebp), %eax
	notl	%eax
	andl	-92(%ebp), %eax
	orl	%eax, -20(%ebp)
	.loc 1 3801 0
	jmp	.L1676
.L1665:
	.loc 1 3805 0
	movl	-24(%ebp), %eax
	movzbl	9(%eax), %eax
	shrb	$4, %al
	andl	$1, %eax
	movzbl	%al, %edx
	movl	-24(%ebp), %eax
	movzbl	9(%eax), %eax
	shrb	$3, %al
	andl	$1, %eax
	movzbl	%al, %eax
	addl	%eax, %eax
	orl	%eax, %edx
	movl	-24(%ebp), %eax
	movzbl	38(%eax), %eax
	shrb	$5, %al
	andl	$1, %eax
	movzbl	%al, %eax
	sall	$2, %eax
	movl	%edx, %ecx
	orl	%eax, %ecx
	movl	%ecx, -80(%ebp)
	movl	-24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	jne	.L1677
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L1677
	movl	$1, -76(%ebp)
	jmp	.L1680
.L1677:
	movl	$0, -76(%ebp)
.L1680:
	movl	-76(%ebp), %eax
	sall	$3, %eax
	movl	-80(%ebp), %edx
	orl	%eax, %edx
	movl	%edx, -72(%ebp)
	movl	-28(%ebp), %eax
	movzbl	9(%eax), %eax
	shrb	$4, %al
	andl	$1, %eax
	movzbl	%al, %edx
	movl	-28(%ebp), %eax
	movzbl	9(%eax), %eax
	shrb	$3, %al
	andl	$1, %eax
	movzbl	%al, %eax
	addl	%eax, %eax
	orl	%eax, %edx
	movl	-28(%ebp), %eax
	movzbl	38(%eax), %eax
	shrb	$5, %al
	andl	$1, %eax
	movzbl	%al, %eax
	sall	$2, %eax
	movl	%edx, %ecx
	orl	%eax, %ecx
	movl	%ecx, -68(%ebp)
	movl	-28(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	jne	.L1681
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L1681
	movl	$1, -64(%ebp)
	jmp	.L1684
.L1681:
	movl	$0, -64(%ebp)
.L1684:
	movl	-64(%ebp), %eax
	sall	$3, %eax
	orl	-68(%ebp), %eax
	notl	%eax
	andl	-72(%ebp), %eax
	orl	%eax, -16(%ebp)
.L1676:
	.loc 1 3808 0
	movl	-28(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L1685
	movl	-24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	je	.L1664
.L1685:
	.loc 1 3810 0
	cmpl	$0, -20(%ebp)
	je	.L1687
	.loc 1 3811 0
	leal	.LC123@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
.L1687:
	.loc 1 3813 0
	cmpl	$0, -16(%ebp)
	je	.L1660
	.loc 1 3816 0
	leal	.LC124@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
.L1660:
.LBE49:
	.loc 1 3820 0
	movl	warn_cast_align@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1690
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L1690
	movl	-44(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L1690
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$6, %al
	je	.L1690
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$24, %al
	je	.L1690
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	je	.L1696
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	jne	.L1698
.L1696:
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	andl	$-2, %eax
	testb	%al, %al
	je	.L1690
.L1698:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	44(%eax), %edx
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	movl	44(%eax), %eax
	cmpl	%eax, %edx
	jbe	.L1690
	.loc 1 3831 0
	leal	.LC125@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
.L1690:
	.loc 1 3833 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$7, %al
	jne	.L1700
	movl	-44(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L1700
	movl	8(%ebp), %eax
	movzwl	36(%eax), %edx
	andw	$511, %dx
	movl	-44(%ebp), %eax
	movzwl	36(%eax), %eax
	andw	$511, %ax
	cmpw	%ax, %dx
	je	.L1700
	movl	-60(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	jne	.L1700
	.loc 1 3837 0
	leal	.LC126@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
.L1700:
	.loc 1 3839 0
	movl	warn_bad_function_cast@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1705
	movl	-60(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$54, %al
	jne	.L1705
	movl	8(%ebp), %eax
	movzbl	8(%eax), %edx
	movl	-44(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	%al, %dl
	je	.L1705
	.loc 1 3842 0
	leal	.LC127@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
.L1705:
	.loc 1 3844 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L1709
	movl	-44(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$7, %al
	jne	.L1709
	movl	8(%ebp), %eax
	movzwl	36(%eax), %edx
	andw	$511, %dx
	movl	-44(%ebp), %eax
	movzwl	36(%eax), %eax
	andw	$511, %ax
	cmpw	%ax, %dx
	je	.L1709
	movl	-60(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	jne	.L1709
	.loc 1 3849 0
	leal	.LC128@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
.L1709:
	.loc 1 3851 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L1714
	movl	-44(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L1714
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$123, %al
	jne	.L1714
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$100, %al
	jne	.L1714
	movl	flag_strict_aliasing@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1714
	movl	warn_strict_aliasing@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1714
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$6, %al
	je	.L1714
	.loc 1 3860 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	jne	.L1722
	.loc 1 3861 0
	leal	.LC129@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
	jmp	.L1714
.L1722:
	.loc 1 3862 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	get_alias_set@PLT
	movl	%eax, %esi
	movl	%edx, %edi
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	get_alias_set@PLT
	movl	%esi, 8(%esp)
	movl	%edi, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	alias_sets_conflict_p@PLT
	testl	%eax, %eax
	jne	.L1714
	.loc 1 3865 0
	leal	.LC130@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
.L1714:
	.loc 1 3868 0
	movl	-60(%ebp), %eax
	movl	%eax, -40(%ebp)
	.loc 1 3869 0
	movl	-60(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, -60(%ebp)
	.loc 1 3872 0
	movl	-60(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	jne	.L1634
	.loc 1 3874 0
	movl	-40(%ebp), %eax
	movzbl	10(%eax), %eax
	shrb	$3, %al
	andl	$1, %eax
	movl	-60(%ebp), %ecx
	andl	$1, %eax
	leal	0(,%eax,8), %edx
	movzbl	10(%ecx), %eax
	andl	$-9, %eax
	orl	%edx, %eax
	movb	%al, 10(%ecx)
	.loc 1 3875 0
	movl	-40(%ebp), %eax
	movzbl	10(%eax), %eax
	shrb	$2, %al
	andl	$1, %eax
	movl	-60(%ebp), %ecx
	andl	$1, %eax
	leal	0(,%eax,4), %edx
	movzbl	10(%ecx), %eax
	andl	$-5, %eax
	orl	%edx, %eax
	movb	%al, 10(%ecx)
.L1634:
.LBE47:
	.loc 1 3880 0
	movl	pedantic@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1726
	movl	-60(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	jne	.L1726
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	jne	.L1726
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$7, %al
	je	.L1726
	.loc 1 3883 0
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	non_lvalue@PLT
	movl	%eax, -60(%ebp)
.L1726:
	.loc 1 3886 0
	movl	-60(%ebp), %eax
	cmpl	12(%ebp), %eax
	jne	.L1731
	movl	pedantic@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1731
	.loc 1 3887 0
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	non_lvalue@PLT
	movl	%eax, -60(%ebp)
.L1731:
	.loc 1 3889 0
	movl	-60(%ebp), %eax
	movl	%eax, -104(%ebp)
.L1620:
	movl	-104(%ebp), %eax
	.loc 1 3890 0
	addl	$108, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE50:
	.size	build_c_cast, .-build_c_cast
.globl c_cast_expr
	.type	c_cast_expr, @function
c_cast_expr:
.LFB51:
	.loc 1 3896 0
	pushl	%ebp
.LCFI148:
	movl	%esp, %ebp
.LCFI149:
	pushl	%ebx
.LCFI150:
	subl	$36, %esp
.LCFI151:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3897 0
	movl	warn_strict_prototypes@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 3901 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	jne	.L1736
	.loc 1 3902 0
	movl	warn_strict_prototypes@GOT(%ebx), %eax
	movl	$0, (%eax)
.L1736:
	.loc 1 3903 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	groktypename@PLT
	movl	%eax, 8(%ebp)
	.loc 1 3904 0
	movl	warn_strict_prototypes@GOT(%ebx), %edx
	movl	-8(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 3906 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_c_cast@PLT
	.loc 1 3907 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE51:
	.size	c_cast_expr, .-c_cast_expr
	.section	.rodata
.LC131:
	.string	"invalid lvalue in assignment"
.LC132:
	.string	"assignment"
	.text
.globl build_modify_expr
	.type	build_modify_expr, @function
build_modify_expr:
.LFB52:
	.loc 1 3919 0
	pushl	%ebp
.LCFI152:
	movl	%esp, %ebp
.LCFI153:
	pushl	%esi
.LCFI154:
	pushl	%ebx
.LCFI155:
	subl	$80, %esp
.LCFI156:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3922 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 3923 0
	movl	-28(%ebp), %eax
	movl	%eax, -24(%ebp)
	.loc 1 3926 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	require_complete_type@PLT
	movl	%eax, 8(%ebp)
	.loc 1 3929 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	testb	%al, %al
	je	.L1740
	movl	16(%ebp), %eax
	movzbl	8(%eax), %eax
	testb	%al, %al
	jne	.L1742
.L1740:
	.loc 1 3930 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -52(%ebp)
	jmp	.L1743
.L1742:
	.loc 1 3935 0
	movl	16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$118, %al
	jne	.L1744
	.loc 1 3936 0
	movl	16(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 16(%ebp)
.L1744:
	.loc 1 3938 0
	movl	16(%ebp), %eax
	movl	%eax, -32(%ebp)
	.loc 1 3942 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -48(%ebp)
	cmpl	$48, -48(%ebp)
	je	.L1747
	cmpl	$52, -48(%ebp)
	je	.L1748
	jmp	.L1746
.L1747:
	.loc 1 3946 0
	movl	$48, (%esp)
	call	pedantic_lvalue_warning
	.loc 1 3947 0
	movl	8(%ebp), %eax
	movl	24(%eax), %edx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	build_modify_expr@PLT
	movl	%eax, -32(%ebp)
	.loc 1 3948 0
	movl	-32(%ebp), %eax
	movzbl	8(%eax), %eax
	testb	%al, %al
	jne	.L1749
	.loc 1 3949 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -52(%ebp)
	jmp	.L1743
.L1749:
	.loc 1 3950 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	-32(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$48, (%esp)
	call	build@PLT
	movl	%eax, -52(%ebp)
	jmp	.L1743
.L1748:
	.loc 1 3955 0
	movl	$52, (%esp)
	call	pedantic_lvalue_warning
	.loc 1 3956 0
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	save_expr@PLT
	movl	%eax, 16(%ebp)
.LBB50:
	.loc 1 3966 0
	movl	8(%ebp), %eax
	movl	28(%eax), %edx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	build_modify_expr@PLT
	movl	%eax, %esi
	movl	8(%ebp), %eax
	movl	24(%eax), %edx
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
	movl	%eax, -20(%ebp)
	.loc 1 3967 0
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	testb	%al, %al
	jne	.L1751
	.loc 1 3968 0
	movl	-20(%ebp), %eax
	movl	%eax, -52(%ebp)
	jmp	.L1743
.L1751:
	.loc 1 3971 0
	movl	global_trees@GOT(%ebx), %eax
	movl	108(%eax), %edx
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	convert@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %ecx
	movl	-20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	$48, (%esp)
	call	build@PLT
	movl	%eax, -52(%ebp)
	jmp	.L1743
.L1746:
.LBE50:
	.loc 1 3982 0
	cmpl	$117, 12(%ebp)
	je	.L1753
	.loc 1 3984 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	stabilize_reference@PLT
	movl	%eax, 8(%ebp)
	.loc 1 3985 0
	movl	$1, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	build_binary_op@PLT
	movl	%eax, -32(%ebp)
.L1753:
	.loc 1 3995 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -44(%ebp)
	cmpl	$73, -44(%ebp)
	jb	.L1755
	cmpl	$77, -44(%ebp)
	jbe	.L1756
	movl	-44(%ebp), %eax
	subl	$116, %eax
	cmpl	$1, %eax
	ja	.L1755
.L1756:
	.loc 1 4004 0
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	default_function_array_conversion
	movl	%eax, -32(%ebp)
.LBB51:
	.loc 1 4006 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 4008 0
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, %edx
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, 8(%esp)
	movl	$117, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	build_modify_expr@PLT
	movl	%eax, -12(%ebp)
	.loc 1 4011 0
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	testb	%al, %al
	jne	.L1757
	.loc 1 4012 0
	movl	-12(%ebp), %eax
	movl	%eax, -52(%ebp)
	jmp	.L1743
.L1757:
	.loc 1 4013 0
	movl	$116, (%esp)
	call	pedantic_lvalue_warning
	.loc 1 4014 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	convert@PLT
	movl	%eax, -52(%ebp)
	jmp	.L1743
.L1755:
.LBE51:
	.loc 1 4024 0
	leal	.LC131@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	lvalue_or_else@PLT
	testl	%eax, %eax
	jne	.L1759
	.loc 1 4025 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -52(%ebp)
	jmp	.L1743
.L1759:
	.loc 1 4029 0
	movl	8(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	jne	.L1761
	movl	-28(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	jne	.L1761
	movl	-28(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	je	.L1764
	movl	-28(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	jne	.L1766
.L1764:
	movl	-28(%ebp), %eax
	movzbl	11(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L1766
.L1761:
	.loc 1 4033 0
	leal	.LC132@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	readonly_warning@PLT
.L1766:
	.loc 1 4040 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$40, %al
	jne	.L1767
	movl	-28(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$7, %al
	je	.L1769
	movl	-28(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$12, %al
	je	.L1769
	movl	-28(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$8, %al
	je	.L1769
	movl	-28(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$11, %al
	jne	.L1767
.L1769:
	.loc 1 4045 0
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	get_unwidened@PLT
	movl	4(%eax), %eax
	movl	%eax, -28(%ebp)
.L1767:
	.loc 1 4050 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-28(%ebp), %eax
	je	.L1773
	.loc 1 4052 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_node@PLT
	movl	%eax, 8(%ebp)
	.loc 1 4053 0
	movl	8(%ebp), %edx
	movl	-28(%ebp), %eax
	movl	%eax, 4(%edx)
.L1773:
	.loc 1 4058 0
	movl	$0, 20(%esp)
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	leal	.LC132@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	convert_for_assignment
	movl	%eax, -32(%ebp)
	.loc 1 4060 0
	movl	-32(%ebp), %eax
	movzbl	8(%eax), %eax
	testb	%al, %al
	jne	.L1775
	.loc 1 4061 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -52(%ebp)
	jmp	.L1743
.L1775:
	.loc 1 4065 0
	movl	-32(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$49, (%esp)
	call	build@PLT
	movl	%eax, -36(%ebp)
	.loc 1 4066 0
	movl	-36(%ebp), %edx
	movzbl	9(%edx), %eax
	orl	$1, %eax
	movb	%al, 9(%edx)
	.loc 1 4073 0
	movl	-36(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-24(%ebp), %eax
	jne	.L1777
	.loc 1 4074 0
	movl	-36(%ebp), %eax
	movl	%eax, -52(%ebp)
	jmp	.L1743
.L1777:
	.loc 1 4075 0
	movl	$0, 20(%esp)
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	leal	.LC132@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	convert_for_assignment
	movl	%eax, -52(%ebp)
.L1743:
	movl	-52(%ebp), %eax
	.loc 1 4077 0
	addl	$80, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE52:
	.size	build_modify_expr, .-build_modify_expr
	.section	.rodata
	.align 4
.LC133:
	.string	"cannot pass rvalue to reference parameter"
	.align 4
.LC134:
	.string	"%s makes qualified function pointer from unqualified"
	.align 4
.LC135:
	.string	"%s discards qualifiers from pointer target type"
	.align 4
.LC136:
	.string	"ISO C prohibits argument conversion to union type"
	.align 4
.LC137:
	.string	"ISO C forbids %s between function pointer and `void *'"
	.align 4
.LC138:
	.string	" incompatible pointer type assignment "
	.align 4
.LC139:
	.string	"pointer targets in %s differ in signedness"
	.align 4
.LC140:
	.string	"%s from incompatible pointer type"
	.align 4
.LC141:
	.string	"%s makes pointer from integer without a cast"
	.align 4
.LC142:
	.string	"%s makes integer from pointer without a cast"
	.align 4
.LC143:
	.string	"incompatible type for argument %d of `%s'"
	.align 4
.LC144:
	.string	"incompatible type for argument %d of indirect function call"
.LC145:
	.string	"incompatible types in %s"
	.text
	.type	convert_for_assignment, @function
convert_for_assignment:
.LFB53:
	.loc 1 4098 0
	pushl	%ebp
.LCFI157:
	movl	%esp, %ebp
.LCFI158:
	pushl	%esi
.LCFI159:
	pushl	%ebx
.LCFI160:
	subl	$256, %esp
.LCFI161:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4099 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -60(%ebp)
	.loc 1 4106 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$118, %al
	jne	.L1781
	.loc 1 4107 0
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 12(%ebp)
.L1781:
	.loc 1 4109 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$19, %al
	je	.L1783
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$24, %al
	jne	.L1785
.L1783:
	.loc 1 4111 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	default_conversion@PLT
	movl	%eax, 12(%ebp)
	.loc 1 4109 0
	jmp	.L1786
.L1785:
	.loc 1 4112 0
	movl	optimize@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1786
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$35, %al
	jne	.L1786
	.loc 1 4113 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	decl_constant_value_for_broken_optimization
	movl	%eax, 12(%ebp)
.L1786:
	.loc 1 4115 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -56(%ebp)
	.loc 1 4116 0
	movl	-56(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -52(%ebp)
	.loc 1 4118 0
	cmpl	$0, -52(%ebp)
	jne	.L1789
	.loc 1 4119 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -240(%ebp)
	jmp	.L1791
.L1789:
	.loc 1 4121 0
	movl	8(%ebp), %eax
	movl	76(%eax), %edx
	movl	-56(%ebp), %eax
	movl	76(%eax), %eax
	cmpl	%eax, %edx
	jne	.L1792
	.loc 1 4123 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	overflow_warning@PLT
	.loc 1 4127 0
	movl	flag_objc@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1794
	.loc 1 4128 0
	movl	$0, 8(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	objc_comptypes@PLT
.L1794:
	.loc 1 4129 0
	movl	12(%ebp), %eax
	movl	%eax, -240(%ebp)
	jmp	.L1791
.L1792:
	.loc 1 4132 0
	cmpl	$6, -52(%ebp)
	jne	.L1796
	.loc 1 4134 0
	leal	.LC13@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 4135 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -240(%ebp)
	jmp	.L1791
.L1796:
	.loc 1 4140 0
	cmpl	$16, -60(%ebp)
	jne	.L1798
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	comptypes@PLT
	cmpl	$1, %eax
	jne	.L1798
	.loc 1 4143 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	lvalue_p@PLT
	testl	%eax, %eax
	jne	.L1801
	.loc 1 4145 0
	leal	.LC133@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 4146 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -240(%ebp)
	jmp	.L1791
.L1801:
	.loc 1 4148 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	c_mark_addressable@PLT
	xorl	$1, %eax
	testb	%al, %al
	je	.L1803
	.loc 1 4149 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -240(%ebp)
	jmp	.L1791
.L1803:
	.loc 1 4150 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	build_pointer_type@PLT
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$123, (%esp)
	call	build1@PLT
	movl	%eax, 12(%ebp)
	.loc 1 4157 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	je	.L1805
	.loc 1 4158 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	build_pointer_type@PLT
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$117, (%esp)
	call	build1@PLT
	movl	%eax, 12(%ebp)
.L1805:
	.loc 1 4160 0
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$117, (%esp)
	call	build1@PLT
	movl	%eax, 12(%ebp)
	.loc 1 4161 0
	movl	12(%ebp), %edx
	movl	%edx, -240(%ebp)
	jmp	.L1791
.L1798:
	.loc 1 4164 0
	cmpl	$7, -60(%ebp)
	je	.L1807
	cmpl	$8, -60(%ebp)
	je	.L1807
	cmpl	$11, -60(%ebp)
	je	.L1807
	cmpl	$9, -60(%ebp)
	je	.L1807
	cmpl	$12, -60(%ebp)
	jne	.L1812
.L1807:
	cmpl	$7, -52(%ebp)
	je	.L1813
	cmpl	$8, -52(%ebp)
	je	.L1813
	cmpl	$11, -52(%ebp)
	je	.L1813
	cmpl	$9, -52(%ebp)
	je	.L1813
	cmpl	$12, -52(%ebp)
	jne	.L1812
.L1813:
	.loc 1 4170 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	convert_and_check@PLT
	movl	%eax, -240(%ebp)
	jmp	.L1791
.L1812:
	.loc 1 4174 0
	cmpl	$22, -60(%ebp)
	jne	.L1818
	movl	8(%ebp), %eax
	movzbl	38(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L1818
	cmpl	$0, 16(%ebp)
	jne	.L1818
.LBB52:
	.loc 1 4177 0
	movl	$0, -44(%ebp)
	.loc 1 4179 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -48(%ebp)
	jmp	.L1822
.L1823:
.LBB53:
	.loc 1 4182 0
	movl	-48(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 4184 0
	movl	-56(%ebp), %eax
	movl	76(%eax), %edx
	movl	-40(%ebp), %eax
	movl	76(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	comptypes@PLT
	testl	%eax, %eax
	jne	.L1824
	.loc 1 4188 0
	movl	-40(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L1826
	.loc 1 4191 0
	cmpl	$14, -52(%ebp)
	jne	.L1828
.LBB54:
	.loc 1 4193 0
	movl	-40(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -36(%ebp)
	.loc 1 4194 0
	movl	-56(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 4200 0
	movl	-36(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$6, %al
	je	.L1830
	movl	-32(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$6, %al
	je	.L1830
	movl	$0, 8(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	comp_target_types
	testl	%eax, %eax
	je	.L1828
.L1830:
	.loc 1 4204 0
	movl	-36(%ebp), %eax
	movzbl	9(%eax), %eax
	shrb	$4, %al
	andl	$1, %eax
	movzbl	%al, %edx
	movl	-36(%ebp), %eax
	movzbl	9(%eax), %eax
	shrb	$3, %al
	andl	$1, %eax
	movzbl	%al, %eax
	addl	%eax, %eax
	orl	%eax, %edx
	movl	-36(%ebp), %eax
	movzbl	38(%eax), %eax
	shrb	$5, %al
	andl	$1, %eax
	movzbl	%al, %eax
	sall	$2, %eax
	movl	%edx, %ecx
	orl	%eax, %ecx
	movl	%ecx, -236(%ebp)
	movl	-36(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	jne	.L1833
	movl	-36(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L1833
	movl	$1, -232(%ebp)
	jmp	.L1836
.L1833:
	movl	$0, -232(%ebp)
.L1836:
	movl	-232(%ebp), %eax
	sall	$3, %eax
	movl	-236(%ebp), %edx
	orl	%eax, %edx
	movl	%edx, -228(%ebp)
	movl	-32(%ebp), %eax
	movzbl	9(%eax), %eax
	shrb	$4, %al
	andl	$1, %eax
	movzbl	%al, %edx
	movl	-32(%ebp), %eax
	movzbl	9(%eax), %eax
	shrb	$3, %al
	andl	$1, %eax
	movzbl	%al, %eax
	addl	%eax, %eax
	orl	%eax, %edx
	movl	-32(%ebp), %eax
	movzbl	38(%eax), %eax
	shrb	$5, %al
	andl	$1, %eax
	movzbl	%al, %eax
	sall	$2, %eax
	movl	%edx, %ecx
	orl	%eax, %ecx
	movl	%ecx, -224(%ebp)
	movl	-32(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	jne	.L1837
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L1837
	movl	$1, -220(%ebp)
	jmp	.L1840
.L1837:
	movl	$0, -220(%ebp)
.L1840:
	movl	-220(%ebp), %eax
	sall	$3, %eax
	orl	-224(%ebp), %eax
	cmpl	%eax, -228(%ebp)
	je	.L1824
	movl	-32(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$24, %al
	jne	.L1842
	movl	-36(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$24, %al
	jne	.L1842
	movl	-36(%ebp), %eax
	movzbl	9(%eax), %eax
	shrb	$4, %al
	andl	$1, %eax
	movzbl	%al, %edx
	movl	-36(%ebp), %eax
	movzbl	9(%eax), %eax
	shrb	$3, %al
	andl	$1, %eax
	movzbl	%al, %eax
	addl	%eax, %eax
	orl	%eax, %edx
	movl	-36(%ebp), %eax
	movzbl	38(%eax), %eax
	shrb	$5, %al
	andl	$1, %eax
	movzbl	%al, %eax
	sall	$2, %eax
	movl	%edx, %ecx
	orl	%eax, %ecx
	movl	%ecx, -216(%ebp)
	movl	-36(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	jne	.L1845
	movl	-36(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L1845
	movl	$1, -212(%ebp)
	jmp	.L1848
.L1845:
	movl	$0, -212(%ebp)
.L1848:
	movl	-212(%ebp), %eax
	sall	$3, %eax
	movl	-216(%ebp), %edx
	orl	%eax, %edx
	movl	%edx, -208(%ebp)
	movl	-32(%ebp), %eax
	movzbl	9(%eax), %eax
	shrb	$4, %al
	andl	$1, %eax
	movzbl	%al, %edx
	movl	-32(%ebp), %eax
	movzbl	9(%eax), %eax
	shrb	$3, %al
	andl	$1, %eax
	movzbl	%al, %eax
	addl	%eax, %eax
	orl	%eax, %edx
	movl	-32(%ebp), %eax
	movzbl	38(%eax), %eax
	shrb	$5, %al
	andl	$1, %eax
	movzbl	%al, %eax
	sall	$2, %eax
	movl	%edx, %ecx
	orl	%eax, %ecx
	movl	%ecx, -204(%ebp)
	movl	-32(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	jne	.L1849
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L1849
	movl	$1, -200(%ebp)
	jmp	.L1852
.L1849:
	movl	$0, -200(%ebp)
.L1852:
	movl	-200(%ebp), %eax
	sall	$3, %eax
	orl	-204(%ebp), %eax
	movl	-208(%ebp), %edx
	orl	%eax, %edx
	movl	%edx, -196(%ebp)
	movl	-32(%ebp), %eax
	movzbl	9(%eax), %eax
	shrb	$4, %al
	andl	$1, %eax
	movzbl	%al, %edx
	movl	-32(%ebp), %eax
	movzbl	9(%eax), %eax
	shrb	$3, %al
	andl	$1, %eax
	movzbl	%al, %eax
	addl	%eax, %eax
	orl	%eax, %edx
	movl	-32(%ebp), %eax
	movzbl	38(%eax), %eax
	shrb	$5, %al
	andl	$1, %eax
	movzbl	%al, %eax
	sall	$2, %eax
	movl	%edx, %ecx
	orl	%eax, %ecx
	movl	%ecx, -192(%ebp)
	movl	-32(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	jne	.L1853
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L1853
	movl	$1, -188(%ebp)
	jmp	.L1856
.L1853:
	movl	$0, -188(%ebp)
.L1856:
	movl	-188(%ebp), %eax
	sall	$3, %eax
	orl	-192(%ebp), %eax
	cmpl	%eax, -196(%ebp)
	je	.L1824
	jmp	.L1858
.L1842:
	movl	-36(%ebp), %eax
	movzbl	9(%eax), %eax
	shrb	$4, %al
	andl	$1, %eax
	movzbl	%al, %edx
	movl	-36(%ebp), %eax
	movzbl	9(%eax), %eax
	shrb	$3, %al
	andl	$1, %eax
	movzbl	%al, %eax
	addl	%eax, %eax
	orl	%eax, %edx
	movl	-36(%ebp), %eax
	movzbl	38(%eax), %eax
	shrb	$5, %al
	andl	$1, %eax
	movzbl	%al, %eax
	sall	$2, %eax
	movl	%edx, %ecx
	orl	%eax, %ecx
	movl	%ecx, -184(%ebp)
	movl	-36(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	jne	.L1859
	movl	-36(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L1859
	movl	$1, -180(%ebp)
	jmp	.L1862
.L1859:
	movl	$0, -180(%ebp)
.L1862:
	movl	-180(%ebp), %eax
	sall	$3, %eax
	movl	-184(%ebp), %edx
	orl	%eax, %edx
	movl	%edx, -176(%ebp)
	movl	-32(%ebp), %eax
	movzbl	9(%eax), %eax
	shrb	$4, %al
	andl	$1, %eax
	movzbl	%al, %edx
	movl	-32(%ebp), %eax
	movzbl	9(%eax), %eax
	shrb	$3, %al
	andl	$1, %eax
	movzbl	%al, %eax
	addl	%eax, %eax
	orl	%eax, %edx
	movl	-32(%ebp), %eax
	movzbl	38(%eax), %eax
	shrb	$5, %al
	andl	$1, %eax
	movzbl	%al, %eax
	sall	$2, %eax
	movl	%edx, %ecx
	orl	%eax, %ecx
	movl	%ecx, -172(%ebp)
	movl	-32(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	jne	.L1863
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L1863
	movl	$1, -168(%ebp)
	jmp	.L1866
.L1863:
	movl	$0, -168(%ebp)
.L1866:
	movl	-168(%ebp), %eax
	sall	$3, %eax
	orl	-172(%ebp), %eax
	movl	-176(%ebp), %edx
	orl	%eax, %edx
	movl	%edx, -164(%ebp)
	movl	-36(%ebp), %eax
	movzbl	9(%eax), %eax
	shrb	$4, %al
	andl	$1, %eax
	movzbl	%al, %edx
	movl	-36(%ebp), %eax
	movzbl	9(%eax), %eax
	shrb	$3, %al
	andl	$1, %eax
	movzbl	%al, %eax
	addl	%eax, %eax
	orl	%eax, %edx
	movl	-36(%ebp), %eax
	movzbl	38(%eax), %eax
	shrb	$5, %al
	andl	$1, %eax
	movzbl	%al, %eax
	sall	$2, %eax
	movl	%edx, %ecx
	orl	%eax, %ecx
	movl	%ecx, -160(%ebp)
	movl	-36(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	jne	.L1867
	movl	-36(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L1867
	movl	$1, -156(%ebp)
	jmp	.L1870
.L1867:
	movl	$0, -156(%ebp)
.L1870:
	movl	-156(%ebp), %eax
	sall	$3, %eax
	orl	-160(%ebp), %eax
	cmpl	%eax, -164(%ebp)
	je	.L1824
.L1858:
	.loc 1 4214 0
	cmpl	$0, -44(%ebp)
	jne	.L1828
	.loc 1 4215 0
	movl	-40(%ebp), %eax
	movl	%eax, -44(%ebp)
.L1828:
.LBE54:
	.loc 1 4220 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	integer_zerop@PLT
	testl	%eax, %eax
	jne	.L1872
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$117, %al
	jne	.L1826
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	integer_zerop@PLT
	testl	%eax, %eax
	je	.L1826
.L1872:
	.loc 1 4224 0
	movl	global_trees@GOT(%ebx), %eax
	movl	56(%eax), %eax
	movl	%eax, 12(%ebp)
	.loc 1 4225 0
	jmp	.L1824
.L1826:
.LBE53:
	.loc 1 4180 0
	movl	-48(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -48(%ebp)
.L1822:
	.loc 1 4179 0
	cmpl	$0, -48(%ebp)
	jne	.L1823
.L1824:
	.loc 1 4229 0
	cmpl	$0, -48(%ebp)
	jne	.L1875
	cmpl	$0, -44(%ebp)
	je	.L1905
.L1875:
	.loc 1 4231 0
	cmpl	$0, -48(%ebp)
	jne	.L1878
.LBB55:
	.loc 1 4235 0
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 4236 0
	movl	-56(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 4240 0
	movl	-24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$24, %al
	jne	.L1880
	movl	-28(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$24, %al
	jne	.L1880
	.loc 1 4248 0
	movl	-28(%ebp), %eax
	movzbl	9(%eax), %eax
	shrb	$4, %al
	andl	$1, %eax
	movzbl	%al, %edx
	movl	-28(%ebp), %eax
	movzbl	9(%eax), %eax
	shrb	$3, %al
	andl	$1, %eax
	movzbl	%al, %eax
	addl	%eax, %eax
	orl	%eax, %edx
	movl	-28(%ebp), %eax
	movzbl	38(%eax), %eax
	shrb	$5, %al
	andl	$1, %eax
	movzbl	%al, %eax
	sall	$2, %eax
	movl	%edx, %ecx
	orl	%eax, %ecx
	movl	%ecx, -152(%ebp)
	movl	-28(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	jne	.L1883
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L1883
	movl	$1, -148(%ebp)
	jmp	.L1886
.L1883:
	movl	$0, -148(%ebp)
.L1886:
	movl	-148(%ebp), %eax
	sall	$3, %eax
	movl	-152(%ebp), %edx
	orl	%eax, %edx
	movl	%edx, -144(%ebp)
	movl	-24(%ebp), %eax
	movzbl	9(%eax), %eax
	shrb	$4, %al
	andl	$1, %eax
	movzbl	%al, %edx
	movl	-24(%ebp), %eax
	movzbl	9(%eax), %eax
	shrb	$3, %al
	andl	$1, %eax
	movzbl	%al, %eax
	addl	%eax, %eax
	orl	%eax, %edx
	movl	-24(%ebp), %eax
	movzbl	38(%eax), %eax
	shrb	$5, %al
	andl	$1, %eax
	movzbl	%al, %eax
	sall	$2, %eax
	movl	%edx, %ecx
	orl	%eax, %ecx
	movl	%ecx, -140(%ebp)
	movl	-24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	jne	.L1887
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L1887
	movl	$1, -136(%ebp)
	jmp	.L1890
.L1887:
	movl	$0, -136(%ebp)
.L1890:
	movl	-136(%ebp), %eax
	sall	$3, %eax
	orl	-140(%ebp), %eax
	notl	%eax
	andl	-144(%ebp), %eax
	testl	%eax, %eax
	je	.L1878
	.loc 1 4249 0
	movl	28(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC134@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warn_for_assignment
	.loc 1 4240 0
	jmp	.L1878
.L1880:
	.loc 1 4252 0
	movl	-24(%ebp), %eax
	movzbl	9(%eax), %eax
	shrb	$4, %al
	andl	$1, %eax
	movzbl	%al, %edx
	movl	-24(%ebp), %eax
	movzbl	9(%eax), %eax
	shrb	$3, %al
	andl	$1, %eax
	movzbl	%al, %eax
	addl	%eax, %eax
	orl	%eax, %edx
	movl	-24(%ebp), %eax
	movzbl	38(%eax), %eax
	shrb	$5, %al
	andl	$1, %eax
	movzbl	%al, %eax
	sall	$2, %eax
	movl	%edx, %ecx
	orl	%eax, %ecx
	movl	%ecx, -132(%ebp)
	movl	-24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	jne	.L1893
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L1893
	movl	$1, -128(%ebp)
	jmp	.L1896
.L1893:
	movl	$0, -128(%ebp)
.L1896:
	movl	-128(%ebp), %eax
	sall	$3, %eax
	movl	-132(%ebp), %edx
	orl	%eax, %edx
	movl	%edx, -124(%ebp)
	movl	-28(%ebp), %eax
	movzbl	9(%eax), %eax
	shrb	$4, %al
	andl	$1, %eax
	movzbl	%al, %edx
	movl	-28(%ebp), %eax
	movzbl	9(%eax), %eax
	shrb	$3, %al
	andl	$1, %eax
	movzbl	%al, %eax
	addl	%eax, %eax
	orl	%eax, %edx
	movl	-28(%ebp), %eax
	movzbl	38(%eax), %eax
	shrb	$5, %al
	andl	$1, %eax
	movzbl	%al, %eax
	sall	$2, %eax
	movl	%edx, %ecx
	orl	%eax, %ecx
	movl	%ecx, -120(%ebp)
	movl	-28(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	jne	.L1897
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L1897
	movl	$1, -116(%ebp)
	jmp	.L1900
.L1897:
	movl	$0, -116(%ebp)
.L1900:
	movl	-116(%ebp), %eax
	sall	$3, %eax
	orl	-120(%ebp), %eax
	notl	%eax
	andl	-124(%ebp), %eax
	testl	%eax, %eax
	je	.L1878
	.loc 1 4253 0
	movl	28(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC135@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warn_for_assignment
.L1878:
.LBE55:
	.loc 1 4258 0
	movl	pedantic@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1902
	movl	20(%ebp), %eax
	movzbl	34(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	jne	.L1902
	.loc 1 4259 0
	leal	.LC136@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	pedwarn@PLT
.L1902:
	.loc 1 4261 0
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$117, (%esp)
	call	build1@PLT
	movl	%eax, -240(%ebp)
	jmp	.L1791
.L1818:
.LBE52:
	.loc 1 4266 0
	cmpl	$14, -60(%ebp)
	je	.L1906
	cmpl	$16, -60(%ebp)
	jne	.L1908
.L1906:
	movl	-52(%ebp), %eax
	cmpl	-60(%ebp), %eax
	jne	.L1908
.LBB56:
	.loc 1 4269 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 4270 0
	movl	-56(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 4275 0
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$6, %al
	je	.L1910
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$6, %al
	je	.L1910
	movl	$0, 8(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	comp_target_types
	testl	%eax, %eax
	jne	.L1910
	movl	-20(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, (%esp)
	call	c_common_unsigned_type@PLT
	movl	%eax, %esi
	movl	-16(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, (%esp)
	call	c_common_unsigned_type@PLT
	cmpl	%eax, %esi
	jne	.L1914
.L1910:
	.loc 1 4280 0
	movl	pedantic@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1915
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$6, %al
	jne	.L1917
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$24, %al
	je	.L1919
.L1917:
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$6, %al
	jne	.L1915
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	integer_zerop@PLT
	testl	%eax, %eax
	je	.L1921
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$117, %al
	jne	.L1915
.L1921:
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$24, %al
	jne	.L1915
.L1919:
	.loc 1 4288 0
	movl	28(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC137@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warn_for_assignment
	.loc 1 4280 0
	jmp	.L1955
.L1915:
	.loc 1 4292 0
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$24, %al
	je	.L1924
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$24, %al
	je	.L1924
	.loc 1 4301 0
	movl	-20(%ebp), %eax
	movzbl	12(%eax), %eax
	shrb	$2, %al
	andl	$1, %eax
	movzbl	%al, %eax
	movl	%eax, %edx
	sall	$6, %edx
	movl	-20(%ebp), %eax
	movzbl	12(%eax), %eax
	shrb	$3, %al
	andl	$1, %eax
	movzbl	%al, %eax
	sall	$7, %eax
	orl	%eax, %edx
	movl	-20(%ebp), %eax
	movzbl	12(%eax), %eax
	shrb	$4, %al
	andl	$1, %eax
	movzbl	%al, %eax
	sall	$8, %eax
	orl	%eax, %edx
	movl	-20(%ebp), %eax
	movzbl	12(%eax), %eax
	andl	$1, %eax
	movzbl	%al, %eax
	sall	$4, %eax
	orl	%eax, %edx
	movl	-20(%ebp), %eax
	movzbl	12(%eax), %eax
	shrb	%al
	andl	$1, %eax
	movzbl	%al, %eax
	sall	$5, %eax
	movl	%edx, %ecx
	orl	%eax, %ecx
	movl	-16(%ebp), %eax
	movzbl	12(%eax), %eax
	shrb	$2, %al
	andl	$1, %eax
	movzbl	%al, %eax
	movl	%eax, %edx
	sall	$6, %edx
	movl	-16(%ebp), %eax
	movzbl	12(%eax), %eax
	shrb	$3, %al
	andl	$1, %eax
	movzbl	%al, %eax
	sall	$7, %eax
	orl	%eax, %edx
	movl	-16(%ebp), %eax
	movzbl	12(%eax), %eax
	shrb	$4, %al
	andl	$1, %eax
	movzbl	%al, %eax
	sall	$8, %eax
	orl	%eax, %edx
	movl	-16(%ebp), %eax
	movzbl	12(%eax), %eax
	andl	$1, %eax
	movzbl	%al, %eax
	sall	$4, %eax
	orl	%eax, %edx
	movl	-16(%ebp), %eax
	movzbl	12(%eax), %eax
	shrb	%al
	andl	$1, %eax
	movzbl	%al, %eax
	sall	$5, %eax
	orl	%edx, %eax
	notl	%eax
	andl	%ecx, %eax
	testl	%eax, %eax
	je	.L1927
	.loc 1 4302 0
	leal	.LC138@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
	jmp	.L1955
.L1927:
	.loc 1 4306 0
	movl	-16(%ebp), %eax
	movzbl	9(%eax), %eax
	shrb	$4, %al
	andl	$1, %eax
	movzbl	%al, %edx
	movl	-16(%ebp), %eax
	movzbl	9(%eax), %eax
	shrb	$3, %al
	andl	$1, %eax
	movzbl	%al, %eax
	addl	%eax, %eax
	orl	%eax, %edx
	movl	-16(%ebp), %eax
	movzbl	38(%eax), %eax
	shrb	$5, %al
	andl	$1, %eax
	movzbl	%al, %eax
	sall	$2, %eax
	movl	%edx, %ecx
	orl	%eax, %ecx
	movl	%ecx, -112(%ebp)
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	jne	.L1930
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L1930
	movl	$1, -108(%ebp)
	jmp	.L1933
.L1930:
	movl	$0, -108(%ebp)
.L1933:
	movl	-108(%ebp), %eax
	sall	$3, %eax
	movl	-112(%ebp), %edx
	orl	%eax, %edx
	movl	%edx, -104(%ebp)
	movl	-20(%ebp), %eax
	movzbl	9(%eax), %eax
	shrb	$4, %al
	andl	$1, %eax
	movzbl	%al, %edx
	movl	-20(%ebp), %eax
	movzbl	9(%eax), %eax
	shrb	$3, %al
	andl	$1, %eax
	movzbl	%al, %eax
	addl	%eax, %eax
	orl	%eax, %edx
	movl	-20(%ebp), %eax
	movzbl	38(%eax), %eax
	shrb	$5, %al
	andl	$1, %eax
	movzbl	%al, %eax
	sall	$2, %eax
	movl	%edx, %ecx
	orl	%eax, %ecx
	movl	%ecx, -100(%ebp)
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	jne	.L1934
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L1934
	movl	$1, -96(%ebp)
	jmp	.L1937
.L1934:
	movl	$0, -96(%ebp)
.L1937:
	movl	-96(%ebp), %eax
	sall	$3, %eax
	orl	-100(%ebp), %eax
	notl	%eax
	andl	-104(%ebp), %eax
	testl	%eax, %eax
	je	.L1938
	.loc 1 4307 0
	movl	28(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC135@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warn_for_assignment
	jmp	.L1955
.L1938:
	.loc 1 4311 0
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$6, %al
	je	.L1955
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$6, %al
	je	.L1955
	movl	$0, 8(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	comp_target_types
	testl	%eax, %eax
	jne	.L1955
	.loc 1 4315 0
	movl	pedantic@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1955
	.loc 1 4316 0
	movl	28(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC139@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warn_for_assignment
	.loc 1 4292 0
	jmp	.L1955
.L1924:
	.loc 1 4319 0
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$24, %al
	jne	.L1955
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$24, %al
	jne	.L1955
	.loc 1 4326 0
	movl	-20(%ebp), %eax
	movzbl	9(%eax), %eax
	shrb	$4, %al
	andl	$1, %eax
	movzbl	%al, %edx
	movl	-20(%ebp), %eax
	movzbl	9(%eax), %eax
	shrb	$3, %al
	andl	$1, %eax
	movzbl	%al, %eax
	addl	%eax, %eax
	orl	%eax, %edx
	movl	-20(%ebp), %eax
	movzbl	38(%eax), %eax
	shrb	$5, %al
	andl	$1, %eax
	movzbl	%al, %eax
	sall	$2, %eax
	movl	%edx, %ecx
	orl	%eax, %ecx
	movl	%ecx, -92(%ebp)
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	jne	.L1946
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L1946
	movl	$1, -88(%ebp)
	jmp	.L1949
.L1946:
	movl	$0, -88(%ebp)
.L1949:
	movl	-88(%ebp), %eax
	sall	$3, %eax
	movl	-92(%ebp), %edx
	orl	%eax, %edx
	movl	%edx, -84(%ebp)
	movl	-16(%ebp), %eax
	movzbl	9(%eax), %eax
	shrb	$4, %al
	andl	$1, %eax
	movzbl	%al, %edx
	movl	-16(%ebp), %eax
	movzbl	9(%eax), %eax
	shrb	$3, %al
	andl	$1, %eax
	movzbl	%al, %eax
	addl	%eax, %eax
	orl	%eax, %edx
	movl	-16(%ebp), %eax
	movzbl	38(%eax), %eax
	shrb	$5, %al
	andl	$1, %eax
	movzbl	%al, %eax
	sall	$2, %eax
	movl	%edx, %ecx
	orl	%eax, %ecx
	movl	%ecx, -80(%ebp)
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	jne	.L1950
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L1950
	movl	$1, -76(%ebp)
	jmp	.L1953
.L1950:
	movl	$0, -76(%ebp)
.L1953:
	movl	-76(%ebp), %eax
	sall	$3, %eax
	orl	-80(%ebp), %eax
	notl	%eax
	andl	-84(%ebp), %eax
	testl	%eax, %eax
	je	.L1955
	.loc 1 4327 0
	movl	28(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC134@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warn_for_assignment
	.loc 1 4275 0
	jmp	.L1955
.L1914:
	.loc 1 4332 0
	movl	28(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC140@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warn_for_assignment
.L1955:
	.loc 1 4334 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, -240(%ebp)
	jmp	.L1791
.L1908:
.LBE56:
	.loc 1 4336 0
	cmpl	$14, -60(%ebp)
	jne	.L1956
	cmpl	$7, -52(%ebp)
	jne	.L1956
	.loc 1 4341 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	jne	.L1959
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	integer_zerop@PLT
	testl	%eax, %eax
	jne	.L1961
.L1959:
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$117, %al
	jne	.L1962
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$7, %al
	jne	.L1962
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	jne	.L1962
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	integer_zerop@PLT
	testl	%eax, %eax
	jne	.L1961
.L1962:
	.loc 1 4348 0
	movl	28(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC141@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warn_for_assignment
	.loc 1 4350 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, -240(%ebp)
	jmp	.L1791
.L1961:
	.loc 1 4352 0
	movl	global_trees@GOT(%ebx), %eax
	movl	56(%eax), %eax
	movl	%eax, -240(%ebp)
	jmp	.L1791
.L1956:
	.loc 1 4354 0
	cmpl	$7, -60(%ebp)
	jne	.L1966
	cmpl	$14, -52(%ebp)
	jne	.L1966
	.loc 1 4356 0
	movl	28(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC142@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warn_for_assignment
	.loc 1 4358 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, -240(%ebp)
	jmp	.L1791
.L1966:
	.loc 1 4360 0
	cmpl	$12, -60(%ebp)
	jne	.L1905
	cmpl	$14, -52(%ebp)
	jne	.L1905
	.loc 1 4361 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, -240(%ebp)
	jmp	.L1791
.L1905:
	.loc 1 4363 0
	cmpl	$0, 16(%ebp)
	jne	.L1971
	.loc 1 4365 0
	cmpl	$0, 24(%ebp)
	je	.L1973
.LBB57:
	.loc 1 4367 0
	call	objc_message_selector@PLT
	movl	%eax, -12(%ebp)
	.loc 1 4369 0
	cmpl	$0, -12(%ebp)
	je	.L1975
	cmpl	$2, 28(%ebp)
	jle	.L1975
	.loc 1 4370 0
	movl	-12(%ebp), %eax
	movl	16(%eax), %eax
	movl	28(%ebp), %edx
	subl	$2, %edx
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	leal	.LC143@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 4369 0
	jmp	.L1980
.L1975:
	.loc 1 4373 0
	movl	24(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, 8(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC143@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	jmp	.L1980
.L1973:
.LBE57:
	.loc 1 4377 0
	movl	28(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC144@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	jmp	.L1980
.L1971:
	.loc 1 4381 0
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC145@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L1980:
	.loc 1 4383 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -240(%ebp)
.L1791:
	movl	-240(%ebp), %eax
	.loc 1 4384 0
	addl	$256, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE53:
	.size	convert_for_assignment, .-convert_for_assignment
.globl c_convert_parm_for_inlining
	.type	c_convert_parm_for_inlining, @function
c_convert_parm_for_inlining:
.LFB54:
	.loc 1 4391 0
	pushl	%ebp
.LCFI162:
	movl	%esp, %ebp
.LCFI163:
	pushl	%ebx
.LCFI164:
	subl	$52, %esp
.LCFI165:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4396 0
	cmpl	$0, 12(%ebp)
	je	.L1983
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L1985
.L1983:
	.loc 1 4397 0
	movl	12(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L1986
.L1985:
	.loc 1 4399 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 4400 0
	movl	16(%ebp), %eax
	movl	52(%eax), %eax
	movl	$0, 20(%esp)
	movl	%eax, 16(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$0, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	convert_for_assignment
	movl	%eax, -12(%ebp)
	.loc 1 4403 0
	movl	-8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$7, %al
	je	.L1987
	movl	-8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$11, %al
	je	.L1987
	movl	-8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$12, %al
	je	.L1987
	movl	-8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$13, %al
	jne	.L1991
.L1987:
	movl	-8(%ebp), %eax
	movzwl	36(%eax), %eax
	andw	$511, %ax
	movzwl	%ax, %edx
	movl	integer_types@GOT(%ebx), %eax
	movl	20(%eax), %eax
	movzwl	36(%eax), %eax
	andw	$511, %ax
	movzwl	%ax, %eax
	cmpl	%eax, %edx
	jge	.L1991
	.loc 1 4406 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	default_conversion@PLT
	movl	%eax, -12(%ebp)
.L1991:
	.loc 1 4407 0
	movl	-12(%ebp), %eax
	movl	%eax, -24(%ebp)
.L1986:
	movl	-24(%ebp), %eax
	.loc 1 4408 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE54:
	.size	c_convert_parm_for_inlining, .-c_convert_parm_for_inlining
	.section	.rodata
.LC146:
	.string	"passing arg of `%s'"
	.align 4
.LC147:
	.string	"passing arg of pointer to function"
.LC148:
	.string	"passing arg %d of `%s'"
	.align 4
.LC149:
	.string	"passing arg %d of pointer to function"
	.text
	.type	warn_for_assignment, @function
warn_for_assignment:
.LFB55:
	.loc 1 4423 0
	pushl	%ebp
.LCFI166:
	movl	%esp, %ebp
.LCFI167:
	pushl	%edi
.LCFI168:
	pushl	%ebx
.LCFI169:
	subl	$96, %esp
.LCFI170:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	movl	%eax, -44(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -48(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, -52(%ebp)
	.loc 1 4423 0
	movl	%gs:20, %eax
	movl	%eax, -12(%ebp)
	xorl	%eax, %eax
	.loc 1 4424 0
	cmpl	$0, -48(%ebp)
	jne	.L1995
.LBB58:
	.loc 1 4426 0
	call	objc_message_selector@PLT
	movl	%eax, -36(%ebp)
	.loc 1 4429 0
	cmpl	$0, -36(%ebp)
	je	.L1997
	cmpl	$2, 20(%ebp)
	jle	.L1997
	.loc 1 4431 0
	movl	-36(%ebp), %eax
	movl	%eax, -52(%ebp)
	.loc 1 4432 0
	subl	$2, 20(%ebp)
.L1997:
	.loc 1 4434 0
	cmpl	$0, 20(%ebp)
	jne	.L2000
	.loc 1 4436 0
	cmpl	$0, -52(%ebp)
	je	.L2002
.LBB59:
	.loc 1 4439 0
	leal	.LC146@GOTOFF(%ebx), %eax
	movl	%eax, -28(%ebp)
	.loc 1 4440 0
	movl	-52(%ebp), %eax
	movl	20(%eax), %edx
	movl	-28(%ebp), %eax
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
	leal	(%edx,%eax), %eax
	addl	$2, %eax
	addl	$15, %eax
	addl	$15, %eax
	shrl	$4, %eax
	sall	$4, %eax
	subl	%eax, %esp
	leal	16(%esp), %eax
	movl	%eax, -68(%ebp)
	movl	-68(%ebp), %eax
	addl	$15, %eax
	shrl	$4, %eax
	sall	$4, %eax
	movl	%eax, -68(%ebp)
	movl	-68(%ebp), %edi
	movl	%edi, -32(%ebp)
	.loc 1 4443 0
	movl	-52(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, 8(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	sprintf@PLT
	jmp	.L2005
.L2002:
.LBE59:
.LBB60:
	.loc 1 4449 0
	leal	.LC147@GOTOFF(%ebx), %eax
	movl	%eax, -24(%ebp)
	.loc 1 4450 0
	movl	-24(%ebp), %eax
	movl	$-1, %ecx
	movl	%eax, -76(%ebp)
	movl	$0, %eax
	cld
	movl	-76(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	addl	$2, %eax
	addl	$15, %eax
	addl	$15, %eax
	shrl	$4, %eax
	sall	$4, %eax
	subl	%eax, %esp
	leal	16(%esp), %eax
	movl	%eax, -64(%ebp)
	movl	-64(%ebp), %eax
	addl	$15, %eax
	shrl	$4, %eax
	sall	$4, %eax
	movl	%eax, -64(%ebp)
	movl	-64(%ebp), %edi
	movl	%edi, -32(%ebp)
	.loc 1 4451 0
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	sprintf@PLT
	jmp	.L2005
.L2000:
.LBE60:
	.loc 1 4454 0
	cmpl	$0, -52(%ebp)
	je	.L2006
.LBB61:
	.loc 1 4457 0
	leal	.LC148@GOTOFF(%ebx), %eax
	movl	%eax, -20(%ebp)
	.loc 1 4458 0
	movl	-52(%ebp), %eax
	movl	20(%eax), %edx
	movl	-20(%ebp), %eax
	movl	$-1, %ecx
	movl	%eax, -80(%ebp)
	movl	$0, %eax
	cld
	movl	-80(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	leal	(%edx,%eax), %eax
	addl	$27, %eax
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
	movl	%edi, -32(%ebp)
	.loc 1 4461 0
	movl	-52(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, 12(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	sprintf@PLT
	jmp	.L2005
.L2006:
.LBE61:
.LBB62:
	.loc 1 4467 0
	leal	.LC149@GOTOFF(%ebx), %eax
	movl	%eax, -16(%ebp)
	.loc 1 4468 0
	movl	-16(%ebp), %eax
	movl	$-1, %ecx
	movl	%eax, -84(%ebp)
	movl	$0, %eax
	cld
	movl	-84(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	addl	$27, %eax
	addl	$15, %eax
	addl	$15, %eax
	shrl	$4, %eax
	sall	$4, %eax
	subl	%eax, %esp
	leal	16(%esp), %eax
	movl	%eax, -56(%ebp)
	movl	-56(%ebp), %eax
	addl	$15, %eax
	shrl	$4, %eax
	sall	$4, %eax
	movl	%eax, -56(%ebp)
	movl	-56(%ebp), %edi
	movl	%edi, -32(%ebp)
	.loc 1 4469 0
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	sprintf@PLT
.L2005:
.LBE62:
	.loc 1 4471 0
	movl	-32(%ebp), %eax
	movl	%eax, -48(%ebp)
.L1995:
.LBE58:
	.loc 1 4473 0
	movl	-48(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	pedwarn@PLT
	.loc 1 4474 0
	movl	-12(%ebp), %eax
	xorl	%gs:20, %eax
	je	.L2009
	call	__stack_chk_fail_local
.L2009:
	leal	-8(%ebp), %esp
	popl	%ebx
	popl	%edi
	popl	%ebp
	ret
.LFE55:
	.size	warn_for_assignment, .-warn_for_assignment
	.type	valid_compound_expr_initializer, @function
valid_compound_expr_initializer:
.LFB56:
	.loc 1 4486 0
	pushl	%ebp
.LCFI171:
	movl	%esp, %ebp
.LCFI172:
	pushl	%ebx
.LCFI173:
	subl	$20, %esp
.LCFI174:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4487 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$48, %al
	jne	.L2011
	.loc 1 4489 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	valid_compound_expr_initializer
	movl	%eax, %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jne	.L2013
	.loc 1 4491 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L2015
.L2013:
	.loc 1 4492 0
	movl	8(%ebp), %eax
	movl	24(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	valid_compound_expr_initializer
	movl	%eax, -8(%ebp)
	jmp	.L2015
.L2011:
	.loc 1 4495 0
	movl	8(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	jne	.L2016
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	initializer_constant_valid_p@PLT
	testl	%eax, %eax
	jne	.L2016
	.loc 1 4497 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L2015
.L2016:
	.loc 1 4499 0
	movl	8(%ebp), %eax
	movl	%eax, -8(%ebp)
.L2015:
	movl	-8(%ebp), %eax
	.loc 1 4500 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE56:
	.size	valid_compound_expr_initializer, .-valid_compound_expr_initializer
	.section	.rodata
	.align 4
.LC150:
	.string	"traditional C rejects automatic aggregate initialization"
	.text
.globl store_init_value
	.type	store_init_value, @function
store_init_value:
.LFB57:
	.loc 1 4510 0
	pushl	%ebp
.LCFI175:
	movl	%esp, %ebp
.LCFI176:
	pushl	%ebx
.LCFI177:
	subl	$36, %esp
.LCFI178:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4515 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 4516 0
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	testb	%al, %al
	je	.L2046
	.loc 1 4521 0
	movl	8(%ebp), %eax
	movzbl	10(%eax), %eax
	shrb	$2, %al
	andl	$1, %eax
	movzbl	%al, %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	digest_init
	movl	%eax, -20(%ebp)
	.loc 1 4554 0
	movl	warn_traditional@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2023
	movl	in_system_header@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L2023
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$19, %al
	je	.L2026
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	je	.L2026
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	je	.L2026
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$23, %al
	je	.L2026
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$20, %al
	jne	.L2023
.L2026:
	movl	8(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L2023
	.loc 1 4556 0
	leal	.LC150@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
.L2023:
	.loc 1 4558 0
	movl	8(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	%eax, 68(%edx)
	.loc 1 4561 0
	jmp	.L2032
.L2033:
	movl	-20(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -20(%ebp)
.L2032:
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$117, %al
	je	.L2034
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$116, %al
	je	.L2034
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$118, %al
	jne	.L2037
.L2034:
	movl	-20(%ebp), %eax
	movl	20(%eax), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	je	.L2037
	movl	-20(%ebp), %eax
	movl	4(%eax), %edx
	movl	-20(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	je	.L2033
.L2037:
	.loc 1 4562 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	constant_expression_warning@PLT
	.loc 1 4565 0
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$19, %al
	jne	.L2046
	movl	-16(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	jne	.L2046
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-20(%ebp), %eax
	je	.L2046
.LBB63:
	.loc 1 4569 0
	movl	12(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 4571 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$118, %al
	jne	.L2042
	.loc 1 4572 0
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -12(%ebp)
.L2042:
	.loc 1 4573 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -12(%ebp)
	.loc 1 4575 0
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-82, %al
	jne	.L2046
.LBB64:
	.loc 1 4577 0
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 4579 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L2046
	.loc 1 4584 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	16(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%edx, 16(%eax)
	.loc 1 4585 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	layout_type@PLT
	.loc 1 4586 0
	movl	$0, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	layout_decl@PLT
.L2046:
.LBE64:
.LBE63:
	.loc 1 4590 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE57:
	.size	store_init_value, .-store_init_value
	.type	push_string, @function
push_string:
.LFB58:
	.loc 1 4651 0
	pushl	%ebp
.LCFI179:
	movl	%esp, %ebp
.LCFI180:
	pushl	%ebx
.LCFI181:
	subl	$36, %esp
.LCFI182:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
.LBB65:
	.loc 1 4652 0
	movl	spelling@GOTOFF(%ebx), %eax
	movl	%eax, %edx
	movl	spelling_base@GOTOFF(%ebx), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	sarl	$3, %eax
	movl	%eax, -8(%ebp)
	movl	spelling_size@GOTOFF(%ebx), %eax
	cmpl	%eax, -8(%ebp)
	jl	.L2048
	movl	spelling_size@GOTOFF(%ebx), %eax
	addl	$10, %eax
	movl	%eax, spelling_size@GOTOFF(%ebx)
	movl	spelling_base@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L2050
	movl	spelling_size@GOTOFF(%ebx), %eax
	sall	$3, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, spelling_base@GOTOFF(%ebx)
	jmp	.L2052
.L2050:
	movl	spelling_size@GOTOFF(%ebx), %eax
	sall	$3, %eax
	movl	spelling_base@GOTOFF(%ebx), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	xrealloc@PLT
	movl	%eax, spelling_base@GOTOFF(%ebx)
.L2052:
	movl	-8(%ebp), %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	spelling_base@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, spelling@GOTOFF(%ebx)
.L2048:
	movl	spelling@GOTOFF(%ebx), %eax
	movl	$1, (%eax)
	movl	spelling@GOTOFF(%ebx), %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%edx)
	movl	spelling@GOTOFF(%ebx), %eax
	addl	$8, %eax
	movl	%eax, spelling@GOTOFF(%ebx)
.LBE65:
	.loc 1 4653 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE58:
	.size	push_string, .-push_string
	.section	.rodata
.LC151:
	.string	"<anonymous>"
	.text
	.type	push_member_name, @function
push_member_name:
.LFB59:
	.loc 1 4661 0
	pushl	%ebp
.LCFI183:
	movl	%esp, %ebp
.LCFI184:
	pushl	%ebx
.LCFI185:
	subl	$36, %esp
.LCFI186:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4663 0
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	testl	%eax, %eax
	je	.L2055
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L2057
.L2055:
	leal	.LC151@GOTOFF(%ebx), %eax
	movl	%eax, -24(%ebp)
.L2057:
	movl	-24(%ebp), %ecx
	movl	%ecx, -12(%ebp)
.LBB66:
	.loc 1 4664 0
	movl	spelling@GOTOFF(%ebx), %eax
	movl	%eax, %edx
	movl	spelling_base@GOTOFF(%ebx), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	sarl	$3, %eax
	movl	%eax, -8(%ebp)
	movl	spelling_size@GOTOFF(%ebx), %eax
	cmpl	%eax, -8(%ebp)
	jl	.L2058
	movl	spelling_size@GOTOFF(%ebx), %eax
	addl	$10, %eax
	movl	%eax, spelling_size@GOTOFF(%ebx)
	movl	spelling_base@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L2060
	movl	spelling_size@GOTOFF(%ebx), %eax
	sall	$3, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, spelling_base@GOTOFF(%ebx)
	jmp	.L2062
.L2060:
	movl	spelling_size@GOTOFF(%ebx), %eax
	sall	$3, %eax
	movl	spelling_base@GOTOFF(%ebx), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	xrealloc@PLT
	movl	%eax, spelling_base@GOTOFF(%ebx)
.L2062:
	movl	-8(%ebp), %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	spelling_base@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, spelling@GOTOFF(%ebx)
.L2058:
	movl	spelling@GOTOFF(%ebx), %eax
	movl	$2, (%eax)
	movl	spelling@GOTOFF(%ebx), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 4(%edx)
	movl	spelling@GOTOFF(%ebx), %eax
	addl	$8, %eax
	movl	%eax, spelling@GOTOFF(%ebx)
.LBE66:
	.loc 1 4665 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE59:
	.size	push_member_name, .-push_member_name
	.type	push_array_bounds, @function
push_array_bounds:
.LFB60:
	.loc 1 4672 0
	pushl	%ebp
.LCFI187:
	movl	%esp, %ebp
.LCFI188:
	pushl	%ebx
.LCFI189:
	subl	$36, %esp
.LCFI190:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
.LBB67:
	.loc 1 4673 0
	movl	spelling@GOTOFF(%ebx), %eax
	movl	%eax, %edx
	movl	spelling_base@GOTOFF(%ebx), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	sarl	$3, %eax
	movl	%eax, -8(%ebp)
	movl	spelling_size@GOTOFF(%ebx), %eax
	cmpl	%eax, -8(%ebp)
	jl	.L2065
	movl	spelling_size@GOTOFF(%ebx), %eax
	addl	$10, %eax
	movl	%eax, spelling_size@GOTOFF(%ebx)
	movl	spelling_base@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L2067
	movl	spelling_size@GOTOFF(%ebx), %eax
	sall	$3, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, spelling_base@GOTOFF(%ebx)
	jmp	.L2069
.L2067:
	movl	spelling_size@GOTOFF(%ebx), %eax
	sall	$3, %eax
	movl	spelling_base@GOTOFF(%ebx), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	xrealloc@PLT
	movl	%eax, spelling_base@GOTOFF(%ebx)
.L2069:
	movl	-8(%ebp), %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	spelling_base@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, spelling@GOTOFF(%ebx)
.L2065:
	movl	spelling@GOTOFF(%ebx), %eax
	movl	$3, (%eax)
	movl	spelling@GOTOFF(%ebx), %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%edx)
	movl	spelling@GOTOFF(%ebx), %eax
	addl	$8, %eax
	movl	%eax, spelling@GOTOFF(%ebx)
.LBE67:
	.loc 1 4674 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE60:
	.size	push_array_bounds, .-push_array_bounds
	.type	spelling_length, @function
spelling_length:
.LFB61:
	.loc 1 4680 0
	pushl	%ebp
.LCFI191:
	movl	%esp, %ebp
.LCFI192:
	pushl	%edi
.LCFI193:
	pushl	%ebx
.LCFI194:
	subl	$20, %esp
.LCFI195:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4681 0
	movl	$0, -16(%ebp)
	.loc 1 4684 0
	movl	spelling_base@GOTOFF(%ebx), %eax
	movl	%eax, -12(%ebp)
	jmp	.L2072
.L2073:
	.loc 1 4686 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	cmpl	$3, %eax
	jne	.L2074
	.loc 1 4687 0
	addl	$25, -16(%ebp)
	jmp	.L2076
.L2074:
	.loc 1 4689 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	$-1, %ecx
	movl	%eax, -28(%ebp)
	movl	$0, %eax
	cld
	movl	-28(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	leal	-1(%eax), %edx
	movl	-16(%ebp), %eax
	leal	(%edx,%eax), %eax
	addl	$1, %eax
	movl	%eax, -16(%ebp)
.L2076:
	.loc 1 4684 0
	addl	$8, -12(%ebp)
.L2072:
	movl	spelling@GOTOFF(%ebx), %eax
	cmpl	%eax, -12(%ebp)
	jb	.L2073
	.loc 1 4692 0
	movl	-16(%ebp), %eax
	.loc 1 4693 0
	addl	$20, %esp
	popl	%ebx
	popl	%edi
	popl	%ebp
	ret
.LFE61:
	.size	spelling_length, .-spelling_length
	.section	.rodata
.LC152:
	.string	"[%d]"
	.text
	.type	print_spelling, @function
print_spelling:
.LFB62:
	.loc 1 4700 0
	pushl	%ebp
.LCFI196:
	movl	%esp, %ebp
.LCFI197:
	pushl	%edi
.LCFI198:
	pushl	%ebx
.LCFI199:
	subl	$32, %esp
.LCFI200:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4701 0
	movl	8(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 4704 0
	movl	spelling_base@GOTOFF(%ebx), %eax
	movl	%eax, -16(%ebp)
	jmp	.L2080
.L2081:
	.loc 1 4705 0
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	cmpl	$3, %eax
	jne	.L2082
	.loc 1 4707 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 8(%esp)
	leal	.LC152@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	sprintf@PLT
	.loc 1 4708 0
	movl	-20(%ebp), %eax
	movl	$-1, %ecx
	movl	%eax, -28(%ebp)
	movl	$0, %eax
	cld
	movl	-28(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	addl	%eax, -20(%ebp)
	jmp	.L2084
.L2082:
.LBB68:
	.loc 1 4713 0
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	jne	.L2085
	.loc 1 4714 0
	movl	-20(%ebp), %eax
	movb	$46, (%eax)
	addl	$1, -20(%ebp)
.L2085:
	.loc 1 4715 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L2087
.L2088:
	addl	$1, -20(%ebp)
.L2087:
	movl	-12(%ebp), %eax
	movzbl	(%eax), %edx
	movl	-20(%ebp), %eax
	movb	%dl, (%eax)
	movl	-20(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	setne	%al
	addl	$1, -12(%ebp)
	testb	%al, %al
	jne	.L2088
.L2084:
.LBE68:
	.loc 1 4704 0
	addl	$8, -16(%ebp)
.L2080:
	movl	spelling@GOTOFF(%ebx), %eax
	cmpl	%eax, -16(%ebp)
	jb	.L2081
	.loc 1 4718 0
	movl	-20(%ebp), %eax
	movb	$0, (%eax)
	addl	$1, -20(%ebp)
	.loc 1 4719 0
	movl	8(%ebp), %eax
	.loc 1 4720 0
	addl	$32, %esp
	popl	%ebx
	popl	%edi
	popl	%ebp
	ret
.LFE62:
	.size	print_spelling, .-print_spelling
	.section	.rodata
	.align 4
.LC153:
	.string	"(near initialization for `%s')"
	.text
.globl error_init
	.type	error_init, @function
error_init:
.LFB63:
	.loc 1 4729 0
	pushl	%ebp
.LCFI201:
	movl	%esp, %ebp
.LCFI202:
	pushl	%ebx
.LCFI203:
	subl	$36, %esp
.LCFI204:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	movl	%eax, -24(%ebp)
	.loc 1 4729 0
	movl	%gs:20, %eax
	movl	%eax, -8(%ebp)
	xorl	%eax, %eax
	.loc 1 4732 0
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC96@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 4733 0
	call	spelling_length
	addl	$1, %eax
	addl	$15, %eax
	addl	$15, %eax
	shrl	$4, %eax
	sall	$4, %eax
	subl	%eax, %esp
	leal	8(%esp), %eax
	movl	%eax, -28(%ebp)
	movl	-28(%ebp), %eax
	addl	$15, %eax
	shrl	$4, %eax
	sall	$4, %eax
	movl	%eax, -28(%ebp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	print_spelling
	movl	%eax, -12(%ebp)
	.loc 1 4734 0
	movl	-12(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L2094
	.loc 1 4735 0
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC153@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L2094:
	.loc 1 4736 0
	movl	-8(%ebp), %eax
	xorl	%gs:20, %eax
	je	.L2095
	call	__stack_chk_fail_local
.L2095:
	movl	-4(%ebp), %ebx
	leave
	ret
.LFE63:
	.size	error_init, .-error_init
.globl pedwarn_init
	.type	pedwarn_init, @function
pedwarn_init:
.LFB64:
	.loc 1 4745 0
	pushl	%ebp
.LCFI205:
	movl	%esp, %ebp
.LCFI206:
	pushl	%ebx
.LCFI207:
	subl	$36, %esp
.LCFI208:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	movl	%eax, -24(%ebp)
	.loc 1 4745 0
	movl	%gs:20, %eax
	movl	%eax, -8(%ebp)
	xorl	%eax, %eax
	.loc 1 4748 0
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC96@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	pedwarn@PLT
	.loc 1 4749 0
	call	spelling_length
	addl	$1, %eax
	addl	$15, %eax
	addl	$15, %eax
	shrl	$4, %eax
	sall	$4, %eax
	subl	%eax, %esp
	leal	8(%esp), %eax
	movl	%eax, -28(%ebp)
	movl	-28(%ebp), %eax
	addl	$15, %eax
	shrl	$4, %eax
	sall	$4, %eax
	movl	%eax, -28(%ebp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	print_spelling
	movl	%eax, -12(%ebp)
	.loc 1 4750 0
	movl	-12(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L2099
	.loc 1 4751 0
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC153@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	pedwarn@PLT
.L2099:
	.loc 1 4752 0
	movl	-8(%ebp), %eax
	xorl	%gs:20, %eax
	je	.L2100
	call	__stack_chk_fail_local
.L2100:
	movl	-4(%ebp), %ebx
	leave
	ret
.LFE64:
	.size	pedwarn_init, .-pedwarn_init
	.type	warning_init, @function
warning_init:
.LFB65:
	.loc 1 4761 0
	pushl	%ebp
.LCFI209:
	movl	%esp, %ebp
.LCFI210:
	pushl	%ebx
.LCFI211:
	subl	$36, %esp
.LCFI212:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	movl	%eax, -24(%ebp)
	.loc 1 4761 0
	movl	%gs:20, %eax
	movl	%eax, -8(%ebp)
	xorl	%eax, %eax
	.loc 1 4764 0
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC96@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
	.loc 1 4765 0
	call	spelling_length
	addl	$1, %eax
	addl	$15, %eax
	addl	$15, %eax
	shrl	$4, %eax
	sall	$4, %eax
	subl	%eax, %esp
	leal	8(%esp), %eax
	movl	%eax, -28(%ebp)
	movl	-28(%ebp), %eax
	addl	$15, %eax
	shrl	$4, %eax
	sall	$4, %eax
	movl	%eax, -28(%ebp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	print_spelling
	movl	%eax, -12(%ebp)
	.loc 1 4766 0
	movl	-12(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L2104
	.loc 1 4767 0
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC153@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
.L2104:
	.loc 1 4768 0
	movl	-8(%ebp), %eax
	xorl	%gs:20, %eax
	je	.L2105
	call	__stack_chk_fail_local
.L2105:
	movl	-4(%ebp), %ebx
	leave
	ret
.LFE65:
	.size	warning_init, .-warning_init
	.section	.rodata
	.align 4
.LC154:
	.string	"char-array initialized from wide string"
	.align 4
.LC155:
	.string	"int-array initialized from non-wide string"
	.align 4
.LC156:
	.string	"initializer-string for array of chars is too long"
	.align 4
.LC157:
	.string	"array initialized from non-constant array expression"
	.align 4
.LC158:
	.string	"initializer element is not constant"
.LC159:
	.string	"initialization"
	.align 4
.LC160:
	.string	"initializer element is not computable at load time"
	.align 4
.LC161:
	.string	"variable-sized object may not be initialized"
.LC162:
	.string	"invalid initializer"
	.text
	.type	digest_init, @function
digest_init:
.LFB66:
	.loc 1 4780 0
	pushl	%ebp
.LCFI213:
	movl	%esp, %ebp
.LCFI214:
	pushl	%ebx
.LCFI215:
	subl	$52, %esp
.LCFI216:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4781 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -20(%ebp)
	.loc 1 4782 0
	movl	12(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 4784 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	8(%ebp), %eax
	je	.L2107
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	12(%ebp), %eax
	je	.L2107
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jne	.L2110
.L2107:
	.loc 1 4787 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
	jmp	.L2111
.L2110:
	.loc 1 4792 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$118, %al
	jne	.L2112
	.loc 1 4793 0
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -16(%ebp)
.L2112:
	.loc 1 4795 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -16(%ebp)
	.loc 1 4800 0
	cmpl	$19, -20(%ebp)
	jne	.L2114
.LBB69:
	.loc 1 4802 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	76(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 4803 0
	movl	integer_types@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-12(%ebp), %eax
	je	.L2116
	movl	integer_types@GOT(%ebx), %eax
	movl	4(%eax), %eax
	cmpl	-12(%ebp), %eax
	je	.L2116
	movl	integer_types@GOT(%ebx), %eax
	movl	8(%eax), %eax
	cmpl	-12(%ebp), %eax
	je	.L2116
	movl	c_global_trees@GOT(%ebx), %eax
	movl	8(%eax), %eax
	cmpl	-12(%ebp), %eax
	je	.L2116
	movl	integer_types@GOT(%ebx), %eax
	movl	28(%eax), %eax
	cmpl	-12(%ebp), %eax
	je	.L2116
	movl	c_global_trees@GOT(%ebx), %eax
	movl	4(%eax), %eax
	cmpl	-12(%ebp), %eax
	jne	.L2114
.L2116:
	cmpl	$0, -16(%ebp)
	je	.L2114
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$30, %al
	jne	.L2114
	.loc 1 4813 0
	movl	8(%ebp), %eax
	movl	76(%eax), %edx
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	76(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	comptypes@PLT
	testl	%eax, %eax
	je	.L2124
	.loc 1 4815 0
	movl	-16(%ebp), %eax
	movl	%eax, -32(%ebp)
	jmp	.L2111
.L2124:
	.loc 1 4817 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	76(%eax), %edx
	movl	integer_types@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	je	.L2126
	movl	-12(%ebp), %eax
	movzwl	36(%eax), %edx
	andw	$511, %dx
	movl	integer_types@GOT(%ebx), %eax
	movl	(%eax), %eax
	movzwl	36(%eax), %eax
	andw	$511, %ax
	cmpw	%ax, %dx
	jne	.L2126
	.loc 1 4821 0
	leal	.LC154@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error_init@PLT
	.loc 1 4822 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
	jmp	.L2111
.L2126:
	.loc 1 4824 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	76(%eax), %edx
	movl	integer_types@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jne	.L2129
	movl	-12(%ebp), %eax
	movzwl	36(%eax), %edx
	andw	$511, %dx
	movl	integer_types@GOT(%ebx), %eax
	movl	(%eax), %eax
	movzwl	36(%eax), %eax
	andw	$511, %ax
	cmpw	%ax, %dx
	je	.L2129
	.loc 1 4828 0
	leal	.LC155@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error_init@PLT
	.loc 1 4829 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
	jmp	.L2111
.L2129:
	.loc 1 4832 0
	movl	-16(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 4833 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L2132
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L2132
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	jne	.L2132
	movl	-16(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -28(%ebp)
	movl	-12(%ebp), %eax
	movzwl	36(%eax), %edx
	andw	$511, %dx
	movl	integer_types@GOT(%ebx), %eax
	movl	(%eax), %eax
	movzwl	36(%eax), %eax
	andw	$511, %ax
	cmpw	%ax, %dx
	je	.L2136
	movl	c_global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movzwl	36(%eax), %eax
	andw	$511, %ax
	movzwl	%ax, %edx
	movl	%edx, %eax
	sarl	$31, %eax
	shrl	$29, %eax
	addl	%edx, %eax
	sarl	$3, %eax
	movl	%eax, -24(%ebp)
	jmp	.L2138
.L2136:
	movl	$1, -24(%ebp)
.L2138:
	movl	-28(%ebp), %eax
	subl	-24(%ebp), %eax
	movl	%eax, %edx
	movl	%eax, %ecx
	sarl	$31, %ecx
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%ecx, 8(%esp)
	movl	%eax, (%esp)
	call	compare_tree_int@PLT
	testl	%eax, %eax
	jns	.L2132
	.loc 1 4846 0
	leal	.LC156@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	pedwarn_init@PLT
.L2132:
	.loc 1 4848 0
	movl	-16(%ebp), %eax
	movl	%eax, -32(%ebp)
	jmp	.L2111
.L2114:
.LBE69:
	.loc 1 4854 0
	cmpl	$10, -20(%ebp)
	jne	.L2140
	movl	-16(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	comptypes@PLT
	testl	%eax, %eax
	je	.L2140
	movl	-16(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L2140
	.loc 1 4857 0
	movl	-16(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_vector@PLT
	movl	%eax, -32(%ebp)
	jmp	.L2111
.L2140:
	.loc 1 4863 0
	cmpl	$0, -16(%ebp)
	je	.L2144
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L2144
	movl	8(%ebp), %eax
	movl	76(%eax), %edx
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	76(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	comptypes@PLT
	testl	%eax, %eax
	jne	.L2147
	cmpl	$19, -20(%ebp)
	jne	.L2149
	movl	-16(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	comptypes@PLT
	testl	%eax, %eax
	jne	.L2147
.L2149:
	cmpl	$10, -20(%ebp)
	jne	.L2151
	movl	-16(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	comptypes@PLT
	testl	%eax, %eax
	jne	.L2147
.L2151:
	cmpl	$14, -20(%ebp)
	jne	.L2144
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$19, %al
	je	.L2154
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$24, %al
	jne	.L2144
.L2154:
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	comptypes@PLT
	testl	%eax, %eax
	je	.L2144
.L2147:
	.loc 1 4876 0
	cmpl	$14, -20(%ebp)
	jne	.L2156
	.loc 1 4877 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	default_function_array_conversion
	movl	%eax, -16(%ebp)
.L2156:
	.loc 1 4879 0
	cmpl	$0, 16(%ebp)
	je	.L2158
	movl	flag_isoc99@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L2158
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-82, %al
	jne	.L2158
.LBB70:
	.loc 1 4885 0
	movl	-16(%ebp), %eax
	movl	20(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 4886 0
	movl	-8(%ebp), %eax
	movl	68(%eax), %eax
	movl	%eax, -16(%ebp)
.L2158:
.LBE70:
	.loc 1 4889 0
	cmpl	$19, -20(%ebp)
	jne	.L2162
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$30, %al
	je	.L2162
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$47, %al
	je	.L2162
	.loc 1 4892 0
	leal	.LC157@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error_init@PLT
	.loc 1 4893 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
	jmp	.L2111
.L2162:
	.loc 1 4896 0
	movl	optimize@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2166
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$35, %al
	jne	.L2166
	.loc 1 4897 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	decl_constant_value_for_broken_optimization
	movl	%eax, -16(%ebp)
.L2166:
	.loc 1 4902 0
	cmpl	$0, 16(%ebp)
	je	.L2169
	movl	pedantic@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2169
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$48, %al
	jne	.L2169
	.loc 1 4905 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	valid_compound_expr_initializer
	movl	%eax, -16(%ebp)
	.loc 1 4908 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-16(%ebp), %eax
	jne	.L2173
	.loc 1 4909 0
	leal	.LC158@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error_init@PLT
	jmp	.L2175
.L2173:
	.loc 1 4911 0
	leal	.LC158@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	pedwarn_init@PLT
.L2175:
	.loc 1 4912 0
	movl	flag_pedantic_errors@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2178
	.loc 1 4913 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 4902 0
	jmp	.L2178
.L2169:
	.loc 1 4915 0
	cmpl	$0, 16(%ebp)
	je	.L2178
	movl	-16(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L2180
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	initializer_constant_valid_p@PLT
	testl	%eax, %eax
	jne	.L2178
.L2180:
	.loc 1 4927 0
	leal	.LC158@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error_init@PLT
	.loc 1 4928 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
.L2178:
	.loc 1 4931 0
	movl	-16(%ebp), %eax
	movl	%eax, -32(%ebp)
	jmp	.L2111
.L2144:
	.loc 1 4936 0
	cmpl	$7, -20(%ebp)
	je	.L2182
	cmpl	$8, -20(%ebp)
	je	.L2182
	cmpl	$14, -20(%ebp)
	je	.L2182
	cmpl	$11, -20(%ebp)
	je	.L2182
	cmpl	$12, -20(%ebp)
	je	.L2182
	cmpl	$9, -20(%ebp)
	jne	.L2188
.L2182:
	.loc 1 4942 0
	movl	$0, 20(%esp)
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	leal	.LC159@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	convert_for_assignment
	movl	%eax, -16(%ebp)
	.loc 1 4946 0
	cmpl	$0, 16(%ebp)
	je	.L2189
	movl	-16(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	jne	.L2189
	.loc 1 4948 0
	leal	.LC158@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error_init@PLT
	.loc 1 4949 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 4946 0
	jmp	.L2192
.L2189:
	.loc 1 4951 0
	cmpl	$0, 16(%ebp)
	je	.L2192
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	initializer_constant_valid_p@PLT
	testl	%eax, %eax
	jne	.L2192
	.loc 1 4954 0
	leal	.LC160@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error_init@PLT
	.loc 1 4955 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
.L2192:
	.loc 1 4958 0
	movl	-16(%ebp), %eax
	movl	%eax, -32(%ebp)
	jmp	.L2111
.L2188:
	.loc 1 4963 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L2195
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	je	.L2195
	.loc 1 4965 0
	leal	.LC161@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error_init@PLT
	.loc 1 4966 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
	jmp	.L2111
.L2195:
	.loc 1 4969 0
	leal	.LC162@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error_init@PLT
	.loc 1 4970 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
.L2111:
	movl	-32(%ebp), %eax
	.loc 1 4971 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE66:
	.size	digest_init, .-digest_init
.globl constructor_no_implicit
	.bss
	.align 4
	.type	constructor_no_implicit, @object
	.size	constructor_no_implicit, 4
constructor_no_implicit:
	.zero	4
	.section	.rodata
.LC163:
	.string	"(anonymous)"
	.text
.globl start_init
	.type	start_init, @function
start_init:
.LFB67:
	.loc 1 5151 0
	pushl	%ebp
.LCFI217:
	movl	%esp, %ebp
.LCFI218:
	pushl	%ebx
.LCFI219:
	subl	$36, %esp
.LCFI220:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 5154 0
	movl	$40, (%esp)
	call	xmalloc@PLT
	movl	%eax, -12(%ebp)
	.loc 1 5155 0
	movl	$0, -8(%ebp)
	.loc 1 5157 0
	cmpl	$0, 12(%ebp)
	je	.L2200
	.loc 1 5158 0
	movl	12(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -8(%ebp)
.L2200:
	.loc 1 5160 0
	movl	constructor_decl@GOTOFF(%ebx), %edx
	movl	-12(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 5161 0
	movl	constructor_asmspec@GOTOFF(%ebx), %edx
	movl	-12(%ebp), %eax
	movl	%edx, 8(%eax)
	.loc 1 5162 0
	movl	require_constant_value@GOTOFF(%ebx), %eax
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	movb	%dl, 37(%eax)
	.loc 1 5163 0
	movl	require_constant_elements@GOTOFF(%ebx), %eax
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	movb	%dl, 38(%eax)
	.loc 1 5164 0
	movl	constructor_stack@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%edx, 12(%eax)
	.loc 1 5165 0
	movl	constructor_range_stack@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%edx, 16(%eax)
	.loc 1 5166 0
	movl	constructor_elements@GOTOFF(%ebx), %edx
	movl	-12(%ebp), %eax
	movl	%edx, 20(%eax)
	.loc 1 5167 0
	movl	spelling@GOTOFF(%ebx), %edx
	movl	-12(%ebp), %eax
	movl	%edx, 24(%eax)
	.loc 1 5168 0
	movl	spelling_base@GOTOFF(%ebx), %edx
	movl	-12(%ebp), %eax
	movl	%edx, 28(%eax)
	.loc 1 5169 0
	movl	spelling_size@GOTOFF(%ebx), %edx
	movl	-12(%ebp), %eax
	movl	%edx, 32(%eax)
	.loc 1 5170 0
	movl	constructor_subconstants_deferred@GOTOFF(%ebx), %eax
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	movb	%dl, 39(%eax)
	.loc 1 5171 0
	movl	constructor_top_level@GOTOFF(%ebx), %eax
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	movb	%dl, 36(%eax)
	.loc 1 5172 0
	movl	initializer_stack@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 5173 0
	movl	initializer_stack@GOT(%ebx), %edx
	movl	-12(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 5175 0
	movl	8(%ebp), %eax
	movl	%eax, constructor_decl@GOTOFF(%ebx)
	.loc 1 5176 0
	movl	-8(%ebp), %eax
	movl	%eax, constructor_asmspec@GOTOFF(%ebx)
	.loc 1 5177 0
	movl	$0, constructor_subconstants_deferred@GOTOFF(%ebx)
	.loc 1 5178 0
	movl	$0, constructor_designated@GOTOFF(%ebx)
	.loc 1 5179 0
	movl	16(%ebp), %eax
	movl	%eax, constructor_top_level@GOTOFF(%ebx)
	.loc 1 5181 0
	cmpl	$0, 8(%ebp)
	je	.L2202
	.loc 1 5183 0
	movl	8(%ebp), %eax
	movzbl	10(%eax), %eax
	shrb	$2, %al
	andl	$1, %eax
	movzbl	%al, %eax
	movl	%eax, require_constant_value@GOTOFF(%ebx)
	.loc 1 5184 0
	movl	8(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L2204
	movl	pedantic@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2206
	movl	flag_isoc99@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L2206
.L2204:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$19, %al
	je	.L2208
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	je	.L2208
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	je	.L2208
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$23, %al
	jne	.L2206
.L2208:
	movl	$1, -24(%ebp)
	jmp	.L2212
.L2206:
	movl	$0, -24(%ebp)
.L2212:
	movl	-24(%ebp), %eax
	movl	%eax, require_constant_elements@GOTOFF(%ebx)
	.loc 1 5192 0
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -16(%ebp)
	jmp	.L2213
.L2202:
	.loc 1 5196 0
	movl	$0, require_constant_value@GOTOFF(%ebx)
	.loc 1 5197 0
	movl	$0, require_constant_elements@GOTOFF(%ebx)
	.loc 1 5198 0
	leal	.LC163@GOTOFF(%ebx), %eax
	movl	%eax, -16(%ebp)
.L2213:
	.loc 1 5201 0
	movl	constructor_stack@GOT(%ebx), %eax
	movl	$0, (%eax)
	.loc 1 5202 0
	movl	constructor_range_stack@GOT(%ebx), %eax
	movl	$0, (%eax)
	.loc 1 5204 0
	movl	$0, missing_braces_mentioned@GOTOFF(%ebx)
	.loc 1 5206 0
	movl	$0, spelling_base@GOTOFF(%ebx)
	.loc 1 5207 0
	movl	$0, spelling_size@GOTOFF(%ebx)
	.loc 1 5208 0
	movl	spelling_base@GOTOFF(%ebx), %eax
	movl	%eax, spelling@GOTOFF(%ebx)
	.loc 1 5210 0
	cmpl	$0, -16(%ebp)
	je	.L2216
	.loc 1 5211 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	push_string
.L2216:
	.loc 1 5212 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE67:
	.size	start_init, .-start_init
	.section	.rodata
	.type	__FUNCTION__.19633, @object
	.size	__FUNCTION__.19633, 12
__FUNCTION__.19633:
	.string	"finish_init"
	.text
.globl finish_init
	.type	finish_init, @function
finish_init:
.LFB68:
	.loc 1 5216 0
	pushl	%ebp
.LCFI221:
	movl	%esp, %ebp
.LCFI222:
	pushl	%ebx
.LCFI223:
	subl	$36, %esp
.LCFI224:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 5217 0
	movl	initializer_stack@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 5220 0
	movl	constructor_incremental@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L2218
	.loc 1 5222 0
	call	WFE_Finish_Aggregate_Init@PLT
.L2218:
	.loc 1 5229 0
	movl	constructor_subconstants_deferred@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L2222
	.loc 1 5230 0
	call	output_deferred_addressed_constants@PLT
	.loc 1 5233 0
	jmp	.L2222
.L2223:
.LBB71:
	.loc 1 5235 0
	movl	constructor_stack@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 5236 0
	movl	-8(%ebp), %eax
	movl	(%eax), %edx
	movl	constructor_stack@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 5237 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
.L2222:
.LBE71:
	.loc 1 5233 0
	movl	constructor_stack@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L2223
	.loc 1 5240 0
	movl	constructor_range_stack@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2225
	.loc 1 5241 0
	leal	__FUNCTION__.19633@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$5241, 4(%esp)
	leal	.LC7@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L2225:
	.loc 1 5244 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, constructor_decl@GOTOFF(%ebx)
	.loc 1 5245 0
	movl	-12(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, constructor_asmspec@GOTOFF(%ebx)
	.loc 1 5246 0
	movl	-12(%ebp), %eax
	movzbl	37(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, require_constant_value@GOTOFF(%ebx)
	.loc 1 5247 0
	movl	-12(%ebp), %eax
	movzbl	38(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, require_constant_elements@GOTOFF(%ebx)
	.loc 1 5248 0
	movl	-12(%ebp), %eax
	movl	12(%eax), %edx
	movl	constructor_stack@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 5249 0
	movl	-12(%ebp), %eax
	movl	16(%eax), %edx
	movl	constructor_range_stack@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 5250 0
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, constructor_elements@GOTOFF(%ebx)
	.loc 1 5251 0
	movl	-12(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, spelling@GOTOFF(%ebx)
	.loc 1 5252 0
	movl	-12(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, spelling_base@GOTOFF(%ebx)
	.loc 1 5253 0
	movl	-12(%ebp), %eax
	movl	32(%eax), %eax
	movl	%eax, spelling_size@GOTOFF(%ebx)
	.loc 1 5254 0
	movl	-12(%ebp), %eax
	movzbl	39(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, constructor_subconstants_deferred@GOTOFF(%ebx)
	.loc 1 5255 0
	movl	-12(%ebp), %eax
	movzbl	36(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, constructor_top_level@GOTOFF(%ebx)
	.loc 1 5256 0
	movl	-12(%ebp), %eax
	movl	(%eax), %edx
	movl	initializer_stack@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 5257 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 5258 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE68:
	.size	finish_init, .-finish_init
	.section	.rodata
.LC164:
	.string	"really_start_incremental_init"
	.text
.globl really_start_incremental_init
	.type	really_start_incremental_init, @function
really_start_incremental_init:
.LFB69:
	.loc 1 5270 0
	pushl	%ebp
.LCFI225:
	movl	%esp, %ebp
.LCFI226:
	pushl	%ebx
.LCFI227:
	subl	$52, %esp
.LCFI228:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 5272 0
	movl	$64, (%esp)
	call	xmalloc@PLT
	movl	%eax, -12(%ebp)
	.loc 1 5274 0
	cmpl	$0, 8(%ebp)
	jne	.L2229
	.loc 1 5275 0
	movl	constructor_decl@GOTOFF(%ebx), %eax
	movl	4(%eax), %eax
	movl	%eax, 8(%ebp)
.L2229:
	.loc 1 5278 0
	movl	constructor_decl@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	.LC164@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	dump_parse_tree@PLT
	.loc 1 5280 0
	movl	constructor_type@GOTOFF(%ebx), %edx
	movl	-12(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 5281 0
	movl	constructor_fields@GOTOFF(%ebx), %edx
	movl	-12(%ebp), %eax
	movl	%edx, 8(%eax)
	.loc 1 5282 0
	movl	constructor_index@GOTOFF(%ebx), %edx
	movl	-12(%ebp), %eax
	movl	%edx, 12(%eax)
	.loc 1 5283 0
	movl	constructor_max_index@GOTOFF(%ebx), %edx
	movl	-12(%ebp), %eax
	movl	%edx, 16(%eax)
	.loc 1 5284 0
	movl	constructor_unfilled_index@GOTOFF(%ebx), %edx
	movl	-12(%ebp), %eax
	movl	%edx, 20(%eax)
	.loc 1 5285 0
	movl	constructor_unfilled_fields@GOTOFF(%ebx), %edx
	movl	-12(%ebp), %eax
	movl	%edx, 24(%eax)
	.loc 1 5286 0
	movl	constructor_bit_index@GOTOFF(%ebx), %edx
	movl	-12(%ebp), %eax
	movl	%edx, 28(%eax)
	.loc 1 5287 0
	movl	constructor_elements@GOTOFF(%ebx), %edx
	movl	-12(%ebp), %eax
	movl	%edx, 32(%eax)
	.loc 1 5288 0
	movl	constructor_constant@GOTOFF(%ebx), %eax
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	movb	%dl, 56(%eax)
	.loc 1 5289 0
	movl	constructor_simple@GOTOFF(%ebx), %eax
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	movb	%dl, 57(%eax)
	.loc 1 5290 0
	movl	constructor_erroneous@GOTOFF(%ebx), %eax
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	movb	%dl, 59(%eax)
	.loc 1 5291 0
	movl	constructor_pending_elts@GOTOFF(%ebx), %edx
	movl	-12(%ebp), %eax
	movl	%edx, 36(%eax)
	.loc 1 5292 0
	movl	constructor_depth@GOTOFF(%ebx), %edx
	movl	-12(%ebp), %eax
	movl	%edx, 44(%eax)
	.loc 1 5293 0
	movl	-12(%ebp), %eax
	movl	$0, 48(%eax)
	.loc 1 5294 0
	movl	-12(%ebp), %eax
	movb	$0, 58(%eax)
	.loc 1 5295 0
	movl	-12(%ebp), %eax
	movl	$0, 52(%eax)
	.loc 1 5296 0
	movl	-12(%ebp), %eax
	movb	$0, 60(%eax)
	.loc 1 5297 0
	movl	constructor_incremental@GOTOFF(%ebx), %eax
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	movb	%dl, 61(%eax)
	.loc 1 5298 0
	movl	constructor_designated@GOTOFF(%ebx), %eax
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	movb	%dl, 62(%eax)
	.loc 1 5299 0
	movl	-12(%ebp), %eax
	movl	$0, (%eax)
	.loc 1 5300 0
	movl	constructor_stack@GOT(%ebx), %edx
	movl	-12(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 5302 0
	movl	$1, constructor_constant@GOTOFF(%ebx)
	.loc 1 5303 0
	movl	$1, constructor_simple@GOTOFF(%ebx)
	.loc 1 5304 0
	movl	spelling@GOTOFF(%ebx), %eax
	movl	%eax, %edx
	movl	spelling_base@GOTOFF(%ebx), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	sarl	$3, %eax
	movl	%eax, constructor_depth@GOTOFF(%ebx)
	.loc 1 5305 0
	movl	$0, constructor_elements@GOTOFF(%ebx)
	.loc 1 5306 0
	movl	$0, constructor_pending_elts@GOTOFF(%ebx)
	.loc 1 5307 0
	movl	8(%ebp), %eax
	movl	%eax, constructor_type@GOTOFF(%ebx)
	.loc 1 5308 0
	movl	$1, constructor_incremental@GOTOFF(%ebx)
	.loc 1 5309 0
	movl	$0, constructor_designated@GOTOFF(%ebx)
	.loc 1 5310 0
	movl	$0, designator_depth@GOTOFF(%ebx)
	.loc 1 5311 0
	movl	$0, designator_errorneous@GOTOFF(%ebx)
	.loc 1 5313 0
	movl	constructor_type@GOTOFF(%ebx), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	je	.L2231
	movl	constructor_type@GOTOFF(%ebx), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	jne	.L2233
.L2231:
	.loc 1 5316 0
	movl	constructor_type@GOTOFF(%ebx), %eax
	movl	16(%eax), %eax
	movl	%eax, constructor_fields@GOTOFF(%ebx)
	.loc 1 5318 0
	jmp	.L2234
.L2235:
	.loc 1 5320 0
	movl	constructor_fields@GOTOFF(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, constructor_fields@GOTOFF(%ebx)
.L2234:
	.loc 1 5318 0
	movl	constructor_fields@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L2236
	movl	constructor_fields@GOTOFF(%ebx), %eax
	movzbl	38(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L2236
	movl	constructor_fields@GOTOFF(%ebx), %eax
	movl	52(%eax), %eax
	testl	%eax, %eax
	je	.L2235
.L2236:
	.loc 1 5322 0
	movl	constructor_fields@GOTOFF(%ebx), %eax
	movl	%eax, constructor_unfilled_fields@GOTOFF(%ebx)
	.loc 1 5323 0
	movl	global_trees@GOT(%ebx), %eax
	movl	68(%eax), %eax
	movl	%eax, constructor_bit_index@GOTOFF(%ebx)
	.loc 1 5313 0
	jmp	.L2256
.L2233:
	.loc 1 5325 0
	movl	constructor_type@GOTOFF(%ebx), %eax
	movzbl	8(%eax), %eax
	cmpb	$19, %al
	jne	.L2240
	.loc 1 5327 0
	movl	constructor_type@GOTOFF(%ebx), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L2242
	.loc 1 5329 0
	movl	constructor_type@GOTOFF(%ebx), %eax
	movl	16(%eax), %eax
	movl	68(%eax), %eax
	movl	%eax, constructor_max_index@GOTOFF(%ebx)
	.loc 1 5333 0
	movl	constructor_max_index@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L2244
	movl	constructor_type@GOTOFF(%ebx), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L2244
	.loc 1 5335 0
	movl	$-1, 8(%esp)
	movl	$-1, 12(%esp)
	movl	$-1, (%esp)
	movl	$-1, 4(%esp)
	call	build_int_2_wide@PLT
	movl	%eax, constructor_max_index@GOTOFF(%ebx)
.L2244:
	.loc 1 5340 0
	movl	constructor_max_index@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L2247
	movl	constructor_max_index@GOTOFF(%ebx), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	je	.L2247
	.loc 1 5342 0
	movl	$-1, 8(%esp)
	movl	$-1, 12(%esp)
	movl	$-1, (%esp)
	movl	$-1, 4(%esp)
	call	build_int_2_wide@PLT
	movl	%eax, constructor_max_index@GOTOFF(%ebx)
.L2247:
	.loc 1 5344 0
	movl	constructor_type@GOTOFF(%ebx), %eax
	movl	16(%eax), %eax
	movl	64(%eax), %edx
	movl	sizetype_tab@GOT(%ebx), %eax
	movl	12(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, constructor_index@GOTOFF(%ebx)
	jmp	.L2250
.L2242:
	.loc 1 5349 0
	movl	global_trees@GOT(%ebx), %eax
	movl	68(%eax), %eax
	movl	%eax, constructor_index@GOTOFF(%ebx)
.L2250:
	.loc 1 5351 0
	movl	constructor_index@GOTOFF(%ebx), %eax
	movl	%eax, constructor_unfilled_index@GOTOFF(%ebx)
	jmp	.L2256
.L2240:
	.loc 1 5353 0
	movl	constructor_type@GOTOFF(%ebx), %eax
	movzbl	8(%eax), %eax
	cmpb	$10, %al
	jne	.L2251
	.loc 1 5356 0
	movl	constructor_type@GOTOFF(%ebx), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %edx
	movl	mode_unit_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	testb	%al, %al
	je	.L2253
	movl	constructor_type@GOTOFF(%ebx), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %ecx
	movl	constructor_type@GOTOFF(%ebx), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %edx
	movl	mode_unit_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %edx
	movzbw	%cl, %ax
	divb	%dl
	movzbl	%al, %eax
	subl	$1, %eax
	movl	%eax, -32(%ebp)
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%edx, -28(%ebp)
	jmp	.L2255
.L2253:
	movl	$-1, -32(%ebp)
	movl	$-1, -28(%ebp)
.L2255:
	movl	$0, 8(%esp)
	movl	$0, 12(%esp)
	movl	-32(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	build_int_2_wide@PLT
	movl	%eax, constructor_max_index@GOTOFF(%ebx)
	.loc 1 5358 0
	movl	global_trees@GOT(%ebx), %eax
	movl	68(%eax), %edx
	movl	sizetype_tab@GOT(%ebx), %eax
	movl	12(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, constructor_index@GOTOFF(%ebx)
	.loc 1 5359 0
	movl	constructor_index@GOTOFF(%ebx), %eax
	movl	%eax, constructor_unfilled_index@GOTOFF(%ebx)
	jmp	.L2256
.L2251:
	.loc 1 5364 0
	movl	constructor_type@GOTOFF(%ebx), %eax
	movl	%eax, constructor_fields@GOTOFF(%ebx)
	.loc 1 5365 0
	movl	constructor_type@GOTOFF(%ebx), %eax
	movl	%eax, constructor_unfilled_fields@GOTOFF(%ebx)
.L2256:
	.loc 1 5367 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE69:
	.size	really_start_incremental_init, .-really_start_incremental_init
	.section	.rodata
.LC165:
	.string	"push_init_level"
	.align 4
.LC166:
	.string	"extra brace group at end of initializer"
	.align 4
.LC167:
	.string	"missing braces around initializer"
	.align 4
.LC168:
	.string	"braces around scalar initializer"
	.text
.globl push_init_level
	.type	push_init_level, @function
push_init_level:
.LFB70:
	.loc 1 5377 0
	pushl	%ebp
.LCFI229:
	movl	%esp, %ebp
.LCFI230:
	pushl	%ebx
.LCFI231:
	subl	$52, %esp
.LCFI232:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 5379 0
	movl	$0, -12(%ebp)
	.loc 1 5382 0
	movl	$0, 4(%esp)
	leal	.LC165@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	dump_parse_tree@PLT
	.loc 1 5386 0
	jmp	.L2327
.L2259:
	.loc 1 5388 0
	movl	constructor_type@GOTOFF(%ebx), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	je	.L2260
	movl	constructor_type@GOTOFF(%ebx), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	jne	.L2262
.L2260:
	movl	constructor_fields@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L2262
	.loc 1 5391 0
	movl	$1, (%esp)
	call	pop_init_level@PLT
	movl	%eax, (%esp)
	call	process_init_element@PLT
	.loc 1 5388 0
	jmp	.L2258
.L2262:
	.loc 1 5392 0
	movl	constructor_type@GOTOFF(%ebx), %eax
	movzbl	8(%eax), %eax
	cmpb	$19, %al
	jne	.L2264
	movl	constructor_max_index@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L2264
	movl	constructor_index@GOTOFF(%ebx), %eax
	movl	constructor_max_index@GOTOFF(%ebx), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	tree_int_cst_lt@PLT
	testl	%eax, %eax
	je	.L2264
	.loc 1 5395 0
	movl	$1, (%esp)
	call	pop_init_level@PLT
	movl	%eax, (%esp)
	call	process_init_element@PLT
.L2258:
.L2327:
	.loc 1 5386 0
	movl	constructor_stack@GOT(%ebx), %eax
	movl	(%eax), %eax
	movzbl	58(%eax), %eax
	testb	%al, %al
	jne	.L2259
.L2264:
	.loc 1 5402 0
	cmpl	$0, 8(%ebp)
	je	.L2268
	.loc 1 5404 0
	movl	constructor_type@GOTOFF(%ebx), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	je	.L2270
	movl	constructor_type@GOTOFF(%ebx), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	jne	.L2272
.L2270:
	movl	constructor_fields@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L2272
	.loc 1 5407 0
	movl	constructor_fields@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	find_init_member
	movl	%eax, -12(%ebp)
	.loc 1 5404 0
	jmp	.L2268
.L2272:
	.loc 1 5408 0
	movl	constructor_type@GOTOFF(%ebx), %eax
	movzbl	8(%eax), %eax
	cmpb	$19, %al
	jne	.L2268
	.loc 1 5409 0
	movl	constructor_index@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	find_init_member
	movl	%eax, -12(%ebp)
.L2268:
	.loc 1 5412 0
	movl	$64, (%esp)
	call	xmalloc@PLT
	movl	%eax, -16(%ebp)
	.loc 1 5413 0
	movl	constructor_type@GOTOFF(%ebx), %edx
	movl	-16(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 5414 0
	movl	constructor_fields@GOTOFF(%ebx), %edx
	movl	-16(%ebp), %eax
	movl	%edx, 8(%eax)
	.loc 1 5415 0
	movl	constructor_index@GOTOFF(%ebx), %edx
	movl	-16(%ebp), %eax
	movl	%edx, 12(%eax)
	.loc 1 5416 0
	movl	constructor_max_index@GOTOFF(%ebx), %edx
	movl	-16(%ebp), %eax
	movl	%edx, 16(%eax)
	.loc 1 5417 0
	movl	constructor_unfilled_index@GOTOFF(%ebx), %edx
	movl	-16(%ebp), %eax
	movl	%edx, 20(%eax)
	.loc 1 5418 0
	movl	constructor_unfilled_fields@GOTOFF(%ebx), %edx
	movl	-16(%ebp), %eax
	movl	%edx, 24(%eax)
	.loc 1 5419 0
	movl	constructor_bit_index@GOTOFF(%ebx), %edx
	movl	-16(%ebp), %eax
	movl	%edx, 28(%eax)
	.loc 1 5420 0
	movl	constructor_elements@GOTOFF(%ebx), %edx
	movl	-16(%ebp), %eax
	movl	%edx, 32(%eax)
	.loc 1 5421 0
	movl	constructor_constant@GOTOFF(%ebx), %eax
	movl	%eax, %edx
	movl	-16(%ebp), %eax
	movb	%dl, 56(%eax)
	.loc 1 5422 0
	movl	constructor_simple@GOTOFF(%ebx), %eax
	movl	%eax, %edx
	movl	-16(%ebp), %eax
	movb	%dl, 57(%eax)
	.loc 1 5423 0
	movl	constructor_erroneous@GOTOFF(%ebx), %eax
	movl	%eax, %edx
	movl	-16(%ebp), %eax
	movb	%dl, 59(%eax)
	.loc 1 5424 0
	movl	constructor_pending_elts@GOTOFF(%ebx), %edx
	movl	-16(%ebp), %eax
	movl	%edx, 36(%eax)
	.loc 1 5425 0
	movl	constructor_depth@GOTOFF(%ebx), %edx
	movl	-16(%ebp), %eax
	movl	%edx, 44(%eax)
	.loc 1 5426 0
	movl	-16(%ebp), %eax
	movl	$0, 48(%eax)
	.loc 1 5427 0
	movl	8(%ebp), %eax
	movl	%eax, %edx
	movl	-16(%ebp), %eax
	movb	%dl, 58(%eax)
	.loc 1 5428 0
	movl	-16(%ebp), %eax
	movb	$0, 60(%eax)
	.loc 1 5429 0
	movl	constructor_incremental@GOTOFF(%ebx), %eax
	movl	%eax, %edx
	movl	-16(%ebp), %eax
	movb	%dl, 61(%eax)
	.loc 1 5430 0
	movl	constructor_designated@GOTOFF(%ebx), %eax
	movl	%eax, %edx
	movl	-16(%ebp), %eax
	movb	%dl, 62(%eax)
	.loc 1 5431 0
	movl	constructor_stack@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 5432 0
	movl	-16(%ebp), %eax
	movl	$0, 52(%eax)
	.loc 1 5433 0
	movl	constructor_stack@GOT(%ebx), %edx
	movl	-16(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 5435 0
	movl	$1, constructor_constant@GOTOFF(%ebx)
	.loc 1 5436 0
	movl	$1, constructor_simple@GOTOFF(%ebx)
	.loc 1 5437 0
	movl	spelling@GOTOFF(%ebx), %eax
	movl	%eax, %edx
	movl	spelling_base@GOTOFF(%ebx), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	sarl	$3, %eax
	movl	%eax, constructor_depth@GOTOFF(%ebx)
	.loc 1 5438 0
	movl	$0, constructor_elements@GOTOFF(%ebx)
	.loc 1 5439 0
	movl	$1, constructor_incremental@GOTOFF(%ebx)
	.loc 1 5440 0
	movl	$0, constructor_designated@GOTOFF(%ebx)
	.loc 1 5441 0
	movl	$0, constructor_pending_elts@GOTOFF(%ebx)
	.loc 1 5442 0
	cmpl	$0, 8(%ebp)
	jne	.L2275
	.loc 1 5444 0
	movl	constructor_range_stack@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%edx, 52(%eax)
	.loc 1 5445 0
	movl	constructor_range_stack@GOT(%ebx), %eax
	movl	$0, (%eax)
	.loc 1 5446 0
	movl	$0, designator_depth@GOTOFF(%ebx)
	.loc 1 5447 0
	movl	$0, designator_errorneous@GOTOFF(%ebx)
.L2275:
	.loc 1 5452 0
	movl	constructor_type@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L2277
	.loc 1 5454 0
	movl	constructor_type@GOTOFF(%ebx), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	je	.L2279
	movl	constructor_type@GOTOFF(%ebx), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	jne	.L2281
.L2279:
	.loc 1 5458 0
	movl	constructor_fields@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L2282
	.loc 1 5459 0
	movl	$0, constructor_type@GOTOFF(%ebx)
	jmp	.L2277
.L2282:
	.loc 1 5462 0
	movl	constructor_fields@GOTOFF(%ebx), %eax
	movl	4(%eax), %eax
	movl	%eax, constructor_type@GOTOFF(%ebx)
	.loc 1 5463 0
	movl	constructor_fields@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	push_member_name
	.loc 1 5464 0
	movl	constructor_depth@GOTOFF(%ebx), %eax
	addl	$1, %eax
	movl	%eax, constructor_depth@GOTOFF(%ebx)
	.loc 1 5454 0
	jmp	.L2277
.L2281:
	.loc 1 5467 0
	movl	constructor_type@GOTOFF(%ebx), %eax
	movzbl	8(%eax), %eax
	cmpb	$19, %al
	jne	.L2277
	.loc 1 5469 0
	movl	constructor_type@GOTOFF(%ebx), %eax
	movl	4(%eax), %eax
	movl	%eax, constructor_type@GOTOFF(%ebx)
	.loc 1 5470 0
	movl	constructor_index@GOTOFF(%ebx), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	tree_low_cst@PLT
	movl	%eax, (%esp)
	call	push_array_bounds
	.loc 1 5471 0
	movl	constructor_depth@GOTOFF(%ebx), %eax
	addl	$1, %eax
	movl	%eax, constructor_depth@GOTOFF(%ebx)
.L2277:
	.loc 1 5474 0
	movl	constructor_type@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L2286
	.loc 1 5476 0
	leal	.LC166@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error_init@PLT
	.loc 1 5477 0
	movl	$0, constructor_fields@GOTOFF(%ebx)
	.loc 1 5478 0
	movl	$0, constructor_unfilled_fields@GOTOFF(%ebx)
	.loc 1 5479 0
	jmp	.L2326
.L2286:
	.loc 1 5482 0
	cmpl	$0, -12(%ebp)
	je	.L2289
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$47, %al
	jne	.L2289
	.loc 1 5484 0
	movl	-12(%ebp), %eax
	movzbl	9(%eax), %eax
	shrb	%al
	andl	$1, %eax
	movzbl	%al, %eax
	movl	%eax, constructor_constant@GOTOFF(%ebx)
	.loc 1 5485 0
	movl	-12(%ebp), %eax
	movzbl	10(%eax), %eax
	shrb	$2, %al
	andl	$1, %eax
	movzbl	%al, %eax
	movl	%eax, constructor_simple@GOTOFF(%ebx)
	.loc 1 5486 0
	movl	-12(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, constructor_elements@GOTOFF(%ebx)
	.loc 1 5487 0
	movl	constructor_elements@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L2289
	movl	constructor_type@GOTOFF(%ebx), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	je	.L2293
	movl	constructor_type@GOTOFF(%ebx), %eax
	movzbl	8(%eax), %eax
	cmpb	$19, %al
	jne	.L2289
.L2293:
	.loc 1 5490 0
	call	set_nonincremental_init
.L2289:
	.loc 1 5493 0
	cmpl	$1, 8(%ebp)
	jne	.L2295
	movl	warn_missing_braces@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2295
	movl	missing_braces_mentioned@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L2295
	.loc 1 5495 0
	movl	$1, missing_braces_mentioned@GOTOFF(%ebx)
	.loc 1 5496 0
	leal	.LC167@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning_init
.L2295:
	.loc 1 5499 0
	movl	constructor_type@GOTOFF(%ebx), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	je	.L2299
	movl	constructor_type@GOTOFF(%ebx), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	jne	.L2301
.L2299:
	.loc 1 5502 0
	movl	constructor_type@GOTOFF(%ebx), %eax
	movl	16(%eax), %eax
	movl	%eax, constructor_fields@GOTOFF(%ebx)
	.loc 1 5504 0
	jmp	.L2302
.L2303:
	.loc 1 5506 0
	movl	constructor_fields@GOTOFF(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, constructor_fields@GOTOFF(%ebx)
.L2302:
	.loc 1 5504 0
	movl	constructor_fields@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L2304
	movl	constructor_fields@GOTOFF(%ebx), %eax
	movzbl	38(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L2304
	movl	constructor_fields@GOTOFF(%ebx), %eax
	movl	52(%eax), %eax
	testl	%eax, %eax
	je	.L2303
.L2304:
	.loc 1 5508 0
	movl	constructor_fields@GOTOFF(%ebx), %eax
	movl	%eax, constructor_unfilled_fields@GOTOFF(%ebx)
	.loc 1 5509 0
	movl	global_trees@GOT(%ebx), %eax
	movl	68(%eax), %eax
	movl	%eax, constructor_bit_index@GOTOFF(%ebx)
	.loc 1 5499 0
	jmp	.L2326
.L2301:
	.loc 1 5511 0
	movl	constructor_type@GOTOFF(%ebx), %eax
	movzbl	8(%eax), %eax
	cmpb	$10, %al
	jne	.L2307
	.loc 1 5514 0
	movl	constructor_type@GOTOFF(%ebx), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %edx
	movl	mode_unit_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	testb	%al, %al
	je	.L2309
	movl	constructor_type@GOTOFF(%ebx), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %ecx
	movl	constructor_type@GOTOFF(%ebx), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %edx
	movl	mode_unit_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %edx
	movzbw	%cl, %ax
	divb	%dl
	movzbl	%al, %eax
	subl	$1, %eax
	movl	%eax, -32(%ebp)
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%edx, -28(%ebp)
	jmp	.L2311
.L2309:
	movl	$-1, -32(%ebp)
	movl	$-1, -28(%ebp)
.L2311:
	movl	$0, 8(%esp)
	movl	$0, 12(%esp)
	movl	-32(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	build_int_2_wide@PLT
	movl	%eax, constructor_max_index@GOTOFF(%ebx)
	.loc 1 5516 0
	movl	global_trees@GOT(%ebx), %eax
	movl	44(%eax), %edx
	movl	sizetype_tab@GOT(%ebx), %eax
	movl	12(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, constructor_index@GOTOFF(%ebx)
	.loc 1 5517 0
	movl	constructor_index@GOTOFF(%ebx), %eax
	movl	%eax, constructor_unfilled_index@GOTOFF(%ebx)
	jmp	.L2326
.L2307:
	.loc 1 5519 0
	movl	constructor_type@GOTOFF(%ebx), %eax
	movzbl	8(%eax), %eax
	cmpb	$19, %al
	jne	.L2312
	.loc 1 5521 0
	movl	constructor_type@GOTOFF(%ebx), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L2314
	.loc 1 5523 0
	movl	constructor_type@GOTOFF(%ebx), %eax
	movl	16(%eax), %eax
	movl	68(%eax), %eax
	movl	%eax, constructor_max_index@GOTOFF(%ebx)
	.loc 1 5527 0
	movl	constructor_max_index@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L2316
	movl	constructor_type@GOTOFF(%ebx), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L2316
	.loc 1 5529 0
	movl	$-1, 8(%esp)
	movl	$-1, 12(%esp)
	movl	$-1, (%esp)
	movl	$-1, 4(%esp)
	call	build_int_2_wide@PLT
	movl	%eax, constructor_max_index@GOTOFF(%ebx)
.L2316:
	.loc 1 5534 0
	movl	constructor_max_index@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L2319
	movl	constructor_max_index@GOTOFF(%ebx), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	je	.L2319
	.loc 1 5536 0
	movl	$-1, 8(%esp)
	movl	$-1, 12(%esp)
	movl	$-1, (%esp)
	movl	$-1, 4(%esp)
	call	build_int_2_wide@PLT
	movl	%eax, constructor_max_index@GOTOFF(%ebx)
.L2319:
	.loc 1 5538 0
	movl	constructor_type@GOTOFF(%ebx), %eax
	movl	16(%eax), %eax
	movl	64(%eax), %edx
	movl	sizetype_tab@GOT(%ebx), %eax
	movl	12(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, constructor_index@GOTOFF(%ebx)
	jmp	.L2322
.L2314:
	.loc 1 5543 0
	movl	global_trees@GOT(%ebx), %eax
	movl	68(%eax), %eax
	movl	%eax, constructor_index@GOTOFF(%ebx)
.L2322:
	.loc 1 5545 0
	movl	constructor_index@GOTOFF(%ebx), %eax
	movl	%eax, constructor_unfilled_index@GOTOFF(%ebx)
	.loc 1 5546 0
	cmpl	$0, -12(%ebp)
	je	.L2326
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$30, %al
	jne	.L2326
	.loc 1 5551 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	set_nonincremental_init_from_string
	jmp	.L2326
.L2312:
	.loc 1 5556 0
	leal	.LC168@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning_init
	.loc 1 5557 0
	movl	constructor_type@GOTOFF(%ebx), %eax
	movl	%eax, constructor_fields@GOTOFF(%ebx)
	.loc 1 5558 0
	movl	constructor_type@GOTOFF(%ebx), %eax
	movl	%eax, constructor_unfilled_fields@GOTOFF(%ebx)
.L2326:
	.loc 1 5560 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE70:
	.size	push_init_level, .-push_init_level
	.section	.rodata
	.type	__FUNCTION__.20040, @object
	.size	__FUNCTION__.20040, 15
__FUNCTION__.20040:
	.string	"pop_init_level"
.LC169:
	.string	"pop_init_level"
	.align 4
.LC170:
	.string	"initialization of flexible array member in a nested context"
	.align 4
.LC171:
	.string	"initialization of a flexible array member"
.LC172:
	.string	"missing initializer"
.LC173:
	.string	"empty scalar initializer"
	.align 4
.LC174:
	.string	"extra elements in scalar initializer"
	.text
.globl pop_init_level
	.type	pop_init_level, @function
pop_init_level:
.LFB71:
	.loc 1 5573 0
	pushl	%ebp
.LCFI233:
	movl	%esp, %ebp
.LCFI234:
	pushl	%ebx
.LCFI235:
	subl	$36, %esp
.LCFI236:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 5575 0
	movl	$0, -8(%ebp)
	.loc 1 5578 0
	movl	$0, 4(%esp)
	leal	.LC169@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	dump_parse_tree@PLT
	.loc 1 5580 0
	cmpl	$0, 8(%ebp)
	jne	.L2329
	.loc 1 5584 0
	jmp	.L2331
.L2332:
	.loc 1 5585 0
	movl	$1, (%esp)
	call	pop_init_level@PLT
	movl	%eax, (%esp)
	call	process_init_element@PLT
.L2331:
	.loc 1 5584 0
	movl	constructor_stack@GOT(%ebx), %eax
	movl	(%eax), %eax
	movzbl	58(%eax), %eax
	testb	%al, %al
	jne	.L2332
	.loc 1 5587 0
	movl	constructor_range_stack@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2329
	.loc 1 5588 0
	leal	__FUNCTION__.20040@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$5588, 4(%esp)
	leal	.LC7@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L2329:
	.loc 1 5591 0
	movl	constructor_stack@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 5595 0
	movl	constructor_type@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L2335
	movl	constructor_fields@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L2335
	movl	constructor_type@GOTOFF(%ebx), %eax
	movzbl	8(%eax), %eax
	cmpb	$19, %al
	jne	.L2335
	movl	constructor_type@GOTOFF(%ebx), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L2335
	movl	constructor_type@GOTOFF(%ebx), %eax
	movl	16(%eax), %eax
	movl	68(%eax), %eax
	testl	%eax, %eax
	jne	.L2335
	.loc 1 5602 0
	movl	constructor_unfilled_index@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	integer_zerop@PLT
	testl	%eax, %eax
	je	.L2341
	.loc 1 5603 0
	movl	$0, constructor_type@GOTOFF(%ebx)
	jmp	.L2335
.L2341:
	.loc 1 5604 0
	movl	constructor_type@GOTOFF(%ebx), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	jne	.L2343
	.loc 1 5606 0
	movl	constructor_depth@GOTOFF(%ebx), %eax
	cmpl	$2, %eax
	jle	.L2345
	.loc 1 5607 0
	leal	.LC170@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error_init@PLT
	jmp	.L2347
.L2345:
	.loc 1 5608 0
	movl	pedantic@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2347
	.loc 1 5609 0
	leal	.LC171@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	pedwarn_init@PLT
.L2347:
	.loc 1 5614 0
	movl	constructor_fields@GOTOFF(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2335
	.loc 1 5615 0
	movl	$0, constructor_type@GOTOFF(%ebx)
	jmp	.L2335
.L2343:
	.loc 1 5620 0
	leal	__FUNCTION__.20040@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$5620, 4(%esp)
	leal	.LC7@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L2335:
	.loc 1 5624 0
	movl	extra_warnings@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2351
	movl	constructor_type@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L2351
	movl	constructor_type@GOTOFF(%ebx), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	jne	.L2351
	movl	constructor_unfilled_fields@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L2351
	.loc 1 5630 0
	jmp	.L2356
.L2357:
	.loc 1 5633 0
	movl	constructor_unfilled_fields@GOTOFF(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, constructor_unfilled_fields@GOTOFF(%ebx)
.L2356:
	.loc 1 5630 0
	movl	constructor_unfilled_fields@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L2358
	movl	constructor_unfilled_fields@GOTOFF(%ebx), %eax
	movl	28(%eax), %eax
	testl	%eax, %eax
	je	.L2357
	movl	constructor_unfilled_fields@GOTOFF(%ebx), %eax
	movl	28(%eax), %eax
	movl	%eax, (%esp)
	call	integer_zerop@PLT
	testl	%eax, %eax
	jne	.L2357
.L2358:
	.loc 1 5637 0
	movl	constructor_unfilled_fields@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L2351
	movl	constructor_designated@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L2351
	.loc 1 5639 0
	movl	constructor_unfilled_fields@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	push_member_name
	.loc 1 5640 0
	leal	.LC172@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning_init
	.loc 1 5641 0
	movl	constructor_depth@GOTOFF(%ebx), %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	spelling_base@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, spelling@GOTOFF(%ebx)
.L2351:
	.loc 1 5646 0
	movl	$1, constructor_incremental@GOTOFF(%ebx)
	.loc 1 5647 0
	movl	$1, (%esp)
	call	output_pending_init_elements
	.loc 1 5650 0
	movl	-12(%ebp), %eax
	movl	48(%eax), %eax
	testl	%eax, %eax
	je	.L2363
	.loc 1 5653 0
	movl	-12(%ebp), %eax
	movl	48(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L2365
.L2363:
	.loc 1 5654 0
	movl	constructor_type@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L2365
	.loc 1 5656 0
	movl	constructor_type@GOTOFF(%ebx), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	je	.L2367
	movl	constructor_type@GOTOFF(%ebx), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	je	.L2367
	movl	constructor_type@GOTOFF(%ebx), %eax
	movzbl	8(%eax), %eax
	cmpb	$19, %al
	je	.L2367
	movl	constructor_type@GOTOFF(%ebx), %eax
	movzbl	8(%eax), %eax
	cmpb	$10, %al
	je	.L2367
	.loc 1 5663 0
	movl	constructor_elements@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L2372
	.loc 1 5665 0
	movl	constructor_erroneous@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L2374
	.loc 1 5666 0
	leal	.LC173@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error_init@PLT
.L2374:
	.loc 1 5667 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L2365
.L2372:
	.loc 1 5669 0
	movl	constructor_elements@GOTOFF(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2377
	.loc 1 5671 0
	leal	.LC174@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error_init@PLT
	.loc 1 5672 0
	movl	constructor_elements@GOTOFF(%ebx), %eax
	movl	20(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L2365
.L2377:
	.loc 1 5675 0
	movl	constructor_elements@GOTOFF(%ebx), %eax
	movl	20(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 5656 0
	jmp	.L2365
.L2367:
	.loc 1 5679 0
	movl	constructor_erroneous@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L2379
	.loc 1 5680 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L2365
.L2379:
	.loc 1 5683 0
	movl	constructor_elements@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	nreverse@PLT
	movl	constructor_type@GOTOFF(%ebx), %edx
	movl	%eax, 12(%esp)
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$47, (%esp)
	call	build@PLT
	movl	%eax, -8(%ebp)
	.loc 1 5685 0
	movl	constructor_constant@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L2381
	.loc 1 5686 0
	movl	-8(%ebp), %eax
	movzbl	9(%eax), %edx
	orl	$2, %edx
	movb	%dl, 9(%eax)
.L2381:
	.loc 1 5687 0
	movl	constructor_constant@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L2365
	movl	constructor_simple@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L2365
	.loc 1 5688 0
	movl	-8(%ebp), %eax
	movzbl	10(%eax), %edx
	orl	$4, %edx
	movb	%dl, 10(%eax)
.L2365:
	.loc 1 5692 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, constructor_type@GOTOFF(%ebx)
	.loc 1 5693 0
	movl	-12(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, constructor_fields@GOTOFF(%ebx)
	.loc 1 5694 0
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, constructor_index@GOTOFF(%ebx)
	.loc 1 5695 0
	movl	-12(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, constructor_max_index@GOTOFF(%ebx)
	.loc 1 5696 0
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, constructor_unfilled_index@GOTOFF(%ebx)
	.loc 1 5697 0
	movl	-12(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, constructor_unfilled_fields@GOTOFF(%ebx)
	.loc 1 5698 0
	movl	-12(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, constructor_bit_index@GOTOFF(%ebx)
	.loc 1 5699 0
	movl	-12(%ebp), %eax
	movl	32(%eax), %eax
	movl	%eax, constructor_elements@GOTOFF(%ebx)
	.loc 1 5700 0
	movl	-12(%ebp), %eax
	movzbl	56(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, constructor_constant@GOTOFF(%ebx)
	.loc 1 5701 0
	movl	-12(%ebp), %eax
	movzbl	57(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, constructor_simple@GOTOFF(%ebx)
	.loc 1 5702 0
	movl	-12(%ebp), %eax
	movzbl	59(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, constructor_erroneous@GOTOFF(%ebx)
	.loc 1 5703 0
	movl	-12(%ebp), %eax
	movzbl	61(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, constructor_incremental@GOTOFF(%ebx)
	.loc 1 5704 0
	movl	-12(%ebp), %eax
	movzbl	62(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, constructor_designated@GOTOFF(%ebx)
	.loc 1 5705 0
	movl	-12(%ebp), %eax
	movl	36(%eax), %eax
	movl	%eax, constructor_pending_elts@GOTOFF(%ebx)
	.loc 1 5706 0
	movl	-12(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, constructor_depth@GOTOFF(%ebx)
	.loc 1 5707 0
	movl	-12(%ebp), %eax
	movzbl	58(%eax), %eax
	testb	%al, %al
	jne	.L2385
	.loc 1 5708 0
	movl	-12(%ebp), %eax
	movl	52(%eax), %edx
	movl	constructor_range_stack@GOT(%ebx), %eax
	movl	%edx, (%eax)
.L2385:
	.loc 1 5709 0
	movl	constructor_depth@GOTOFF(%ebx), %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	spelling_base@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, spelling@GOTOFF(%ebx)
	.loc 1 5711 0
	movl	-12(%ebp), %eax
	movl	(%eax), %edx
	movl	constructor_stack@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 5712 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 5714 0
	cmpl	$0, -8(%ebp)
	jne	.L2387
	.loc 1 5716 0
	movl	constructor_stack@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L2389
	.loc 1 5717 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L2391
.L2389:
	.loc 1 5718 0
	movl	$0, -24(%ebp)
	jmp	.L2391
.L2387:
	.loc 1 5720 0
	movl	-8(%ebp), %eax
	movl	%eax, -24(%ebp)
.L2391:
	movl	-24(%ebp), %eax
	.loc 1 5721 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE71:
	.size	pop_init_level, .-pop_init_level
	.section	.rodata
	.type	__FUNCTION__.20223, @object
	.size	__FUNCTION__.20223, 15
__FUNCTION__.20223:
	.string	"set_designator"
	.align 4
.LC175:
	.string	"initialization designators may not nest"
	.align 4
.LC176:
	.string	"array index in non-array initializer"
	.align 4
.LC177:
	.string	"field name not in record or union initializer"
	.text
	.type	set_designator, @function
set_designator:
.LFB72:
	.loc 1 5729 0
	pushl	%ebp
.LCFI237:
	movl	%esp, %ebp
.LCFI238:
	pushl	%ebx
.LCFI239:
	subl	$36, %esp
.LCFI240:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 5735 0
	movl	constructor_type@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L2394
	.loc 1 5736 0
	movl	$1, -24(%ebp)
	jmp	.L2396
.L2394:
	.loc 1 5739 0
	movl	designator_errorneous@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L2397
	.loc 1 5740 0
	movl	$1, -24(%ebp)
	jmp	.L2396
.L2397:
	.loc 1 5742 0
	movl	designator_depth@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L2399
	.loc 1 5744 0
	movl	constructor_range_stack@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2403
	.loc 1 5745 0
	leal	__FUNCTION__.20223@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$5745, 4(%esp)
	leal	.LC7@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L2404:
	.loc 1 5750 0
	movl	$1, (%esp)
	call	pop_init_level@PLT
	movl	%eax, (%esp)
	call	process_init_element@PLT
.L2403:
	.loc 1 5749 0
	movl	constructor_stack@GOT(%ebx), %eax
	movl	(%eax), %eax
	movzbl	58(%eax), %eax
	testb	%al, %al
	jne	.L2404
	.loc 1 5751 0
	movl	$1, constructor_designated@GOTOFF(%ebx)
	.loc 1 5752 0
	movl	$0, -24(%ebp)
	jmp	.L2396
.L2399:
	.loc 1 5755 0
	movl	constructor_no_implicit@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2406
	.loc 1 5757 0
	leal	.LC175@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error_init@PLT
	.loc 1 5758 0
	movl	$1, -24(%ebp)
	jmp	.L2396
.L2406:
	.loc 1 5761 0
	movl	constructor_type@GOTOFF(%ebx), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	je	.L2408
	movl	constructor_type@GOTOFF(%ebx), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	jne	.L2410
.L2408:
	.loc 1 5764 0
	movl	constructor_fields@GOTOFF(%ebx), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 5765 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-12(%ebp), %eax
	je	.L2413
	.loc 1 5766 0
	movl	-12(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 5761 0
	jmp	.L2413
.L2410:
	.loc 1 5768 0
	movl	constructor_type@GOTOFF(%ebx), %eax
	movzbl	8(%eax), %eax
	cmpb	$19, %al
	jne	.L2414
	.loc 1 5770 0
	movl	constructor_type@GOTOFF(%ebx), %eax
	movl	4(%eax), %eax
	movl	76(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L2413
.L2414:
	.loc 1 5773 0
	leal	__FUNCTION__.20223@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$5773, 4(%esp)
	leal	.LC7@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L2413:
	.loc 1 5775 0
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -8(%ebp)
	.loc 1 5776 0
	cmpl	$0, 8(%ebp)
	je	.L2416
	cmpl	$19, -8(%ebp)
	je	.L2416
	.loc 1 5778 0
	leal	.LC176@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error_init@PLT
	.loc 1 5779 0
	movl	$1, -24(%ebp)
	jmp	.L2396
.L2416:
	.loc 1 5781 0
	cmpl	$0, 8(%ebp)
	jne	.L2419
	cmpl	$21, -8(%ebp)
	je	.L2419
	cmpl	$22, -8(%ebp)
	je	.L2419
	.loc 1 5783 0
	leal	.LC177@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error_init@PLT
	.loc 1 5784 0
	movl	$1, -24(%ebp)
	jmp	.L2396
.L2419:
	.loc 1 5787 0
	movl	$1, constructor_designated@GOTOFF(%ebx)
	.loc 1 5788 0
	movl	$2, (%esp)
	call	push_init_level@PLT
	.loc 1 5789 0
	movl	$0, -24(%ebp)
.L2396:
	movl	-24(%ebp), %eax
	.loc 1 5790 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE72:
	.size	set_designator, .-set_designator
	.type	push_range_stack, @function
push_range_stack:
.LFB73:
	.loc 1 5799 0
	pushl	%ebp
.LCFI241:
	movl	%esp, %ebp
.LCFI242:
	pushl	%ebx
.LCFI243:
	subl	$20, %esp
.LCFI244:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 5802 0
	movl	$28, (%esp)
	call	ggc_alloc@PLT
	movl	%eax, -8(%ebp)
	.loc 1 5804 0
	movl	constructor_range_stack@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 5805 0
	movl	-8(%ebp), %eax
	movl	$0, (%eax)
	.loc 1 5806 0
	movl	constructor_fields@GOTOFF(%ebx), %edx
	movl	-8(%ebp), %eax
	movl	%edx, 24(%eax)
	.loc 1 5807 0
	movl	constructor_index@GOTOFF(%ebx), %edx
	movl	-8(%ebp), %eax
	movl	%edx, 12(%eax)
	.loc 1 5808 0
	movl	constructor_index@GOTOFF(%ebx), %edx
	movl	-8(%ebp), %eax
	movl	%edx, 16(%eax)
	.loc 1 5809 0
	movl	constructor_stack@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%edx, 8(%eax)
	.loc 1 5810 0
	movl	-8(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, 20(%edx)
	.loc 1 5811 0
	movl	constructor_range_stack@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2425
	.loc 1 5812 0
	movl	constructor_range_stack@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%eax, (%edx)
.L2425:
	.loc 1 5813 0
	movl	constructor_range_stack@GOT(%ebx), %edx
	movl	-8(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 5814 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE73:
	.size	push_range_stack, .-push_range_stack
	.section	.rodata
	.align 4
.LC178:
	.string	"nonconstant array index in initializer"
	.align 4
.LC179:
	.string	"array index in initializer exceeds array bounds"
	.align 4
.LC180:
	.string	"empty index range in initializer"
	.align 4
.LC181:
	.string	"array index range in initializer exceeds array bounds"
	.text
.globl set_init_index
	.type	set_init_index, @function
set_init_index:
.LFB74:
	.loc 1 5823 0
	pushl	%ebp
.LCFI245:
	movl	%esp, %ebp
.LCFI246:
	pushl	%ebx
.LCFI247:
	subl	$20, %esp
.LCFI248:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 5824 0
	movl	$1, (%esp)
	call	set_designator
	testl	%eax, %eax
	jne	.L2466
	.loc 1 5827 0
	movl	$1, designator_errorneous@GOTOFF(%ebx)
	.loc 1 5829 0
	jmp	.L2431
.L2432:
	.loc 1 5834 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 8(%ebp)
.L2431:
	.loc 1 5829 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$117, %al
	je	.L2433
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$116, %al
	je	.L2433
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$118, %al
	jne	.L2436
.L2433:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	movl	%eax, %edx
	shrb	%dl
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	cmpb	%al, %dl
	je	.L2432
.L2436:
	.loc 1 5836 0
	cmpl	$0, 12(%ebp)
	je	.L2437
	.loc 1 5837 0
	jmp	.L2439
.L2440:
	.loc 1 5842 0
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 12(%ebp)
.L2439:
	.loc 1 5837 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$117, %al
	je	.L2441
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$116, %al
	je	.L2441
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$118, %al
	jne	.L2437
.L2441:
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
	je	.L2440
.L2437:
	.loc 1 5844 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	je	.L2444
	.loc 1 5845 0
	leal	.LC178@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error_init@PLT
	jmp	.L2466
.L2444:
	.loc 1 5846 0
	cmpl	$0, 12(%ebp)
	je	.L2446
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	je	.L2446
	.loc 1 5847 0
	leal	.LC178@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error_init@PLT
	.loc 1 5846 0
	jmp	.L2466
.L2446:
	.loc 1 5848 0
	movl	constructor_type@GOTOFF(%ebx), %eax
	movzbl	8(%eax), %eax
	cmpb	$19, %al
	je	.L2449
	.loc 1 5849 0
	leal	.LC176@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error_init@PLT
	jmp	.L2466
.L2449:
	.loc 1 5850 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_int_cst_sgn@PLT
	cmpl	$-1, %eax
	jne	.L2451
	.loc 1 5851 0
	leal	.LC179@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error_init@PLT
	jmp	.L2466
.L2451:
	.loc 1 5852 0
	movl	constructor_max_index@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L2453
	movl	constructor_max_index@GOTOFF(%ebx), %eax
	movl	8(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	tree_int_cst_lt@PLT
	testl	%eax, %eax
	je	.L2453
	.loc 1 5854 0
	leal	.LC179@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error_init@PLT
	.loc 1 5852 0
	jmp	.L2466
.L2453:
	.loc 1 5857 0
	movl	sizetype_tab@GOT(%ebx), %eax
	movl	12(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	convert@PLT
	movl	%eax, constructor_index@GOTOFF(%ebx)
	.loc 1 5859 0
	cmpl	$0, 12(%ebp)
	je	.L2456
	.loc 1 5861 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_int_cst_equal@PLT
	testl	%eax, %eax
	je	.L2458
	.loc 1 5862 0
	movl	$0, 12(%ebp)
	jmp	.L2456
.L2458:
	.loc 1 5863 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_int_cst_lt@PLT
	testl	%eax, %eax
	je	.L2460
	.loc 1 5865 0
	leal	.LC180@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error_init@PLT
	.loc 1 5866 0
	movl	$0, 12(%ebp)
	jmp	.L2456
.L2460:
	.loc 1 5870 0
	movl	sizetype_tab@GOT(%ebx), %eax
	movl	12(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	convert@PLT
	movl	%eax, 12(%ebp)
	.loc 1 5871 0
	movl	constructor_max_index@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L2456
	movl	constructor_max_index@GOTOFF(%ebx), %eax
	movl	12(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	tree_int_cst_lt@PLT
	testl	%eax, %eax
	je	.L2456
	.loc 1 5874 0
	leal	.LC181@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error_init@PLT
	.loc 1 5875 0
	movl	$0, 12(%ebp)
.L2456:
	.loc 1 5880 0
	movl	designator_depth@GOTOFF(%ebx), %eax
	addl	$1, %eax
	movl	%eax, designator_depth@GOTOFF(%ebx)
	.loc 1 5881 0
	movl	$0, designator_errorneous@GOTOFF(%ebx)
	.loc 1 5882 0
	movl	constructor_range_stack@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L2464
	cmpl	$0, 12(%ebp)
	je	.L2466
.L2464:
	.loc 1 5883 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	push_range_stack
.L2466:
	.loc 1 5885 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE74:
	.size	set_init_index, .-set_init_index
	.section	.rodata
	.align 4
.LC182:
	.string	"unknown field `%s' specified in initializer"
	.text
.globl set_init_label
	.type	set_init_label, @function
set_init_label:
.LFB75:
	.loc 1 5892 0
	pushl	%ebp
.LCFI249:
	movl	%esp, %ebp
.LCFI250:
	pushl	%ebx
.LCFI251:
	subl	$36, %esp
.LCFI252:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 5895 0
	movl	$0, (%esp)
	call	set_designator
	testl	%eax, %eax
	jne	.L2480
	.loc 1 5898 0
	movl	$1, designator_errorneous@GOTOFF(%ebx)
	.loc 1 5900 0
	movl	constructor_type@GOTOFF(%ebx), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	je	.L2470
	movl	constructor_type@GOTOFF(%ebx), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	je	.L2470
	.loc 1 5903 0
	leal	.LC177@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error_init@PLT
	.loc 1 5904 0
	jmp	.L2480
.L2470:
	.loc 1 5907 0
	movl	constructor_type@GOTOFF(%ebx), %eax
	movl	16(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L2473
.L2474:
	.loc 1 5910 0
	movl	-8(%ebp), %eax
	movl	52(%eax), %eax
	cmpl	8(%ebp), %eax
	je	.L2475
	.loc 1 5908 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
.L2473:
	.loc 1 5907 0
	cmpl	$0, -8(%ebp)
	jne	.L2474
.L2475:
	.loc 1 5914 0
	cmpl	$0, -8(%ebp)
	jne	.L2477
	.loc 1 5915 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC182@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	jmp	.L2480
.L2477:
	.loc 1 5919 0
	movl	-8(%ebp), %eax
	movl	%eax, constructor_fields@GOTOFF(%ebx)
	.loc 1 5920 0
	movl	designator_depth@GOTOFF(%ebx), %eax
	addl	$1, %eax
	movl	%eax, designator_depth@GOTOFF(%ebx)
	.loc 1 5921 0
	movl	$0, designator_errorneous@GOTOFF(%ebx)
	.loc 1 5922 0
	movl	constructor_range_stack@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2480
	.loc 1 5923 0
	movl	$0, (%esp)
	call	push_range_stack
.L2480:
	.loc 1 5925 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE75:
	.size	set_init_label, .-set_init_label
	.section	.rodata
	.align 4
.LC183:
	.string	"initialized field with side-effects overwritten"
	.text
	.type	add_pending_init, @function
add_pending_init:
.LFB76:
	.loc 1 5934 0
	pushl	%ebp
.LCFI253:
	movl	%esp, %ebp
.LCFI254:
	pushl	%ebx
.LCFI255:
	subl	$52, %esp
.LCFI256:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 5937 0
	leal	constructor_pending_elts@GOTOFF(%ebx), %eax
	movl	%eax, -28(%ebp)
	.loc 1 5938 0
	movl	$0, -32(%ebp)
	.loc 1 5940 0
	movl	constructor_type@GOTOFF(%ebx), %eax
	movzbl	8(%eax), %eax
	cmpb	$19, %al
	jne	.L2482
	.loc 1 5942 0
	jmp	.L2557
.L2485:
	.loc 1 5944 0
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 5945 0
	movl	-32(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_int_cst_lt@PLT
	testl	%eax, %eax
	je	.L2486
	.loc 1 5946 0
	movl	-32(%ebp), %eax
	movl	%eax, -28(%ebp)
	jmp	.L2484
.L2486:
	.loc 1 5947 0
	movl	-32(%ebp), %eax
	movl	16(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	tree_int_cst_lt@PLT
	testl	%eax, %eax
	je	.L2488
	.loc 1 5948 0
	movl	-32(%ebp), %eax
	addl	$4, %eax
	movl	%eax, -28(%ebp)
	jmp	.L2484
.L2488:
	.loc 1 5951 0
	movl	-32(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	9(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L2490
	.loc 1 5952 0
	leal	.LC183@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning_init
.L2490:
	.loc 1 5953 0
	movl	-32(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, 20(%edx)
	.loc 1 5954 0
	jmp	.L2556
.L2484:
.L2557:
	.loc 1 5942 0
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L2485
	jmp	.L2494
.L2482:
.LBB72:
	.loc 1 5962 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	bit_position@PLT
	movl	%eax, -20(%ebp)
	.loc 1 5963 0
	jmp	.L2558
.L2496:
	.loc 1 5965 0
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 5966 0
	movl	-32(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, (%esp)
	call	bit_position@PLT
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_int_cst_lt@PLT
	testl	%eax, %eax
	je	.L2497
	.loc 1 5967 0
	movl	-32(%ebp), %eax
	movl	%eax, -28(%ebp)
	jmp	.L2495
.L2497:
	.loc 1 5968 0
	movl	-32(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	8(%ebp), %eax
	je	.L2499
	.loc 1 5969 0
	movl	-32(%ebp), %eax
	addl	$4, %eax
	movl	%eax, -28(%ebp)
	jmp	.L2495
.L2499:
	.loc 1 5972 0
	movl	-32(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	9(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L2501
	.loc 1 5973 0
	leal	.LC183@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning_init
.L2501:
	.loc 1 5974 0
	movl	-32(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, 20(%edx)
	.loc 1 5975 0
	jmp	.L2556
.L2495:
.L2558:
	.loc 1 5963 0
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L2496
.L2494:
.LBE72:
	.loc 1 5980 0
	movl	$24, (%esp)
	call	ggc_alloc@PLT
	movl	%eax, -24(%ebp)
	.loc 1 5981 0
	movl	-24(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, 16(%edx)
	.loc 1 5982 0
	movl	-24(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, 20(%edx)
	.loc 1 5984 0
	movl	-28(%ebp), %edx
	movl	-24(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 5985 0
	movl	-24(%ebp), %edx
	movl	-32(%ebp), %eax
	movl	%eax, 8(%edx)
	.loc 1 5986 0
	movl	-24(%ebp), %eax
	movl	$0, (%eax)
	.loc 1 5987 0
	movl	-24(%ebp), %eax
	movl	$0, 4(%eax)
	.loc 1 5988 0
	movl	-24(%ebp), %eax
	movl	$0, 12(%eax)
	.loc 1 5990 0
	jmp	.L2503
.L2504:
.LBB73:
	.loc 1 5994 0
	movl	-32(%ebp), %eax
	movl	(%eax), %eax
	cmpl	-24(%ebp), %eax
	jne	.L2505
	.loc 1 5996 0
	movl	-32(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	jne	.L2507
	.loc 1 5997 0
	movl	-32(%ebp), %eax
	movl	$-1, 12(%eax)
	jmp	.L2509
.L2507:
	.loc 1 5998 0
	movl	-32(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	jns	.L2510
	.loc 1 6000 0
	movl	-24(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	jns	.L2512
	.loc 1 6003 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %edx
	movl	-32(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 6004 0
	movl	-32(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2514
	.loc 1 6005 0
	movl	-32(%ebp), %eax
	movl	(%eax), %edx
	movl	-32(%ebp), %eax
	movl	%eax, 8(%edx)
.L2514:
	.loc 1 6006 0
	movl	-24(%ebp), %edx
	movl	-32(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 6008 0
	movl	-32(%ebp), %eax
	movl	$0, 12(%eax)
	.loc 1 6009 0
	movl	-24(%ebp), %eax
	movl	$0, 12(%eax)
	.loc 1 6011 0
	movl	-32(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 6012 0
	movl	-32(%ebp), %edx
	movl	-24(%ebp), %eax
	movl	%eax, 8(%edx)
	.loc 1 6013 0
	movl	-24(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 8(%edx)
	.loc 1 6014 0
	cmpl	$0, -16(%ebp)
	je	.L2516
	.loc 1 6016 0
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	cmpl	-32(%ebp), %eax
	jne	.L2518
	.loc 1 6017 0
	movl	-16(%ebp), %edx
	movl	-24(%ebp), %eax
	movl	%eax, (%edx)
	jmp	.L2556
.L2518:
	.loc 1 6019 0
	movl	-16(%ebp), %edx
	movl	-24(%ebp), %eax
	movl	%eax, 4(%edx)
	jmp	.L2556
.L2516:
	.loc 1 6022 0
	movl	-24(%ebp), %eax
	movl	%eax, constructor_pending_elts@GOTOFF(%ebx)
	jmp	.L2556
.L2512:
.LBB74:
	.loc 1 6027 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 6029 0
	movl	-12(%ebp), %eax
	movl	(%eax), %edx
	movl	-24(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 6030 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L2523
	.loc 1 6031 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %edx
	movl	-24(%ebp), %eax
	movl	%eax, 8(%edx)
.L2523:
	.loc 1 6032 0
	movl	-12(%ebp), %edx
	movl	-24(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 6034 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %edx
	movl	-32(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 6035 0
	movl	-32(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2525
	.loc 1 6036 0
	movl	-32(%ebp), %eax
	movl	(%eax), %edx
	movl	-32(%ebp), %eax
	movl	%eax, 8(%edx)
.L2525:
	.loc 1 6037 0
	movl	-12(%ebp), %edx
	movl	-32(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 6039 0
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, %edx
	shrl	$31, %edx
	movl	-32(%ebp), %eax
	movl	%edx, 12(%eax)
	.loc 1 6040 0
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	setg	%al
	movzbl	%al, %eax
	movl	%eax, %edx
	negl	%edx
	movl	-24(%ebp), %eax
	movl	%edx, 12(%eax)
	.loc 1 6041 0
	movl	-12(%ebp), %eax
	movl	$0, 12(%eax)
	.loc 1 6043 0
	movl	-32(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 6044 0
	movl	-32(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 8(%edx)
	.loc 1 6045 0
	movl	-24(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 8(%edx)
	.loc 1 6046 0
	movl	-12(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 8(%edx)
	.loc 1 6047 0
	cmpl	$0, -16(%ebp)
	je	.L2527
	.loc 1 6049 0
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	cmpl	-32(%ebp), %eax
	jne	.L2529
	.loc 1 6050 0
	movl	-16(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%eax, (%edx)
	jmp	.L2556
.L2529:
	.loc 1 6052 0
	movl	-16(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 4(%edx)
	jmp	.L2556
.L2527:
	.loc 1 6055 0
	movl	-12(%ebp), %eax
	movl	%eax, constructor_pending_elts@GOTOFF(%ebx)
	.loc 1 6057 0
	jmp	.L2556
.L2510:
.LBE74:
	.loc 1 6062 0
	movl	-32(%ebp), %eax
	movl	$0, 12(%eax)
	.loc 1 6063 0
	jmp	.L2556
.L2505:
	.loc 1 6068 0
	movl	-32(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	jne	.L2532
	.loc 1 6070 0
	movl	-32(%ebp), %eax
	movl	12(%eax), %eax
	leal	1(%eax), %edx
	movl	-32(%ebp), %eax
	movl	%edx, 12(%eax)
	jmp	.L2509
.L2532:
	.loc 1 6071 0
	movl	-32(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	jle	.L2534
	.loc 1 6073 0
	movl	-24(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	jle	.L2536
	.loc 1 6076 0
	movl	-24(%ebp), %eax
	movl	(%eax), %edx
	movl	-32(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 6077 0
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L2538
	.loc 1 6078 0
	movl	-32(%ebp), %eax
	movl	4(%eax), %edx
	movl	-32(%ebp), %eax
	movl	%eax, 8(%edx)
.L2538:
	.loc 1 6079 0
	movl	-24(%ebp), %edx
	movl	-32(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 6081 0
	movl	-32(%ebp), %eax
	movl	$0, 12(%eax)
	.loc 1 6082 0
	movl	-24(%ebp), %eax
	movl	$0, 12(%eax)
	.loc 1 6084 0
	movl	-32(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 6085 0
	movl	-32(%ebp), %edx
	movl	-24(%ebp), %eax
	movl	%eax, 8(%edx)
	.loc 1 6086 0
	movl	-24(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 8(%edx)
	.loc 1 6087 0
	cmpl	$0, -16(%ebp)
	je	.L2540
	.loc 1 6089 0
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	cmpl	-32(%ebp), %eax
	jne	.L2542
	.loc 1 6090 0
	movl	-16(%ebp), %edx
	movl	-24(%ebp), %eax
	movl	%eax, (%edx)
	jmp	.L2556
.L2542:
	.loc 1 6092 0
	movl	-16(%ebp), %edx
	movl	-24(%ebp), %eax
	movl	%eax, 4(%edx)
	jmp	.L2556
.L2540:
	.loc 1 6095 0
	movl	-24(%ebp), %eax
	movl	%eax, constructor_pending_elts@GOTOFF(%ebx)
	jmp	.L2556
.L2536:
.LBB75:
	.loc 1 6100 0
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 6102 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %edx
	movl	-24(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 6103 0
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2547
	.loc 1 6104 0
	movl	-24(%ebp), %eax
	movl	(%eax), %edx
	movl	-24(%ebp), %eax
	movl	%eax, 8(%edx)
.L2547:
	.loc 1 6105 0
	movl	-8(%ebp), %edx
	movl	-24(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 6107 0
	movl	-8(%ebp), %eax
	movl	(%eax), %edx
	movl	-32(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 6108 0
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L2549
	.loc 1 6109 0
	movl	-32(%ebp), %eax
	movl	4(%eax), %edx
	movl	-32(%ebp), %eax
	movl	%eax, 8(%edx)
.L2549:
	.loc 1 6110 0
	movl	-8(%ebp), %edx
	movl	-32(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 6112 0
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, %edx
	shrl	$31, %edx
	movl	-24(%ebp), %eax
	movl	%edx, 12(%eax)
	.loc 1 6113 0
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	setg	%al
	movzbl	%al, %eax
	movl	%eax, %edx
	negl	%edx
	movl	-32(%ebp), %eax
	movl	%edx, 12(%eax)
	.loc 1 6114 0
	movl	-8(%ebp), %eax
	movl	$0, 12(%eax)
	.loc 1 6116 0
	movl	-32(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 6117 0
	movl	-32(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	%eax, 8(%edx)
	.loc 1 6118 0
	movl	-24(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	%eax, 8(%edx)
	.loc 1 6119 0
	movl	-8(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 8(%edx)
	.loc 1 6120 0
	cmpl	$0, -16(%ebp)
	je	.L2551
	.loc 1 6122 0
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	cmpl	-32(%ebp), %eax
	jne	.L2553
	.loc 1 6123 0
	movl	-16(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	%eax, (%edx)
	jmp	.L2556
.L2553:
	.loc 1 6125 0
	movl	-16(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	%eax, 4(%edx)
	jmp	.L2556
.L2551:
	.loc 1 6128 0
	movl	-8(%ebp), %eax
	movl	%eax, constructor_pending_elts@GOTOFF(%ebx)
	.loc 1 6130 0
	jmp	.L2556
.L2534:
.LBE75:
	.loc 1 6135 0
	movl	-32(%ebp), %eax
	movl	$0, 12(%eax)
	.loc 1 6136 0
	jmp	.L2556
.L2509:
	.loc 1 6140 0
	movl	-32(%ebp), %eax
	movl	%eax, -24(%ebp)
	.loc 1 6141 0
	movl	-32(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -32(%ebp)
.L2503:
.LBE73:
	.loc 1 5990 0
	cmpl	$0, -32(%ebp)
	jne	.L2504
.L2556:
	.loc 1 6143 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE76:
	.size	add_pending_init, .-add_pending_init
	.type	set_nonincremental_init, @function
set_nonincremental_init:
.LFB77:
	.loc 1 6149 0
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
	.loc 1 6152 0
	movl	constructor_type@GOTOFF(%ebx), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	je	.L2560
	movl	constructor_type@GOTOFF(%ebx), %eax
	movzbl	8(%eax), %eax
	cmpb	$19, %al
	jne	.L2577
.L2560:
	.loc 1 6156 0
	movl	constructor_elements@GOTOFF(%ebx), %eax
	movl	%eax, -8(%ebp)
	jmp	.L2563
.L2564:
	.loc 1 6157 0
	movl	-8(%ebp), %eax
	movl	20(%eax), %edx
	movl	-8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	add_pending_init
	.loc 1 6156 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
.L2563:
	cmpl	$0, -8(%ebp)
	jne	.L2564
	.loc 1 6158 0
	movl	$0, constructor_elements@GOTOFF(%ebx)
	.loc 1 6159 0
	movl	constructor_type@GOTOFF(%ebx), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	jne	.L2566
	.loc 1 6161 0
	movl	constructor_type@GOTOFF(%ebx), %eax
	movl	16(%eax), %eax
	movl	%eax, constructor_unfilled_fields@GOTOFF(%ebx)
	.loc 1 6163 0
	jmp	.L2568
.L2569:
	.loc 1 6166 0
	movl	constructor_unfilled_fields@GOTOFF(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, constructor_unfilled_fields@GOTOFF(%ebx)
.L2568:
	.loc 1 6163 0
	movl	constructor_unfilled_fields@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L2573
	movl	constructor_unfilled_fields@GOTOFF(%ebx), %eax
	movzbl	38(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L2573
	movl	constructor_unfilled_fields@GOTOFF(%ebx), %eax
	movl	52(%eax), %eax
	testl	%eax, %eax
	je	.L2569
	jmp	.L2573
.L2566:
	.loc 1 6169 0
	movl	constructor_type@GOTOFF(%ebx), %eax
	movzbl	8(%eax), %eax
	cmpb	$19, %al
	jne	.L2573
	.loc 1 6171 0
	movl	constructor_type@GOTOFF(%ebx), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L2575
	.loc 1 6172 0
	movl	constructor_type@GOTOFF(%ebx), %eax
	movl	16(%eax), %eax
	movl	64(%eax), %edx
	movl	sizetype_tab@GOT(%ebx), %eax
	movl	12(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, constructor_unfilled_index@GOTOFF(%ebx)
	jmp	.L2573
.L2575:
	.loc 1 6176 0
	movl	global_trees@GOT(%ebx), %eax
	movl	68(%eax), %eax
	movl	%eax, constructor_unfilled_index@GOTOFF(%ebx)
.L2573:
	.loc 1 6178 0
	movl	$0, constructor_incremental@GOTOFF(%ebx)
.L2577:
	.loc 1 6179 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE77:
	.size	set_nonincremental_init, .-set_nonincremental_init
	.section	.rodata
	.align 32
	.type	__FUNCTION__.20630, @object
	.size	__FUNCTION__.20630, 36
__FUNCTION__.20630:
	.string	"set_nonincremental_init_from_string"
	.text
	.type	set_nonincremental_init_from_string, @function
set_nonincremental_init_from_string:
.LFB78:
	.loc 1 6186 0
	pushl	%ebp
.LCFI261:
	movl	%esp, %ebp
.LCFI262:
	pushl	%edi
.LCFI263:
	pushl	%esi
.LCFI264:
	pushl	%ebx
.LCFI265:
	subl	$124, %esp
.LCFI266:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 6192 0
	movl	constructor_type@GOTOFF(%ebx), %eax
	movzbl	8(%eax), %eax
	cmpb	$19, %al
	je	.L2579
	.loc 1 6193 0
	leal	__FUNCTION__.20630@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$6193, 4(%esp)
	leal	.LC7@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L2579:
	.loc 1 6195 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movzwl	36(%eax), %edx
	andw	$511, %dx
	movl	integer_types@GOT(%ebx), %eax
	movl	(%eax), %eax
	movzwl	36(%eax), %eax
	andw	$511, %ax
	cmpw	%ax, %dx
	jne	.L2581
	.loc 1 6197 0
	movl	$1, -28(%ebp)
	jmp	.L2583
.L2581:
	.loc 1 6198 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movzwl	36(%eax), %edx
	andw	$511, %dx
	movl	c_global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movzwl	36(%eax), %eax
	andw	$511, %ax
	cmpw	%ax, %dx
	jne	.L2584
	.loc 1 6200 0
	movl	c_global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movzwl	36(%eax), %eax
	andw	$511, %ax
	movzwl	%ax, %edx
	movl	%edx, %eax
	sarl	$31, %eax
	shrl	$29, %eax
	addl	%edx, %eax
	sarl	$3, %eax
	movl	%eax, -28(%ebp)
	jmp	.L2583
.L2584:
	.loc 1 6202 0
	leal	__FUNCTION__.20630@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$6202, 4(%esp)
	leal	.LC7@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L2583:
	.loc 1 6204 0
	movl	integer_types@GOT(%ebx), %eax
	movl	(%eax), %eax
	movzwl	36(%eax), %eax
	andw	$511, %ax
	movzwl	%ax, %eax
	movl	%eax, -24(%ebp)
	.loc 1 6205 0
	movl	constructor_type@GOTOFF(%ebx), %eax
	movl	4(%eax), %eax
	movl	%eax, -44(%ebp)
	.loc 1 6206 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 6207 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	addl	-40(%ebp), %eax
	movl	%eax, -36(%ebp)
	.loc 1 6209 0
	movl	global_trees@GOT(%ebx), %eax
	movl	68(%eax), %eax
	movl	%eax, -48(%ebp)
	.loc 1 6210 0
	jmp	.L2586
.L2587:
	.loc 1 6213 0
	cmpl	$1, -28(%ebp)
	jne	.L2588
	.loc 1 6215 0
	movl	-40(%ebp), %eax
	movzbl	(%eax), %ecx
	movzbl	%cl, %eax
	movl	$0, %edx
	movl	%eax, -64(%ebp)
	movl	%edx, -60(%ebp)
	addl	$1, -40(%ebp)
	.loc 1 6216 0
	movl	$0, -72(%ebp)
	movl	$0, -68(%ebp)
	jmp	.L2590
.L2588:
	.loc 1 6220 0
	movl	$0, -72(%ebp)
	movl	$0, -68(%ebp)
	.loc 1 6221 0
	movl	$0, -64(%ebp)
	movl	$0, -60(%ebp)
	.loc 1 6222 0
	movl	$0, -32(%ebp)
	jmp	.L2591
.L2592:
	.loc 1 6224 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$65536, %eax
	testl	%eax, %eax
	je	.L2593
	.loc 1 6225 0
	movl	-32(%ebp), %edx
	movl	-28(%ebp), %eax
	subl	%edx, %eax
	subl	$1, %eax
	imull	-24(%ebp), %eax
	movl	%eax, -20(%ebp)
	jmp	.L2595
.L2593:
	.loc 1 6227 0
	movl	-32(%ebp), %eax
	imull	-24(%ebp), %eax
	movl	%eax, -20(%ebp)
.L2595:
	.loc 1 6228 0
	cmpl	$63, -20(%ebp)
	setle	%al
	movzbl	%al, %eax
	movl	%eax, -108(%ebp)
	cmpl	$63, -20(%ebp)
	setle	%al
	movzbl	%al, %eax
	movl	-68(%ebp,%eax,8), %edx
	movl	-72(%ebp,%eax,8), %eax
	movl	%eax, -104(%ebp)
	movl	%edx, -100(%ebp)
	movl	-40(%ebp), %eax
	movzbl	(%eax), %ecx
	movzbl	%cl, %eax
	movl	$0, %edx
	movl	-20(%ebp), %esi
	movl	%esi, %ecx
	sarl	$31, %ecx
	movl	%ecx, %edi
	shrl	$26, %edi
	leal	(%esi,%edi), %ecx
	andl	$63, %ecx
	subl	%edi, %ecx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L2614
	movl	%esi, %edi
	xorl	%esi, %esi
.L2614:
	movl	-104(%ebp), %eax
	orl	%esi, %eax
	movl	-100(%ebp), %edx
	orl	%edi, %edx
	movl	-108(%ebp), %ecx
	movl	%eax, -72(%ebp,%ecx,8)
	movl	%edx, -68(%ebp,%ecx,8)
	addl	$1, -40(%ebp)
	.loc 1 6222 0
	addl	$1, -32(%ebp)
.L2591:
	movl	-32(%ebp), %eax
	cmpl	-28(%ebp), %eax
	jl	.L2592
.L2590:
	.loc 1 6234 0
	movl	-44(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	jne	.L2596
	.loc 1 6236 0
	movl	-28(%ebp), %eax
	subl	$1, %eax
	imull	-24(%ebp), %eax
	addl	$8, %eax
	movl	%eax, -20(%ebp)
	.loc 1 6237 0
	cmpl	$63, -20(%ebp)
	jg	.L2598
	.loc 1 6239 0
	movl	-64(%ebp), %eax
	movl	-60(%ebp), %edx
	movl	-20(%ebp), %ecx
	subl	$1, %ecx
	shrdl	%edx, %eax
	sarl	%cl, %edx
	testb	$32, %cl
	je	.L2613
	movl	%edx, %eax
	sarl	$31, %edx
.L2613:
	andl	$1, %eax
	testb	%al, %al
	je	.L2596
	.loc 1 6241 0
	movl	-64(%ebp), %eax
	movl	-60(%ebp), %edx
	movl	%eax, -96(%ebp)
	movl	%edx, -92(%ebp)
	movl	-20(%ebp), %ecx
	movl	$-1, %eax
	movl	$-1, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L2612
	movl	%esi, %edi
	xorl	%esi, %esi
.L2612:
	movl	-96(%ebp), %eax
	orl	%esi, %eax
	movl	-92(%ebp), %edx
	orl	%edi, %edx
	movl	%eax, -64(%ebp)
	movl	%edx, -60(%ebp)
	.loc 1 6242 0
	movl	$-1, -72(%ebp)
	movl	$-1, -68(%ebp)
	jmp	.L2596
.L2598:
	.loc 1 6245 0
	cmpl	$64, -20(%ebp)
	jne	.L2602
	.loc 1 6247 0
	movl	-64(%ebp), %eax
	movl	-60(%ebp), %edx
	testl	%edx, %edx
	jns	.L2596
	.loc 1 6248 0
	movl	$-1, -72(%ebp)
	movl	$-1, -68(%ebp)
	jmp	.L2596
.L2602:
	.loc 1 6250 0
	movl	-72(%ebp), %eax
	movl	-68(%ebp), %edx
	movl	-20(%ebp), %ecx
	subl	$65, %ecx
	shrdl	%edx, %eax
	sarl	%cl, %edx
	testb	$32, %cl
	je	.L2611
	movl	%edx, %eax
	sarl	$31, %edx
.L2611:
	andl	$1, %eax
	testb	%al, %al
	je	.L2596
	.loc 1 6252 0
	movl	-72(%ebp), %edx
	movl	-68(%ebp), %ecx
	movl	%edx, -88(%ebp)
	movl	%ecx, -84(%ebp)
	movl	-20(%ebp), %ecx
	subl	$64, %ecx
	movl	$-1, %eax
	movl	$-1, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L2610
	movl	%esi, %edi
	xorl	%esi, %esi
.L2610:
	movl	-88(%ebp), %eax
	orl	%esi, %eax
	movl	-84(%ebp), %edx
	orl	%edi, %edx
	movl	%eax, -72(%ebp)
	movl	%edx, -68(%ebp)
.L2596:
	.loc 1 6256 0
	movl	-72(%ebp), %esi
	movl	-68(%ebp), %edi
	movl	-64(%ebp), %eax
	movl	-60(%ebp), %edx
	movl	%esi, 8(%esp)
	movl	%edi, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	build_int_2_wide@PLT
	movl	%eax, -52(%ebp)
	.loc 1 6257 0
	movl	-52(%ebp), %edx
	movl	-44(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 6258 0
	movl	-52(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	add_pending_init
	.loc 1 6211 0
	movl	global_trees@GOT(%ebx), %eax
	movl	72(%eax), %eax
	movl	%eax, 8(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$60, (%esp)
	call	size_binop@PLT
	movl	%eax, -48(%ebp)
.L2586:
	.loc 1 6210 0
	movl	-40(%ebp), %eax
	cmpl	-36(%ebp), %eax
	jae	.L2607
	movl	constructor_max_index@GOTOFF(%ebx), %eax
	movl	-48(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	tree_int_cst_lt@PLT
	testl	%eax, %eax
	je	.L2587
.L2607:
	.loc 1 6261 0
	movl	$0, constructor_incremental@GOTOFF(%ebx)
	.loc 1 6262 0
	addl	$124, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE78:
	.size	set_nonincremental_init_from_string, .-set_nonincremental_init_from_string
	.type	find_init_member, @function
find_init_member:
.LFB79:
	.loc 1 6270 0
	pushl	%ebp
.LCFI267:
	movl	%esp, %ebp
.LCFI268:
	pushl	%ebx
.LCFI269:
	subl	$36, %esp
.LCFI270:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 6273 0
	movl	constructor_type@GOTOFF(%ebx), %eax
	movzbl	8(%eax), %eax
	cmpb	$19, %al
	jne	.L2616
	.loc 1 6275 0
	movl	constructor_incremental@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L2618
	movl	constructor_unfilled_index@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_int_cst_lt@PLT
	testl	%eax, %eax
	je	.L2618
	.loc 1 6277 0
	call	set_nonincremental_init
.L2618:
	.loc 1 6279 0
	movl	constructor_pending_elts@GOTOFF(%ebx), %eax
	movl	%eax, -12(%ebp)
	.loc 1 6280 0
	jmp	.L2647
.L2622:
	.loc 1 6282 0
	movl	-12(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_int_cst_lt@PLT
	testl	%eax, %eax
	je	.L2623
	.loc 1 6283 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L2621
.L2623:
	.loc 1 6284 0
	movl	-12(%ebp), %eax
	movl	16(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	tree_int_cst_lt@PLT
	testl	%eax, %eax
	je	.L2625
	.loc 1 6285 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L2621
.L2625:
	.loc 1 6287 0
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L2627
.L2621:
.L2647:
	.loc 1 6280 0
	cmpl	$0, -12(%ebp)
	jne	.L2622
	jmp	.L2629
.L2616:
	.loc 1 6290 0
	movl	constructor_type@GOTOFF(%ebx), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	jne	.L2630
.LBB76:
	.loc 1 6292 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	bit_position@PLT
	movl	%eax, -8(%ebp)
	.loc 1 6294 0
	movl	constructor_incremental@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L2632
	movl	constructor_unfilled_fields@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L2634
	movl	constructor_unfilled_fields@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	bit_position@PLT
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_int_cst_lt@PLT
	testl	%eax, %eax
	je	.L2632
.L2634:
	.loc 1 6298 0
	call	set_nonincremental_init
.L2632:
	.loc 1 6300 0
	movl	constructor_pending_elts@GOTOFF(%ebx), %eax
	movl	%eax, -12(%ebp)
	.loc 1 6301 0
	jmp	.L2648
.L2637:
	.loc 1 6303 0
	movl	-12(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L2638
	.loc 1 6304 0
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L2627
.L2638:
	.loc 1 6305 0
	movl	-12(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, (%esp)
	call	bit_position@PLT
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_int_cst_lt@PLT
	testl	%eax, %eax
	je	.L2640
	.loc 1 6306 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L2636
.L2640:
	.loc 1 6308 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
.L2636:
.L2648:
	.loc 1 6301 0
	cmpl	$0, -12(%ebp)
	jne	.L2637
	jmp	.L2629
.L2630:
.LBE76:
	.loc 1 6311 0
	movl	constructor_type@GOTOFF(%ebx), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	jne	.L2629
	.loc 1 6313 0
	movl	constructor_elements@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L2629
	movl	constructor_elements@GOTOFF(%ebx), %eax
	movl	16(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L2629
	.loc 1 6315 0
	movl	constructor_elements@GOTOFF(%ebx), %eax
	movl	20(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L2627
.L2629:
	.loc 1 6317 0
	movl	$0, -24(%ebp)
.L2627:
	movl	-24(%ebp), %eax
	.loc 1 6318 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE79:
	.size	find_init_member, .-find_init_member
	.section	.rodata
.LC184:
	.string	"output_init_element"
	.text
	.type	output_init_element, @function
output_init_element:
.LFB80:
	.loc 1 6334 0
	pushl	%ebp
.LCFI271:
	movl	%esp, %ebp
.LCFI272:
	pushl	%ebx
.LCFI273:
	subl	$36, %esp
.LCFI274:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 6336 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC184@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	dump_parse_tree@PLT
	.loc 1 6338 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$24, %al
	je	.L2650
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$19, %al
	jne	.L2652
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$30, %al
	jne	.L2654
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$19, %al
	jne	.L2654
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$7, %al
	je	.L2652
.L2654:
	movl	12(%ebp), %eax
	movl	76(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	76(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	comptypes@PLT
	testl	%eax, %eax
	jne	.L2652
.L2650:
	.loc 1 6345 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	default_conversion@PLT
	movl	%eax, 8(%ebp)
.L2652:
	.loc 1 6347 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-82, %al
	jne	.L2657
	movl	require_constant_value@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L2657
	movl	flag_isoc99@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L2657
	cmpl	$0, 20(%ebp)
	je	.L2657
.LBB77:
	.loc 1 6353 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 6354 0
	movl	-16(%ebp), %eax
	movl	68(%eax), %eax
	movl	%eax, 8(%ebp)
.L2657:
.LBE77:
	.loc 1 6357 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L2662
	.loc 1 6358 0
	movl	$1, constructor_erroneous@GOTOFF(%ebx)
	jmp	.L2664
.L2662:
	.loc 1 6359 0
	movl	8(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	jne	.L2665
	.loc 1 6360 0
	movl	$0, constructor_constant@GOTOFF(%ebx)
	jmp	.L2664
.L2665:
	.loc 1 6361 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	initializer_constant_valid_p@PLT
	testl	%eax, %eax
	je	.L2667
	movl	constructor_type@GOTOFF(%ebx), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	je	.L2669
	movl	constructor_type@GOTOFF(%ebx), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	jne	.L2664
.L2669:
	movl	16(%ebp), %eax
	movzbl	38(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L2664
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	je	.L2664
.L2667:
	.loc 1 6366 0
	movl	$0, constructor_simple@GOTOFF(%ebx)
.L2664:
	.loc 1 6368 0
	movl	require_constant_value@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L2672
	movl	8(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	jne	.L2672
	.loc 1 6370 0
	leal	.LC158@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error_init@PLT
	.loc 1 6371 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%ebp)
	.loc 1 6368 0
	jmp	.L2675
.L2672:
	.loc 1 6373 0
	movl	require_constant_elements@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L2675
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	initializer_constant_valid_p@PLT
	testl	%eax, %eax
	jne	.L2675
	.loc 1 6375 0
	leal	.LC160@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	pedwarn@PLT
.L2675:
	.loc 1 6379 0
	cmpl	$0, 16(%ebp)
	je	.L2678
	movl	16(%ebp), %eax
	movl	4(%eax), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	je	.L2724
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L2678
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	integer_zerop@PLT
	testl	%eax, %eax
	je	.L2678
	movl	constructor_type@GOTOFF(%ebx), %eax
	movzbl	8(%eax), %eax
	cmpb	$19, %al
	je	.L2724
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2678
	.loc 1 6385 0
	jmp	.L2724
.L2678:
	.loc 1 6387 0
	movl	require_constant_value@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	digest_init
	movl	%eax, 8(%ebp)
	.loc 1 6388 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L2686
	.loc 1 6390 0
	movl	$1, constructor_erroneous@GOTOFF(%ebx)
	.loc 1 6391 0
	jmp	.L2724
.L2686:
	.loc 1 6396 0
	movl	constructor_type@GOTOFF(%ebx), %eax
	movzbl	8(%eax), %eax
	cmpb	$19, %al
	jne	.L2688
	movl	constructor_incremental@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L2690
	movl	constructor_unfilled_index@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_int_cst_equal@PLT
	testl	%eax, %eax
	jne	.L2688
.L2690:
	.loc 1 6400 0
	movl	constructor_incremental@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L2692
	movl	constructor_unfilled_index@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_int_cst_lt@PLT
	testl	%eax, %eax
	je	.L2692
	.loc 1 6402 0
	call	set_nonincremental_init
.L2692:
	.loc 1 6404 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	add_pending_init
	.loc 1 6405 0
	jmp	.L2724
.L2688:
	.loc 1 6407 0
	movl	constructor_type@GOTOFF(%ebx), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	jne	.L2695
	movl	constructor_incremental@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L2697
	movl	constructor_unfilled_fields@GOTOFF(%ebx), %eax
	cmpl	%eax, 16(%ebp)
	je	.L2695
.L2697:
	.loc 1 6414 0
	movl	constructor_incremental@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L2699
	.loc 1 6416 0
	movl	constructor_unfilled_fields@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L2701
	.loc 1 6417 0
	call	set_nonincremental_init
	jmp	.L2699
.L2701:
.LBB78:
	.loc 1 6422 0
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	bit_position@PLT
	movl	%eax, -12(%ebp)
	.loc 1 6423 0
	movl	constructor_unfilled_fields@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	bit_position@PLT
	movl	%eax, -8(%ebp)
	.loc 1 6425 0
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_int_cst_lt@PLT
	testl	%eax, %eax
	je	.L2699
	.loc 1 6426 0
	call	set_nonincremental_init
.L2699:
.LBE78:
	.loc 1 6430 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	add_pending_init
	.loc 1 6431 0
	jmp	.L2724
.L2695:
	.loc 1 6433 0
	movl	constructor_type@GOTOFF(%ebx), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	jne	.L2704
	movl	constructor_elements@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L2704
	.loc 1 6436 0
	movl	constructor_elements@GOTOFF(%ebx), %eax
	movl	20(%eax), %eax
	movzbl	9(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L2707
	.loc 1 6437 0
	leal	.LC183@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning_init
.L2707:
	.loc 1 6440 0
	movl	$0, constructor_elements@GOTOFF(%ebx)
.L2704:
	.loc 1 6446 0
	cmpl	$0, 16(%ebp)
	je	.L2709
	movl	16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	jne	.L2709
	.loc 1 6447 0
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_node@PLT
	movl	%eax, 16(%ebp)
.L2709:
	.loc 1 6448 0
	movl	constructor_elements@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_cons@PLT
	movl	%eax, constructor_elements@GOTOFF(%ebx)
	.loc 1 6452 0
	movl	constructor_type@GOTOFF(%ebx), %eax
	movzbl	8(%eax), %eax
	cmpb	$19, %al
	jne	.L2712
	.loc 1 6453 0
	movl	global_trees@GOT(%ebx), %eax
	movl	72(%eax), %eax
	movl	constructor_unfilled_index@GOTOFF(%ebx), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$60, (%esp)
	call	size_binop@PLT
	movl	%eax, constructor_unfilled_index@GOTOFF(%ebx)
	jmp	.L2714
.L2712:
	.loc 1 6456 0
	movl	constructor_type@GOTOFF(%ebx), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	jne	.L2715
	.loc 1 6458 0
	movl	constructor_unfilled_fields@GOTOFF(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, constructor_unfilled_fields@GOTOFF(%ebx)
	.loc 1 6462 0
	jmp	.L2717
.L2718:
	.loc 1 6465 0
	movl	constructor_unfilled_fields@GOTOFF(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, constructor_unfilled_fields@GOTOFF(%ebx)
.L2717:
	.loc 1 6462 0
	movl	constructor_unfilled_fields@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L2714
	movl	constructor_unfilled_fields@GOTOFF(%ebx), %eax
	movzbl	38(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L2714
	movl	constructor_unfilled_fields@GOTOFF(%ebx), %eax
	movl	52(%eax), %eax
	testl	%eax, %eax
	je	.L2718
	jmp	.L2714
.L2715:
	.loc 1 6468 0
	movl	constructor_type@GOTOFF(%ebx), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	jne	.L2714
	.loc 1 6469 0
	movl	$0, constructor_unfilled_fields@GOTOFF(%ebx)
.L2714:
	.loc 1 6472 0
	cmpl	$0, 20(%ebp)
	je	.L2724
	.loc 1 6473 0
	movl	$0, (%esp)
	call	output_pending_init_elements
.L2724:
	.loc 1 6474 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE80:
	.size	output_init_element, .-output_init_element
	.type	output_pending_init_elements, @function
output_pending_init_elements:
.LFB81:
	.loc 1 6490 0
	pushl	%ebp
.LCFI275:
	movl	%esp, %ebp
.LCFI276:
	pushl	%ebx
.LCFI277:
	subl	$36, %esp
.LCFI278:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 6491 0
	movl	constructor_pending_elts@GOTOFF(%ebx), %eax
	movl	%eax, -20(%ebp)
	jmp	.L2773
.L2726:
.L2773:
	.loc 1 6501 0
	movl	$0, -16(%ebp)
	.loc 1 6502 0
	jmp	.L2774
.L2728:
	.loc 1 6504 0
	movl	constructor_type@GOTOFF(%ebx), %eax
	movzbl	8(%eax), %eax
	cmpb	$19, %al
	jne	.L2729
	.loc 1 6506 0
	movl	constructor_unfilled_index@GOTOFF(%ebx), %edx
	movl	-20(%ebp), %eax
	movl	16(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	tree_int_cst_equal@PLT
	testl	%eax, %eax
	je	.L2731
	.loc 1 6508 0
	movl	constructor_unfilled_index@GOTOFF(%ebx), %ecx
	movl	constructor_type@GOTOFF(%ebx), %eax
	movl	4(%eax), %edx
	movl	-20(%ebp), %eax
	movl	20(%eax), %eax
	movl	$0, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	output_init_element
	jmp	.L2727
.L2731:
	.loc 1 6511 0
	movl	-20(%ebp), %eax
	movl	16(%eax), %eax
	movl	constructor_unfilled_index@GOTOFF(%ebx), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	tree_int_cst_lt@PLT
	testl	%eax, %eax
	je	.L2734
	.loc 1 6515 0
	movl	-20(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2736
	.loc 1 6516 0
	movl	-20(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
	jmp	.L2727
.L2736:
	.loc 1 6521 0
	movl	-20(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 6522 0
	jmp	.L2738
.L2734:
	.loc 1 6528 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L2741
	.loc 1 6529 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
	jmp	.L2727
.L2742:
	.loc 1 6535 0
	movl	-20(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -20(%ebp)
.L2741:
	.loc 1 6534 0
	movl	-20(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	je	.L2743
	movl	-20(%ebp), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %eax
	cmpl	-20(%ebp), %eax
	je	.L2742
.L2743:
	.loc 1 6536 0
	movl	-20(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 6537 0
	cmpl	$0, -20(%ebp)
	je	.L2727
	movl	-20(%ebp), %eax
	movl	16(%eax), %eax
	movl	constructor_unfilled_index@GOTOFF(%ebx), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	tree_int_cst_lt@PLT
	testl	%eax, %eax
	je	.L2727
	.loc 1 6540 0
	movl	-20(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 6541 0
	jmp	.L2738
.L2729:
	.loc 1 6546 0
	movl	constructor_type@GOTOFF(%ebx), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	je	.L2747
	movl	constructor_type@GOTOFF(%ebx), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	jne	.L2727
.L2747:
.LBB79:
	.loc 1 6552 0
	movl	constructor_unfilled_fields@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L2738
	.loc 1 6555 0
	movl	constructor_unfilled_fields@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	bit_position@PLT
	movl	%eax, -12(%ebp)
	.loc 1 6556 0
	movl	-20(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, (%esp)
	call	bit_position@PLT
	movl	%eax, -8(%ebp)
	.loc 1 6559 0
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_int_cst_equal@PLT
	testl	%eax, %eax
	je	.L2750
	.loc 1 6561 0
	movl	-20(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, constructor_unfilled_fields@GOTOFF(%ebx)
	.loc 1 6562 0
	movl	-20(%ebp), %eax
	movl	16(%eax), %ecx
	movl	-20(%ebp), %eax
	movl	16(%eax), %eax
	movl	4(%eax), %edx
	movl	-20(%ebp), %eax
	movl	20(%eax), %eax
	movl	$0, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	output_init_element
	jmp	.L2727
.L2750:
	.loc 1 6565 0
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_int_cst_lt@PLT
	testl	%eax, %eax
	je	.L2752
	.loc 1 6568 0
	movl	-20(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2754
	.loc 1 6569 0
	movl	-20(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
	jmp	.L2727
.L2754:
	.loc 1 6574 0
	movl	-20(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 6575 0
	jmp	.L2738
.L2752:
	.loc 1 6581 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L2758
	.loc 1 6582 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
	jmp	.L2727
.L2759:
	.loc 1 6588 0
	movl	-20(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -20(%ebp)
.L2758:
	.loc 1 6587 0
	movl	-20(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	je	.L2760
	movl	-20(%ebp), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %eax
	cmpl	-20(%ebp), %eax
	je	.L2759
.L2760:
	.loc 1 6589 0
	movl	-20(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 6590 0
	cmpl	$0, -20(%ebp)
	je	.L2727
	movl	-20(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, (%esp)
	call	bit_position@PLT
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_int_cst_lt@PLT
	testl	%eax, %eax
	je	.L2727
	.loc 1 6594 0
	movl	-20(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 6595 0
	jmp	.L2738
.L2727:
.L2774:
.LBE79:
	.loc 1 6502 0
	cmpl	$0, -20(%ebp)
	jne	.L2728
.L2738:
	.loc 1 6604 0
	cmpl	$0, 8(%ebp)
	je	.L2772
	cmpl	$0, -16(%ebp)
	jne	.L2766
	jmp	.L2772
.L2766:
	.loc 1 6609 0
	movl	constructor_type@GOTOFF(%ebx), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	je	.L2767
	movl	constructor_type@GOTOFF(%ebx), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	jne	.L2769
.L2767:
	.loc 1 6611 0
	movl	-16(%ebp), %eax
	movl	%eax, constructor_unfilled_fields@GOTOFF(%ebx)
	.loc 1 6609 0
	jmp	.L2726
.L2769:
	.loc 1 6612 0
	movl	constructor_type@GOTOFF(%ebx), %eax
	movzbl	8(%eax), %eax
	cmpb	$19, %al
	jne	.L2726
	.loc 1 6613 0
	movl	-16(%ebp), %eax
	movl	%eax, constructor_unfilled_index@GOTOFF(%ebx)
	.loc 1 6617 0
	jmp	.L2726
.L2772:
	.loc 1 6618 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE81:
	.size	output_pending_init_elements, .-output_pending_init_elements
	.section	.rodata
	.type	__FUNCTION__.21146, @object
	.size	__FUNCTION__.21146, 21
__FUNCTION__.21146:
	.string	"process_init_element"
	.align 4
.LC185:
	.string	"excess elements in char array initializer"
	.align 4
.LC186:
	.string	"excess elements in struct initializer"
	.align 4
.LC187:
	.string	"non-static initialization of a flexible array member"
	.align 4
.LC188:
	.string	"excess elements in union initializer"
	.align 4
.LC189:
	.string	"traditional C rejects initialization of unions"
	.align 4
.LC190:
	.string	"excess elements in array initializer"
	.align 4
.LC191:
	.string	"excess elements in vector initializer"
	.align 4
.LC192:
	.string	"excess elements in scalar initializer"
	.text
.globl process_init_element
	.type	process_init_element, @function
process_init_element:
.LFB82:
	.loc 1 6631 0
	pushl	%ebp
.LCFI279:
	movl	%esp, %ebp
.LCFI280:
	pushl	%esi
.LCFI281:
	pushl	%ebx
.LCFI282:
	subl	$80, %esp
.LCFI283:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 6632 0
	movl	8(%ebp), %eax
	movl	%eax, -56(%ebp)
	.loc 1 6633 0
	cmpl	$0, 8(%ebp)
	je	.L2776
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$30, %al
	jne	.L2776
	movl	$1, -60(%ebp)
	jmp	.L2779
.L2776:
	movl	$0, -60(%ebp)
.L2779:
	movl	-60(%ebp), %eax
	movl	%eax, -52(%ebp)
	.loc 1 6635 0
	movl	$0, designator_depth@GOTOFF(%ebx)
	.loc 1 6636 0
	movl	$0, designator_errorneous@GOTOFF(%ebx)
	.loc 1 6640 0
	cmpl	$0, -52(%ebp)
	je	.L2780
	movl	constructor_type@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L2780
	movl	constructor_type@GOTOFF(%ebx), %eax
	movzbl	8(%eax), %eax
	cmpb	$19, %al
	jne	.L2780
	movl	constructor_type@GOTOFF(%ebx), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$7, %al
	jne	.L2780
	movl	constructor_unfilled_index@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	integer_zerop@PLT
	testl	%eax, %eax
	je	.L2780
	.loc 1 6646 0
	movl	constructor_stack@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	48(%eax), %eax
	testl	%eax, %eax
	je	.L2786
	.loc 1 6647 0
	leal	.LC185@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error_init@PLT
.L2786:
	.loc 1 6648 0
	movl	constructor_stack@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 48(%edx)
	.loc 1 6649 0
	jmp	.L2940
.L2780:
	.loc 1 6652 0
	movl	constructor_stack@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	48(%eax), %eax
	testl	%eax, %eax
	je	.L2789
	.loc 1 6654 0
	leal	.LC186@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error_init@PLT
	.loc 1 6655 0
	jmp	.L2940
.L2789:
	.loc 1 6660 0
	movl	constructor_type@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L2940
	.loc 1 6665 0
	jmp	.L2941
.L2793:
	.loc 1 6667 0
	movl	constructor_type@GOTOFF(%ebx), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	je	.L2794
	movl	constructor_type@GOTOFF(%ebx), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	jne	.L2796
.L2794:
	movl	constructor_fields@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L2796
	.loc 1 6670 0
	movl	$1, (%esp)
	call	pop_init_level@PLT
	movl	%eax, (%esp)
	call	process_init_element@PLT
	.loc 1 6667 0
	jmp	.L2792
.L2796:
	.loc 1 6671 0
	movl	constructor_type@GOTOFF(%ebx), %eax
	movzbl	8(%eax), %eax
	cmpb	$19, %al
	jne	.L2798
	movl	constructor_max_index@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L2800
	movl	constructor_index@GOTOFF(%ebx), %eax
	movl	constructor_max_index@GOTOFF(%ebx), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	tree_int_cst_lt@PLT
	testl	%eax, %eax
	je	.L2798
.L2800:
	.loc 1 6675 0
	movl	$1, (%esp)
	call	pop_init_level@PLT
	movl	%eax, (%esp)
	call	process_init_element@PLT
.L2792:
.L2941:
	.loc 1 6665 0
	movl	constructor_stack@GOT(%ebx), %eax
	movl	(%eax), %eax
	movzbl	58(%eax), %eax
	testb	%al, %al
	jne	.L2793
.L2798:
	.loc 1 6681 0
	movl	constructor_range_stack@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2942
	.loc 1 6685 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-82, %al
	jne	.L2804
	movl	require_constant_value@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L2804
	movl	flag_isoc99@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2942
.L2804:
	.loc 1 6688 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	save_expr@PLT
	movl	%eax, 8(%ebp)
	jmp	.L2942
.L2802:
.L2942:
	.loc 1 6693 0
	movl	constructor_type@GOTOFF(%ebx), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	jne	.L2807
.LBB80:
	.loc 1 6698 0
	movl	constructor_fields@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L2809
	.loc 1 6700 0
	leal	.LC186@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	pedwarn_init@PLT
	.loc 1 6701 0
	jmp	.L2811
.L2809:
	.loc 1 6704 0
	movl	constructor_fields@GOTOFF(%ebx), %eax
	movl	4(%eax), %eax
	movl	%eax, -48(%ebp)
	.loc 1 6705 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-48(%ebp), %eax
	je	.L2812
	.loc 1 6706 0
	movl	-48(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, -48(%ebp)
.L2812:
	.loc 1 6707 0
	movl	-48(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -44(%ebp)
	.loc 1 6710 0
	cmpl	$19, -44(%ebp)
	jne	.L2814
	movl	require_constant_value@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L2814
	movl	-48(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	jne	.L2814
	movl	constructor_fields@GOTOFF(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L2814
	.loc 1 6715 0
	leal	.LC187@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error_init@PLT
	.loc 1 6716 0
	jmp	.L2811
.L2814:
	.loc 1 6720 0
	cmpl	$0, 8(%ebp)
	je	.L2819
	cmpl	$19, -44(%ebp)
	jne	.L2819
	movl	-48(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$7, %al
	jne	.L2819
	cmpl	$0, -52(%ebp)
	je	.L2819
	.loc 1 6724 0
	movl	-56(%ebp), %eax
	movl	%eax, 8(%ebp)
	.loc 1 6720 0
	jmp	.L2824
.L2819:
	.loc 1 6727 0
	cmpl	$0, 8(%ebp)
	je	.L2824
	movl	constructor_no_implicit@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L2824
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	8(%ebp), %eax
	je	.L2824
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	76(%eax), %eax
	cmpl	-48(%ebp), %eax
	je	.L2824
	cmpl	$21, -44(%ebp)
	je	.L2829
	cmpl	$19, -44(%ebp)
	je	.L2829
	cmpl	$22, -44(%ebp)
	jne	.L2824
.L2829:
	.loc 1 6733 0
	movl	$1, (%esp)
	call	push_init_level@PLT
	.loc 1 6734 0
	jmp	.L2802
.L2824:
	.loc 1 6737 0
	cmpl	$0, 8(%ebp)
	je	.L2833
	.loc 1 6739 0
	movl	constructor_fields@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	push_member_name
	.loc 1 6740 0
	movl	constructor_fields@GOTOFF(%ebx), %eax
	movl	$1, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	output_init_element
	.loc 1 6741 0
	movl	constructor_depth@GOTOFF(%ebx), %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	spelling_base@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, spelling@GOTOFF(%ebx)
	jmp	.L2835
.L2833:
	.loc 1 6748 0
	movl	constructor_fields@GOTOFF(%ebx), %eax
	movl	28(%eax), %eax
	testl	%eax, %eax
	je	.L2836
	.loc 1 6749 0
	movl	constructor_fields@GOTOFF(%ebx), %eax
	movl	28(%eax), %esi
	movl	constructor_fields@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	bit_position@PLT
	movl	%esi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$60, (%esp)
	call	size_binop@PLT
	movl	%eax, constructor_bit_index@GOTOFF(%ebx)
.L2836:
	.loc 1 6756 0
	movl	constructor_unfilled_fields@GOTOFF(%ebx), %edx
	movl	constructor_fields@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	jne	.L2835
	.loc 1 6758 0
	movl	constructor_fields@GOTOFF(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, constructor_unfilled_fields@GOTOFF(%ebx)
	.loc 1 6760 0
	jmp	.L2839
.L2840:
	.loc 1 6763 0
	movl	constructor_unfilled_fields@GOTOFF(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, constructor_unfilled_fields@GOTOFF(%ebx)
.L2839:
	.loc 1 6760 0
	movl	constructor_unfilled_fields@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L2835
	movl	constructor_unfilled_fields@GOTOFF(%ebx), %eax
	movzbl	38(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L2835
	movl	constructor_unfilled_fields@GOTOFF(%ebx), %eax
	movl	52(%eax), %eax
	testl	%eax, %eax
	je	.L2840
.L2835:
	.loc 1 6768 0
	movl	constructor_fields@GOTOFF(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, constructor_fields@GOTOFF(%ebx)
	.loc 1 6770 0
	jmp	.L2843
.L2844:
	.loc 1 6773 0
	movl	constructor_fields@GOTOFF(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, constructor_fields@GOTOFF(%ebx)
.L2843:
	.loc 1 6770 0
	movl	constructor_fields@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L2848
	movl	constructor_fields@GOTOFF(%ebx), %eax
	movzbl	38(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L2848
	movl	constructor_fields@GOTOFF(%ebx), %eax
	movl	52(%eax), %eax
	testl	%eax, %eax
	je	.L2844
	jmp	.L2848
.L2807:
.LBE80:
	.loc 1 6775 0
	movl	constructor_type@GOTOFF(%ebx), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	jne	.L2849
.LBB81:
	.loc 1 6780 0
	movl	constructor_fields@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L2851
	.loc 1 6782 0
	leal	.LC188@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	pedwarn_init@PLT
	.loc 1 6783 0
	jmp	.L2811
.L2851:
	.loc 1 6786 0
	movl	constructor_fields@GOTOFF(%ebx), %eax
	movl	4(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 6787 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-40(%ebp), %eax
	je	.L2853
	.loc 1 6788 0
	movl	-40(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, -40(%ebp)
.L2853:
	.loc 1 6789 0
	movl	-40(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -36(%ebp)
	.loc 1 6801 0
	movl	warn_traditional@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2855
	movl	in_system_header@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L2855
	movl	constructor_designated@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L2855
	cmpl	$0, 8(%ebp)
	je	.L2859
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	integer_zerop@PLT
	testl	%eax, %eax
	jne	.L2855
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	real_zerop@PLT
	testl	%eax, %eax
	jne	.L2855
.L2859:
	.loc 1 6803 0
	leal	.LC189@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
.L2855:
	.loc 1 6806 0
	cmpl	$0, 8(%ebp)
	je	.L2862
	cmpl	$19, -36(%ebp)
	jne	.L2862
	movl	-40(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$7, %al
	jne	.L2862
	cmpl	$0, -52(%ebp)
	je	.L2862
	.loc 1 6810 0
	movl	-56(%ebp), %eax
	movl	%eax, 8(%ebp)
	.loc 1 6806 0
	jmp	.L2867
.L2862:
	.loc 1 6813 0
	cmpl	$0, 8(%ebp)
	je	.L2867
	movl	constructor_no_implicit@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L2867
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	8(%ebp), %eax
	je	.L2867
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	76(%eax), %eax
	cmpl	-40(%ebp), %eax
	je	.L2867
	cmpl	$21, -36(%ebp)
	je	.L2872
	cmpl	$19, -36(%ebp)
	je	.L2872
	cmpl	$22, -36(%ebp)
	jne	.L2867
.L2872:
	.loc 1 6819 0
	movl	$1, (%esp)
	call	push_init_level@PLT
	.loc 1 6820 0
	jmp	.L2802
.L2867:
	.loc 1 6823 0
	cmpl	$0, 8(%ebp)
	je	.L2875
	.loc 1 6825 0
	movl	constructor_fields@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	push_member_name
	.loc 1 6826 0
	movl	constructor_fields@GOTOFF(%ebx), %eax
	movl	$1, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	output_init_element
	.loc 1 6827 0
	movl	constructor_depth@GOTOFF(%ebx), %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	spelling_base@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, spelling@GOTOFF(%ebx)
	jmp	.L2877
.L2875:
	.loc 1 6833 0
	movl	constructor_fields@GOTOFF(%ebx), %eax
	movl	28(%eax), %eax
	movl	%eax, constructor_bit_index@GOTOFF(%ebx)
	.loc 1 6834 0
	movl	constructor_fields@GOTOFF(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, constructor_unfilled_fields@GOTOFF(%ebx)
.L2877:
	.loc 1 6837 0
	movl	$0, constructor_fields@GOTOFF(%ebx)
	jmp	.L2848
.L2849:
.LBE81:
	.loc 1 6839 0
	movl	constructor_type@GOTOFF(%ebx), %eax
	movzbl	8(%eax), %eax
	cmpb	$19, %al
	jne	.L2878
.LBB82:
	.loc 1 6841 0
	movl	constructor_type@GOTOFF(%ebx), %eax
	movl	4(%eax), %eax
	movl	76(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 6842 0
	movl	-32(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -28(%ebp)
	.loc 1 6845 0
	cmpl	$0, 8(%ebp)
	je	.L2880
	cmpl	$19, -28(%ebp)
	jne	.L2880
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$7, %al
	jne	.L2880
	cmpl	$0, -52(%ebp)
	je	.L2880
	.loc 1 6849 0
	movl	-56(%ebp), %eax
	movl	%eax, 8(%ebp)
	.loc 1 6845 0
	jmp	.L2885
.L2880:
	.loc 1 6852 0
	cmpl	$0, 8(%ebp)
	je	.L2885
	movl	constructor_no_implicit@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L2885
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	8(%ebp), %eax
	je	.L2885
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	76(%eax), %eax
	cmpl	-32(%ebp), %eax
	je	.L2885
	cmpl	$21, -28(%ebp)
	je	.L2890
	cmpl	$19, -28(%ebp)
	je	.L2890
	cmpl	$22, -28(%ebp)
	jne	.L2885
.L2890:
	.loc 1 6858 0
	movl	$1, (%esp)
	call	push_init_level@PLT
	.loc 1 6859 0
	jmp	.L2802
.L2885:
	.loc 1 6862 0
	movl	constructor_max_index@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L2893
	movl	constructor_index@GOTOFF(%ebx), %eax
	movl	constructor_max_index@GOTOFF(%ebx), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	tree_int_cst_lt@PLT
	testl	%eax, %eax
	jne	.L2895
	movl	constructor_max_index@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	integer_all_onesp@PLT
	testl	%eax, %eax
	je	.L2893
.L2895:
	.loc 1 6866 0
	leal	.LC190@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	pedwarn_init@PLT
	.loc 1 6867 0
	jmp	.L2811
.L2893:
	.loc 1 6871 0
	cmpl	$0, 8(%ebp)
	je	.L2897
	.loc 1 6873 0
	movl	constructor_index@GOTOFF(%ebx), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	tree_low_cst@PLT
	movl	%eax, (%esp)
	call	push_array_bounds
	.loc 1 6874 0
	movl	constructor_index@GOTOFF(%ebx), %eax
	movl	$1, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	output_init_element
	.loc 1 6875 0
	movl	constructor_depth@GOTOFF(%ebx), %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	spelling_base@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, spelling@GOTOFF(%ebx)
.L2897:
	.loc 1 6878 0
	movl	global_trees@GOT(%ebx), %eax
	movl	72(%eax), %eax
	movl	constructor_index@GOTOFF(%ebx), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$60, (%esp)
	call	size_binop@PLT
	movl	%eax, constructor_index@GOTOFF(%ebx)
	.loc 1 6881 0
	cmpl	$0, 8(%ebp)
	jne	.L2848
	.loc 1 6885 0
	movl	constructor_index@GOTOFF(%ebx), %eax
	movl	%eax, constructor_unfilled_index@GOTOFF(%ebx)
	jmp	.L2848
.L2878:
.LBE82:
	.loc 1 6887 0
	movl	constructor_type@GOTOFF(%ebx), %eax
	movzbl	8(%eax), %eax
	cmpb	$10, %al
	jne	.L2901
.LBB83:
	.loc 1 6889 0
	movl	constructor_type@GOTOFF(%ebx), %eax
	movl	4(%eax), %eax
	movl	76(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 6893 0
	movl	constructor_index@GOTOFF(%ebx), %eax
	movl	constructor_max_index@GOTOFF(%ebx), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	tree_int_cst_lt@PLT
	testl	%eax, %eax
	je	.L2903
	.loc 1 6895 0
	leal	.LC191@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	pedwarn_init@PLT
	.loc 1 6896 0
	jmp	.L2811
.L2903:
	.loc 1 6900 0
	cmpl	$0, 8(%ebp)
	je	.L2905
	.loc 1 6901 0
	movl	constructor_index@GOTOFF(%ebx), %eax
	movl	$1, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	output_init_element
.L2905:
	.loc 1 6903 0
	movl	global_trees@GOT(%ebx), %eax
	movl	72(%eax), %eax
	movl	constructor_index@GOTOFF(%ebx), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$60, (%esp)
	call	size_binop@PLT
	movl	%eax, constructor_index@GOTOFF(%ebx)
	.loc 1 6906 0
	cmpl	$0, 8(%ebp)
	jne	.L2848
	.loc 1 6910 0
	movl	constructor_index@GOTOFF(%ebx), %eax
	movl	%eax, constructor_unfilled_index@GOTOFF(%ebx)
	jmp	.L2848
.L2901:
.LBE83:
	.loc 1 6915 0
	movl	constructor_fields@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L2909
	.loc 1 6917 0
	leal	.LC192@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	pedwarn_init@PLT
	.loc 1 6918 0
	jmp	.L2811
.L2909:
	.loc 1 6922 0
	cmpl	$0, 8(%ebp)
	je	.L2911
	.loc 1 6923 0
	movl	constructor_type@GOTOFF(%ebx), %eax
	movl	$1, 12(%esp)
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	output_init_element
.L2911:
	.loc 1 6924 0
	movl	$0, constructor_fields@GOTOFF(%ebx)
.L2848:
	.loc 1 6929 0
	movl	constructor_range_stack@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2811
.LBB84:
	.loc 1 6932 0
	movl	$0, -12(%ebp)
	.loc 1 6934 0
	movl	constructor_range_stack@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 6935 0
	movl	constructor_range_stack@GOT(%ebx), %eax
	movl	$0, (%eax)
	.loc 1 6936 0
	jmp	.L2915
.L2916:
	.loc 1 6938 0
	movl	constructor_stack@GOT(%ebx), %eax
	movl	(%eax), %eax
	movzbl	58(%eax), %eax
	testb	%al, %al
	jne	.L2917
	.loc 1 6939 0
	leal	__FUNCTION__.21146@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$6939, 4(%esp)
	leal	.LC7@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L2917:
	.loc 1 6940 0
	movl	$1, (%esp)
	call	pop_init_level@PLT
	movl	%eax, (%esp)
	call	process_init_element@PLT
.L2915:
	.loc 1 6936 0
	movl	-16(%ebp), %eax
	movl	8(%eax), %edx
	movl	constructor_stack@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jne	.L2916
	.loc 1 6942 0
	movl	-16(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 6943 0
	jmp	.L2920
.L2921:
	.loc 1 6946 0
	movl	constructor_stack@GOT(%ebx), %eax
	movl	(%eax), %eax
	movzbl	58(%eax), %eax
	testb	%al, %al
	jne	.L2922
	.loc 1 6947 0
	leal	__FUNCTION__.21146@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$6947, 4(%esp)
	leal	.LC7@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L2922:
	.loc 1 6948 0
	movl	$1, (%esp)
	call	pop_init_level@PLT
	movl	%eax, (%esp)
	call	process_init_element@PLT
	.loc 1 6944 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
.L2920:
	.loc 1 6943 0
	movl	-20(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L2921
	movl	-20(%ebp), %eax
	movl	20(%eax), %edx
	movl	-20(%ebp), %eax
	movl	16(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	tree_int_cst_equal@PLT
	testl	%eax, %eax
	jne	.L2921
	.loc 1 6951 0
	movl	global_trees@GOT(%ebx), %eax
	movl	72(%eax), %edx
	movl	-20(%ebp), %eax
	movl	16(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$60, (%esp)
	call	size_binop@PLT
	movl	%eax, %edx
	movl	-20(%ebp), %eax
	movl	%edx, 16(%eax)
	.loc 1 6952 0
	movl	-20(%ebp), %eax
	movl	20(%eax), %edx
	movl	-20(%ebp), %eax
	movl	16(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	tree_int_cst_equal@PLT
	testl	%eax, %eax
	je	.L2943
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	jne	.L2943
	.loc 1 6953 0
	movl	$1, -12(%ebp)
	jmp	.L2943
.L2926:
.L2943:
	.loc 1 6957 0
	movl	-20(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, constructor_index@GOTOFF(%ebx)
	.loc 1 6958 0
	movl	-20(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, constructor_fields@GOTOFF(%ebx)
	.loc 1 6959 0
	cmpl	$0, -12(%ebp)
	je	.L2929
	movl	-20(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L2929
	movl	-20(%ebp), %eax
	movl	16(%eax), %edx
	movl	-20(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	%eax, %edx
	jne	.L2929
	.loc 1 6961 0
	movl	$0, -12(%ebp)
	.loc 1 6962 0
	movl	-20(%ebp), %eax
	movl	$0, 4(%eax)
.L2929:
	.loc 1 6964 0
	movl	-20(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 6965 0
	cmpl	$0, -20(%ebp)
	je	.L2933
	.loc 1 6967 0
	movl	$2, (%esp)
	call	push_init_level@PLT
	.loc 1 6968 0
	movl	constructor_stack@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%edx, 8(%eax)
	.loc 1 6969 0
	movl	-20(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L2926
	movl	-20(%ebp), %eax
	movl	20(%eax), %edx
	movl	-20(%ebp), %eax
	movl	16(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	tree_int_cst_equal@PLT
	testl	%eax, %eax
	je	.L2926
	.loc 1 6970 0
	movl	-20(%ebp), %eax
	movl	12(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%edx, 16(%eax)
	.loc 1 6971 0
	jmp	.L2926
.L2933:
	.loc 1 6973 0
	cmpl	$0, -12(%ebp)
	jne	.L2802
	.loc 1 6974 0
	movl	constructor_range_stack@GOT(%ebx), %edx
	movl	-16(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 6975 0
	jmp	.L2802
.L2811:
.LBE84:
	.loc 1 6981 0
	movl	constructor_range_stack@GOT(%ebx), %eax
	movl	$0, (%eax)
.L2940:
	.loc 1 6982 0
	addl	$80, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE82:
	.size	process_init_element, .-process_init_element
	.section	.rodata
	.align 4
.LC193:
	.string	"argument of `asm' is not a constant string"
	.text
.globl simple_asm_stmt
	.type	simple_asm_stmt, @function
simple_asm_stmt:
.LFB83:
	.loc 1 6988 0
	pushl	%ebp
.LCFI284:
	movl	%esp, %ebp
.LCFI285:
	pushl	%ebx
.LCFI286:
	subl	$52, %esp
.LCFI287:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 6989 0
	jmp	.L2945
.L2946:
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 8(%ebp)
.L2945:
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$117, %al
	je	.L2947
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$116, %al
	je	.L2947
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$118, %al
	jne	.L2950
.L2947:
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	je	.L2950
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	movl	%eax, %edx
	shrb	%dl
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	cmpb	%al, %dl
	je	.L2946
.L2950:
	.loc 1 6991 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$123, %al
	jne	.L2952
	.loc 1 6992 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 8(%ebp)
.L2952:
	.loc 1 6994 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$30, %al
	jne	.L2954
.LBB85:
	.loc 1 6999 0
	movl	ridpointers@GOT(%ebx), %eax
	movl	(%eax), %eax
	addl	$36, %eax
	movl	(%eax), %edx
	movl	$0, 20(%esp)
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$169, (%esp)
	call	build_stmt@PLT
	movl	%eax, (%esp)
	call	add_stmt@PLT
	movl	%eax, -8(%ebp)
	.loc 1 7001 0
	movl	-8(%ebp), %edx
	movzbl	11(%edx), %eax
	orl	$1, %eax
	movb	%al, 11(%edx)
	.loc 1 7002 0
	movl	-8(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L2956
.L2954:
.LBE85:
	.loc 1 7005 0
	leal	.LC193@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 7006 0
	movl	$0, -24(%ebp)
.L2956:
	movl	-24(%ebp), %eax
	.loc 1 7007 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE83:
	.size	simple_asm_stmt, .-simple_asm_stmt
	.section	.rodata
	.align 4
.LC194:
	.string	"asm template is not a string constant"
.LC195:
	.string	"%s qualifier ignored on asm"
	.align 4
.LC196:
	.string	"invalid lvalue in asm statement"
	.text
.globl build_asm_stmt
	.type	build_asm_stmt, @function
build_asm_stmt:
.LFB84:
	.loc 1 7019 0
	pushl	%ebp
.LCFI288:
	movl	%esp, %ebp
.LCFI289:
	pushl	%ebx
.LCFI290:
	subl	$52, %esp
.LCFI291:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 7022 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$30, %al
	je	.L2959
	.loc 1 7024 0
	leal	.LC194@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 7025 0
	movl	$0, -24(%ebp)
	jmp	.L2961
.L2959:
	.loc 1 7028 0
	cmpl	$0, 8(%ebp)
	je	.L2962
	movl	ridpointers@GOT(%ebx), %eax
	movl	(%eax), %eax
	addl	$36, %eax
	movl	(%eax), %eax
	cmpl	8(%ebp), %eax
	je	.L2962
	.loc 1 7031 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC195@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
	.loc 1 7033 0
	movl	$0, 8(%ebp)
.L2962:
	.loc 1 7038 0
	movl	16(%ebp), %eax
	movl	%eax, -16(%ebp)
	jmp	.L2965
.L2966:
.LBB86:
	.loc 1 7040 0
	movl	-16(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 7042 0
	jmp	.L2967
.L2968:
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -12(%ebp)
.L2967:
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$117, %al
	je	.L2969
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$116, %al
	je	.L2969
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$118, %al
	jne	.L2972
.L2969:
	movl	-12(%ebp), %eax
	movl	20(%eax), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	je	.L2972
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	movl	%eax, %edx
	shrb	%dl
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	cmpb	%al, %dl
	je	.L2968
.L2972:
	.loc 1 7043 0
	movl	-16(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 20(%edx)
	.loc 1 7047 0
	jmp	.L2974
.L2975:
	.loc 1 7054 0
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -12(%ebp)
.L2974:
	.loc 1 7047 0
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$117, %al
	je	.L2975
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$116, %al
	je	.L2975
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$77, %al
	je	.L2975
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$73, %al
	je	.L2975
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$75, %al
	je	.L2975
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$76, %al
	je	.L2975
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$74, %al
	je	.L2975
	.loc 1 7056 0
	movl	-16(%ebp), %eax
	movl	20(%eax), %edx
	leal	.LC196@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	lvalue_or_else@PLT
.LBE86:
	.loc 1 7038 0
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
.L2965:
	cmpl	$0, -16(%ebp)
	jne	.L2966
	.loc 1 7060 0
	movl	16(%ebp), %eax
	movl	%eax, -16(%ebp)
	jmp	.L2984
.L2985:
.LBB87:
	.loc 1 7062 0
	movl	-16(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 7063 0
	jmp	.L2986
.L2987:
	movl	-8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -8(%ebp)
.L2986:
	movl	-8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$117, %al
	je	.L2988
	movl	-8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$116, %al
	je	.L2988
	movl	-8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$118, %al
	jne	.L2991
.L2988:
	movl	-8(%ebp), %eax
	movl	20(%eax), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	je	.L2991
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	movl	%eax, %edx
	shrb	%dl
	movl	-8(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	cmpb	%al, %dl
	je	.L2987
.L2991:
	.loc 1 7064 0
	movl	-16(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	%eax, 20(%edx)
.LBE87:
	.loc 1 7060 0
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
.L2984:
	cmpl	$0, -16(%ebp)
	jne	.L2985
	.loc 1 7070 0
	movl	20(%ebp), %eax
	movl	%eax, -16(%ebp)
	jmp	.L2994
.L2995:
	.loc 1 7071 0
	movl	-16(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	default_function_array_conversion
	movl	%eax, %edx
	movl	-16(%ebp), %eax
	movl	%edx, 20(%eax)
	.loc 1 7070 0
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
.L2994:
	cmpl	$0, -16(%ebp)
	jne	.L2995
	.loc 1 7073 0
	movl	24(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$169, (%esp)
	call	build_stmt@PLT
	movl	%eax, (%esp)
	call	add_stmt@PLT
	movl	%eax, -24(%ebp)
.L2961:
	movl	-24(%ebp), %eax
	.loc 1 7075 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE84:
	.size	build_asm_stmt, .-build_asm_stmt
	.section	.rodata
.LC197:
	.string	"modification by `asm'"
	.text
.globl c_expand_asm_operands
	.type	c_expand_asm_operands, @function
c_expand_asm_operands:
.LFB85:
	.loc 1 7089 0
	pushl	%ebp
.LCFI292:
	movl	%esp, %ebp
.LCFI293:
	pushl	%ebx
.LCFI294:
	subl	$84, %esp
.LCFI295:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	movl	%eax, -40(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -44(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, -48(%ebp)
	movl	20(%ebp), %eax
	movl	%eax, -52(%ebp)
	movl	28(%ebp), %eax
	movl	%eax, -56(%ebp)
	.loc 1 7089 0
	movl	%gs:20, %eax
	movl	%eax, -8(%ebp)
	xorl	%eax, %eax
	.loc 1 7090 0
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	list_length@PLT
	movl	%eax, -28(%ebp)
	.loc 1 7093 0
	movl	-28(%ebp), %eax
	sall	$2, %eax
	addl	$15, %eax
	addl	$15, %eax
	shrl	$4, %eax
	sall	$4, %eax
	subl	%eax, %esp
	leal	28(%esp), %eax
	movl	%eax, -60(%ebp)
	movl	-60(%ebp), %eax
	addl	$15, %eax
	shrl	$4, %eax
	sall	$4, %eax
	movl	%eax, -60(%ebp)
	movl	-60(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 7097 0
	movl	$0, -24(%ebp)
	movl	-44(%ebp), %eax
	movl	%eax, -16(%ebp)
	jmp	.L2999
.L3000:
	.loc 1 7099 0
	movl	-24(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	addl	-20(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%edx)
	.loc 1 7100 0
	movl	-24(%ebp), %eax
	sall	$2, %eax
	addl	-20(%ebp), %eax
	movl	(%eax), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	je	.L3015
	.loc 1 7097 0
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
	addl	$1, -24(%ebp)
.L2999:
	cmpl	$0, -16(%ebp)
	jne	.L3000
	.loc 1 7106 0
	movl	32(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_asm_operands@PLT
	.loc 1 7109 0
	movl	$0, -24(%ebp)
	movl	-44(%ebp), %eax
	movl	%eax, -16(%ebp)
	jmp	.L3004
.L3005:
	.loc 1 7111 0
	movl	-24(%ebp), %eax
	sall	$2, %eax
	addl	-20(%ebp), %eax
	movl	(%eax), %edx
	movl	-16(%ebp), %eax
	movl	20(%eax), %eax
	cmpl	%eax, %edx
	je	.L3006
	.loc 1 7113 0
	movl	-16(%ebp), %eax
	movl	20(%eax), %edx
	movl	-24(%ebp), %eax
	sall	$2, %eax
	addl	-20(%ebp), %eax
	movl	(%eax), %eax
	movl	%edx, 8(%esp)
	movl	$117, 4(%esp)
	movl	%eax, (%esp)
	call	build_modify_expr@PLT
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	expand_expr@PLT
	.loc 1 7115 0
	call	free_temp_slots@PLT
	.loc 1 7119 0
	movl	-24(%ebp), %eax
	sall	$2, %eax
	addl	-20(%ebp), %eax
	movl	(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%edx, 20(%eax)
	jmp	.L3008
.L3006:
.LBB88:
	.loc 1 7125 0
	movl	-24(%ebp), %eax
	sall	$2, %eax
	addl	-20(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 7126 0
	movl	-24(%ebp), %eax
	sall	$2, %eax
	addl	-20(%ebp), %eax
	movl	(%eax), %eax
	movzbl	9(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	jne	.L3009
	movl	-12(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	jne	.L3009
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	je	.L3012
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	jne	.L3008
.L3012:
	movl	-12(%ebp), %eax
	movzbl	11(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L3008
.L3009:
	.loc 1 7131 0
	movl	-24(%ebp), %eax
	sall	$2, %eax
	addl	-20(%ebp), %eax
	movl	(%eax), %edx
	leal	.LC197@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	readonly_warning@PLT
.L3008:
.LBE88:
	.loc 1 7109 0
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
	addl	$1, -24(%ebp)
.L3004:
	cmpl	$0, -16(%ebp)
	jne	.L3005
	.loc 1 7136 0
	call	emit_queue@PLT
.L3015:
	.loc 1 7137 0
	movl	-8(%ebp), %eax
	xorl	%gs:20, %eax
	je	.L3016
	call	__stack_chk_fail_local
.L3016:
	movl	-4(%ebp), %ebx
	leave
	ret
.LFE85:
	.size	c_expand_asm_operands, .-c_expand_asm_operands
	.section	.rodata
	.align 4
.LC198:
	.string	"function declared `noreturn' has a `return' statement"
	.align 4
.LC199:
	.string	"`return' with no value, in function returning non-void"
	.align 4
.LC200:
	.string	"`return' with a value, in function returning void"
.LC201:
	.string	"return"
	.align 4
.LC202:
	.string	"function returns address of local variable"
	.text
.globl c_expand_return
	.type	c_expand_return, @function
c_expand_return:
.LFB86:
	.loc 1 7146 0
	pushl	%ebp
.LCFI296:
	movl	%esp, %ebp
.LCFI297:
	pushl	%ebx
.LCFI298:
	subl	$68, %esp
.LCFI299:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 7147 0
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 7149 0
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	movzbl	9(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L3018
	.loc 1 7150 0
	leal	.LC198@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
.L3018:
	.loc 1 7152 0
	cmpl	$0, 8(%ebp)
	jne	.L3020
	.loc 1 7154 0
	movl	current_function_returns_null@GOT(%ebx), %eax
	movl	$1, (%eax)
	.loc 1 7155 0
	movl	warn_return_type@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L3022
	movl	flag_isoc99@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L3027
.L3022:
	cmpl	$0, -24(%ebp)
	je	.L3027
	movl	-24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$6, %al
	je	.L3027
	.loc 1 7157 0
	leal	.LC199@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	pedwarn_c99@PLT
	jmp	.L3027
.L3020:
	.loc 1 7159 0
	cmpl	$0, -24(%ebp)
	je	.L3028
	movl	-24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$6, %al
	jne	.L3030
.L3028:
	.loc 1 7161 0
	movl	current_function_returns_null@GOT(%ebx), %eax
	movl	$1, (%eax)
	.loc 1 7162 0
	movl	pedantic@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L3031
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$6, %al
	je	.L3027
.L3031:
	.loc 1 7163 0
	leal	.LC200@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	pedwarn@PLT
	.loc 1 7159 0
	jmp	.L3027
.L3030:
.LBB89:
	.loc 1 7168 0
	movl	$0, 20(%esp)
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	leal	.LC201@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	convert_for_assignment
	movl	%eax, -20(%ebp)
	.loc 1 7169 0
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	64(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 7172 0
	movl	current_function_returns_value@GOT(%ebx), %eax
	movl	$1, (%eax)
	.loc 1 7173 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-20(%ebp), %eax
	jne	.L3034
	.loc 1 7174 0
	movl	$0, -44(%ebp)
	jmp	.L3036
.L3034:
	.loc 1 7176 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	convert@PLT
	movl	%eax, -20(%ebp)
	movl	-20(%ebp), %eax
	movl	%eax, -12(%ebp)
	jmp	.L3061
.L3037:
.L3061:
	.loc 1 7182 0
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -40(%ebp)
	cmpl	$118, -40(%ebp)
	ja	.L3042
	cmpl	$116, -40(%ebp)
	jae	.L3039
	cmpl	$60, -40(%ebp)
	je	.L3039
	cmpl	$61, -40(%ebp)
	je	.L3040
	jmp	.L3038
.L3042:
	cmpl	$123, -40(%ebp)
	je	.L3041
	jmp	.L3038
.L3039:
	.loc 1 7186 0
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 7187 0
	jmp	.L3037
.L3040:
.LBB90:
	.loc 1 7194 0
	movl	-12(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 7196 0
	jmp	.L3044
.L3045:
	.loc 1 7200 0
	movl	-8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -8(%ebp)
.L3044:
	.loc 1 7196 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	je	.L3046
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$16, %al
	je	.L3046
	movl	-8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$117, %al
	je	.L3045
	movl	-8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$118, %al
	je	.L3045
	movl	-8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$116, %al
	je	.L3045
.L3046:
	.loc 1 7202 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	je	.L3038
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$16, %al
	je	.L3038
	.loc 1 7205 0
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 7206 0
	jmp	.L3037
.L3041:
.LBE90:
	.loc 1 7210 0
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 7212 0
	jmp	.L3053
.L3054:
	.loc 1 7213 0
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -12(%ebp)
.L3053:
	.loc 1 7212 0
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$114, %al
	je	.L3054
	.loc 1 7215 0
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$35, %al
	jne	.L3038
	movl	-12(%ebp), %eax
	movzbl	33(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L3038
	movl	-12(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L3038
	movl	-12(%ebp), %eax
	movl	56(%eax), %edx
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jne	.L3038
	.loc 1 7219 0
	leal	.LC202@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
.L3038:
	.loc 1 7229 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$49, (%esp)
	call	build@PLT
	movl	%eax, 8(%ebp)
.L3027:
.LBE89:
	.loc 1 7232 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_return_stmt@PLT
	movl	%eax, (%esp)
	call	add_stmt@PLT
	movl	%eax, -44(%ebp)
.L3036:
	movl	-44(%ebp), %eax
	.loc 1 7233 0
	addl	$68, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE86:
	.size	c_expand_return, .-c_expand_return
	.section	.rodata
	.align 4
.LC203:
	.string	"switch quantity not an integer"
	.align 4
.LC204:
	.string	"`long' switch expression not converted to `int' in ISO C"
	.text
.globl c_start_case
	.type	c_start_case, @function
c_start_case:
.LFB87:
	.loc 1 7262 0
	pushl	%ebp
.LCFI300:
	movl	%esp, %ebp
.LCFI301:
	pushl	%ebx
.LCFI302:
	subl	$36, %esp
.LCFI303:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 7264 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 7267 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	8(%ebp), %eax
	je	.L3063
	.loc 1 7269 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -20(%ebp)
	.loc 1 7270 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 7272 0
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$7, %al
	je	.L3065
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$11, %al
	je	.L3065
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$12, %al
	je	.L3065
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$13, %al
	je	.L3065
	cmpl	$0, -20(%ebp)
	je	.L3065
	.loc 1 7275 0
	leal	.LC203@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 7276 0
	movl	global_trees@GOT(%ebx), %eax
	movl	44(%eax), %eax
	movl	%eax, 8(%ebp)
	.loc 1 7272 0
	jmp	.L3063
.L3065:
	.loc 1 7280 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	76(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 7282 0
	movl	warn_traditional@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L3071
	movl	in_system_header@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L3071
	movl	integer_types@GOT(%ebx), %eax
	movl	28(%eax), %eax
	cmpl	-16(%ebp), %eax
	je	.L3074
	movl	integer_types@GOT(%ebx), %eax
	movl	32(%eax), %eax
	cmpl	-16(%ebp), %eax
	jne	.L3071
.L3074:
	.loc 1 7285 0
	leal	.LC204@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
.L3071:
	.loc 1 7287 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	default_conversion@PLT
	movl	%eax, 8(%ebp)
	.loc 1 7288 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
.L3063:
	.loc 1 7293 0
	movl	$12, (%esp)
	call	xmalloc@PLT
	movl	%eax, -8(%ebp)
	.loc 1 7294 0
	movl	-12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$0, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$166, (%esp)
	call	build_stmt@PLT
	movl	%eax, %edx
	movl	-8(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 7295 0
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	case_compare@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	splay_tree_new@PLT
	movl	%eax, %edx
	movl	-8(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 7296 0
	movl	switch_stack@GOTOFF(%ebx), %edx
	movl	-8(%ebp), %eax
	movl	%edx, 8(%eax)
	.loc 1 7297 0
	movl	-8(%ebp), %eax
	movl	%eax, switch_stack@GOTOFF(%ebx)
	.loc 1 7299 0
	movl	switch_stack@GOTOFF(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	add_stmt@PLT
	.loc 1 7300 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE87:
	.size	c_start_case, .-c_start_case
	.section	.rodata
	.align 4
.LC205:
	.string	"case label not within a switch statement"
	.align 4
.LC206:
	.string	"`default' label not within a switch statement"
	.text
.globl do_case
	.type	do_case, @function
do_case:
.LFB88:
	.loc 1 7308 0
	pushl	%ebp
.LCFI304:
	movl	%esp, %ebp
.LCFI305:
	pushl	%ebx
.LCFI306:
	subl	$36, %esp
.LCFI307:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 7309 0
	movl	$0, -8(%ebp)
	.loc 1 7311 0
	movl	switch_stack@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L3078
	.loc 1 7313 0
	movl	switch_stack@GOTOFF(%ebx), %eax
	movl	(%eax), %eax
	movl	20(%eax), %edx
	movl	switch_stack@GOTOFF(%ebx), %eax
	movl	4(%eax), %ecx
	movl	12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	c_add_case_label@PLT
	movl	%eax, -8(%ebp)
	.loc 1 7316 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-8(%ebp), %eax
	jne	.L3082
	.loc 1 7317 0
	movl	$0, -8(%ebp)
	jmp	.L3082
.L3078:
	.loc 1 7319 0
	cmpl	$0, 8(%ebp)
	je	.L3083
	.loc 1 7320 0
	leal	.LC205@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	jmp	.L3082
.L3083:
	.loc 1 7322 0
	leal	.LC206@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L3082:
	.loc 1 7324 0
	movl	-8(%ebp), %eax
	.loc 1 7325 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE88:
	.size	do_case, .-do_case
.globl c_finish_case
	.type	c_finish_case, @function
c_finish_case:
.LFB89:
	.loc 1 7331 0
	pushl	%ebp
.LCFI308:
	movl	%esp, %ebp
.LCFI309:
	pushl	%ebx
.LCFI310:
	subl	$20, %esp
.LCFI311:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 7332 0
	movl	switch_stack@GOTOFF(%ebx), %eax
	movl	%eax, -8(%ebp)
	.loc 1 7334 0
	movl	-8(%ebp), %eax
	movl	(%eax), %edx
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, 24(%edx)
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	$0, (%eax)
	call	current_stmt_tree@PLT
	movl	%eax, %edx
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%edx)
	.loc 1 7337 0
	movl	switch_stack@GOTOFF(%ebx), %eax
	movl	8(%eax), %eax
	movl	%eax, switch_stack@GOTOFF(%ebx)
	.loc 1 7338 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	splay_tree_delete@PLT
	.loc 1 7339 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 7340 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE89:
	.size	c_finish_case, .-c_finish_case
	.local	missing_braces_mentioned
	.comm	missing_braces_mentioned,4,4
	.local	undeclared_variable_notice
	.comm	undeclared_variable_notice,4,4
	.local	spelling
	.comm	spelling,4,4
	.local	spelling_base
	.comm	spelling_base,4,4
	.local	spelling_size
	.comm	spelling_size,4,4
	.local	constructor_type
	.comm	constructor_type,4,4
	.local	constructor_fields
	.comm	constructor_fields,4,4
	.local	constructor_index
	.comm	constructor_index,4,4
	.local	constructor_max_index
	.comm	constructor_max_index,4,4
	.local	constructor_unfilled_fields
	.comm	constructor_unfilled_fields,4,4
	.local	constructor_unfilled_index
	.comm	constructor_unfilled_index,4,4
	.local	constructor_bit_index
	.comm	constructor_bit_index,4,4
	.local	constructor_elements
	.comm	constructor_elements,4,4
	.local	constructor_incremental
	.comm	constructor_incremental,4,4
	.local	constructor_constant
	.comm	constructor_constant,4,4
	.local	constructor_simple
	.comm	constructor_simple,4,4
	.local	constructor_erroneous
	.comm	constructor_erroneous,4,4
	.local	constructor_subconstants_deferred
	.comm	constructor_subconstants_deferred,4,4
	.local	constructor_pending_elts
	.comm	constructor_pending_elts,4,4
	.local	constructor_depth
	.comm	constructor_depth,4,4
	.local	require_constant_value
	.comm	require_constant_value,4,4
	.local	require_constant_elements
	.comm	require_constant_elements,4,4
	.local	constructor_decl
	.comm	constructor_decl,4,4
	.local	constructor_asmspec
	.comm	constructor_asmspec,4,4
	.local	constructor_top_level
	.comm	constructor_top_level,4,4
	.local	constructor_designated
	.comm	constructor_designated,4,4
	.local	designator_depth
	.comm	designator_depth,4,4
	.local	designator_errorneous
	.comm	designator_errorneous,4,4
	.local	switch_stack
	.comm	switch_stack,4,4
	.comm	constructor_stack,4,4
	.comm	constructor_range_stack,4,4
	.comm	initializer_stack,4,4
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
	.long	.LCFI27-.LCFI25
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
	.long	.LCFI28-.LFB22
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI29-.LCFI28
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI31-.LCFI29
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
	.long	.LCFI32-.LFB23
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI33-.LCFI32
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI35-.LCFI33
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
	.long	.LCFI36-.LFB24
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI37-.LCFI36
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI39-.LCFI37
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
	.long	.LCFI40-.LFB25
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI41-.LCFI40
	.byte	0xd
	.uleb128 0x5
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
	.long	.LCFI62-.LCFI60
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
	.long	.LCFI63-.LFB31
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI64-.LCFI63
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI66-.LCFI64
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
	.long	.LCFI67-.LFB32
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI68-.LCFI67
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI70-.LCFI68
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
	.long	.LCFI71-.LFB33
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI72-.LCFI71
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI74-.LCFI72
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
	.long	.LCFI75-.LFB34
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
.LEFDE38:
.LSFDE40:
	.long	.LEFDE40-.LASFDE40
.LASFDE40:
	.long	.Lframe0
	.long	.LFB35
	.long	.LFE35-.LFB35
	.byte	0x4
	.long	.LCFI79-.LFB35
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI80-.LCFI79
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI82-.LCFI80
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
	.long	.LCFI83-.LFB36
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI84-.LCFI83
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI86-.LCFI84
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
	.long	.LCFI87-.LFB37
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI88-.LCFI87
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI91-.LCFI88
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
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
	.long	.LCFI92-.LFB38
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
	.long	.LCFI100-.LCFI97
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
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
	.long	.LCFI101-.LFB40
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI102-.LCFI101
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI105-.LCFI102
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
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
	.long	.LCFI106-.LFB41
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI107-.LCFI106
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI109-.LCFI107
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
	.long	.LCFI110-.LFB42
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI111-.LCFI110
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI113-.LCFI111
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
	.long	.LCFI114-.LFB43
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI115-.LCFI114
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI118-.LCFI115
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
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
	.long	.LCFI119-.LFB44
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI120-.LCFI119
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI122-.LCFI120
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
	.long	.LCFI123-.LFB45
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI124-.LCFI123
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI126-.LCFI124
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
	.long	.LCFI127-.LFB46
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI128-.LCFI127
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI130-.LCFI128
	.byte	0x83
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
	.long	.LCFI131-.LFB47
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI132-.LCFI131
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI134-.LCFI132
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE64:
.LSFDE66:
	.long	.LEFDE66-.LASFDE66
.LASFDE66:
	.long	.Lframe0
	.long	.LFB48
	.long	.LFE48-.LFB48
	.byte	0x4
	.long	.LCFI135-.LFB48
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI136-.LCFI135
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE66:
.LSFDE68:
	.long	.LEFDE68-.LASFDE68
.LASFDE68:
	.long	.Lframe0
	.long	.LFB49
	.long	.LFE49-.LFB49
	.byte	0x4
	.long	.LCFI138-.LFB49
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI139-.LCFI138
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI141-.LCFI139
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
	.long	.LCFI142-.LFB50
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI143-.LCFI142
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI147-.LCFI143
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
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
	.long	.LCFI148-.LFB51
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI149-.LCFI148
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI151-.LCFI149
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
	.long	.LCFI152-.LFB52
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI153-.LCFI152
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI156-.LCFI153
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
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
	.long	.LCFI170-.LCFI167
	.byte	0x83
	.uleb128 0x4
	.byte	0x87
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
	.long	.LCFI171-.LFB56
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI172-.LCFI171
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI174-.LCFI172
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
	.long	.LCFI175-.LFB57
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI176-.LCFI175
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI178-.LCFI176
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
	.long	.LCFI179-.LFB58
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI180-.LCFI179
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI182-.LCFI180
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
	.long	.LCFI183-.LFB59
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI184-.LCFI183
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI186-.LCFI184
	.byte	0x83
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
	.long	.LCFI190-.LCFI188
	.byte	0x83
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
	.long	.LCFI191-.LFB61
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI192-.LCFI191
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI195-.LCFI192
	.byte	0x83
	.uleb128 0x4
	.byte	0x87
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
	.long	.LCFI196-.LFB62
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI197-.LCFI196
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI200-.LCFI197
	.byte	0x83
	.uleb128 0x4
	.byte	0x87
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
	.long	.LCFI201-.LFB63
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI202-.LCFI201
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI204-.LCFI202
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
	.long	.LCFI205-.LFB64
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI206-.LCFI205
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI208-.LCFI206
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
	.long	.LCFI209-.LFB65
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI210-.LCFI209
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI212-.LCFI210
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
	.long	.LCFI213-.LFB66
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI214-.LCFI213
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI216-.LCFI214
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
	.long	.LCFI217-.LFB67
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI218-.LCFI217
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI220-.LCFI218
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
	.long	.LCFI221-.LFB68
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI222-.LCFI221
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI224-.LCFI222
	.byte	0x83
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
	.long	.LCFI225-.LFB69
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI226-.LCFI225
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI228-.LCFI226
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
	.long	.LCFI229-.LFB70
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI230-.LCFI229
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI232-.LCFI230
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
	.long	.LCFI233-.LFB71
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI234-.LCFI233
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI236-.LCFI234
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
	.long	.LCFI237-.LFB72
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI238-.LCFI237
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI240-.LCFI238
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
	.long	.LCFI241-.LFB73
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI242-.LCFI241
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI244-.LCFI242
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
	.long	.LCFI245-.LFB74
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI246-.LCFI245
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI248-.LCFI246
	.byte	0x83
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
	.long	.LCFI249-.LFB75
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI250-.LCFI249
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI252-.LCFI250
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
	.long	.LCFI253-.LFB76
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
.LEFDE122:
.LSFDE124:
	.long	.LEFDE124-.LASFDE124
.LASFDE124:
	.long	.Lframe0
	.long	.LFB77
	.long	.LFE77-.LFB77
	.byte	0x4
	.long	.LCFI257-.LFB77
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
.LEFDE124:
.LSFDE126:
	.long	.LEFDE126-.LASFDE126
.LASFDE126:
	.long	.Lframe0
	.long	.LFB78
	.long	.LFE78-.LFB78
	.byte	0x4
	.long	.LCFI261-.LFB78
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI262-.LCFI261
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI266-.LCFI262
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
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
	.long	.LCFI267-.LFB79
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI268-.LCFI267
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI270-.LCFI268
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
	.long	.LCFI271-.LFB80
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI272-.LCFI271
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI274-.LCFI272
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
	.long	.LCFI275-.LFB81
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI276-.LCFI275
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI278-.LCFI276
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
	.long	.LCFI279-.LFB82
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI280-.LCFI279
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI283-.LCFI280
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
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
	.long	.LCFI284-.LFB83
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI285-.LCFI284
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI287-.LCFI285
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
	.long	.LCFI288-.LFB84
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI289-.LCFI288
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI291-.LCFI289
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
	.long	.LCFI292-.LFB85
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI293-.LCFI292
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI295-.LCFI293
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
	.long	.LCFI296-.LFB86
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI297-.LCFI296
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI299-.LCFI297
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
	.long	.LCFI300-.LFB87
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI301-.LCFI300
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI303-.LCFI301
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
	.long	.LCFI304-.LFB88
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI305-.LCFI304
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI307-.LCFI305
	.byte	0x83
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
	.long	.LCFI308-.LFB89
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI309-.LCFI308
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI311-.LCFI309
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE148:
	.file 2 "../../../kgccfe/gnu/MIPS/config.h"
	.file 3 "../../../kgccfe/gnu/tree.h"
	.file 4 "../../../kgccfe/gnu/rtl.h"
	.file 5 "../../../kgccfe/gnu/machmode.h"
	.file 6 "../../../kgccfe/gnu/hashtable.h"
	.file 7 "../../../kgccfe/gnu/location.h"
	.file 8 "../../../kgccfe/gnu/c-tree.h"
	.file 9 "../../../kgccfe/gnu/c-common.h"
	.file 10 "../../../kgccfe/omp_types.h"
	.file 11 "../../../include/gnu/splay-tree.h"
	.file 12 "../../../kgccfe/gnu/MIPS/mips.h"
	.file 13 "../../../kgccfe/gnu/flags.h"
	.file 14 "../../../kgccfe/gnu/target.h"
	.file 15 "/usr/include/stdio.h"
	.file 16 "/usr/include/libio.h"
	.file 17 "/usr/include/bits/types.h"
	.file 18 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h"
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
	.long	.LCFI28-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI28-.Ltext0
	.long	.LCFI29-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI29-.Ltext0
	.long	.LFE22-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST8:
	.long	.LFB23-.Ltext0
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
	.long	.LFE23-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST9:
	.long	.LFB24-.Ltext0
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
	.long	.LFE24-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST10:
	.long	.LFB25-.Ltext0
	.long	.LCFI40-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI40-.Ltext0
	.long	.LCFI41-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI41-.Ltext0
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
	.long	.LCFI63-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI63-.Ltext0
	.long	.LCFI64-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI64-.Ltext0
	.long	.LFE31-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST17:
	.long	.LFB32-.Ltext0
	.long	.LCFI67-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI67-.Ltext0
	.long	.LCFI68-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI68-.Ltext0
	.long	.LFE32-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST18:
	.long	.LFB33-.Ltext0
	.long	.LCFI71-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI71-.Ltext0
	.long	.LCFI72-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI72-.Ltext0
	.long	.LFE33-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST19:
	.long	.LFB34-.Ltext0
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
	.long	.LFE34-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST20:
	.long	.LFB35-.Ltext0
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
	.long	.LFE35-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST21:
	.long	.LFB36-.Ltext0
	.long	.LCFI83-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI83-.Ltext0
	.long	.LCFI84-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI84-.Ltext0
	.long	.LFE36-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST22:
	.long	.LFB37-.Ltext0
	.long	.LCFI87-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI87-.Ltext0
	.long	.LCFI88-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI88-.Ltext0
	.long	.LFE37-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST23:
	.long	.LFB38-.Ltext0
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
	.long	.LCFI101-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI101-.Ltext0
	.long	.LCFI102-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI102-.Ltext0
	.long	.LFE40-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST26:
	.long	.LFB41-.Ltext0
	.long	.LCFI106-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI106-.Ltext0
	.long	.LCFI107-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI107-.Ltext0
	.long	.LFE41-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST27:
	.long	.LFB42-.Ltext0
	.long	.LCFI110-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI110-.Ltext0
	.long	.LCFI111-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI111-.Ltext0
	.long	.LFE42-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST28:
	.long	.LFB43-.Ltext0
	.long	.LCFI114-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI114-.Ltext0
	.long	.LCFI115-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI115-.Ltext0
	.long	.LFE43-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST29:
	.long	.LFB44-.Ltext0
	.long	.LCFI119-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI119-.Ltext0
	.long	.LCFI120-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI120-.Ltext0
	.long	.LFE44-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST30:
	.long	.LFB45-.Ltext0
	.long	.LCFI123-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI123-.Ltext0
	.long	.LCFI124-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI124-.Ltext0
	.long	.LFE45-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST31:
	.long	.LFB46-.Ltext0
	.long	.LCFI127-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI127-.Ltext0
	.long	.LCFI128-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI128-.Ltext0
	.long	.LFE46-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST32:
	.long	.LFB47-.Ltext0
	.long	.LCFI131-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI131-.Ltext0
	.long	.LCFI132-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI132-.Ltext0
	.long	.LFE47-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST33:
	.long	.LFB48-.Ltext0
	.long	.LCFI135-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI135-.Ltext0
	.long	.LCFI136-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI136-.Ltext0
	.long	.LFE48-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST34:
	.long	.LFB49-.Ltext0
	.long	.LCFI138-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI138-.Ltext0
	.long	.LCFI139-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI139-.Ltext0
	.long	.LFE49-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST35:
	.long	.LFB50-.Ltext0
	.long	.LCFI142-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI142-.Ltext0
	.long	.LCFI143-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI143-.Ltext0
	.long	.LFE50-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST36:
	.long	.LFB51-.Ltext0
	.long	.LCFI148-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI148-.Ltext0
	.long	.LCFI149-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI149-.Ltext0
	.long	.LFE51-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST37:
	.long	.LFB52-.Ltext0
	.long	.LCFI152-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI152-.Ltext0
	.long	.LCFI153-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI153-.Ltext0
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
	.long	.LCFI171-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI171-.Ltext0
	.long	.LCFI172-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI172-.Ltext0
	.long	.LFE56-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST42:
	.long	.LFB57-.Ltext0
	.long	.LCFI175-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI175-.Ltext0
	.long	.LCFI176-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI176-.Ltext0
	.long	.LFE57-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST43:
	.long	.LFB58-.Ltext0
	.long	.LCFI179-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI179-.Ltext0
	.long	.LCFI180-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI180-.Ltext0
	.long	.LFE58-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST44:
	.long	.LFB59-.Ltext0
	.long	.LCFI183-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI183-.Ltext0
	.long	.LCFI184-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI184-.Ltext0
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
	.long	.LCFI191-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI191-.Ltext0
	.long	.LCFI192-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI192-.Ltext0
	.long	.LFE61-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST47:
	.long	.LFB62-.Ltext0
	.long	.LCFI196-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI196-.Ltext0
	.long	.LCFI197-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI197-.Ltext0
	.long	.LFE62-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST48:
	.long	.LFB63-.Ltext0
	.long	.LCFI201-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI201-.Ltext0
	.long	.LCFI202-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI202-.Ltext0
	.long	.LFE63-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST49:
	.long	.LFB64-.Ltext0
	.long	.LCFI205-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI205-.Ltext0
	.long	.LCFI206-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI206-.Ltext0
	.long	.LFE64-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST50:
	.long	.LFB65-.Ltext0
	.long	.LCFI209-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI209-.Ltext0
	.long	.LCFI210-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI210-.Ltext0
	.long	.LFE65-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST51:
	.long	.LFB66-.Ltext0
	.long	.LCFI213-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI213-.Ltext0
	.long	.LCFI214-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI214-.Ltext0
	.long	.LFE66-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST52:
	.long	.LFB67-.Ltext0
	.long	.LCFI217-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI217-.Ltext0
	.long	.LCFI218-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI218-.Ltext0
	.long	.LFE67-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST53:
	.long	.LFB68-.Ltext0
	.long	.LCFI221-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI221-.Ltext0
	.long	.LCFI222-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI222-.Ltext0
	.long	.LFE68-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST54:
	.long	.LFB69-.Ltext0
	.long	.LCFI225-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI225-.Ltext0
	.long	.LCFI226-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI226-.Ltext0
	.long	.LFE69-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST55:
	.long	.LFB70-.Ltext0
	.long	.LCFI229-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI229-.Ltext0
	.long	.LCFI230-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI230-.Ltext0
	.long	.LFE70-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST56:
	.long	.LFB71-.Ltext0
	.long	.LCFI233-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI233-.Ltext0
	.long	.LCFI234-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI234-.Ltext0
	.long	.LFE71-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST57:
	.long	.LFB72-.Ltext0
	.long	.LCFI237-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI237-.Ltext0
	.long	.LCFI238-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI238-.Ltext0
	.long	.LFE72-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST58:
	.long	.LFB73-.Ltext0
	.long	.LCFI241-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI241-.Ltext0
	.long	.LCFI242-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI242-.Ltext0
	.long	.LFE73-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST59:
	.long	.LFB74-.Ltext0
	.long	.LCFI245-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI245-.Ltext0
	.long	.LCFI246-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI246-.Ltext0
	.long	.LFE74-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST60:
	.long	.LFB75-.Ltext0
	.long	.LCFI249-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI249-.Ltext0
	.long	.LCFI250-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI250-.Ltext0
	.long	.LFE75-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST61:
	.long	.LFB76-.Ltext0
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
	.long	.LFE76-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST62:
	.long	.LFB77-.Ltext0
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
	.long	.LFE77-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST63:
	.long	.LFB78-.Ltext0
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
	.long	.LFE78-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST64:
	.long	.LFB79-.Ltext0
	.long	.LCFI267-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI267-.Ltext0
	.long	.LCFI268-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI268-.Ltext0
	.long	.LFE79-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST65:
	.long	.LFB80-.Ltext0
	.long	.LCFI271-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI271-.Ltext0
	.long	.LCFI272-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI272-.Ltext0
	.long	.LFE80-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST66:
	.long	.LFB81-.Ltext0
	.long	.LCFI275-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI275-.Ltext0
	.long	.LCFI276-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI276-.Ltext0
	.long	.LFE81-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST67:
	.long	.LFB82-.Ltext0
	.long	.LCFI279-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI279-.Ltext0
	.long	.LCFI280-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI280-.Ltext0
	.long	.LFE82-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST68:
	.long	.LFB83-.Ltext0
	.long	.LCFI284-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI284-.Ltext0
	.long	.LCFI285-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI285-.Ltext0
	.long	.LFE83-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST69:
	.long	.LFB84-.Ltext0
	.long	.LCFI288-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI288-.Ltext0
	.long	.LCFI289-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI289-.Ltext0
	.long	.LFE84-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST70:
	.long	.LFB85-.Ltext0
	.long	.LCFI292-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI292-.Ltext0
	.long	.LCFI293-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI293-.Ltext0
	.long	.LFE85-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST71:
	.long	.LFB86-.Ltext0
	.long	.LCFI296-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI296-.Ltext0
	.long	.LCFI297-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI297-.Ltext0
	.long	.LFE86-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST72:
	.long	.LFB87-.Ltext0
	.long	.LCFI300-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI300-.Ltext0
	.long	.LCFI301-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI301-.Ltext0
	.long	.LFE87-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST73:
	.long	.LFB88-.Ltext0
	.long	.LCFI304-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI304-.Ltext0
	.long	.LCFI305-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI305-.Ltext0
	.long	.LFE88-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST74:
	.long	.LFB89-.Ltext0
	.long	.LCFI308-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI308-.Ltext0
	.long	.LCFI309-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI309-.Ltext0
	.long	.LFE89-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
	.section	.debug_info
	.long	0x9731
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.Ldebug_line0
	.long	.Letext0
	.long	.Ltext0
	.string	"GNU C 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.byte	0x1
	.string	"../../../kgccfe/gnu/c-typeck.c"
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
	.long	0x19d
	.string	"rtx_def"
	.byte	0xc
	.byte	0x2
	.byte	0xb
	.uleb128 0x5
	.long	.LASF0
	.byte	0x4
	.byte	0x8a
	.long	0x95a
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"mode"
	.byte	0x4
	.byte	0x8d
	.long	0x711
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"jump"
	.byte	0x4
	.byte	0x94
	.long	0x2e6
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"call"
	.byte	0x4
	.byte	0x97
	.long	0x2e6
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"unchanging"
	.byte	0x4
	.byte	0x9f
	.long	0x2e6
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"volatil"
	.byte	0x4
	.byte	0xa8
	.long	0x2e6
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"in_struct"
	.byte	0x4
	.byte	0xba
	.long	0x2e6
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"used"
	.byte	0x4
	.byte	0xc1
	.long	0x2e6
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"integrated"
	.byte	0x4
	.byte	0xc6
	.long	0x2e6
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"frame_related"
	.byte	0x4
	.byte	0xcf
	.long	0x2e6
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"fld"
	.byte	0x4
	.byte	0xd4
	.long	0x13b3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"rtvec"
	.byte	0x2
	.byte	0xe
	.long	0x1aa
	.uleb128 0x3
	.byte	0x4
	.long	0x1b0
	.uleb128 0x4
	.long	0x1e5
	.string	"rtvec_def"
	.byte	0x8
	.byte	0x2
	.byte	0xd
	.uleb128 0x7
	.string	"num_elem"
	.byte	0x4
	.byte	0xf8
	.long	0x2df
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"elem"
	.byte	0x4
	.byte	0xf9
	.long	0x13c3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"tree"
	.byte	0x2
	.byte	0x10
	.long	0x1f1
	.uleb128 0x3
	.byte	0x4
	.long	0x1f7
	.uleb128 0x8
	.long	0x2cc
	.string	"tree_node"
	.byte	0x94
	.byte	0x2
	.byte	0xf
	.uleb128 0x9
	.long	.LASF1
	.byte	0x3
	.value	0x855
	.long	0x3649
	.uleb128 0xa
	.string	"int_cst"
	.byte	0x3
	.value	0x856
	.long	0x3961
	.uleb128 0xa
	.string	"real_cst"
	.byte	0x3
	.value	0x857
	.long	0x39a9
	.uleb128 0xa
	.string	"vector"
	.byte	0x3
	.value	0x858
	.long	0x3ac8
	.uleb128 0x9
	.long	.LASF2
	.byte	0x3
	.value	0x859
	.long	0x3a0a
	.uleb128 0xa
	.string	"complex"
	.byte	0x3
	.value	0x85a
	.long	0x3a73
	.uleb128 0xa
	.string	"identifier"
	.byte	0x3
	.value	0x85b
	.long	0x3b49
	.uleb128 0x9
	.long	.LASF3
	.byte	0x3
	.value	0x85c
	.long	0x4234
	.uleb128 0x9
	.long	.LASF4
	.byte	0x3
	.value	0x85d
	.long	0x3da4
	.uleb128 0xa
	.string	"list"
	.byte	0x3
	.value	0x85e
	.long	0x3b80
	.uleb128 0xa
	.string	"vec"
	.byte	0x3
	.value	0x85f
	.long	0x3bc1
	.uleb128 0xa
	.string	"exp"
	.byte	0x3
	.value	0x860
	.long	0x3c12
	.uleb128 0xa
	.string	"block"
	.byte	0x3
	.value	0x861
	.long	0x3c5e
	.uleb128 0xa
	.string	"omp"
	.byte	0x3
	.value	0x863
	.long	0x4bf0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x2d2
	.uleb128 0xb
	.long	0x2d7
	.uleb128 0xc
	.string	"char"
	.byte	0x1
	.byte	0x8
	.uleb128 0xc
	.string	"int"
	.byte	0x4
	.byte	0x5
	.uleb128 0xd
	.long	.LASF5
	.byte	0x4
	.byte	0x7
	.uleb128 0xd
	.long	.LASF5
	.byte	0x4
	.byte	0x7
	.uleb128 0x2
	.string	"size_t"
	.byte	0x12
	.byte	0xd6
	.long	0x2e6
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
	.byte	0x11
	.byte	0x3b
	.long	0x35a
	.uleb128 0x2
	.string	"__off_t"
	.byte	0x11
	.byte	0x90
	.long	0x3a4
	.uleb128 0xc
	.string	"long int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x2
	.string	"__off64_t"
	.byte	0x11
	.byte	0x91
	.long	0x385
	.uleb128 0xe
	.byte	0x4
	.uleb128 0x3
	.byte	0x4
	.long	0x2d7
	.uleb128 0x2
	.string	"FILE"
	.byte	0xf
	.byte	0x2e
	.long	0x3d5
	.uleb128 0xf
	.long	0x650
	.long	.LASF6
	.byte	0x94
	.byte	0xf
	.byte	0x2e
	.uleb128 0x10
	.string	"_flags"
	.byte	0x10
	.value	0x10c
	.long	0x2df
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x10
	.string	"_IO_read_ptr"
	.byte	0x10
	.value	0x111
	.long	0x3c3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x10
	.string	"_IO_read_end"
	.byte	0x10
	.value	0x112
	.long	0x3c3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x10
	.string	"_IO_read_base"
	.byte	0x10
	.value	0x113
	.long	0x3c3
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x10
	.string	"_IO_write_base"
	.byte	0x10
	.value	0x114
	.long	0x3c3
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x10
	.string	"_IO_write_ptr"
	.byte	0x10
	.value	0x115
	.long	0x3c3
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x10
	.string	"_IO_write_end"
	.byte	0x10
	.value	0x116
	.long	0x3c3
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x10
	.string	"_IO_buf_base"
	.byte	0x10
	.value	0x117
	.long	0x3c3
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x10
	.string	"_IO_buf_end"
	.byte	0x10
	.value	0x118
	.long	0x3c3
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x10
	.string	"_IO_save_base"
	.byte	0x10
	.value	0x11a
	.long	0x3c3
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x10
	.string	"_IO_backup_base"
	.byte	0x10
	.value	0x11b
	.long	0x3c3
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x10
	.string	"_IO_save_end"
	.byte	0x10
	.value	0x11c
	.long	0x3c3
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x10
	.string	"_markers"
	.byte	0x10
	.value	0x11e
	.long	0x6ac
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x10
	.string	"_chain"
	.byte	0x10
	.value	0x120
	.long	0x6b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x10
	.string	"_fileno"
	.byte	0x10
	.value	0x122
	.long	0x2df
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x10
	.string	"_flags2"
	.byte	0x10
	.value	0x126
	.long	0x2df
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x10
	.string	"_old_offset"
	.byte	0x10
	.value	0x128
	.long	0x395
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x10
	.string	"_cur_column"
	.byte	0x10
	.value	0x12c
	.long	0x313
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x10
	.string	"_vtable_offset"
	.byte	0x10
	.value	0x12d
	.long	0x33e
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0x10
	.string	"_shortbuf"
	.byte	0x10
	.value	0x12e
	.long	0x6b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x47
	.uleb128 0x10
	.string	"_lock"
	.byte	0x10
	.value	0x132
	.long	0x6c8
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x10
	.string	"_offset"
	.byte	0x10
	.value	0x13b
	.long	0x3b0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x10
	.string	"__pad1"
	.byte	0x10
	.value	0x144
	.long	0x3c1
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x10
	.string	"__pad2"
	.byte	0x10
	.value	0x145
	.long	0x3c1
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x10
	.string	"__pad3"
	.byte	0x10
	.value	0x146
	.long	0x3c1
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x10
	.string	"__pad4"
	.byte	0x10
	.value	0x147
	.long	0x3c1
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x10
	.string	"__pad5"
	.byte	0x10
	.value	0x148
	.long	0x2f4
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x10
	.string	"_mode"
	.byte	0x10
	.value	0x14a
	.long	0x2df
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x10
	.string	"_unused2"
	.byte	0x10
	.value	0x14c
	.long	0x6ce
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x656
	.uleb128 0xb
	.long	0x302
	.uleb128 0x11
	.string	"_IO_lock_t"
	.byte	0x10
	.byte	0xb0
	.uleb128 0x4
	.long	0x6ac
	.string	"_IO_marker"
	.byte	0xc
	.byte	0x10
	.byte	0xb6
	.uleb128 0x7
	.string	"_next"
	.byte	0x10
	.byte	0xb7
	.long	0x6ac
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"_sbuf"
	.byte	0x10
	.byte	0xb8
	.long	0x6b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"_pos"
	.byte	0x10
	.byte	0xbc
	.long	0x2df
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x669
	.uleb128 0x3
	.byte	0x4
	.long	0x3d5
	.uleb128 0x12
	.long	0x6c8
	.long	0x2d7
	.uleb128 0x13
	.long	0x2ed
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x65b
	.uleb128 0x12
	.long	0x6de
	.long	0x2d7
	.uleb128 0x13
	.long	0x2ed
	.byte	0x27
	.byte	0x0
	.uleb128 0x12
	.long	0x6ee
	.long	0x2d7
	.uleb128 0x13
	.long	0x2ed
	.byte	0x23
	.byte	0x0
	.uleb128 0x12
	.long	0x6fe
	.long	0x2d7
	.uleb128 0x13
	.long	0x2ed
	.byte	0x17
	.byte	0x0
	.uleb128 0xb
	.long	0x2df
	.uleb128 0x3
	.byte	0x4
	.long	0x2df
	.uleb128 0x14
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x709
	.uleb128 0x15
	.long	0x95a
	.string	"machine_mode"
	.byte	0x4
	.byte	0x5
	.byte	0x1d
	.uleb128 0x16
	.string	"VOIDmode"
	.sleb128 0
	.uleb128 0x16
	.string	"BImode"
	.sleb128 1
	.uleb128 0x16
	.string	"QImode"
	.sleb128 2
	.uleb128 0x16
	.string	"HImode"
	.sleb128 3
	.uleb128 0x16
	.string	"SImode"
	.sleb128 4
	.uleb128 0x16
	.string	"DImode"
	.sleb128 5
	.uleb128 0x16
	.string	"TImode"
	.sleb128 6
	.uleb128 0x16
	.string	"OImode"
	.sleb128 7
	.uleb128 0x16
	.string	"PQImode"
	.sleb128 8
	.uleb128 0x16
	.string	"PHImode"
	.sleb128 9
	.uleb128 0x16
	.string	"PSImode"
	.sleb128 10
	.uleb128 0x16
	.string	"PDImode"
	.sleb128 11
	.uleb128 0x16
	.string	"QFmode"
	.sleb128 12
	.uleb128 0x16
	.string	"HFmode"
	.sleb128 13
	.uleb128 0x16
	.string	"TQFmode"
	.sleb128 14
	.uleb128 0x16
	.string	"SFmode"
	.sleb128 15
	.uleb128 0x16
	.string	"DFmode"
	.sleb128 16
	.uleb128 0x16
	.string	"XFmode"
	.sleb128 17
	.uleb128 0x16
	.string	"TFmode"
	.sleb128 18
	.uleb128 0x16
	.string	"QCmode"
	.sleb128 19
	.uleb128 0x16
	.string	"HCmode"
	.sleb128 20
	.uleb128 0x16
	.string	"SCmode"
	.sleb128 21
	.uleb128 0x16
	.string	"DCmode"
	.sleb128 22
	.uleb128 0x16
	.string	"XCmode"
	.sleb128 23
	.uleb128 0x16
	.string	"TCmode"
	.sleb128 24
	.uleb128 0x16
	.string	"CQImode"
	.sleb128 25
	.uleb128 0x16
	.string	"CHImode"
	.sleb128 26
	.uleb128 0x16
	.string	"CSImode"
	.sleb128 27
	.uleb128 0x16
	.string	"CDImode"
	.sleb128 28
	.uleb128 0x16
	.string	"CTImode"
	.sleb128 29
	.uleb128 0x16
	.string	"COImode"
	.sleb128 30
	.uleb128 0x16
	.string	"V1DImode"
	.sleb128 31
	.uleb128 0x16
	.string	"V2QImode"
	.sleb128 32
	.uleb128 0x16
	.string	"V2HImode"
	.sleb128 33
	.uleb128 0x16
	.string	"V2SImode"
	.sleb128 34
	.uleb128 0x16
	.string	"V2DImode"
	.sleb128 35
	.uleb128 0x16
	.string	"V4QImode"
	.sleb128 36
	.uleb128 0x16
	.string	"V4HImode"
	.sleb128 37
	.uleb128 0x16
	.string	"V4SImode"
	.sleb128 38
	.uleb128 0x16
	.string	"V4DImode"
	.sleb128 39
	.uleb128 0x16
	.string	"V8QImode"
	.sleb128 40
	.uleb128 0x16
	.string	"V8HImode"
	.sleb128 41
	.uleb128 0x16
	.string	"V8SImode"
	.sleb128 42
	.uleb128 0x16
	.string	"V8DImode"
	.sleb128 43
	.uleb128 0x16
	.string	"V16QImode"
	.sleb128 44
	.uleb128 0x16
	.string	"V2SFmode"
	.sleb128 45
	.uleb128 0x16
	.string	"V2DFmode"
	.sleb128 46
	.uleb128 0x16
	.string	"V4SFmode"
	.sleb128 47
	.uleb128 0x16
	.string	"V4DFmode"
	.sleb128 48
	.uleb128 0x16
	.string	"V8SFmode"
	.sleb128 49
	.uleb128 0x16
	.string	"V8DFmode"
	.sleb128 50
	.uleb128 0x16
	.string	"V16SFmode"
	.sleb128 51
	.uleb128 0x16
	.string	"BLKmode"
	.sleb128 52
	.uleb128 0x16
	.string	"CCmode"
	.sleb128 53
	.uleb128 0x16
	.string	"MAX_MACHINE_MODE"
	.sleb128 54
	.byte	0x0
	.uleb128 0x15
	.long	0x1129
	.string	"rtx_code"
	.byte	0x4
	.byte	0x4
	.byte	0x2f
	.uleb128 0x16
	.string	"UNKNOWN"
	.sleb128 0
	.uleb128 0x16
	.string	"NIL"
	.sleb128 1
	.uleb128 0x16
	.string	"INCLUDE"
	.sleb128 2
	.uleb128 0x16
	.string	"EXPR_LIST"
	.sleb128 3
	.uleb128 0x16
	.string	"INSN_LIST"
	.sleb128 4
	.uleb128 0x16
	.string	"MATCH_OPERAND"
	.sleb128 5
	.uleb128 0x16
	.string	"MATCH_SCRATCH"
	.sleb128 6
	.uleb128 0x16
	.string	"MATCH_DUP"
	.sleb128 7
	.uleb128 0x16
	.string	"MATCH_OPERATOR"
	.sleb128 8
	.uleb128 0x16
	.string	"MATCH_PARALLEL"
	.sleb128 9
	.uleb128 0x16
	.string	"MATCH_OP_DUP"
	.sleb128 10
	.uleb128 0x16
	.string	"MATCH_PAR_DUP"
	.sleb128 11
	.uleb128 0x16
	.string	"MATCH_INSN"
	.sleb128 12
	.uleb128 0x16
	.string	"DEFINE_INSN"
	.sleb128 13
	.uleb128 0x16
	.string	"DEFINE_PEEPHOLE"
	.sleb128 14
	.uleb128 0x16
	.string	"DEFINE_SPLIT"
	.sleb128 15
	.uleb128 0x16
	.string	"DEFINE_INSN_AND_SPLIT"
	.sleb128 16
	.uleb128 0x16
	.string	"DEFINE_PEEPHOLE2"
	.sleb128 17
	.uleb128 0x16
	.string	"DEFINE_COMBINE"
	.sleb128 18
	.uleb128 0x16
	.string	"DEFINE_EXPAND"
	.sleb128 19
	.uleb128 0x16
	.string	"DEFINE_DELAY"
	.sleb128 20
	.uleb128 0x16
	.string	"DEFINE_FUNCTION_UNIT"
	.sleb128 21
	.uleb128 0x16
	.string	"DEFINE_ASM_ATTRIBUTES"
	.sleb128 22
	.uleb128 0x16
	.string	"DEFINE_COND_EXEC"
	.sleb128 23
	.uleb128 0x16
	.string	"SEQUENCE"
	.sleb128 24
	.uleb128 0x16
	.string	"ADDRESS"
	.sleb128 25
	.uleb128 0x16
	.string	"DEFINE_CPU_UNIT"
	.sleb128 26
	.uleb128 0x16
	.string	"DEFINE_QUERY_CPU_UNIT"
	.sleb128 27
	.uleb128 0x16
	.string	"EXCLUSION_SET"
	.sleb128 28
	.uleb128 0x16
	.string	"PRESENCE_SET"
	.sleb128 29
	.uleb128 0x16
	.string	"ABSENCE_SET"
	.sleb128 30
	.uleb128 0x16
	.string	"DEFINE_BYPASS"
	.sleb128 31
	.uleb128 0x16
	.string	"DEFINE_AUTOMATON"
	.sleb128 32
	.uleb128 0x16
	.string	"AUTOMATA_OPTION"
	.sleb128 33
	.uleb128 0x16
	.string	"DEFINE_RESERVATION"
	.sleb128 34
	.uleb128 0x16
	.string	"DEFINE_INSN_RESERVATION"
	.sleb128 35
	.uleb128 0x16
	.string	"DEFINE_ATTR"
	.sleb128 36
	.uleb128 0x16
	.string	"ATTR"
	.sleb128 37
	.uleb128 0x16
	.string	"SET_ATTR"
	.sleb128 38
	.uleb128 0x16
	.string	"SET_ATTR_ALTERNATIVE"
	.sleb128 39
	.uleb128 0x16
	.string	"EQ_ATTR"
	.sleb128 40
	.uleb128 0x16
	.string	"ATTR_FLAG"
	.sleb128 41
	.uleb128 0x16
	.string	"INSN"
	.sleb128 42
	.uleb128 0x16
	.string	"JUMP_INSN"
	.sleb128 43
	.uleb128 0x16
	.string	"CALL_INSN"
	.sleb128 44
	.uleb128 0x16
	.string	"BARRIER"
	.sleb128 45
	.uleb128 0x16
	.string	"CODE_LABEL"
	.sleb128 46
	.uleb128 0x16
	.string	"NOTE"
	.sleb128 47
	.uleb128 0x16
	.string	"COND_EXEC"
	.sleb128 48
	.uleb128 0x16
	.string	"PARALLEL"
	.sleb128 49
	.uleb128 0x16
	.string	"ASM_INPUT"
	.sleb128 50
	.uleb128 0x16
	.string	"ASM_OPERANDS"
	.sleb128 51
	.uleb128 0x16
	.string	"UNSPEC"
	.sleb128 52
	.uleb128 0x16
	.string	"UNSPEC_VOLATILE"
	.sleb128 53
	.uleb128 0x16
	.string	"ADDR_VEC"
	.sleb128 54
	.uleb128 0x16
	.string	"ADDR_DIFF_VEC"
	.sleb128 55
	.uleb128 0x16
	.string	"PREFETCH"
	.sleb128 56
	.uleb128 0x16
	.string	"SET"
	.sleb128 57
	.uleb128 0x16
	.string	"USE"
	.sleb128 58
	.uleb128 0x16
	.string	"CLOBBER"
	.sleb128 59
	.uleb128 0x16
	.string	"CALL"
	.sleb128 60
	.uleb128 0x16
	.string	"RETURN"
	.sleb128 61
	.uleb128 0x16
	.string	"TRAP_IF"
	.sleb128 62
	.uleb128 0x16
	.string	"RESX"
	.sleb128 63
	.uleb128 0x16
	.string	"CONST_INT"
	.sleb128 64
	.uleb128 0x16
	.string	"CONST_DOUBLE"
	.sleb128 65
	.uleb128 0x16
	.string	"CONST_VECTOR"
	.sleb128 66
	.uleb128 0x16
	.string	"CONST_STRING"
	.sleb128 67
	.uleb128 0x16
	.string	"CONST"
	.sleb128 68
	.uleb128 0x16
	.string	"PC"
	.sleb128 69
	.uleb128 0x16
	.string	"VALUE"
	.sleb128 70
	.uleb128 0x16
	.string	"REG"
	.sleb128 71
	.uleb128 0x16
	.string	"SCRATCH"
	.sleb128 72
	.uleb128 0x16
	.string	"SUBREG"
	.sleb128 73
	.uleb128 0x16
	.string	"STRICT_LOW_PART"
	.sleb128 74
	.uleb128 0x16
	.string	"CONCAT"
	.sleb128 75
	.uleb128 0x16
	.string	"MEM"
	.sleb128 76
	.uleb128 0x16
	.string	"LABEL_REF"
	.sleb128 77
	.uleb128 0x16
	.string	"SYMBOL_REF"
	.sleb128 78
	.uleb128 0x16
	.string	"CC0"
	.sleb128 79
	.uleb128 0x16
	.string	"ADDRESSOF"
	.sleb128 80
	.uleb128 0x16
	.string	"QUEUED"
	.sleb128 81
	.uleb128 0x16
	.string	"IF_THEN_ELSE"
	.sleb128 82
	.uleb128 0x16
	.string	"COND"
	.sleb128 83
	.uleb128 0x16
	.string	"COMPARE"
	.sleb128 84
	.uleb128 0x16
	.string	"PLUS"
	.sleb128 85
	.uleb128 0x16
	.string	"MINUS"
	.sleb128 86
	.uleb128 0x16
	.string	"NEG"
	.sleb128 87
	.uleb128 0x16
	.string	"MULT"
	.sleb128 88
	.uleb128 0x16
	.string	"DIV"
	.sleb128 89
	.uleb128 0x16
	.string	"MOD"
	.sleb128 90
	.uleb128 0x16
	.string	"UDIV"
	.sleb128 91
	.uleb128 0x16
	.string	"UMOD"
	.sleb128 92
	.uleb128 0x16
	.string	"AND"
	.sleb128 93
	.uleb128 0x16
	.string	"IOR"
	.sleb128 94
	.uleb128 0x16
	.string	"XOR"
	.sleb128 95
	.uleb128 0x16
	.string	"NOT"
	.sleb128 96
	.uleb128 0x16
	.string	"ASHIFT"
	.sleb128 97
	.uleb128 0x16
	.string	"ROTATE"
	.sleb128 98
	.uleb128 0x16
	.string	"ASHIFTRT"
	.sleb128 99
	.uleb128 0x16
	.string	"LSHIFTRT"
	.sleb128 100
	.uleb128 0x16
	.string	"ROTATERT"
	.sleb128 101
	.uleb128 0x16
	.string	"SMIN"
	.sleb128 102
	.uleb128 0x16
	.string	"SMAX"
	.sleb128 103
	.uleb128 0x16
	.string	"UMIN"
	.sleb128 104
	.uleb128 0x16
	.string	"UMAX"
	.sleb128 105
	.uleb128 0x16
	.string	"PRE_DEC"
	.sleb128 106
	.uleb128 0x16
	.string	"PRE_INC"
	.sleb128 107
	.uleb128 0x16
	.string	"POST_DEC"
	.sleb128 108
	.uleb128 0x16
	.string	"POST_INC"
	.sleb128 109
	.uleb128 0x16
	.string	"PRE_MODIFY"
	.sleb128 110
	.uleb128 0x16
	.string	"POST_MODIFY"
	.sleb128 111
	.uleb128 0x16
	.string	"NE"
	.sleb128 112
	.uleb128 0x16
	.string	"EQ"
	.sleb128 113
	.uleb128 0x16
	.string	"GE"
	.sleb128 114
	.uleb128 0x16
	.string	"GT"
	.sleb128 115
	.uleb128 0x16
	.string	"LE"
	.sleb128 116
	.uleb128 0x16
	.string	"LT"
	.sleb128 117
	.uleb128 0x16
	.string	"GEU"
	.sleb128 118
	.uleb128 0x16
	.string	"GTU"
	.sleb128 119
	.uleb128 0x16
	.string	"LEU"
	.sleb128 120
	.uleb128 0x16
	.string	"LTU"
	.sleb128 121
	.uleb128 0x16
	.string	"UNORDERED"
	.sleb128 122
	.uleb128 0x16
	.string	"ORDERED"
	.sleb128 123
	.uleb128 0x16
	.string	"UNEQ"
	.sleb128 124
	.uleb128 0x16
	.string	"UNGE"
	.sleb128 125
	.uleb128 0x16
	.string	"UNGT"
	.sleb128 126
	.uleb128 0x16
	.string	"UNLE"
	.sleb128 127
	.uleb128 0x16
	.string	"UNLT"
	.sleb128 128
	.uleb128 0x16
	.string	"LTGT"
	.sleb128 129
	.uleb128 0x16
	.string	"SIGN_EXTEND"
	.sleb128 130
	.uleb128 0x16
	.string	"ZERO_EXTEND"
	.sleb128 131
	.uleb128 0x16
	.string	"TRUNCATE"
	.sleb128 132
	.uleb128 0x16
	.string	"FLOAT_EXTEND"
	.sleb128 133
	.uleb128 0x16
	.string	"FLOAT_TRUNCATE"
	.sleb128 134
	.uleb128 0x16
	.string	"FLOAT"
	.sleb128 135
	.uleb128 0x16
	.string	"FIX"
	.sleb128 136
	.uleb128 0x16
	.string	"UNSIGNED_FLOAT"
	.sleb128 137
	.uleb128 0x16
	.string	"UNSIGNED_FIX"
	.sleb128 138
	.uleb128 0x16
	.string	"ABS"
	.sleb128 139
	.uleb128 0x16
	.string	"SQRT"
	.sleb128 140
	.uleb128 0x16
	.string	"FFS"
	.sleb128 141
	.uleb128 0x16
	.string	"SIGN_EXTRACT"
	.sleb128 142
	.uleb128 0x16
	.string	"ZERO_EXTRACT"
	.sleb128 143
	.uleb128 0x16
	.string	"HIGH"
	.sleb128 144
	.uleb128 0x16
	.string	"LO_SUM"
	.sleb128 145
	.uleb128 0x16
	.string	"RANGE_INFO"
	.sleb128 146
	.uleb128 0x16
	.string	"RANGE_REG"
	.sleb128 147
	.uleb128 0x16
	.string	"RANGE_VAR"
	.sleb128 148
	.uleb128 0x16
	.string	"RANGE_LIVE"
	.sleb128 149
	.uleb128 0x16
	.string	"CONSTANT_P_RTX"
	.sleb128 150
	.uleb128 0x16
	.string	"CALL_PLACEHOLDER"
	.sleb128 151
	.uleb128 0x16
	.string	"VEC_MERGE"
	.sleb128 152
	.uleb128 0x16
	.string	"VEC_SELECT"
	.sleb128 153
	.uleb128 0x16
	.string	"VEC_CONCAT"
	.sleb128 154
	.uleb128 0x16
	.string	"VEC_DUPLICATE"
	.sleb128 155
	.uleb128 0x16
	.string	"SS_PLUS"
	.sleb128 156
	.uleb128 0x16
	.string	"US_PLUS"
	.sleb128 157
	.uleb128 0x16
	.string	"SS_MINUS"
	.sleb128 158
	.uleb128 0x16
	.string	"US_MINUS"
	.sleb128 159
	.uleb128 0x16
	.string	"SS_TRUNCATE"
	.sleb128 160
	.uleb128 0x16
	.string	"US_TRUNCATE"
	.sleb128 161
	.uleb128 0x16
	.string	"PHI"
	.sleb128 162
	.uleb128 0x16
	.string	"LAST_AND_UNUSED_RTX_CODE"
	.sleb128 163
	.byte	0x0
	.uleb128 0x17
	.long	0x1203
	.byte	0x4
	.byte	0x4
	.byte	0x4d
	.uleb128 0x6
	.string	"min_align"
	.byte	0x4
	.byte	0x4f
	.long	0x2e6
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"base_after_vec"
	.byte	0x4
	.byte	0x51
	.long	0x2e6
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"min_after_vec"
	.byte	0x4
	.byte	0x52
	.long	0x2e6
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"max_after_vec"
	.byte	0x4
	.byte	0x54
	.long	0x2e6
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"min_after_base"
	.byte	0x4
	.byte	0x56
	.long	0x2e6
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"max_after_base"
	.byte	0x4
	.byte	0x58
	.long	0x2e6
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"offset_unsigned"
	.byte	0x4
	.byte	0x5b
	.long	0x2e6
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"scale"
	.byte	0x4
	.byte	0x5d
	.long	0x2e6
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
	.byte	0x5e
	.long	0x1129
	.uleb128 0xf
	.long	0x1277
	.long	.LASF7
	.byte	0x18
	.byte	0x4
	.byte	0x68
	.uleb128 0x7
	.string	"alias"
	.byte	0x4
	.byte	0x69
	.long	0x35a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"expr"
	.byte	0x4
	.byte	0x6a
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x18
	.long	.LASF8
	.byte	0x4
	.byte	0x6b
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"size"
	.byte	0x4
	.byte	0x6c
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"align"
	.byte	0x4
	.byte	0x6d
	.long	0x2e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x19
	.long	.LASF7
	.byte	0x4
	.byte	0x6e
	.long	0x121e
	.uleb128 0x8
	.long	0x1354
	.string	"rtunion_def"
	.byte	0x8
	.byte	0x4
	.byte	0x73
	.uleb128 0x1a
	.string	"rtwint"
	.byte	0x4
	.byte	0x74
	.long	0x35a
	.uleb128 0x1a
	.string	"rtint"
	.byte	0x4
	.byte	0x75
	.long	0x2df
	.uleb128 0x1a
	.string	"rtuint"
	.byte	0x4
	.byte	0x76
	.long	0x2e6
	.uleb128 0x1a
	.string	"rtstr"
	.byte	0x4
	.byte	0x77
	.long	0x2cc
	.uleb128 0x1a
	.string	"rtx"
	.byte	0x4
	.byte	0x78
	.long	0x9d
	.uleb128 0x1a
	.string	"rtvec"
	.byte	0x4
	.byte	0x79
	.long	0x19d
	.uleb128 0x1a
	.string	"rttype"
	.byte	0x4
	.byte	0x7a
	.long	0x711
	.uleb128 0x1a
	.string	"rt_addr_diff_vec_flags"
	.byte	0x4
	.byte	0x7b
	.long	0x1203
	.uleb128 0x1a
	.string	"rt_cselib"
	.byte	0x4
	.byte	0x7c
	.long	0x1368
	.uleb128 0x1a
	.string	"rtbit"
	.byte	0x4
	.byte	0x7d
	.long	0x1380
	.uleb128 0x1a
	.string	"rttree"
	.byte	0x4
	.byte	0x7e
	.long	0x1e5
	.uleb128 0x1a
	.string	"bb"
	.byte	0x4
	.byte	0x7f
	.long	0x1398
	.uleb128 0x1a
	.string	"rtmem"
	.byte	0x4
	.byte	0x80
	.long	0x139e
	.byte	0x0
	.uleb128 0x1b
	.string	"cselib_val_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x1354
	.uleb128 0x1b
	.string	"bitmap_head_def"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x136e
	.uleb128 0x1b
	.string	"basic_block_def"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x1386
	.uleb128 0x3
	.byte	0x4
	.long	0x1277
	.uleb128 0x2
	.string	"rtunion"
	.byte	0x4
	.byte	0x82
	.long	0x1282
	.uleb128 0x12
	.long	0x13c3
	.long	0x13a4
	.uleb128 0x13
	.long	0x2ed
	.byte	0x0
	.byte	0x0
	.uleb128 0x12
	.long	0x13d3
	.long	0x9d
	.uleb128 0x13
	.long	0x2ed
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x9d
	.uleb128 0x4
	.long	0x140b
	.string	"location_s"
	.byte	0x8
	.byte	0x7
	.byte	0x1c
	.uleb128 0x7
	.string	"file"
	.byte	0x7
	.byte	0x1e
	.long	0x2cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"line"
	.byte	0x7
	.byte	0x21
	.long	0x2df
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"location_t"
	.byte	0x7
	.byte	0x23
	.long	0x13d9
	.uleb128 0x15
	.long	0x1d3f
	.string	"tree_code"
	.byte	0x4
	.byte	0x3
	.byte	0x27
	.uleb128 0x16
	.string	"ERROR_MARK"
	.sleb128 0
	.uleb128 0x16
	.string	"IDENTIFIER_NODE"
	.sleb128 1
	.uleb128 0x16
	.string	"OP_IDENTIFIER"
	.sleb128 2
	.uleb128 0x16
	.string	"TREE_LIST"
	.sleb128 3
	.uleb128 0x16
	.string	"TREE_VEC"
	.sleb128 4
	.uleb128 0x16
	.string	"BLOCK"
	.sleb128 5
	.uleb128 0x16
	.string	"VOID_TYPE"
	.sleb128 6
	.uleb128 0x16
	.string	"INTEGER_TYPE"
	.sleb128 7
	.uleb128 0x16
	.string	"REAL_TYPE"
	.sleb128 8
	.uleb128 0x16
	.string	"COMPLEX_TYPE"
	.sleb128 9
	.uleb128 0x16
	.string	"VECTOR_TYPE"
	.sleb128 10
	.uleb128 0x16
	.string	"ENUMERAL_TYPE"
	.sleb128 11
	.uleb128 0x16
	.string	"BOOLEAN_TYPE"
	.sleb128 12
	.uleb128 0x16
	.string	"CHAR_TYPE"
	.sleb128 13
	.uleb128 0x16
	.string	"POINTER_TYPE"
	.sleb128 14
	.uleb128 0x16
	.string	"OFFSET_TYPE"
	.sleb128 15
	.uleb128 0x16
	.string	"REFERENCE_TYPE"
	.sleb128 16
	.uleb128 0x16
	.string	"METHOD_TYPE"
	.sleb128 17
	.uleb128 0x16
	.string	"FILE_TYPE"
	.sleb128 18
	.uleb128 0x16
	.string	"ARRAY_TYPE"
	.sleb128 19
	.uleb128 0x16
	.string	"SET_TYPE"
	.sleb128 20
	.uleb128 0x16
	.string	"RECORD_TYPE"
	.sleb128 21
	.uleb128 0x16
	.string	"UNION_TYPE"
	.sleb128 22
	.uleb128 0x16
	.string	"QUAL_UNION_TYPE"
	.sleb128 23
	.uleb128 0x16
	.string	"FUNCTION_TYPE"
	.sleb128 24
	.uleb128 0x16
	.string	"LANG_TYPE"
	.sleb128 25
	.uleb128 0x16
	.string	"INTEGER_CST"
	.sleb128 26
	.uleb128 0x16
	.string	"REAL_CST"
	.sleb128 27
	.uleb128 0x16
	.string	"COMPLEX_CST"
	.sleb128 28
	.uleb128 0x16
	.string	"VECTOR_CST"
	.sleb128 29
	.uleb128 0x16
	.string	"STRING_CST"
	.sleb128 30
	.uleb128 0x16
	.string	"FUNCTION_DECL"
	.sleb128 31
	.uleb128 0x16
	.string	"LABEL_DECL"
	.sleb128 32
	.uleb128 0x16
	.string	"CONST_DECL"
	.sleb128 33
	.uleb128 0x16
	.string	"TYPE_DECL"
	.sleb128 34
	.uleb128 0x16
	.string	"VAR_DECL"
	.sleb128 35
	.uleb128 0x16
	.string	"PARM_DECL"
	.sleb128 36
	.uleb128 0x16
	.string	"RESULT_DECL"
	.sleb128 37
	.uleb128 0x16
	.string	"FIELD_DECL"
	.sleb128 38
	.uleb128 0x16
	.string	"NAMESPACE_DECL"
	.sleb128 39
	.uleb128 0x16
	.string	"COMPONENT_REF"
	.sleb128 40
	.uleb128 0x16
	.string	"BIT_FIELD_REF"
	.sleb128 41
	.uleb128 0x16
	.string	"INDIRECT_REF"
	.sleb128 42
	.uleb128 0x16
	.string	"BUFFER_REF"
	.sleb128 43
	.uleb128 0x16
	.string	"ARRAY_REF"
	.sleb128 44
	.uleb128 0x16
	.string	"ARRAY_RANGE_REF"
	.sleb128 45
	.uleb128 0x16
	.string	"VTABLE_REF"
	.sleb128 46
	.uleb128 0x16
	.string	"CONSTRUCTOR"
	.sleb128 47
	.uleb128 0x16
	.string	"COMPOUND_EXPR"
	.sleb128 48
	.uleb128 0x16
	.string	"MODIFY_EXPR"
	.sleb128 49
	.uleb128 0x16
	.string	"INIT_EXPR"
	.sleb128 50
	.uleb128 0x16
	.string	"TARGET_EXPR"
	.sleb128 51
	.uleb128 0x16
	.string	"COND_EXPR"
	.sleb128 52
	.uleb128 0x16
	.string	"BIND_EXPR"
	.sleb128 53
	.uleb128 0x16
	.string	"CALL_EXPR"
	.sleb128 54
	.uleb128 0x16
	.string	"METHOD_CALL_EXPR"
	.sleb128 55
	.uleb128 0x16
	.string	"WITH_CLEANUP_EXPR"
	.sleb128 56
	.uleb128 0x16
	.string	"CLEANUP_POINT_EXPR"
	.sleb128 57
	.uleb128 0x16
	.string	"PLACEHOLDER_EXPR"
	.sleb128 58
	.uleb128 0x16
	.string	"WITH_RECORD_EXPR"
	.sleb128 59
	.uleb128 0x16
	.string	"PLUS_EXPR"
	.sleb128 60
	.uleb128 0x16
	.string	"MINUS_EXPR"
	.sleb128 61
	.uleb128 0x16
	.string	"MULT_EXPR"
	.sleb128 62
	.uleb128 0x16
	.string	"TRUNC_DIV_EXPR"
	.sleb128 63
	.uleb128 0x16
	.string	"CEIL_DIV_EXPR"
	.sleb128 64
	.uleb128 0x16
	.string	"FLOOR_DIV_EXPR"
	.sleb128 65
	.uleb128 0x16
	.string	"ROUND_DIV_EXPR"
	.sleb128 66
	.uleb128 0x16
	.string	"TRUNC_MOD_EXPR"
	.sleb128 67
	.uleb128 0x16
	.string	"CEIL_MOD_EXPR"
	.sleb128 68
	.uleb128 0x16
	.string	"FLOOR_MOD_EXPR"
	.sleb128 69
	.uleb128 0x16
	.string	"ROUND_MOD_EXPR"
	.sleb128 70
	.uleb128 0x16
	.string	"RDIV_EXPR"
	.sleb128 71
	.uleb128 0x16
	.string	"EXACT_DIV_EXPR"
	.sleb128 72
	.uleb128 0x16
	.string	"FIX_TRUNC_EXPR"
	.sleb128 73
	.uleb128 0x16
	.string	"FIX_CEIL_EXPR"
	.sleb128 74
	.uleb128 0x16
	.string	"FIX_FLOOR_EXPR"
	.sleb128 75
	.uleb128 0x16
	.string	"FIX_ROUND_EXPR"
	.sleb128 76
	.uleb128 0x16
	.string	"FLOAT_EXPR"
	.sleb128 77
	.uleb128 0x16
	.string	"EXPON_EXPR"
	.sleb128 78
	.uleb128 0x16
	.string	"NEGATE_EXPR"
	.sleb128 79
	.uleb128 0x16
	.string	"MIN_EXPR"
	.sleb128 80
	.uleb128 0x16
	.string	"MAX_EXPR"
	.sleb128 81
	.uleb128 0x16
	.string	"ABS_EXPR"
	.sleb128 82
	.uleb128 0x16
	.string	"FFS_EXPR"
	.sleb128 83
	.uleb128 0x16
	.string	"LSHIFT_EXPR"
	.sleb128 84
	.uleb128 0x16
	.string	"RSHIFT_EXPR"
	.sleb128 85
	.uleb128 0x16
	.string	"LROTATE_EXPR"
	.sleb128 86
	.uleb128 0x16
	.string	"RROTATE_EXPR"
	.sleb128 87
	.uleb128 0x16
	.string	"BIT_IOR_EXPR"
	.sleb128 88
	.uleb128 0x16
	.string	"BIT_XOR_EXPR"
	.sleb128 89
	.uleb128 0x16
	.string	"BIT_AND_EXPR"
	.sleb128 90
	.uleb128 0x16
	.string	"BIT_ANDTC_EXPR"
	.sleb128 91
	.uleb128 0x16
	.string	"BIT_NOT_EXPR"
	.sleb128 92
	.uleb128 0x16
	.string	"TRUTH_ANDIF_EXPR"
	.sleb128 93
	.uleb128 0x16
	.string	"TRUTH_ORIF_EXPR"
	.sleb128 94
	.uleb128 0x16
	.string	"TRUTH_AND_EXPR"
	.sleb128 95
	.uleb128 0x16
	.string	"TRUTH_OR_EXPR"
	.sleb128 96
	.uleb128 0x16
	.string	"TRUTH_XOR_EXPR"
	.sleb128 97
	.uleb128 0x16
	.string	"TRUTH_NOT_EXPR"
	.sleb128 98
	.uleb128 0x16
	.string	"LT_EXPR"
	.sleb128 99
	.uleb128 0x16
	.string	"LE_EXPR"
	.sleb128 100
	.uleb128 0x16
	.string	"GT_EXPR"
	.sleb128 101
	.uleb128 0x16
	.string	"GE_EXPR"
	.sleb128 102
	.uleb128 0x16
	.string	"EQ_EXPR"
	.sleb128 103
	.uleb128 0x16
	.string	"NE_EXPR"
	.sleb128 104
	.uleb128 0x16
	.string	"UNORDERED_EXPR"
	.sleb128 105
	.uleb128 0x16
	.string	"ORDERED_EXPR"
	.sleb128 106
	.uleb128 0x16
	.string	"UNLT_EXPR"
	.sleb128 107
	.uleb128 0x16
	.string	"UNLE_EXPR"
	.sleb128 108
	.uleb128 0x16
	.string	"UNGT_EXPR"
	.sleb128 109
	.uleb128 0x16
	.string	"UNGE_EXPR"
	.sleb128 110
	.uleb128 0x16
	.string	"UNEQ_EXPR"
	.sleb128 111
	.uleb128 0x16
	.string	"IN_EXPR"
	.sleb128 112
	.uleb128 0x16
	.string	"SET_LE_EXPR"
	.sleb128 113
	.uleb128 0x16
	.string	"CARD_EXPR"
	.sleb128 114
	.uleb128 0x16
	.string	"RANGE_EXPR"
	.sleb128 115
	.uleb128 0x16
	.string	"CONVERT_EXPR"
	.sleb128 116
	.uleb128 0x16
	.string	"NOP_EXPR"
	.sleb128 117
	.uleb128 0x16
	.string	"NON_LVALUE_EXPR"
	.sleb128 118
	.uleb128 0x16
	.string	"VIEW_CONVERT_EXPR"
	.sleb128 119
	.uleb128 0x16
	.string	"SAVE_EXPR"
	.sleb128 120
	.uleb128 0x16
	.string	"UNSAVE_EXPR"
	.sleb128 121
	.uleb128 0x16
	.string	"RTL_EXPR"
	.sleb128 122
	.uleb128 0x16
	.string	"ADDR_EXPR"
	.sleb128 123
	.uleb128 0x16
	.string	"REFERENCE_EXPR"
	.sleb128 124
	.uleb128 0x16
	.string	"ENTRY_VALUE_EXPR"
	.sleb128 125
	.uleb128 0x16
	.string	"FDESC_EXPR"
	.sleb128 126
	.uleb128 0x16
	.string	"COMPLEX_EXPR"
	.sleb128 127
	.uleb128 0x16
	.string	"CONJ_EXPR"
	.sleb128 128
	.uleb128 0x16
	.string	"REALPART_EXPR"
	.sleb128 129
	.uleb128 0x16
	.string	"IMAGPART_EXPR"
	.sleb128 130
	.uleb128 0x16
	.string	"PREDECREMENT_EXPR"
	.sleb128 131
	.uleb128 0x16
	.string	"PREINCREMENT_EXPR"
	.sleb128 132
	.uleb128 0x16
	.string	"POSTDECREMENT_EXPR"
	.sleb128 133
	.uleb128 0x16
	.string	"POSTINCREMENT_EXPR"
	.sleb128 134
	.uleb128 0x16
	.string	"VA_ARG_EXPR"
	.sleb128 135
	.uleb128 0x16
	.string	"TRY_CATCH_EXPR"
	.sleb128 136
	.uleb128 0x16
	.string	"TRY_FINALLY_EXPR"
	.sleb128 137
	.uleb128 0x16
	.string	"GOTO_SUBROUTINE_EXPR"
	.sleb128 138
	.uleb128 0x16
	.string	"POPDHC_EXPR"
	.sleb128 139
	.uleb128 0x16
	.string	"POPDCC_EXPR"
	.sleb128 140
	.uleb128 0x16
	.string	"LABEL_EXPR"
	.sleb128 141
	.uleb128 0x16
	.string	"GOTO_EXPR"
	.sleb128 142
	.uleb128 0x16
	.string	"RETURN_EXPR"
	.sleb128 143
	.uleb128 0x16
	.string	"EXIT_EXPR"
	.sleb128 144
	.uleb128 0x16
	.string	"LOOP_EXPR"
	.sleb128 145
	.uleb128 0x16
	.string	"LABELED_BLOCK_EXPR"
	.sleb128 146
	.uleb128 0x16
	.string	"EXIT_BLOCK_EXPR"
	.sleb128 147
	.uleb128 0x16
	.string	"EXPR_WITH_FILE_LOCATION"
	.sleb128 148
	.uleb128 0x16
	.string	"SWITCH_EXPR"
	.sleb128 149
	.uleb128 0x16
	.string	"EXC_PTR_EXPR"
	.sleb128 150
	.uleb128 0x16
	.string	"LAST_AND_UNUSED_TREE_CODE"
	.sleb128 151
	.byte	0x0
	.uleb128 0x2
	.string	"LABEL_IDX"
	.byte	0x3
	.byte	0x31
	.long	0x2e6
	.uleb128 0x4
	.long	0x1d8c
	.string	"mongoose_gcc_DST_IDX"
	.byte	0x8
	.byte	0x3
	.byte	0x32
	.uleb128 0x7
	.string	"block"
	.byte	0x3
	.byte	0x32
	.long	0x2e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x18
	.long	.LASF8
	.byte	0x3
	.byte	0x32
	.long	0x2e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"ST"
	.byte	0x3
	.byte	0x36
	.long	0x1d96
	.uleb128 0x1b
	.string	"st"
	.byte	0x1
	.uleb128 0x1c
	.long	0x1deb
	.long	.LASF9
	.byte	0x4
	.byte	0x3
	.byte	0x5a
	.uleb128 0x16
	.string	"NOT_BUILT_IN"
	.sleb128 0
	.uleb128 0x16
	.string	"BUILT_IN_FRONTEND"
	.sleb128 1
	.uleb128 0x16
	.string	"BUILT_IN_MD"
	.sleb128 2
	.uleb128 0x16
	.string	"BUILT_IN_NORMAL"
	.sleb128 3
	.byte	0x0
	.uleb128 0x15
	.long	0x3649
	.string	"built_in_function"
	.byte	0x4
	.byte	0x3
	.byte	0x69
	.uleb128 0x16
	.string	"BUILT_IN_ALLOCA"
	.sleb128 0
	.uleb128 0x16
	.string	"BUILT_IN_ABS"
	.sleb128 1
	.uleb128 0x16
	.string	"BUILT_IN_LABS"
	.sleb128 2
	.uleb128 0x16
	.string	"BUILT_IN_FABS"
	.sleb128 3
	.uleb128 0x16
	.string	"BUILT_IN_FABSF"
	.sleb128 4
	.uleb128 0x16
	.string	"BUILT_IN_FABSL"
	.sleb128 5
	.uleb128 0x16
	.string	"BUILT_IN_LLABS"
	.sleb128 6
	.uleb128 0x16
	.string	"BUILT_IN_IMAXABS"
	.sleb128 7
	.uleb128 0x16
	.string	"BUILT_IN_CONJ"
	.sleb128 8
	.uleb128 0x16
	.string	"BUILT_IN_CONJF"
	.sleb128 9
	.uleb128 0x16
	.string	"BUILT_IN_CONJL"
	.sleb128 10
	.uleb128 0x16
	.string	"BUILT_IN_CREAL"
	.sleb128 11
	.uleb128 0x16
	.string	"BUILT_IN_CREALF"
	.sleb128 12
	.uleb128 0x16
	.string	"BUILT_IN_CREALL"
	.sleb128 13
	.uleb128 0x16
	.string	"BUILT_IN_CIMAG"
	.sleb128 14
	.uleb128 0x16
	.string	"BUILT_IN_CIMAGF"
	.sleb128 15
	.uleb128 0x16
	.string	"BUILT_IN_CIMAGL"
	.sleb128 16
	.uleb128 0x16
	.string	"BUILT_IN_DIV"
	.sleb128 17
	.uleb128 0x16
	.string	"BUILT_IN_LDIV"
	.sleb128 18
	.uleb128 0x16
	.string	"BUILT_IN_FFLOOR"
	.sleb128 19
	.uleb128 0x16
	.string	"BUILT_IN_FCEIL"
	.sleb128 20
	.uleb128 0x16
	.string	"BUILT_IN_FMOD"
	.sleb128 21
	.uleb128 0x16
	.string	"BUILT_IN_FREM"
	.sleb128 22
	.uleb128 0x16
	.string	"BUILT_IN_BZERO"
	.sleb128 23
	.uleb128 0x16
	.string	"BUILT_IN_BCOPY"
	.sleb128 24
	.uleb128 0x16
	.string	"BUILT_IN_BCMP"
	.sleb128 25
	.uleb128 0x16
	.string	"BUILT_IN_FFS"
	.sleb128 26
	.uleb128 0x16
	.string	"BUILT_IN_INDEX"
	.sleb128 27
	.uleb128 0x16
	.string	"BUILT_IN_RINDEX"
	.sleb128 28
	.uleb128 0x16
	.string	"BUILT_IN_MEMCPY"
	.sleb128 29
	.uleb128 0x16
	.string	"BUILT_IN_MEMMOVE"
	.sleb128 30
	.uleb128 0x16
	.string	"BUILT_IN_MEMCMP"
	.sleb128 31
	.uleb128 0x16
	.string	"BUILT_IN_MEMSET"
	.sleb128 32
	.uleb128 0x16
	.string	"BUILT_IN_MEMPCPY"
	.sleb128 33
	.uleb128 0x16
	.string	"BUILT_IN_STRCAT"
	.sleb128 34
	.uleb128 0x16
	.string	"BUILT_IN_STRNCAT"
	.sleb128 35
	.uleb128 0x16
	.string	"BUILT_IN_STPCPY"
	.sleb128 36
	.uleb128 0x16
	.string	"BUILT_IN_STRCPY"
	.sleb128 37
	.uleb128 0x16
	.string	"BUILT_IN_STRNCPY"
	.sleb128 38
	.uleb128 0x16
	.string	"BUILT_IN_STRCMP"
	.sleb128 39
	.uleb128 0x16
	.string	"BUILT_IN_STRNCMP"
	.sleb128 40
	.uleb128 0x16
	.string	"BUILT_IN_STRLEN"
	.sleb128 41
	.uleb128 0x16
	.string	"BUILT_IN_STRSTR"
	.sleb128 42
	.uleb128 0x16
	.string	"BUILT_IN_STRPBRK"
	.sleb128 43
	.uleb128 0x16
	.string	"BUILT_IN_STRSPN"
	.sleb128 44
	.uleb128 0x16
	.string	"BUILT_IN_STRCSPN"
	.sleb128 45
	.uleb128 0x16
	.string	"BUILT_IN_STRCHR"
	.sleb128 46
	.uleb128 0x16
	.string	"BUILT_IN_STRRCHR"
	.sleb128 47
	.uleb128 0x16
	.string	"BUILT_IN_FLOOR"
	.sleb128 48
	.uleb128 0x16
	.string	"BUILT_IN_FLOORF"
	.sleb128 49
	.uleb128 0x16
	.string	"BUILT_IN_FLOORL"
	.sleb128 50
	.uleb128 0x16
	.string	"BUILT_IN_POW"
	.sleb128 51
	.uleb128 0x16
	.string	"BUILT_IN_TAN"
	.sleb128 52
	.uleb128 0x16
	.string	"BUILT_IN_PERIPHERAL_RW_BEGIN"
	.sleb128 53
	.uleb128 0x16
	.string	"BUILT_IN_PERIPHERAL_RW_END"
	.sleb128 54
	.uleb128 0x16
	.string	"BUILT_IN_VBUF_OFFSET"
	.sleb128 55
	.uleb128 0x16
	.string	"BUILT_IN_SBUF_OFFSET"
	.sleb128 56
	.uleb128 0x16
	.string	"BUILD_IN_MUL_SHIFT_HI"
	.sleb128 57
	.uleb128 0x16
	.string	"BUILD_IN_MUL_SHIFT"
	.sleb128 58
	.uleb128 0x16
	.string	"BUILD_IN_C3_LEAD"
	.sleb128 59
	.uleb128 0x16
	.string	"BUILD_IN_C3_MAC"
	.sleb128 60
	.uleb128 0x16
	.string	"BUILD_IN_C3_MACN"
	.sleb128 61
	.uleb128 0x16
	.string	"BUILD_IN_C3_ROUND"
	.sleb128 62
	.uleb128 0x16
	.string	"BUILD_IN_C3_SAADDS"
	.sleb128 63
	.uleb128 0x16
	.string	"BUILD_IN_C3_SASUBS"
	.sleb128 64
	.uleb128 0x16
	.string	"BUILD_IN_C3_MULA"
	.sleb128 65
	.uleb128 0x16
	.string	"BUILD_IN_C3_INIT_ACC"
	.sleb128 66
	.uleb128 0x16
	.string	"BUILD_IN_C3_SAVE_ACC"
	.sleb128 67
	.uleb128 0x16
	.string	"BUILD_IN_MPY_32_16"
	.sleb128 68
	.uleb128 0x16
	.string	"BUILD_IN_C3_MACD"
	.sleb128 69
	.uleb128 0x16
	.string	"BUILD_IN_C3_MULAD"
	.sleb128 70
	.uleb128 0x16
	.string	"BUILD_IN_C3_SAADDSH"
	.sleb128 71
	.uleb128 0x16
	.string	"BUILD_IN_C3_SASUBSH"
	.sleb128 72
	.uleb128 0x16
	.string	"BUILD_IN_C3_MVFS"
	.sleb128 73
	.uleb128 0x16
	.string	"BUILD_IN_C3_INIT_ADDR"
	.sleb128 74
	.uleb128 0x16
	.string	"BUILD_IN_C3_SAVE_ADDR"
	.sleb128 75
	.uleb128 0x16
	.string	"BUILD_IN_C3_MAC_A"
	.sleb128 76
	.uleb128 0x16
	.string	"BUILD_IN_C3_MACN_A"
	.sleb128 77
	.uleb128 0x16
	.string	"BUILD_IN_C3_DMAC_A"
	.sleb128 78
	.uleb128 0x16
	.string	"BUILD_IN_C3_DMACN_A"
	.sleb128 79
	.uleb128 0x16
	.string	"BUILD_IN_C3_INIT_DACC"
	.sleb128 80
	.uleb128 0x16
	.string	"BUILD_IN_C3_SAVE_DACC"
	.sleb128 81
	.uleb128 0x16
	.string	"BUILD_IN_C3_SAADDH_A"
	.sleb128 82
	.uleb128 0x16
	.string	"BUILD_IN_C3_SASUBH_A"
	.sleb128 83
	.uleb128 0x16
	.string	"BUILD_IN_C3_SAMULSH"
	.sleb128 84
	.uleb128 0x16
	.string	"BUILD_IN_C3_MULA_A"
	.sleb128 85
	.uleb128 0x16
	.string	"BUILD_IN_C3_SAMULH_A"
	.sleb128 86
	.uleb128 0x16
	.string	"BUILD_IN_C3_PTR"
	.sleb128 87
	.uleb128 0x16
	.string	"BUILD_IN_C3_MAC_AR"
	.sleb128 88
	.uleb128 0x16
	.string	"BUILD_IN_C3_MACN_AR"
	.sleb128 89
	.uleb128 0x16
	.string	"BUILD_IN_C3_MULA_AR"
	.sleb128 90
	.uleb128 0x16
	.string	"BUILD_IN_C3_INIT_PTR"
	.sleb128 91
	.uleb128 0x16
	.string	"BUILD_IN_C3_TRBACK"
	.sleb128 92
	.uleb128 0x16
	.string	"BUILD_IN_C3_VITERBI"
	.sleb128 93
	.uleb128 0x16
	.string	"BUILD_IN_C3_DMULT"
	.sleb128 94
	.uleb128 0x16
	.string	"BUILD_IN_C3_DMULT_A"
	.sleb128 95
	.uleb128 0x16
	.string	"BUILD_IN_C3_DMULTN"
	.sleb128 96
	.uleb128 0x16
	.string	"BUILD_IN_C3_DMULTN_A"
	.sleb128 97
	.uleb128 0x16
	.string	"BUILD_IN_SET_CIRCBUF"
	.sleb128 98
	.uleb128 0x16
	.string	"BUILD_IN_RESET_CIRCBUF"
	.sleb128 99
	.uleb128 0x16
	.string	"BUILD_IN_C3_DADD"
	.sleb128 100
	.uleb128 0x16
	.string	"BUILD_IN_C3_DSUB"
	.sleb128 101
	.uleb128 0x16
	.string	"BUILD_IN_C3_FFT"
	.sleb128 102
	.uleb128 0x16
	.string	"BUILD_IN_C3_FFTLD"
	.sleb128 103
	.uleb128 0x16
	.string	"BUILD_IN_C3_FFTST"
	.sleb128 104
	.uleb128 0x16
	.string	"BUILD_IN_DEPOSIT"
	.sleb128 105
	.uleb128 0x16
	.string	"BUILD_IN_EXTRACT"
	.sleb128 106
	.uleb128 0x16
	.string	"BUILD_IN_C3_BITR"
	.sleb128 107
	.uleb128 0x16
	.string	"BUILD_IN_C3_DMAC"
	.sleb128 108
	.uleb128 0x16
	.string	"BUILD_IN_C3_DMACN"
	.sleb128 109
	.uleb128 0x16
	.string	"BUILD_IN_C3_LOAD"
	.sleb128 110
	.uleb128 0x16
	.string	"BUILD_IN_C3_STORE"
	.sleb128 111
	.uleb128 0x16
	.string	"BUILD_IN_C3_REVB"
	.sleb128 112
	.uleb128 0x16
	.string	"BUILD_IN_C3_DSHL_I"
	.sleb128 113
	.uleb128 0x16
	.string	"BUILD_IN_C3_DSHR_I"
	.sleb128 114
	.uleb128 0x16
	.string	"BUILD_IN_C3_MAC_I"
	.sleb128 115
	.uleb128 0x16
	.string	"BUILD_IN_C3_MACN_I"
	.sleb128 116
	.uleb128 0x16
	.string	"BUILD_IN_C3_MULA_I"
	.sleb128 117
	.uleb128 0x16
	.string	"BUILD_IN_C3_SAADD_A"
	.sleb128 118
	.uleb128 0x16
	.string	"BUILD_IN_C3_SADDHA"
	.sleb128 119
	.uleb128 0x16
	.string	"BUILD_IN_C3_SAADDHA_A"
	.sleb128 120
	.uleb128 0x16
	.string	"BUILD_IN_C3_SASUB_A"
	.sleb128 121
	.uleb128 0x16
	.string	"BUILD_IN_COPY_ADDR"
	.sleb128 122
	.uleb128 0x16
	.string	"BUILD_IN_SET_ADDR"
	.sleb128 123
	.uleb128 0x16
	.string	"BUILT_IN_C2_MVGR_G2R"
	.sleb128 124
	.uleb128 0x16
	.string	"BUILT_IN_C2_MVGR_R2G"
	.sleb128 125
	.uleb128 0x16
	.string	"BUILT_IN_C2_MVGR_G2S"
	.sleb128 126
	.uleb128 0x16
	.string	"BUILT_IN_C2_MVGR_S2G"
	.sleb128 127
	.uleb128 0x16
	.string	"BUILT_IN_C2_MVGC_C2G"
	.sleb128 128
	.uleb128 0x16
	.string	"BUILT_IN_C2_MVGC_G2C"
	.sleb128 129
	.uleb128 0x16
	.string	"BUILT_IN_C2_LD_V"
	.sleb128 130
	.uleb128 0x16
	.string	"BUILT_IN_C2_LD_G"
	.sleb128 131
	.uleb128 0x16
	.string	"BUILT_IN_C2_LD_S"
	.sleb128 132
	.uleb128 0x16
	.string	"BUILT_IN_C2_ST_V"
	.sleb128 133
	.uleb128 0x16
	.string	"BUILT_IN_C2_ST_G"
	.sleb128 134
	.uleb128 0x16
	.string	"BUILT_IN_C2_LD_G_IMM"
	.sleb128 135
	.uleb128 0x16
	.string	"BUILT_IN_C2_LD_C_IMM"
	.sleb128 136
	.uleb128 0x16
	.string	"BUILT_IN_C2_LD_V_IMM"
	.sleb128 137
	.uleb128 0x16
	.string	"BUILT_IN_C2_ST_V_IMM"
	.sleb128 138
	.uleb128 0x16
	.string	"BUILT_IN_C2_ST_C_IMM"
	.sleb128 139
	.uleb128 0x16
	.string	"BUILT_IN_C2_ST_G_IMM"
	.sleb128 140
	.uleb128 0x16
	.string	"BUILT_IN_C2_VADDS"
	.sleb128 141
	.uleb128 0x16
	.string	"BUILT_IN_C2_VSUBS"
	.sleb128 142
	.uleb128 0x16
	.string	"BUILT_IN_C2_VMUL"
	.sleb128 143
	.uleb128 0x16
	.string	"BUILT_IN_C2_VNEG"
	.sleb128 144
	.uleb128 0x16
	.string	"BUILT_IN_C2_VSHFT"
	.sleb128 145
	.uleb128 0x16
	.string	"BUILT_IN_C2_VCLP"
	.sleb128 146
	.uleb128 0x16
	.string	"BUILT_IN_C2_VCLG"
	.sleb128 147
	.uleb128 0x16
	.string	"BUILT_IN_C2_VCMOV"
	.sleb128 148
	.uleb128 0x16
	.string	"BUILT_IN_C2_LCZERO"
	.sleb128 149
	.uleb128 0x16
	.string	"BUILT_IN_C2_VRND"
	.sleb128 150
	.uleb128 0x16
	.string	"BUILT_IN_C2_VSPAS"
	.sleb128 151
	.uleb128 0x16
	.string	"BUILT_IN_C2_VSPEL"
	.sleb128 152
	.uleb128 0x16
	.string	"BUILT_IN_C2_VSPEL_MAC"
	.sleb128 153
	.uleb128 0x16
	.string	"BUILT_IN_C2_MMUL"
	.sleb128 154
	.uleb128 0x16
	.string	"BUILT_IN_C2_VMOV"
	.sleb128 155
	.uleb128 0x16
	.string	"BUILT_IN_C2_VCOPY"
	.sleb128 156
	.uleb128 0x16
	.string	"BUILT_IN_C2_VCMPR"
	.sleb128 157
	.uleb128 0x16
	.string	"BUILT_IN_C2_SAD"
	.sleb128 158
	.uleb128 0x16
	.string	"BUILT_IN_C2_SAD_TMP"
	.sleb128 159
	.uleb128 0x16
	.string	"BUILT_IN_C2_SATD"
	.sleb128 160
	.uleb128 0x16
	.string	"BUILT_IN_C2_INTRA"
	.sleb128 161
	.uleb128 0x16
	.string	"BUILT_IN_C2_MVSEL"
	.sleb128 162
	.uleb128 0x16
	.string	"BUILT_IN_C2_BCST"
	.sleb128 163
	.uleb128 0x16
	.string	"BUILT_IN_C2_VLCS_R"
	.sleb128 164
	.uleb128 0x16
	.string	"BUILT_IN_C2_VLCS"
	.sleb128 165
	.uleb128 0x16
	.string	"BUILT_IN_C2_ADDS"
	.sleb128 166
	.uleb128 0x16
	.string	"BUILT_IN_C2_ADDS_R"
	.sleb128 167
	.uleb128 0x16
	.string	"BUILT_IN_C2_SUBS"
	.sleb128 168
	.uleb128 0x16
	.string	"BUILT_IN_C2_SUBS_R"
	.sleb128 169
	.uleb128 0x16
	.string	"BUILT_IN_C2_MULS"
	.sleb128 170
	.uleb128 0x16
	.string	"BUILT_IN_C2_MADS"
	.sleb128 171
	.uleb128 0x16
	.string	"BUILT_IN_C2_SMADS"
	.sleb128 172
	.uleb128 0x16
	.string	"BUILT_IN_C2_CMOV"
	.sleb128 173
	.uleb128 0x16
	.string	"BUILT_IN_C2_MOV"
	.sleb128 174
	.uleb128 0x16
	.string	"BUILT_IN_C2_MOV_R"
	.sleb128 175
	.uleb128 0x16
	.string	"BUILT_IN_C2_CLP"
	.sleb128 176
	.uleb128 0x16
	.string	"BUILT_IN_C2_CHKRNG"
	.sleb128 177
	.uleb128 0x16
	.string	"BUILT_IN_C2_SCOND"
	.sleb128 178
	.uleb128 0x16
	.string	"BUILT_IN_C2_SCOND_R_WB"
	.sleb128 179
	.uleb128 0x16
	.string	"BUILT_IN_C2_SCOND_R"
	.sleb128 180
	.uleb128 0x16
	.string	"BUILT_IN_C2_SCOND_BR"
	.sleb128 181
	.uleb128 0x16
	.string	"BUILT_IN_C2_SCOND_BR_R"
	.sleb128 182
	.uleb128 0x16
	.string	"BUILT_IN_C2_BOP"
	.sleb128 183
	.uleb128 0x16
	.string	"BUILT_IN_C2_BDEP"
	.sleb128 184
	.uleb128 0x16
	.string	"BUILT_IN_C2_WRAP"
	.sleb128 185
	.uleb128 0x16
	.string	"BUILT_IN_C2_BXTR"
	.sleb128 186
	.uleb128 0x16
	.string	"BUILT_IN_C2_SUM4"
	.sleb128 187
	.uleb128 0x16
	.string	"BUILT_IN_C2_SUM3_SADDR"
	.sleb128 188
	.uleb128 0x16
	.string	"BUILT_IN_C2_SUM4_R"
	.sleb128 189
	.uleb128 0x16
	.string	"BUILT_IN_C2_MED"
	.sleb128 190
	.uleb128 0x16
	.string	"BUILT_IN_C2_GSUMS"
	.sleb128 191
	.uleb128 0x16
	.string	"BUILT_IN_C2_CLZOB"
	.sleb128 192
	.uleb128 0x16
	.string	"BUILT_IN_C2_THCTRL"
	.sleb128 193
	.uleb128 0x16
	.string	"BUILT_IN_C2_BR_F"
	.sleb128 194
	.uleb128 0x16
	.string	"BUILT_IN_C2_BR_T"
	.sleb128 195
	.uleb128 0x16
	.string	"BUILT_IN_C2_LD_V2G"
	.sleb128 196
	.uleb128 0x16
	.string	"BUILT_IN_C2_LD_V2G_IMM"
	.sleb128 197
	.uleb128 0x16
	.string	"BUILT_IN_C2_ST_G2V"
	.sleb128 198
	.uleb128 0x16
	.string	"BUILT_IN_C2_ST_G2V_IMM"
	.sleb128 199
	.uleb128 0x16
	.string	"BUILT_IN_C2_MVGR_R2S"
	.sleb128 200
	.uleb128 0x16
	.string	"BUILT_IN_C2_FORK"
	.sleb128 201
	.uleb128 0x16
	.string	"BUILT_IN_C2_JOINT"
	.sleb128 202
	.uleb128 0x16
	.string	"BUILT_IN_C2_THREAD_MAJOR"
	.sleb128 203
	.uleb128 0x16
	.string	"BUILT_IN_C2_THREAD_MINOR"
	.sleb128 204
	.uleb128 0x16
	.string	"BUILT_IN_SQRT"
	.sleb128 205
	.uleb128 0x16
	.string	"BUILT_IN_SIN"
	.sleb128 206
	.uleb128 0x16
	.string	"BUILT_IN_COS"
	.sleb128 207
	.uleb128 0x16
	.string	"BUILT_IN_EXP"
	.sleb128 208
	.uleb128 0x16
	.string	"BUILT_IN_LOG"
	.sleb128 209
	.uleb128 0x16
	.string	"BUILT_IN_SQRTF"
	.sleb128 210
	.uleb128 0x16
	.string	"BUILT_IN_SINF"
	.sleb128 211
	.uleb128 0x16
	.string	"BUILT_IN_COSF"
	.sleb128 212
	.uleb128 0x16
	.string	"BUILT_IN_EXPF"
	.sleb128 213
	.uleb128 0x16
	.string	"BUILT_IN_LOGF"
	.sleb128 214
	.uleb128 0x16
	.string	"BUILT_IN_SQRTL"
	.sleb128 215
	.uleb128 0x16
	.string	"BUILT_IN_SINL"
	.sleb128 216
	.uleb128 0x16
	.string	"BUILT_IN_COSL"
	.sleb128 217
	.uleb128 0x16
	.string	"BUILT_IN_EXPL"
	.sleb128 218
	.uleb128 0x16
	.string	"BUILT_IN_LOGL"
	.sleb128 219
	.uleb128 0x16
	.string	"BUILT_IN_INF"
	.sleb128 220
	.uleb128 0x16
	.string	"BUILT_IN_INFF"
	.sleb128 221
	.uleb128 0x16
	.string	"BUILT_IN_INFL"
	.sleb128 222
	.uleb128 0x16
	.string	"BUILT_IN_HUGE_VAL"
	.sleb128 223
	.uleb128 0x16
	.string	"BUILT_IN_HUGE_VALF"
	.sleb128 224
	.uleb128 0x16
	.string	"BUILT_IN_HUGE_VALL"
	.sleb128 225
	.uleb128 0x16
	.string	"BUILT_IN_NAN"
	.sleb128 226
	.uleb128 0x16
	.string	"BUILT_IN_NANF"
	.sleb128 227
	.uleb128 0x16
	.string	"BUILT_IN_NANL"
	.sleb128 228
	.uleb128 0x16
	.string	"BUILT_IN_NANS"
	.sleb128 229
	.uleb128 0x16
	.string	"BUILT_IN_NANSF"
	.sleb128 230
	.uleb128 0x16
	.string	"BUILT_IN_NANSL"
	.sleb128 231
	.uleb128 0x16
	.string	"BUILT_IN_SAVEREGS"
	.sleb128 232
	.uleb128 0x16
	.string	"BUILT_IN_CLASSIFY_TYPE"
	.sleb128 233
	.uleb128 0x16
	.string	"BUILT_IN_NEXT_ARG"
	.sleb128 234
	.uleb128 0x16
	.string	"BUILT_IN_ARGS_INFO"
	.sleb128 235
	.uleb128 0x16
	.string	"BUILT_IN_CONSTANT_P"
	.sleb128 236
	.uleb128 0x16
	.string	"BUILT_IN_FRAME_ADDRESS"
	.sleb128 237
	.uleb128 0x16
	.string	"BUILT_IN_RETURN_ADDRESS"
	.sleb128 238
	.uleb128 0x16
	.string	"BUILT_IN_AGGREGATE_INCOMING_ADDRESS"
	.sleb128 239
	.uleb128 0x16
	.string	"BUILT_IN_APPLY_ARGS"
	.sleb128 240
	.uleb128 0x16
	.string	"BUILT_IN_APPLY"
	.sleb128 241
	.uleb128 0x16
	.string	"BUILT_IN_RETURN"
	.sleb128 242
	.uleb128 0x16
	.string	"BUILT_IN_SETJMP"
	.sleb128 243
	.uleb128 0x16
	.string	"BUILT_IN_LONGJMP"
	.sleb128 244
	.uleb128 0x16
	.string	"BUILT_IN_TRAP"
	.sleb128 245
	.uleb128 0x16
	.string	"BUILT_IN_PREFETCH"
	.sleb128 246
	.uleb128 0x16
	.string	"BUILT_IN_PRINTF"
	.sleb128 247
	.uleb128 0x16
	.string	"BUILT_IN_PUTCHAR"
	.sleb128 248
	.uleb128 0x16
	.string	"BUILT_IN_PUTS"
	.sleb128 249
	.uleb128 0x16
	.string	"BUILT_IN_SNPRINTF"
	.sleb128 250
	.uleb128 0x16
	.string	"BUILT_IN_SPRINTF"
	.sleb128 251
	.uleb128 0x16
	.string	"BUILT_IN_SCANF"
	.sleb128 252
	.uleb128 0x16
	.string	"BUILT_IN_SSCANF"
	.sleb128 253
	.uleb128 0x16
	.string	"BUILT_IN_VPRINTF"
	.sleb128 254
	.uleb128 0x16
	.string	"BUILT_IN_VSCANF"
	.sleb128 255
	.uleb128 0x16
	.string	"BUILT_IN_VSSCANF"
	.sleb128 256
	.uleb128 0x16
	.string	"BUILT_IN_VSNPRINTF"
	.sleb128 257
	.uleb128 0x16
	.string	"BUILT_IN_VSPRINTF"
	.sleb128 258
	.uleb128 0x16
	.string	"BUILT_IN_FPUTC"
	.sleb128 259
	.uleb128 0x16
	.string	"BUILT_IN_FPUTS"
	.sleb128 260
	.uleb128 0x16
	.string	"BUILT_IN_FWRITE"
	.sleb128 261
	.uleb128 0x16
	.string	"BUILT_IN_FPRINTF"
	.sleb128 262
	.uleb128 0x16
	.string	"BUILT_IN_PUTCHAR_UNLOCKED"
	.sleb128 263
	.uleb128 0x16
	.string	"BUILT_IN_PUTS_UNLOCKED"
	.sleb128 264
	.uleb128 0x16
	.string	"BUILT_IN_PRINTF_UNLOCKED"
	.sleb128 265
	.uleb128 0x16
	.string	"BUILT_IN_FPUTC_UNLOCKED"
	.sleb128 266
	.uleb128 0x16
	.string	"BUILT_IN_FPUTS_UNLOCKED"
	.sleb128 267
	.uleb128 0x16
	.string	"BUILT_IN_FWRITE_UNLOCKED"
	.sleb128 268
	.uleb128 0x16
	.string	"BUILT_IN_ISGREATER"
	.sleb128 269
	.uleb128 0x16
	.string	"BUILT_IN_ISGREATEREQUAL"
	.sleb128 270
	.uleb128 0x16
	.string	"BUILT_IN_ISLESS"
	.sleb128 271
	.uleb128 0x16
	.string	"BUILT_IN_ISLESSEQUAL"
	.sleb128 272
	.uleb128 0x16
	.string	"BUILT_IN_ISLESSGREATER"
	.sleb128 273
	.uleb128 0x16
	.string	"BUILT_IN_ISUNORDERED"
	.sleb128 274
	.uleb128 0x16
	.string	"BUILT_IN_UNWIND_INIT"
	.sleb128 275
	.uleb128 0x16
	.string	"BUILT_IN_DWARF_CFA"
	.sleb128 276
	.uleb128 0x16
	.string	"BUILT_IN_DWARF_SP_COLUMN"
	.sleb128 277
	.uleb128 0x16
	.string	"BUILT_IN_INIT_DWARF_REG_SIZES"
	.sleb128 278
	.uleb128 0x16
	.string	"BUILT_IN_FROB_RETURN_ADDR"
	.sleb128 279
	.uleb128 0x16
	.string	"BUILT_IN_EXTRACT_RETURN_ADDR"
	.sleb128 280
	.uleb128 0x16
	.string	"BUILT_IN_EH_RETURN"
	.sleb128 281
	.uleb128 0x16
	.string	"BUILT_IN_EH_RETURN_DATA_REGNO"
	.sleb128 282
	.uleb128 0x16
	.string	"BUILT_IN_VA_START"
	.sleb128 283
	.uleb128 0x16
	.string	"BUILT_IN_STDARG_START"
	.sleb128 284
	.uleb128 0x16
	.string	"BUILT_IN_VA_END"
	.sleb128 285
	.uleb128 0x16
	.string	"BUILT_IN_VA_COPY"
	.sleb128 286
	.uleb128 0x16
	.string	"BUILT_IN_EXPECT"
	.sleb128 287
	.uleb128 0x16
	.string	"BUILT_IN_EXTEND_POINTER"
	.sleb128 288
	.uleb128 0x16
	.string	"BUILT_IN_NEW"
	.sleb128 289
	.uleb128 0x16
	.string	"BUILT_IN_VEC_NEW"
	.sleb128 290
	.uleb128 0x16
	.string	"BUILT_IN_DELETE"
	.sleb128 291
	.uleb128 0x16
	.string	"BUILT_IN_VEC_DELETE"
	.sleb128 292
	.uleb128 0x16
	.string	"BUILT_IN_ABORT"
	.sleb128 293
	.uleb128 0x16
	.string	"BUILT_IN_EXIT"
	.sleb128 294
	.uleb128 0x16
	.string	"BUILT_IN__EXIT"
	.sleb128 295
	.uleb128 0x16
	.string	"BUILT_IN__EXIT2"
	.sleb128 296
	.uleb128 0x16
	.string	"END_BUILTINS"
	.sleb128 297
	.byte	0x0
	.uleb128 0x4
	.long	0x3925
	.string	"tree_common"
	.byte	0x10
	.byte	0x3
	.byte	0x8e
	.uleb128 0x7
	.string	"chain"
	.byte	0x3
	.byte	0x8f
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x18
	.long	.LASF4
	.byte	0x3
	.byte	0x90
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x5
	.long	.LASF0
	.byte	0x3
	.byte	0x92
	.long	0x141d
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"side_effects_flag"
	.byte	0x3
	.byte	0x94
	.long	0x2e6
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"constant_flag"
	.byte	0x3
	.byte	0x95
	.long	0x2e6
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"addressable_flag"
	.byte	0x3
	.byte	0x96
	.long	0x2e6
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"volatile_flag"
	.byte	0x3
	.byte	0x97
	.long	0x2e6
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"readonly_flag"
	.byte	0x3
	.byte	0x98
	.long	0x2e6
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"unsigned_flag"
	.byte	0x3
	.byte	0x99
	.long	0x2e6
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"asm_written_flag"
	.byte	0x3
	.byte	0x9a
	.long	0x2e6
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"unused_0"
	.byte	0x3
	.byte	0x9b
	.long	0x2e6
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"used_flag"
	.byte	0x3
	.byte	0x9d
	.long	0x2e6
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"nothrow_flag"
	.byte	0x3
	.byte	0x9e
	.long	0x2e6
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"static_flag"
	.byte	0x3
	.byte	0x9f
	.long	0x2e6
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"public_flag"
	.byte	0x3
	.byte	0xa0
	.long	0x2e6
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"private_flag"
	.byte	0x3
	.byte	0xa1
	.long	0x2e6
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"protected_flag"
	.byte	0x3
	.byte	0xa2
	.long	0x2e6
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"bounded_flag"
	.byte	0x3
	.byte	0xa3
	.long	0x2e6
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"deprecated_flag"
	.byte	0x3
	.byte	0xa4
	.long	0x2e6
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.long	.LASF10
	.byte	0x3
	.byte	0xa6
	.long	0x2e6
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.long	.LASF11
	.byte	0x3
	.byte	0xa7
	.long	0x2e6
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.long	.LASF12
	.byte	0x3
	.byte	0xa8
	.long	0x2e6
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.long	.LASF13
	.byte	0x3
	.byte	0xa9
	.long	0x2e6
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.long	.LASF14
	.byte	0x3
	.byte	0xaa
	.long	0x2e6
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.long	.LASF15
	.byte	0x3
	.byte	0xab
	.long	0x2e6
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.long	.LASF16
	.byte	0x3
	.byte	0xac
	.long	0x2e6
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"unused_1"
	.byte	0x3
	.byte	0xad
	.long	0x2e6
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"sbuf"
	.byte	0x3
	.byte	0xaf
	.long	0x2e6
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"sdram"
	.byte	0x3
	.byte	0xb0
	.long	0x2e6
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"v1buf"
	.byte	0x3
	.byte	0xb1
	.long	0x2e6
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"v2buf"
	.byte	0x3
	.byte	0xb2
	.long	0x2e6
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"v4buf"
	.byte	0x3
	.byte	0xb3
	.long	0x2e6
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x1d
	.long	0x3961
	.string	"tree_int_cst_lowhi"
	.byte	0x10
	.byte	0x3
	.value	0x2f6
	.uleb128 0x10
	.string	"low"
	.byte	0x3
	.value	0x2f7
	.long	0x36b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x10
	.string	"high"
	.byte	0x3
	.value	0x2f8
	.long	0x35a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x1d
	.long	0x39a9
	.string	"tree_int_cst"
	.byte	0x24
	.byte	0x3
	.value	0x2ef
	.uleb128 0x1e
	.long	.LASF1
	.byte	0x3
	.value	0x2f0
	.long	0x3649
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x10
	.string	"rtl"
	.byte	0x3
	.value	0x2f1
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x10
	.string	"int_cst"
	.byte	0x3
	.value	0x2f9
	.long	0x3925
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x1d
	.long	0x39f7
	.string	"tree_real_cst"
	.byte	0x18
	.byte	0x3
	.value	0x30b
	.uleb128 0x1e
	.long	.LASF1
	.byte	0x3
	.value	0x30c
	.long	0x3649
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x10
	.string	"rtl"
	.byte	0x3
	.value	0x30d
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x10
	.string	"real_cst_ptr"
	.byte	0x3
	.value	0x30e
	.long	0x3a04
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x1b
	.string	"real_value"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x39f7
	.uleb128 0x1d
	.long	0x3a6d
	.string	"tree_string"
	.byte	0x20
	.byte	0x3
	.value	0x31f
	.uleb128 0x1e
	.long	.LASF1
	.byte	0x3
	.value	0x320
	.long	0x3649
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x10
	.string	"rtl"
	.byte	0x3
	.value	0x321
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x10
	.string	"length"
	.byte	0x3
	.value	0x322
	.long	0x2df
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x1e
	.long	.LASF17
	.byte	0x3
	.value	0x323
	.long	0x2cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x10
	.string	"st"
	.byte	0x3
	.value	0x325
	.long	0x3a6d
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1d8c
	.uleb128 0x1d
	.long	0x3ac8
	.string	"tree_complex"
	.byte	0x1c
	.byte	0x3
	.value	0x32e
	.uleb128 0x1e
	.long	.LASF1
	.byte	0x3
	.value	0x32f
	.long	0x3649
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x10
	.string	"rtl"
	.byte	0x3
	.value	0x330
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x10
	.string	"real"
	.byte	0x3
	.value	0x331
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x10
	.string	"imag"
	.byte	0x3
	.value	0x332
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x1d
	.long	0x3b0b
	.string	"tree_vector"
	.byte	0x18
	.byte	0x3
	.value	0x340
	.uleb128 0x1e
	.long	.LASF1
	.byte	0x3
	.value	0x341
	.long	0x3649
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x10
	.string	"rtl"
	.byte	0x3
	.value	0x342
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x1e
	.long	.LASF18
	.byte	0x3
	.value	0x343
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xf
	.long	0x3b49
	.long	.LASF19
	.byte	0xc
	.byte	0x6
	.byte	0x19
	.uleb128 0x7
	.string	"str"
	.byte	0x6
	.byte	0x1c
	.long	0x650
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"len"
	.byte	0x6
	.byte	0x1d
	.long	0x2e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"hash_value"
	.byte	0x6
	.byte	0x1e
	.long	0x2e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x1d
	.long	0x3b80
	.string	"tree_identifier"
	.byte	0x1c
	.byte	0x3
	.value	0x35f
	.uleb128 0x1e
	.long	.LASF1
	.byte	0x3
	.value	0x360
	.long	0x3649
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x10
	.string	"id"
	.byte	0x3
	.value	0x361
	.long	0x3b0b
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x1d
	.long	0x3bc1
	.string	"tree_list"
	.byte	0x18
	.byte	0x3
	.value	0x369
	.uleb128 0x1e
	.long	.LASF1
	.byte	0x3
	.value	0x36a
	.long	0x3649
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1e
	.long	.LASF20
	.byte	0x3
	.value	0x36b
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x1e
	.long	.LASF21
	.byte	0x3
	.value	0x36c
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x1d
	.long	0x3c02
	.string	"tree_vec"
	.byte	0x18
	.byte	0x3
	.value	0x377
	.uleb128 0x1e
	.long	.LASF1
	.byte	0x3
	.value	0x378
	.long	0x3649
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x10
	.string	"length"
	.byte	0x3
	.value	0x379
	.long	0x2df
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x10
	.string	"a"
	.byte	0x3
	.value	0x37a
	.long	0x3c02
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x12
	.long	0x3c12
	.long	0x1e5
	.uleb128 0x13
	.long	0x2ed
	.byte	0x0
	.byte	0x0
	.uleb128 0x1d
	.long	0x3c5e
	.string	"tree_exp"
	.byte	0x18
	.byte	0x3
	.value	0x3bd
	.uleb128 0x1e
	.long	.LASF1
	.byte	0x3
	.value	0x3be
	.long	0x3649
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x10
	.string	"complexity"
	.byte	0x3
	.value	0x3bf
	.long	0x2df
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x10
	.string	"operands"
	.byte	0x3
	.value	0x3c2
	.long	0x3c02
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x1d
	.long	0x3d4e
	.string	"tree_block"
	.byte	0x2c
	.byte	0x3
	.value	0x3f3
	.uleb128 0x1e
	.long	.LASF1
	.byte	0x3
	.value	0x3f4
	.long	0x3649
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1f
	.string	"handler_block_flag"
	.byte	0x3
	.value	0x3f6
	.long	0x2e6
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x20
	.long	.LASF22
	.byte	0x3
	.value	0x3f7
	.long	0x2e6
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x1f
	.string	"block_num"
	.byte	0x3
	.value	0x3f8
	.long	0x2e6
	.byte	0x4
	.byte	0x1e
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x10
	.string	"vars"
	.byte	0x3
	.value	0x3fa
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x10
	.string	"subblocks"
	.byte	0x3
	.value	0x3fb
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x10
	.string	"supercontext"
	.byte	0x3
	.value	0x3fc
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x1e
	.long	.LASF23
	.byte	0x3
	.value	0x3fd
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x10
	.string	"fragment_origin"
	.byte	0x3
	.value	0x3fe
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x10
	.string	"fragment_chain"
	.byte	0x3
	.value	0x3ff
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x21
	.long	0x3d91
	.string	"tree_type_symtab"
	.byte	0x4
	.byte	0x3
	.value	0x562
	.uleb128 0xa
	.string	"address"
	.byte	0x3
	.value	0x563
	.long	0x2df
	.uleb128 0x9
	.long	.LASF17
	.byte	0x3
	.value	0x564
	.long	0x3c3
	.uleb128 0xa
	.string	"die"
	.byte	0x3
	.value	0x565
	.long	0x3d9e
	.byte	0x0
	.uleb128 0x1b
	.string	"die_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x3d91
	.uleb128 0x1d
	.long	0x40ea
	.string	"tree_type"
	.byte	0x74
	.byte	0x3
	.value	0x53f
	.uleb128 0x1e
	.long	.LASF1
	.byte	0x3
	.value	0x540
	.long	0x3649
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x10
	.string	"values"
	.byte	0x3
	.value	0x541
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x10
	.string	"size"
	.byte	0x3
	.value	0x542
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x1e
	.long	.LASF24
	.byte	0x3
	.value	0x543
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x1e
	.long	.LASF25
	.byte	0x3
	.value	0x544
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x10
	.string	"uid"
	.byte	0x3
	.value	0x545
	.long	0x2e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.string	"precision"
	.byte	0x3
	.value	0x547
	.long	0x2e6
	.byte	0x4
	.byte	0x9
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.string	"mode"
	.byte	0x3
	.value	0x548
	.long	0x711
	.byte	0x4
	.byte	0x7
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.long	.LASF26
	.byte	0x3
	.value	0x54a
	.long	0x2e6
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.string	"no_force_blk_flag"
	.byte	0x3
	.value	0x54b
	.long	0x2e6
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.string	"needs_constructing_flag"
	.byte	0x3
	.value	0x54c
	.long	0x2e6
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.string	"transparent_union_flag"
	.byte	0x3
	.value	0x54d
	.long	0x2e6
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.string	"packed_flag"
	.byte	0x3
	.value	0x54e
	.long	0x2e6
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.string	"restrict_flag"
	.byte	0x3
	.value	0x54f
	.long	0x2e6
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.long	.LASF27
	.byte	0x3
	.value	0x550
	.long	0x2e6
	.byte	0x4
	.byte	0x2
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.long	.LASF10
	.byte	0x3
	.value	0x552
	.long	0x2e6
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.long	.LASF11
	.byte	0x3
	.value	0x553
	.long	0x2e6
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.long	.LASF12
	.byte	0x3
	.value	0x554
	.long	0x2e6
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.long	.LASF13
	.byte	0x3
	.value	0x555
	.long	0x2e6
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.long	.LASF14
	.byte	0x3
	.value	0x556
	.long	0x2e6
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.long	.LASF15
	.byte	0x3
	.value	0x557
	.long	0x2e6
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.long	.LASF16
	.byte	0x3
	.value	0x558
	.long	0x2e6
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.long	.LASF28
	.byte	0x3
	.value	0x559
	.long	0x2e6
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.string	"defer_expansion"
	.byte	0x3
	.value	0x55c
	.long	0x2e6
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x10
	.string	"align"
	.byte	0x3
	.value	0x55f
	.long	0x2e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x10
	.string	"pointer_to"
	.byte	0x3
	.value	0x560
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x10
	.string	"reference_to"
	.byte	0x3
	.value	0x561
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x10
	.string	"symtab"
	.byte	0x3
	.value	0x566
	.long	0x3d4e
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x1e
	.long	.LASF29
	.byte	0x3
	.value	0x568
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x10
	.string	"minval"
	.byte	0x3
	.value	0x569
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x10
	.string	"maxval"
	.byte	0x3
	.value	0x56a
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x10
	.string	"next_variant"
	.byte	0x3
	.value	0x56b
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x10
	.string	"main_variant"
	.byte	0x3
	.value	0x56c
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x10
	.string	"binfo"
	.byte	0x3
	.value	0x56d
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x1e
	.long	.LASF30
	.byte	0x3
	.value	0x56e
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x10
	.string	"alias_set"
	.byte	0x3
	.value	0x56f
	.long	0x35a
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x1e
	.long	.LASF31
	.byte	0x3
	.value	0x571
	.long	0x411b
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x10
	.string	"ty_idx"
	.byte	0x3
	.value	0x573
	.long	0x2e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x10
	.string	"field_ids_used"
	.byte	0x3
	.value	0x574
	.long	0x2e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x10
	.string	"dst_id"
	.byte	0x3
	.value	0x575
	.long	0x1d50
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.byte	0x0
	.uleb128 0x1d
	.long	0x411b
	.string	"lang_type"
	.byte	0x8
	.byte	0x3
	.value	0x571
	.uleb128 0x7
	.string	"len"
	.byte	0x8
	.byte	0x80
	.long	0x2df
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"elts"
	.byte	0x8
	.byte	0x81
	.long	0x3c02
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x40ea
	.uleb128 0x1d
	.long	0x4166
	.string	"tree_decl_u1_a"
	.byte	0x4
	.byte	0x3
	.value	0x7f0
	.uleb128 0x1f
	.string	"align"
	.byte	0x3
	.value	0x7f1
	.long	0x2e6
	.byte	0x4
	.byte	0x18
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1f
	.string	"off_align"
	.byte	0x3
	.value	0x7f2
	.long	0x2e6
	.byte	0x4
	.byte	0x8
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x21
	.long	0x419b
	.string	"tree_decl_u1"
	.byte	0x8
	.byte	0x3
	.value	0x7e7
	.uleb128 0xa
	.string	"f"
	.byte	0x3
	.value	0x7ea
	.long	0x1deb
	.uleb128 0xa
	.string	"i"
	.byte	0x3
	.value	0x7ed
	.long	0x35a
	.uleb128 0xa
	.string	"a"
	.byte	0x3
	.value	0x7f3
	.long	0x4121
	.byte	0x0
	.uleb128 0x21
	.long	0x41da
	.string	"tree_decl_u2"
	.byte	0x4
	.byte	0x3
	.value	0x808
	.uleb128 0xa
	.string	"f"
	.byte	0x3
	.value	0x809
	.long	0x41e0
	.uleb128 0xa
	.string	"r"
	.byte	0x3
	.value	0x80a
	.long	0x9d
	.uleb128 0xa
	.string	"t"
	.byte	0x3
	.value	0x80b
	.long	0x1e5
	.uleb128 0xa
	.string	"i"
	.byte	0x3
	.value	0x80c
	.long	0x2df
	.byte	0x0
	.uleb128 0x22
	.long	.LASF32
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x41da
	.uleb128 0x23
	.long	0x421e
	.byte	0x4
	.byte	0x3
	.value	0x81e
	.uleb128 0xa
	.string	"st"
	.byte	0x3
	.value	0x81f
	.long	0x3a6d
	.uleb128 0xa
	.string	"label_idx"
	.byte	0x3
	.value	0x820
	.long	0x1d3f
	.uleb128 0xa
	.string	"field_id"
	.byte	0x3
	.value	0x821
	.long	0x2e6
	.byte	0x0
	.uleb128 0x23
	.long	0x4234
	.byte	0x4
	.byte	0x3
	.value	0x823
	.uleb128 0xa
	.string	"st2"
	.byte	0x3
	.value	0x824
	.long	0x3a6d
	.byte	0x0
	.uleb128 0x1d
	.long	0x495e
	.string	"tree_decl"
	.byte	0x94
	.byte	0x3
	.value	0x7a0
	.uleb128 0x1e
	.long	.LASF1
	.byte	0x3
	.value	0x7a1
	.long	0x3649
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x10
	.string	"locus"
	.byte	0x3
	.value	0x7a2
	.long	0x140b
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x10
	.string	"uid"
	.byte	0x3
	.value	0x7a3
	.long	0x2e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x10
	.string	"size"
	.byte	0x3
	.value	0x7a4
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x1f
	.string	"mode"
	.byte	0x3
	.value	0x7a5
	.long	0x711
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.string	"external_flag"
	.byte	0x3
	.value	0x7a7
	.long	0x2e6
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.string	"nonlocal_flag"
	.byte	0x3
	.value	0x7a8
	.long	0x2e6
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.string	"regdecl_flag"
	.byte	0x3
	.value	0x7a9
	.long	0x2e6
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.string	"inline_flag"
	.byte	0x3
	.value	0x7aa
	.long	0x2e6
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.string	"bit_field_flag"
	.byte	0x3
	.value	0x7ab
	.long	0x2e6
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.string	"virtual_flag"
	.byte	0x3
	.value	0x7ac
	.long	0x2e6
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.string	"ignored_flag"
	.byte	0x3
	.value	0x7ad
	.long	0x2e6
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x20
	.long	.LASF22
	.byte	0x3
	.value	0x7ae
	.long	0x2e6
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.string	"sbuf_flag"
	.byte	0x3
	.value	0x7b2
	.long	0x2e6
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.string	"sdram_flag"
	.byte	0x3
	.value	0x7b3
	.long	0x2e6
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.string	"v1buf_flag"
	.byte	0x3
	.value	0x7b4
	.long	0x2e6
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.string	"v2buf_flag"
	.byte	0x3
	.value	0x7b5
	.long	0x2e6
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.string	"v4buf_flag"
	.byte	0x3
	.value	0x7b6
	.long	0x2e6
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.string	"in_system_header_flag"
	.byte	0x3
	.value	0x7ba
	.long	0x2e6
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.string	"common_flag"
	.byte	0x3
	.value	0x7bb
	.long	0x2e6
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.string	"defer_output"
	.byte	0x3
	.value	0x7bc
	.long	0x2e6
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.string	"transparent_union"
	.byte	0x3
	.value	0x7bd
	.long	0x2e6
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.string	"static_ctor_flag"
	.byte	0x3
	.value	0x7be
	.long	0x2e6
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.string	"static_dtor_flag"
	.byte	0x3
	.value	0x7bf
	.long	0x2e6
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.string	"artificial_flag"
	.byte	0x3
	.value	0x7c0
	.long	0x2e6
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.string	"weak_flag"
	.byte	0x3
	.value	0x7c1
	.long	0x2e6
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.string	"non_addr_const_p"
	.byte	0x3
	.value	0x7c3
	.long	0x2e6
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.string	"no_instrument_function_entry_exit"
	.byte	0x3
	.value	0x7c4
	.long	0x2e6
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.string	"comdat_flag"
	.byte	0x3
	.value	0x7c5
	.long	0x2e6
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.string	"malloc_flag"
	.byte	0x3
	.value	0x7c6
	.long	0x2e6
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.string	"no_limit_stack"
	.byte	0x3
	.value	0x7c7
	.long	0x2e6
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.long	.LASF9
	.byte	0x3
	.value	0x7c8
	.long	0x1d9b
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.string	"pure_flag"
	.byte	0x3
	.value	0x7c9
	.long	0x2e6
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.long	.LASF27
	.byte	0x3
	.value	0x7cb
	.long	0x2e6
	.byte	0x4
	.byte	0x2
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.string	"non_addressable"
	.byte	0x3
	.value	0x7cc
	.long	0x2e6
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.long	.LASF28
	.byte	0x3
	.value	0x7cd
	.long	0x2e6
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.string	"uninlinable"
	.byte	0x3
	.value	0x7ce
	.long	0x2e6
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.string	"thread_local_flag"
	.byte	0x3
	.value	0x7cf
	.long	0x2e6
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.string	"inlined_function_flag"
	.byte	0x3
	.value	0x7d0
	.long	0x2e6
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.string	"noinline_attrib"
	.byte	0x3
	.value	0x7d2
	.long	0x2e6
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.long	.LASF10
	.byte	0x3
	.value	0x7d5
	.long	0x2e6
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.long	.LASF11
	.byte	0x3
	.value	0x7d6
	.long	0x2e6
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.long	.LASF12
	.byte	0x3
	.value	0x7d7
	.long	0x2e6
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.long	.LASF13
	.byte	0x3
	.value	0x7d8
	.long	0x2e6
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.long	.LASF14
	.byte	0x3
	.value	0x7d9
	.long	0x2e6
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.long	.LASF15
	.byte	0x3
	.value	0x7da
	.long	0x2e6
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.long	.LASF16
	.byte	0x3
	.value	0x7db
	.long	0x2e6
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.string	"lang_flag_7"
	.byte	0x3
	.value	0x7dc
	.long	0x2e6
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.string	"syscall_linkage_flag"
	.byte	0x3
	.value	0x7df
	.long	0x2e6
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.string	"widen_retval_flag"
	.byte	0x3
	.value	0x7e0
	.long	0x2e6
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.string	"promote_static"
	.byte	0x3
	.value	0x7e3
	.long	0x2e6
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.string	"always_inline_attrib"
	.byte	0x3
	.value	0x7e4
	.long	0x2e6
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x10
	.string	"u1"
	.byte	0x3
	.value	0x7f4
	.long	0x4166
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x1e
	.long	.LASF24
	.byte	0x3
	.value	0x7f6
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x1e
	.long	.LASF29
	.byte	0x3
	.value	0x7f7
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x1e
	.long	.LASF30
	.byte	0x3
	.value	0x7f8
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x10
	.string	"arguments"
	.byte	0x3
	.value	0x7f9
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x1e
	.long	.LASF33
	.byte	0x3
	.value	0x7fa
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x10
	.string	"initial"
	.byte	0x3
	.value	0x7fb
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x1e
	.long	.LASF23
	.byte	0x3
	.value	0x7fc
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x1e
	.long	.LASF34
	.byte	0x3
	.value	0x7fd
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x10
	.string	"section_name"
	.byte	0x3
	.value	0x7fe
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x1e
	.long	.LASF25
	.byte	0x3
	.value	0x7ff
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x10
	.string	"rtl"
	.byte	0x3
	.value	0x800
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x10
	.string	"live_range_rtl"
	.byte	0x3
	.value	0x801
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x10
	.string	"u2"
	.byte	0x3
	.value	0x80d
	.long	0x419b
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x10
	.string	"saved_tree"
	.byte	0x3
	.value	0x810
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x10
	.string	"inlined_fns"
	.byte	0x3
	.value	0x814
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x10
	.string	"vindex"
	.byte	0x3
	.value	0x816
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0x10
	.string	"pointer_alias_set"
	.byte	0x3
	.value	0x817
	.long	0x35a
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x1e
	.long	.LASF31
	.byte	0x3
	.value	0x819
	.long	0x4999
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x1f
	.string	"symtab_idx"
	.byte	0x3
	.value	0x81b
	.long	0x2e6
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x1f
	.string	"label_defined"
	.byte	0x3
	.value	0x81c
	.long	0x2e6
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x10
	.string	"sgi_u1"
	.byte	0x3
	.value	0x822
	.long	0x41e6
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x10
	.string	"sgi_u2"
	.byte	0x3
	.value	0x825
	.long	0x421e
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0x10
	.string	"decl_dst_id"
	.byte	0x3
	.value	0x826
	.long	0x1d50
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x10
	.string	"sl_model_name"
	.byte	0x3
	.value	0x82a
	.long	0x1e5
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.byte	0x0
	.uleb128 0x1d
	.long	0x4999
	.string	"lang_decl"
	.byte	0x8
	.byte	0x3
	.value	0x819
	.uleb128 0x7
	.string	"base"
	.byte	0x8
	.byte	0x40
	.long	0x4faf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"pending_sizes"
	.byte	0x8
	.byte	0x44
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x495e
	.uleb128 0x15
	.long	0x4bf0
	.string	"omp_tree_type"
	.byte	0x4
	.byte	0xa
	.byte	0x1e
	.uleb128 0x16
	.string	"parallel_dir_b"
	.sleb128 0
	.uleb128 0x16
	.string	"parallel_dir_e"
	.sleb128 1
	.uleb128 0x16
	.string	"for_dir_b"
	.sleb128 2
	.uleb128 0x16
	.string	"for_dir_e"
	.sleb128 3
	.uleb128 0x16
	.string	"sections_cons_b"
	.sleb128 4
	.uleb128 0x16
	.string	"sections_cons_e"
	.sleb128 5
	.uleb128 0x16
	.string	"section_cons_b"
	.sleb128 6
	.uleb128 0x16
	.string	"section_cons_e"
	.sleb128 7
	.uleb128 0x16
	.string	"single_cons_b"
	.sleb128 8
	.uleb128 0x16
	.string	"single_cons_e"
	.sleb128 9
	.uleb128 0x16
	.string	"par_for_cons_b"
	.sleb128 10
	.uleb128 0x16
	.string	"par_for_cons_e"
	.sleb128 11
	.uleb128 0x16
	.string	"par_sctn_cons_b"
	.sleb128 12
	.uleb128 0x16
	.string	"par_sctn_cons_e"
	.sleb128 13
	.uleb128 0x16
	.string	"master_cons_b"
	.sleb128 14
	.uleb128 0x16
	.string	"master_cons_e"
	.sleb128 15
	.uleb128 0x16
	.string	"critical_cons_b"
	.sleb128 16
	.uleb128 0x16
	.string	"critical_cons_e"
	.sleb128 17
	.uleb128 0x16
	.string	"barrier_dir"
	.sleb128 18
	.uleb128 0x16
	.string	"flush_dir"
	.sleb128 19
	.uleb128 0x16
	.string	"atomic_cons"
	.sleb128 20
	.uleb128 0x16
	.string	"ordered_cons_b"
	.sleb128 21
	.uleb128 0x16
	.string	"ordered_cons_e"
	.sleb128 22
	.uleb128 0x16
	.string	"options_dir"
	.sleb128 23
	.uleb128 0x16
	.string	"exec_freq_dir"
	.sleb128 24
	.uleb128 0x16
	.string	"sl2_sections_cons_b"
	.sleb128 25
	.uleb128 0x16
	.string	"sl2_minor_sections_cons_b"
	.sleb128 26
	.uleb128 0x16
	.string	"sl2_sections_cons_e"
	.sleb128 27
	.uleb128 0x16
	.string	"sl2_section_cons_b"
	.sleb128 28
	.uleb128 0x16
	.string	"sl2_section_cons_e"
	.sleb128 29
	.uleb128 0x16
	.string	"sl2_minor_section_cons_b"
	.sleb128 30
	.uleb128 0x16
	.string	"sl2_minor_section_cons_e"
	.sleb128 31
	.byte	0x0
	.uleb128 0x1d
	.long	0x4c3f
	.string	"tree_omp"
	.byte	0x18
	.byte	0x3
	.value	0x832
	.uleb128 0x1e
	.long	.LASF1
	.byte	0x3
	.value	0x833
	.long	0x3649
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x10
	.string	"choice"
	.byte	0x3
	.value	0x834
	.long	0x499f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x10
	.string	"omp_clause_list"
	.byte	0x3
	.value	0x835
	.long	0x3c1
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x1d
	.long	0x4cfa
	.string	"attribute_spec"
	.byte	0x14
	.byte	0x3
	.value	0x9db
	.uleb128 0x1e
	.long	.LASF29
	.byte	0x3
	.value	0x9de
	.long	0x4cfa
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x10
	.string	"min_length"
	.byte	0x3
	.value	0x9e0
	.long	0x6fe
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x10
	.string	"max_length"
	.byte	0x3
	.value	0x9e3
	.long	0x6fe
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x10
	.string	"decl_required"
	.byte	0x3
	.value	0x9eb
	.long	0x4cff
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x10
	.string	"type_required"
	.byte	0x3
	.value	0x9ee
	.long	0x4cff
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.uleb128 0x10
	.string	"function_type_required"
	.byte	0x3
	.value	0x9f3
	.long	0x4cff
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0x10
	.string	"handler"
	.byte	0x3
	.value	0xa02
	.long	0x4d3d
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0xb
	.long	0x2cc
	.uleb128 0xb
	.long	0x4d04
	.uleb128 0xc
	.string	"_Bool"
	.byte	0x1
	.byte	0x2
	.uleb128 0x24
	.long	0x4d31
	.byte	0x1
	.long	0x1e5
	.uleb128 0x25
	.long	0x4d31
	.uleb128 0x25
	.long	0x1e5
	.uleb128 0x25
	.long	0x1e5
	.uleb128 0x25
	.long	0x2df
	.uleb128 0x25
	.long	0x4d37
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1e5
	.uleb128 0x3
	.byte	0x4
	.long	0x4d04
	.uleb128 0xb
	.long	0x4d42
	.uleb128 0x3
	.byte	0x4
	.long	0x4d0d
	.uleb128 0x2
	.string	"splay_tree_key"
	.byte	0xb
	.byte	0x2f
	.long	0x329
	.uleb128 0x2
	.string	"splay_tree_value"
	.byte	0xb
	.byte	0x30
	.long	0x329
	.uleb128 0x2
	.string	"splay_tree_node"
	.byte	0xb
	.byte	0x33
	.long	0x4d8d
	.uleb128 0x3
	.byte	0x4
	.long	0x4d93
	.uleb128 0x4
	.long	0x4de9
	.string	"splay_tree_node_s"
	.byte	0x10
	.byte	0xb
	.byte	0x33
	.uleb128 0x7
	.string	"key"
	.byte	0xb
	.byte	0x54
	.long	0x4d48
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x18
	.long	.LASF21
	.byte	0xb
	.byte	0x57
	.long	0x4d5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"left"
	.byte	0xb
	.byte	0x5a
	.long	0x4d76
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"right"
	.byte	0xb
	.byte	0x5b
	.long	0x4d76
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x2
	.string	"splay_tree_compare_fn"
	.byte	0xb
	.byte	0x37
	.long	0x4e06
	.uleb128 0x3
	.byte	0x4
	.long	0x4e0c
	.uleb128 0x24
	.long	0x4e21
	.byte	0x1
	.long	0x2df
	.uleb128 0x25
	.long	0x4d48
	.uleb128 0x25
	.long	0x4d48
	.byte	0x0
	.uleb128 0x2
	.string	"splay_tree_delete_key_fn"
	.byte	0xb
	.byte	0x3b
	.long	0x4e41
	.uleb128 0x3
	.byte	0x4
	.long	0x4e47
	.uleb128 0x26
	.long	0x4e53
	.byte	0x1
	.uleb128 0x25
	.long	0x4d48
	.byte	0x0
	.uleb128 0x2
	.string	"splay_tree_delete_value_fn"
	.byte	0xb
	.byte	0x3f
	.long	0x4e75
	.uleb128 0x3
	.byte	0x4
	.long	0x4e7b
	.uleb128 0x26
	.long	0x4e87
	.byte	0x1
	.uleb128 0x25
	.long	0x4d5e
	.byte	0x0
	.uleb128 0x2
	.string	"splay_tree_allocate_fn"
	.byte	0xb
	.byte	0x48
	.long	0x4ea5
	.uleb128 0x3
	.byte	0x4
	.long	0x4eab
	.uleb128 0x24
	.long	0x4ec0
	.byte	0x1
	.long	0x3c1
	.uleb128 0x25
	.long	0x2df
	.uleb128 0x25
	.long	0x3c1
	.byte	0x0
	.uleb128 0x2
	.string	"splay_tree_deallocate_fn"
	.byte	0xb
	.byte	0x4e
	.long	0x4ee0
	.uleb128 0x3
	.byte	0x4
	.long	0x4ee6
	.uleb128 0x26
	.long	0x4ef7
	.byte	0x1
	.uleb128 0x25
	.long	0x3c1
	.uleb128 0x25
	.long	0x3c1
	.byte	0x0
	.uleb128 0x4
	.long	0x4f97
	.string	"splay_tree_s"
	.byte	0x1c
	.byte	0xb
	.byte	0x60
	.uleb128 0x7
	.string	"root"
	.byte	0xb
	.byte	0x62
	.long	0x4d76
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"comp"
	.byte	0xb
	.byte	0x65
	.long	0x4de9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"delete_key"
	.byte	0xb
	.byte	0x68
	.long	0x4e21
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"delete_value"
	.byte	0xb
	.byte	0x6b
	.long	0x4e53
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"allocate"
	.byte	0xb
	.byte	0x6e
	.long	0x4e87
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"deallocate"
	.byte	0xb
	.byte	0x6f
	.long	0x4ec0
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"allocate_data"
	.byte	0xb
	.byte	0x70
	.long	0x3c1
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x2
	.string	"splay_tree"
	.byte	0xb
	.byte	0x72
	.long	0x4fa9
	.uleb128 0x3
	.byte	0x4
	.long	0x4ef7
	.uleb128 0x1d
	.long	0x4fe3
	.string	"c_lang_decl"
	.byte	0x4
	.byte	0x9
	.value	0x16a
	.uleb128 0x1f
	.string	"declared_inline"
	.byte	0x9
	.value	0x16b
	.long	0x2e6
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x4
	.long	0x502b
	.string	"asm_int_op"
	.byte	0x10
	.byte	0xe
	.byte	0x3a
	.uleb128 0x7
	.string	"hi"
	.byte	0xe
	.byte	0x3b
	.long	0x2cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"si"
	.byte	0xe
	.byte	0x3c
	.long	0x2cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"di"
	.byte	0xe
	.byte	0x3d
	.long	0x2cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"ti"
	.byte	0xe
	.byte	0x3e
	.long	0x2cc
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x4
	.long	0x5259
	.string	"asm_out"
	.byte	0x70
	.byte	0xe
	.byte	0x33
	.uleb128 0x7
	.string	"open_paren"
	.byte	0xe
	.byte	0x35
	.long	0x2cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"close_paren"
	.byte	0xe
	.byte	0x35
	.long	0x2cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"byte_op"
	.byte	0xe
	.byte	0x38
	.long	0x2cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"aligned_op"
	.byte	0xe
	.byte	0x3f
	.long	0x4fe3
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"unaligned_op"
	.byte	0xe
	.byte	0x3f
	.long	0x4fe3
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"integer"
	.byte	0xe
	.byte	0x46
	.long	0x5273
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x7
	.string	"globalize_label"
	.byte	0xe
	.byte	0x49
	.long	0x5290
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x7
	.string	"visibility"
	.byte	0xe
	.byte	0x4d
	.long	0x52a7
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x7
	.string	"function_prologue"
	.byte	0xe
	.byte	0x50
	.long	0x52be
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x7
	.string	"function_end_prologue"
	.byte	0xe
	.byte	0x53
	.long	0x52d0
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x7
	.string	"function_begin_epilogue"
	.byte	0xe
	.byte	0x56
	.long	0x52d0
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x7
	.string	"function_epilogue"
	.byte	0xe
	.byte	0x59
	.long	0x52be
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x7
	.string	"named_section"
	.byte	0xe
	.byte	0x5d
	.long	0x52e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x7
	.string	"exception_section"
	.byte	0xe
	.byte	0x60
	.long	0x70b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x7
	.string	"eh_frame_section"
	.byte	0xe
	.byte	0x63
	.long	0x70b
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x7
	.string	"select_section"
	.byte	0xe
	.byte	0x6a
	.long	0x5303
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x7
	.string	"select_rtx_section"
	.byte	0xe
	.byte	0x6e
	.long	0x531f
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x7
	.string	"unique_section"
	.byte	0xe
	.byte	0x73
	.long	0x52a7
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x18
	.long	.LASF35
	.byte	0xe
	.byte	0x76
	.long	0x5336
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x7
	.string	"destructor"
	.byte	0xe
	.byte	0x79
	.long	0x5336
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x7
	.string	"output_mi_thunk"
	.byte	0xe
	.byte	0x80
	.long	0x535c
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x7
	.string	"can_output_mi_thunk"
	.byte	0xe
	.byte	0x8b
	.long	0x5381
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.byte	0x0
	.uleb128 0x24
	.long	0x5273
	.byte	0x1
	.long	0x4d04
	.uleb128 0x25
	.long	0x9d
	.uleb128 0x25
	.long	0x2e6
	.uleb128 0x25
	.long	0x2df
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5259
	.uleb128 0x26
	.long	0x528a
	.byte	0x1
	.uleb128 0x25
	.long	0x528a
	.uleb128 0x25
	.long	0x2cc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x3c9
	.uleb128 0x3
	.byte	0x4
	.long	0x5279
	.uleb128 0x26
	.long	0x52a7
	.byte	0x1
	.uleb128 0x25
	.long	0x1e5
	.uleb128 0x25
	.long	0x2df
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5296
	.uleb128 0x26
	.long	0x52be
	.byte	0x1
	.uleb128 0x25
	.long	0x528a
	.uleb128 0x25
	.long	0x35a
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x52ad
	.uleb128 0x26
	.long	0x52d0
	.byte	0x1
	.uleb128 0x25
	.long	0x528a
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x52c4
	.uleb128 0x26
	.long	0x52e7
	.byte	0x1
	.uleb128 0x25
	.long	0x2cc
	.uleb128 0x25
	.long	0x2e6
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x52d6
	.uleb128 0x26
	.long	0x5303
	.byte	0x1
	.uleb128 0x25
	.long	0x1e5
	.uleb128 0x25
	.long	0x2df
	.uleb128 0x25
	.long	0x36b
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x52ed
	.uleb128 0x26
	.long	0x531f
	.byte	0x1
	.uleb128 0x25
	.long	0x711
	.uleb128 0x25
	.long	0x9d
	.uleb128 0x25
	.long	0x36b
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5309
	.uleb128 0x26
	.long	0x5336
	.byte	0x1
	.uleb128 0x25
	.long	0x9d
	.uleb128 0x25
	.long	0x2df
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5325
	.uleb128 0x26
	.long	0x535c
	.byte	0x1
	.uleb128 0x25
	.long	0x528a
	.uleb128 0x25
	.long	0x1e5
	.uleb128 0x25
	.long	0x35a
	.uleb128 0x25
	.long	0x35a
	.uleb128 0x25
	.long	0x1e5
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x533c
	.uleb128 0x24
	.long	0x5381
	.byte	0x1
	.long	0x4d04
	.uleb128 0x25
	.long	0x1e5
	.uleb128 0x25
	.long	0x35a
	.uleb128 0x25
	.long	0x35a
	.uleb128 0x25
	.long	0x1e5
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5362
	.uleb128 0x4
	.long	0x5542
	.string	"sched"
	.byte	0x40
	.byte	0xe
	.byte	0x93
	.uleb128 0x7
	.string	"adjust_cost"
	.byte	0xe
	.byte	0x97
	.long	0x5561
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"adjust_priority"
	.byte	0xe
	.byte	0x9b
	.long	0x557c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"issue_rate"
	.byte	0xe
	.byte	0xa0
	.long	0x5588
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"variable_issue"
	.byte	0xe
	.byte	0xa4
	.long	0x55ad
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"md_init"
	.byte	0xe
	.byte	0xa7
	.long	0x55c9
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"md_finish"
	.byte	0xe
	.byte	0xaa
	.long	0x55e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"reorder"
	.byte	0xe
	.byte	0xae
	.long	0x560a
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"reorder2"
	.byte	0xe
	.byte	0xaf
	.long	0x560a
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"use_dfa_pipeline_interface"
	.byte	0xe
	.byte	0xb4
	.long	0x5588
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x7
	.string	"init_dfa_pre_cycle_insn"
	.byte	0xe
	.byte	0xc2
	.long	0x70b
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x7
	.string	"dfa_pre_cycle_insn"
	.byte	0xe
	.byte	0xc3
	.long	0x5616
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x7
	.string	"init_dfa_post_cycle_insn"
	.byte	0xe
	.byte	0xc4
	.long	0x70b
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x7
	.string	"dfa_post_cycle_insn"
	.byte	0xe
	.byte	0xc5
	.long	0x5616
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x7
	.string	"first_cycle_multipass_dfa_lookahead"
	.byte	0xe
	.byte	0xcd
	.long	0x5588
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x7
	.string	"init_dfa_bubbles"
	.byte	0xe
	.byte	0xd8
	.long	0x70b
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x7
	.string	"dfa_bubble"
	.byte	0xe
	.byte	0xd9
	.long	0x562c
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.byte	0x0
	.uleb128 0x24
	.long	0x5561
	.byte	0x1
	.long	0x2df
	.uleb128 0x25
	.long	0x9d
	.uleb128 0x25
	.long	0x9d
	.uleb128 0x25
	.long	0x9d
	.uleb128 0x25
	.long	0x2df
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5542
	.uleb128 0x24
	.long	0x557c
	.byte	0x1
	.long	0x2df
	.uleb128 0x25
	.long	0x9d
	.uleb128 0x25
	.long	0x2df
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5567
	.uleb128 0x27
	.byte	0x1
	.long	0x2df
	.uleb128 0x3
	.byte	0x4
	.long	0x5582
	.uleb128 0x24
	.long	0x55ad
	.byte	0x1
	.long	0x2df
	.uleb128 0x25
	.long	0x528a
	.uleb128 0x25
	.long	0x2df
	.uleb128 0x25
	.long	0x9d
	.uleb128 0x25
	.long	0x2df
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x558e
	.uleb128 0x26
	.long	0x55c9
	.byte	0x1
	.uleb128 0x25
	.long	0x528a
	.uleb128 0x25
	.long	0x2df
	.uleb128 0x25
	.long	0x2df
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x55b3
	.uleb128 0x26
	.long	0x55e0
	.byte	0x1
	.uleb128 0x25
	.long	0x528a
	.uleb128 0x25
	.long	0x2df
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x55cf
	.uleb128 0x24
	.long	0x560a
	.byte	0x1
	.long	0x2df
	.uleb128 0x25
	.long	0x528a
	.uleb128 0x25
	.long	0x2df
	.uleb128 0x25
	.long	0x13d3
	.uleb128 0x25
	.long	0x703
	.uleb128 0x25
	.long	0x2df
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x55e6
	.uleb128 0x27
	.byte	0x1
	.long	0x9d
	.uleb128 0x3
	.byte	0x4
	.long	0x5610
	.uleb128 0x24
	.long	0x562c
	.byte	0x1
	.long	0x9d
	.uleb128 0x25
	.long	0x2df
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x561c
	.uleb128 0x4
	.long	0x591b
	.string	"gcc_target"
	.byte	0xfc
	.byte	0xe
	.byte	0x30
	.uleb128 0x7
	.string	"asm_out"
	.byte	0xe
	.byte	0x8f
	.long	0x502b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"sched"
	.byte	0xe
	.byte	0xda
	.long	0x5387
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x7
	.string	"merge_decl_attributes"
	.byte	0xe
	.byte	0xdd
	.long	0x5930
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x7
	.string	"merge_type_attributes"
	.byte	0xe
	.byte	0xe0
	.long	0x5930
	.byte	0x3
	.byte	0x23
	.uleb128 0xb4
	.uleb128 0x7
	.string	"attribute_table"
	.byte	0xe
	.byte	0xe4
	.long	0x5936
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0x7
	.string	"comp_type_attributes"
	.byte	0xe
	.byte	0xe9
	.long	0x5956
	.byte	0x3
	.byte	0x23
	.uleb128 0xbc
	.uleb128 0x7
	.string	"set_default_type_attributes"
	.byte	0xe
	.byte	0xec
	.long	0x5968
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0x7
	.string	"insert_attributes"
	.byte	0xe
	.byte	0xef
	.long	0x597f
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.uleb128 0x7
	.string	"function_attribute_inlinable_p"
	.byte	0xe
	.byte	0xf3
	.long	0x5995
	.byte	0x3
	.byte	0x23
	.uleb128 0xc8
	.uleb128 0x7
	.string	"ms_bitfield_layout_p"
	.byte	0xe
	.byte	0xf7
	.long	0x5995
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.uleb128 0x7
	.string	"init_builtins"
	.byte	0xe
	.byte	0xfa
	.long	0x70b
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0x7
	.string	"expand_builtin"
	.byte	0xe
	.byte	0xfd
	.long	0x59bf
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0x10
	.string	"section_type_flags"
	.byte	0xe
	.value	0x103
	.long	0x59df
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0x10
	.string	"cannot_modify_jumps_p"
	.byte	0xe
	.value	0x107
	.long	0x59eb
	.byte	0x3
	.byte	0x23
	.uleb128 0xdc
	.uleb128 0x10
	.string	"cannot_force_const_mem"
	.byte	0xe
	.value	0x10a
	.long	0x5a01
	.byte	0x3
	.byte	0x23
	.uleb128 0xe0
	.uleb128 0x10
	.string	"in_small_data_p"
	.byte	0xe
	.value	0x10d
	.long	0x5995
	.byte	0x3
	.byte	0x23
	.uleb128 0xe4
	.uleb128 0x10
	.string	"binds_local_p"
	.byte	0xe
	.value	0x111
	.long	0x5995
	.byte	0x3
	.byte	0x23
	.uleb128 0xe8
	.uleb128 0x10
	.string	"encode_section_info"
	.byte	0xe
	.value	0x115
	.long	0x52a7
	.byte	0x3
	.byte	0x23
	.uleb128 0xec
	.uleb128 0x10
	.string	"strip_name_encoding"
	.byte	0xe
	.value	0x118
	.long	0x5a17
	.byte	0x3
	.byte	0x23
	.uleb128 0xf0
	.uleb128 0x10
	.string	"have_named_sections"
	.byte	0xe
	.value	0x11d
	.long	0x4d04
	.byte	0x3
	.byte	0x23
	.uleb128 0xf4
	.uleb128 0x10
	.string	"have_ctors_dtors"
	.byte	0xe
	.value	0x121
	.long	0x4d04
	.byte	0x3
	.byte	0x23
	.uleb128 0xf5
	.uleb128 0x10
	.string	"have_tls"
	.byte	0xe
	.value	0x124
	.long	0x4d04
	.byte	0x3
	.byte	0x23
	.uleb128 0xf6
	.uleb128 0x10
	.string	"have_srodata_section"
	.byte	0xe
	.value	0x127
	.long	0x4d04
	.byte	0x3
	.byte	0x23
	.uleb128 0xf7
	.uleb128 0x10
	.string	"terminate_dw2_eh_frame_info"
	.byte	0xe
	.value	0x12a
	.long	0x4d04
	.byte	0x3
	.byte	0x23
	.uleb128 0xf8
	.byte	0x0
	.uleb128 0x24
	.long	0x5930
	.byte	0x1
	.long	0x1e5
	.uleb128 0x25
	.long	0x1e5
	.uleb128 0x25
	.long	0x1e5
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x591b
	.uleb128 0x3
	.byte	0x4
	.long	0x593c
	.uleb128 0xb
	.long	0x4c3f
	.uleb128 0x24
	.long	0x5956
	.byte	0x1
	.long	0x2df
	.uleb128 0x25
	.long	0x1e5
	.uleb128 0x25
	.long	0x1e5
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5941
	.uleb128 0x26
	.long	0x5968
	.byte	0x1
	.uleb128 0x25
	.long	0x1e5
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x595c
	.uleb128 0x26
	.long	0x597f
	.byte	0x1
	.uleb128 0x25
	.long	0x1e5
	.uleb128 0x25
	.long	0x4d31
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x596e
	.uleb128 0x24
	.long	0x5995
	.byte	0x1
	.long	0x4d04
	.uleb128 0x25
	.long	0x1e5
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5985
	.uleb128 0x24
	.long	0x59bf
	.byte	0x1
	.long	0x9d
	.uleb128 0x25
	.long	0x1e5
	.uleb128 0x25
	.long	0x9d
	.uleb128 0x25
	.long	0x9d
	.uleb128 0x25
	.long	0x711
	.uleb128 0x25
	.long	0x2df
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x599b
	.uleb128 0x24
	.long	0x59df
	.byte	0x1
	.long	0x2e6
	.uleb128 0x25
	.long	0x1e5
	.uleb128 0x25
	.long	0x2cc
	.uleb128 0x25
	.long	0x2df
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x59c5
	.uleb128 0x27
	.byte	0x1
	.long	0x4d04
	.uleb128 0x3
	.byte	0x4
	.long	0x59e5
	.uleb128 0x24
	.long	0x5a01
	.byte	0x1
	.long	0x4d04
	.uleb128 0x25
	.long	0x9d
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x59f1
	.uleb128 0x24
	.long	0x5a17
	.byte	0x1
	.long	0x2cc
	.uleb128 0x25
	.long	0x2cc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5a07
	.uleb128 0x28
	.long	0x5a69
	.byte	0x1
	.string	"require_complete_type"
	.byte	0x1
	.byte	0x62
	.byte	0x1
	.long	0x1e5
	.long	.LFB15
	.long	.LFE15
	.long	.LLST0
	.uleb128 0x29
	.long	.LASF21
	.byte	0x1
	.byte	0x61
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2a
	.long	.LASF4
	.byte	0x1
	.byte	0x63
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2b
	.long	0x5aeb
	.byte	0x1
	.string	"c_incomplete_type_error"
	.byte	0x1
	.byte	0x78
	.byte	0x1
	.long	.LFB16
	.long	.LFE16
	.long	.LLST1
	.uleb128 0x29
	.long	.LASF21
	.byte	0x1
	.byte	0x76
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x29
	.long	.LASF4
	.byte	0x1
	.byte	0x77
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2c
	.string	"type_code_string"
	.byte	0x1
	.byte	0x79
	.long	0x2cc
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x2d
	.string	"retry"
	.byte	0x1
	.byte	0xa3
	.long	.L12
	.uleb128 0x2e
	.long	.LASF36
	.long	0x8e65
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.13833
	.byte	0x0
	.uleb128 0x28
	.long	0x5b26
	.byte	0x1
	.string	"c_type_promotes_to"
	.byte	0x1
	.byte	0xbc
	.byte	0x1
	.long	0x1e5
	.long	.LFB17
	.long	.LFE17
	.long	.LLST2
	.uleb128 0x29
	.long	.LASF4
	.byte	0x1
	.byte	0xbb
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x2f
	.long	0x5b69
	.string	"qualify_type"
	.byte	0x1
	.byte	0xd2
	.byte	0x1
	.long	0x1e5
	.long	.LFB18
	.long	.LFE18
	.long	.LLST3
	.uleb128 0x29
	.long	.LASF4
	.byte	0x1
	.byte	0xd1
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.string	"like"
	.byte	0x1
	.byte	0xd1
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x28
	.long	0x5d50
	.byte	0x1
	.string	"common_type"
	.byte	0x1
	.byte	0xe2
	.byte	0x1
	.long	0x1e5
	.long	.LFB19
	.long	.LFE19
	.long	.LLST4
	.uleb128 0x30
	.string	"t1"
	.byte	0x1
	.byte	0xe1
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.string	"t2"
	.byte	0x1
	.byte	0xe1
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2a
	.long	.LASF37
	.byte	0x1
	.byte	0xe3
	.long	0x141d
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2c
	.string	"code2"
	.byte	0x1
	.byte	0xe4
	.long	0x141d
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2a
	.long	.LASF25
	.byte	0x1
	.byte	0xe5
	.long	0x1e5
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x31
	.string	"parm_done"
	.byte	0x1
	.value	0x1c1
	.long	.L143
	.uleb128 0x32
	.long	0x5c35
	.long	.LBB2
	.long	.LBE2
	.uleb128 0x33
	.string	"subtype1"
	.byte	0x1
	.value	0x103
	.long	0x1e5
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x33
	.string	"subtype2"
	.byte	0x1
	.value	0x104
	.long	0x1e5
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x33
	.string	"subtype"
	.byte	0x1
	.value	0x105
	.long	0x1e5
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.byte	0x0
	.uleb128 0x32
	.long	0x5c85
	.long	.LBB3
	.long	.LBE3
	.uleb128 0x33
	.string	"pointed_to_1"
	.byte	0x1
	.value	0x14a
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x33
	.string	"pointed_to_2"
	.byte	0x1
	.value	0x14b
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x33
	.string	"target"
	.byte	0x1
	.value	0x14c
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.byte	0x0
	.uleb128 0x32
	.long	0x5ca2
	.long	.LBB4
	.long	.LBE4
	.uleb128 0x33
	.string	"elt"
	.byte	0x1
	.value	0x15b
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.byte	0x0
	.uleb128 0x34
	.long	.LBB5
	.long	.LBE5
	.uleb128 0x33
	.string	"valtype"
	.byte	0x1
	.value	0x16a
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x33
	.string	"p1"
	.byte	0x1
	.value	0x16b
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x33
	.string	"p2"
	.byte	0x1
	.value	0x16c
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x33
	.string	"len"
	.byte	0x1
	.value	0x16d
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x33
	.string	"newargs"
	.byte	0x1
	.value	0x16e
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x33
	.string	"n"
	.byte	0x1
	.value	0x16e
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x33
	.string	"i"
	.byte	0x1
	.value	0x16f
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x32
	.long	0x5d34
	.long	.LBB6
	.long	.LBE6
	.uleb128 0x33
	.string	"memb"
	.byte	0x1
	.value	0x1a7
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x34
	.long	.LBB7
	.long	.LBE7
	.uleb128 0x33
	.string	"memb"
	.byte	0x1
	.value	0x1b5
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x35
	.long	0x5e4d
	.byte	0x1
	.string	"comptypes"
	.byte	0x1
	.value	0x1d7
	.byte	0x1
	.long	0x2df
	.long	.LFB20
	.long	.LFE20
	.long	.LLST5
	.uleb128 0x36
	.long	.LASF38
	.byte	0x1
	.value	0x1d6
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x37
	.string	"type2"
	.byte	0x1
	.value	0x1d6
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x33
	.string	"t1"
	.byte	0x1
	.value	0x1d8
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x33
	.string	"t2"
	.byte	0x1
	.value	0x1d9
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x33
	.string	"attrval"
	.byte	0x1
	.value	0x1da
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x33
	.string	"val"
	.byte	0x1
	.value	0x1da
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x34
	.long	.LBB8
	.long	.LBE8
	.uleb128 0x33
	.string	"d1"
	.byte	0x1
	.value	0x21b
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x33
	.string	"d2"
	.byte	0x1
	.value	0x21c
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x33
	.string	"d1_variable"
	.byte	0x1
	.value	0x21d
	.long	0x4d04
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x33
	.string	"d2_variable"
	.byte	0x1
	.value	0x21d
	.long	0x4d04
	.byte	0x2
	.byte	0x91
	.sleb128 -15
	.uleb128 0x33
	.string	"d1_zero"
	.byte	0x1
	.value	0x21e
	.long	0x4d04
	.byte	0x2
	.byte	0x91
	.sleb128 -14
	.uleb128 0x33
	.string	"d2_zero"
	.byte	0x1
	.value	0x21e
	.long	0x4d04
	.byte	0x2
	.byte	0x91
	.sleb128 -13
	.byte	0x0
	.byte	0x0
	.uleb128 0x38
	.long	0x5ebb
	.string	"comp_target_types"
	.byte	0x1
	.value	0x256
	.byte	0x1
	.long	0x2df
	.long	.LFB21
	.long	.LFE21
	.long	.LLST6
	.uleb128 0x37
	.string	"ttl"
	.byte	0x1
	.value	0x254
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x37
	.string	"ttr"
	.byte	0x1
	.value	0x254
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x37
	.string	"reflexive"
	.byte	0x1
	.value	0x255
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x33
	.string	"val"
	.byte	0x1
	.value	0x257
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x38
	.long	0x5f4e
	.string	"function_types_compatible_p"
	.byte	0x1
	.value	0x271
	.byte	0x1
	.long	0x2df
	.long	.LFB22
	.long	.LFE22
	.long	.LLST7
	.uleb128 0x37
	.string	"f1"
	.byte	0x1
	.value	0x270
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x37
	.string	"f2"
	.byte	0x1
	.value	0x270
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x33
	.string	"args1"
	.byte	0x1
	.value	0x272
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x33
	.string	"args2"
	.byte	0x1
	.value	0x272
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x33
	.string	"val"
	.byte	0x1
	.value	0x274
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x33
	.string	"val1"
	.byte	0x1
	.value	0x275
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x38
	.long	0x5ffb
	.string	"type_lists_compatible_p"
	.byte	0x1
	.value	0x2a3
	.byte	0x1
	.long	0x2df
	.long	.LFB23
	.long	.LFE23
	.long	.LLST8
	.uleb128 0x37
	.string	"args1"
	.byte	0x1
	.value	0x2a2
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x37
	.string	"args2"
	.byte	0x1
	.value	0x2a2
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x33
	.string	"val"
	.byte	0x1
	.value	0x2a5
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x33
	.string	"newval"
	.byte	0x1
	.value	0x2a6
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x32
	.long	0x5fe0
	.long	.LBB9
	.long	.LBE9
	.uleb128 0x33
	.string	"memb"
	.byte	0x1
	.value	0x2ca
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x34
	.long	.LBB10
	.long	.LBE10
	.uleb128 0x33
	.string	"memb"
	.byte	0x1
	.value	0x2d9
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x35
	.long	0x6044
	.byte	0x1
	.string	"c_size_in_bytes"
	.byte	0x1
	.value	0x2f3
	.byte	0x1
	.long	0x1e5
	.long	.LFB24
	.long	.LFE24
	.long	.LLST9
	.uleb128 0x36
	.long	.LASF4
	.byte	0x1
	.value	0x2f2
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x39
	.long	.LASF0
	.byte	0x1
	.value	0x2f4
	.long	0x141d
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x35
	.long	0x6082
	.byte	0x1
	.string	"decl_constant_value"
	.byte	0x1
	.value	0x30a
	.byte	0x1
	.long	0x1e5
	.long	.LFB25
	.long	.LFE25
	.long	.LLST10
	.uleb128 0x36
	.long	.LASF3
	.byte	0x1
	.value	0x309
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x38
	.long	0x60d7
	.string	"decl_constant_value_for_broken_optimization"
	.byte	0x1
	.value	0x327
	.byte	0x1
	.long	0x1e5
	.long	.LFB26
	.long	.LFE26
	.long	.LLST11
	.uleb128 0x36
	.long	.LASF3
	.byte	0x1
	.value	0x326
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x38
	.long	0x61fe
	.string	"default_function_array_conversion"
	.byte	0x1
	.value	0x336
	.byte	0x1
	.long	0x1e5
	.long	.LFB27
	.long	.LFE27
	.long	.LLST12
	.uleb128 0x37
	.string	"exp"
	.byte	0x1
	.value	0x335
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x39
	.long	.LASF39
	.byte	0x1
	.value	0x337
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x39
	.long	.LASF4
	.byte	0x1
	.value	0x338
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x39
	.long	.LASF0
	.byte	0x1
	.value	0x339
	.long	0x141d
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x33
	.string	"not_lvalue"
	.byte	0x1
	.value	0x33a
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x34
	.long	.LBB11
	.long	.LBE11
	.uleb128 0x33
	.string	"adr"
	.byte	0x1
	.value	0x355
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x33
	.string	"restype"
	.byte	0x1
	.value	0x356
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x33
	.string	"ptrtype"
	.byte	0x1
	.value	0x357
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x33
	.string	"constp"
	.byte	0x1
	.value	0x358
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x33
	.string	"volatilep"
	.byte	0x1
	.value	0x359
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x33
	.string	"lvalue_array_p"
	.byte	0x1
	.value	0x35a
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x34
	.long	.LBB12
	.long	.LBE12
	.uleb128 0x33
	.string	"op1"
	.byte	0x1
	.value	0x36f
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x35
	.long	0x6268
	.byte	0x1
	.string	"default_conversion"
	.byte	0x1
	.value	0x39d
	.byte	0x1
	.long	0x1e5
	.long	.LFB28
	.long	.LFE28
	.long	.LLST13
	.uleb128 0x37
	.string	"exp"
	.byte	0x1
	.value	0x39c
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x39
	.long	.LASF39
	.byte	0x1
	.value	0x39e
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x39
	.long	.LASF4
	.byte	0x1
	.value	0x39f
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x39
	.long	.LASF0
	.byte	0x1
	.value	0x3a0
	.long	0x141d
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x38
	.long	0x6352
	.string	"lookup_field"
	.byte	0x1
	.value	0x3f4
	.byte	0x1
	.long	0x1e5
	.long	.LFB29
	.long	.LFE29
	.long	.LLST14
	.uleb128 0x36
	.long	.LASF3
	.byte	0x1
	.value	0x3f3
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x36
	.long	.LASF40
	.byte	0x1
	.value	0x3f3
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x39
	.long	.LASF4
	.byte	0x1
	.value	0x3f5
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x39
	.long	.LASF41
	.byte	0x1
	.value	0x3f6
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x32
	.long	0x6337
	.long	.LBB13
	.long	.LBE13
	.uleb128 0x33
	.string	"bot"
	.byte	0x1
	.value	0x3ff
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x33
	.string	"top"
	.byte	0x1
	.value	0x3ff
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x33
	.string	"half"
	.byte	0x1
	.value	0x3ff
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x33
	.string	"field_array"
	.byte	0x1
	.value	0x400
	.long	0x4d31
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x34
	.long	.LBB14
	.long	.LBE14
	.uleb128 0x33
	.string	"anon"
	.byte	0x1
	.value	0x413
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x34
	.long	.LBB15
	.long	.LBE15
	.uleb128 0x33
	.string	"anon"
	.byte	0x1
	.value	0x437
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x35
	.long	0x6418
	.byte	0x1
	.string	"build_component_ref"
	.byte	0x1
	.value	0x44e
	.byte	0x1
	.long	0x1e5
	.long	.LFB30
	.long	.LFE30
	.long	.LLST15
	.uleb128 0x37
	.string	"datum"
	.byte	0x1
	.value	0x44d
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x36
	.long	.LASF40
	.byte	0x1
	.value	0x44d
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x39
	.long	.LASF4
	.byte	0x1
	.value	0x44f
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x39
	.long	.LASF0
	.byte	0x1
	.value	0x450
	.long	0x141d
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x39
	.long	.LASF41
	.byte	0x1
	.value	0x451
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x33
	.string	"ref"
	.byte	0x1
	.value	0x452
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x32
	.long	0x63f9
	.long	.LBB16
	.long	.LBE16
	.uleb128 0x39
	.long	.LASF21
	.byte	0x1
	.value	0x460
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x34
	.long	.LBB17
	.long	.LBE17
	.uleb128 0x33
	.string	"subdatum"
	.byte	0x1
	.value	0x483
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x35
	.long	0x64b0
	.byte	0x1
	.string	"build_indirect_ref"
	.byte	0x1
	.value	0x4a8
	.byte	0x1
	.long	0x1e5
	.long	.LFB31
	.long	.LFE31
	.long	.LLST16
	.uleb128 0x37
	.string	"ptr"
	.byte	0x1
	.value	0x4a6
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x37
	.string	"errorstring"
	.byte	0x1
	.value	0x4a7
	.long	0x2cc
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x39
	.long	.LASF17
	.byte	0x1
	.value	0x4a9
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x39
	.long	.LASF4
	.byte	0x1
	.value	0x4aa
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x34
	.long	.LBB18
	.long	.LBE18
	.uleb128 0x33
	.string	"t"
	.byte	0x1
	.value	0x4b5
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x33
	.string	"ref"
	.byte	0x1
	.value	0x4b6
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x35
	.long	0x6584
	.byte	0x1
	.string	"build_array_ref"
	.byte	0x1
	.value	0x4df
	.byte	0x1
	.long	0x1e5
	.long	.LFB32
	.long	.LFE32
	.long	.LLST17
	.uleb128 0x37
	.string	"array"
	.byte	0x1
	.value	0x4de
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x37
	.string	"index"
	.byte	0x1
	.value	0x4de
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x32
	.long	0x6542
	.long	.LBB19
	.long	.LBE19
	.uleb128 0x33
	.string	"rval"
	.byte	0x1
	.value	0x4ed
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x39
	.long	.LASF4
	.byte	0x1
	.value	0x4ed
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x34
	.long	.LBB20
	.long	.LBE20
	.uleb128 0x33
	.string	"foo"
	.byte	0x1
	.value	0x51c
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.uleb128 0x34
	.long	.LBB21
	.long	.LBE21
	.uleb128 0x33
	.string	"ar"
	.byte	0x1
	.value	0x53a
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x33
	.string	"ind"
	.byte	0x1
	.value	0x53b
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x34
	.long	.LBB22
	.long	.LBE22
	.uleb128 0x33
	.string	"temp"
	.byte	0x1
	.value	0x548
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x35
	.long	0x661b
	.byte	0x1
	.string	"build_external_ref"
	.byte	0x1
	.value	0x567
	.byte	0x1
	.long	0x1e5
	.long	.LFB33
	.long	.LFE33
	.long	.LLST18
	.uleb128 0x37
	.string	"id"
	.byte	0x1
	.value	0x565
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x37
	.string	"fun"
	.byte	0x1
	.value	0x566
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x33
	.string	"ref"
	.byte	0x1
	.value	0x568
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x39
	.long	.LASF3
	.byte	0x1
	.value	0x569
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x33
	.string	"objc_ivar"
	.byte	0x1
	.value	0x56a
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x34
	.long	.LBB23
	.long	.LBE23
	.uleb128 0x39
	.long	.LASF30
	.byte	0x1
	.value	0x5c1
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x35
	.long	0x66d3
	.byte	0x1
	.string	"build_function_call"
	.byte	0x1
	.value	0x5d2
	.byte	0x1
	.long	0x1e5
	.long	.LFB34
	.long	.LFE34
	.long	.LLST19
	.uleb128 0x36
	.long	.LASF32
	.byte	0x1
	.value	0x5d1
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x37
	.string	"params"
	.byte	0x1
	.value	0x5d1
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x33
	.string	"fntype"
	.byte	0x1
	.value	0x5d3
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x39
	.long	.LASF42
	.byte	0x1
	.value	0x5d3
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x33
	.string	"coerced_params"
	.byte	0x1
	.value	0x5d4
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x39
	.long	.LASF29
	.byte	0x1
	.value	0x5d5
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x39
	.long	.LASF34
	.byte	0x1
	.value	0x5d5
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x39
	.long	.LASF33
	.byte	0x1
	.value	0x5d5
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x38
	.long	0x6826
	.string	"convert_arguments"
	.byte	0x1
	.value	0x635
	.byte	0x1
	.long	0x1e5
	.long	.LFB35
	.long	.LFE35
	.long	.LLST20
	.uleb128 0x37
	.string	"typelist"
	.byte	0x1
	.value	0x634
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x37
	.string	"values"
	.byte	0x1
	.value	0x634
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x36
	.long	.LASF29
	.byte	0x1
	.value	0x634
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x36
	.long	.LASF42
	.byte	0x1
	.value	0x634
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x33
	.string	"typetail"
	.byte	0x1
	.value	0x636
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x33
	.string	"valtail"
	.byte	0x1
	.value	0x636
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x39
	.long	.LASF33
	.byte	0x1
	.value	0x637
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x33
	.string	"parmnum"
	.byte	0x1
	.value	0x638
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x34
	.long	.LBB24
	.long	.LBE24
	.uleb128 0x39
	.long	.LASF4
	.byte	0x1
	.value	0x641
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x33
	.string	"val"
	.byte	0x1
	.value	0x642
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x34
	.long	.LBB25
	.long	.LBE25
	.uleb128 0x33
	.string	"parmval"
	.byte	0x1
	.value	0x65b
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x34
	.long	.LBB26
	.long	.LBE26
	.uleb128 0x33
	.string	"formal_prec"
	.byte	0x1
	.value	0x668
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x34
	.long	.LBB27
	.long	.LBE27
	.uleb128 0x33
	.string	"would_have_been"
	.byte	0x1
	.value	0x68d
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x39
	.long	.LASF38
	.byte	0x1
	.value	0x68e
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x35
	.long	0x6905
	.byte	0x1
	.string	"parser_build_binary_op"
	.byte	0x1
	.value	0x6ed
	.byte	0x1
	.long	0x1e5
	.long	.LFB36
	.long	.LFE36
	.long	.LLST21
	.uleb128 0x36
	.long	.LASF0
	.byte	0x1
	.value	0x6eb
	.long	0x141d
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x37
	.string	"arg1"
	.byte	0x1
	.value	0x6ec
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x37
	.string	"arg2"
	.byte	0x1
	.value	0x6ec
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x39
	.long	.LASF33
	.byte	0x1
	.value	0x6ee
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x33
	.string	"class"
	.byte	0x1
	.value	0x6f0
	.long	0x2d7
	.byte	0x2
	.byte	0x91
	.sleb128 -15
	.uleb128 0x33
	.string	"class1"
	.byte	0x1
	.value	0x6f1
	.long	0x2d7
	.byte	0x2
	.byte	0x91
	.sleb128 -14
	.uleb128 0x33
	.string	"class2"
	.byte	0x1
	.value	0x6f2
	.long	0x2d7
	.byte	0x2
	.byte	0x91
	.sleb128 -13
	.uleb128 0x39
	.long	.LASF37
	.byte	0x1
	.value	0x6f3
	.long	0x141d
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x33
	.string	"code2"
	.byte	0x1
	.value	0x6f4
	.long	0x141d
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x34
	.long	.LBB28
	.long	.LBE28
	.uleb128 0x33
	.string	"flag"
	.byte	0x1
	.value	0x745
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x35
	.long	0x6d54
	.byte	0x1
	.string	"build_binary_op"
	.byte	0x1
	.value	0x766
	.byte	0x1
	.long	0x1e5
	.long	.LFB37
	.long	.LFE37
	.long	.LLST22
	.uleb128 0x36
	.long	.LASF0
	.byte	0x1
	.value	0x763
	.long	0x141d
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x37
	.string	"orig_op0"
	.byte	0x1
	.value	0x764
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x36
	.long	.LASF43
	.byte	0x1
	.value	0x764
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x37
	.string	"convert_p"
	.byte	0x1
	.value	0x765
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x33
	.string	"type0"
	.byte	0x1
	.value	0x767
	.long	0x1e5
	.byte	0x3
	.byte	0x91
	.sleb128 -156
	.uleb128 0x39
	.long	.LASF38
	.byte	0x1
	.value	0x767
	.long	0x1e5
	.byte	0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x33
	.string	"code0"
	.byte	0x1
	.value	0x768
	.long	0x141d
	.byte	0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0x39
	.long	.LASF37
	.byte	0x1
	.value	0x768
	.long	0x141d
	.byte	0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x33
	.string	"op0"
	.byte	0x1
	.value	0x769
	.long	0x1e5
	.byte	0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x33
	.string	"op1"
	.byte	0x1
	.value	0x769
	.long	0x1e5
	.byte	0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x33
	.string	"resultcode"
	.byte	0x1
	.value	0x76e
	.long	0x141d
	.byte	0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x39
	.long	.LASF44
	.byte	0x1
	.value	0x772
	.long	0x1e5
	.byte	0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x33
	.string	"converted"
	.byte	0x1
	.value	0x777
	.long	0x2df
	.byte	0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x33
	.string	"build_type"
	.byte	0x1
	.value	0x77b
	.long	0x1e5
	.byte	0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x33
	.string	"final_type"
	.byte	0x1
	.value	0x77f
	.long	0x1e5
	.byte	0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x33
	.string	"shorten"
	.byte	0x1
	.value	0x787
	.long	0x2df
	.byte	0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x33
	.string	"short_compare"
	.byte	0x1
	.value	0x78c
	.long	0x2df
	.byte	0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x33
	.string	"short_shift"
	.byte	0x1
	.value	0x790
	.long	0x2df
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x39
	.long	.LASF1
	.byte	0x1
	.value	0x793
	.long	0x2df
	.byte	0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x32
	.long	0x6ac9
	.long	.LBB29
	.long	.LBE29
	.uleb128 0x33
	.string	"tt0"
	.byte	0x1
	.value	0x88d
	.long	0x1e5
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x33
	.string	"tt1"
	.byte	0x1
	.value	0x88e
	.long	0x1e5
	.byte	0x3
	.byte	0x91
	.sleb128 -92
	.byte	0x0
	.uleb128 0x32
	.long	0x6d28
	.long	.LBB30
	.long	.LBE30
	.uleb128 0x33
	.string	"none_complex"
	.byte	0x1
	.value	0x91e
	.long	0x2df
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x32
	.long	0x6b6b
	.long	.LBB31
	.long	.LBE31
	.uleb128 0x33
	.string	"unsigned0"
	.byte	0x1
	.value	0x930
	.long	0x2df
	.byte	0x3
	.byte	0x91
	.sleb128 -164
	.uleb128 0x33
	.string	"unsigned1"
	.byte	0x1
	.value	0x930
	.long	0x2df
	.byte	0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x33
	.string	"arg0"
	.byte	0x1
	.value	0x931
	.long	0x1e5
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x33
	.string	"arg1"
	.byte	0x1
	.value	0x932
	.long	0x1e5
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x33
	.string	"uns"
	.byte	0x1
	.value	0x934
	.long	0x2df
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x39
	.long	.LASF4
	.byte	0x1
	.value	0x935
	.long	0x1e5
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.byte	0x0
	.uleb128 0x32
	.long	0x6ba3
	.long	.LBB32
	.long	.LBE32
	.uleb128 0x33
	.string	"unsigned_arg"
	.byte	0x1
	.value	0x974
	.long	0x2df
	.byte	0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x33
	.string	"arg0"
	.byte	0x1
	.value	0x975
	.long	0x1e5
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.byte	0x0
	.uleb128 0x34
	.long	.LBB33
	.long	.LBE33
	.uleb128 0x33
	.string	"xop0"
	.byte	0x1
	.value	0x997
	.long	0x1e5
	.byte	0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x33
	.string	"xop1"
	.byte	0x1
	.value	0x997
	.long	0x1e5
	.byte	0x3
	.byte	0x91
	.sleb128 -164
	.uleb128 0x33
	.string	"xresult_type"
	.byte	0x1
	.value	0x997
	.long	0x1e5
	.byte	0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x33
	.string	"xresultcode"
	.byte	0x1
	.value	0x998
	.long	0x141d
	.byte	0x3
	.byte	0x91
	.sleb128 -172
	.uleb128 0x33
	.string	"val"
	.byte	0x1
	.value	0x999
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x34
	.long	.LBB34
	.long	.LBE34
	.uleb128 0x33
	.string	"op0_signed"
	.byte	0x1
	.value	0x9a6
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x33
	.string	"op1_signed"
	.byte	0x1
	.value	0x9a7
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x33
	.string	"unsignedp0"
	.byte	0x1
	.value	0x9a8
	.long	0x2df
	.byte	0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x33
	.string	"unsignedp1"
	.byte	0x1
	.value	0x9a8
	.long	0x2df
	.byte	0x3
	.byte	0x91
	.sleb128 -180
	.uleb128 0x33
	.string	"primop0"
	.byte	0x1
	.value	0x9a9
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x33
	.string	"primop1"
	.byte	0x1
	.value	0x9aa
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x32
	.long	0x6cc3
	.long	.LBB35
	.long	.LBE35
	.uleb128 0x33
	.string	"sop"
	.byte	0x1
	.value	0x9c1
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x33
	.string	"uop"
	.byte	0x1
	.value	0x9c1
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0x0
	.uleb128 0x34
	.long	.LBB36
	.long	.LBE36
	.uleb128 0x33
	.string	"primop"
	.byte	0x1
	.value	0x9f8
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x39
	.long	.LASF45
	.byte	0x1
	.value	0x9f9
	.long	0x35a
	.byte	0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x33
	.string	"mask"
	.byte	0x1
	.value	0x9f9
	.long	0x35a
	.byte	0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x33
	.string	"unsignedp"
	.byte	0x1
	.value	0x9fa
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x33
	.string	"bits"
	.byte	0x1
	.value	0x9fa
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x34
	.long	.LBB37
	.long	.LBE37
	.uleb128 0x39
	.long	.LASF33
	.byte	0x1
	.value	0xa55
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x33
	.string	"folded"
	.byte	0x1
	.value	0xa56
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x35
	.long	0x6d96
	.byte	0x1
	.string	"c_tree_expr_nonnegative_p"
	.byte	0x1
	.value	0xa67
	.byte	0x1
	.long	0x2df
	.long	.LFB38
	.long	.LFE38
	.long	.LLST23
	.uleb128 0x37
	.string	"t"
	.byte	0x1
	.value	0xa66
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x38
	.long	0x6e75
	.string	"pointer_diff"
	.byte	0x1
	.value	0xa7c
	.byte	0x1
	.long	0x1e5
	.long	.LFB39
	.long	.LFE39
	.long	.LLST24
	.uleb128 0x37
	.string	"op0"
	.byte	0x1
	.value	0xa7b
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x37
	.string	"op1"
	.byte	0x1
	.value	0xa7b
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x39
	.long	.LASF33
	.byte	0x1
	.value	0xa7d
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x33
	.string	"folded"
	.byte	0x1
	.value	0xa7d
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x33
	.string	"restype"
	.byte	0x1
	.value	0xa7e
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x33
	.string	"target_type"
	.byte	0x1
	.value	0xa80
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x33
	.string	"con0"
	.byte	0x1
	.value	0xa81
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x33
	.string	"con1"
	.byte	0x1
	.value	0xa81
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x33
	.string	"lit0"
	.byte	0x1
	.value	0xa81
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x33
	.string	"lit1"
	.byte	0x1
	.value	0xa81
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x39
	.long	.LASF43
	.byte	0x1
	.value	0xa82
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x35
	.long	0x7009
	.byte	0x1
	.string	"build_unary_op"
	.byte	0x1
	.value	0xad4
	.byte	0x1
	.long	0x1e5
	.long	.LFB40
	.long	.LFE40
	.long	.LLST25
	.uleb128 0x36
	.long	.LASF0
	.byte	0x1
	.value	0xad1
	.long	0x141d
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x37
	.string	"xarg"
	.byte	0x1
	.value	0xad2
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x37
	.string	"flag"
	.byte	0x1
	.value	0xad3
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x33
	.string	"arg"
	.byte	0x1
	.value	0xad6
	.long	0x1e5
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x33
	.string	"argtype"
	.byte	0x1
	.value	0xad7
	.long	0x1e5
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x33
	.string	"typecode"
	.byte	0x1
	.value	0xad8
	.long	0x141d
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x33
	.string	"val"
	.byte	0x1
	.value	0xad9
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x33
	.string	"noconvert"
	.byte	0x1
	.value	0xada
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x31
	.string	"give_up"
	.byte	0x1
	.value	0xbc8
	.long	.L1360
	.uleb128 0x32
	.long	0x6f67
	.long	.LBB38
	.long	.LBE38
	.uleb128 0x33
	.string	"real"
	.byte	0x1
	.value	0xb59
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x33
	.string	"imag"
	.byte	0x1
	.value	0xb59
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.byte	0x0
	.uleb128 0x32
	.long	0x6fd5
	.long	.LBB39
	.long	.LBE39
	.uleb128 0x33
	.string	"inc"
	.byte	0x1
	.value	0xb73
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x39
	.long	.LASF44
	.byte	0x1
	.value	0xb74
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x34
	.long	.LBB40
	.long	.LBE40
	.uleb128 0x33
	.string	"incremented"
	.byte	0x1
	.value	0xbae
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x33
	.string	"modify"
	.byte	0x1
	.value	0xbae
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x39
	.long	.LASF21
	.byte	0x1
	.value	0xbae
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.uleb128 0x34
	.long	.LBB41
	.long	.LBE41
	.uleb128 0x33
	.string	"addr"
	.byte	0x1
	.value	0xc2d
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x34
	.long	.LBB42
	.long	.LBE42
	.uleb128 0x39
	.long	.LASF41
	.byte	0x1
	.value	0xc31
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x35
	.long	0x704b
	.byte	0x1
	.string	"lvalue_p"
	.byte	0x1
	.value	0xc79
	.byte	0x1
	.long	0x2df
	.long	.LFB41
	.long	.LFE41
	.long	.LLST26
	.uleb128 0x37
	.string	"ref"
	.byte	0x1
	.value	0xc78
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x39
	.long	.LASF0
	.byte	0x1
	.value	0xc7a
	.long	0x141d
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x35
	.long	0x70a2
	.byte	0x1
	.string	"lvalue_or_else"
	.byte	0x1
	.value	0xca0
	.byte	0x1
	.long	0x2df
	.long	.LFB42
	.long	.LFE42
	.long	.LLST27
	.uleb128 0x37
	.string	"ref"
	.byte	0x1
	.value	0xc9e
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x36
	.long	.LASF46
	.byte	0x1
	.value	0xc9f
	.long	0x2cc
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x33
	.string	"win"
	.byte	0x1
	.value	0xca1
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x38
	.long	0x7120
	.string	"unary_complex_lvalue"
	.byte	0x1
	.value	0xcb6
	.byte	0x1
	.long	0x1e5
	.long	.LFB43
	.long	.LFE43
	.long	.LLST28
	.uleb128 0x36
	.long	.LASF0
	.byte	0x1
	.value	0xcb3
	.long	0x141d
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x37
	.string	"arg"
	.byte	0x1
	.value	0xcb4
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x37
	.string	"flag"
	.byte	0x1
	.value	0xcb5
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x34
	.long	.LBB43
	.long	.LBE43
	.uleb128 0x33
	.string	"real_result"
	.byte	0x1
	.value	0xcba
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x3a
	.long	0x715d
	.string	"pedantic_lvalue_warning"
	.byte	0x1
	.value	0xcdc
	.byte	0x1
	.long	.LFB44
	.long	.LFE44
	.long	.LLST29
	.uleb128 0x36
	.long	.LASF0
	.byte	0x1
	.value	0xcdb
	.long	0x141d
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x3b
	.long	0x71a3
	.byte	0x1
	.string	"readonly_warning"
	.byte	0x1
	.value	0xcf2
	.byte	0x1
	.long	.LFB45
	.long	.LFE45
	.long	.LLST30
	.uleb128 0x37
	.string	"arg"
	.byte	0x1
	.value	0xcf0
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x36
	.long	.LASF46
	.byte	0x1
	.value	0xcf1
	.long	0x2cc
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x35
	.long	0x71ed
	.byte	0x1
	.string	"c_mark_addressable"
	.byte	0x1
	.value	0xd09
	.byte	0x1
	.long	0x4d04
	.long	.LFB46
	.long	.LFE46
	.long	.LLST31
	.uleb128 0x37
	.string	"exp"
	.byte	0x1
	.value	0xd08
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.string	"x"
	.byte	0x1
	.value	0xd0a
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x35
	.long	0x72fa
	.byte	0x1
	.string	"build_conditional_expr"
	.byte	0x1
	.value	0xd60
	.byte	0x1
	.long	0x1e5
	.long	.LFB47
	.long	.LFE47
	.long	.LLST32
	.uleb128 0x37
	.string	"ifexp"
	.byte	0x1
	.value	0xd5f
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x37
	.string	"op1"
	.byte	0x1
	.value	0xd5f
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x37
	.string	"op2"
	.byte	0x1
	.value	0xd5f
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x39
	.long	.LASF38
	.byte	0x1
	.value	0xd61
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x33
	.string	"type2"
	.byte	0x1
	.value	0xd62
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x39
	.long	.LASF37
	.byte	0x1
	.value	0xd63
	.long	0x141d
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x33
	.string	"code2"
	.byte	0x1
	.value	0xd64
	.long	0x141d
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x39
	.long	.LASF44
	.byte	0x1
	.value	0xd65
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x39
	.long	.LASF43
	.byte	0x1
	.value	0xd66
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x33
	.string	"orig_op2"
	.byte	0x1
	.value	0xd66
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x34
	.long	.LBB44
	.long	.LBE44
	.uleb128 0x33
	.string	"unsigned_op1"
	.byte	0x1
	.value	0xda4
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x33
	.string	"unsigned_op2"
	.byte	0x1
	.value	0xda5
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x35
	.long	0x7339
	.byte	0x1
	.string	"build_compound_expr"
	.byte	0x1
	.value	0xe14
	.byte	0x1
	.long	0x1e5
	.long	.LFB48
	.long	.LFE48
	.long	.LLST33
	.uleb128 0x37
	.string	"list"
	.byte	0x1
	.value	0xe13
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x38
	.long	0x73a3
	.string	"internal_build_compound_expr"
	.byte	0x1
	.value	0xe1c
	.byte	0x1
	.long	0x1e5
	.long	.LFB49
	.long	.LFE49
	.long	.LLST34
	.uleb128 0x37
	.string	"list"
	.byte	0x1
	.value	0xe1a
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x37
	.string	"first_p"
	.byte	0x1
	.value	0xe1b
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x33
	.string	"rest"
	.byte	0x1
	.value	0xe1d
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x35
	.long	0x74ec
	.byte	0x1
	.string	"build_c_cast"
	.byte	0x1
	.value	0xe57
	.byte	0x1
	.long	0x1e5
	.long	.LFB50
	.long	.LFE50
	.long	.LLST35
	.uleb128 0x36
	.long	.LASF4
	.byte	0x1
	.value	0xe55
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x37
	.string	"expr"
	.byte	0x1
	.value	0xe56
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x39
	.long	.LASF21
	.byte	0x1
	.value	0xe58
	.long	0x1e5
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x32
	.long	0x743c
	.long	.LBB45
	.long	.LBE45
	.uleb128 0x39
	.long	.LASF41
	.byte	0x1
	.value	0xe80
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x34
	.long	.LBB46
	.long	.LBE46
	.uleb128 0x39
	.long	.LASF29
	.byte	0x1
	.value	0xe8a
	.long	0x2cc
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x33
	.string	"t"
	.byte	0x1
	.value	0xe8b
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.byte	0x0
	.byte	0x0
	.uleb128 0x34
	.long	.LBB47
	.long	.LBE47
	.uleb128 0x33
	.string	"otype"
	.byte	0x1
	.value	0xea2
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x33
	.string	"ovalue"
	.byte	0x1
	.value	0xea2
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x32
	.long	0x7498
	.long	.LBB48
	.long	.LBE48
	.uleb128 0x33
	.string	"in_type"
	.byte	0x1
	.value	0xeb3
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x39
	.long	.LASF47
	.byte	0x1
	.value	0xeb4
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0x0
	.uleb128 0x34
	.long	.LBB49
	.long	.LBE49
	.uleb128 0x33
	.string	"in_type"
	.byte	0x1
	.value	0xec7
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x39
	.long	.LASF47
	.byte	0x1
	.value	0xec8
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x33
	.string	"added"
	.byte	0x1
	.value	0xec9
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x33
	.string	"discarded"
	.byte	0x1
	.value	0xeca
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x35
	.long	0x7547
	.byte	0x1
	.string	"c_cast_expr"
	.byte	0x1
	.value	0xf38
	.byte	0x1
	.long	0x1e5
	.long	.LFB51
	.long	.LFE51
	.long	.LLST36
	.uleb128 0x36
	.long	.LASF4
	.byte	0x1
	.value	0xf37
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x37
	.string	"expr"
	.byte	0x1
	.value	0xf37
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x33
	.string	"saved_wsp"
	.byte	0x1
	.value	0xf39
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x35
	.long	0x763c
	.byte	0x1
	.string	"build_modify_expr"
	.byte	0x1
	.value	0xf4f
	.byte	0x1
	.long	0x1e5
	.long	.LFB52
	.long	.LFE52
	.long	.LLST37
	.uleb128 0x37
	.string	"lhs"
	.byte	0x1
	.value	0xf4d
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x37
	.string	"modifycode"
	.byte	0x1
	.value	0xf4e
	.long	0x141d
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x37
	.string	"rhs"
	.byte	0x1
	.value	0xf4d
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x39
	.long	.LASF33
	.byte	0x1
	.value	0xf50
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x33
	.string	"newrhs"
	.byte	0x1
	.value	0xf51
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x33
	.string	"lhstype"
	.byte	0x1
	.value	0xf52
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x33
	.string	"olhstype"
	.byte	0x1
	.value	0xf53
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x32
	.long	0x760d
	.long	.LBB50
	.long	.LBE50
	.uleb128 0x33
	.string	"cond"
	.byte	0x1
	.value	0xf79
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x34
	.long	.LBB51
	.long	.LBE51
	.uleb128 0x33
	.string	"inner_lhs"
	.byte	0x1
	.value	0xfa6
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x39
	.long	.LASF33
	.byte	0x1
	.value	0xfa7
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x38
	.long	0x7803
	.string	"convert_for_assignment"
	.byte	0x1
	.value	0x1002
	.byte	0x1
	.long	0x1e5
	.long	.LFB53
	.long	.LFE53
	.long	.LLST38
	.uleb128 0x36
	.long	.LASF4
	.byte	0x1
	.value	0xffe
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x37
	.string	"rhs"
	.byte	0x1
	.value	0xffe
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x37
	.string	"errtype"
	.byte	0x1
	.value	0xfff
	.long	0x2cc
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x36
	.long	.LASF42
	.byte	0x1
	.value	0x1000
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x37
	.string	"funname"
	.byte	0x1
	.value	0x1000
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x37
	.string	"parmnum"
	.byte	0x1
	.value	0x1001
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x33
	.string	"codel"
	.byte	0x1
	.value	0x1003
	.long	0x141d
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x33
	.string	"rhstype"
	.byte	0x1
	.value	0x1004
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x33
	.string	"coder"
	.byte	0x1
	.value	0x1005
	.long	0x141d
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x32
	.long	0x77bd
	.long	.LBB52
	.long	.LBE52
	.uleb128 0x33
	.string	"memb_types"
	.byte	0x1
	.value	0x1050
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x33
	.string	"marginal_memb_type"
	.byte	0x1
	.value	0x1051
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x32
	.long	0x7794
	.long	.LBB53
	.long	.LBE53
	.uleb128 0x33
	.string	"memb_type"
	.byte	0x1
	.value	0x1056
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x34
	.long	.LBB54
	.long	.LBE54
	.uleb128 0x33
	.string	"ttl"
	.byte	0x1
	.value	0x1061
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x33
	.string	"ttr"
	.byte	0x1
	.value	0x1062
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0x0
	.byte	0x0
	.uleb128 0x34
	.long	.LBB55
	.long	.LBE55
	.uleb128 0x33
	.string	"ttl"
	.byte	0x1
	.value	0x108b
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x33
	.string	"ttr"
	.byte	0x1
	.value	0x108c
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.byte	0x0
	.uleb128 0x32
	.long	0x77e9
	.long	.LBB56
	.long	.LBE56
	.uleb128 0x33
	.string	"ttl"
	.byte	0x1
	.value	0x10ad
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x33
	.string	"ttr"
	.byte	0x1
	.value	0x10ae
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x34
	.long	.LBB57
	.long	.LBE57
	.uleb128 0x39
	.long	.LASF48
	.byte	0x1
	.value	0x110f
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x35
	.long	0x7885
	.byte	0x1
	.string	"c_convert_parm_for_inlining"
	.byte	0x1
	.value	0x1127
	.byte	0x1
	.long	0x1e5
	.long	.LFB54
	.long	.LFE54
	.long	.LLST39
	.uleb128 0x37
	.string	"parm"
	.byte	0x1
	.value	0x1126
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x36
	.long	.LASF21
	.byte	0x1
	.value	0x1126
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x37
	.string	"fn"
	.byte	0x1
	.value	0x1126
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x33
	.string	"ret"
	.byte	0x1
	.value	0x1128
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x39
	.long	.LASF4
	.byte	0x1
	.value	0x1128
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x3a
	.long	0x7990
	.string	"warn_for_assignment"
	.byte	0x1
	.value	0x1147
	.byte	0x1
	.long	.LFB55
	.long	.LFE55
	.long	.LLST40
	.uleb128 0x36
	.long	.LASF46
	.byte	0x1
	.value	0x1143
	.long	0x2cc
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x37
	.string	"opname"
	.byte	0x1
	.value	0x1144
	.long	0x2cc
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x36
	.long	.LASF32
	.byte	0x1
	.value	0x1145
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x37
	.string	"argnum"
	.byte	0x1
	.value	0x1146
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x34
	.long	.LBB58
	.long	.LBE58
	.uleb128 0x39
	.long	.LASF48
	.byte	0x1
	.value	0x114a
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x33
	.string	"new_opname"
	.byte	0x1
	.value	0x114b
	.long	0x3c3
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x32
	.long	0x793b
	.long	.LBB59
	.long	.LBE59
	.uleb128 0x39
	.long	.LASF49
	.byte	0x1
	.value	0x1157
	.long	0x4cfa
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.uleb128 0x32
	.long	0x7958
	.long	.LBB60
	.long	.LBE60
	.uleb128 0x39
	.long	.LASF50
	.byte	0x1
	.value	0x1161
	.long	0x4cfa
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x32
	.long	0x7975
	.long	.LBB61
	.long	.LBE61
	.uleb128 0x39
	.long	.LASF49
	.byte	0x1
	.value	0x1169
	.long	0x4cfa
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x34
	.long	.LBB62
	.long	.LBE62
	.uleb128 0x39
	.long	.LASF50
	.byte	0x1
	.value	0x1173
	.long	0x4cfa
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x38
	.long	0x79ec
	.string	"valid_compound_expr_initializer"
	.byte	0x1
	.value	0x1186
	.byte	0x1
	.long	0x1e5
	.long	.LFB56
	.long	.LFE56
	.long	.LLST41
	.uleb128 0x36
	.long	.LASF21
	.byte	0x1
	.value	0x1184
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x37
	.string	"endtype"
	.byte	0x1
	.value	0x1185
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x3b
	.long	0x7a83
	.byte	0x1
	.string	"store_init_value"
	.byte	0x1
	.value	0x119e
	.byte	0x1
	.long	.LFB57
	.long	.LFE57
	.long	.LLST42
	.uleb128 0x36
	.long	.LASF3
	.byte	0x1
	.value	0x119d
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x37
	.string	"init"
	.byte	0x1
	.value	0x119d
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x39
	.long	.LASF21
	.byte	0x1
	.value	0x119f
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x39
	.long	.LASF4
	.byte	0x1
	.value	0x119f
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x34
	.long	.LBB63
	.long	.LBE63
	.uleb128 0x39
	.long	.LASF51
	.byte	0x1
	.value	0x11d9
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x34
	.long	.LBB64
	.long	.LBE64
	.uleb128 0x39
	.long	.LASF3
	.byte	0x1
	.value	0x11e1
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x23
	.long	0x7aa1
	.byte	0x4
	.byte	0x1
	.value	0x11f9
	.uleb128 0xa
	.string	"i"
	.byte	0x1
	.value	0x11fa
	.long	0x2df
	.uleb128 0xa
	.string	"s"
	.byte	0x1
	.value	0x11fb
	.long	0x2cc
	.byte	0x0
	.uleb128 0x3c
	.long	0x7acc
	.long	.LASF52
	.byte	0x8
	.byte	0x1
	.value	0x11f6
	.uleb128 0x10
	.string	"kind"
	.byte	0x1
	.value	0x11f7
	.long	0x2df
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x10
	.string	"u"
	.byte	0x1
	.value	0x11fc
	.long	0x7a83
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x3a
	.long	0x7b16
	.string	"push_string"
	.byte	0x1
	.value	0x122b
	.byte	0x1
	.long	.LFB58
	.long	.LFE58
	.long	.LLST43
	.uleb128 0x36
	.long	.LASF2
	.byte	0x1
	.value	0x122a
	.long	0x2cc
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x34
	.long	.LBB65
	.long	.LBE65
	.uleb128 0x39
	.long	.LASF53
	.byte	0x1
	.value	0x122c
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x3a
	.long	0x7b74
	.string	"push_member_name"
	.byte	0x1
	.value	0x1235
	.byte	0x1
	.long	.LFB59
	.long	.LFE59
	.long	.LLST44
	.uleb128 0x36
	.long	.LASF3
	.byte	0x1
	.value	0x1233
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x39
	.long	.LASF2
	.byte	0x1
	.value	0x1236
	.long	0x4cfa
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x34
	.long	.LBB66
	.long	.LBE66
	.uleb128 0x39
	.long	.LASF53
	.byte	0x1
	.value	0x1238
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x3a
	.long	0x7bc7
	.string	"push_array_bounds"
	.byte	0x1
	.value	0x1240
	.byte	0x1
	.long	.LFB60
	.long	.LFE60
	.long	.LLST45
	.uleb128 0x37
	.string	"bounds"
	.byte	0x1
	.value	0x123f
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x34
	.long	.LBB67
	.long	.LBE67
	.uleb128 0x39
	.long	.LASF53
	.byte	0x1
	.value	0x1241
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x38
	.long	0x7c0e
	.string	"spelling_length"
	.byte	0x1
	.value	0x1248
	.byte	0x1
	.long	0x2df
	.long	.LFB61
	.long	.LFE61
	.long	.LLST46
	.uleb128 0x33
	.string	"size"
	.byte	0x1
	.value	0x1249
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x33
	.string	"p"
	.byte	0x1
	.value	0x124a
	.long	0x7c0e
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7aa1
	.uleb128 0x38
	.long	0x7c80
	.string	"print_spelling"
	.byte	0x1
	.value	0x125c
	.byte	0x1
	.long	0x3c3
	.long	.LFB62
	.long	.LFE62
	.long	.LLST47
	.uleb128 0x37
	.string	"buffer"
	.byte	0x1
	.value	0x125b
	.long	0x3c3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.string	"d"
	.byte	0x1
	.value	0x125d
	.long	0x3c3
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x33
	.string	"p"
	.byte	0x1
	.value	0x125e
	.long	0x7c0e
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x34
	.long	.LBB68
	.long	.LBE68
	.uleb128 0x33
	.string	"s"
	.byte	0x1
	.value	0x1268
	.long	0x2cc
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x3b
	.long	0x7cc0
	.byte	0x1
	.string	"error_init"
	.byte	0x1
	.value	0x1279
	.byte	0x1
	.long	.LFB63
	.long	.LFE63
	.long	.LLST48
	.uleb128 0x36
	.long	.LASF46
	.byte	0x1
	.value	0x1278
	.long	0x2cc
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x39
	.long	.LASF54
	.byte	0x1
	.value	0x127a
	.long	0x3c3
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x3b
	.long	0x7d02
	.byte	0x1
	.string	"pedwarn_init"
	.byte	0x1
	.value	0x1289
	.byte	0x1
	.long	.LFB64
	.long	.LFE64
	.long	.LLST49
	.uleb128 0x36
	.long	.LASF46
	.byte	0x1
	.value	0x1288
	.long	0x2cc
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x39
	.long	.LASF54
	.byte	0x1
	.value	0x128a
	.long	0x3c3
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x3a
	.long	0x7d43
	.string	"warning_init"
	.byte	0x1
	.value	0x1299
	.byte	0x1
	.long	.LFB65
	.long	.LFE65
	.long	.LLST50
	.uleb128 0x36
	.long	.LASF46
	.byte	0x1
	.value	0x1298
	.long	0x2cc
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x39
	.long	.LASF54
	.byte	0x1
	.value	0x129a
	.long	0x3c3
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x38
	.long	0x7df9
	.string	"digest_init"
	.byte	0x1
	.value	0x12ac
	.byte	0x1
	.long	0x1e5
	.long	.LFB66
	.long	.LFE66
	.long	.LLST51
	.uleb128 0x36
	.long	.LASF4
	.byte	0x1
	.value	0x12aa
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x37
	.string	"init"
	.byte	0x1
	.value	0x12aa
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x37
	.string	"require_constant"
	.byte	0x1
	.value	0x12ab
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x39
	.long	.LASF0
	.byte	0x1
	.value	0x12ad
	.long	0x141d
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x39
	.long	.LASF51
	.byte	0x1
	.value	0x12ae
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x32
	.long	0x7ddf
	.long	.LBB69
	.long	.LBE69
	.uleb128 0x33
	.string	"typ1"
	.byte	0x1
	.value	0x12c2
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x34
	.long	.LBB70
	.long	.LBE70
	.uleb128 0x39
	.long	.LASF3
	.byte	0x1
	.value	0x1315
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x1d
	.long	0x7e71
	.string	"init_node"
	.byte	0x18
	.byte	0x1
	.value	0x13a2
	.uleb128 0x10
	.string	"left"
	.byte	0x1
	.value	0x13a3
	.long	0x7e71
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x10
	.string	"right"
	.byte	0x1
	.value	0x13a3
	.long	0x7e71
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x10
	.string	"parent"
	.byte	0x1
	.value	0x13a4
	.long	0x7e71
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x10
	.string	"balance"
	.byte	0x1
	.value	0x13a5
	.long	0x2df
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x1e
	.long	.LASF20
	.byte	0x1
	.value	0x13a6
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x1e
	.long	.LASF21
	.byte	0x1
	.value	0x13a7
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7df9
	.uleb128 0x3c
	.long	0x801a
	.long	.LASF55
	.byte	0x40
	.byte	0x1
	.value	0x13d6
	.uleb128 0x10
	.string	"next"
	.byte	0x1
	.value	0x13d7
	.long	0x801a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1e
	.long	.LASF4
	.byte	0x1
	.value	0x13d8
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x10
	.string	"fields"
	.byte	0x1
	.value	0x13d9
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x10
	.string	"index"
	.byte	0x1
	.value	0x13da
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x10
	.string	"max_index"
	.byte	0x1
	.value	0x13db
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x10
	.string	"unfilled_index"
	.byte	0x1
	.value	0x13dc
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x10
	.string	"unfilled_fields"
	.byte	0x1
	.value	0x13dd
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x10
	.string	"bit_index"
	.byte	0x1
	.value	0x13de
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x1e
	.long	.LASF18
	.byte	0x1
	.value	0x13df
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x10
	.string	"pending_elts"
	.byte	0x1
	.value	0x13e0
	.long	0x7e71
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1e
	.long	.LASF8
	.byte	0x1
	.value	0x13e1
	.long	0x2df
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x1e
	.long	.LASF53
	.byte	0x1
	.value	0x13e2
	.long	0x2df
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x10
	.string	"replacement_value"
	.byte	0x1
	.value	0x13e5
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x1e
	.long	.LASF56
	.byte	0x1
	.value	0x13e6
	.long	0x80a8
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x1e
	.long	.LASF45
	.byte	0x1
	.value	0x13e7
	.long	0x2d7
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x10
	.string	"simple"
	.byte	0x1
	.value	0x13e8
	.long	0x2d7
	.byte	0x2
	.byte	0x23
	.uleb128 0x39
	.uleb128 0x1e
	.long	.LASF57
	.byte	0x1
	.value	0x13e9
	.long	0x2d7
	.byte	0x2
	.byte	0x23
	.uleb128 0x3a
	.uleb128 0x10
	.string	"erroneous"
	.byte	0x1
	.value	0x13ea
	.long	0x2d7
	.byte	0x2
	.byte	0x23
	.uleb128 0x3b
	.uleb128 0x10
	.string	"outer"
	.byte	0x1
	.value	0x13eb
	.long	0x2d7
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x10
	.string	"incremental"
	.byte	0x1
	.value	0x13ec
	.long	0x2d7
	.byte	0x2
	.byte	0x23
	.uleb128 0x3d
	.uleb128 0x10
	.string	"designated"
	.byte	0x1
	.value	0x13ed
	.long	0x2d7
	.byte	0x2
	.byte	0x23
	.uleb128 0x3e
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7e77
	.uleb128 0x3c
	.long	0x80a8
	.long	.LASF58
	.byte	0x1c
	.byte	0x1
	.value	0x13d3
	.uleb128 0x10
	.string	"next"
	.byte	0x1
	.value	0x13f7
	.long	0x80a8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x10
	.string	"prev"
	.byte	0x1
	.value	0x13f7
	.long	0x80a8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x10
	.string	"stack"
	.byte	0x1
	.value	0x13f8
	.long	0x801a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x10
	.string	"range_start"
	.byte	0x1
	.value	0x13f9
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x10
	.string	"index"
	.byte	0x1
	.value	0x13fa
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x1e
	.long	.LASF59
	.byte	0x1
	.value	0x13fb
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x10
	.string	"fields"
	.byte	0x1
	.value	0x13fc
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x8020
	.uleb128 0x3c
	.long	0x8189
	.long	.LASF60
	.byte	0x28
	.byte	0x1
	.value	0x1406
	.uleb128 0x10
	.string	"next"
	.byte	0x1
	.value	0x1407
	.long	0x8189
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1e
	.long	.LASF3
	.byte	0x1
	.value	0x1408
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x10
	.string	"asmspec"
	.byte	0x1
	.value	0x1409
	.long	0x2cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1e
	.long	.LASF55
	.byte	0x1
	.value	0x140a
	.long	0x801a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x1e
	.long	.LASF58
	.byte	0x1
	.value	0x140b
	.long	0x80a8
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x1e
	.long	.LASF18
	.byte	0x1
	.value	0x140c
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x1e
	.long	.LASF52
	.byte	0x1
	.value	0x140d
	.long	0x7c0e
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x1e
	.long	.LASF61
	.byte	0x1
	.value	0x140e
	.long	0x7c0e
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x1e
	.long	.LASF62
	.byte	0x1
	.value	0x140f
	.long	0x2df
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1e
	.long	.LASF63
	.byte	0x1
	.value	0x1410
	.long	0x2d7
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1e
	.long	.LASF64
	.byte	0x1
	.value	0x1411
	.long	0x2d7
	.byte	0x2
	.byte	0x23
	.uleb128 0x25
	.uleb128 0x1e
	.long	.LASF65
	.byte	0x1
	.value	0x1412
	.long	0x2d7
	.byte	0x2
	.byte	0x23
	.uleb128 0x26
	.uleb128 0x10
	.string	"deferred"
	.byte	0x1
	.value	0x1413
	.long	0x2d7
	.byte	0x2
	.byte	0x23
	.uleb128 0x27
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x80ae
	.uleb128 0x3b
	.long	0x8218
	.byte	0x1
	.string	"start_init"
	.byte	0x1
	.value	0x141f
	.byte	0x1
	.long	.LFB67
	.long	.LFE67
	.long	.LLST52
	.uleb128 0x36
	.long	.LASF3
	.byte	0x1
	.value	0x141c
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x37
	.string	"asmspec_tree"
	.byte	0x1
	.value	0x141d
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x36
	.long	.LASF63
	.byte	0x1
	.value	0x141e
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x33
	.string	"locus"
	.byte	0x1
	.value	0x1420
	.long	0x2cc
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x33
	.string	"p"
	.byte	0x1
	.value	0x1421
	.long	0x8189
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x33
	.string	"asmspec"
	.byte	0x1
	.value	0x1423
	.long	0x2cc
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x3b
	.long	0x8273
	.byte	0x1
	.string	"finish_init"
	.byte	0x1
	.value	0x1460
	.byte	0x1
	.long	.LFB68
	.long	.LFE68
	.long	.LLST53
	.uleb128 0x33
	.string	"p"
	.byte	0x1
	.value	0x1461
	.long	0x8189
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x32
	.long	0x8262
	.long	.LBB71
	.long	.LBE71
	.uleb128 0x33
	.string	"q"
	.byte	0x1
	.value	0x1473
	.long	0x801a
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2e
	.long	.LASF36
	.long	0x8e60
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.19633
	.byte	0x0
	.uleb128 0x3b
	.long	0x82c4
	.byte	0x1
	.string	"really_start_incremental_init"
	.byte	0x1
	.value	0x1496
	.byte	0x1
	.long	.LFB69
	.long	.LFE69
	.long	.LLST54
	.uleb128 0x36
	.long	.LASF4
	.byte	0x1
	.value	0x1495
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.string	"p"
	.byte	0x1
	.value	0x1497
	.long	0x801a
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x3b
	.long	0x8316
	.byte	0x1
	.string	"push_init_level"
	.byte	0x1
	.value	0x1501
	.byte	0x1
	.long	.LFB70
	.long	.LFE70
	.long	.LLST55
	.uleb128 0x36
	.long	.LASF57
	.byte	0x1
	.value	0x1500
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.string	"p"
	.byte	0x1
	.value	0x1502
	.long	0x801a
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x39
	.long	.LASF21
	.byte	0x1
	.value	0x1503
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x35
	.long	0x837b
	.byte	0x1
	.string	"pop_init_level"
	.byte	0x1
	.value	0x15c5
	.byte	0x1
	.long	0x1e5
	.long	.LFB71
	.long	.LFE71
	.long	.LLST56
	.uleb128 0x36
	.long	.LASF57
	.byte	0x1
	.value	0x15c4
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.string	"p"
	.byte	0x1
	.value	0x15c6
	.long	0x801a
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x39
	.long	.LASF35
	.byte	0x1
	.value	0x15c7
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x2e
	.long	.LASF36
	.long	0x8e4b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.20040
	.byte	0x0
	.uleb128 0x38
	.long	0x83eb
	.string	"set_designator"
	.byte	0x1
	.value	0x1661
	.byte	0x1
	.long	0x2df
	.long	.LFB72
	.long	.LFE72
	.long	.LLST57
	.uleb128 0x37
	.string	"array"
	.byte	0x1
	.value	0x1660
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.string	"subtype"
	.byte	0x1
	.value	0x1662
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x33
	.string	"subcode"
	.byte	0x1
	.value	0x1663
	.long	0x141d
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x2e
	.long	.LASF36
	.long	0x8e46
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.20223
	.byte	0x0
	.uleb128 0x3a
	.long	0x842e
	.string	"push_range_stack"
	.byte	0x1
	.value	0x16a7
	.byte	0x1
	.long	.LFB73
	.long	.LFE73
	.long	.LLST58
	.uleb128 0x36
	.long	.LASF59
	.byte	0x1
	.value	0x16a6
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.string	"p"
	.byte	0x1
	.value	0x16a8
	.long	0x80a8
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x3b
	.long	0x8475
	.byte	0x1
	.string	"set_init_index"
	.byte	0x1
	.value	0x16bf
	.byte	0x1
	.long	.LFB74
	.long	.LFE74
	.long	.LLST59
	.uleb128 0x37
	.string	"first"
	.byte	0x1
	.value	0x16be
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x37
	.string	"last"
	.byte	0x1
	.value	0x16be
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x3b
	.long	0x84c0
	.byte	0x1
	.string	"set_init_label"
	.byte	0x1
	.value	0x1704
	.byte	0x1
	.long	.LFB75
	.long	.LFE75
	.long	.LLST60
	.uleb128 0x37
	.string	"fieldname"
	.byte	0x1
	.value	0x1703
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.string	"tail"
	.byte	0x1
	.value	0x1705
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x3a
	.long	0x8592
	.string	"add_pending_init"
	.byte	0x1
	.value	0x172e
	.byte	0x1
	.long	.LFB76
	.long	.LFE76
	.long	.LLST61
	.uleb128 0x36
	.long	.LASF20
	.byte	0x1
	.value	0x172d
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x36
	.long	.LASF21
	.byte	0x1
	.value	0x172d
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x33
	.string	"p"
	.byte	0x1
	.value	0x172f
	.long	0x7e71
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x33
	.string	"q"
	.byte	0x1
	.value	0x172f
	.long	0x8592
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x33
	.string	"r"
	.byte	0x1
	.value	0x172f
	.long	0x7e71
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x32
	.long	0x8548
	.long	.LBB72
	.long	.LBE72
	.uleb128 0x39
	.long	.LASF66
	.byte	0x1
	.value	0x1748
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x34
	.long	.LBB73
	.long	.LBE73
	.uleb128 0x33
	.string	"s"
	.byte	0x1
	.value	0x1768
	.long	0x7e71
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x32
	.long	0x8579
	.long	.LBB74
	.long	.LBE74
	.uleb128 0x33
	.string	"t"
	.byte	0x1
	.value	0x178b
	.long	0x7e71
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x34
	.long	.LBB75
	.long	.LBE75
	.uleb128 0x33
	.string	"t"
	.byte	0x1
	.value	0x17d4
	.long	0x7e71
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7e71
	.uleb128 0x3a
	.long	0x85d7
	.string	"set_nonincremental_init"
	.byte	0x1
	.value	0x1805
	.byte	0x1
	.long	.LFB77
	.long	.LFE77
	.long	.LLST62
	.uleb128 0x33
	.string	"chain"
	.byte	0x1
	.value	0x1806
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x3a
	.long	0x86d4
	.string	"set_nonincremental_init_from_string"
	.byte	0x1
	.value	0x182a
	.byte	0x1
	.long	.LFB78
	.long	.LFE78
	.long	.LLST63
	.uleb128 0x37
	.string	"str"
	.byte	0x1
	.value	0x1829
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x39
	.long	.LASF21
	.byte	0x1
	.value	0x182b
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x39
	.long	.LASF20
	.byte	0x1
	.value	0x182b
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x39
	.long	.LASF4
	.byte	0x1
	.value	0x182b
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x33
	.string	"val"
	.byte	0x1
	.value	0x182c
	.long	0x86d4
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x33
	.string	"p"
	.byte	0x1
	.value	0x182d
	.long	0x2cc
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x33
	.string	"end"
	.byte	0x1
	.value	0x182d
	.long	0x2cc
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x33
	.string	"byte"
	.byte	0x1
	.value	0x182e
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x33
	.string	"wchar_bytes"
	.byte	0x1
	.value	0x182e
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x33
	.string	"charwidth"
	.byte	0x1
	.value	0x182e
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x39
	.long	.LASF66
	.byte	0x1
	.value	0x182e
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2e
	.long	.LASF36
	.long	0x8e31
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.20630
	.byte	0x0
	.uleb128 0x12
	.long	0x86e4
	.long	0x35a
	.uleb128 0x13
	.long	0x2ed
	.byte	0x1
	.byte	0x0
	.uleb128 0x38
	.long	0x8744
	.string	"find_init_member"
	.byte	0x1
	.value	0x187e
	.byte	0x1
	.long	0x1e5
	.long	.LFB79
	.long	.LFE79
	.long	.LLST64
	.uleb128 0x36
	.long	.LASF41
	.byte	0x1
	.value	0x187d
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.string	"p"
	.byte	0x1
	.value	0x187f
	.long	0x7e71
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x34
	.long	.LBB76
	.long	.LBE76
	.uleb128 0x39
	.long	.LASF66
	.byte	0x1
	.value	0x1894
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x3a
	.long	0x87f9
	.string	"output_init_element"
	.byte	0x1
	.value	0x18be
	.byte	0x1
	.long	.LFB80
	.long	.LFE80
	.long	.LLST65
	.uleb128 0x36
	.long	.LASF21
	.byte	0x1
	.value	0x18bc
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x36
	.long	.LASF4
	.byte	0x1
	.value	0x18bc
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x36
	.long	.LASF41
	.byte	0x1
	.value	0x18bc
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x37
	.string	"pending"
	.byte	0x1
	.value	0x18bd
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x32
	.long	0x87ca
	.long	.LBB77
	.long	.LBE77
	.uleb128 0x39
	.long	.LASF3
	.byte	0x1
	.value	0x18d1
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x34
	.long	.LBB78
	.long	.LBE78
	.uleb128 0x39
	.long	.LASF66
	.byte	0x1
	.value	0x1914
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x33
	.string	"unfillpos"
	.byte	0x1
	.value	0x1914
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x3a
	.long	0x88a8
	.string	"output_pending_init_elements"
	.byte	0x1
	.value	0x195a
	.byte	0x1
	.long	.LFB81
	.long	.LFE81
	.long	.LLST66
	.uleb128 0x37
	.string	"all"
	.byte	0x1
	.value	0x1959
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.string	"elt"
	.byte	0x1
	.value	0x195b
	.long	0x7e71
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x33
	.string	"next"
	.byte	0x1
	.value	0x195c
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x31
	.string	"retry"
	.byte	0x1
	.value	0x19d9
	.long	.L2726
	.uleb128 0x34
	.long	.LBB79
	.long	.LBE79
	.uleb128 0x33
	.string	"ctor_unfilled_bitpos"
	.byte	0x1
	.value	0x1995
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x33
	.string	"elt_bitpos"
	.byte	0x1
	.value	0x1995
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x3b
	.long	0x8a01
	.byte	0x1
	.string	"process_init_element"
	.byte	0x1
	.value	0x19e7
	.byte	0x1
	.long	.LFB82
	.long	.LFE82
	.long	.LLST67
	.uleb128 0x36
	.long	.LASF21
	.byte	0x1
	.value	0x19e6
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.string	"orig_value"
	.byte	0x1
	.value	0x19e8
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x39
	.long	.LASF26
	.byte	0x1
	.value	0x19e9
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x32
	.long	0x8933
	.long	.LBB80
	.long	.LBE80
	.uleb128 0x39
	.long	.LASF67
	.byte	0x1
	.value	0x1a27
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x39
	.long	.LASF68
	.byte	0x1
	.value	0x1a28
	.long	0x141d
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.byte	0x0
	.uleb128 0x32
	.long	0x895f
	.long	.LBB81
	.long	.LBE81
	.uleb128 0x39
	.long	.LASF67
	.byte	0x1
	.value	0x1a79
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x39
	.long	.LASF68
	.byte	0x1
	.value	0x1a7a
	.long	0x141d
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.byte	0x0
	.uleb128 0x32
	.long	0x8993
	.long	.LBB82
	.long	.LBE82
	.uleb128 0x33
	.string	"elttype"
	.byte	0x1
	.value	0x1ab9
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x33
	.string	"eltcode"
	.byte	0x1
	.value	0x1aba
	.long	0x141d
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.uleb128 0x32
	.long	0x89b4
	.long	.LBB83
	.long	.LBE83
	.uleb128 0x33
	.string	"elttype"
	.byte	0x1
	.value	0x1ae9
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x32
	.long	0x89f0
	.long	.LBB84
	.long	.LBE84
	.uleb128 0x33
	.string	"p"
	.byte	0x1
	.value	0x1b13
	.long	0x80a8
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x39
	.long	.LASF56
	.byte	0x1
	.value	0x1b13
	.long	0x80a8
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x33
	.string	"finish"
	.byte	0x1
	.value	0x1b14
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x2e
	.long	.LASF36
	.long	0x8e2c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.21146
	.byte	0x0
	.uleb128 0x35
	.long	0x8a56
	.byte	0x1
	.string	"simple_asm_stmt"
	.byte	0x1
	.value	0x1b4c
	.byte	0x1
	.long	0x1e5
	.long	.LFB83
	.long	.LFE83
	.long	.LLST68
	.uleb128 0x37
	.string	"expr"
	.byte	0x1
	.value	0x1b4b
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x34
	.long	.LBB85
	.long	.LBE85
	.uleb128 0x33
	.string	"stmt"
	.byte	0x1
	.value	0x1b54
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x35
	.long	0x8b27
	.byte	0x1
	.string	"build_asm_stmt"
	.byte	0x1
	.value	0x1b6b
	.byte	0x1
	.long	0x1e5
	.long	.LFB84
	.long	.LFE84
	.long	.LLST69
	.uleb128 0x37
	.string	"cv_qualifier"
	.byte	0x1
	.value	0x1b66
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x36
	.long	.LASF2
	.byte	0x1
	.value	0x1b67
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x37
	.string	"outputs"
	.byte	0x1
	.value	0x1b68
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x37
	.string	"inputs"
	.byte	0x1
	.value	0x1b69
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x36
	.long	.LASF69
	.byte	0x1
	.value	0x1b6a
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x33
	.string	"tail"
	.byte	0x1
	.value	0x1b6c
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x32
	.long	0x8b0a
	.long	.LBB86
	.long	.LBE86
	.uleb128 0x33
	.string	"output"
	.byte	0x1
	.value	0x1b80
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x34
	.long	.LBB87
	.long	.LBE87
	.uleb128 0x33
	.string	"output"
	.byte	0x1
	.value	0x1b96
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x3b
	.long	0x8c21
	.byte	0x1
	.string	"c_expand_asm_operands"
	.byte	0x1
	.value	0x1bb1
	.byte	0x1
	.long	.LFB85
	.long	.LFE85
	.long	.LLST70
	.uleb128 0x36
	.long	.LASF2
	.byte	0x1
	.value	0x1bad
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x37
	.string	"outputs"
	.byte	0x1
	.value	0x1bad
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x37
	.string	"inputs"
	.byte	0x1
	.value	0x1bad
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x36
	.long	.LASF69
	.byte	0x1
	.value	0x1bad
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x37
	.string	"vol"
	.byte	0x1
	.value	0x1bae
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x37
	.string	"filename"
	.byte	0x1
	.value	0x1baf
	.long	0x2cc
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x37
	.string	"line"
	.byte	0x1
	.value	0x1bb0
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x33
	.string	"noutputs"
	.byte	0x1
	.value	0x1bb2
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x33
	.string	"i"
	.byte	0x1
	.value	0x1bb3
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x33
	.string	"o"
	.byte	0x1
	.value	0x1bb5
	.long	0x4d31
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x33
	.string	"tail"
	.byte	0x1
	.value	0x1bb6
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x34
	.long	.LBB88
	.long	.LBE88
	.uleb128 0x39
	.long	.LASF4
	.byte	0x1
	.value	0x1bd5
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x35
	.long	0x8cc1
	.byte	0x1
	.string	"c_expand_return"
	.byte	0x1
	.value	0x1bea
	.byte	0x1
	.long	0x1e5
	.long	.LFB86
	.long	.LFE86
	.long	.LLST71
	.uleb128 0x37
	.string	"retval"
	.byte	0x1
	.value	0x1be9
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.string	"valtype"
	.byte	0x1
	.value	0x1beb
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x34
	.long	.LBB89
	.long	.LBE89
	.uleb128 0x33
	.string	"t"
	.byte	0x1
	.value	0x1bff
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x33
	.string	"res"
	.byte	0x1
	.value	0x1c01
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x33
	.string	"inner"
	.byte	0x1
	.value	0x1c02
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x34
	.long	.LBB90
	.long	.LBE90
	.uleb128 0x33
	.string	"op1"
	.byte	0x1
	.value	0x1c1a
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1d
	.long	0x8d0c
	.string	"c_switch"
	.byte	0xc
	.byte	0x1
	.value	0x1c43
	.uleb128 0x10
	.string	"switch_stmt"
	.byte	0x1
	.value	0x1c45
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x10
	.string	"cases"
	.byte	0x1
	.value	0x1c4b
	.long	0x4f97
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x10
	.string	"next"
	.byte	0x1
	.value	0x1c4d
	.long	0x8d0c
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x8cc1
	.uleb128 0x35
	.long	0x8d8a
	.byte	0x1
	.string	"c_start_case"
	.byte	0x1
	.value	0x1c5e
	.byte	0x1
	.long	0x1e5
	.long	.LFB87
	.long	.LFE87
	.long	.LLST72
	.uleb128 0x37
	.string	"exp"
	.byte	0x1
	.value	0x1c5d
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x39
	.long	.LASF0
	.byte	0x1
	.value	0x1c5f
	.long	0x141d
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x39
	.long	.LASF4
	.byte	0x1
	.value	0x1c60
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x33
	.string	"orig_type"
	.byte	0x1
	.value	0x1c60
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x33
	.string	"cs"
	.byte	0x1
	.value	0x1c61
	.long	0x8d0c
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x35
	.long	0x8de9
	.byte	0x1
	.string	"do_case"
	.byte	0x1
	.value	0x1c8c
	.byte	0x1
	.long	0x1e5
	.long	.LFB88
	.long	.LFE88
	.long	.LLST73
	.uleb128 0x37
	.string	"low_value"
	.byte	0x1
	.value	0x1c8a
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x37
	.string	"high_value"
	.byte	0x1
	.value	0x1c8b
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x33
	.string	"label"
	.byte	0x1
	.value	0x1c8d
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x3b
	.long	0x8e1c
	.byte	0x1
	.string	"c_finish_case"
	.byte	0x1
	.value	0x1ca3
	.byte	0x1
	.long	.LFB89
	.long	.LFE89
	.long	.LLST74
	.uleb128 0x33
	.string	"cs"
	.byte	0x1
	.value	0x1ca4
	.long	0x8d0c
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x12
	.long	0x8e2c
	.long	0x2d7
	.uleb128 0x13
	.long	0x2ed
	.byte	0x14
	.byte	0x0
	.uleb128 0xb
	.long	0x8e1c
	.uleb128 0xb
	.long	0x6de
	.uleb128 0x12
	.long	0x8e46
	.long	0x2d7
	.uleb128 0x13
	.long	0x2ed
	.byte	0xe
	.byte	0x0
	.uleb128 0xb
	.long	0x8e36
	.uleb128 0xb
	.long	0x8e36
	.uleb128 0x12
	.long	0x8e60
	.long	0x2d7
	.uleb128 0x13
	.long	0x2ed
	.byte	0xb
	.byte	0x0
	.uleb128 0xb
	.long	0x8e50
	.uleb128 0xb
	.long	0x6ee
	.uleb128 0x2c
	.string	"missing_braces_mentioned"
	.byte	0x1
	.byte	0x36
	.long	0x2df
	.byte	0x5
	.byte	0x3
	.long	missing_braces_mentioned
	.uleb128 0x2c
	.string	"undeclared_variable_notice"
	.byte	0x1
	.byte	0x39
	.long	0x2df
	.byte	0x5
	.byte	0x3
	.long	undeclared_variable_notice
	.uleb128 0x39
	.long	.LASF52
	.byte	0x1
	.value	0x1203
	.long	0x7c0e
	.byte	0x5
	.byte	0x3
	.long	spelling
	.uleb128 0x39
	.long	.LASF61
	.byte	0x1
	.value	0x1204
	.long	0x7c0e
	.byte	0x5
	.byte	0x3
	.long	spelling_base
	.uleb128 0x39
	.long	.LASF62
	.byte	0x1
	.value	0x1205
	.long	0x2df
	.byte	0x5
	.byte	0x3
	.long	spelling_size
	.uleb128 0x33
	.string	"constructor_type"
	.byte	0x1
	.value	0x1371
	.long	0x1e5
	.byte	0x5
	.byte	0x3
	.long	constructor_type
	.uleb128 0x33
	.string	"constructor_fields"
	.byte	0x1
	.value	0x1375
	.long	0x1e5
	.byte	0x5
	.byte	0x3
	.long	constructor_fields
	.uleb128 0x33
	.string	"constructor_index"
	.byte	0x1
	.value	0x1379
	.long	0x1e5
	.byte	0x5
	.byte	0x3
	.long	constructor_index
	.uleb128 0x33
	.string	"constructor_max_index"
	.byte	0x1
	.value	0x137c
	.long	0x1e5
	.byte	0x5
	.byte	0x3
	.long	constructor_max_index
	.uleb128 0x33
	.string	"constructor_unfilled_fields"
	.byte	0x1
	.value	0x137f
	.long	0x1e5
	.byte	0x5
	.byte	0x3
	.long	constructor_unfilled_fields
	.uleb128 0x33
	.string	"constructor_unfilled_index"
	.byte	0x1
	.value	0x1383
	.long	0x1e5
	.byte	0x5
	.byte	0x3
	.long	constructor_unfilled_index
	.uleb128 0x33
	.string	"constructor_bit_index"
	.byte	0x1
	.value	0x1387
	.long	0x1e5
	.byte	0x5
	.byte	0x3
	.long	constructor_bit_index
	.uleb128 0x33
	.string	"constructor_elements"
	.byte	0x1
	.value	0x138c
	.long	0x1e5
	.byte	0x5
	.byte	0x3
	.long	constructor_elements
	.uleb128 0x33
	.string	"constructor_incremental"
	.byte	0x1
	.value	0x1390
	.long	0x2df
	.byte	0x5
	.byte	0x3
	.long	constructor_incremental
	.uleb128 0x33
	.string	"constructor_constant"
	.byte	0x1
	.value	0x1393
	.long	0x2df
	.byte	0x5
	.byte	0x3
	.long	constructor_constant
	.uleb128 0x33
	.string	"constructor_simple"
	.byte	0x1
	.value	0x1396
	.long	0x2df
	.byte	0x5
	.byte	0x3
	.long	constructor_simple
	.uleb128 0x33
	.string	"constructor_erroneous"
	.byte	0x1
	.value	0x1399
	.long	0x2df
	.byte	0x5
	.byte	0x3
	.long	constructor_erroneous
	.uleb128 0x33
	.string	"constructor_subconstants_deferred"
	.byte	0x1
	.value	0x139c
	.long	0x2df
	.byte	0x5
	.byte	0x3
	.long	constructor_subconstants_deferred
	.uleb128 0x33
	.string	"constructor_pending_elts"
	.byte	0x1
	.value	0x13af
	.long	0x7e71
	.byte	0x5
	.byte	0x3
	.long	constructor_pending_elts
	.uleb128 0x33
	.string	"constructor_depth"
	.byte	0x1
	.value	0x13b2
	.long	0x2df
	.byte	0x5
	.byte	0x3
	.long	constructor_depth
	.uleb128 0x39
	.long	.LASF64
	.byte	0x1
	.value	0x13b7
	.long	0x2df
	.byte	0x5
	.byte	0x3
	.long	require_constant_value
	.uleb128 0x39
	.long	.LASF65
	.byte	0x1
	.value	0x13b8
	.long	0x2df
	.byte	0x5
	.byte	0x3
	.long	require_constant_elements
	.uleb128 0x33
	.string	"constructor_decl"
	.byte	0x1
	.value	0x13bd
	.long	0x1e5
	.byte	0x5
	.byte	0x3
	.long	constructor_decl
	.uleb128 0x33
	.string	"constructor_asmspec"
	.byte	0x1
	.value	0x13c0
	.long	0x2cc
	.byte	0x5
	.byte	0x3
	.long	constructor_asmspec
	.uleb128 0x33
	.string	"constructor_top_level"
	.byte	0x1
	.value	0x13c3
	.long	0x2df
	.byte	0x5
	.byte	0x3
	.long	constructor_top_level
	.uleb128 0x33
	.string	"constructor_designated"
	.byte	0x1
	.value	0x13c6
	.long	0x2df
	.byte	0x5
	.byte	0x3
	.long	constructor_designated
	.uleb128 0x33
	.string	"designator_depth"
	.byte	0x1
	.value	0x13c9
	.long	0x2df
	.byte	0x5
	.byte	0x3
	.long	designator_depth
	.uleb128 0x33
	.string	"designator_errorneous"
	.byte	0x1
	.value	0x13cc
	.long	0x2df
	.byte	0x5
	.byte	0x3
	.long	designator_errorneous
	.uleb128 0x33
	.string	"switch_stack"
	.byte	0x1
	.value	0x1c56
	.long	0x8d0c
	.byte	0x5
	.byte	0x3
	.long	switch_stack
	.uleb128 0x3d
	.string	"target_flags"
	.byte	0xc
	.byte	0x21
	.long	0x2df
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.long	0x9243
	.long	0x302
	.uleb128 0x13
	.long	0x2ed
	.byte	0x35
	.byte	0x0
	.uleb128 0x3d
	.string	"mode_size"
	.byte	0x5
	.byte	0x59
	.long	0x9256
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.long	0x9233
	.uleb128 0x3d
	.string	"mode_unit_size"
	.byte	0x5
	.byte	0x5e
	.long	0x9273
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.long	0x9233
	.uleb128 0x12
	.long	0x9283
	.long	0x2d7
	.uleb128 0x3e
	.byte	0x0
	.uleb128 0x3d
	.string	"tree_code_type"
	.byte	0x3
	.byte	0x45
	.long	0x929b
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.long	0x9278
	.uleb128 0x12
	.long	0x92b0
	.long	0x1e5
	.uleb128 0x13
	.long	0x2ed
	.byte	0x3a
	.byte	0x0
	.uleb128 0x3f
	.string	"global_trees"
	.byte	0x3
	.value	0x8b5
	.long	0x92a0
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.long	0x92d7
	.long	0x1e5
	.uleb128 0x13
	.long	0x2ed
	.byte	0xa
	.byte	0x0
	.uleb128 0x3f
	.string	"integer_types"
	.byte	0x3
	.value	0x91d
	.long	0x92c7
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.long	0x92ff
	.long	0x1e5
	.uleb128 0x13
	.long	0x2ed
	.byte	0x5
	.byte	0x0
	.uleb128 0x3f
	.string	"sizetype_tab"
	.byte	0x3
	.value	0xad1
	.long	0x92ef
	.byte	0x1
	.byte	0x1
	.uleb128 0x3f
	.string	"current_function_decl"
	.byte	0x3
	.value	0xbc8
	.long	0x1e5
	.byte	0x1
	.byte	0x1
	.uleb128 0x3d
	.string	"ridpointers"
	.byte	0x9
	.byte	0x8b
	.long	0x4d31
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.long	0x935b
	.long	0x1e5
	.uleb128 0x13
	.long	0x2ed
	.byte	0x1e
	.byte	0x0
	.uleb128 0x3d
	.string	"c_global_trees"
	.byte	0x9
	.byte	0xef
	.long	0x934b
	.byte	0x1
	.byte	0x1
	.uleb128 0x3f
	.string	"flag_objc"
	.byte	0x9
	.value	0x184
	.long	0x2df
	.byte	0x1
	.byte	0x1
	.uleb128 0x3f
	.string	"warn_cast_qual"
	.byte	0x9
	.value	0x1b3
	.long	0x2df
	.byte	0x1
	.byte	0x1
	.uleb128 0x3f
	.string	"warn_pointer_arith"
	.byte	0x9
	.value	0x1bc
	.long	0x2df
	.byte	0x1
	.byte	0x1
	.uleb128 0x3f
	.string	"warn_parentheses"
	.byte	0x9
	.value	0x1c5
	.long	0x2df
	.byte	0x1
	.byte	0x1
	.uleb128 0x3f
	.string	"warn_missing_braces"
	.byte	0x9
	.value	0x1c9
	.long	0x2df
	.byte	0x1
	.byte	0x1
	.uleb128 0x3f
	.string	"warn_sign_compare"
	.byte	0x9
	.value	0x1ce
	.long	0x2df
	.byte	0x1
	.byte	0x1
	.uleb128 0x3f
	.string	"warn_float_equal"
	.byte	0x9
	.value	0x1e0
	.long	0x2df
	.byte	0x1
	.byte	0x1
	.uleb128 0x3f
	.string	"warn_char_subscripts"
	.byte	0x9
	.value	0x1e4
	.long	0x2df
	.byte	0x1
	.byte	0x1
	.uleb128 0x3f
	.string	"warn_conversion"
	.byte	0x9
	.value	0x1e8
	.long	0x2df
	.byte	0x1
	.byte	0x1
	.uleb128 0x3f
	.string	"flag_cond_mismatch"
	.byte	0x9
	.value	0x213
	.long	0x2df
	.byte	0x1
	.byte	0x1
	.uleb128 0x3f
	.string	"flag_isoc99"
	.byte	0x9
	.value	0x21b
	.long	0x2df
	.byte	0x1
	.byte	0x1
	.uleb128 0x3f
	.string	"warn_bad_function_cast"
	.byte	0x9
	.value	0x22a
	.long	0x2df
	.byte	0x1
	.byte	0x1
	.uleb128 0x3f
	.string	"warn_traditional"
	.byte	0x9
	.value	0x22e
	.long	0x2df
	.byte	0x1
	.byte	0x1
	.uleb128 0x3f
	.string	"warn_strict_prototypes"
	.byte	0x9
	.value	0x237
	.long	0x2df
	.byte	0x1
	.byte	0x1
	.uleb128 0x3f
	.string	"warn_div_by_zero"
	.byte	0x9
	.value	0x24f
	.long	0x2df
	.byte	0x1
	.byte	0x1
	.uleb128 0x3f
	.string	"skip_evaluation"
	.byte	0x9
	.value	0x346
	.long	0x2df
	.byte	0x1
	.byte	0x1
	.uleb128 0x3f
	.string	"current_function_returns_value"
	.byte	0x8
	.value	0x132
	.long	0x2df
	.byte	0x1
	.byte	0x1
	.uleb128 0x3f
	.string	"current_function_returns_null"
	.byte	0x8
	.value	0x137
	.long	0x2df
	.byte	0x1
	.byte	0x1
	.uleb128 0x3f
	.string	"current_function_returns_abnormally"
	.byte	0x8
	.value	0x13c
	.long	0x2df
	.byte	0x1
	.byte	0x1
	.uleb128 0x3d
	.string	"optimize"
	.byte	0xd
	.byte	0x43
	.long	0x2df
	.byte	0x1
	.byte	0x1
	.uleb128 0x3d
	.string	"extra_warnings"
	.byte	0xd
	.byte	0x61
	.long	0x2df
	.byte	0x1
	.byte	0x1
	.uleb128 0x3d
	.string	"warn_unused_value"
	.byte	0xd
	.byte	0x6d
	.long	0x2df
	.byte	0x1
	.byte	0x1
	.uleb128 0x3d
	.string	"warn_return_type"
	.byte	0xd
	.byte	0x98
	.long	0x2df
	.byte	0x1
	.byte	0x1
	.uleb128 0x3d
	.string	"warn_cast_align"
	.byte	0xd
	.byte	0xa2
	.long	0x2df
	.byte	0x1
	.byte	0x1
	.uleb128 0x3d
	.string	"warn_strict_aliasing"
	.byte	0xd
	.byte	0xc4
	.long	0x2df
	.byte	0x1
	.byte	0x1
	.uleb128 0x3d
	.string	"pedantic"
	.byte	0xd
	.byte	0xe5
	.long	0x2df
	.byte	0x1
	.byte	0x1
	.uleb128 0x3d
	.string	"in_system_header"
	.byte	0xd
	.byte	0xea
	.long	0x2df
	.byte	0x1
	.byte	0x1
	.uleb128 0x3f
	.string	"flag_volatile"
	.byte	0xd
	.value	0x15b
	.long	0x2df
	.byte	0x1
	.byte	0x1
	.uleb128 0x3f
	.string	"flag_pedantic_errors"
	.byte	0xd
	.value	0x1da
	.long	0x2df
	.byte	0x1
	.byte	0x1
	.uleb128 0x3f
	.string	"flag_strict_aliasing"
	.byte	0xd
	.value	0x23e
	.long	0x2df
	.byte	0x1
	.byte	0x1
	.uleb128 0x3f
	.string	"targetm"
	.byte	0xe
	.value	0x12d
	.long	0x5632
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.string	"constructor_no_implicit"
	.byte	0x1
	.value	0x13b5
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	constructor_no_implicit
	.uleb128 0x41
	.long	.LASF55
	.byte	0x1
	.value	0x13f0
	.long	0x801a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	constructor_stack
	.uleb128 0x41
	.long	.LASF58
	.byte	0x1
	.value	0x13ff
	.long	0x80a8
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	constructor_range_stack
	.uleb128 0x41
	.long	.LASF60
	.byte	0x1
	.value	0x1416
	.long	0x8189
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	initializer_stack
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
	.uleb128 0xe
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x14
	.uleb128 0x15
	.byte	0x0
	.uleb128 0x27
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0x0
	.byte	0x0
	.uleb128 0x17
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
	.uleb128 0x1b
	.uleb128 0x13
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3c
	.uleb128 0xc
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
	.uleb128 0xb
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
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0x13
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x26
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x27
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x27
	.uleb128 0x15
	.byte	0x0
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
	.uleb128 0xa
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uleb128 0x3b
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
	.uleb128 0x3c
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
	.uleb128 0x3d
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
	.uleb128 0x3e
	.uleb128 0x21
	.byte	0x0
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x40
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x41
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.long	0x428
	.value	0x2
	.long	.Ldebug_info0
	.long	0x9735
	.long	0x5a1d
	.string	"require_complete_type"
	.long	0x5a69
	.string	"c_incomplete_type_error"
	.long	0x5aeb
	.string	"c_type_promotes_to"
	.long	0x5b69
	.string	"common_type"
	.long	0x5d50
	.string	"comptypes"
	.long	0x5ffb
	.string	"c_size_in_bytes"
	.long	0x6044
	.string	"decl_constant_value"
	.long	0x61fe
	.string	"default_conversion"
	.long	0x6352
	.string	"build_component_ref"
	.long	0x6418
	.string	"build_indirect_ref"
	.long	0x64b0
	.string	"build_array_ref"
	.long	0x6584
	.string	"build_external_ref"
	.long	0x661b
	.string	"build_function_call"
	.long	0x6826
	.string	"parser_build_binary_op"
	.long	0x6905
	.string	"build_binary_op"
	.long	0x6d54
	.string	"c_tree_expr_nonnegative_p"
	.long	0x6e75
	.string	"build_unary_op"
	.long	0x7009
	.string	"lvalue_p"
	.long	0x704b
	.string	"lvalue_or_else"
	.long	0x715d
	.string	"readonly_warning"
	.long	0x71a3
	.string	"c_mark_addressable"
	.long	0x71ed
	.string	"build_conditional_expr"
	.long	0x72fa
	.string	"build_compound_expr"
	.long	0x73a3
	.string	"build_c_cast"
	.long	0x74ec
	.string	"c_cast_expr"
	.long	0x7547
	.string	"build_modify_expr"
	.long	0x7803
	.string	"c_convert_parm_for_inlining"
	.long	0x79ec
	.string	"store_init_value"
	.long	0x7c80
	.string	"error_init"
	.long	0x7cc0
	.string	"pedwarn_init"
	.long	0x818f
	.string	"start_init"
	.long	0x8218
	.string	"finish_init"
	.long	0x8273
	.string	"really_start_incremental_init"
	.long	0x82c4
	.string	"push_init_level"
	.long	0x8316
	.string	"pop_init_level"
	.long	0x842e
	.string	"set_init_index"
	.long	0x8475
	.string	"set_init_label"
	.long	0x88a8
	.string	"process_init_element"
	.long	0x8a01
	.string	"simple_asm_stmt"
	.long	0x8a56
	.string	"build_asm_stmt"
	.long	0x8b27
	.string	"c_expand_asm_operands"
	.long	0x8c21
	.string	"c_expand_return"
	.long	0x8d12
	.string	"c_start_case"
	.long	0x8d8a
	.string	"do_case"
	.long	0x8de9
	.string	"c_finish_case"
	.long	0x96d4
	.string	"constructor_no_implicit"
	.long	0x96fb
	.string	"constructor_stack"
	.long	0x970e
	.string	"constructor_range_stack"
	.long	0x9721
	.string	"initializer_stack"
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
.LASF29:
	.string	"name"
.LASF33:
	.string	"result"
.LASF45:
	.string	"constant"
.LASF10:
	.string	"lang_flag_0"
.LASF11:
	.string	"lang_flag_1"
.LASF12:
	.string	"lang_flag_2"
.LASF16:
	.string	"lang_flag_6"
.LASF17:
	.string	"pointer"
.LASF52:
	.string	"spelling"
.LASF61:
	.string	"spelling_base"
.LASF2:
	.string	"string"
.LASF7:
	.string	"mem_attrs"
.LASF37:
	.string	"code1"
.LASF46:
	.string	"msgid"
.LASF1:
	.string	"common"
.LASF58:
	.string	"constructor_range_stack"
.LASF31:
	.string	"lang_specific"
.LASF50:
	.string	"argnofun"
.LASF43:
	.string	"orig_op1"
.LASF65:
	.string	"require_constant_elements"
.LASF26:
	.string	"string_flag"
.LASF69:
	.string	"clobbers"
.LASF13:
	.string	"lang_flag_3"
.LASF32:
	.string	"function"
.LASF67:
	.string	"fieldtype"
.LASF5:
	.string	"unsigned int"
.LASF44:
	.string	"result_type"
.LASF23:
	.string	"abstract_origin"
.LASF63:
	.string	"top_level"
.LASF27:
	.string	"pointer_depth"
.LASF51:
	.string	"inside_init"
.LASF28:
	.string	"user_align"
.LASF24:
	.string	"size_unit"
.LASF68:
	.string	"fieldcode"
.LASF18:
	.string	"elements"
.LASF4:
	.string	"type"
.LASF21:
	.string	"value"
.LASF59:
	.string	"range_end"
.LASF57:
	.string	"implicit"
.LASF41:
	.string	"field"
.LASF64:
	.string	"require_constant_value"
.LASF47:
	.string	"in_otype"
.LASF66:
	.string	"bitpos"
.LASF35:
	.string	"constructor"
.LASF20:
	.string	"purpose"
.LASF14:
	.string	"lang_flag_4"
.LASF15:
	.string	"lang_flag_5"
.LASF22:
	.string	"abstract_flag"
.LASF56:
	.string	"range_stack"
.LASF40:
	.string	"component"
.LASF54:
	.string	"ofwhat"
.LASF48:
	.string	"selector"
.LASF0:
	.string	"code"
.LASF30:
	.string	"context"
.LASF19:
	.string	"ht_identifier"
.LASF8:
	.string	"offset"
.LASF62:
	.string	"spelling_size"
.LASF36:
	.string	"__FUNCTION__"
.LASF9:
	.string	"built_in_class"
.LASF53:
	.string	"depth"
.LASF39:
	.string	"orig_exp"
.LASF60:
	.string	"initializer_stack"
.LASF42:
	.string	"fundecl"
.LASF34:
	.string	"assembler_name"
.LASF6:
	.string	"_IO_FILE"
.LASF25:
	.string	"attributes"
.LASF49:
	.string	"argstring"
.LASF3:
	.string	"decl"
.LASF38:
	.string	"type1"
.LASF55:
	.string	"constructor_stack"
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
