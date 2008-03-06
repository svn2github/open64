	.file	"typeck2.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
	.section	.rodata
	.align 4
.LC0:
	.string	"type `%T' is not a base type for type `%T'"
	.text
.globl error_not_base_type
	.type	error_not_base_type, @function
error_not_base_type:
.LFB15:
	.file 1 "../../../kg++fe/gnu/cp/typeck2.c"
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
	.loc 1 52 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	jne	.L2
	.loc 1 53 0
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	movl	%eax, 8(%ebp)
.L2:
	.loc 1 54 0
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 55 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	.loc 1 56 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE15:
	.size	error_not_base_type, .-error_not_base_type
.globl binfo_or_else
	.type	binfo_or_else, @function
binfo_or_else:
.LFB16:
	.loc 1 61 0
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
	.loc 1 62 0
	movl	$0, 12(%esp)
	movl	$1, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	lookup_base@PLT
	movl	%eax, -8(%ebp)
	.loc 1 64 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-8(%ebp), %eax
	jne	.L6
	.loc 1 65 0
	movl	$0, -24(%ebp)
	jmp	.L8
.L6:
	.loc 1 66 0
	cmpl	$0, -8(%ebp)
	jne	.L9
	.loc 1 67 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	error_not_base_type@PLT
.L9:
	.loc 1 68 0
	movl	-8(%ebp), %eax
	movl	%eax, -24(%ebp)
.L8:
	movl	-24(%ebp), %eax
	.loc 1 69 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE16:
	.size	binfo_or_else, .-binfo_or_else
	.section	.rodata
	.align 4
.LC1:
	.string	"%s of data-member `%D' in read-only structure"
	.align 4
.LC2:
	.string	"%s of read-only data-member `%D'"
.LC3:
	.string	"%s of constant field `%D'"
.LC4:
	.string	"%s of read-only variable `%D'"
	.align 4
.LC5:
	.string	"%s of read-only parameter `%D'"
	.align 4
.LC6:
	.string	"%s of read-only reference `%D'"
	.align 4
.LC7:
	.string	"%s of read-only named return value `%D'"
.LC8:
	.string	"%s of function `%D'"
.LC9:
	.string	"%s of read-only location"
	.text
.globl readonly_error
	.type	readonly_error, @function
readonly_error:
.LFB17:
	.loc 1 81 0
	pushl	%ebp
.LCFI8:
	movl	%esp, %ebp
.LCFI9:
	pushl	%ebx
.LCFI10:
	subl	$36, %esp
.LCFI11:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 85 0
	cmpl	$0, 16(%ebp)
	je	.L13
	.loc 1 86 0
	movl	pedwarn@GOT(%ebx), %eax
	movl	%eax, -8(%ebp)
	jmp	.L15
.L13:
	.loc 1 88 0
	movl	error@GOT(%ebx), %eax
	movl	%eax, -8(%ebp)
.L15:
	.loc 1 90 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$40, %al
	jne	.L16
	.loc 1 92 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movzbl	9(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L18
	.loc 1 93 0
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, -12(%ebp)
	jmp	.L20
.L18:
	.loc 1 95 0
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, -12(%ebp)
.L20:
	.loc 1 96 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	movl	-8(%ebp), %eax
	call	*%eax
	jmp	.L40
.L16:
	.loc 1 98 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$35, %al
	jne	.L22
	.loc 1 100 0
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	testl	%eax, %eax
	je	.L24
	movl	8(%ebp), %eax
	movzbl	38(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L24
	movl	8(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L24
	.loc 1 103 0
	leal	.LC3@GOTOFF(%ebx), %eax
	movl	%eax, -12(%ebp)
	.loc 1 100 0
	jmp	.L28
.L24:
	.loc 1 105 0
	leal	.LC4@GOTOFF(%ebx), %eax
	movl	%eax, -12(%ebp)
.L28:
	.loc 1 106 0
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	movl	-8(%ebp), %eax
	call	*%eax
	jmp	.L40
.L22:
	.loc 1 108 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$36, %al
	jne	.L29
	.loc 1 109 0
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC5@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	movl	-8(%ebp), %eax
	call	*%eax
	jmp	.L40
.L29:
	.loc 1 110 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$42, %al
	jne	.L31
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$16, %al
	jne	.L31
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$35, %al
	je	.L34
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$36, %al
	jne	.L31
.L34:
	.loc 1 114 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC6@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	movl	-8(%ebp), %eax
	call	*%eax
	.loc 1 110 0
	jmp	.L40
.L31:
	.loc 1 115 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$37, %al
	jne	.L36
	.loc 1 116 0
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC7@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	movl	-8(%ebp), %eax
	call	*%eax
	jmp	.L40
.L36:
	.loc 1 117 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	jne	.L38
	.loc 1 118 0
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC8@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	movl	-8(%ebp), %eax
	call	*%eax
	jmp	.L40
.L38:
	.loc 1 120 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC9@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	movl	-8(%ebp), %eax
	call	*%eax
.L40:
	.loc 1 121 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE17:
	.size	readonly_error, .-readonly_error
	.section	.rodata
	.align 4
.LC10:
	.string	"cannot declare variable `%D' to be of type `%T'"
	.align 4
.LC11:
	.string	"cannot declare parameter `%D' to be of type `%T'"
	.align 4
.LC12:
	.string	"cannot declare field `%D' to be of type `%T'"
	.align 4
.LC13:
	.string	"invalid return type for member function `%#D'"
	.align 4
.LC14:
	.string	"invalid return type for function `%#D'"
	.align 4
.LC15:
	.string	"cannot allocate an object of type `%T'"
	.align 4
.LC16:
	.string	"  because the following virtual functions are abstract:"
.LC17:
	.string	"\t%#D"
	.align 4
.LC18:
	.string	"  since type `%T' has abstract virtual functions"
	.text
.globl abstract_virtuals_error
	.type	abstract_virtuals_error, @function
abstract_virtuals_error:
.LFB18:
	.loc 1 132 0
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
	.loc 1 136 0
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	64(%eax), %edx
	movl	60(%eax), %eax
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L42
	.loc 1 140 0
	movl	$0, -24(%ebp)
	jmp	.L44
.L42:
	.loc 1 142 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	je	.L45
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	jne	.L47
.L45:
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L48
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L48
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L48
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L48
	movl	12(%ebp), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L47
.L48:
	movl	12(%ebp), %eax
	movl	92(%eax), %eax
	movl	44(%eax), %eax
	testl	%eax, %eax
	jne	.L53
.L47:
	.loc 1 143 0
	movl	$0, -24(%ebp)
	jmp	.L44
.L53:
	.loc 1 145 0
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	jne	.L54
	.loc 1 148 0
	movl	$0, -24(%ebp)
	jmp	.L44
.L54:
	.loc 1 150 0
	movl	12(%ebp), %eax
	movl	92(%eax), %eax
	movl	44(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 151 0
	cmpl	$0, 8(%ebp)
	je	.L56
	.loc 1 153 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$37, %al
	jne	.L58
	.loc 1 154 0
	movl	$0, -24(%ebp)
	jmp	.L44
.L58:
	.loc 1 156 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$35, %al
	jne	.L60
	.loc 1 157 0
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC10@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	jmp	.L71
.L60:
	.loc 1 159 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$36, %al
	jne	.L63
	.loc 1 160 0
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC11@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	jmp	.L71
.L63:
	.loc 1 162 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$38, %al
	jne	.L65
	.loc 1 163 0
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC12@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	jmp	.L71
.L65:
	.loc 1 165 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	jne	.L67
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$17, %al
	jne	.L67
	.loc 1 167 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC13@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 165 0
	jmp	.L71
.L67:
	.loc 1 168 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	jne	.L71
	.loc 1 169 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC14@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	jmp	.L71
.L56:
	.loc 1 172 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC15@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L71:
	.loc 1 175 0
	movl	-12(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	jne	.L72
	.loc 1 177 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%edx, 16(%eax)
	.loc 1 179 0
	leal	.LC16@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 180 0
	movl	-12(%ebp), %eax
	movl	%eax, -8(%ebp)
	jmp	.L74
.L75:
	.loc 1 181 0
	movl	-8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC17@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	cp_error_at@PLT
	.loc 1 180 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
.L74:
	cmpl	$0, -8(%ebp)
	jne	.L75
	jmp	.L77
.L72:
	.loc 1 184 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC18@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L77:
	.loc 1 186 0
	movl	$1, -24(%ebp)
.L44:
	movl	-24(%ebp), %eax
	.loc 1 187 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE18:
	.size	abstract_virtuals_error, .-abstract_virtuals_error
	.section	.rodata
	.align 4
	.type	__FUNCTION__.13471, @object
	.size	__FUNCTION__.13471, 31
__FUNCTION__.13471:
	.string	"cxx_incomplete_type_diagnostic"
.LC19:
	.string	"`%D' has incomplete type"
	.align 4
.LC20:
	.string	"invalid use of undefined type `%#T'"
.LC21:
	.string	"forward declaration of `%#T'"
.LC22:
	.string	"declaration of `%#T'"
.LC23:
	.string	"invalid use of `%T'"
	.align 4
.LC24:
	.string	"invalid use of array with unspecified bounds"
	.align 4
.LC25:
	.string	"invalid use of member (did you forget the `&' ?)"
	.align 4
.LC26:
	.string	"invalid use of template type parameter"
	.align 4
.LC27:
	.string	"address of overloaded function with no contextual type information"
	.align 4
.LC28:
	.string	"overloaded function with no contextual type information"
	.align 4
.LC29:
	.string	"insufficient contextual information to determine type"
	.align 4
.LC30:
	.string	"../../../kg++fe/gnu/cp/typeck2.c"
	.text
.globl cxx_incomplete_type_diagnostic
	.type	cxx_incomplete_type_diagnostic, @function
cxx_incomplete_type_diagnostic:
.LFB19:
	.loc 1 200 0
	pushl	%ebp
.LCFI16:
	movl	%esp, %ebp
.LCFI17:
	pushl	%ebx
.LCFI18:
	subl	$52, %esp
.LCFI19:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 201 0
	movl	$0, -16(%ebp)
	.loc 1 205 0
	cmpl	$1, 16(%ebp)
	jne	.L80
	.loc 1 207 0
	movl	warning@GOT(%ebx), %eax
	movl	%eax, -12(%ebp)
	.loc 1 208 0
	movl	cp_warning_at@GOT(%ebx), %eax
	movl	%eax, -8(%ebp)
	jmp	.L82
.L80:
	.loc 1 210 0
	cmpl	$2, 16(%ebp)
	jne	.L83
	.loc 1 212 0
	movl	pedwarn@GOT(%ebx), %eax
	movl	%eax, -12(%ebp)
	.loc 1 213 0
	movl	cp_pedwarn_at@GOT(%ebx), %eax
	movl	%eax, -8(%ebp)
	jmp	.L82
.L83:
	.loc 1 217 0
	movl	error@GOT(%ebx), %eax
	movl	%eax, -12(%ebp)
	.loc 1 218 0
	movl	cp_error_at@GOT(%ebx), %eax
	movl	%eax, -8(%ebp)
.L82:
	.loc 1 222 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	testb	%al, %al
	je	.L127
	.loc 1 225 0
	cmpl	$0, 8(%ebp)
	je	.L87
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$35, %al
	je	.L89
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$36, %al
	je	.L89
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$38, %al
	jne	.L87
.L89:
	.loc 1 229 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC19@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	movl	-8(%ebp), %eax
	call	*%eax
	.loc 1 230 0
	movl	$1, -16(%ebp)
.L87:
	.loc 1 235 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -32(%ebp)
	cmpl	$19, -32(%ebp)
	je	.L96
	cmpl	$19, -32(%ebp)
	ja	.L99
	cmpl	$11, -32(%ebp)
	je	.L94
	cmpl	$15, -32(%ebp)
	je	.L95
	cmpl	$6, -32(%ebp)
	je	.L93
	jmp	.L92
.L99:
	cmpl	$25, -32(%ebp)
	je	.L97
	cmpl	$25, -32(%ebp)
	ja	.L100
	movl	-32(%ebp), %eax
	subl	$21, %eax
	cmpl	$1, %eax
	ja	.L92
	jmp	.L94
.L100:
	cmpl	$194, -32(%ebp)
	je	.L98
	jmp	.L92
.L94:
	.loc 1 240 0
	cmpl	$0, -16(%ebp)
	jne	.L101
	.loc 1 241 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC20@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	movl	-12(%ebp), %eax
	call	*%eax
.L101:
	.loc 1 242 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$11, %al
	jne	.L103
	movl	12(%ebp), %eax
	movl	76(%eax), %eax
	testl	%eax, %eax
	sete	-26(%ebp)
	jmp	.L105
.L103:
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	jne	.L106
	movl	12(%ebp), %eax
	movl	92(%eax), %eax
	movl	64(%eax), %eax
	testl	%eax, %eax
	sete	-25(%ebp)
	jmp	.L108
.L106:
	movl	12(%ebp), %eax
	movl	92(%eax), %eax
	testl	%eax, %eax
	je	.L109
	movl	12(%ebp), %eax
	movl	92(%eax), %eax
	movl	64(%eax), %eax
	testl	%eax, %eax
	jne	.L111
.L109:
	movl	$1, -24(%ebp)
	jmp	.L112
.L111:
	movl	$0, -24(%ebp)
.L112:
	movzbl	-24(%ebp), %eax
	movb	%al, -25(%ebp)
.L108:
	movzbl	-25(%ebp), %eax
	movb	%al, -26(%ebp)
.L105:
	cmpb	$0, -26(%ebp)
	je	.L113
	.loc 1 243 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC21@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	movl	-8(%ebp), %eax
	call	*%eax
	jmp	.L127
.L113:
	.loc 1 245 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC22@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	movl	-8(%ebp), %eax
	call	*%eax
	.loc 1 246 0
	jmp	.L127
.L93:
	.loc 1 249 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC23@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	movl	-12(%ebp), %eax
	call	*%eax
	.loc 1 250 0
	jmp	.L127
.L96:
	.loc 1 253 0
	movl	12(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L116
	.loc 1 255 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 12(%ebp)
	.loc 1 256 0
	jmp	.L87
.L116:
	.loc 1 258 0
	leal	.LC24@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	movl	-12(%ebp), %eax
	call	*%eax
	.loc 1 259 0
	jmp	.L127
.L95:
	.loc 1 263 0
	leal	.LC25@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	movl	-12(%ebp), %eax
	call	*%eax
	.loc 1 264 0
	jmp	.L127
.L98:
	.loc 1 267 0
	leal	.LC26@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	movl	-12(%ebp), %eax
	call	*%eax
	.loc 1 268 0
	jmp	.L127
.L97:
	.loc 1 271 0
	cmpl	$0, 8(%ebp)
	je	.L118
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$40, %al
	je	.L95
.L118:
	.loc 1 273 0
	cmpl	$0, 8(%ebp)
	je	.L120
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$123, %al
	jne	.L120
	.loc 1 274 0
	leal	.LC27@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	movl	-12(%ebp), %eax
	call	*%eax
	.loc 1 273 0
	jmp	.L127
.L120:
	.loc 1 275 0
	cmpl	$0, 8(%ebp)
	je	.L124
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-52, %al
	jne	.L124
	.loc 1 276 0
	leal	.LC28@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	movl	-12(%ebp), %eax
	call	*%eax
	.loc 1 275 0
	jmp	.L127
.L124:
	.loc 1 278 0
	leal	.LC29@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	movl	-12(%ebp), %eax
	call	*%eax
	.loc 1 279 0
	jmp	.L127
.L92:
	.loc 1 282 0
	leal	__FUNCTION__.13471@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$282, 4(%esp)
	leal	.LC30@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L127:
	.loc 1 284 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE19:
	.size	cxx_incomplete_type_diagnostic, .-cxx_incomplete_type_diagnostic
.globl cxx_incomplete_type_error
	.type	cxx_incomplete_type_error, @function
cxx_incomplete_type_error:
.LFB20:
	.loc 1 293 0
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
	.loc 1 294 0
	movl	$0, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cxx_incomplete_type_diagnostic@PLT
	.loc 1 295 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE20:
	.size	cxx_incomplete_type_error, .-cxx_incomplete_type_error
	.section	.rodata
	.type	__FUNCTION__.13547, @object
	.size	__FUNCTION__.13547, 17
__FUNCTION__.13547:
	.string	"store_init_value"
	.align 4
.LC31:
	.string	"constructor syntax used, but no constructor declared for type `%T'"
	.align 4
.LC32:
	.string	"comma expression used to initialize return value"
	.align 4
.LC33:
	.string	"cannot initialize arrays using this syntax"
	.align 4
.LC34:
	.string	"initializer list being treated as compound expression"
	.text
.globl store_init_value
	.type	store_init_value, @function
store_init_value:
.LFB21:
	.loc 1 320 0
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
	.loc 1 325 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 326 0
	movl	-8(%ebp), %edx
	movzbl	8(%edx), %eax
	testb	%al, %al
	jne	.L131
	.loc 1 327 0
	movl	$0, -16(%ebp)
	jmp	.L133
.L131:
	.loc 1 329 0
	movl	-8(%ebp), %edx
	movzbl	8(%edx), %eax
	cmpb	$-62, %al
	je	.L134
	movl	-8(%ebp), %edx
	movzbl	8(%edx), %eax
	cmpb	$-59, %al
	je	.L134
	movl	-8(%ebp), %edx
	movzbl	8(%edx), %eax
	cmpb	$-57, %al
	je	.L134
	movl	-8(%ebp), %edx
	movzbl	8(%edx), %eax
	cmpb	$-60, %al
	je	.L134
	movl	-8(%ebp), %edx
	movzbl	39(%edx), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L139
.L134:
	.loc 1 331 0
	movl	-8(%ebp), %edx
	movl	92(%edx), %eax
	movzbl	(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L140
	movl	-8(%ebp), %edx
	movl	92(%edx), %eax
	movzbl	9(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L142
.L140:
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$47, %al
	je	.L142
	.loc 1 333 0
	leal	__FUNCTION__.13547@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$333, 4(%esp)
	leal	.LC30@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L142:
	.loc 1 335 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$3, %al
	jne	.L146
	.loc 1 337 0
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC31@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 338 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	nreverse@PLT
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$47, (%esp)
	call	build_nt@PLT
	movl	%eax, 12(%ebp)
	.loc 1 329 0
	jmp	.L146
.L139:
	.loc 1 341 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$3, %al
	jne	.L146
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	116(%eax), %eax
	cmpl	%eax, %edx
	je	.L146
	.loc 1 344 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$37, %al
	jne	.L149
	.loc 1 346 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L151
	.loc 1 348 0
	leal	.LC32@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
	.loc 1 349 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	build_compound_expr@PLT
	movl	%eax, 12(%ebp)
	jmp	.L146
.L151:
	.loc 1 352 0
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 12(%ebp)
	jmp	.L146
.L149:
	.loc 1 354 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$3, %al
	jne	.L154
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$19, %al
	jne	.L154
	.loc 1 357 0
	leal	.LC33@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 358 0
	movl	$0, -16(%ebp)
	jmp	.L133
.L154:
	.loc 1 364 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L157
	.loc 1 366 0
	leal	.LC34@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	pedwarn@PLT
	.loc 1 367 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	build_compound_expr@PLT
	movl	%eax, 12(%ebp)
	jmp	.L146
.L157:
	.loc 1 370 0
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 12(%ebp)
.L146:
	.loc 1 377 0
	movl	$0, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %edx
	movl	%edx, (%esp)
	call	digest_init@PLT
	movl	%eax, -12(%ebp)
	.loc 1 381 0
	movl	-12(%ebp), %edx
	movzbl	8(%edx), %eax
	testb	%al, %al
	je	.L159
	.loc 1 386 0
	movl	-8(%ebp), %edx
	movzbl	38(%edx), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L161
	.loc 1 387 0
	movl	-12(%ebp), %eax
	movl	%eax, -16(%ebp)
	jmp	.L133
.L161:
	.loc 1 388 0
	movl	8(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L159
	movl	-12(%ebp), %edx
	movzbl	9(%edx), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L164
	movl	-12(%ebp), %edx
	movl	4(%edx), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	initializer_constant_valid_p@PLT
	testl	%eax, %eax
	jne	.L159
.L164:
	.loc 1 391 0
	movl	-12(%ebp), %edx
	movl	%edx, -16(%ebp)
	jmp	.L133
.L159:
	.loc 1 396 0
	movl	8(%ebp), %eax
	movl	-12(%ebp), %edx
	movl	%edx, 68(%eax)
	.loc 1 397 0
	movl	$0, -16(%ebp)
.L133:
	movl	-16(%ebp), %eax
	.loc 1 398 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE21:
	.size	store_init_value, .-store_init_value
	.section	.rodata
	.align 4
.LC35:
	.string	"initializing array with parameter list"
	.align 4
.LC36:
	.string	"char-array initialized from wide string"
	.align 4
.LC37:
	.string	"int-array initialized from non-wide string"
	.align 4
.LC38:
	.string	"initializer-string for array of chars is too long"
	.align 4
.LC39:
	.string	"initializer for scalar variable requires one element"
	.align 4
.LC40:
	.string	"braces around scalar initializer for `%T'"
	.align 4
.LC41:
	.string	"ignoring extra initializers for `%T'"
.LC42:
	.string	"initialization"
	.align 4
.LC43:
	.string	"variable-sized object of type `%T' may not be initialized"
	.align 4
.LC44:
	.string	"subobject of type `%T' must be initialized by constructor, not by `%E'"
.LC45:
	.string	"invalid initializer"
	.text
.globl digest_init
	.type	digest_init, @function
digest_init:
.LFB22:
	.loc 1 413 0
	pushl	%ebp
.LCFI28:
	movl	%esp, %ebp
.LCFI29:
	pushl	%ebx
.LCFI30:
	subl	$84, %esp
.LCFI31:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 414 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -32(%ebp)
	.loc 1 415 0
	movl	$0, -28(%ebp)
	.loc 1 416 0
	movl	$0, -24(%ebp)
	.loc 1 423 0
	cmpl	$0, 16(%ebp)
	je	.L168
	.loc 1 425 0
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 426 0
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	(%eax), %edx
	movl	16(%ebp), %eax
	movl	%edx, (%eax)
.L168:
	.loc 1 429 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	12(%ebp), %eax
	je	.L170
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$3, %al
	jne	.L172
	movl	12(%ebp), %eax
	movl	20(%eax), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jne	.L172
.L170:
	.loc 1 431 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -56(%ebp)
	jmp	.L174
.L172:
	.loc 1 433 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	testb	%al, %al
	jne	.L175
	.loc 1 436 0
	movl	12(%ebp), %eax
	movl	%eax, -56(%ebp)
	jmp	.L174
.L175:
	.loc 1 440 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$19, %al
	jne	.L177
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -52(%ebp)
	jmp	.L179
.L177:
	movl	8(%ebp), %eax
	movl	%eax, -52(%ebp)
.L179:
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	complete_type_or_diagnostic@PLT
	testl	%eax, %eax
	jne	.L180
	.loc 1 442 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -56(%ebp)
	jmp	.L174
.L180:
	.loc 1 445 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$118, %al
	jne	.L182
	.loc 1 446 0
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 12(%ebp)
.L182:
	.loc 1 448 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$47, %al
	jne	.L184
	movl	12(%ebp), %eax
	movzbl	11(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L184
	movl	$1, -48(%ebp)
	jmp	.L187
.L184:
	movl	$0, -48(%ebp)
.L187:
	movl	-48(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 451 0
	cmpl	$0, -20(%ebp)
	je	.L188
	movl	12(%ebp), %eax
	movl	24(%eax), %eax
	testl	%eax, %eax
	je	.L188
	movl	12(%ebp), %eax
	movl	24(%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L188
	.loc 1 455 0
	movl	12(%ebp), %eax
	movl	24(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 457 0
	cmpl	$0, -28(%ebp)
	je	.L192
	movl	-28(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$118, %al
	jne	.L192
	.loc 1 458 0
	movl	-28(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -28(%ebp)
.L192:
	.loc 1 459 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-28(%ebp), %eax
	jne	.L188
	.loc 1 460 0
	movl	-28(%ebp), %eax
	movl	%eax, -56(%ebp)
	jmp	.L174
.L188:
	.loc 1 466 0
	cmpl	$19, -32(%ebp)
	jne	.L196
.LBB2:
	.loc 1 470 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$3, %al
	jne	.L198
	.loc 1 472 0
	leal	.LC35@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 473 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -56(%ebp)
	jmp	.L174
.L198:
	.loc 1 476 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	72(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 477 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	char_type_p@PLT
	testl	%eax, %eax
	je	.L196
	cmpl	$0, 12(%ebp)
	je	.L201
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$30, %al
	je	.L203
.L201:
	cmpl	$0, -28(%ebp)
	je	.L196
	movl	-28(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$30, %al
	jne	.L196
.L203:
.LBB3:
	.loc 1 481 0
	cmpl	$0, -28(%ebp)
	je	.L205
	movl	-28(%ebp), %eax
	movl	%eax, -44(%ebp)
	jmp	.L207
.L205:
	movl	12(%ebp), %eax
	movl	%eax, -44(%ebp)
.L207:
	movl	-44(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 483 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	72(%eax), %edx
	movl	integer_types@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	je	.L208
	movl	-16(%ebp), %eax
	movzwl	36(%eax), %eax
	andw	$511, %ax
	cmpw	$8, %ax
	jne	.L208
	.loc 1 487 0
	leal	.LC36@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 488 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -56(%ebp)
	jmp	.L174
.L208:
	.loc 1 490 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	72(%eax), %edx
	movl	integer_types@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jne	.L211
	movl	-16(%ebp), %eax
	movzwl	36(%eax), %eax
	andw	$511, %ax
	cmpw	$8, %ax
	je	.L211
	.loc 1 494 0
	leal	.LC37@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 495 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -56(%ebp)
	jmp	.L174
.L211:
	.loc 1 498 0
	movl	-12(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 499 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L214
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	9(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L214
.LBB4:
	.loc 1 503 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	24(%eax), %edx
	movl	20(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 504 0
	movl	-40(%ebp), %edx
	addl	$7, %edx
	movl	%edx, %eax
	sarl	$31, %eax
	shrl	$29, %eax
	addl	%edx, %eax
	sarl	$3, %eax
	movl	%eax, -40(%ebp)
	.loc 1 509 0
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	cmpl	-40(%ebp), %eax
	jle	.L214
	.loc 1 510 0
	leal	.LC38@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	pedwarn@PLT
.L214:
.LBE4:
	.loc 1 512 0
	movl	-12(%ebp), %eax
	movl	%eax, -56(%ebp)
	jmp	.L174
.L196:
.LBE3:
.LBE2:
	.loc 1 519 0
	cmpl	$7, -32(%ebp)
	je	.L218
	cmpl	$8, -32(%ebp)
	je	.L218
	cmpl	$14, -32(%ebp)
	je	.L218
	cmpl	$11, -32(%ebp)
	je	.L218
	cmpl	$16, -32(%ebp)
	je	.L218
	cmpl	$12, -32(%ebp)
	je	.L218
	cmpl	$9, -32(%ebp)
	je	.L218
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	jne	.L226
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	testl	%eax, %eax
	je	.L226
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	8(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L226
.L218:
	.loc 1 524 0
	cmpl	$0, -20(%ebp)
	je	.L233
	.loc 1 526 0
	cmpl	$0, -28(%ebp)
	jne	.L231
	.loc 1 528 0
	leal	.LC39@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 529 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -56(%ebp)
	jmp	.L174
.L231:
	.loc 1 531 0
	movl	-28(%ebp), %eax
	movl	%eax, 12(%ebp)
	.loc 1 533 0
	jmp	.L233
.L234:
	.loc 1 535 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC40@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	pedwarn@PLT
	.loc 1 536 0
	movl	12(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, 12(%ebp)
	.loc 1 537 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L235
	.loc 1 538 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC41@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	pedwarn@PLT
.L235:
	.loc 1 539 0
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 12(%ebp)
.L233:
	.loc 1 533 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$47, %al
	jne	.L237
	movl	12(%ebp), %eax
	movzbl	11(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	jne	.L234
.L237:
	.loc 1 542 0
	movl	$0, 24(%esp)
	movl	$0, 20(%esp)
	leal	.LC42@GOTOFF(%ebx), %eax
	movl	%eax, 16(%esp)
	movl	$3, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	convert_for_initialization@PLT
	movl	%eax, -56(%ebp)
	jmp	.L174
.L226:
	.loc 1 548 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L239
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	9(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	jne	.L239
	.loc 1 550 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC43@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 552 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -56(%ebp)
	jmp	.L174
.L239:
	.loc 1 555 0
	cmpl	$19, -32(%ebp)
	je	.L242
	cmpl	$10, -32(%ebp)
	je	.L242
	cmpl	$21, -32(%ebp)
	je	.L242
	cmpl	$22, -32(%ebp)
	jne	.L246
.L242:
	.loc 1 557 0
	cmpl	$0, -20(%ebp)
	je	.L247
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L249
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L249
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L249
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L249
	movl	8(%ebp), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L247
.L249:
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	9(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L247
	movl	12(%ebp), %eax
	movzbl	11(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L247
	.loc 1 560 0
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC44@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 562 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -56(%ebp)
	jmp	.L174
.L247:
	.loc 1 564 0
	cmpl	$0, -20(%ebp)
	je	.L256
	.loc 1 565 0
	movl	$0, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	process_init_constructor
	movl	%eax, -56(%ebp)
	jmp	.L174
.L256:
	.loc 1 566 0
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	can_convert_arg@PLT
	testl	%eax, %eax
	jne	.L258
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L260
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L260
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L260
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L260
	movl	8(%ebp), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L265
.L260:
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	9(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L265
	jmp	.L258
.L265:
	.loc 1 569 0
	cmpl	$0, 16(%ebp)
	je	.L258
	.loc 1 571 0
	movl	16(%ebp), %edx
	movl	-24(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 572 0
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	process_init_constructor
	movl	%eax, -56(%ebp)
	jmp	.L174
.L258:
	.loc 1 575 0
	cmpl	$19, -32(%ebp)
	je	.L246
.LBB5:
	.loc 1 577 0
	movl	$3, -8(%ebp)
	.loc 1 579 0
	cmpl	$0, 16(%ebp)
	je	.L269
	.loc 1 580 0
	orl	$128, -8(%ebp)
.L269:
	.loc 1 582 0
	movl	$0, 24(%esp)
	movl	$0, 20(%esp)
	leal	.LC42@GOTOFF(%ebx), %eax
	movl	%eax, 16(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	convert_for_initialization@PLT
	movl	%eax, -56(%ebp)
	jmp	.L174
.L246:
.LBE5:
	.loc 1 587 0
	leal	.LC45@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 588 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -56(%ebp)
.L174:
	movl	-56(%ebp), %eax
	.loc 1 589 0
	addl	$84, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE22:
	.size	digest_init, .-digest_init
	.section	.rodata
	.type	__FUNCTION__.13863, @object
	.size	__FUNCTION__.13863, 25
__FUNCTION__.13863:
	.string	"process_init_constructor"
	.align 4
.LC46:
	.string	"aggregate has a partly bracketed initializer"
	.align 4
.LC47:
	.string	"non-trivial labeled initializers"
	.align 4
.LC48:
	.string	"non-empty initializer for array of empty elements"
	.align 4
.LC49:
	.string	"initializer list for object of class with virtual base classes"
	.align 4
.LC50:
	.string	"initializer list for object of class with base classes"
	.align 4
.LC51:
	.string	"initializer list for object using virtual functions"
	.align 4
.LC52:
	.string	"missing initializer for member `%D'"
	.align 4
.LC53:
	.string	"uninitialized const member `%D'"
	.align 4
.LC54:
	.string	"member `%D' with uninitialized const fields"
	.align 4
.LC55:
	.string	"member `%D' is uninitialized reference"
	.align 4
.LC56:
	.string	"index value instead of field name in union initializer"
	.align 4
.LC57:
	.string	"no field `%D' in union being initialized"
	.align 4
.LC58:
	.string	"union `%T' with no named members cannot be initialized"
	.align 4
.LC59:
	.string	"excess elements in aggregate initializer"
	.text
	.type	process_init_constructor, @function
process_init_constructor:
.LFB23:
	.loc 1 609 0
	pushl	%ebp
.LCFI32:
	movl	%esp, %ebp
.LCFI33:
	pushl	%ebx
.LCFI34:
	subl	$116, %esp
.LCFI35:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 613 0
	movl	$0, -64(%ebp)
	.loc 1 616 0
	movl	$1, -32(%ebp)
	.loc 1 617 0
	movl	$1, -28(%ebp)
	.loc 1 618 0
	movl	$0, -24(%ebp)
	.loc 1 623 0
	cmpl	$0, 16(%ebp)
	je	.L273
	.loc 1 625 0
	movl	warn_missing_braces@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L275
	.loc 1 626 0
	leal	.LC46@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
.L275:
	.loc 1 627 0
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -68(%ebp)
	jmp	.L277
.L273:
	.loc 1 630 0
	movl	12(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -68(%ebp)
.L277:
	.loc 1 636 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$19, %al
	je	.L278
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$10, %al
	jne	.L280
.L278:
.LBB6:
	.loc 1 641 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$19, %al
	jne	.L281
.LBB7:
	.loc 1 643 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 644 0
	cmpl	$0, -20(%ebp)
	je	.L283
	.loc 1 645 0
	movl	-20(%ebp), %eax
	movl	64(%eax), %eax
	movl	24(%eax), %edx
	movl	20(%eax), %eax
	movl	%eax, %ecx
	movl	-20(%ebp), %eax
	movl	60(%eax), %eax
	movl	24(%eax), %edx
	movl	20(%eax), %eax
	movl	%ecx, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	addl	$1, %eax
	movl	%eax, -56(%ebp)
	jmp	.L286
.L283:
	.loc 1 649 0
	movl	$-1, -56(%ebp)
	jmp	.L286
.L281:
.LBE7:
	.loc 1 654 0
	movl	8(%ebp), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %edx
	movl	mode_unit_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	testb	%al, %al
	je	.L287
	movl	8(%ebp), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %ecx
	movl	8(%ebp), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %edx
	movl	mode_unit_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %edx
	movzbw	%cl, %ax
	divb	%dl
	movzbl	%al, %eax
	movl	%eax, -84(%ebp)
	jmp	.L289
.L287:
	movl	$0, -84(%ebp)
.L289:
	movl	-84(%ebp), %ecx
	movl	%ecx, -56(%ebp)
.L286:
	.loc 1 657 0
	movl	$0, -52(%ebp)
	jmp	.L290
.L291:
	.loc 1 659 0
	cmpl	$0, -68(%ebp)
	je	.L292
	.loc 1 661 0
	movl	-68(%ebp), %edx
	movl	16(%edx), %eax
	testl	%eax, %eax
	je	.L294
	movl	-68(%ebp), %ecx
	movl	16(%ecx), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	jne	.L296
	movl	-52(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, -96(%ebp)
	movl	%edx, -92(%ebp)
	movl	-68(%ebp), %edx
	movl	16(%edx), %ecx
	movl	-96(%ebp), %eax
	movl	-92(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	%ecx, (%esp)
	call	compare_tree_int@PLT
	testl	%eax, %eax
	je	.L294
.L296:
	.loc 1 664 0
	leal	.LC47@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	sorry@PLT
.L294:
	.loc 1 666 0
	movl	-68(%ebp), %edx
	movl	20(%edx), %eax
	testl	%eax, %eax
	je	.L298
.LBB8:
	.loc 1 668 0
	movl	-68(%ebp), %ecx
	movl	%ecx, -40(%ebp)
	.loc 1 669 0
	movl	-68(%ebp), %eax
	movl	20(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %ecx
	leal	-40(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	digest_init@PLT
	movl	%eax, -60(%ebp)
	.loc 1 671 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-60(%ebp), %eax
	jne	.L300
	.loc 1 672 0
	movl	-60(%ebp), %edx
	movl	%edx, -80(%ebp)
	jmp	.L302
.L300:
	.loc 1 673 0
	movl	-60(%ebp), %ecx
	movl	4(%ecx), %eax
	movl	72(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	72(%eax), %eax
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	comptypes@PLT
	testl	%eax, %eax
	jne	.L303
	leal	__FUNCTION__.13863@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$676, 4(%esp)
	leal	.LC30@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L303:
	.loc 1 677 0
	movl	-40(%ebp), %eax
	testl	%eax, %eax
	je	.L305
	movl	-40(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$3, %al
	jne	.L307
.L305:
	movl	$1, -76(%ebp)
	jmp	.L308
.L307:
	movl	$0, -76(%ebp)
.L308:
	cmpl	$0, -76(%ebp)
	jne	.L309
	leal	__FUNCTION__.13863@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$678, 4(%esp)
	leal	.LC30@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L309:
	.loc 1 679 0
	movl	-40(%ebp), %eax
	cmpl	%eax, -68(%ebp)
	jne	.L311
	cmpl	$0, -56(%ebp)
	jns	.L311
	.loc 1 681 0
	leal	.LC48@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 683 0
	movl	$0, -40(%ebp)
.L311:
	.loc 1 685 0
	movl	-40(%ebp), %eax
	movl	%eax, -68(%ebp)
	jmp	.L315
.L298:
.LBE8:
	.loc 1 689 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -60(%ebp)
	.loc 1 690 0
	movl	-68(%ebp), %edx
	movl	(%edx), %edx
	movl	%edx, -68(%ebp)
	jmp	.L315
.L292:
	.loc 1 693 0
	cmpl	$0, -56(%ebp)
	js	.L335
	.loc 1 696 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	38(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L318
	.loc 1 703 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L320
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L320
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L320
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L320
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L325
.L320:
	.loc 1 704 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	build_functional_cast@PLT
	movl	%eax, -60(%ebp)
	.loc 1 703 0
	jmp	.L326
.L325:
	.loc 1 706 0
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	$47, (%esp)
	call	build@PLT
	movl	%eax, -60(%ebp)
.L326:
	.loc 1 707 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 8(%esp)
	movl	-60(%ebp), %ecx
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	digest_init@PLT
	movl	%eax, -60(%ebp)
	jmp	.L315
.L318:
	.loc 1 709 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	zero_init_p@PLT
	testl	%eax, %eax
	jne	.L335
	.loc 1 710 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	build_zero_init@PLT
	movl	%eax, -60(%ebp)
.L315:
	.loc 1 718 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-60(%ebp), %eax
	jne	.L328
	.loc 1 719 0
	movl	$1, -24(%ebp)
	jmp	.L330
.L328:
	.loc 1 720 0
	movl	-60(%ebp), %edx
	movzbl	9(%edx), %eax
	andl	$2, %eax
	testb	%al, %al
	jne	.L331
	.loc 1 721 0
	movl	$0, -32(%ebp)
	jmp	.L330
.L331:
	.loc 1 722 0
	movl	-60(%ebp), %ecx
	movl	4(%ecx), %eax
	movl	%eax, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	initializer_constant_valid_p@PLT
	testl	%eax, %eax
	jne	.L330
	.loc 1 723 0
	movl	$0, -28(%ebp)
.L330:
	.loc 1 724 0
	movl	-52(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, -96(%ebp)
	movl	%edx, -92(%ebp)
	movl	$0, 8(%esp)
	movl	-96(%ebp), %edx
	movl	-92(%ebp), %ecx
	movl	%edx, (%esp)
	movl	%ecx, 4(%esp)
	call	size_int_wide@PLT
	movl	-64(%ebp), %ecx
	movl	%ecx, 8(%esp)
	movl	-60(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	tree_cons@PLT
	movl	%eax, -64(%ebp)
	.loc 1 657 0
	addl	$1, -52(%ebp)
.L290:
	cmpl	$0, -56(%ebp)
	js	.L291
	movl	-56(%ebp), %ecx
	cmpl	%ecx, -52(%ebp)
	jl	.L291
	.loc 1 636 0
	jmp	.L335
.L280:
.LBE6:
	.loc 1 727 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	jne	.L336
.LBB9:
	.loc 1 731 0
	cmpl	$0, -68(%ebp)
	je	.L338
	.loc 1 733 0
	movl	8(%ebp), %eax
	movzbl	11(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L340
	.loc 1 735 0
	leal	.LC49@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	sorry@PLT
	.loc 1 736 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -80(%ebp)
	jmp	.L302
.L340:
	.loc 1 739 0
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	movl	36(%eax), %eax
	testl	%eax, %eax
	je	.L342
	.loc 1 741 0
	leal	.LC50@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	sorry@PLT
	.loc 1 742 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -80(%ebp)
	jmp	.L302
.L342:
	.loc 1 745 0
	movl	8(%ebp), %eax
	movzbl	11(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L338
	.loc 1 747 0
	leal	.LC51@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	sorry@PLT
	.loc 1 748 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -80(%ebp)
	jmp	.L302
.L338:
	.loc 1 752 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -48(%ebp)
	jmp	.L345
.L346:
	.loc 1 755 0
	movl	-48(%ebp), %edx
	movl	52(%edx), %eax
	testl	%eax, %eax
	jne	.L347
	movl	-48(%ebp), %ecx
	movzbl	38(%ecx), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L347
	.loc 1 757 0
	movl	global_trees@GOT(%ebx), %eax
	movl	44(%eax), %eax
	movl	-64(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-48(%ebp), %ecx
	movl	%ecx, (%esp)
	call	tree_cons@PLT
	movl	%eax, -64(%ebp)
	.loc 1 758 0
	jmp	.L350
.L347:
	.loc 1 761 0
	movl	-48(%ebp), %edx
	movzbl	8(%edx), %eax
	cmpb	$38, %al
	jne	.L350
	movl	-48(%ebp), %ecx
	movzbl	35(%ecx), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L350
	.loc 1 764 0
	cmpl	$0, -68(%ebp)
	je	.L353
	.loc 1 766 0
	movl	-68(%ebp), %edx
	movl	16(%edx), %eax
	testl	%eax, %eax
	je	.L355
	movl	-68(%ebp), %ecx
	movl	16(%ecx), %eax
	cmpl	-48(%ebp), %eax
	je	.L355
	movl	-68(%ebp), %eax
	movl	16(%eax), %edx
	movl	-48(%ebp), %ecx
	movl	52(%ecx), %eax
	cmpl	%eax, %edx
	je	.L355
	.loc 1 769 0
	leal	.LC47@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	sorry@PLT
.L355:
	.loc 1 771 0
	movl	-68(%ebp), %edx
	movl	20(%edx), %eax
	testl	%eax, %eax
	je	.L359
.LBB10:
	.loc 1 773 0
	movl	-68(%ebp), %ecx
	movl	%ecx, -40(%ebp)
	.loc 1 775 0
	movl	-68(%ebp), %eax
	movl	20(%eax), %edx
	movl	-48(%ebp), %eax
	movl	4(%eax), %ecx
	leal	-40(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	digest_init@PLT
	movl	%eax, -60(%ebp)
	.loc 1 777 0
	movl	-40(%ebp), %eax
	testl	%eax, %eax
	je	.L361
	movl	-40(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$3, %al
	jne	.L363
.L361:
	movl	$1, -72(%ebp)
	jmp	.L364
.L363:
	movl	$0, -72(%ebp)
.L364:
	cmpl	$0, -72(%ebp)
	jne	.L365
	leal	__FUNCTION__.13863@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$778, 4(%esp)
	leal	.LC30@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L365:
	.loc 1 779 0
	movl	-40(%ebp), %edx
	movl	%edx, -68(%ebp)
	jmp	.L368
.L359:
.LBE10:
	.loc 1 783 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -60(%ebp)
	.loc 1 784 0
	movl	-68(%ebp), %ecx
	movl	(%ecx), %ecx
	movl	%ecx, -68(%ebp)
	jmp	.L368
.L353:
	.loc 1 787 0
	movl	-48(%ebp), %edx
	movl	4(%edx), %eax
	movzbl	38(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L369
	.loc 1 794 0
	movl	-48(%ebp), %ecx
	movl	4(%ecx), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L371
	movl	-48(%ebp), %edx
	movl	4(%edx), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L371
	movl	-48(%ebp), %ecx
	movl	4(%ecx), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L371
	movl	-48(%ebp), %edx
	movl	4(%edx), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L371
	movl	-48(%ebp), %ecx
	movl	4(%ecx), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L376
.L371:
	.loc 1 795 0
	movl	-48(%ebp), %edx
	movl	4(%edx), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	build_functional_cast@PLT
	movl	%eax, -60(%ebp)
	.loc 1 794 0
	jmp	.L377
.L376:
	.loc 1 799 0
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	$47, (%esp)
	call	build@PLT
	movl	%eax, -60(%ebp)
	.loc 1 801 0
	cmpl	$0, 12(%ebp)
	je	.L377
	.loc 1 802 0
	movl	12(%ebp), %eax
	movzbl	11(%eax), %eax
	shrb	$4, %al
	andl	$1, %eax
	andl	$1, %eax
	movl	%eax, %edx
	sall	$4, %edx
	movl	-60(%ebp), %ecx
	movzbl	11(%ecx), %eax
	andl	$-17, %eax
	orl	%edx, %eax
	movl	-60(%ebp), %edx
	movb	%al, 11(%edx)
.L377:
	.loc 1 805 0
	movl	-48(%ebp), %ecx
	movl	4(%ecx), %eax
	movl	$0, 8(%esp)
	movl	-60(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	digest_init@PLT
	movl	%eax, -60(%ebp)
	.loc 1 808 0
	movl	extra_warnings@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L368
	cmpl	$0, 12(%ebp)
	je	.L381
	movl	12(%ebp), %eax
	movzbl	11(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L368
.L381:
	.loc 1 810 0
	movl	-48(%ebp), %ecx
	movl	%ecx, 4(%esp)
	leal	.LC52@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
	jmp	.L368
.L369:
	.loc 1 814 0
	movl	-48(%ebp), %edx
	movzbl	9(%edx), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L383
	.loc 1 815 0
	movl	-48(%ebp), %ecx
	movl	%ecx, 4(%esp)
	leal	.LC53@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	jmp	.L385
.L383:
	.loc 1 816 0
	movl	-48(%ebp), %edx
	movl	4(%edx), %eax
	movl	92(%eax), %eax
	testl	%eax, %eax
	je	.L386
	movl	-48(%ebp), %ecx
	movl	4(%ecx), %eax
	movl	92(%eax), %eax
	movzbl	(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L386
	.loc 1 817 0
	movl	-48(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC54@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 816 0
	jmp	.L385
.L386:
	.loc 1 819 0
	movl	-48(%ebp), %edx
	movl	4(%edx), %eax
	movzbl	8(%eax), %eax
	cmpb	$16, %al
	jne	.L385
	.loc 1 820 0
	movl	-48(%ebp), %ecx
	movl	%ecx, 4(%esp)
	leal	.LC55@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L385:
	.loc 1 824 0
	movl	extra_warnings@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L390
	cmpl	$0, 12(%ebp)
	je	.L392
	movl	12(%ebp), %eax
	movzbl	11(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L390
.L392:
	.loc 1 826 0
	movl	-48(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC52@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
.L390:
	.loc 1 828 0
	movl	-48(%ebp), %edx
	movl	4(%edx), %eax
	movl	%eax, (%esp)
	call	zero_init_p@PLT
	testl	%eax, %eax
	jne	.L350
	.loc 1 829 0
	movl	-48(%ebp), %ecx
	movl	4(%ecx), %eax
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	build_zero_init@PLT
	movl	%eax, -60(%ebp)
.L368:
	.loc 1 838 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-60(%ebp), %eax
	jne	.L395
	.loc 1 839 0
	movl	$1, -24(%ebp)
	jmp	.L397
.L395:
	.loc 1 840 0
	movl	-60(%ebp), %edx
	movzbl	9(%edx), %eax
	andl	$2, %eax
	testb	%al, %al
	jne	.L398
	.loc 1 841 0
	movl	$0, -32(%ebp)
	jmp	.L397
.L398:
	.loc 1 842 0
	movl	-60(%ebp), %ecx
	movl	4(%ecx), %eax
	movl	%eax, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	initializer_constant_valid_p@PLT
	testl	%eax, %eax
	jne	.L397
	.loc 1 843 0
	movl	$0, -28(%ebp)
.L397:
	.loc 1 844 0
	movl	-64(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	-60(%ebp), %ecx
	movl	%ecx, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_cons@PLT
	movl	%eax, -64(%ebp)
.L350:
	.loc 1 753 0
	movl	-48(%ebp), %edx
	movl	(%edx), %edx
	movl	%edx, -48(%ebp)
.L345:
	.loc 1 752 0
	cmpl	$0, -48(%ebp)
	jne	.L346
	jmp	.L335
.L336:
.LBE9:
	.loc 1 847 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	jne	.L335
	cmpl	$0, -68(%ebp)
	je	.L335
.LBB11:
	.loc 1 851 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -44(%ebp)
	.loc 1 855 0
	jmp	.L404
.L405:
	.loc 1 856 0
	movl	-44(%ebp), %ecx
	movl	(%ecx), %ecx
	movl	%ecx, -44(%ebp)
.L404:
	.loc 1 855 0
	cmpl	$0, -44(%ebp)
	je	.L406
	movl	-44(%ebp), %edx
	movl	52(%edx), %eax
	testl	%eax, %eax
	je	.L405
	movl	-44(%ebp), %ecx
	movzbl	8(%ecx), %eax
	cmpb	$38, %al
	jne	.L405
.L406:
	.loc 1 859 0
	movl	-68(%ebp), %edx
	movl	16(%edx), %eax
	testl	%eax, %eax
	je	.L409
.LBB12:
	.loc 1 861 0
	movl	$0, -16(%ebp)
	.loc 1 863 0
	movl	-68(%ebp), %ecx
	movl	16(%ecx), %eax
	movzbl	8(%eax), %eax
	cmpb	$38, %al
	jne	.L411
	.loc 1 865 0
	movl	-68(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -44(%ebp)
	movl	$1, -16(%ebp)
	jmp	.L413
.L411:
	.loc 1 866 0
	movl	-68(%ebp), %edx
	movl	16(%edx), %eax
	movzbl	8(%eax), %eax
	cmpb	$1, %al
	je	.L414
	.loc 1 867 0
	leal	.LC56@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	jmp	.L413
.L414:
.LBB13:
	.loc 1 871 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 872 0
	jmp	.L416
.L417:
	.loc 1 874 0
	movl	-12(%ebp), %eax
	movl	52(%eax), %edx
	movl	-68(%ebp), %ecx
	movl	16(%ecx), %eax
	cmpl	%eax, %edx
	je	.L418
	.loc 1 873 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
.L416:
	.loc 1 872 0
	cmpl	$0, -12(%ebp)
	jne	.L417
.L418:
	.loc 1 876 0
	cmpl	$0, -12(%ebp)
	je	.L420
	.loc 1 877 0
	movl	-12(%ebp), %eax
	movl	%eax, -44(%ebp)
	movl	$1, -16(%ebp)
	jmp	.L413
.L420:
	.loc 1 879 0
	movl	-68(%ebp), %edx
	movl	16(%edx), %eax
	movl	%eax, 4(%esp)
	leal	.LC57@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L413:
.LBE13:
	.loc 1 882 0
	cmpl	$0, -16(%ebp)
	jne	.L424
	.loc 1 883 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	-68(%ebp), %ecx
	movl	%eax, 20(%ecx)
	jmp	.L424
.L409:
.LBE12:
	.loc 1 885 0
	cmpl	$0, -44(%ebp)
	jne	.L424
	.loc 1 887 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC58@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 889 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	-68(%ebp), %edx
	movl	%eax, 20(%edx)
.L424:
	.loc 1 892 0
	movl	-68(%ebp), %ecx
	movl	20(%ecx), %eax
	testl	%eax, %eax
	je	.L426
.LBB14:
	.loc 1 894 0
	movl	-68(%ebp), %eax
	movl	%eax, -40(%ebp)
	.loc 1 896 0
	movl	-68(%ebp), %ecx
	movl	20(%ecx), %edx
	movl	-44(%ebp), %eax
	movl	4(%eax), %ecx
	leal	-40(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	digest_init@PLT
	movl	%eax, -60(%ebp)
	.loc 1 898 0
	movl	-40(%ebp), %eax
	testl	%eax, %eax
	je	.L428
	movl	-40(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$3, %al
	je	.L428
	.loc 1 899 0
	leal	__FUNCTION__.13863@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$899, 4(%esp)
	leal	.LC30@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L428:
	.loc 1 900 0
	movl	-40(%ebp), %edx
	movl	%edx, -68(%ebp)
	jmp	.L431
.L426:
.LBE14:
	.loc 1 904 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -60(%ebp)
	.loc 1 905 0
	movl	-68(%ebp), %ecx
	movl	(%ecx), %ecx
	movl	%ecx, -68(%ebp)
.L431:
	.loc 1 908 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-60(%ebp), %eax
	jne	.L432
	.loc 1 909 0
	movl	$1, -24(%ebp)
	jmp	.L434
.L432:
	.loc 1 910 0
	movl	-60(%ebp), %edx
	movzbl	9(%edx), %eax
	andl	$2, %eax
	testb	%al, %al
	jne	.L435
	.loc 1 911 0
	movl	$0, -32(%ebp)
	jmp	.L434
.L435:
	.loc 1 912 0
	movl	-60(%ebp), %ecx
	movl	4(%ecx), %eax
	movl	%eax, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	initializer_constant_valid_p@PLT
	testl	%eax, %eax
	jne	.L434
	.loc 1 913 0
	movl	$0, -28(%ebp)
.L434:
	.loc 1 914 0
	movl	-64(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	-60(%ebp), %ecx
	movl	%ecx, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_cons@PLT
	movl	%eax, -64(%ebp)
.L335:
.LBE11:
	.loc 1 918 0
	cmpl	$0, 16(%ebp)
	je	.L438
	.loc 1 919 0
	movl	16(%ebp), %eax
	movl	-68(%ebp), %edx
	movl	%edx, (%eax)
	jmp	.L440
.L438:
	.loc 1 922 0
	cmpl	$0, -68(%ebp)
	je	.L440
	.loc 1 923 0
	leal	.LC59@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	pedwarn@PLT
.L440:
	.loc 1 925 0
	cmpl	$0, -24(%ebp)
	je	.L442
	.loc 1 926 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -80(%ebp)
	jmp	.L302
.L442:
	.loc 1 928 0
	movl	-64(%ebp), %ecx
	movl	%ecx, (%esp)
	call	nreverse@PLT
	movl	%eax, 12(%esp)
	movl	$0, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$47, (%esp)
	call	build@PLT
	movl	%eax, -36(%ebp)
	.loc 1 929 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$19, %al
	jne	.L444
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	jne	.L444
	.loc 1 930 0
	movl	$0, 8(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	complete_array_type@PLT
.L444:
	.loc 1 931 0
	cmpl	$0, 12(%ebp)
	je	.L447
	.loc 1 932 0
	movl	12(%ebp), %eax
	movzbl	11(%eax), %eax
	shrb	$4, %al
	andl	$1, %eax
	movl	-36(%ebp), %ecx
	andl	$1, %eax
	movl	%eax, %edx
	sall	$4, %edx
	movzbl	11(%ecx), %eax
	andl	$-17, %eax
	orl	%edx, %eax
	movb	%al, 11(%ecx)
.L447:
	.loc 1 933 0
	cmpl	$0, -32(%ebp)
	je	.L449
	movl	-36(%ebp), %eax
	movzbl	9(%eax), %edx
	orl	$2, %edx
	movb	%dl, 9(%eax)
.L449:
	.loc 1 934 0
	cmpl	$0, -32(%ebp)
	je	.L451
	cmpl	$0, -28(%ebp)
	je	.L451
	movl	-36(%ebp), %eax
	movzbl	10(%eax), %edx
	orl	$4, %edx
	movb	%dl, 10(%eax)
.L451:
	.loc 1 935 0
	movl	-36(%ebp), %eax
	movl	%eax, -80(%ebp)
.L302:
	movl	-80(%ebp), %eax
	.loc 1 936 0
	addl	$116, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE23:
	.size	process_init_constructor, .-process_init_constructor
.globl build_scoped_ref
	.type	build_scoped_ref, @function
build_scoped_ref:
.LFB24:
	.loc 1 971 0
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
	.loc 1 974 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L456
	.loc 1 975 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L458
.L456:
	.loc 1 976 0
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L459
	.loc 1 977 0
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L461
.L459:
	.loc 1 979 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	$0, 12(%esp)
	movl	$2, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	lookup_base@PLT
	movl	%eax, -8(%ebp)
.L461:
	.loc 1 981 0
	cmpl	$0, -8(%ebp)
	je	.L462
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-8(%ebp), %eax
	jne	.L464
.L462:
	.loc 1 983 0
	movl	16(%ebp), %eax
	movl	$0, (%eax)
	.loc 1 984 0
	cmpl	$0, -8(%ebp)
	jne	.L465
	.loc 1 985 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	error_not_base_type@PLT
.L465:
	.loc 1 986 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L458
.L464:
	.loc 1 989 0
	movl	16(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 990 0
	movl	$1, 12(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$60, (%esp)
	call	build_base_path@PLT
	movl	%eax, -24(%ebp)
.L458:
	movl	-24(%ebp), %eax
	.loc 1 991 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE24:
	.size	build_scoped_ref, .-build_scoped_ref
	.section	.rodata
	.align 4
.LC60:
	.string	"circular pointer delegation detected"
	.align 4
.LC61:
	.string	"base operand of `->' has non-pointer type `%T'"
	.align 4
.LC62:
	.string	"result of `operator->()' yields non-pointer result"
	.align 4
.LC63:
	.string	"base operand of `->' is not a pointer"
	.text
.globl build_x_arrow
	.type	build_x_arrow, @function
build_x_arrow:
.LFB25:
	.loc 1 1003 0
	pushl	%ebp
.LCFI40:
	movl	%esp, %ebp
.LCFI41:
	pushl	%ebx
.LCFI42:
	subl	$52, %esp
.LCFI43:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1004 0
	movl	$0, -16(%ebp)
	.loc 1 1005 0
	movl	8(%ebp), %eax
	movl	%eax, -24(%ebp)
	.loc 1 1006 0
	movl	-24(%ebp), %edx
	movl	4(%edx), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1007 0
	movl	$0, -8(%ebp)
	.loc 1 1009 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-12(%ebp), %eax
	jne	.L469
	.loc 1 1010 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L471
.L469:
	.loc 1 1012 0
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	64(%eax), %edx
	movl	60(%eax), %eax
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L472
	.loc 1 1013 0
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$154, (%esp)
	call	build_min_nt@PLT
	movl	%eax, -28(%ebp)
	jmp	.L471
.L472:
	.loc 1 1015 0
	movl	-24(%ebp), %edx
	movzbl	8(%edx), %eax
	cmpb	$-77, %al
	jne	.L474
	.loc 1 1017 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	resolve_offset_ref@PLT
	movl	%eax, -24(%ebp)
	.loc 1 1018 0
	movl	-24(%ebp), %edx
	movl	4(%edx), %eax
	movl	%eax, -12(%ebp)
.L474:
	.loc 1 1021 0
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$16, %al
	jne	.L476
	.loc 1 1023 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	convert_from_reference@PLT
	movl	%eax, -24(%ebp)
	.loc 1 1024 0
	movl	-24(%ebp), %edx
	movl	4(%edx), %eax
	movl	%eax, -12(%ebp)
.L476:
	.loc 1 1027 0
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L484
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L484
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L484
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L484
	movl	-12(%ebp), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L483
	.loc 1 1029 0
	jmp	.L484
.L485:
	.loc 1 1032 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-24(%ebp), %eax
	jne	.L486
	.loc 1 1033 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L471
.L486:
	.loc 1 1035 0
	movl	-24(%ebp), %edx
	movl	4(%edx), %eax
	movl	-16(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	value_member@PLT
	testl	%eax, %eax
	je	.L488
	.loc 1 1037 0
	leal	.LC60@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 1038 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L471
.L488:
	.loc 1 1042 0
	movl	-24(%ebp), %edx
	movl	4(%edx), %eax
	movl	-16(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	tree_cons@PLT
	movl	%eax, -16(%ebp)
	.loc 1 1045 0
	movl	-24(%ebp), %eax
	movl	%eax, -8(%ebp)
.L484:
	.loc 1 1029 0
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	movl	-24(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	$3, 4(%esp)
	movl	$40, (%esp)
	call	build_opfncall@PLT
	movl	%eax, -24(%ebp)
	cmpl	$0, -24(%ebp)
	jne	.L485
	.loc 1 1048 0
	cmpl	$0, -8(%ebp)
	jne	.L491
	.loc 1 1050 0
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC61@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 1051 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L471
.L491:
	.loc 1 1054 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$16, %al
	jne	.L495
	.loc 1 1055 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	convert_from_reference@PLT
	movl	%eax, -8(%ebp)
	.loc 1 1027 0
	jmp	.L495
.L483:
	.loc 1 1058 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	default_conversion@PLT
	movl	%eax, -8(%ebp)
.L495:
	.loc 1 1060 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L496
	.loc 1 1061 0
	movl	$0, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_indirect_ref@PLT
	movl	%eax, -28(%ebp)
	jmp	.L471
.L496:
	.loc 1 1063 0
	cmpl	$0, -16(%ebp)
	je	.L498
	.loc 1 1064 0
	leal	.LC62@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	jmp	.L500
.L498:
	.loc 1 1066 0
	leal	.LC63@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L500:
	.loc 1 1067 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
.L471:
	movl	-28(%ebp), %eax
	.loc 1 1068 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE25:
	.size	build_x_arrow, .-build_x_arrow
	.section	.rodata
	.align 4
.LC64:
	.string	"`%E' cannot be used as a member pointer, since it is of type `%T'"
	.align 4
.LC65:
	.string	"cannot apply member pointer `%E' to `%E', which is of non-aggregate type `%T'"
	.align 4
.LC66:
	.string	"member type `%T::' incompatible with object type `%T'"
	.text
.globl build_m_component_ref
	.type	build_m_component_ref, @function
build_m_component_ref:
.LFB26:
	.loc 1 1085 0
	pushl	%ebp
.LCFI44:
	movl	%esp, %ebp
.LCFI45:
	pushl	%esi
.LCFI46:
	pushl	%ebx
.LCFI47:
	subl	$64, %esp
.LCFI48:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1092 0
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	64(%eax), %edx
	movl	60(%eax), %eax
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L503
	.loc 1 1093 0
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$213, (%esp)
	call	build_min_nt@PLT
	movl	%eax, -44(%ebp)
	jmp	.L505
.L503:
	.loc 1 1095 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	decay_conversion@PLT
	movl	%eax, 8(%ebp)
	.loc 1 1097 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	8(%ebp), %eax
	je	.L506
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	12(%ebp), %eax
	jne	.L508
.L506:
	.loc 1 1098 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -44(%ebp)
	jmp	.L505
.L508:
	.loc 1 1100 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	72(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 1102 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	jne	.L509
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	92(%eax), %eax
	testl	%eax, %eax
	je	.L509
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	92(%eax), %eax
	movzbl	8(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L509
	.loc 1 1104 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	16(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 1105 0
	movl	-28(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 1102 0
	jmp	.L513
.L509:
	.loc 1 1107 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L514
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$15, %al
	jne	.L514
	.loc 1 1109 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 1110 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 1113 0
	movl	$0, -16(%ebp)
	.loc 1 1114 0
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$16, %al
	je	.L513
	.loc 1 1121 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	cp_type_quals@PLT
	movl	%eax, %esi
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	cp_type_quals@PLT
	orl	%esi, %eax
	movl	%eax, -16(%ebp)
	.loc 1 1127 0
	movl	$3, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	cp_build_qualified_type_real@PLT
	movl	%eax, -20(%ebp)
	.loc 1 1107 0
	jmp	.L513
.L514:
	.loc 1 1132 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC64@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 1134 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -44(%ebp)
	jmp	.L505
.L513:
	.loc 1 1137 0
	movl	-24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L519
	movl	-24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L519
	movl	-24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L519
	movl	-24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L519
	movl	-24(%ebp), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	jne	.L519
	.loc 1 1139 0
	movl	-24(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC65@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 1141 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -44(%ebp)
	jmp	.L505
.L519:
	.loc 1 1144 0
	movl	-28(%ebp), %eax
	movl	64(%eax), %eax
	movl	$0, 12(%esp)
	movl	$2, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	lookup_base@PLT
	movl	%eax, -12(%ebp)
	.loc 1 1146 0
	cmpl	$0, -12(%ebp)
	jne	.L525
	.loc 1 1148 0
	movl	-28(%ebp), %eax
	movl	64(%eax), %edx
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	leal	.LC66@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 1150 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -44(%ebp)
	jmp	.L505
.L525:
	.loc 1 1152 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-12(%ebp), %eax
	jne	.L527
	.loc 1 1153 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -44(%ebp)
	jmp	.L505
.L527:
	.loc 1 1155 0
	movl	12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$179, (%esp)
	call	build@PLT
	movl	%eax, 12(%ebp)
	.loc 1 1156 0
	movl	-28(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$15, %al
	jne	.L529
	.loc 1 1157 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	resolve_offset_ref@PLT
	movl	%eax, 12(%ebp)
.L529:
	.loc 1 1158 0
	movl	12(%ebp), %eax
	movl	%eax, -44(%ebp)
.L505:
	movl	-44(%ebp), %eax
	.loc 1 1159 0
	addl	$64, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE26:
	.size	build_m_component_ref, .-build_m_component_ref
	.section	.rodata
	.align 4
.LC67:
	.string	"`%T' fails to be a typedef or built-in type"
	.text
.globl build_functional_cast
	.type	build_functional_cast, @function
build_functional_cast:
.LFB27:
	.loc 1 1167 0
	pushl	%ebp
.LCFI49:
	movl	%esp, %ebp
.LCFI50:
	pushl	%ebx
.LCFI51:
	subl	$52, %esp
.LCFI52:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1172 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	8(%ebp), %eax
	je	.L533
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	12(%ebp), %eax
	jne	.L535
.L533:
	.loc 1 1173 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L536
.L535:
	.loc 1 1175 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$1, %al
	jne	.L537
	.loc 1 1177 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	identifier_type_value@PLT
	testl	%eax, %eax
	je	.L539
	.loc 1 1179 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	identifier_type_value@PLT
	movl	%eax, -8(%ebp)
	jmp	.L545
.L539:
	.loc 1 1182 0
	movl	$1, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	lookup_name@PLT
	movl	%eax, -8(%ebp)
	.loc 1 1183 0
	cmpl	$0, -8(%ebp)
	je	.L542
	movl	-8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$34, %al
	je	.L544
.L542:
	.loc 1 1185 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC67@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 1186 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L536
.L544:
	.loc 1 1188 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L545
.L537:
	.loc 1 1191 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$34, %al
	jne	.L546
	.loc 1 1192 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L545
.L546:
	.loc 1 1194 0
	movl	8(%ebp), %eax
	movl	%eax, -8(%ebp)
.L545:
	.loc 1 1196 0
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	64(%eax), %edx
	movl	60(%eax), %eax
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L548
	.loc 1 1197 0
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$208, (%esp)
	call	build_min@PLT
	movl	%eax, -24(%ebp)
	jmp	.L536
.L548:
	.loc 1 1199 0
	movl	-8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L550
	movl	-8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L550
	movl	-8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L550
	movl	-8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L550
	movl	-8(%ebp), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	jne	.L550
	.loc 1 1202 0
	cmpl	$0, 12(%ebp)
	jne	.L556
	.loc 1 1203 0
	movl	global_trees@GOT(%ebx), %eax
	movl	44(%eax), %eax
	movl	%eax, 12(%ebp)
	jmp	.L558
.L556:
	.loc 1 1206 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L559
	.loc 1 1207 0
	leal	.LC34@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	pedwarn@PLT
.L559:
	.loc 1 1208 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	build_compound_expr@PLT
	movl	%eax, 12(%ebp)
.L558:
	.loc 1 1211 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_c_cast@PLT
	movl	%eax, -24(%ebp)
	jmp	.L536
.L550:
	.loc 1 1221 0
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	complete_type_or_diagnostic@PLT
	testl	%eax, %eax
	jne	.L561
	.loc 1 1222 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L536
.L561:
	.loc 1 1223 0
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	abstract_virtuals_error@PLT
	testl	%eax, %eax
	je	.L563
	.loc 1 1224 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L536
.L563:
	.loc 1 1226 0
	cmpl	$0, 12(%ebp)
	je	.L565
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L565
	.loc 1 1227 0
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_c_cast@PLT
	movl	%eax, -24(%ebp)
	jmp	.L536
.L565:
	.loc 1 1231 0
	cmpl	$0, 12(%ebp)
	jne	.L568
	movl	-8(%ebp), %eax
	movzbl	38(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L568
	movl	-8(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L568
	.loc 1 1234 0
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$47, (%esp)
	call	build@PLT
	movl	%eax, 8(%ebp)
	.loc 1 1235 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	get_target_expr@PLT
	movl	%eax, -24(%ebp)
	jmp	.L536
.L568:
	.loc 1 1238 0
	movl	-8(%ebp), %eax
	movl	76(%eax), %edx
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	192(%eax), %ecx
	movl	$3, 16(%esp)
	movl	%edx, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	$0, (%esp)
	call	build_special_member_call@PLT
	movl	%eax, 8(%ebp)
	.loc 1 1241 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L572
	.loc 1 1242 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L536
.L572:
	.loc 1 1244 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_cplus_new@PLT
	movl	%eax, -24(%ebp)
.L536:
	movl	-24(%ebp), %eax
	.loc 1 1245 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE27:
	.size	build_functional_cast, .-build_functional_cast
	.section	.rodata
.LC68:
	.string	"cast"
	.align 4
.LC69:
	.string	"ISO C++ forbids defining types within %s"
	.text
.globl check_for_new_type
	.type	check_for_new_type, @function
check_for_new_type:
.LFB28:
	.loc 1 1255 0
	pushl	%ebp
.LCFI53:
	movl	%esp, %ebp
.LCFI54:
	pushl	%edi
.LCFI55:
	pushl	%esi
.LCFI56:
	pushl	%ebx
.LCFI57:
	subl	$28, %esp
.LCFI58:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1256 0
	movl	16(%ebp), %eax
	testl	%eax, %eax
	je	.L580
	movl	pedantic@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L578
	movl	8(%ebp), %eax
	movl	%eax, -16(%ebp)
	leal	.LC68@GOTOFF(%ebx), %eax
	movl	%eax, -20(%ebp)
	movl	$5, -24(%ebp)
	cld
	movl	-16(%ebp), %esi
	movl	-20(%ebp), %edi
	movl	-24(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	je	.L580
.L578:
	.loc 1 1258 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC69@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	pedwarn@PLT
.L580:
	.loc 1 1259 0
	addl	$28, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE28:
	.size	check_for_new_type, .-check_for_new_type
	.section	.rodata
	.type	__FUNCTION__.14557, @object
	.size	__FUNCTION__.14557, 24
__FUNCTION__.14557:
	.string	"add_exception_specifier"
	.text
.globl add_exception_specifier
	.type	add_exception_specifier, @function
add_exception_specifier:
.LFB29:
	.loc 1 1270 0
	pushl	%ebp
.LCFI59:
	movl	%esp, %ebp
.LCFI60:
	pushl	%ebx
.LCFI61:
	subl	$52, %esp
.LCFI62:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1272 0
	movl	12(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 1274 0
	movl	$-1, -12(%ebp)
	.loc 1 1276 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	12(%ebp), %eax
	jne	.L582
	.loc 1 1277 0
	movl	8(%ebp), %eax
	movl	%eax, -44(%ebp)
	jmp	.L584
.L582:
	.loc 1 1279 0
	cmpl	$0, 12(%ebp)
	je	.L585
	cmpl	$0, 8(%ebp)
	je	.L587
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L585
.L587:
	movl	$1, -40(%ebp)
	jmp	.L589
.L585:
	movl	$0, -40(%ebp)
.L589:
	cmpl	$0, -40(%ebp)
	jne	.L590
	leal	__FUNCTION__.14557@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1279, 4(%esp)
	leal	.LC30@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L590:
	.loc 1 1284 0
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -16(%ebp)
	.loc 1 1285 0
	cmpl	$0, -16(%ebp)
	jne	.L592
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$16, %al
	jne	.L594
.L592:
	.loc 1 1286 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
.L594:
	.loc 1 1287 0
	cmpl	$0, 16(%ebp)
	jns	.L595
	.loc 1 1288 0
	movl	$1, -24(%ebp)
	jmp	.L597
.L595:
	.loc 1 1289 0
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$6, %al
	jne	.L598
	.loc 1 1290 0
	movl	-16(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L597
.L598:
	.loc 1 1291 0
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	jne	.L600
	.loc 1 1292 0
	movl	$1, -24(%ebp)
	jmp	.L597
.L600:
	.loc 1 1293 0
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	64(%eax), %edx
	movl	60(%eax), %eax
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L602
	.loc 1 1294 0
	movl	$1, -24(%ebp)
	jmp	.L597
.L602:
	.loc 1 1297 0
	movl	$1, -24(%ebp)
	.loc 1 1302 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	complete_type@PLT
	movl	20(%eax), %eax
	testl	%eax, %eax
	jne	.L597
	.loc 1 1303 0
	movl	$2, -12(%ebp)
.L597:
	.loc 1 1306 0
	cmpl	$0, -24(%ebp)
	je	.L605
.LBB15:
	.loc 1 1310 0
	movl	8(%ebp), %eax
	movl	%eax, -8(%ebp)
	jmp	.L607
.L608:
	.loc 1 1311 0
	movl	-8(%ebp), %eax
	movl	20(%eax), %edx
	movl	$0, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	comptypes@PLT
	testl	%eax, %eax
	jne	.L609
	.loc 1 1310 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
.L607:
	cmpl	$0, -8(%ebp)
	jne	.L608
.L609:
	.loc 1 1313 0
	cmpl	$0, -8(%ebp)
	jne	.L613
	.loc 1 1314 0
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	tree_cons@PLT
	movl	%eax, 8(%ebp)
	jmp	.L613
.L605:
.LBE15:
	.loc 1 1317 0
	movl	$0, -12(%ebp)
.L613:
	.loc 1 1319 0
	cmpl	$0, -12(%ebp)
	js	.L614
	cmpl	$0, 16(%ebp)
	je	.L614
	.loc 1 1320 0
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	cxx_incomplete_type_diagnostic@PLT
.L614:
	.loc 1 1322 0
	movl	8(%ebp), %eax
	movl	%eax, -44(%ebp)
.L584:
	movl	-44(%ebp), %eax
	.loc 1 1323 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE29:
	.size	add_exception_specifier, .-add_exception_specifier
.globl merge_exception_specifiers
	.type	merge_exception_specifiers, @function
merge_exception_specifiers:
.LFB30:
	.loc 1 1331 0
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
	.loc 1 1332 0
	cmpl	$0, 8(%ebp)
	je	.L619
	cmpl	$0, 12(%ebp)
	jne	.L621
.L619:
	.loc 1 1333 0
	movl	$0, -24(%ebp)
	jmp	.L622
.L621:
	.loc 1 1334 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	jne	.L623
	.loc 1 1335 0
	movl	12(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L622
.L623:
	.loc 1 1336 0
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	jne	.L625
	.loc 1 1337 0
	movl	8(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L622
.L625:
.LBB16:
	.loc 1 1340 0
	movl	8(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 1342 0
	jmp	.L627
.L628:
.LBB17:
	.loc 1 1344 0
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1347 0
	movl	-16(%ebp), %eax
	movl	%eax, -8(%ebp)
	jmp	.L629
.L630:
	.loc 1 1348 0
	movl	-8(%ebp), %eax
	movl	20(%eax), %edx
	movl	$0, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	comptypes@PLT
	testl	%eax, %eax
	jne	.L631
	.loc 1 1347 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
.L629:
	cmpl	$0, -8(%ebp)
	jne	.L630
.L631:
	.loc 1 1350 0
	cmpl	$0, -8(%ebp)
	jne	.L633
	.loc 1 1352 0
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	build_tree_list@PLT
	movl	%eax, -12(%ebp)
	.loc 1 1353 0
	movl	-12(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 1354 0
	movl	-12(%ebp), %eax
	movl	%eax, 8(%ebp)
.L633:
.LBE17:
	.loc 1 1342 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%ebp)
.L627:
	cmpl	$0, 12(%ebp)
	jne	.L628
.LBE16:
	.loc 1 1358 0
	movl	8(%ebp), %eax
	movl	%eax, -24(%ebp)
.L622:
	movl	-24(%ebp), %eax
	.loc 1 1359 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE30:
	.size	merge_exception_specifiers, .-merge_exception_specifiers
	.section	.rodata
	.align 4
.LC70:
	.string	"call to function `%D' which throws incomplete type `%#T'"
	.align 4
.LC71:
	.string	"call to function which throws incomplete type `%#T'"
	.text
.globl require_complete_eh_spec_types
	.type	require_complete_eh_spec_types, @function
require_complete_eh_spec_types:
.LFB31:
	.loc 1 1370 0
	pushl	%ebp
.LCFI67:
	movl	%esp, %ebp
.LCFI68:
	pushl	%ebx
.LCFI69:
	subl	$36, %esp
.LCFI70:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1373 0
	cmpl	$0, 12(%ebp)
	je	.L638
	movl	12(%ebp), %eax
	movzbl	35(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L648
.L638:
	.loc 1 1375 0
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L641
.L642:
.LBB18:
	.loc 1 1378 0
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 1379 0
	cmpl	$0, -8(%ebp)
	je	.L643
	movl	-8(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	jne	.L643
	.loc 1 1381 0
	cmpl	$0, 12(%ebp)
	je	.L646
	.loc 1 1382 0
	movl	-8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC70@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	jmp	.L643
.L646:
	.loc 1 1386 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC71@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L643:
.LBE18:
	.loc 1 1376 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
.L641:
	.loc 1 1375 0
	cmpl	$0, -12(%ebp)
	jne	.L642
.L648:
	.loc 1 1390 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE31:
	.size	require_complete_eh_spec_types, .-require_complete_eh_spec_types
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
	.byte	0x4
	.long	.LCFI43-.LCFI41
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
	.long	.LCFI44-.LFB26
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI45-.LCFI44
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI48-.LCFI45
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
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
	.byte	0x4
	.long	.LCFI58-.LCFI54
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
	.long	.LCFI59-.LFB29
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
.LEFDE28:
.LSFDE30:
	.long	.LEFDE30-.LASFDE30
.LASFDE30:
	.long	.Lframe0
	.long	.LFB30
	.long	.LFE30-.LFB30
	.byte	0x4
	.long	.LCFI63-.LFB30
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
.LEFDE30:
.LSFDE32:
	.long	.LEFDE32-.LASFDE32
.LASFDE32:
	.long	.Lframe0
	.long	.LFB31
	.long	.LFE31-.LFB31
	.byte	0x4
	.long	.LCFI67-.LFB31
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
.LEFDE32:
	.file 2 "../../../kg++fe/gnu/MIPS/config.h"
	.file 3 "../../../kg++fe/gnu/tree.h"
	.file 4 "../../../kg++fe/gnu/hashtable.h"
	.file 5 "../../../kg++fe/gnu/location.h"
	.file 6 "../../../kg++fe/gnu/machmode.h"
	.file 7 "../../../kg++fe/gnu/function.h"
	.file 8 "../../../kg++fe/gnu/MIPS/mips.h"
	.file 9 "../../../kg++fe/gnu/cp/cp-tree.h"
	.file 10 "../../../kg++fe/gnu/c-common.h"
	.file 11 "../../../kg++fe/gnu/varray.h"
	.file 12 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h"
	.file 13 "../../../kg++fe/omp_types.h"
	.file 14 "../../../kg++fe/gnu/flags.h"
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
	.long	.LCFI44-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI44-.Ltext0
	.long	.LCFI45-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI45-.Ltext0
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
	.long	.LFE29-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST15:
	.long	.LFB30-.Ltext0
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
	.long	.LFE30-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST16:
	.long	.LFB31-.Ltext0
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
	.long	.LFE31-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
	.section	.debug_info
	.long	0x74b4
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.Ldebug_line0
	.long	.Letext0
	.long	.Ltext0
	.string	"GNU C 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.byte	0x1
	.string	"../../../kg++fe/gnu/cp/typeck2.c"
	.string	"/usa/handong/simplnano/cmplr-open64-merge/targia32_sl1/g++fe/gnu"
	.uleb128 0x2
	.string	"rtx"
	.byte	0x2
	.byte	0xc
	.long	0xaa
	.uleb128 0x3
	.byte	0x4
	.long	0xb0
	.uleb128 0x4
	.string	"rtx_def"
	.byte	0x1
	.uleb128 0x2
	.string	"rtvec"
	.byte	0x2
	.byte	0xe
	.long	0xc7
	.uleb128 0x3
	.byte	0x4
	.long	0xcd
	.uleb128 0x4
	.string	"rtvec_def"
	.byte	0x1
	.uleb128 0x2
	.string	"tree"
	.byte	0x2
	.byte	0x10
	.long	0xe5
	.uleb128 0x3
	.byte	0x4
	.long	0xeb
	.uleb128 0x5
	.long	0x1c0
	.string	"tree_node"
	.byte	0xa0
	.byte	0x2
	.byte	0xf
	.uleb128 0x6
	.long	.LASF0
	.byte	0x3
	.value	0x887
	.long	0x2cc0
	.uleb128 0x7
	.string	"int_cst"
	.byte	0x3
	.value	0x888
	.long	0x2fde
	.uleb128 0x7
	.string	"real_cst"
	.byte	0x3
	.value	0x889
	.long	0x3026
	.uleb128 0x7
	.string	"vector"
	.byte	0x3
	.value	0x88a
	.long	0x3149
	.uleb128 0x6
	.long	.LASF1
	.byte	0x3
	.value	0x88b
	.long	0x3087
	.uleb128 0x7
	.string	"complex"
	.byte	0x3
	.value	0x88c
	.long	0x30f4
	.uleb128 0x7
	.string	"identifier"
	.byte	0x3
	.value	0x88d
	.long	0x31cf
	.uleb128 0x6
	.long	.LASF2
	.byte	0x3
	.value	0x88e
	.long	0x4248
	.uleb128 0x6
	.long	.LASF3
	.byte	0x3
	.value	0x88f
	.long	0x3432
	.uleb128 0x7
	.string	"list"
	.byte	0x3
	.value	0x890
	.long	0x3206
	.uleb128 0x7
	.string	"vec"
	.byte	0x3
	.value	0x891
	.long	0x324b
	.uleb128 0x7
	.string	"exp"
	.byte	0x3
	.value	0x892
	.long	0x329c
	.uleb128 0x7
	.string	"block"
	.byte	0x3
	.value	0x893
	.long	0x32e8
	.uleb128 0x7
	.string	"omp"
	.byte	0x3
	.value	0x895
	.long	0x4c49
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1c6
	.uleb128 0x8
	.long	0x1cb
	.uleb128 0x9
	.string	"char"
	.byte	0x1
	.byte	0x8
	.uleb128 0x9
	.string	"int"
	.byte	0x4
	.byte	0x5
	.uleb128 0xa
	.long	0x2ac
	.string	"mips_args"
	.byte	0x40
	.byte	0x8
	.value	0xaaa
	.uleb128 0xb
	.string	"gp_reg_found"
	.byte	0x8
	.value	0xaad
	.long	0x1d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.string	"arg_number"
	.byte	0x8
	.value	0xab0
	.long	0x2ac
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.string	"num_gprs"
	.byte	0x8
	.value	0xab5
	.long	0x2ac
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.string	"num_fprs"
	.byte	0x8
	.value	0xab8
	.long	0x2ac
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.string	"stack_words"
	.byte	0x8
	.value	0xabb
	.long	0x2ac
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.string	"fp_code"
	.byte	0x8
	.value	0xac8
	.long	0x1d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xb
	.string	"prototype"
	.byte	0x8
	.value	0xacb
	.long	0x1d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.string	"num_adjusts"
	.byte	0x8
	.value	0xad3
	.long	0x2ac
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xb
	.string	"adjust"
	.byte	0x8
	.value	0xad4
	.long	0x2b3
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0xc
	.long	.LASF4
	.byte	0x4
	.byte	0x7
	.uleb128 0xd
	.long	0x2c3
	.long	0x9f
	.uleb128 0xe
	.long	0x2c3
	.byte	0x7
	.byte	0x0
	.uleb128 0xc
	.long	.LASF4
	.byte	0x4
	.byte	0x7
	.uleb128 0xf
	.string	"CUMULATIVE_ARGS"
	.byte	0x8
	.value	0xad5
	.long	0x1da
	.uleb128 0x2
	.string	"size_t"
	.byte	0xc
	.byte	0xd6
	.long	0x2ac
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
	.long	0x1cb
	.uleb128 0x3
	.byte	0x4
	.long	0x38d
	.uleb128 0x8
	.long	0x2f0
	.uleb128 0x3
	.byte	0x4
	.long	0x2f0
	.uleb128 0xd
	.long	0x3a8
	.long	0x1cb
	.uleb128 0xe
	.long	0x2c3
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x3b8
	.long	0x1cb
	.uleb128 0xe
	.long	0x2c3
	.byte	0x17
	.byte	0x0
	.uleb128 0x11
	.long	0x601
	.string	"machine_mode"
	.byte	0x4
	.byte	0x6
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
	.uleb128 0x13
	.long	0x633
	.string	"location_s"
	.byte	0x8
	.byte	0x5
	.byte	0x1c
	.uleb128 0x14
	.string	"file"
	.byte	0x5
	.byte	0x1e
	.long	0x1c0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x14
	.string	"line"
	.byte	0x5
	.byte	0x21
	.long	0x1d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"location_t"
	.byte	0x5
	.byte	0x23
	.long	0x601
	.uleb128 0x11
	.long	0xf67
	.string	"tree_code"
	.byte	0x4
	.byte	0x3
	.byte	0x25
	.uleb128 0x12
	.string	"ERROR_MARK"
	.sleb128 0
	.uleb128 0x12
	.string	"IDENTIFIER_NODE"
	.sleb128 1
	.uleb128 0x12
	.string	"OP_IDENTIFIER"
	.sleb128 2
	.uleb128 0x12
	.string	"TREE_LIST"
	.sleb128 3
	.uleb128 0x12
	.string	"TREE_VEC"
	.sleb128 4
	.uleb128 0x12
	.string	"BLOCK"
	.sleb128 5
	.uleb128 0x12
	.string	"VOID_TYPE"
	.sleb128 6
	.uleb128 0x12
	.string	"INTEGER_TYPE"
	.sleb128 7
	.uleb128 0x12
	.string	"REAL_TYPE"
	.sleb128 8
	.uleb128 0x12
	.string	"COMPLEX_TYPE"
	.sleb128 9
	.uleb128 0x12
	.string	"VECTOR_TYPE"
	.sleb128 10
	.uleb128 0x12
	.string	"ENUMERAL_TYPE"
	.sleb128 11
	.uleb128 0x12
	.string	"BOOLEAN_TYPE"
	.sleb128 12
	.uleb128 0x12
	.string	"CHAR_TYPE"
	.sleb128 13
	.uleb128 0x12
	.string	"POINTER_TYPE"
	.sleb128 14
	.uleb128 0x12
	.string	"OFFSET_TYPE"
	.sleb128 15
	.uleb128 0x12
	.string	"REFERENCE_TYPE"
	.sleb128 16
	.uleb128 0x12
	.string	"METHOD_TYPE"
	.sleb128 17
	.uleb128 0x12
	.string	"FILE_TYPE"
	.sleb128 18
	.uleb128 0x12
	.string	"ARRAY_TYPE"
	.sleb128 19
	.uleb128 0x12
	.string	"SET_TYPE"
	.sleb128 20
	.uleb128 0x12
	.string	"RECORD_TYPE"
	.sleb128 21
	.uleb128 0x12
	.string	"UNION_TYPE"
	.sleb128 22
	.uleb128 0x12
	.string	"QUAL_UNION_TYPE"
	.sleb128 23
	.uleb128 0x12
	.string	"FUNCTION_TYPE"
	.sleb128 24
	.uleb128 0x12
	.string	"LANG_TYPE"
	.sleb128 25
	.uleb128 0x12
	.string	"INTEGER_CST"
	.sleb128 26
	.uleb128 0x12
	.string	"REAL_CST"
	.sleb128 27
	.uleb128 0x12
	.string	"COMPLEX_CST"
	.sleb128 28
	.uleb128 0x12
	.string	"VECTOR_CST"
	.sleb128 29
	.uleb128 0x12
	.string	"STRING_CST"
	.sleb128 30
	.uleb128 0x12
	.string	"FUNCTION_DECL"
	.sleb128 31
	.uleb128 0x12
	.string	"LABEL_DECL"
	.sleb128 32
	.uleb128 0x12
	.string	"CONST_DECL"
	.sleb128 33
	.uleb128 0x12
	.string	"TYPE_DECL"
	.sleb128 34
	.uleb128 0x12
	.string	"VAR_DECL"
	.sleb128 35
	.uleb128 0x12
	.string	"PARM_DECL"
	.sleb128 36
	.uleb128 0x12
	.string	"RESULT_DECL"
	.sleb128 37
	.uleb128 0x12
	.string	"FIELD_DECL"
	.sleb128 38
	.uleb128 0x12
	.string	"NAMESPACE_DECL"
	.sleb128 39
	.uleb128 0x12
	.string	"COMPONENT_REF"
	.sleb128 40
	.uleb128 0x12
	.string	"BIT_FIELD_REF"
	.sleb128 41
	.uleb128 0x12
	.string	"INDIRECT_REF"
	.sleb128 42
	.uleb128 0x12
	.string	"BUFFER_REF"
	.sleb128 43
	.uleb128 0x12
	.string	"ARRAY_REF"
	.sleb128 44
	.uleb128 0x12
	.string	"ARRAY_RANGE_REF"
	.sleb128 45
	.uleb128 0x12
	.string	"VTABLE_REF"
	.sleb128 46
	.uleb128 0x12
	.string	"CONSTRUCTOR"
	.sleb128 47
	.uleb128 0x12
	.string	"COMPOUND_EXPR"
	.sleb128 48
	.uleb128 0x12
	.string	"MODIFY_EXPR"
	.sleb128 49
	.uleb128 0x12
	.string	"INIT_EXPR"
	.sleb128 50
	.uleb128 0x12
	.string	"TARGET_EXPR"
	.sleb128 51
	.uleb128 0x12
	.string	"COND_EXPR"
	.sleb128 52
	.uleb128 0x12
	.string	"BIND_EXPR"
	.sleb128 53
	.uleb128 0x12
	.string	"CALL_EXPR"
	.sleb128 54
	.uleb128 0x12
	.string	"METHOD_CALL_EXPR"
	.sleb128 55
	.uleb128 0x12
	.string	"WITH_CLEANUP_EXPR"
	.sleb128 56
	.uleb128 0x12
	.string	"CLEANUP_POINT_EXPR"
	.sleb128 57
	.uleb128 0x12
	.string	"PLACEHOLDER_EXPR"
	.sleb128 58
	.uleb128 0x12
	.string	"WITH_RECORD_EXPR"
	.sleb128 59
	.uleb128 0x12
	.string	"PLUS_EXPR"
	.sleb128 60
	.uleb128 0x12
	.string	"MINUS_EXPR"
	.sleb128 61
	.uleb128 0x12
	.string	"MULT_EXPR"
	.sleb128 62
	.uleb128 0x12
	.string	"TRUNC_DIV_EXPR"
	.sleb128 63
	.uleb128 0x12
	.string	"CEIL_DIV_EXPR"
	.sleb128 64
	.uleb128 0x12
	.string	"FLOOR_DIV_EXPR"
	.sleb128 65
	.uleb128 0x12
	.string	"ROUND_DIV_EXPR"
	.sleb128 66
	.uleb128 0x12
	.string	"TRUNC_MOD_EXPR"
	.sleb128 67
	.uleb128 0x12
	.string	"CEIL_MOD_EXPR"
	.sleb128 68
	.uleb128 0x12
	.string	"FLOOR_MOD_EXPR"
	.sleb128 69
	.uleb128 0x12
	.string	"ROUND_MOD_EXPR"
	.sleb128 70
	.uleb128 0x12
	.string	"RDIV_EXPR"
	.sleb128 71
	.uleb128 0x12
	.string	"EXACT_DIV_EXPR"
	.sleb128 72
	.uleb128 0x12
	.string	"FIX_TRUNC_EXPR"
	.sleb128 73
	.uleb128 0x12
	.string	"FIX_CEIL_EXPR"
	.sleb128 74
	.uleb128 0x12
	.string	"FIX_FLOOR_EXPR"
	.sleb128 75
	.uleb128 0x12
	.string	"FIX_ROUND_EXPR"
	.sleb128 76
	.uleb128 0x12
	.string	"FLOAT_EXPR"
	.sleb128 77
	.uleb128 0x12
	.string	"EXPON_EXPR"
	.sleb128 78
	.uleb128 0x12
	.string	"NEGATE_EXPR"
	.sleb128 79
	.uleb128 0x12
	.string	"MIN_EXPR"
	.sleb128 80
	.uleb128 0x12
	.string	"MAX_EXPR"
	.sleb128 81
	.uleb128 0x12
	.string	"ABS_EXPR"
	.sleb128 82
	.uleb128 0x12
	.string	"FFS_EXPR"
	.sleb128 83
	.uleb128 0x12
	.string	"LSHIFT_EXPR"
	.sleb128 84
	.uleb128 0x12
	.string	"RSHIFT_EXPR"
	.sleb128 85
	.uleb128 0x12
	.string	"LROTATE_EXPR"
	.sleb128 86
	.uleb128 0x12
	.string	"RROTATE_EXPR"
	.sleb128 87
	.uleb128 0x12
	.string	"BIT_IOR_EXPR"
	.sleb128 88
	.uleb128 0x12
	.string	"BIT_XOR_EXPR"
	.sleb128 89
	.uleb128 0x12
	.string	"BIT_AND_EXPR"
	.sleb128 90
	.uleb128 0x12
	.string	"BIT_ANDTC_EXPR"
	.sleb128 91
	.uleb128 0x12
	.string	"BIT_NOT_EXPR"
	.sleb128 92
	.uleb128 0x12
	.string	"TRUTH_ANDIF_EXPR"
	.sleb128 93
	.uleb128 0x12
	.string	"TRUTH_ORIF_EXPR"
	.sleb128 94
	.uleb128 0x12
	.string	"TRUTH_AND_EXPR"
	.sleb128 95
	.uleb128 0x12
	.string	"TRUTH_OR_EXPR"
	.sleb128 96
	.uleb128 0x12
	.string	"TRUTH_XOR_EXPR"
	.sleb128 97
	.uleb128 0x12
	.string	"TRUTH_NOT_EXPR"
	.sleb128 98
	.uleb128 0x12
	.string	"LT_EXPR"
	.sleb128 99
	.uleb128 0x12
	.string	"LE_EXPR"
	.sleb128 100
	.uleb128 0x12
	.string	"GT_EXPR"
	.sleb128 101
	.uleb128 0x12
	.string	"GE_EXPR"
	.sleb128 102
	.uleb128 0x12
	.string	"EQ_EXPR"
	.sleb128 103
	.uleb128 0x12
	.string	"NE_EXPR"
	.sleb128 104
	.uleb128 0x12
	.string	"UNORDERED_EXPR"
	.sleb128 105
	.uleb128 0x12
	.string	"ORDERED_EXPR"
	.sleb128 106
	.uleb128 0x12
	.string	"UNLT_EXPR"
	.sleb128 107
	.uleb128 0x12
	.string	"UNLE_EXPR"
	.sleb128 108
	.uleb128 0x12
	.string	"UNGT_EXPR"
	.sleb128 109
	.uleb128 0x12
	.string	"UNGE_EXPR"
	.sleb128 110
	.uleb128 0x12
	.string	"UNEQ_EXPR"
	.sleb128 111
	.uleb128 0x12
	.string	"IN_EXPR"
	.sleb128 112
	.uleb128 0x12
	.string	"SET_LE_EXPR"
	.sleb128 113
	.uleb128 0x12
	.string	"CARD_EXPR"
	.sleb128 114
	.uleb128 0x12
	.string	"RANGE_EXPR"
	.sleb128 115
	.uleb128 0x12
	.string	"CONVERT_EXPR"
	.sleb128 116
	.uleb128 0x12
	.string	"NOP_EXPR"
	.sleb128 117
	.uleb128 0x12
	.string	"NON_LVALUE_EXPR"
	.sleb128 118
	.uleb128 0x12
	.string	"VIEW_CONVERT_EXPR"
	.sleb128 119
	.uleb128 0x12
	.string	"SAVE_EXPR"
	.sleb128 120
	.uleb128 0x12
	.string	"UNSAVE_EXPR"
	.sleb128 121
	.uleb128 0x12
	.string	"RTL_EXPR"
	.sleb128 122
	.uleb128 0x12
	.string	"ADDR_EXPR"
	.sleb128 123
	.uleb128 0x12
	.string	"REFERENCE_EXPR"
	.sleb128 124
	.uleb128 0x12
	.string	"ENTRY_VALUE_EXPR"
	.sleb128 125
	.uleb128 0x12
	.string	"FDESC_EXPR"
	.sleb128 126
	.uleb128 0x12
	.string	"COMPLEX_EXPR"
	.sleb128 127
	.uleb128 0x12
	.string	"CONJ_EXPR"
	.sleb128 128
	.uleb128 0x12
	.string	"REALPART_EXPR"
	.sleb128 129
	.uleb128 0x12
	.string	"IMAGPART_EXPR"
	.sleb128 130
	.uleb128 0x12
	.string	"PREDECREMENT_EXPR"
	.sleb128 131
	.uleb128 0x12
	.string	"PREINCREMENT_EXPR"
	.sleb128 132
	.uleb128 0x12
	.string	"POSTDECREMENT_EXPR"
	.sleb128 133
	.uleb128 0x12
	.string	"POSTINCREMENT_EXPR"
	.sleb128 134
	.uleb128 0x12
	.string	"VA_ARG_EXPR"
	.sleb128 135
	.uleb128 0x12
	.string	"TRY_CATCH_EXPR"
	.sleb128 136
	.uleb128 0x12
	.string	"TRY_FINALLY_EXPR"
	.sleb128 137
	.uleb128 0x12
	.string	"GOTO_SUBROUTINE_EXPR"
	.sleb128 138
	.uleb128 0x12
	.string	"POPDHC_EXPR"
	.sleb128 139
	.uleb128 0x12
	.string	"POPDCC_EXPR"
	.sleb128 140
	.uleb128 0x12
	.string	"LABEL_EXPR"
	.sleb128 141
	.uleb128 0x12
	.string	"GOTO_EXPR"
	.sleb128 142
	.uleb128 0x12
	.string	"RETURN_EXPR"
	.sleb128 143
	.uleb128 0x12
	.string	"EXIT_EXPR"
	.sleb128 144
	.uleb128 0x12
	.string	"LOOP_EXPR"
	.sleb128 145
	.uleb128 0x12
	.string	"LABELED_BLOCK_EXPR"
	.sleb128 146
	.uleb128 0x12
	.string	"EXIT_BLOCK_EXPR"
	.sleb128 147
	.uleb128 0x12
	.string	"EXPR_WITH_FILE_LOCATION"
	.sleb128 148
	.uleb128 0x12
	.string	"SWITCH_EXPR"
	.sleb128 149
	.uleb128 0x12
	.string	"EXC_PTR_EXPR"
	.sleb128 150
	.uleb128 0x12
	.string	"LAST_AND_UNUSED_TREE_CODE"
	.sleb128 151
	.byte	0x0
	.uleb128 0x2
	.string	"LABEL_IDX"
	.byte	0x3
	.byte	0x2f
	.long	0x2ac
	.uleb128 0x13
	.long	0xfb7
	.string	"mongoose_gcc_DST_IDX"
	.byte	0x8
	.byte	0x3
	.byte	0x30
	.uleb128 0x14
	.string	"block"
	.byte	0x3
	.byte	0x30
	.long	0x2ac
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x14
	.string	"offset"
	.byte	0x3
	.byte	0x30
	.long	0x2ac
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"ST"
	.byte	0x3
	.byte	0x34
	.long	0xfc1
	.uleb128 0x4
	.string	"st"
	.byte	0x1
	.uleb128 0x15
	.long	0x1016
	.long	.LASF5
	.byte	0x4
	.byte	0x3
	.byte	0x58
	.uleb128 0x12
	.string	"NOT_BUILT_IN"
	.sleb128 0
	.uleb128 0x12
	.string	"BUILT_IN_FRONTEND"
	.sleb128 1
	.uleb128 0x12
	.string	"BUILT_IN_MD"
	.sleb128 2
	.uleb128 0x12
	.string	"BUILT_IN_NORMAL"
	.sleb128 3
	.byte	0x0
	.uleb128 0x11
	.long	0x2cc0
	.string	"built_in_function"
	.byte	0x4
	.byte	0x3
	.byte	0x67
	.uleb128 0x12
	.string	"BUILT_IN_ALLOCA"
	.sleb128 0
	.uleb128 0x12
	.string	"BUILT_IN_ABS"
	.sleb128 1
	.uleb128 0x12
	.string	"BUILT_IN_LABS"
	.sleb128 2
	.uleb128 0x12
	.string	"BUILT_IN_FABS"
	.sleb128 3
	.uleb128 0x12
	.string	"BUILT_IN_FABSF"
	.sleb128 4
	.uleb128 0x12
	.string	"BUILT_IN_FABSL"
	.sleb128 5
	.uleb128 0x12
	.string	"BUILT_IN_LLABS"
	.sleb128 6
	.uleb128 0x12
	.string	"BUILT_IN_IMAXABS"
	.sleb128 7
	.uleb128 0x12
	.string	"BUILT_IN_CONJ"
	.sleb128 8
	.uleb128 0x12
	.string	"BUILT_IN_CONJF"
	.sleb128 9
	.uleb128 0x12
	.string	"BUILT_IN_CONJL"
	.sleb128 10
	.uleb128 0x12
	.string	"BUILT_IN_CREAL"
	.sleb128 11
	.uleb128 0x12
	.string	"BUILT_IN_CREALF"
	.sleb128 12
	.uleb128 0x12
	.string	"BUILT_IN_CREALL"
	.sleb128 13
	.uleb128 0x12
	.string	"BUILT_IN_CIMAG"
	.sleb128 14
	.uleb128 0x12
	.string	"BUILT_IN_CIMAGF"
	.sleb128 15
	.uleb128 0x12
	.string	"BUILT_IN_CIMAGL"
	.sleb128 16
	.uleb128 0x12
	.string	"BUILT_IN_DIV"
	.sleb128 17
	.uleb128 0x12
	.string	"BUILT_IN_LDIV"
	.sleb128 18
	.uleb128 0x12
	.string	"BUILT_IN_FFLOOR"
	.sleb128 19
	.uleb128 0x12
	.string	"BUILT_IN_FCEIL"
	.sleb128 20
	.uleb128 0x12
	.string	"BUILT_IN_FMOD"
	.sleb128 21
	.uleb128 0x12
	.string	"BUILT_IN_FREM"
	.sleb128 22
	.uleb128 0x12
	.string	"BUILT_IN_BZERO"
	.sleb128 23
	.uleb128 0x12
	.string	"BUILT_IN_BCOPY"
	.sleb128 24
	.uleb128 0x12
	.string	"BUILT_IN_BCMP"
	.sleb128 25
	.uleb128 0x12
	.string	"BUILT_IN_FFS"
	.sleb128 26
	.uleb128 0x12
	.string	"BUILT_IN_INDEX"
	.sleb128 27
	.uleb128 0x12
	.string	"BUILT_IN_RINDEX"
	.sleb128 28
	.uleb128 0x12
	.string	"BUILT_IN_MEMCPY"
	.sleb128 29
	.uleb128 0x12
	.string	"BUILT_IN_MEMMOVE"
	.sleb128 30
	.uleb128 0x12
	.string	"BUILT_IN_MEMCMP"
	.sleb128 31
	.uleb128 0x12
	.string	"BUILT_IN_MEMSET"
	.sleb128 32
	.uleb128 0x12
	.string	"BUILT_IN_MEMPCPY"
	.sleb128 33
	.uleb128 0x12
	.string	"BUILT_IN_STRCAT"
	.sleb128 34
	.uleb128 0x12
	.string	"BUILT_IN_STRNCAT"
	.sleb128 35
	.uleb128 0x12
	.string	"BUILT_IN_STPCPY"
	.sleb128 36
	.uleb128 0x12
	.string	"BUILT_IN_STRCPY"
	.sleb128 37
	.uleb128 0x12
	.string	"BUILT_IN_STRNCPY"
	.sleb128 38
	.uleb128 0x12
	.string	"BUILT_IN_STRCMP"
	.sleb128 39
	.uleb128 0x12
	.string	"BUILT_IN_STRNCMP"
	.sleb128 40
	.uleb128 0x12
	.string	"BUILT_IN_STRLEN"
	.sleb128 41
	.uleb128 0x12
	.string	"BUILT_IN_STRSTR"
	.sleb128 42
	.uleb128 0x12
	.string	"BUILT_IN_STRPBRK"
	.sleb128 43
	.uleb128 0x12
	.string	"BUILT_IN_STRSPN"
	.sleb128 44
	.uleb128 0x12
	.string	"BUILT_IN_STRCSPN"
	.sleb128 45
	.uleb128 0x12
	.string	"BUILT_IN_STRCHR"
	.sleb128 46
	.uleb128 0x12
	.string	"BUILT_IN_STRRCHR"
	.sleb128 47
	.uleb128 0x12
	.string	"BUILT_IN_CVT64_LOW"
	.sleb128 48
	.uleb128 0x12
	.string	"BUILT_IN_CVT64_HIGH"
	.sleb128 49
	.uleb128 0x12
	.string	"BUILT_IN_CVT32"
	.sleb128 50
	.uleb128 0x12
	.string	"BUILT_IN_PERIPHERAL_RW_BEGIN"
	.sleb128 51
	.uleb128 0x12
	.string	"BUILT_IN_PERIPHERAL_RW_END"
	.sleb128 52
	.uleb128 0x12
	.string	"BUILT_IN_VBUF_OFFSET"
	.sleb128 53
	.uleb128 0x12
	.string	"BUILT_IN_SBUF_OFFSET"
	.sleb128 54
	.uleb128 0x12
	.string	"BUILD_IN_MUL_SHIFT_HI"
	.sleb128 55
	.uleb128 0x12
	.string	"BUILD_IN_MUL_SHIFT"
	.sleb128 56
	.uleb128 0x12
	.string	"BUILD_IN_C3_LEAD"
	.sleb128 57
	.uleb128 0x12
	.string	"BUILD_IN_C3_MAC"
	.sleb128 58
	.uleb128 0x12
	.string	"BUILD_IN_C3_MACN"
	.sleb128 59
	.uleb128 0x12
	.string	"BUILD_IN_C3_ROUND"
	.sleb128 60
	.uleb128 0x12
	.string	"BUILD_IN_C3_SAADDS"
	.sleb128 61
	.uleb128 0x12
	.string	"BUILD_IN_C3_SASUBS"
	.sleb128 62
	.uleb128 0x12
	.string	"BUILD_IN_C3_MULA"
	.sleb128 63
	.uleb128 0x12
	.string	"BUILD_IN_C3_INIT_ACC"
	.sleb128 64
	.uleb128 0x12
	.string	"BUILD_IN_C3_SAVE_ACC"
	.sleb128 65
	.uleb128 0x12
	.string	"BUILD_IN_MPY_32_16"
	.sleb128 66
	.uleb128 0x12
	.string	"BUILD_IN_C3_MACD"
	.sleb128 67
	.uleb128 0x12
	.string	"BUILD_IN_C3_MULAD"
	.sleb128 68
	.uleb128 0x12
	.string	"BUILD_IN_C3_SAADDSH"
	.sleb128 69
	.uleb128 0x12
	.string	"BUILD_IN_C3_SASUBSH"
	.sleb128 70
	.uleb128 0x12
	.string	"BUILD_IN_C3_MVFS"
	.sleb128 71
	.uleb128 0x12
	.string	"BUILD_IN_C3_INIT_ADDR"
	.sleb128 72
	.uleb128 0x12
	.string	"BUILD_IN_C3_SAVE_ADDR"
	.sleb128 73
	.uleb128 0x12
	.string	"BUILD_IN_C3_MAC_A"
	.sleb128 74
	.uleb128 0x12
	.string	"BUILD_IN_C3_MACN_A"
	.sleb128 75
	.uleb128 0x12
	.string	"BUILD_IN_C3_DMAC_A"
	.sleb128 76
	.uleb128 0x12
	.string	"BUILD_IN_C3_DMACN_A"
	.sleb128 77
	.uleb128 0x12
	.string	"BUILD_IN_C3_INIT_DACC"
	.sleb128 78
	.uleb128 0x12
	.string	"BUILD_IN_C3_SAVE_DACC"
	.sleb128 79
	.uleb128 0x12
	.string	"BUILD_IN_C3_SAADDH_A"
	.sleb128 80
	.uleb128 0x12
	.string	"BUILD_IN_C3_SASUBH_A"
	.sleb128 81
	.uleb128 0x12
	.string	"BUILD_IN_C3_SAMULSH"
	.sleb128 82
	.uleb128 0x12
	.string	"BUILD_IN_C3_MULA_A"
	.sleb128 83
	.uleb128 0x12
	.string	"BUILD_IN_C3_SAMULH_A"
	.sleb128 84
	.uleb128 0x12
	.string	"BUILD_IN_C3_PTR"
	.sleb128 85
	.uleb128 0x12
	.string	"BUILD_IN_C3_MAC_AR"
	.sleb128 86
	.uleb128 0x12
	.string	"BUILD_IN_C3_MACN_AR"
	.sleb128 87
	.uleb128 0x12
	.string	"BUILD_IN_C3_MULA_AR"
	.sleb128 88
	.uleb128 0x12
	.string	"BUILD_IN_C3_INIT_PTR"
	.sleb128 89
	.uleb128 0x12
	.string	"BUILD_IN_C3_TRBACK"
	.sleb128 90
	.uleb128 0x12
	.string	"BUILD_IN_C3_VITERBI"
	.sleb128 91
	.uleb128 0x12
	.string	"BUILD_IN_C3_DMULT"
	.sleb128 92
	.uleb128 0x12
	.string	"BUILD_IN_C3_DMULT_A"
	.sleb128 93
	.uleb128 0x12
	.string	"BUILD_IN_C3_DMULTN"
	.sleb128 94
	.uleb128 0x12
	.string	"BUILD_IN_C3_DMULTN_A"
	.sleb128 95
	.uleb128 0x12
	.string	"BUILD_IN_SET_CIRCBUF"
	.sleb128 96
	.uleb128 0x12
	.string	"BUILD_IN_RESET_CIRCBUF"
	.sleb128 97
	.uleb128 0x12
	.string	"BUILD_IN_C3_DADD"
	.sleb128 98
	.uleb128 0x12
	.string	"BUILD_IN_C3_DSUB"
	.sleb128 99
	.uleb128 0x12
	.string	"BUILD_IN_C3_FFT"
	.sleb128 100
	.uleb128 0x12
	.string	"BUILD_IN_C3_FFTLD"
	.sleb128 101
	.uleb128 0x12
	.string	"BUILD_IN_C3_FFTST"
	.sleb128 102
	.uleb128 0x12
	.string	"BUILD_IN_DEPOSIT"
	.sleb128 103
	.uleb128 0x12
	.string	"BUILD_IN_EXTRACT"
	.sleb128 104
	.uleb128 0x12
	.string	"BUILD_IN_C3_BITR"
	.sleb128 105
	.uleb128 0x12
	.string	"BUILD_IN_C3_DMAC"
	.sleb128 106
	.uleb128 0x12
	.string	"BUILD_IN_C3_DMACN"
	.sleb128 107
	.uleb128 0x12
	.string	"BUILD_IN_C3_LOAD"
	.sleb128 108
	.uleb128 0x12
	.string	"BUILD_IN_C3_STORE"
	.sleb128 109
	.uleb128 0x12
	.string	"BUILD_IN_C3_REVB"
	.sleb128 110
	.uleb128 0x12
	.string	"BUILD_IN_C3_DSHL_I"
	.sleb128 111
	.uleb128 0x12
	.string	"BUILD_IN_C3_DSHR_I"
	.sleb128 112
	.uleb128 0x12
	.string	"BUILD_IN_C3_MAC_I"
	.sleb128 113
	.uleb128 0x12
	.string	"BUILD_IN_C3_MACN_I"
	.sleb128 114
	.uleb128 0x12
	.string	"BUILD_IN_C3_MULA_I"
	.sleb128 115
	.uleb128 0x12
	.string	"BUILD_IN_C3_SAADD_A"
	.sleb128 116
	.uleb128 0x12
	.string	"BUILD_IN_C3_SADDHA"
	.sleb128 117
	.uleb128 0x12
	.string	"BUILD_IN_C3_SAADDHA_A"
	.sleb128 118
	.uleb128 0x12
	.string	"BUILD_IN_C3_SASUB_A"
	.sleb128 119
	.uleb128 0x12
	.string	"BUILD_IN_COPY_ADDR"
	.sleb128 120
	.uleb128 0x12
	.string	"BUILD_IN_SET_ADDR"
	.sleb128 121
	.uleb128 0x12
	.string	"BUILT_IN_C2_MVGR_G2R"
	.sleb128 122
	.uleb128 0x12
	.string	"BUILT_IN_C2_MVGR_R2G"
	.sleb128 123
	.uleb128 0x12
	.string	"BUILT_IN_C2_MVGR_G2S"
	.sleb128 124
	.uleb128 0x12
	.string	"BUILT_IN_C2_MVGR_S2G"
	.sleb128 125
	.uleb128 0x12
	.string	"BUILT_IN_C2_MVGC_C2G"
	.sleb128 126
	.uleb128 0x12
	.string	"BUILT_IN_C2_MVGC_G2C"
	.sleb128 127
	.uleb128 0x12
	.string	"BUILT_IN_C2_LD_V"
	.sleb128 128
	.uleb128 0x12
	.string	"BUILT_IN_C2_LD_G"
	.sleb128 129
	.uleb128 0x12
	.string	"BUILT_IN_C2_LD_S"
	.sleb128 130
	.uleb128 0x12
	.string	"BUILT_IN_C2_ST_V"
	.sleb128 131
	.uleb128 0x12
	.string	"BUILT_IN_C2_ST_G"
	.sleb128 132
	.uleb128 0x12
	.string	"BUILT_IN_C2_LD_G_IMM"
	.sleb128 133
	.uleb128 0x12
	.string	"BUILT_IN_C2_LD_C_IMM"
	.sleb128 134
	.uleb128 0x12
	.string	"BUILT_IN_C2_LD_V_IMM"
	.sleb128 135
	.uleb128 0x12
	.string	"BUILT_IN_C2_ST_V_IMM"
	.sleb128 136
	.uleb128 0x12
	.string	"BUILT_IN_C2_ST_C_IMM"
	.sleb128 137
	.uleb128 0x12
	.string	"BUILT_IN_C2_ST_G_IMM"
	.sleb128 138
	.uleb128 0x12
	.string	"BUILT_IN_C2_VADDS"
	.sleb128 139
	.uleb128 0x12
	.string	"BUILT_IN_C2_VSUBS"
	.sleb128 140
	.uleb128 0x12
	.string	"BUILT_IN_C2_VMUL"
	.sleb128 141
	.uleb128 0x12
	.string	"BUILT_IN_C2_VNEG"
	.sleb128 142
	.uleb128 0x12
	.string	"BUILT_IN_C2_VSHFT"
	.sleb128 143
	.uleb128 0x12
	.string	"BUILT_IN_C2_VCLP"
	.sleb128 144
	.uleb128 0x12
	.string	"BUILT_IN_C2_VCLG"
	.sleb128 145
	.uleb128 0x12
	.string	"BUILT_IN_C2_VCMOV"
	.sleb128 146
	.uleb128 0x12
	.string	"BUILT_IN_C2_LCZERO"
	.sleb128 147
	.uleb128 0x12
	.string	"BUILT_IN_C2_VRND"
	.sleb128 148
	.uleb128 0x12
	.string	"BUILT_IN_C2_VSPAS"
	.sleb128 149
	.uleb128 0x12
	.string	"BUILT_IN_C2_VSPEL"
	.sleb128 150
	.uleb128 0x12
	.string	"BUILT_IN_C2_VSPEL_MAC"
	.sleb128 151
	.uleb128 0x12
	.string	"BUILT_IN_C2_MMUL"
	.sleb128 152
	.uleb128 0x12
	.string	"BUILT_IN_C2_VMOV"
	.sleb128 153
	.uleb128 0x12
	.string	"BUILT_IN_C2_VCOPY"
	.sleb128 154
	.uleb128 0x12
	.string	"BUILT_IN_C2_VCMPR"
	.sleb128 155
	.uleb128 0x12
	.string	"BUILT_IN_C2_SAD"
	.sleb128 156
	.uleb128 0x12
	.string	"BUILT_IN_C2_SAD_TMP"
	.sleb128 157
	.uleb128 0x12
	.string	"BUILT_IN_C2_SATD"
	.sleb128 158
	.uleb128 0x12
	.string	"BUILT_IN_C2_INTRA"
	.sleb128 159
	.uleb128 0x12
	.string	"BUILT_IN_C2_MVSEL"
	.sleb128 160
	.uleb128 0x12
	.string	"BUILT_IN_C2_BCST"
	.sleb128 161
	.uleb128 0x12
	.string	"BUILT_IN_C2_VLCS_R"
	.sleb128 162
	.uleb128 0x12
	.string	"BUILT_IN_C2_VLCS"
	.sleb128 163
	.uleb128 0x12
	.string	"BUILT_IN_C2_ADDS"
	.sleb128 164
	.uleb128 0x12
	.string	"BUILT_IN_C2_ADDS_R"
	.sleb128 165
	.uleb128 0x12
	.string	"BUILT_IN_C2_SUBS"
	.sleb128 166
	.uleb128 0x12
	.string	"BUILT_IN_C2_SUBS_R"
	.sleb128 167
	.uleb128 0x12
	.string	"BUILT_IN_C2_MULS"
	.sleb128 168
	.uleb128 0x12
	.string	"BUILT_IN_C2_MADS"
	.sleb128 169
	.uleb128 0x12
	.string	"BUILT_IN_C2_SMADS"
	.sleb128 170
	.uleb128 0x12
	.string	"BUILT_IN_C2_CMOV"
	.sleb128 171
	.uleb128 0x12
	.string	"BUILT_IN_C2_MOV"
	.sleb128 172
	.uleb128 0x12
	.string	"BUILT_IN_C2_MOV_R"
	.sleb128 173
	.uleb128 0x12
	.string	"BUILT_IN_C2_CLP"
	.sleb128 174
	.uleb128 0x12
	.string	"BUILT_IN_C2_CHKRNG"
	.sleb128 175
	.uleb128 0x12
	.string	"BUILT_IN_C2_SCOND"
	.sleb128 176
	.uleb128 0x12
	.string	"BUILT_IN_C2_SCOND_R_WB"
	.sleb128 177
	.uleb128 0x12
	.string	"BUILT_IN_C2_SCOND_R"
	.sleb128 178
	.uleb128 0x12
	.string	"BUILT_IN_C2_SCOND_BR"
	.sleb128 179
	.uleb128 0x12
	.string	"BUILT_IN_C2_SCOND_BR_R"
	.sleb128 180
	.uleb128 0x12
	.string	"BUILT_IN_C2_BOP"
	.sleb128 181
	.uleb128 0x12
	.string	"BUILT_IN_C2_BDEP"
	.sleb128 182
	.uleb128 0x12
	.string	"BUILT_IN_C2_WRAP"
	.sleb128 183
	.uleb128 0x12
	.string	"BUILT_IN_C2_BXTR"
	.sleb128 184
	.uleb128 0x12
	.string	"BUILT_IN_C2_SUM4"
	.sleb128 185
	.uleb128 0x12
	.string	"BUILT_IN_C2_SUM3_SADDR"
	.sleb128 186
	.uleb128 0x12
	.string	"BUILT_IN_C2_SUM4_R"
	.sleb128 187
	.uleb128 0x12
	.string	"BUILT_IN_C2_MED"
	.sleb128 188
	.uleb128 0x12
	.string	"BUILT_IN_C2_GSUMS"
	.sleb128 189
	.uleb128 0x12
	.string	"BUILT_IN_C2_CLZOB"
	.sleb128 190
	.uleb128 0x12
	.string	"BUILT_IN_C2_THCTRL"
	.sleb128 191
	.uleb128 0x12
	.string	"BUILT_IN_C2_BR_F"
	.sleb128 192
	.uleb128 0x12
	.string	"BUILT_IN_C2_BR_T"
	.sleb128 193
	.uleb128 0x12
	.string	"BUILT_IN_C2_LD_V2G"
	.sleb128 194
	.uleb128 0x12
	.string	"BUILT_IN_C2_LD_V2G_IMM"
	.sleb128 195
	.uleb128 0x12
	.string	"BUILT_IN_C2_ST_G2V"
	.sleb128 196
	.uleb128 0x12
	.string	"BUILT_IN_C2_ST_G2V_IMM"
	.sleb128 197
	.uleb128 0x12
	.string	"BUILT_IN_C2_MVGR_R2S"
	.sleb128 198
	.uleb128 0x12
	.string	"BUILT_IN_C2_FORK"
	.sleb128 199
	.uleb128 0x12
	.string	"BUILT_IN_C2_JOINT"
	.sleb128 200
	.uleb128 0x12
	.string	"BUILT_IN_C2_THREAD_MAJOR"
	.sleb128 201
	.uleb128 0x12
	.string	"BUILT_IN_C2_THREAD_MINOR"
	.sleb128 202
	.uleb128 0x12
	.string	"BUILT_IN_FLOOR"
	.sleb128 203
	.uleb128 0x12
	.string	"BUILT_IN_FLOORF"
	.sleb128 204
	.uleb128 0x12
	.string	"BUILT_IN_FLOORL"
	.sleb128 205
	.uleb128 0x12
	.string	"BUILT_IN_POW"
	.sleb128 206
	.uleb128 0x12
	.string	"BUILT_IN_TAN"
	.sleb128 207
	.uleb128 0x12
	.string	"BUILT_IN_ACOS"
	.sleb128 208
	.uleb128 0x12
	.string	"BUILT_IN_ACOSF"
	.sleb128 209
	.uleb128 0x12
	.string	"BUILT_IN_ACOSH"
	.sleb128 210
	.uleb128 0x12
	.string	"BUILT_IN_ACOSHF"
	.sleb128 211
	.uleb128 0x12
	.string	"BUILT_IN_ACOSHL"
	.sleb128 212
	.uleb128 0x12
	.string	"BUILT_IN_ACOSL"
	.sleb128 213
	.uleb128 0x12
	.string	"BUILT_IN_ASIN"
	.sleb128 214
	.uleb128 0x12
	.string	"BUILT_IN_ASINF"
	.sleb128 215
	.uleb128 0x12
	.string	"BUILT_IN_ASINH"
	.sleb128 216
	.uleb128 0x12
	.string	"BUILT_IN_ASINHF"
	.sleb128 217
	.uleb128 0x12
	.string	"BUILT_IN_ASINHL"
	.sleb128 218
	.uleb128 0x12
	.string	"BUILT_IN_ASINL"
	.sleb128 219
	.uleb128 0x12
	.string	"BUILT_IN_ATAN"
	.sleb128 220
	.uleb128 0x12
	.string	"BUILT_IN_ATAN2"
	.sleb128 221
	.uleb128 0x12
	.string	"BUILT_IN_ATAN2F"
	.sleb128 222
	.uleb128 0x12
	.string	"BUILT_IN_ATAN2L"
	.sleb128 223
	.uleb128 0x12
	.string	"BUILT_IN_ATANF"
	.sleb128 224
	.uleb128 0x12
	.string	"BUILT_IN_ATANH"
	.sleb128 225
	.uleb128 0x12
	.string	"BUILT_IN_ATANHF"
	.sleb128 226
	.uleb128 0x12
	.string	"BUILT_IN_ATANHL"
	.sleb128 227
	.uleb128 0x12
	.string	"BUILT_IN_ATANL"
	.sleb128 228
	.uleb128 0x12
	.string	"BUILT_IN_CEIL"
	.sleb128 229
	.uleb128 0x12
	.string	"BUILT_IN_CEILF"
	.sleb128 230
	.uleb128 0x12
	.string	"BUILT_IN_CEILL"
	.sleb128 231
	.uleb128 0x12
	.string	"BUILT_IN_FMODF"
	.sleb128 232
	.uleb128 0x12
	.string	"BUILT_IN_FMODL"
	.sleb128 233
	.uleb128 0x12
	.string	"BUILT_IN_FREXP"
	.sleb128 234
	.uleb128 0x12
	.string	"BUILT_IN_FREXPF"
	.sleb128 235
	.uleb128 0x12
	.string	"BUILT_IN_FREXPL"
	.sleb128 236
	.uleb128 0x12
	.string	"BUILT_IN_LDEXP"
	.sleb128 237
	.uleb128 0x12
	.string	"BUILT_IN_LDEXPF"
	.sleb128 238
	.uleb128 0x12
	.string	"BUILT_IN_LDEXPL"
	.sleb128 239
	.uleb128 0x12
	.string	"BUILT_IN_LOG10"
	.sleb128 240
	.uleb128 0x12
	.string	"BUILT_IN_LOG10F"
	.sleb128 241
	.uleb128 0x12
	.string	"BUILT_IN_LOG10L"
	.sleb128 242
	.uleb128 0x12
	.string	"BUILT_IN_MODF"
	.sleb128 243
	.uleb128 0x12
	.string	"BUILT_IN_MODFF"
	.sleb128 244
	.uleb128 0x12
	.string	"BUILT_IN_MODFL"
	.sleb128 245
	.uleb128 0x12
	.string	"BUILT_IN_POWF"
	.sleb128 246
	.uleb128 0x12
	.string	"BUILT_IN_POWL"
	.sleb128 247
	.uleb128 0x12
	.string	"BUILT_IN_SINH"
	.sleb128 248
	.uleb128 0x12
	.string	"BUILT_IN_SINHF"
	.sleb128 249
	.uleb128 0x12
	.string	"BUILT_IN_SINHL"
	.sleb128 250
	.uleb128 0x12
	.string	"BUILT_IN_TANF"
	.sleb128 251
	.uleb128 0x12
	.string	"BUILT_IN_TANH"
	.sleb128 252
	.uleb128 0x12
	.string	"BUILT_IN_TANHF"
	.sleb128 253
	.uleb128 0x12
	.string	"BUILT_IN_TANHL"
	.sleb128 254
	.uleb128 0x12
	.string	"BUILT_IN_TANL"
	.sleb128 255
	.uleb128 0x12
	.string	"BUILT_IN_COSH"
	.sleb128 256
	.uleb128 0x12
	.string	"BUILT_IN_COSHF"
	.sleb128 257
	.uleb128 0x12
	.string	"BUILT_IN_COSHL"
	.sleb128 258
	.uleb128 0x12
	.string	"BUILT_IN_POPCOUNT"
	.sleb128 259
	.uleb128 0x12
	.string	"BUILT_IN_POPCOUNTL"
	.sleb128 260
	.uleb128 0x12
	.string	"BUILT_IN_POPCOUNTLL"
	.sleb128 261
	.uleb128 0x12
	.string	"BUILT_IN_CTZ"
	.sleb128 262
	.uleb128 0x12
	.string	"BUILT_IN_CTZL"
	.sleb128 263
	.uleb128 0x12
	.string	"BUILT_IN_CTZLL"
	.sleb128 264
	.uleb128 0x12
	.string	"BUILT_IN_SQRT"
	.sleb128 265
	.uleb128 0x12
	.string	"BUILT_IN_SIN"
	.sleb128 266
	.uleb128 0x12
	.string	"BUILT_IN_COS"
	.sleb128 267
	.uleb128 0x12
	.string	"BUILT_IN_EXP"
	.sleb128 268
	.uleb128 0x12
	.string	"BUILT_IN_LOG"
	.sleb128 269
	.uleb128 0x12
	.string	"BUILT_IN_SQRTF"
	.sleb128 270
	.uleb128 0x12
	.string	"BUILT_IN_SINF"
	.sleb128 271
	.uleb128 0x12
	.string	"BUILT_IN_COSF"
	.sleb128 272
	.uleb128 0x12
	.string	"BUILT_IN_EXPF"
	.sleb128 273
	.uleb128 0x12
	.string	"BUILT_IN_LOGF"
	.sleb128 274
	.uleb128 0x12
	.string	"BUILT_IN_SQRTL"
	.sleb128 275
	.uleb128 0x12
	.string	"BUILT_IN_SINL"
	.sleb128 276
	.uleb128 0x12
	.string	"BUILT_IN_COSL"
	.sleb128 277
	.uleb128 0x12
	.string	"BUILT_IN_EXPL"
	.sleb128 278
	.uleb128 0x12
	.string	"BUILT_IN_LOGL"
	.sleb128 279
	.uleb128 0x12
	.string	"BUILT_IN_INF"
	.sleb128 280
	.uleb128 0x12
	.string	"BUILT_IN_INFF"
	.sleb128 281
	.uleb128 0x12
	.string	"BUILT_IN_INFL"
	.sleb128 282
	.uleb128 0x12
	.string	"BUILT_IN_HUGE_VAL"
	.sleb128 283
	.uleb128 0x12
	.string	"BUILT_IN_HUGE_VALF"
	.sleb128 284
	.uleb128 0x12
	.string	"BUILT_IN_HUGE_VALL"
	.sleb128 285
	.uleb128 0x12
	.string	"BUILT_IN_NAN"
	.sleb128 286
	.uleb128 0x12
	.string	"BUILT_IN_NANF"
	.sleb128 287
	.uleb128 0x12
	.string	"BUILT_IN_NANL"
	.sleb128 288
	.uleb128 0x12
	.string	"BUILT_IN_NANS"
	.sleb128 289
	.uleb128 0x12
	.string	"BUILT_IN_NANSF"
	.sleb128 290
	.uleb128 0x12
	.string	"BUILT_IN_NANSL"
	.sleb128 291
	.uleb128 0x12
	.string	"BUILT_IN_SAVEREGS"
	.sleb128 292
	.uleb128 0x12
	.string	"BUILT_IN_CLASSIFY_TYPE"
	.sleb128 293
	.uleb128 0x12
	.string	"BUILT_IN_NEXT_ARG"
	.sleb128 294
	.uleb128 0x12
	.string	"BUILT_IN_ARGS_INFO"
	.sleb128 295
	.uleb128 0x12
	.string	"BUILT_IN_CONSTANT_P"
	.sleb128 296
	.uleb128 0x12
	.string	"BUILT_IN_FRAME_ADDRESS"
	.sleb128 297
	.uleb128 0x12
	.string	"BUILT_IN_RETURN_ADDRESS"
	.sleb128 298
	.uleb128 0x12
	.string	"BUILT_IN_AGGREGATE_INCOMING_ADDRESS"
	.sleb128 299
	.uleb128 0x12
	.string	"BUILT_IN_APPLY_ARGS"
	.sleb128 300
	.uleb128 0x12
	.string	"BUILT_IN_APPLY"
	.sleb128 301
	.uleb128 0x12
	.string	"BUILT_IN_RETURN"
	.sleb128 302
	.uleb128 0x12
	.string	"BUILT_IN_SETJMP"
	.sleb128 303
	.uleb128 0x12
	.string	"BUILT_IN_LONGJMP"
	.sleb128 304
	.uleb128 0x12
	.string	"BUILT_IN_TRAP"
	.sleb128 305
	.uleb128 0x12
	.string	"BUILT_IN_PREFETCH"
	.sleb128 306
	.uleb128 0x12
	.string	"BUILT_IN_PRINTF"
	.sleb128 307
	.uleb128 0x12
	.string	"BUILT_IN_PUTCHAR"
	.sleb128 308
	.uleb128 0x12
	.string	"BUILT_IN_PUTS"
	.sleb128 309
	.uleb128 0x12
	.string	"BUILT_IN_SNPRINTF"
	.sleb128 310
	.uleb128 0x12
	.string	"BUILT_IN_SPRINTF"
	.sleb128 311
	.uleb128 0x12
	.string	"BUILT_IN_SCANF"
	.sleb128 312
	.uleb128 0x12
	.string	"BUILT_IN_SSCANF"
	.sleb128 313
	.uleb128 0x12
	.string	"BUILT_IN_VPRINTF"
	.sleb128 314
	.uleb128 0x12
	.string	"BUILT_IN_VSCANF"
	.sleb128 315
	.uleb128 0x12
	.string	"BUILT_IN_VSSCANF"
	.sleb128 316
	.uleb128 0x12
	.string	"BUILT_IN_VSNPRINTF"
	.sleb128 317
	.uleb128 0x12
	.string	"BUILT_IN_VSPRINTF"
	.sleb128 318
	.uleb128 0x12
	.string	"BUILT_IN_FPUTC"
	.sleb128 319
	.uleb128 0x12
	.string	"BUILT_IN_FPUTS"
	.sleb128 320
	.uleb128 0x12
	.string	"BUILT_IN_FWRITE"
	.sleb128 321
	.uleb128 0x12
	.string	"BUILT_IN_FPRINTF"
	.sleb128 322
	.uleb128 0x12
	.string	"BUILT_IN_PUTCHAR_UNLOCKED"
	.sleb128 323
	.uleb128 0x12
	.string	"BUILT_IN_PUTS_UNLOCKED"
	.sleb128 324
	.uleb128 0x12
	.string	"BUILT_IN_PRINTF_UNLOCKED"
	.sleb128 325
	.uleb128 0x12
	.string	"BUILT_IN_FPUTC_UNLOCKED"
	.sleb128 326
	.uleb128 0x12
	.string	"BUILT_IN_FPUTS_UNLOCKED"
	.sleb128 327
	.uleb128 0x12
	.string	"BUILT_IN_FWRITE_UNLOCKED"
	.sleb128 328
	.uleb128 0x12
	.string	"BUILT_IN_ISGREATER"
	.sleb128 329
	.uleb128 0x12
	.string	"BUILT_IN_ISGREATEREQUAL"
	.sleb128 330
	.uleb128 0x12
	.string	"BUILT_IN_ISLESS"
	.sleb128 331
	.uleb128 0x12
	.string	"BUILT_IN_ISLESSEQUAL"
	.sleb128 332
	.uleb128 0x12
	.string	"BUILT_IN_ISLESSGREATER"
	.sleb128 333
	.uleb128 0x12
	.string	"BUILT_IN_ISUNORDERED"
	.sleb128 334
	.uleb128 0x12
	.string	"BUILT_IN_UNWIND_INIT"
	.sleb128 335
	.uleb128 0x12
	.string	"BUILT_IN_DWARF_CFA"
	.sleb128 336
	.uleb128 0x12
	.string	"BUILT_IN_DWARF_SP_COLUMN"
	.sleb128 337
	.uleb128 0x12
	.string	"BUILT_IN_INIT_DWARF_REG_SIZES"
	.sleb128 338
	.uleb128 0x12
	.string	"BUILT_IN_FROB_RETURN_ADDR"
	.sleb128 339
	.uleb128 0x12
	.string	"BUILT_IN_EXTRACT_RETURN_ADDR"
	.sleb128 340
	.uleb128 0x12
	.string	"BUILT_IN_EH_RETURN"
	.sleb128 341
	.uleb128 0x12
	.string	"BUILT_IN_EH_RETURN_DATA_REGNO"
	.sleb128 342
	.uleb128 0x12
	.string	"BUILT_IN_VA_START"
	.sleb128 343
	.uleb128 0x12
	.string	"BUILT_IN_STDARG_START"
	.sleb128 344
	.uleb128 0x12
	.string	"BUILT_IN_VA_END"
	.sleb128 345
	.uleb128 0x12
	.string	"BUILT_IN_VA_COPY"
	.sleb128 346
	.uleb128 0x12
	.string	"BUILT_IN_EXPECT"
	.sleb128 347
	.uleb128 0x12
	.string	"BUILT_IN_EXTEND_POINTER"
	.sleb128 348
	.uleb128 0x12
	.string	"BUILT_IN_NEW"
	.sleb128 349
	.uleb128 0x12
	.string	"BUILT_IN_VEC_NEW"
	.sleb128 350
	.uleb128 0x12
	.string	"BUILT_IN_DELETE"
	.sleb128 351
	.uleb128 0x12
	.string	"BUILT_IN_VEC_DELETE"
	.sleb128 352
	.uleb128 0x12
	.string	"BUILT_IN_ABORT"
	.sleb128 353
	.uleb128 0x12
	.string	"BUILT_IN_EXIT"
	.sleb128 354
	.uleb128 0x12
	.string	"BUILT_IN__EXIT"
	.sleb128 355
	.uleb128 0x12
	.string	"BUILT_IN__EXIT2"
	.sleb128 356
	.uleb128 0x12
	.string	"END_BUILTINS"
	.sleb128 357
	.byte	0x0
	.uleb128 0x13
	.long	0x2fa2
	.string	"tree_common"
	.byte	0x10
	.byte	0x3
	.byte	0x8c
	.uleb128 0x14
	.string	"chain"
	.byte	0x3
	.byte	0x8d
	.long	0xd9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x16
	.long	.LASF3
	.byte	0x3
	.byte	0x8e
	.long	0xd9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x17
	.string	"code"
	.byte	0x3
	.byte	0x90
	.long	0x645
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x17
	.string	"side_effects_flag"
	.byte	0x3
	.byte	0x92
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x17
	.string	"constant_flag"
	.byte	0x3
	.byte	0x93
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x17
	.string	"addressable_flag"
	.byte	0x3
	.byte	0x94
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x17
	.string	"volatile_flag"
	.byte	0x3
	.byte	0x95
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x17
	.string	"readonly_flag"
	.byte	0x3
	.byte	0x96
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x17
	.string	"unsigned_flag"
	.byte	0x3
	.byte	0x97
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x17
	.string	"asm_written_flag"
	.byte	0x3
	.byte	0x98
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x17
	.string	"not_emitted_by_gxx"
	.byte	0x3
	.byte	0x9a
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x17
	.string	"used_flag"
	.byte	0x3
	.byte	0x9f
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x17
	.string	"nothrow_flag"
	.byte	0x3
	.byte	0xa0
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x17
	.string	"static_flag"
	.byte	0x3
	.byte	0xa1
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x17
	.string	"public_flag"
	.byte	0x3
	.byte	0xa2
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x17
	.string	"private_flag"
	.byte	0x3
	.byte	0xa3
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x17
	.string	"protected_flag"
	.byte	0x3
	.byte	0xa4
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x17
	.string	"bounded_flag"
	.byte	0x3
	.byte	0xa5
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x17
	.string	"deprecated_flag"
	.byte	0x3
	.byte	0xa6
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x18
	.long	.LASF6
	.byte	0x3
	.byte	0xa8
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x18
	.long	.LASF7
	.byte	0x3
	.byte	0xa9
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x18
	.long	.LASF8
	.byte	0x3
	.byte	0xaa
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x18
	.long	.LASF9
	.byte	0x3
	.byte	0xab
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x18
	.long	.LASF10
	.byte	0x3
	.byte	0xac
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x18
	.long	.LASF11
	.byte	0x3
	.byte	0xad
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x18
	.long	.LASF12
	.byte	0x3
	.byte	0xae
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x18
	.long	.LASF13
	.byte	0x3
	.byte	0xb0
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x17
	.string	"sbuf"
	.byte	0x3
	.byte	0xb5
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x17
	.string	"sdram"
	.byte	0x3
	.byte	0xb6
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x17
	.string	"v1buf"
	.byte	0x3
	.byte	0xb7
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x17
	.string	"v2buf"
	.byte	0x3
	.byte	0xb8
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x17
	.string	"v4buf"
	.byte	0x3
	.byte	0xb9
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0xa
	.long	0x2fde
	.string	"tree_int_cst_lowhi"
	.byte	0x10
	.byte	0x3
	.value	0x30a
	.uleb128 0xb
	.string	"low"
	.byte	0x3
	.value	0x30b
	.long	0x359
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.string	"high"
	.byte	0x3
	.value	0x30c
	.long	0x348
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0xa
	.long	0x3026
	.string	"tree_int_cst"
	.byte	0x24
	.byte	0x3
	.value	0x303
	.uleb128 0x19
	.long	.LASF0
	.byte	0x3
	.value	0x304
	.long	0x2cc0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.string	"rtl"
	.byte	0x3
	.value	0x305
	.long	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.string	"int_cst"
	.byte	0x3
	.value	0x30d
	.long	0x2fa2
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xa
	.long	0x3074
	.string	"tree_real_cst"
	.byte	0x18
	.byte	0x3
	.value	0x31f
	.uleb128 0x19
	.long	.LASF0
	.byte	0x3
	.value	0x320
	.long	0x2cc0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.string	"rtl"
	.byte	0x3
	.value	0x321
	.long	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.string	"real_cst_ptr"
	.byte	0x3
	.value	0x322
	.long	0x3081
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x4
	.string	"real_value"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x3074
	.uleb128 0xa
	.long	0x30ee
	.string	"tree_string"
	.byte	0x20
	.byte	0x3
	.value	0x333
	.uleb128 0x19
	.long	.LASF0
	.byte	0x3
	.value	0x334
	.long	0x2cc0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.string	"rtl"
	.byte	0x3
	.value	0x335
	.long	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.string	"length"
	.byte	0x3
	.value	0x336
	.long	0x1d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xb
	.string	"pointer"
	.byte	0x3
	.value	0x337
	.long	0x1c0
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.string	"st"
	.byte	0x3
	.value	0x339
	.long	0x30ee
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0xfb7
	.uleb128 0xa
	.long	0x3149
	.string	"tree_complex"
	.byte	0x1c
	.byte	0x3
	.value	0x342
	.uleb128 0x19
	.long	.LASF0
	.byte	0x3
	.value	0x343
	.long	0x2cc0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.string	"rtl"
	.byte	0x3
	.value	0x344
	.long	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.string	"real"
	.byte	0x3
	.value	0x345
	.long	0xd9
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xb
	.string	"imag"
	.byte	0x3
	.value	0x346
	.long	0xd9
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0xa
	.long	0x3191
	.string	"tree_vector"
	.byte	0x18
	.byte	0x3
	.value	0x355
	.uleb128 0x19
	.long	.LASF0
	.byte	0x3
	.value	0x356
	.long	0x2cc0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.string	"rtl"
	.byte	0x3
	.value	0x357
	.long	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.string	"elements"
	.byte	0x3
	.value	0x358
	.long	0xd9
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x1a
	.long	0x31cf
	.long	.LASF14
	.byte	0xc
	.byte	0x4
	.byte	0x19
	.uleb128 0x14
	.string	"str"
	.byte	0x4
	.byte	0x1c
	.long	0x387
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x14
	.string	"len"
	.byte	0x4
	.byte	0x1d
	.long	0x2ac
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x14
	.string	"hash_value"
	.byte	0x4
	.byte	0x1e
	.long	0x2ac
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0xa
	.long	0x3206
	.string	"tree_identifier"
	.byte	0x1c
	.byte	0x3
	.value	0x376
	.uleb128 0x19
	.long	.LASF0
	.byte	0x3
	.value	0x377
	.long	0x2cc0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.string	"id"
	.byte	0x3
	.value	0x378
	.long	0x3191
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0xa
	.long	0x324b
	.string	"tree_list"
	.byte	0x18
	.byte	0x3
	.value	0x380
	.uleb128 0x19
	.long	.LASF0
	.byte	0x3
	.value	0x381
	.long	0x2cc0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.string	"purpose"
	.byte	0x3
	.value	0x382
	.long	0xd9
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x19
	.long	.LASF15
	.byte	0x3
	.value	0x383
	.long	0xd9
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xa
	.long	0x328c
	.string	"tree_vec"
	.byte	0x18
	.byte	0x3
	.value	0x38e
	.uleb128 0x19
	.long	.LASF0
	.byte	0x3
	.value	0x38f
	.long	0x2cc0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.string	"length"
	.byte	0x3
	.value	0x390
	.long	0x1d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.string	"a"
	.byte	0x3
	.value	0x391
	.long	0x328c
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xd
	.long	0x329c
	.long	0xd9
	.uleb128 0xe
	.long	0x2c3
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
	.long	0x32e8
	.string	"tree_exp"
	.byte	0x18
	.byte	0x3
	.value	0x3d4
	.uleb128 0x19
	.long	.LASF0
	.byte	0x3
	.value	0x3d5
	.long	0x2cc0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.string	"complexity"
	.byte	0x3
	.value	0x3d6
	.long	0x1d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.string	"operands"
	.byte	0x3
	.value	0x3d9
	.long	0x328c
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xa
	.long	0x33d8
	.string	"tree_block"
	.byte	0x2c
	.byte	0x3
	.value	0x40a
	.uleb128 0x19
	.long	.LASF0
	.byte	0x3
	.value	0x40b
	.long	0x2cc0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1b
	.string	"handler_block_flag"
	.byte	0x3
	.value	0x40d
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x1c
	.long	.LASF16
	.byte	0x3
	.value	0x40e
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x1b
	.string	"block_num"
	.byte	0x3
	.value	0x40f
	.long	0x2ac
	.byte	0x4
	.byte	0x1e
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.string	"vars"
	.byte	0x3
	.value	0x411
	.long	0xd9
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xb
	.string	"subblocks"
	.byte	0x3
	.value	0x412
	.long	0xd9
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.string	"supercontext"
	.byte	0x3
	.value	0x413
	.long	0xd9
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x19
	.long	.LASF17
	.byte	0x3
	.value	0x414
	.long	0xd9
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xb
	.string	"fragment_origin"
	.byte	0x3
	.value	0x415
	.long	0xd9
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xb
	.string	"fragment_chain"
	.byte	0x3
	.value	0x416
	.long	0xd9
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x1d
	.long	0x341f
	.string	"tree_type_symtab"
	.byte	0x4
	.byte	0x3
	.value	0x570
	.uleb128 0x7
	.string	"address"
	.byte	0x3
	.value	0x571
	.long	0x1d3
	.uleb128 0x7
	.string	"pointer"
	.byte	0x3
	.value	0x572
	.long	0x381
	.uleb128 0x7
	.string	"die"
	.byte	0x3
	.value	0x573
	.long	0x342c
	.byte	0x0
	.uleb128 0x4
	.string	"die_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x341f
	.uleb128 0xa
	.long	0x377a
	.string	"tree_type"
	.byte	0x74
	.byte	0x3
	.value	0x551
	.uleb128 0x19
	.long	.LASF0
	.byte	0x3
	.value	0x552
	.long	0x2cc0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.string	"values"
	.byte	0x3
	.value	0x553
	.long	0xd9
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.string	"size"
	.byte	0x3
	.value	0x554
	.long	0xd9
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x19
	.long	.LASF18
	.byte	0x3
	.value	0x555
	.long	0xd9
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x19
	.long	.LASF19
	.byte	0x3
	.value	0x556
	.long	0xd9
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xb
	.string	"uid"
	.byte	0x3
	.value	0x557
	.long	0x2ac
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1b
	.string	"precision"
	.byte	0x3
	.value	0x559
	.long	0x2ac
	.byte	0x4
	.byte	0x9
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1b
	.string	"mode"
	.byte	0x3
	.value	0x55a
	.long	0x3b8
	.byte	0x4
	.byte	0x7
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1b
	.string	"string_flag"
	.byte	0x3
	.value	0x55c
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1b
	.string	"no_force_blk_flag"
	.byte	0x3
	.value	0x55d
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1b
	.string	"needs_constructing_flag"
	.byte	0x3
	.value	0x55e
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1b
	.string	"transparent_union_flag"
	.byte	0x3
	.value	0x55f
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1b
	.string	"packed_flag"
	.byte	0x3
	.value	0x560
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1b
	.string	"restrict_flag"
	.byte	0x3
	.value	0x561
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1c
	.long	.LASF20
	.byte	0x3
	.value	0x562
	.long	0x2ac
	.byte	0x4
	.byte	0x2
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1c
	.long	.LASF6
	.byte	0x3
	.value	0x564
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1c
	.long	.LASF7
	.byte	0x3
	.value	0x565
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1c
	.long	.LASF8
	.byte	0x3
	.value	0x566
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1c
	.long	.LASF9
	.byte	0x3
	.value	0x567
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1c
	.long	.LASF10
	.byte	0x3
	.value	0x568
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1c
	.long	.LASF11
	.byte	0x3
	.value	0x569
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1c
	.long	.LASF12
	.byte	0x3
	.value	0x56a
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1c
	.long	.LASF21
	.byte	0x3
	.value	0x56b
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xb
	.string	"align"
	.byte	0x3
	.value	0x56d
	.long	0x2ac
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xb
	.string	"pointer_to"
	.byte	0x3
	.value	0x56e
	.long	0xd9
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xb
	.string	"reference_to"
	.byte	0x3
	.value	0x56f
	.long	0xd9
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xb
	.string	"symtab"
	.byte	0x3
	.value	0x574
	.long	0x33d8
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xb
	.string	"name"
	.byte	0x3
	.value	0x576
	.long	0xd9
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xb
	.string	"minval"
	.byte	0x3
	.value	0x577
	.long	0xd9
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xb
	.string	"maxval"
	.byte	0x3
	.value	0x578
	.long	0xd9
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xb
	.string	"next_variant"
	.byte	0x3
	.value	0x579
	.long	0xd9
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xb
	.string	"main_variant"
	.byte	0x3
	.value	0x57a
	.long	0xd9
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x19
	.long	.LASF22
	.byte	0x3
	.value	0x57b
	.long	0xd9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x19
	.long	.LASF23
	.byte	0x3
	.value	0x57c
	.long	0xd9
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xb
	.string	"alias_set"
	.byte	0x3
	.value	0x57d
	.long	0x348
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x19
	.long	.LASF24
	.byte	0x3
	.value	0x57f
	.long	0x379b
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xb
	.string	"ty_idx"
	.byte	0x3
	.value	0x581
	.long	0x2ac
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xb
	.string	"field_ids_used"
	.byte	0x3
	.value	0x582
	.long	0x2ac
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xb
	.string	"dst_id"
	.byte	0x3
	.value	0x583
	.long	0xf78
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xb
	.string	"extra_methods"
	.byte	0x3
	.value	0x58a
	.long	0xd9
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.byte	0x0
	.uleb128 0xa
	.long	0x379b
	.string	"lang_type"
	.byte	0x4c
	.byte	0x3
	.value	0x57f
	.uleb128 0xb
	.string	"u"
	.byte	0x9
	.value	0x4e0
	.long	0x63de
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x377a
	.uleb128 0xa
	.long	0x37e6
	.string	"tree_decl_u1_a"
	.byte	0x4
	.byte	0x3
	.value	0x817
	.uleb128 0x1b
	.string	"align"
	.byte	0x3
	.value	0x818
	.long	0x2ac
	.byte	0x4
	.byte	0x18
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1b
	.string	"off_align"
	.byte	0x3
	.value	0x819
	.long	0x2ac
	.byte	0x4
	.byte	0x8
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x1d
	.long	0x381b
	.string	"tree_decl_u1"
	.byte	0x8
	.byte	0x3
	.value	0x80e
	.uleb128 0x7
	.string	"f"
	.byte	0x3
	.value	0x811
	.long	0x1016
	.uleb128 0x7
	.string	"i"
	.byte	0x3
	.value	0x814
	.long	0x348
	.uleb128 0x7
	.string	"a"
	.byte	0x3
	.value	0x81a
	.long	0x37a1
	.byte	0x0
	.uleb128 0x1d
	.long	0x385a
	.string	"tree_decl_u2"
	.byte	0x4
	.byte	0x3
	.value	0x837
	.uleb128 0x7
	.string	"f"
	.byte	0x3
	.value	0x838
	.long	0x420a
	.uleb128 0x7
	.string	"r"
	.byte	0x3
	.value	0x839
	.long	0x9f
	.uleb128 0x7
	.string	"t"
	.byte	0x3
	.value	0x83a
	.long	0xd9
	.uleb128 0x7
	.string	"i"
	.byte	0x3
	.value	0x83b
	.long	0x1d3
	.byte	0x0
	.uleb128 0x1e
	.long	0x420a
	.string	"function"
	.value	0x134
	.byte	0x3
	.value	0x7c2
	.uleb128 0x14
	.string	"eh"
	.byte	0x7
	.byte	0xb5
	.long	0x500d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x14
	.string	"stmt"
	.byte	0x7
	.byte	0xb6
	.long	0x5021
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x14
	.string	"expr"
	.byte	0x7
	.byte	0xb7
	.long	0x5027
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x14
	.string	"emit"
	.byte	0x7
	.byte	0xb8
	.long	0x502d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x14
	.string	"varasm"
	.byte	0x7
	.byte	0xb9
	.long	0x5043
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x14
	.string	"name"
	.byte	0x7
	.byte	0xbe
	.long	0x1c0
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x16
	.long	.LASF2
	.byte	0x7
	.byte	0xc1
	.long	0xd9
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x14
	.string	"outer"
	.byte	0x7
	.byte	0xc4
	.long	0x420a
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x14
	.string	"pops_args"
	.byte	0x7
	.byte	0xc9
	.long	0x1d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x14
	.string	"args_size"
	.byte	0x7
	.byte	0xce
	.long	0x1d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x14
	.string	"pretend_args_size"
	.byte	0x7
	.byte	0xd3
	.long	0x1d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x14
	.string	"outgoing_args_size"
	.byte	0x7
	.byte	0xd7
	.long	0x1d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x14
	.string	"arg_offset_rtx"
	.byte	0x7
	.byte	0xdb
	.long	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x14
	.string	"args_info"
	.byte	0x7
	.byte	0xdf
	.long	0x2ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x14
	.string	"return_rtx"
	.byte	0x7
	.byte	0xe5
	.long	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x14
	.string	"internal_arg_pointer"
	.byte	0x7
	.byte	0xe8
	.long	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x16
	.long	.LASF25
	.byte	0x7
	.byte	0xec
	.long	0x1c0
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x14
	.string	"hard_reg_initial_vals"
	.byte	0x7
	.byte	0xf0
	.long	0x5060
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x14
	.string	"x_function_call_count"
	.byte	0x7
	.byte	0xf3
	.long	0x1d3
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0x14
	.string	"x_nonlocal_labels"
	.byte	0x7
	.byte	0xf8
	.long	0xd9
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x14
	.string	"x_nonlocal_goto_handler_slots"
	.byte	0x7
	.byte	0xfe
	.long	0x9f
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0xb
	.string	"x_nonlocal_goto_handler_labels"
	.byte	0x7
	.value	0x102
	.long	0x9f
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xb
	.string	"x_nonlocal_goto_stack_level"
	.byte	0x7
	.value	0x107
	.long	0x9f
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0xb
	.string	"x_cleanup_label"
	.byte	0x7
	.value	0x10d
	.long	0x9f
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0xb
	.string	"x_return_label"
	.byte	0x7
	.value	0x112
	.long	0x9f
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.uleb128 0xb
	.string	"computed_goto_common_label"
	.byte	0x7
	.value	0x115
	.long	0x9f
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0xb
	.string	"computed_goto_common_reg"
	.byte	0x7
	.value	0x116
	.long	0x9f
	.byte	0x3
	.byte	0x23
	.uleb128 0xa4
	.uleb128 0xb
	.string	"x_save_expr_regs"
	.byte	0x7
	.value	0x11a
	.long	0x9f
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0xb
	.string	"x_stack_slot_list"
	.byte	0x7
	.value	0x11e
	.long	0x9f
	.byte	0x3
	.byte	0x23
	.uleb128 0xac
	.uleb128 0xb
	.string	"x_rtl_expr_chain"
	.byte	0x7
	.value	0x121
	.long	0xd9
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0xb
	.string	"x_tail_recursion_label"
	.byte	0x7
	.value	0x125
	.long	0x9f
	.byte	0x3
	.byte	0x23
	.uleb128 0xb4
	.uleb128 0xb
	.string	"x_tail_recursion_reentry"
	.byte	0x7
	.value	0x128
	.long	0x9f
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0xb
	.string	"x_arg_pointer_save_area"
	.byte	0x7
	.value	0x12e
	.long	0x9f
	.byte	0x3
	.byte	0x23
	.uleb128 0xbc
	.uleb128 0xb
	.string	"x_clobber_return_insn"
	.byte	0x7
	.value	0x133
	.long	0x9f
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0xb
	.string	"x_frame_offset"
	.byte	0x7
	.value	0x138
	.long	0x348
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.uleb128 0xb
	.string	"x_context_display"
	.byte	0x7
	.value	0x13d
	.long	0xd9
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.uleb128 0xb
	.string	"x_trampoline_list"
	.byte	0x7
	.value	0x146
	.long	0xd9
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0xb
	.string	"x_parm_birth_insn"
	.byte	0x7
	.value	0x149
	.long	0x9f
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0xb
	.string	"x_last_parm_insn"
	.byte	0x7
	.value	0x14d
	.long	0x9f
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0xb
	.string	"x_max_parm_reg"
	.byte	0x7
	.value	0x151
	.long	0x2ac
	.byte	0x3
	.byte	0x23
	.uleb128 0xdc
	.uleb128 0xb
	.string	"x_parm_reg_stack_loc"
	.byte	0x7
	.value	0x157
	.long	0x4eb1
	.byte	0x3
	.byte	0x23
	.uleb128 0xe0
	.uleb128 0xb
	.string	"x_temp_slots"
	.byte	0x7
	.value	0x15a
	.long	0x5072
	.byte	0x3
	.byte	0x23
	.uleb128 0xe4
	.uleb128 0xb
	.string	"x_temp_slot_level"
	.byte	0x7
	.value	0x15d
	.long	0x1d3
	.byte	0x3
	.byte	0x23
	.uleb128 0xe8
	.uleb128 0xb
	.string	"x_var_temp_slot_level"
	.byte	0x7
	.value	0x160
	.long	0x1d3
	.byte	0x3
	.byte	0x23
	.uleb128 0xec
	.uleb128 0xb
	.string	"x_target_temp_slot_level"
	.byte	0x7
	.value	0x166
	.long	0x1d3
	.byte	0x3
	.byte	0x23
	.uleb128 0xf0
	.uleb128 0xb
	.string	"fixup_var_refs_queue"
	.byte	0x7
	.value	0x16a
	.long	0x4d0d
	.byte	0x3
	.byte	0x23
	.uleb128 0xf4
	.uleb128 0xb
	.string	"inlinable"
	.byte	0x7
	.value	0x16d
	.long	0x1d3
	.byte	0x3
	.byte	0x23
	.uleb128 0xf8
	.uleb128 0xb
	.string	"no_debugging_symbols"
	.byte	0x7
	.value	0x16e
	.long	0x1d3
	.byte	0x3
	.byte	0x23
	.uleb128 0xfc
	.uleb128 0xb
	.string	"original_arg_vector"
	.byte	0x7
	.value	0x16f
	.long	0xba
	.byte	0x3
	.byte	0x23
	.uleb128 0x100
	.uleb128 0xb
	.string	"original_decl_initial"
	.byte	0x7
	.value	0x170
	.long	0xd9
	.byte	0x3
	.byte	0x23
	.uleb128 0x104
	.uleb128 0xb
	.string	"inl_last_parm_insn"
	.byte	0x7
	.value	0x173
	.long	0x9f
	.byte	0x3
	.byte	0x23
	.uleb128 0x108
	.uleb128 0xb
	.string	"inl_max_label_num"
	.byte	0x7
	.value	0x175
	.long	0x1d3
	.byte	0x3
	.byte	0x23
	.uleb128 0x10c
	.uleb128 0xb
	.string	"funcdef_no"
	.byte	0x7
	.value	0x178
	.long	0x1d3
	.byte	0x3
	.byte	0x23
	.uleb128 0x110
	.uleb128 0xb
	.string	"machine"
	.byte	0x7
	.value	0x17d
	.long	0x508b
	.byte	0x3
	.byte	0x23
	.uleb128 0x114
	.uleb128 0xb
	.string	"stack_alignment_needed"
	.byte	0x7
	.value	0x17f
	.long	0x1d3
	.byte	0x3
	.byte	0x23
	.uleb128 0x118
	.uleb128 0xb
	.string	"preferred_stack_boundary"
	.byte	0x7
	.value	0x181
	.long	0x1d3
	.byte	0x3
	.byte	0x23
	.uleb128 0x11c
	.uleb128 0x19
	.long	.LASF26
	.byte	0x7
	.value	0x184
	.long	0x52c7
	.byte	0x3
	.byte	0x23
	.uleb128 0x120
	.uleb128 0xb
	.string	"epilogue_delay_list"
	.byte	0x7
	.value	0x18a
	.long	0x9f
	.byte	0x3
	.byte	0x23
	.uleb128 0x124
	.uleb128 0x1b
	.string	"returns_struct"
	.byte	0x7
	.value	0x190
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1b
	.string	"returns_pcc_struct"
	.byte	0x7
	.value	0x194
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1b
	.string	"returns_pointer"
	.byte	0x7
	.value	0x197
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1b
	.string	"needs_context"
	.byte	0x7
	.value	0x19a
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1b
	.string	"calls_setjmp"
	.byte	0x7
	.value	0x19d
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1b
	.string	"calls_longjmp"
	.byte	0x7
	.value	0x1a0
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1b
	.string	"calls_alloca"
	.byte	0x7
	.value	0x1a4
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1b
	.string	"calls_eh_return"
	.byte	0x7
	.value	0x1a7
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1b
	.string	"has_nonlocal_label"
	.byte	0x7
	.value	0x1ab
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1b
	.string	"has_nonlocal_goto"
	.byte	0x7
	.value	0x1af
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1b
	.string	"contains_functions"
	.byte	0x7
	.value	0x1b2
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1b
	.string	"has_computed_jump"
	.byte	0x7
	.value	0x1b5
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1b
	.string	"is_thunk"
	.byte	0x7
	.value	0x1ba
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1b
	.string	"all_throwers_are_sibcalls"
	.byte	0x7
	.value	0x1c1
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1b
	.string	"instrument_entry_exit"
	.byte	0x7
	.value	0x1c5
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1b
	.string	"arc_profile"
	.byte	0x7
	.value	0x1c8
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1b
	.string	"profile"
	.byte	0x7
	.value	0x1cb
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1b
	.string	"limit_stack"
	.byte	0x7
	.value	0x1cf
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1b
	.string	"stdarg"
	.byte	0x7
	.value	0x1d2
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1b
	.string	"x_whole_function_mode_p"
	.byte	0x7
	.value	0x1d8
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1b
	.string	"x_dont_save_pending_sizes_p"
	.byte	0x7
	.value	0x1e1
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1b
	.string	"uses_const_pool"
	.byte	0x7
	.value	0x1e4
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1b
	.string	"uses_pic_offset_table"
	.byte	0x7
	.value	0x1e7
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1b
	.string	"uses_eh_lsda"
	.byte	0x7
	.value	0x1ea
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1b
	.string	"arg_pointer_save_area_init"
	.byte	0x7
	.value	0x1ed
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x19
	.long	.LASF27
	.byte	0x7
	.value	0x1fa
	.long	0x4f97
	.byte	0x3
	.byte	0x23
	.uleb128 0x12c
	.uleb128 0xb
	.string	"max_jumptable_ents"
	.byte	0x7
	.value	0x1fe
	.long	0x1d3
	.byte	0x3
	.byte	0x23
	.uleb128 0x130
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x385a
	.uleb128 0x1f
	.long	0x4248
	.byte	0x4
	.byte	0x3
	.value	0x84e
	.uleb128 0x7
	.string	"st"
	.byte	0x3
	.value	0x84f
	.long	0x30ee
	.uleb128 0x7
	.string	"label_idx"
	.byte	0x3
	.value	0x850
	.long	0xf67
	.uleb128 0x7
	.string	"field_id"
	.byte	0x3
	.value	0x851
	.long	0x2ac
	.byte	0x0
	.uleb128 0xa
	.long	0x498e
	.string	"tree_decl"
	.byte	0xa0
	.byte	0x3
	.value	0x7c5
	.uleb128 0x19
	.long	.LASF0
	.byte	0x3
	.value	0x7c6
	.long	0x2cc0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.string	"locus"
	.byte	0x3
	.value	0x7c7
	.long	0x633
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.string	"uid"
	.byte	0x3
	.value	0x7c8
	.long	0x2ac
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.string	"size"
	.byte	0x3
	.value	0x7c9
	.long	0xd9
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x1b
	.string	"mode"
	.byte	0x3
	.value	0x7ca
	.long	0x3b8
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1b
	.string	"external_flag"
	.byte	0x3
	.value	0x7cc
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1b
	.string	"nonlocal_flag"
	.byte	0x3
	.value	0x7cd
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1b
	.string	"regdecl_flag"
	.byte	0x3
	.value	0x7ce
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1b
	.string	"inline_flag"
	.byte	0x3
	.value	0x7cf
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1b
	.string	"bit_field_flag"
	.byte	0x3
	.value	0x7d0
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1b
	.string	"virtual_flag"
	.byte	0x3
	.value	0x7d1
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1b
	.string	"ignored_flag"
	.byte	0x3
	.value	0x7d2
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1c
	.long	.LASF16
	.byte	0x3
	.value	0x7d3
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1b
	.string	"sbuf_flag"
	.byte	0x3
	.value	0x7d7
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1b
	.string	"sdram_flag"
	.byte	0x3
	.value	0x7d8
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1b
	.string	"v1buf_flag"
	.byte	0x3
	.value	0x7d9
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1b
	.string	"v2buf_flag"
	.byte	0x3
	.value	0x7da
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1b
	.string	"v4buf_flag"
	.byte	0x3
	.value	0x7db
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1b
	.string	"in_system_header_flag"
	.byte	0x3
	.value	0x7df
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1b
	.string	"common_flag"
	.byte	0x3
	.value	0x7e0
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1b
	.string	"defer_output"
	.byte	0x3
	.value	0x7e1
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1b
	.string	"transparent_union"
	.byte	0x3
	.value	0x7e2
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1b
	.string	"static_ctor_flag"
	.byte	0x3
	.value	0x7e3
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1b
	.string	"static_dtor_flag"
	.byte	0x3
	.value	0x7e4
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1b
	.string	"artificial_flag"
	.byte	0x3
	.value	0x7e5
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1b
	.string	"weak_flag"
	.byte	0x3
	.value	0x7e6
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1b
	.string	"non_addr_const_p"
	.byte	0x3
	.value	0x7e8
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1b
	.string	"no_instrument_function_entry_exit"
	.byte	0x3
	.value	0x7e9
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1b
	.string	"comdat_flag"
	.byte	0x3
	.value	0x7ea
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1b
	.string	"malloc_flag"
	.byte	0x3
	.value	0x7eb
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1b
	.string	"no_limit_stack"
	.byte	0x3
	.value	0x7ec
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1c
	.long	.LASF5
	.byte	0x3
	.value	0x7ed
	.long	0xfc6
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1b
	.string	"pure_flag"
	.byte	0x3
	.value	0x7ee
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1c
	.long	.LASF20
	.byte	0x3
	.value	0x7f0
	.long	0x2ac
	.byte	0x4
	.byte	0x2
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1b
	.string	"non_addressable"
	.byte	0x3
	.value	0x7f1
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1c
	.long	.LASF21
	.byte	0x3
	.value	0x7f2
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1b
	.string	"uninlinable"
	.byte	0x3
	.value	0x7f3
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1b
	.string	"thread_local_flag"
	.byte	0x3
	.value	0x7f4
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1b
	.string	"inlined_function_flag"
	.byte	0x3
	.value	0x7f5
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1b
	.string	"threadprivate_flag"
	.byte	0x3
	.value	0x7f7
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1c
	.long	.LASF6
	.byte	0x3
	.value	0x7fa
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1c
	.long	.LASF7
	.byte	0x3
	.value	0x7fb
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1c
	.long	.LASF8
	.byte	0x3
	.value	0x7fc
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1c
	.long	.LASF9
	.byte	0x3
	.value	0x7fd
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1c
	.long	.LASF10
	.byte	0x3
	.value	0x7fe
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1c
	.long	.LASF11
	.byte	0x3
	.value	0x7ff
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1c
	.long	.LASF12
	.byte	0x3
	.value	0x800
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1c
	.long	.LASF13
	.byte	0x3
	.value	0x801
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1b
	.string	"syscall_linkage_flag"
	.byte	0x3
	.value	0x804
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1b
	.string	"widen_retval_flag"
	.byte	0x3
	.value	0x805
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1b
	.string	"emitted_by_gxx"
	.byte	0x3
	.value	0x808
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xb
	.string	"u1"
	.byte	0x3
	.value	0x81b
	.long	0x37e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x19
	.long	.LASF18
	.byte	0x3
	.value	0x81d
	.long	0xd9
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xb
	.string	"name"
	.byte	0x3
	.value	0x81e
	.long	0xd9
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x19
	.long	.LASF23
	.byte	0x3
	.value	0x81f
	.long	0xd9
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xb
	.string	"arguments"
	.byte	0x3
	.value	0x820
	.long	0xd9
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xb
	.string	"result"
	.byte	0x3
	.value	0x821
	.long	0xd9
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xb
	.string	"initial"
	.byte	0x3
	.value	0x822
	.long	0xd9
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xb
	.string	"initial_2"
	.byte	0x3
	.value	0x824
	.long	0xd9
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xb
	.string	"alias_target"
	.byte	0x3
	.value	0x825
	.long	0xd9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xb
	.string	"thunk_delta"
	.byte	0x3
	.value	0x829
	.long	0x348
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x19
	.long	.LASF17
	.byte	0x3
	.value	0x82b
	.long	0xd9
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xb
	.string	"assembler_name"
	.byte	0x3
	.value	0x82c
	.long	0xd9
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xb
	.string	"section_name"
	.byte	0x3
	.value	0x82d
	.long	0xd9
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x19
	.long	.LASF19
	.byte	0x3
	.value	0x82e
	.long	0xd9
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xb
	.string	"rtl"
	.byte	0x3
	.value	0x82f
	.long	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xb
	.string	"live_range_rtl"
	.byte	0x3
	.value	0x830
	.long	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0xb
	.string	"u2"
	.byte	0x3
	.value	0x83c
	.long	0x381b
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xb
	.string	"saved_tree"
	.byte	0x3
	.value	0x83f
	.long	0xd9
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0xb
	.string	"inlined_fns"
	.byte	0x3
	.value	0x843
	.long	0xd9
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xb
	.string	"vindex"
	.byte	0x3
	.value	0x845
	.long	0xd9
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0xb
	.string	"pointer_alias_set"
	.byte	0x3
	.value	0x846
	.long	0x348
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x19
	.long	.LASF24
	.byte	0x3
	.value	0x848
	.long	0x49c5
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x1b
	.string	"symtab_idx"
	.byte	0x3
	.value	0x84b
	.long	0x2ac
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0x1b
	.string	"label_defined"
	.byte	0x3
	.value	0x84c
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0xb
	.string	"sgi_u1"
	.byte	0x3
	.value	0x852
	.long	0x4210
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xb
	.string	"decl_dst_id"
	.byte	0x3
	.value	0x858
	.long	0xf78
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0xb
	.string	"sl_model_name"
	.byte	0x3
	.value	0x85c
	.long	0xd9
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.byte	0x0
	.uleb128 0xa
	.long	0x49c5
	.string	"lang_decl"
	.byte	0x34
	.byte	0x3
	.value	0x848
	.uleb128 0xb
	.string	"decl_flags"
	.byte	0x9
	.value	0x73a
	.long	0x6498
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.string	"u"
	.byte	0x9
	.value	0x763
	.long	0x68b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x498e
	.uleb128 0x11
	.long	0x4c49
	.string	"omp_tree_type"
	.byte	0x4
	.byte	0xd
	.byte	0x1d
	.uleb128 0x12
	.string	"parallel_dir_b"
	.sleb128 0
	.uleb128 0x12
	.string	"parallel_dir_e"
	.sleb128 1
	.uleb128 0x12
	.string	"for_dir_b"
	.sleb128 2
	.uleb128 0x12
	.string	"for_dir_e"
	.sleb128 3
	.uleb128 0x12
	.string	"sections_cons_b"
	.sleb128 4
	.uleb128 0x12
	.string	"sections_cons_e"
	.sleb128 5
	.uleb128 0x12
	.string	"section_cons_b"
	.sleb128 6
	.uleb128 0x12
	.string	"section_cons_e"
	.sleb128 7
	.uleb128 0x12
	.string	"single_cons_b"
	.sleb128 8
	.uleb128 0x12
	.string	"single_cons_e"
	.sleb128 9
	.uleb128 0x12
	.string	"par_for_cons_b"
	.sleb128 10
	.uleb128 0x12
	.string	"par_for_cons_e"
	.sleb128 11
	.uleb128 0x12
	.string	"par_sctn_cons_b"
	.sleb128 12
	.uleb128 0x12
	.string	"par_sctn_cons_e"
	.sleb128 13
	.uleb128 0x12
	.string	"master_cons_b"
	.sleb128 14
	.uleb128 0x12
	.string	"master_cons_e"
	.sleb128 15
	.uleb128 0x12
	.string	"critical_cons_b"
	.sleb128 16
	.uleb128 0x12
	.string	"critical_cons_e"
	.sleb128 17
	.uleb128 0x12
	.string	"barrier_dir"
	.sleb128 18
	.uleb128 0x12
	.string	"flush_dir"
	.sleb128 19
	.uleb128 0x12
	.string	"atomic_cons"
	.sleb128 20
	.uleb128 0x12
	.string	"atomic_cons_b"
	.sleb128 21
	.uleb128 0x12
	.string	"atomic_cons_e"
	.sleb128 22
	.uleb128 0x12
	.string	"thdprv_dir"
	.sleb128 23
	.uleb128 0x12
	.string	"ordered_cons_b"
	.sleb128 24
	.uleb128 0x12
	.string	"ordered_cons_e"
	.sleb128 25
	.uleb128 0x12
	.string	"options_dir"
	.sleb128 26
	.uleb128 0x12
	.string	"exec_freq_dir"
	.sleb128 27
	.uleb128 0x12
	.string	"sl2_sections_cons_b"
	.sleb128 28
	.uleb128 0x12
	.string	"sl2_minor_sections_cons_b"
	.sleb128 29
	.uleb128 0x12
	.string	"sl2_sections_cons_e"
	.sleb128 30
	.uleb128 0x12
	.string	"sl2_section_cons_b"
	.sleb128 31
	.uleb128 0x12
	.string	"sl2_section_cons_e"
	.sleb128 32
	.uleb128 0x12
	.string	"sl2_minor_section_cons_b"
	.sleb128 33
	.uleb128 0x12
	.string	"sl2_minor_section_cons_e"
	.sleb128 34
	.byte	0x0
	.uleb128 0xa
	.long	0x4c98
	.string	"tree_omp"
	.byte	0x18
	.byte	0x3
	.value	0x864
	.uleb128 0x19
	.long	.LASF0
	.byte	0x3
	.value	0x865
	.long	0x2cc0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.string	"choice"
	.byte	0x3
	.value	0x866
	.long	0x49cb
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.string	"omp_clause_list"
	.byte	0x3
	.value	0x867
	.long	0x37f
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x9
	.string	"_Bool"
	.byte	0x1
	.byte	0x2
	.uleb128 0x3
	.byte	0x4
	.long	0xd9
	.uleb128 0x13
	.long	0x4d0d
	.string	"var_refs_queue"
	.byte	0x10
	.byte	0x7
	.byte	0x17
	.uleb128 0x14
	.string	"modified"
	.byte	0x7
	.byte	0x18
	.long	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x14
	.string	"promoted_mode"
	.byte	0x7
	.byte	0x19
	.long	0x3b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x14
	.string	"unsignedp"
	.byte	0x7
	.byte	0x1a
	.long	0x1d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x14
	.string	"next"
	.byte	0x7
	.byte	0x1b
	.long	0x4d0d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x4ca7
	.uleb128 0x1a
	.long	0x4d5c
	.long	.LASF28
	.byte	0x10
	.byte	0x7
	.byte	0x24
	.uleb128 0x14
	.string	"first"
	.byte	0x7
	.byte	0x26
	.long	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x14
	.string	"last"
	.byte	0x7
	.byte	0x27
	.long	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x16
	.long	.LASF29
	.byte	0x7
	.byte	0x28
	.long	0xd9
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x14
	.string	"next"
	.byte	0x7
	.byte	0x29
	.long	0x4d5c
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x4d13
	.uleb128 0x13
	.long	0x4eb1
	.string	"emit_status"
	.byte	0x34
	.byte	0x7
	.byte	0x37
	.uleb128 0x14
	.string	"x_reg_rtx_no"
	.byte	0x7
	.byte	0x3a
	.long	0x1d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x14
	.string	"x_first_label_num"
	.byte	0x7
	.byte	0x3d
	.long	0x1d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x14
	.string	"x_first_insn"
	.byte	0x7
	.byte	0x44
	.long	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x14
	.string	"x_last_insn"
	.byte	0x7
	.byte	0x45
	.long	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x16
	.long	.LASF29
	.byte	0x7
	.byte	0x4a
	.long	0xd9
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x16
	.long	.LASF28
	.byte	0x7
	.byte	0x50
	.long	0x4d5c
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x14
	.string	"x_cur_insn_uid"
	.byte	0x7
	.byte	0x54
	.long	0x1d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x14
	.string	"x_last_linenum"
	.byte	0x7
	.byte	0x58
	.long	0x1d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x14
	.string	"x_last_filename"
	.byte	0x7
	.byte	0x59
	.long	0x1c0
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x14
	.string	"regno_pointer_align_length"
	.byte	0x7
	.byte	0x5f
	.long	0x1d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x14
	.string	"regno_pointer_align"
	.byte	0x7
	.byte	0x65
	.long	0x392
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x14
	.string	"regno_decl"
	.byte	0x7
	.byte	0x69
	.long	0x4ca1
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x14
	.string	"x_regno_reg_rtx"
	.byte	0x7
	.byte	0x70
	.long	0x4eb1
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x9f
	.uleb128 0x13
	.long	0x4f97
	.string	"expr_status"
	.byte	0x1c
	.byte	0x7
	.byte	0x7d
	.uleb128 0x14
	.string	"x_pending_stack_adjust"
	.byte	0x7
	.byte	0x80
	.long	0x1d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x14
	.string	"x_inhibit_defer_pop"
	.byte	0x7
	.byte	0x91
	.long	0x1d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x14
	.string	"x_stack_pointer_delta"
	.byte	0x7
	.byte	0x97
	.long	0x1d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x14
	.string	"x_saveregs_value"
	.byte	0x7
	.byte	0x9c
	.long	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x14
	.string	"x_apply_args_value"
	.byte	0x7
	.byte	0x9f
	.long	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x14
	.string	"x_forced_labels"
	.byte	0x7
	.byte	0xa2
	.long	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x14
	.string	"x_pending_chain"
	.byte	0x7
	.byte	0xa5
	.long	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x20
	.long	0x5001
	.long	.LASF27
	.byte	0x4
	.byte	0x7
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
	.uleb128 0x4
	.string	"eh_status"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x5001
	.uleb128 0x4
	.string	"stmt_status"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x5013
	.uleb128 0x3
	.byte	0x4
	.long	0x4eb7
	.uleb128 0x3
	.byte	0x4
	.long	0x4d62
	.uleb128 0x4
	.string	"varasm_status"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x5033
	.uleb128 0x4
	.string	"initial_value_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x5049
	.uleb128 0x4
	.string	"temp_slot"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x5066
	.uleb128 0x4
	.string	"machine_function"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x5078
	.uleb128 0xa
	.long	0x52c7
	.string	"language_function"
	.byte	0x64
	.byte	0x7
	.value	0x184
	.uleb128 0xb
	.string	"base"
	.byte	0x9
	.value	0x370
	.long	0x584b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.string	"x_dtor_label"
	.byte	0x9
	.value	0x372
	.long	0xd9
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xb
	.string	"x_current_class_ptr"
	.byte	0x9
	.value	0x373
	.long	0xd9
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.string	"x_current_class_ref"
	.byte	0x9
	.value	0x374
	.long	0xd9
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xb
	.string	"x_eh_spec_block"
	.byte	0x9
	.value	0x375
	.long	0xd9
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xb
	.string	"x_in_charge_parm"
	.byte	0x9
	.value	0x376
	.long	0xd9
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xb
	.string	"x_vtt_parm"
	.byte	0x9
	.value	0x377
	.long	0xd9
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xb
	.string	"x_return_value"
	.byte	0x9
	.value	0x378
	.long	0xd9
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xb
	.string	"returns_value"
	.byte	0x9
	.value	0x37a
	.long	0x1d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xb
	.string	"returns_null"
	.byte	0x9
	.value	0x37b
	.long	0x1d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xb
	.string	"returns_abnormally"
	.byte	0x9
	.value	0x37c
	.long	0x1d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xb
	.string	"in_function_try_handler"
	.byte	0x9
	.value	0x37d
	.long	0x1d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xb
	.string	"in_base_initializer"
	.byte	0x9
	.value	0x37e
	.long	0x1d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xb
	.string	"x_expanding_p"
	.byte	0x9
	.value	0x37f
	.long	0x1d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x1b
	.string	"can_throw"
	.byte	0x9
	.value	0x382
	.long	0x4c98
	.byte	0x1
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xb
	.string	"x_named_label_uses"
	.byte	0x9
	.value	0x384
	.long	0x5c28
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xb
	.string	"x_named_labels"
	.byte	0x9
	.value	0x385
	.long	0x5c41
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x19
	.long	.LASF30
	.byte	0x9
	.value	0x386
	.long	0x58ee
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xb
	.string	"x_local_names"
	.byte	0x9
	.value	0x387
	.long	0x57a7
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x19
	.long	.LASF25
	.byte	0x9
	.value	0x389
	.long	0x1c0
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xb
	.string	"unparsed_inlines"
	.byte	0x9
	.value	0x38a
	.long	0x5c57
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5091
	.uleb128 0x13
	.long	0x5303
	.string	"const_equiv_data"
	.byte	0x8
	.byte	0xb
	.byte	0x24
	.uleb128 0x14
	.string	"rtx"
	.byte	0xb
	.byte	0x32
	.long	0xaa
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x14
	.string	"age"
	.byte	0xb
	.byte	0x36
	.long	0x2ac
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x11
	.long	0x549e
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
	.uleb128 0x5
	.long	0x559a
	.string	"varray_data_tag"
	.byte	0x8
	.byte	0xb
	.byte	0x55
	.uleb128 0x21
	.string	"c"
	.byte	0xb
	.byte	0x56
	.long	0x398
	.uleb128 0x21
	.string	"uc"
	.byte	0xb
	.byte	0x58
	.long	0x559a
	.uleb128 0x21
	.string	"s"
	.byte	0xb
	.byte	0x5a
	.long	0x55aa
	.uleb128 0x21
	.string	"us"
	.byte	0xb
	.byte	0x5c
	.long	0x55ba
	.uleb128 0x21
	.string	"i"
	.byte	0xb
	.byte	0x5e
	.long	0x55ca
	.uleb128 0x21
	.string	"u"
	.byte	0xb
	.byte	0x60
	.long	0x55da
	.uleb128 0x21
	.string	"l"
	.byte	0xb
	.byte	0x62
	.long	0x55ea
	.uleb128 0x21
	.string	"ul"
	.byte	0xb
	.byte	0x64
	.long	0x55fa
	.uleb128 0x21
	.string	"hint"
	.byte	0xb
	.byte	0x66
	.long	0x560a
	.uleb128 0x21
	.string	"uhint"
	.byte	0xb
	.byte	0x68
	.long	0x561a
	.uleb128 0x21
	.string	"generic"
	.byte	0xb
	.byte	0x6a
	.long	0x562a
	.uleb128 0x21
	.string	"cptr"
	.byte	0xb
	.byte	0x6c
	.long	0x563a
	.uleb128 0x21
	.string	"rtx"
	.byte	0xb
	.byte	0x6e
	.long	0x564a
	.uleb128 0x21
	.string	"rtvec"
	.byte	0xb
	.byte	0x70
	.long	0x565a
	.uleb128 0x21
	.string	"tree"
	.byte	0xb
	.byte	0x72
	.long	0x566a
	.uleb128 0x21
	.string	"bitmap"
	.byte	0xb
	.byte	0x74
	.long	0x567a
	.uleb128 0x21
	.string	"reg"
	.byte	0xb
	.byte	0x76
	.long	0x56a2
	.uleb128 0x21
	.string	"const_equiv"
	.byte	0xb
	.byte	0x78
	.long	0x56c7
	.uleb128 0x21
	.string	"bb"
	.byte	0xb
	.byte	0x7a
	.long	0x56d7
	.uleb128 0x21
	.string	"te"
	.byte	0xb
	.byte	0x7c
	.long	0x56ff
	.byte	0x0
	.uleb128 0xd
	.long	0x55aa
	.long	0x2f0
	.uleb128 0xe
	.long	0x2c3
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x55ba
	.long	0x33b
	.uleb128 0xe
	.long	0x2c3
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x55ca
	.long	0x301
	.uleb128 0xe
	.long	0x2c3
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x55da
	.long	0x1d3
	.uleb128 0xe
	.long	0x2c3
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x55ea
	.long	0x2ac
	.uleb128 0xe
	.long	0x2c3
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x55fa
	.long	0x373
	.uleb128 0xe
	.long	0x2c3
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x560a
	.long	0x317
	.uleb128 0xe
	.long	0x2c3
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x561a
	.long	0x348
	.uleb128 0xe
	.long	0x2c3
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x562a
	.long	0x359
	.uleb128 0xe
	.long	0x2c3
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x563a
	.long	0x37f
	.uleb128 0xe
	.long	0x2c3
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x564a
	.long	0x381
	.uleb128 0xe
	.long	0x2c3
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x565a
	.long	0xaa
	.uleb128 0xe
	.long	0x2c3
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x566a
	.long	0xc7
	.uleb128 0xe
	.long	0x2c3
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x567a
	.long	0xe5
	.uleb128 0xe
	.long	0x2c3
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x568a
	.long	0x569c
	.uleb128 0xe
	.long	0x2c3
	.byte	0x0
	.byte	0x0
	.uleb128 0x4
	.string	"bitmap_head_def"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x568a
	.uleb128 0xd
	.long	0x56b2
	.long	0x56c1
	.uleb128 0xe
	.long	0x2c3
	.byte	0x0
	.byte	0x0
	.uleb128 0x4
	.string	"reg_info_def"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x56b2
	.uleb128 0xd
	.long	0x56d7
	.long	0x52cd
	.uleb128 0xe
	.long	0x2c3
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x56e7
	.long	0x56f9
	.uleb128 0xe
	.long	0x2c3
	.byte	0x0
	.byte	0x0
	.uleb128 0x4
	.string	"basic_block_def"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x56e7
	.uleb128 0xd
	.long	0x570f
	.long	0x571a
	.uleb128 0xe
	.long	0x2c3
	.byte	0x0
	.byte	0x0
	.uleb128 0x4
	.string	"elt_list"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x570f
	.uleb128 0x2
	.string	"varray_data"
	.byte	0xb
	.byte	0x7e
	.long	0x549e
	.uleb128 0x13
	.long	0x57a7
	.string	"varray_head_tag"
	.byte	0x18
	.byte	0xb
	.byte	0x81
	.uleb128 0x14
	.string	"num_elements"
	.byte	0xb
	.byte	0x82
	.long	0x2e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x14
	.string	"elements_used"
	.byte	0xb
	.byte	0x83
	.long	0x2e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x16
	.long	.LASF3
	.byte	0xb
	.byte	0x85
	.long	0x5303
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x14
	.string	"name"
	.byte	0xb
	.byte	0x86
	.long	0x1c0
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x14
	.string	"data"
	.byte	0xb
	.byte	0x87
	.long	0x5720
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x2
	.string	"varray_type"
	.byte	0xb
	.byte	0x8a
	.long	0x57ba
	.uleb128 0x3
	.byte	0x4
	.long	0x5733
	.uleb128 0xa
	.long	0x584b
	.string	"stmt_tree_s"
	.byte	0x10
	.byte	0xa
	.value	0x101
	.uleb128 0xb
	.string	"x_last_stmt"
	.byte	0xa
	.value	0x103
	.long	0xd9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.string	"x_last_expr_type"
	.byte	0xa
	.value	0x106
	.long	0xd9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.string	"x_last_expr_filename"
	.byte	0xa
	.value	0x108
	.long	0x1c0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.string	"stmts_are_full_exprs_p"
	.byte	0xa
	.value	0x117
	.long	0x1d3
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0xa
	.long	0x5896
	.string	"c_language_function"
	.byte	0x14
	.byte	0xa
	.value	0x11f
	.uleb128 0x19
	.long	.LASF31
	.byte	0xa
	.value	0x122
	.long	0x57c0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.string	"x_scope_stmt_stack"
	.byte	0xa
	.value	0x124
	.long	0xd9
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0xa
	.long	0x58ca
	.string	"c_lang_decl"
	.byte	0x4
	.byte	0xa
	.value	0x169
	.uleb128 0x1b
	.string	"declared_inline"
	.byte	0xa
	.value	0x16a
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x22
	.long	.LASF32
	.byte	0x9
	.byte	0xe4
	.long	0x58d5
	.uleb128 0x23
	.long	.LASF32
	.byte	0x1
	.uleb128 0x4
	.string	"cp_binding_level"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x58db
	.uleb128 0xf
	.string	"binding_table"
	.byte	0x9
	.value	0x103
	.long	0x590a
	.uleb128 0x3
	.byte	0x4
	.long	0x5910
	.uleb128 0x4
	.string	"binding_table_s"
	.byte	0x1
	.uleb128 0xa
	.long	0x5979
	.string	"flagged_type_tree_s"
	.byte	0xc
	.byte	0x9
	.value	0x134
	.uleb128 0xb
	.string	"t"
	.byte	0x9
	.value	0x135
	.long	0xd9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.string	"new_type_flag"
	.byte	0x9
	.value	0x136
	.long	0x1d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.string	"lookups"
	.byte	0x9
	.value	0x137
	.long	0xd9
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0xf
	.string	"flagged_type_tree"
	.byte	0x9
	.value	0x138
	.long	0x5922
	.uleb128 0xa
	.long	0x5c05
	.string	"saved_scope"
	.byte	0x6c
	.byte	0x9
	.value	0x316
	.uleb128 0xb
	.string	"old_bindings"
	.byte	0x9
	.value	0x317
	.long	0x5c05
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.string	"old_namespace"
	.byte	0x9
	.value	0x318
	.long	0xd9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.string	"decl_ns_list"
	.byte	0x9
	.value	0x319
	.long	0xd9
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.string	"class_name"
	.byte	0x9
	.value	0x31a
	.long	0xd9
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.string	"class_type"
	.byte	0x9
	.value	0x31b
	.long	0xd9
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.string	"access_specifier"
	.byte	0x9
	.value	0x31c
	.long	0xd9
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xb
	.string	"function_decl"
	.byte	0x9
	.value	0x31d
	.long	0xd9
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.string	"lang_base"
	.byte	0x9
	.value	0x31e
	.long	0x57a7
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xb
	.string	"lang_name"
	.byte	0x9
	.value	0x31f
	.long	0xd9
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xb
	.string	"template_parms"
	.byte	0x9
	.value	0x320
	.long	0xd9
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xb
	.string	"x_previous_class_type"
	.byte	0x9
	.value	0x321
	.long	0xd9
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xb
	.string	"x_previous_class_values"
	.byte	0x9
	.value	0x322
	.long	0xd9
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xb
	.string	"x_saved_tree"
	.byte	0x9
	.value	0x323
	.long	0xd9
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xb
	.string	"lookups"
	.byte	0x9
	.value	0x324
	.long	0xd9
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xb
	.string	"last_parms"
	.byte	0x9
	.value	0x325
	.long	0xd9
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xb
	.string	"x_processing_template_decl"
	.byte	0x9
	.value	0x327
	.long	0x348
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xb
	.string	"x_processing_specialization"
	.byte	0x9
	.value	0x328
	.long	0x1d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xb
	.string	"x_processing_explicit_instantiation"
	.byte	0x9
	.value	0x329
	.long	0x1d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xb
	.string	"need_pop_function_context"
	.byte	0x9
	.value	0x32a
	.long	0x1d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x19
	.long	.LASF31
	.byte	0x9
	.value	0x32c
	.long	0x57c0
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xb
	.string	"class_bindings"
	.byte	0x9
	.value	0x32e
	.long	0x58ee
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x19
	.long	.LASF30
	.byte	0x9
	.value	0x32f
	.long	0x58ee
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xb
	.string	"prev"
	.byte	0x9
	.value	0x331
	.long	0x5c0b
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x58ca
	.uleb128 0x3
	.byte	0x4
	.long	0x5993
	.uleb128 0x4
	.string	"named_label_use_list"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x5c11
	.uleb128 0x4
	.string	"named_label_list"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x5c2e
	.uleb128 0x4
	.string	"unparsed_text"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x5c47
	.uleb128 0x24
	.long	0x5c97
	.string	"languages"
	.byte	0x4
	.byte	0x9
	.value	0x3f1
	.uleb128 0x12
	.string	"lang_c"
	.sleb128 0
	.uleb128 0x12
	.string	"lang_cplusplus"
	.sleb128 1
	.uleb128 0x12
	.string	"lang_java"
	.sleb128 2
	.byte	0x0
	.uleb128 0xa
	.long	0x5db6
	.string	"lang_type_header"
	.byte	0x4
	.byte	0x9
	.value	0x464
	.uleb128 0x1b
	.string	"is_lang_type_class"
	.byte	0x9
	.value	0x465
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1b
	.string	"has_type_conversion"
	.byte	0x9
	.value	0x467
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1b
	.string	"has_init_ref"
	.byte	0x9
	.value	0x468
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1b
	.string	"has_default_ctor"
	.byte	0x9
	.value	0x469
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1b
	.string	"uses_multiple_inheritance"
	.byte	0x9
	.value	0x46a
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1b
	.string	"const_needs_init"
	.byte	0x9
	.value	0x46b
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1b
	.string	"ref_needs_init"
	.byte	0x9
	.value	0x46c
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1b
	.string	"has_const_assign_ref"
	.byte	0x9
	.value	0x46d
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0xa
	.long	0x63a4
	.string	"lang_type_class"
	.byte	0x4c
	.byte	0x9
	.value	0x47e
	.uleb128 0xb
	.string	"h"
	.byte	0x9
	.value	0x47f
	.long	0x5c97
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.string	"align"
	.byte	0x9
	.value	0x481
	.long	0x2f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1b
	.string	"has_mutable"
	.byte	0x9
	.value	0x483
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1b
	.string	"com_interface"
	.byte	0x9
	.value	0x484
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1b
	.string	"non_pod_class"
	.byte	0x9
	.value	0x485
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1b
	.string	"nearly_empty_p"
	.byte	0x9
	.value	0x486
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1c
	.long	.LASF21
	.byte	0x9
	.value	0x487
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1b
	.string	"has_assign_ref"
	.byte	0x9
	.value	0x488
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1b
	.string	"has_new"
	.byte	0x9
	.value	0x489
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1b
	.string	"has_array_new"
	.byte	0x9
	.value	0x48a
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1b
	.string	"gets_delete"
	.byte	0x9
	.value	0x48c
	.long	0x2ac
	.byte	0x4
	.byte	0x2
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1b
	.string	"has_call_overloaded"
	.byte	0x9
	.value	0x48d
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1b
	.string	"has_array_ref_overloaded"
	.byte	0x9
	.value	0x48e
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1b
	.string	"has_arrow_overloaded"
	.byte	0x9
	.value	0x48f
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1b
	.string	"interface_only"
	.byte	0x9
	.value	0x490
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1b
	.string	"interface_unknown"
	.byte	0x9
	.value	0x491
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1b
	.string	"marks"
	.byte	0x9
	.value	0x493
	.long	0x2ac
	.byte	0x4
	.byte	0x6
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1b
	.string	"vec_new_uses_cookie"
	.byte	0x9
	.value	0x494
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1b
	.string	"declared_class"
	.byte	0x9
	.value	0x495
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1b
	.string	"being_defined"
	.byte	0x9
	.value	0x497
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1b
	.string	"redefined"
	.byte	0x9
	.value	0x498
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1b
	.string	"debug_requested"
	.byte	0x9
	.value	0x499
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1c
	.long	.LASF33
	.byte	0x9
	.value	0x49a
	.long	0x2ac
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1b
	.string	"got_semicolon"
	.byte	0x9
	.value	0x49b
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1b
	.string	"ptrmemfunc_flag"
	.byte	0x9
	.value	0x49c
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1b
	.string	"was_anonymous"
	.byte	0x9
	.value	0x49d
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1b
	.string	"has_real_assign_ref"
	.byte	0x9
	.value	0x49f
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1b
	.string	"has_const_init_ref"
	.byte	0x9
	.value	0x4a0
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1b
	.string	"has_complex_init_ref"
	.byte	0x9
	.value	0x4a1
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1b
	.string	"has_complex_assign_ref"
	.byte	0x9
	.value	0x4a2
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1b
	.string	"has_abstract_assign_ref"
	.byte	0x9
	.value	0x4a3
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1b
	.string	"non_aggregate"
	.byte	0x9
	.value	0x4a4
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1b
	.string	"is_partial_instantiation"
	.byte	0x9
	.value	0x4a5
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1b
	.string	"java_interface"
	.byte	0x9
	.value	0x4a6
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1b
	.string	"anon_aggr"
	.byte	0x9
	.value	0x4a8
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1b
	.string	"non_zero_init"
	.byte	0x9
	.value	0x4a9
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1b
	.string	"empty_p"
	.byte	0x9
	.value	0x4aa
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1b
	.string	"contains_empty_class_p"
	.byte	0x9
	.value	0x4ab
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1b
	.string	"has_implicit_copy_constructor"
	.byte	0x9
	.value	0x4b7
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1b
	.string	"dummy"
	.byte	0x9
	.value	0x4b8
	.long	0x2ac
	.byte	0x4
	.byte	0x4
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.string	"primary_base"
	.byte	0x9
	.value	0x4bd
	.long	0xd9
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.string	"vfields"
	.byte	0x9
	.value	0x4be
	.long	0xd9
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.string	"vcall_indices"
	.byte	0x9
	.value	0x4bf
	.long	0xd9
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xb
	.string	"vtables"
	.byte	0x9
	.value	0x4c0
	.long	0xd9
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.string	"typeinfo_var"
	.byte	0x9
	.value	0x4c1
	.long	0xd9
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xb
	.string	"vbases"
	.byte	0x9
	.value	0x4c2
	.long	0xd9
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xb
	.string	"nested_udts"
	.byte	0x9
	.value	0x4c3
	.long	0x58f4
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xb
	.string	"as_base"
	.byte	0x9
	.value	0x4c4
	.long	0xd9
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xb
	.string	"pure_virtuals"
	.byte	0x9
	.value	0x4c5
	.long	0xd9
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xb
	.string	"friend_classes"
	.byte	0x9
	.value	0x4c6
	.long	0xd9
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xb
	.string	"methods"
	.byte	0x9
	.value	0x4c7
	.long	0xd9
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xb
	.string	"key_method"
	.byte	0x9
	.value	0x4c8
	.long	0xd9
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xb
	.string	"decl_list"
	.byte	0x9
	.value	0x4c9
	.long	0xd9
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x19
	.long	.LASF34
	.byte	0x9
	.value	0x4ca
	.long	0xd9
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x19
	.long	.LASF35
	.byte	0x9
	.value	0x4cb
	.long	0xd9
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xb
	.string	"copy_constructor"
	.byte	0x9
	.value	0x4cf
	.long	0xd9
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.byte	0x0
	.uleb128 0xa
	.long	0x63de
	.string	"lang_type_ptrmem"
	.byte	0x8
	.byte	0x9
	.value	0x4d4
	.uleb128 0xb
	.string	"h"
	.byte	0x9
	.value	0x4d5
	.long	0x5c97
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.string	"record"
	.byte	0x9
	.value	0x4d6
	.long	0xd9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x1d
	.long	0x6417
	.string	"lang_type_u"
	.byte	0x4c
	.byte	0x9
	.value	0x4dc
	.uleb128 0x7
	.string	"h"
	.byte	0x9
	.value	0x4dd
	.long	0x5c97
	.uleb128 0x7
	.string	"c"
	.byte	0x9
	.value	0x4de
	.long	0x5db6
	.uleb128 0x7
	.string	"ptrmem"
	.byte	0x9
	.value	0x4df
	.long	0x63a4
	.byte	0x0
	.uleb128 0x1d
	.long	0x6447
	.string	"lang_decl_u"
	.byte	0x4
	.byte	0x9
	.value	0x722
	.uleb128 0x6
	.long	.LASF34
	.byte	0x9
	.value	0x725
	.long	0xd9
	.uleb128 0x7
	.string	"level"
	.byte	0x9
	.value	0x728
	.long	0x58ee
	.byte	0x0
	.uleb128 0x1d
	.long	0x6498
	.string	"lang_decl_u2"
	.byte	0x4
	.byte	0x9
	.value	0x72b
	.uleb128 0x7
	.string	"access"
	.byte	0x9
	.value	0x72d
	.long	0xd9
	.uleb128 0x7
	.string	"discriminator"
	.byte	0x9
	.value	0x730
	.long	0x1d3
	.uleb128 0x7
	.string	"vcall_offset"
	.byte	0x9
	.value	0x734
	.long	0xd9
	.byte	0x0
	.uleb128 0xa
	.long	0x6774
	.string	"lang_decl_flags"
	.byte	0x10
	.byte	0x9
	.value	0x703
	.uleb128 0xb
	.string	"base"
	.byte	0x9
	.value	0x704
	.long	0x5896
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1c
	.long	.LASF26
	.byte	0x9
	.value	0x706
	.long	0x5c5d
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1b
	.string	"operator_attr"
	.byte	0x9
	.value	0x708
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1b
	.string	"constructor_attr"
	.byte	0x9
	.value	0x709
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1b
	.string	"destructor_attr"
	.byte	0x9
	.value	0x70a
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1b
	.string	"friend_attr"
	.byte	0x9
	.value	0x70b
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1b
	.string	"static_function"
	.byte	0x9
	.value	0x70c
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1b
	.string	"pure_virtual"
	.byte	0x9
	.value	0x70d
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1b
	.string	"has_in_charge_parm_p"
	.byte	0x9
	.value	0x70e
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1b
	.string	"has_vtt_parm_p"
	.byte	0x9
	.value	0x70f
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1b
	.string	"deferred"
	.byte	0x9
	.value	0x711
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1c
	.long	.LASF33
	.byte	0x9
	.value	0x712
	.long	0x2ac
	.byte	0x4
	.byte	0x2
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1b
	.string	"nonconverting"
	.byte	0x9
	.value	0x713
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1b
	.string	"not_really_extern"
	.byte	0x9
	.value	0x714
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1b
	.string	"needs_final_overrider"
	.byte	0x9
	.value	0x715
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1b
	.string	"initialized_in_class"
	.byte	0x9
	.value	0x716
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1b
	.string	"assignment_operator_p"
	.byte	0x9
	.value	0x717
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1b
	.string	"global_ctor_p"
	.byte	0x9
	.value	0x719
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1b
	.string	"global_dtor_p"
	.byte	0x9
	.value	0x71a
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1b
	.string	"anticipated_p"
	.byte	0x9
	.value	0x71b
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1b
	.string	"template_conv_p"
	.byte	0x9
	.value	0x71c
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1b
	.string	"u1sel"
	.byte	0x9
	.value	0x71d
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1b
	.string	"u2sel"
	.byte	0x9
	.value	0x71e
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1b
	.string	"can_be_full"
	.byte	0x9
	.value	0x71f
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1b
	.string	"unused"
	.byte	0x9
	.value	0x720
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.string	"u"
	.byte	0x9
	.value	0x729
	.long	0x6417
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.string	"u2"
	.byte	0x9
	.value	0x735
	.long	0x6447
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x1d
	.long	0x67dd
	.string	"lang_decl_u3"
	.byte	0x4
	.byte	0x9
	.value	0x75c
	.uleb128 0x7
	.string	"sorted_fields"
	.byte	0x9
	.value	0x75d
	.long	0xd9
	.uleb128 0x7
	.string	"pending_inline_info"
	.byte	0x9
	.value	0x75e
	.long	0x5c57
	.uleb128 0x7
	.string	"saved_language_function"
	.byte	0x9
	.value	0x760
	.long	0x52c7
	.byte	0x0
	.uleb128 0xa
	.long	0x68b8
	.string	"full_lang_decl"
	.byte	0x24
	.byte	0x9
	.value	0x73f
	.uleb128 0x19
	.long	.LASF35
	.byte	0x9
	.value	0x740
	.long	0xd9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x19
	.long	.LASF23
	.byte	0x9
	.value	0x745
	.long	0xd9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.string	"cloned_function"
	.byte	0x9
	.value	0x748
	.long	0xd9
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.string	"delta"
	.byte	0x9
	.value	0x74c
	.long	0x348
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.string	"named_return_object"
	.byte	0x9
	.value	0x751
	.long	0xd9
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xb
	.string	"operator_code"
	.byte	0x9
	.value	0x756
	.long	0x645
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x1b
	.string	"u3sel"
	.byte	0x9
	.value	0x758
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x1b
	.string	"pending_inline_p"
	.byte	0x9
	.value	0x759
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xb
	.string	"u"
	.byte	0x9
	.value	0x761
	.long	0x6774
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0x1d
	.long	0x68d9
	.string	"lang_decl_u4"
	.byte	0x24
	.byte	0x9
	.value	0x73d
	.uleb128 0x7
	.string	"f"
	.byte	0x9
	.value	0x762
	.long	0x67dd
	.byte	0x0
	.uleb128 0x25
	.long	0x6923
	.byte	0x1
	.string	"error_not_base_type"
	.byte	0x1
	.byte	0x33
	.byte	0x1
	.long	0xd9
	.long	.LFB15
	.long	.LFE15
	.long	.LLST0
	.uleb128 0x26
	.long	.LASF36
	.byte	0x1
	.byte	0x32
	.long	0xd9
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x26
	.long	.LASF3
	.byte	0x1
	.byte	0x32
	.long	0xd9
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x25
	.long	0x6976
	.byte	0x1
	.string	"binfo_or_else"
	.byte	0x1
	.byte	0x3d
	.byte	0x1
	.long	0xd9
	.long	.LFB16
	.long	.LFE16
	.long	.LLST1
	.uleb128 0x27
	.string	"base"
	.byte	0x1
	.byte	0x3c
	.long	0xd9
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x26
	.long	.LASF3
	.byte	0x1
	.byte	0x3c
	.long	0xd9
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x28
	.long	.LASF22
	.byte	0x1
	.byte	0x3e
	.long	0xd9
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x29
	.long	0x69e1
	.byte	0x1
	.string	"readonly_error"
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.long	.LFB17
	.long	.LFE17
	.long	.LLST2
	.uleb128 0x27
	.string	"arg"
	.byte	0x1
	.byte	0x4e
	.long	0xd9
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x26
	.long	.LASF1
	.byte	0x1
	.byte	0x4f
	.long	0x1c0
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x27
	.string	"soft"
	.byte	0x1
	.byte	0x50
	.long	0x1d3
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2a
	.string	"fmt"
	.byte	0x1
	.byte	0x52
	.long	0x1c0
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2a
	.string	"fn"
	.byte	0x1
	.byte	0x53
	.long	0x69ee
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2b
	.long	0x69ee
	.byte	0x1
	.uleb128 0x2c
	.long	0x1c0
	.uleb128 0x2d
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x69e1
	.uleb128 0x25
	.long	0x6a5b
	.byte	0x1
	.string	"abstract_virtuals_error"
	.byte	0x1
	.byte	0x84
	.byte	0x1
	.long	0x1d3
	.long	.LFB18
	.long	.LFE18
	.long	.LLST3
	.uleb128 0x26
	.long	.LASF2
	.byte	0x1
	.byte	0x82
	.long	0xd9
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x26
	.long	.LASF3
	.byte	0x1
	.byte	0x83
	.long	0xd9
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2a
	.string	"u"
	.byte	0x1
	.byte	0x85
	.long	0xd9
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2a
	.string	"tu"
	.byte	0x1
	.byte	0x86
	.long	0xd9
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x29
	.long	0x6b1c
	.byte	0x1
	.string	"cxx_incomplete_type_diagnostic"
	.byte	0x1
	.byte	0xc8
	.byte	0x1
	.long	.LFB19
	.long	.LFE19
	.long	.LLST4
	.uleb128 0x26
	.long	.LASF15
	.byte	0x1
	.byte	0xc5
	.long	0xd9
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x26
	.long	.LASF3
	.byte	0x1
	.byte	0xc6
	.long	0xd9
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x26
	.long	.LASF37
	.byte	0x1
	.byte	0xc7
	.long	0x1d3
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x28
	.long	.LASF2
	.byte	0x1
	.byte	0xc9
	.long	0x1d3
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2a
	.string	"p_msg"
	.byte	0x1
	.byte	0xca
	.long	0x69ee
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2a
	.string	"p_msg_at"
	.byte	0x1
	.byte	0xcb
	.long	0x69ee
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x2e
	.string	"retry"
	.byte	0x1
	.value	0x100
	.long	.L87
	.uleb128 0x2e
	.string	"bad_member"
	.byte	0x1
	.value	0x110
	.long	.L95
	.uleb128 0x2f
	.long	.LASF38
	.long	0x7396
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.13471
	.byte	0x0
	.uleb128 0x30
	.long	0x6b6b
	.byte	0x1
	.string	"cxx_incomplete_type_error"
	.byte	0x1
	.value	0x125
	.byte	0x1
	.long	.LFB20
	.long	.LFE20
	.long	.LLST5
	.uleb128 0x31
	.long	.LASF15
	.byte	0x1
	.value	0x123
	.long	0xd9
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.long	.LASF3
	.byte	0x1
	.value	0x124
	.long	0xd9
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x32
	.long	0x6be4
	.byte	0x1
	.string	"store_init_value"
	.byte	0x1
	.value	0x140
	.byte	0x1
	.long	0xd9
	.long	.LFB21
	.long	.LFE21
	.long	.LLST6
	.uleb128 0x31
	.long	.LASF2
	.byte	0x1
	.value	0x13f
	.long	0xd9
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.string	"init"
	.byte	0x1
	.value	0x13f
	.long	0xd9
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x34
	.long	.LASF15
	.byte	0x1
	.value	0x141
	.long	0xd9
	.byte	0x2
	.byte	0x75
	.sleb128 -12
	.uleb128 0x34
	.long	.LASF3
	.byte	0x1
	.value	0x141
	.long	0xd9
	.byte	0x2
	.byte	0x75
	.sleb128 -8
	.uleb128 0x2f
	.long	.LASF38
	.long	0x7381
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.13547
	.byte	0x0
	.uleb128 0x32
	.long	0x6d01
	.byte	0x1
	.string	"digest_init"
	.byte	0x1
	.value	0x19d
	.byte	0x1
	.long	0xd9
	.long	.LFB22
	.long	.LFE22
	.long	.LLST7
	.uleb128 0x31
	.long	.LASF3
	.byte	0x1
	.value	0x19c
	.long	0xd9
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.string	"init"
	.byte	0x1
	.value	0x19c
	.long	0xd9
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x33
	.string	"tail"
	.byte	0x1
	.value	0x19c
	.long	0x4ca1
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x35
	.string	"code"
	.byte	0x1
	.value	0x19e
	.long	0x645
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x35
	.string	"element"
	.byte	0x1
	.value	0x19f
	.long	0xd9
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x35
	.string	"old_tail_contents"
	.byte	0x1
	.value	0x1a0
	.long	0xd9
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x35
	.string	"raw_constructor"
	.byte	0x1
	.value	0x1a2
	.long	0x1d3
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x36
	.long	0x6ce5
	.long	.LBB2
	.long	.LBE2
	.uleb128 0x35
	.string	"typ1"
	.byte	0x1
	.value	0x1d4
	.long	0xd9
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x37
	.long	.LBB3
	.long	.LBE3
	.uleb128 0x34
	.long	.LASF1
	.byte	0x1
	.value	0x1e1
	.long	0xd9
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x37
	.long	.LBB4
	.long	.LBE4
	.uleb128 0x35
	.string	"size"
	.byte	0x1
	.value	0x1f6
	.long	0x1d3
	.byte	0x2
	.byte	0x75
	.sleb128 -40
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x37
	.long	.LBB5
	.long	.LBE5
	.uleb128 0x35
	.string	"flags"
	.byte	0x1
	.value	0x241
	.long	0x1d3
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x38
	.long	0x6f0b
	.string	"process_init_constructor"
	.byte	0x1
	.value	0x261
	.byte	0x1
	.long	0xd9
	.long	.LFB23
	.long	.LFE23
	.long	.LLST8
	.uleb128 0x31
	.long	.LASF3
	.byte	0x1
	.value	0x260
	.long	0xd9
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.string	"init"
	.byte	0x1
	.value	0x260
	.long	0xd9
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x33
	.string	"elts"
	.byte	0x1
	.value	0x260
	.long	0x4ca1
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x35
	.string	"tail"
	.byte	0x1
	.value	0x262
	.long	0xd9
	.byte	0x3
	.byte	0x75
	.sleb128 -68
	.uleb128 0x35
	.string	"members"
	.byte	0x1
	.value	0x265
	.long	0xd9
	.byte	0x2
	.byte	0x75
	.sleb128 -64
	.uleb128 0x35
	.string	"next1"
	.byte	0x1
	.value	0x266
	.long	0xd9
	.byte	0x2
	.byte	0x75
	.sleb128 -60
	.uleb128 0x35
	.string	"result"
	.byte	0x1
	.value	0x267
	.long	0xd9
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x35
	.string	"allconstant"
	.byte	0x1
	.value	0x268
	.long	0x1d3
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x35
	.string	"allsimple"
	.byte	0x1
	.value	0x269
	.long	0x1d3
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x35
	.string	"erroneous"
	.byte	0x1
	.value	0x26a
	.long	0x1d3
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x36
	.long	0x6e4f
	.long	.LBB6
	.long	.LBE6
	.uleb128 0x35
	.string	"len"
	.byte	0x1
	.value	0x27e
	.long	0x373
	.byte	0x2
	.byte	0x75
	.sleb128 -56
	.uleb128 0x35
	.string	"i"
	.byte	0x1
	.value	0x27f
	.long	0x1d3
	.byte	0x2
	.byte	0x75
	.sleb128 -52
	.uleb128 0x36
	.long	0x6e33
	.long	.LBB7
	.long	.LBE7
	.uleb128 0x35
	.string	"domain"
	.byte	0x1
	.value	0x283
	.long	0xd9
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x37
	.long	.LBB8
	.long	.LBE8
	.uleb128 0x35
	.string	"tail1"
	.byte	0x1
	.value	0x29c
	.long	0xd9
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.byte	0x0
	.byte	0x0
	.uleb128 0x36
	.long	0x6e89
	.long	.LBB9
	.long	.LBE9
	.uleb128 0x35
	.string	"field"
	.byte	0x1
	.value	0x2d9
	.long	0xd9
	.byte	0x2
	.byte	0x75
	.sleb128 -48
	.uleb128 0x37
	.long	.LBB10
	.long	.LBE10
	.uleb128 0x35
	.string	"tail1"
	.byte	0x1
	.value	0x305
	.long	0xd9
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.byte	0x0
	.byte	0x0
	.uleb128 0x36
	.long	0x6efa
	.long	.LBB11
	.long	.LBE11
	.uleb128 0x35
	.string	"field"
	.byte	0x1
	.value	0x353
	.long	0xd9
	.byte	0x2
	.byte	0x75
	.sleb128 -44
	.uleb128 0x36
	.long	0x6ede
	.long	.LBB12
	.long	.LBE12
	.uleb128 0x35
	.string	"win"
	.byte	0x1
	.value	0x35d
	.long	0x1d3
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x37
	.long	.LBB13
	.long	.LBE13
	.uleb128 0x35
	.string	"temp"
	.byte	0x1
	.value	0x366
	.long	0xd9
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x37
	.long	.LBB14
	.long	.LBE14
	.uleb128 0x35
	.string	"tail1"
	.byte	0x1
	.value	0x37e
	.long	0xd9
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
	.long	.LASF38
	.long	0x736c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.13863
	.byte	0x0
	.uleb128 0x32
	.long	0x6f79
	.byte	0x1
	.string	"build_scoped_ref"
	.byte	0x1
	.value	0x3cb
	.byte	0x1
	.long	0xd9
	.long	.LFB24
	.long	.LFE24
	.long	.LLST9
	.uleb128 0x33
	.string	"datum"
	.byte	0x1
	.value	0x3c8
	.long	0xd9
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.long	.LASF36
	.byte	0x1
	.value	0x3c9
	.long	0xd9
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x33
	.string	"binfo_p"
	.byte	0x1
	.value	0x3ca
	.long	0x4ca1
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x34
	.long	.LASF22
	.byte	0x1
	.value	0x3cc
	.long	0xd9
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x32
	.long	0x7001
	.byte	0x1
	.string	"build_x_arrow"
	.byte	0x1
	.value	0x3eb
	.byte	0x1
	.long	0xd9
	.long	.LFB25
	.long	.LFE25
	.long	.LLST10
	.uleb128 0x33
	.string	"datum"
	.byte	0x1
	.value	0x3ea
	.long	0xd9
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x35
	.string	"types_memoized"
	.byte	0x1
	.value	0x3ec
	.long	0xd9
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x35
	.string	"rval"
	.byte	0x1
	.value	0x3ed
	.long	0xd9
	.byte	0x2
	.byte	0x75
	.sleb128 -24
	.uleb128 0x34
	.long	.LASF3
	.byte	0x1
	.value	0x3ee
	.long	0xd9
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x35
	.string	"last_rval"
	.byte	0x1
	.value	0x3ef
	.long	0xd9
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x32
	.long	0x70b5
	.byte	0x1
	.string	"build_m_component_ref"
	.byte	0x1
	.value	0x43d
	.byte	0x1
	.long	0xd9
	.long	.LFB26
	.long	.LFE26
	.long	.LLST11
	.uleb128 0x33
	.string	"datum"
	.byte	0x1
	.value	0x43c
	.long	0xd9
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.string	"component"
	.byte	0x1
	.value	0x43c
	.long	0xd9
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x34
	.long	.LASF3
	.byte	0x1
	.value	0x43e
	.long	0xd9
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x35
	.string	"objtype"
	.byte	0x1
	.value	0x43f
	.long	0xd9
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x35
	.string	"field_type"
	.byte	0x1
	.value	0x440
	.long	0xd9
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x35
	.string	"type_quals"
	.byte	0x1
	.value	0x441
	.long	0x1d3
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x34
	.long	.LASF22
	.byte	0x1
	.value	0x442
	.long	0xd9
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x32
	.long	0x7115
	.byte	0x1
	.string	"build_functional_cast"
	.byte	0x1
	.value	0x48f
	.byte	0x1
	.long	0xd9
	.long	.LFB27
	.long	.LFE27
	.long	.LLST12
	.uleb128 0x33
	.string	"exp"
	.byte	0x1
	.value	0x48d
	.long	0xd9
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.string	"parms"
	.byte	0x1
	.value	0x48e
	.long	0xd9
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x34
	.long	.LASF3
	.byte	0x1
	.value	0x492
	.long	0xd9
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x30
	.long	0x7161
	.byte	0x1
	.string	"check_for_new_type"
	.byte	0x1
	.value	0x4e7
	.byte	0x1
	.long	.LFB28
	.long	.LFE28
	.long	.LLST13
	.uleb128 0x31
	.long	.LASF1
	.byte	0x1
	.value	0x4e5
	.long	0x1c0
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.string	"inptree"
	.byte	0x1
	.value	0x4e6
	.long	0x5979
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x32
	.long	0x7236
	.byte	0x1
	.string	"add_exception_specifier"
	.byte	0x1
	.value	0x4f6
	.byte	0x1
	.long	0xd9
	.long	.LFB29
	.long	.LFE29
	.long	.LLST14
	.uleb128 0x33
	.string	"list"
	.byte	0x1
	.value	0x4f4
	.long	0xd9
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.string	"spec"
	.byte	0x1
	.value	0x4f4
	.long	0xd9
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x33
	.string	"complain"
	.byte	0x1
	.value	0x4f5
	.long	0x1d3
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x35
	.string	"ok"
	.byte	0x1
	.value	0x4f7
	.long	0x1d3
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x35
	.string	"core"
	.byte	0x1
	.value	0x4f8
	.long	0xd9
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x35
	.string	"is_ptr"
	.byte	0x1
	.value	0x4f9
	.long	0x1d3
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x34
	.long	.LASF37
	.byte	0x1
	.value	0x4fa
	.long	0x1d3
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x36
	.long	0x7225
	.long	.LBB15
	.long	.LBE15
	.uleb128 0x35
	.string	"probe"
	.byte	0x1
	.value	0x51c
	.long	0xd9
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2f
	.long	.LASF38
	.long	0x7357
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.14557
	.byte	0x0
	.uleb128 0x32
	.long	0x72d5
	.byte	0x1
	.string	"merge_exception_specifiers"
	.byte	0x1
	.value	0x533
	.byte	0x1
	.long	0xd9
	.long	.LFB30
	.long	.LFE30
	.long	.LLST15
	.uleb128 0x33
	.string	"list"
	.byte	0x1
	.value	0x532
	.long	0xd9
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.string	"add"
	.byte	0x1
	.value	0x532
	.long	0xd9
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x37
	.long	.LBB16
	.long	.LBE16
	.uleb128 0x35
	.string	"orig_list"
	.byte	0x1
	.value	0x53c
	.long	0xd9
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x37
	.long	.LBB17
	.long	.LBE17
	.uleb128 0x35
	.string	"spec"
	.byte	0x1
	.value	0x540
	.long	0xd9
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x35
	.string	"probe"
	.byte	0x1
	.value	0x541
	.long	0xd9
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x30
	.long	0x7357
	.byte	0x1
	.string	"require_complete_eh_spec_types"
	.byte	0x1
	.value	0x55a
	.byte	0x1
	.long	.LFB31
	.long	.LFE31
	.long	.LLST16
	.uleb128 0x33
	.string	"fntype"
	.byte	0x1
	.value	0x559
	.long	0xd9
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.long	.LASF2
	.byte	0x1
	.value	0x559
	.long	0xd9
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x35
	.string	"raises"
	.byte	0x1
	.value	0x55b
	.long	0xd9
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x37
	.long	.LBB18
	.long	.LBE18
	.uleb128 0x34
	.long	.LASF3
	.byte	0x1
	.value	0x562
	.long	0xd9
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x8
	.long	0x3a8
	.uleb128 0xd
	.long	0x736c
	.long	0x1cb
	.uleb128 0xe
	.long	0x2c3
	.byte	0x18
	.byte	0x0
	.uleb128 0x8
	.long	0x735c
	.uleb128 0xd
	.long	0x7381
	.long	0x1cb
	.uleb128 0xe
	.long	0x2c3
	.byte	0x10
	.byte	0x0
	.uleb128 0x8
	.long	0x7371
	.uleb128 0xd
	.long	0x7396
	.long	0x1cb
	.uleb128 0xe
	.long	0x2c3
	.byte	0x1e
	.byte	0x0
	.uleb128 0x8
	.long	0x7386
	.uleb128 0xd
	.long	0x73ab
	.long	0x2f0
	.uleb128 0xe
	.long	0x2c3
	.byte	0x35
	.byte	0x0
	.uleb128 0x39
	.string	"mode_size"
	.byte	0x6
	.byte	0x59
	.long	0x73be
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.long	0x739b
	.uleb128 0x39
	.string	"mode_unit_size"
	.byte	0x6
	.byte	0x5e
	.long	0x73db
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.long	0x739b
	.uleb128 0xd
	.long	0x73f0
	.long	0xd9
	.uleb128 0xe
	.long	0x2c3
	.byte	0x3f
	.byte	0x0
	.uleb128 0x3a
	.string	"global_trees"
	.byte	0x3
	.value	0x8ee
	.long	0x73e0
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.long	0x7417
	.long	0xd9
	.uleb128 0xe
	.long	0x2c3
	.byte	0xa
	.byte	0x0
	.uleb128 0x3a
	.string	"integer_types"
	.byte	0x3
	.value	0x95f
	.long	0x7407
	.byte	0x1
	.byte	0x1
	.uleb128 0x3a
	.string	"warn_missing_braces"
	.byte	0xa
	.value	0x1c8
	.long	0x1d3
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.long	0x745d
	.long	0xd9
	.uleb128 0xe
	.long	0x2c3
	.byte	0x49
	.byte	0x0
	.uleb128 0x3a
	.string	"cp_global_trees"
	.byte	0x9
	.value	0x28f
	.long	0x744d
	.byte	0x1
	.byte	0x1
	.uleb128 0x3a
	.string	"scope_chain"
	.byte	0x9
	.value	0x368
	.long	0x5c0b
	.byte	0x1
	.byte	0x1
	.uleb128 0x39
	.string	"extra_warnings"
	.byte	0xe
	.byte	0x5f
	.long	0x1d3
	.byte	0x1
	.byte	0x1
	.uleb128 0x39
	.string	"pedantic"
	.byte	0xe
	.byte	0xe3
	.long	0x1d3
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
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x1b
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
	.uleb128 0x13
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x24
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x27
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x2c
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x2d
	.uleb128 0x18
	.byte	0x0
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
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0xc
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
	.uleb128 0x36
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
	.uleb128 0x37
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
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
	.uleb128 0x3a
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
	.long	0x19d
	.value	0x2
	.long	.Ldebug_info0
	.long	0x74b8
	.long	0x68d9
	.string	"error_not_base_type"
	.long	0x6923
	.string	"binfo_or_else"
	.long	0x6976
	.string	"readonly_error"
	.long	0x69f4
	.string	"abstract_virtuals_error"
	.long	0x6a5b
	.string	"cxx_incomplete_type_diagnostic"
	.long	0x6b1c
	.string	"cxx_incomplete_type_error"
	.long	0x6b6b
	.string	"store_init_value"
	.long	0x6be4
	.string	"digest_init"
	.long	0x6f0b
	.string	"build_scoped_ref"
	.long	0x6f79
	.string	"build_x_arrow"
	.long	0x7001
	.string	"build_m_component_ref"
	.long	0x70b5
	.string	"build_functional_cast"
	.long	0x7115
	.string	"check_for_new_type"
	.long	0x7161
	.string	"add_exception_specifier"
	.long	0x7236
	.string	"merge_exception_specifiers"
	.long	0x72d5
	.string	"require_complete_eh_spec_types"
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
.LASF25:
	.string	"cannot_inline"
.LASF6:
	.string	"lang_flag_0"
.LASF8:
	.string	"lang_flag_2"
.LASF10:
	.string	"lang_flag_4"
.LASF12:
	.string	"lang_flag_6"
.LASF28:
	.string	"sequence_stack"
.LASF1:
	.string	"string"
.LASF30:
	.string	"bindings"
.LASF22:
	.string	"binfo"
.LASF0:
	.string	"common"
.LASF24:
	.string	"lang_specific"
.LASF29:
	.string	"sequence_rtl_expr"
.LASF32:
	.string	"cxx_saved_binding"
.LASF35:
	.string	"befriending_classes"
.LASF27:
	.string	"function_frequency"
.LASF7:
	.string	"lang_flag_1"
.LASF9:
	.string	"lang_flag_3"
.LASF13:
	.string	"lang_flag_7"
.LASF36:
	.string	"basetype"
.LASF4:
	.string	"unsigned int"
.LASF17:
	.string	"abstract_origin"
.LASF20:
	.string	"pointer_depth"
.LASF33:
	.string	"use_template"
.LASF21:
	.string	"user_align"
.LASF18:
	.string	"size_unit"
.LASF37:
	.string	"diag_type"
.LASF3:
	.string	"type"
.LASF26:
	.string	"language"
.LASF15:
	.string	"value"
.LASF5:
	.string	"built_in_class"
.LASF11:
	.string	"lang_flag_5"
.LASF16:
	.string	"abstract_flag"
.LASF31:
	.string	"x_stmt_tree"
.LASF23:
	.string	"context"
.LASF34:
	.string	"template_info"
.LASF38:
	.string	"__FUNCTION__"
.LASF14:
	.string	"ht_identifier"
.LASF19:
	.string	"attributes"
.LASF2:
	.string	"decl"
	.ident	"GCC: (GNU) 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.section	.text.__i686.get_pc_thunk.bx,"axG",@progbits,__i686.get_pc_thunk.bx,comdat
.globl __i686.get_pc_thunk.bx
	.hidden	__i686.get_pc_thunk.bx
	.type	__i686.get_pc_thunk.bx, @function
__i686.get_pc_thunk.bx:
	movl	(%esp), %ebx
	ret
	.section	.note.GNU-stack,"",@progbits
