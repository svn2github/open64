	.file	"genflags.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
	.type	max_operand_1, @function
max_operand_1:
.LFB15:
	.file 1 "../../../kgccfe/gnu/genflags.c"
	.loc 1 58 0
	pushl	%ebp
.LCFI0:
	movl	%esp, %ebp
.LCFI1:
	pushl	%ebx
.LCFI2:
	subl	$44, %esp
.LCFI3:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 64 0
	cmpl	$0, 8(%ebp)
	je	.L18
	.loc 1 67 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -24(%ebp)
	.loc 1 69 0
	cmpl	$5, -24(%ebp)
	je	.L4
	cmpl	$8, -24(%ebp)
	je	.L4
	cmpl	$9, -24(%ebp)
	jne	.L7
.L4:
	.loc 1 71 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	max_opno@GOTOFF(%ebx), %edx
	movl	%edx, -44(%ebp)
	movl	%eax, -40(%ebp)
	movl	-44(%ebp), %eax
	cmpl	%eax, -40(%ebp)
	jge	.L8
	movl	-44(%ebp), %edx
	movl	%edx, -40(%ebp)
.L8:
	movl	-40(%ebp), %eax
	movl	%eax, max_opno@GOTOFF(%ebx)
.L7:
	.loc 1 73 0
	movl	-24(%ebp), %edx
	movl	rtx_format@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -12(%ebp)
	.loc 1 74 0
	movl	-24(%ebp), %edx
	movl	rtx_length@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -16(%ebp)
	.loc 1 75 0
	movl	$0, -20(%ebp)
	jmp	.L9
.L10:
	.loc 1 77 0
	movl	-20(%ebp), %eax
	addl	-12(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$101, %al
	je	.L11
	movl	-20(%ebp), %eax
	addl	-12(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$117, %al
	jne	.L13
.L11:
	.loc 1 78 0
	movl	-20(%ebp), %eax
	movl	8(%ebp), %edx
	movl	4(%edx,%eax,8), %eax
	movl	%eax, (%esp)
	call	max_operand_1
	.loc 1 77 0
	jmp	.L14
.L13:
	.loc 1 79 0
	movl	-20(%ebp), %eax
	addl	-12(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$69, %al
	jne	.L14
.LBB2:
	.loc 1 82 0
	movl	$0, -8(%ebp)
	jmp	.L16
.L17:
	.loc 1 83 0
	movl	-20(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %edx
	movl	-8(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	%eax, (%esp)
	call	max_operand_1
	.loc 1 82 0
	addl	$1, -8(%ebp)
.L16:
	movl	-20(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	(%eax), %eax
	cmpl	-8(%ebp), %eax
	jg	.L17
.L14:
.LBE2:
	.loc 1 75 0
	addl	$1, -20(%ebp)
.L9:
	movl	-20(%ebp), %eax
	cmpl	-16(%ebp), %eax
	jl	.L10
.L18:
	.loc 1 86 0
	addl	$44, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE15:
	.size	max_operand_1, .-max_operand_1
	.type	num_operands, @function
num_operands:
.LFB16:
	.loc 1 91 0
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
	.loc 1 92 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 95 0
	movl	$-1, max_opno@GOTOFF(%ebx)
	.loc 1 97 0
	movl	$0, -8(%ebp)
	jmp	.L20
.L21:
	.loc 1 98 0
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	-8(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	%eax, (%esp)
	call	max_operand_1
	.loc 1 97 0
	addl	$1, -8(%ebp)
.L20:
	movl	-8(%ebp), %eax
	cmpl	-12(%ebp), %eax
	jl	.L21
	.loc 1 100 0
	movl	max_opno@GOTOFF(%ebx), %eax
	addl	$1, %eax
	.loc 1 101 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE16:
	.size	num_operands, .-num_operands
	.section	.rodata
	.type	__FUNCTION__.6847, @object
	.size	__FUNCTION__.6847, 10
__FUNCTION__.6847:
	.string	"gen_macro"
	.align 4
.LC0:
	.string	"../../../kgccfe/gnu/genflags.c"
.LC1:
	.string	"#define GEN_"
.LC2:
	.string	"%c, "
.LC3:
	.string	"%c) gen_%s ("
.LC4:
	.string	"(%c), "
.LC5:
	.string	"(%c))\n"
	.text
	.type	gen_macro, @function
gen_macro:
.LFB17:
	.loc 1 110 0
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
	.loc 1 113 0
	movl	12(%ebp), %eax
	cmpl	16(%ebp), %eax
	jle	.L25
	.loc 1 114 0
	leal	__FUNCTION__.6847@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$114, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L25:
	.loc 1 115 0
	cmpl	$0, 12(%ebp)
	jne	.L27
	.loc 1 116 0
	leal	__FUNCTION__.6847@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$116, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L27:
	.loc 1 119 0
	movl	stdout@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$12, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite_unlocked@PLT
	.loc 1 120 0
	movl	$0, -8(%ebp)
	jmp	.L29
.L30:
	.loc 1 121 0
	movl	-8(%ebp), %eax
	addl	8(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edx
	movl	_sch_toupper@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, (%esp)
	call	putchar@PLT
	.loc 1 120 0
	addl	$1, -8(%ebp)
.L29:
	movl	-8(%ebp), %eax
	addl	8(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L30
	.loc 1 123 0
	movl	$40, (%esp)
	call	putchar@PLT
	.loc 1 124 0
	movl	$0, -8(%ebp)
	jmp	.L32
.L33:
	.loc 1 125 0
	movl	-8(%ebp), %eax
	addl	$65, %eax
	movl	%eax, 4(%esp)
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 124 0
	addl	$1, -8(%ebp)
.L32:
	movl	16(%ebp), %eax
	subl	$1, %eax
	cmpl	-8(%ebp), %eax
	jg	.L33
	.loc 1 126 0
	movl	-8(%ebp), %eax
	addl	$65, %eax
	movl	8(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	leal	.LC3@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 128 0
	movl	$0, -8(%ebp)
	jmp	.L35
.L36:
	.loc 1 129 0
	movl	-8(%ebp), %eax
	addl	$65, %eax
	movl	%eax, 4(%esp)
	leal	.LC4@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 128 0
	addl	$1, -8(%ebp)
.L35:
	movl	12(%ebp), %eax
	subl	$1, %eax
	cmpl	-8(%ebp), %eax
	jg	.L36
	.loc 1 130 0
	movl	-8(%ebp), %eax
	addl	$65, %eax
	movl	%eax, 4(%esp)
	leal	.LC5@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 131 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE17:
	.size	gen_macro, .-gen_macro
	.section	.rodata
.LC6:
	.string	"call"
.LC7:
	.string	"call_pop"
.LC8:
	.string	"sibcall"
.LC9:
	.string	"sibcall_pop"
.LC10:
	.string	"call_value"
.LC11:
	.string	"call_value_pop"
.LC12:
	.string	"sibcall_value"
.LC13:
	.string	"sibcall_value_pop"
	.align 4
.LC14:
	.string	"extern rtx        gen_%-*s PARAMS (("
	.align 4
.LC15:
	.string	"static inline rtx gen_%-*s PARAMS (("
.LC16:
	.string	"void"
.LC17:
	.string	"rtx, "
.LC18:
	.string	"rtx"
.LC19:
	.string	"));"
.LC20:
	.string	"static inline rtx\ngen_%s"
.LC21:
	.string	"%c)\n"
	.align 4
.LC22:
	.string	"     rtx %c ATTRIBUTE_UNUSED;\n"
.LC23:
	.string	"()"
.LC24:
	.string	"{\n  return 0;\n}"
	.text
	.type	gen_proto, @function
gen_proto:
.LFB18:
	.loc 1 140 0
	pushl	%ebp
.LCFI12:
	movl	%esp, %ebp
.LCFI13:
	pushl	%edi
.LCFI14:
	pushl	%esi
.LCFI15:
	pushl	%ebx
.LCFI16:
	subl	$140, %esp
.LCFI17:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 141 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	num_operands
	movl	%eax, -28(%ebp)
	.loc 1 143 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 144 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	maybe_eval_c_test@PLT
	movl	%eax, -16(%ebp)
	.loc 1 151 0
	movl	-20(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$99, %al
	je	.L40
	movl	-20(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$115, %al
	jne	.L42
.L40:
	.loc 1 153 0
	movl	-20(%ebp), %eax
	movl	%eax, -32(%ebp)
	leal	.LC6@GOTOFF(%ebx), %eax
	movl	%eax, -36(%ebp)
	movl	$5, -40(%ebp)
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
	je	.L43
	movl	-20(%ebp), %eax
	movl	%eax, -44(%ebp)
	leal	.LC7@GOTOFF(%ebx), %esi
	movl	%esi, -48(%ebp)
	movl	$9, -52(%ebp)
	cld
	movl	-44(%ebp), %esi
	movl	-48(%ebp), %edi
	movl	-52(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	je	.L43
	movl	-20(%ebp), %eax
	movl	%eax, -56(%ebp)
	leal	.LC8@GOTOFF(%ebx), %esi
	movl	%esi, -60(%ebp)
	movl	$8, -64(%ebp)
	cld
	movl	-56(%ebp), %esi
	movl	-60(%ebp), %edi
	movl	-64(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	je	.L43
	movl	-20(%ebp), %eax
	movl	%eax, -68(%ebp)
	leal	.LC9@GOTOFF(%ebx), %esi
	movl	%esi, -72(%ebp)
	movl	$12, -76(%ebp)
	cld
	movl	-68(%ebp), %esi
	movl	-72(%ebp), %edi
	movl	-76(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L47
.L43:
	.loc 1 157 0
	movl	$4, 8(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_macro
	.loc 1 153 0
	jmp	.L42
.L47:
	.loc 1 158 0
	movl	-20(%ebp), %eax
	movl	%eax, -80(%ebp)
	leal	.LC10@GOTOFF(%ebx), %esi
	movl	%esi, -84(%ebp)
	movl	$11, -88(%ebp)
	cld
	movl	-80(%ebp), %esi
	movl	-84(%ebp), %edi
	movl	-88(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	je	.L48
	movl	-20(%ebp), %eax
	movl	%eax, -92(%ebp)
	leal	.LC11@GOTOFF(%ebx), %esi
	movl	%esi, -96(%ebp)
	movl	$15, -100(%ebp)
	cld
	movl	-92(%ebp), %esi
	movl	-96(%ebp), %edi
	movl	-100(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	je	.L48
	movl	-20(%ebp), %eax
	movl	%eax, -104(%ebp)
	leal	.LC12@GOTOFF(%ebx), %esi
	movl	%esi, -108(%ebp)
	movl	$14, -112(%ebp)
	cld
	movl	-104(%ebp), %esi
	movl	-108(%ebp), %edi
	movl	-112(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	je	.L48
	movl	-20(%ebp), %eax
	movl	%eax, -116(%ebp)
	leal	.LC13@GOTOFF(%ebx), %esi
	movl	%esi, -120(%ebp)
	movl	$18, -124(%ebp)
	cld
	movl	-116(%ebp), %esi
	movl	-120(%ebp), %edi
	movl	-124(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L42
.L48:
	.loc 1 162 0
	movl	$5, 8(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_macro
.L42:
	.loc 1 165 0
	cmpl	$0, -16(%ebp)
	je	.L52
	.loc 1 166 0
	movl	max_id_len@GOTOFF(%ebx), %eax
	movl	-20(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	leal	.LC14@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	jmp	.L54
.L52:
	.loc 1 168 0
	movl	max_id_len@GOTOFF(%ebx), %eax
	movl	-20(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	leal	.LC15@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
.L54:
	.loc 1 170 0
	cmpl	$0, -28(%ebp)
	jne	.L55
	.loc 1 171 0
	movl	stdout@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$4, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC16@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite_unlocked@PLT
	jmp	.L57
.L55:
	.loc 1 174 0
	movl	$1, -24(%ebp)
	jmp	.L58
.L59:
	.loc 1 175 0
	movl	stdout@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$5, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC17@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite_unlocked@PLT
	.loc 1 174 0
	addl	$1, -24(%ebp)
.L58:
	movl	-24(%ebp), %eax
	cmpl	-28(%ebp), %eax
	jl	.L59
	.loc 1 177 0
	movl	stdout@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$3, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC18@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite_unlocked@PLT
.L57:
	.loc 1 180 0
	leal	.LC19@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 184 0
	cmpl	$0, -16(%ebp)
	jne	.L72
	.loc 1 186 0
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC20@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 187 0
	cmpl	$0, -28(%ebp)
	jle	.L63
	.loc 1 189 0
	movl	$40, (%esp)
	call	putchar@PLT
	.loc 1 190 0
	movl	$0, -24(%ebp)
	jmp	.L65
.L66:
	.loc 1 191 0
	movl	-24(%ebp), %eax
	addl	$97, %eax
	movl	%eax, 4(%esp)
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 190 0
	addl	$1, -24(%ebp)
.L65:
	movl	-28(%ebp), %eax
	subl	$1, %eax
	cmpl	-24(%ebp), %eax
	jg	.L66
	.loc 1 192 0
	movl	-24(%ebp), %eax
	addl	$97, %eax
	movl	%eax, 4(%esp)
	leal	.LC21@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 193 0
	movl	$0, -24(%ebp)
	jmp	.L68
.L69:
	.loc 1 194 0
	movl	-24(%ebp), %eax
	addl	$97, %eax
	movl	%eax, 4(%esp)
	leal	.LC22@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 193 0
	addl	$1, -24(%ebp)
.L68:
	movl	-24(%ebp), %eax
	cmpl	-28(%ebp), %eax
	jl	.L69
	jmp	.L71
.L63:
	.loc 1 197 0
	leal	.LC23@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
.L71:
	.loc 1 198 0
	leal	.LC24@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
.L72:
	.loc 1 201 0
	addl	$140, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE18:
	.size	gen_proto, .-gen_proto
	.section	.rodata
.LC25:
	.string	"#define HAVE_%s 1\n"
.LC26:
	.string	"#define HAVE_%s ("
.LC27:
	.string	" \\\n"
.LC28:
	.string	")\n"
	.text
	.type	gen_insn, @function
gen_insn:
.LFB19:
	.loc 1 206 0
	pushl	%ebp
.LCFI18:
	movl	%esp, %ebp
.LCFI19:
	pushl	%edi
.LCFI20:
	pushl	%esi
.LCFI21:
	pushl	%ebx
.LCFI22:
	subl	$60, %esp
.LCFI23:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 207 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -36(%ebp)
	.loc 1 210 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	maybe_eval_c_test@PLT
	movl	%eax, -24(%ebp)
	.loc 1 215 0
	movl	-36(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L92
	movl	-36(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$42, %al
	jne	.L76
	.loc 1 216 0
	jmp	.L92
.L76:
	.loc 1 218 0
	movl	-36(%ebp), %eax
	movl	$-1, %ecx
	movl	%eax, -48(%ebp)
	movl	$0, %eax
	cld
	movl	-48(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	movl	%eax, -28(%ebp)
	.loc 1 220 0
	movl	max_id_len@GOTOFF(%ebx), %eax
	cmpl	%eax, -28(%ebp)
	jle	.L78
	.loc 1 221 0
	movl	-28(%ebp), %eax
	movl	%eax, max_id_len@GOTOFF(%ebx)
.L78:
	.loc 1 223 0
	cmpl	$0, -24(%ebp)
	je	.L80
	.loc 1 225 0
	cmpl	$1, -24(%ebp)
	jne	.L82
	.loc 1 226 0
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC25@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	jmp	.L80
.L82:
	.loc 1 231 0
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC26@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 232 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -32(%ebp)
	jmp	.L84
.L85:
	.loc 1 237 0
	movl	-32(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$10, %al
	jne	.L86
	.loc 1 239 0
	movl	stdout@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$3, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC27@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite_unlocked@PLT
	jmp	.L88
.L86:
	.loc 1 241 0
	movl	-32(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, (%esp)
	call	putchar@PLT
.L88:
	.loc 1 232 0
	addl	$1, -32(%ebp)
.L84:
	movl	-32(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L85
	.loc 1 243 0
	movl	stdout@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$2, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC28@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite_unlocked@PLT
.L80:
.LBB3:
	.loc 1 246 0
	leal	obstack@GOTOFF(%ebx), %eax
	movl	%eax, -20(%ebp)
	movl	$4, -16(%ebp)
	movl	-20(%ebp), %eax
	movl	12(%eax), %edx
	movl	-16(%ebp), %eax
	addl	%eax, %edx
	movl	-20(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	jbe	.L90
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_obstack_newchunk@PLT
.L90:
	movl	-16(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, %edi
	leal	8(%ebp), %esi
	cld
	movl	%edx, %ecx
	rep
	movsb
	movl	-20(%ebp), %eax
	movl	12(%eax), %edx
	movl	-16(%ebp), %eax
	addl	%eax, %edx
	movl	-20(%ebp), %eax
	movl	%edx, 12(%eax)
.L92:
.LBE3:
	.loc 1 247 0
	addl	$60, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE19:
	.size	gen_insn, .-gen_insn
	.section	.rodata
.LC29:
	.string	"genflags"
.LC30:
	.string	"no input file name"
	.align 4
.LC31:
	.string	"/* Generated automatically by the program `genflags'"
	.align 4
.LC32:
	.string	"   from the machine description file `md'.  */\n"
.LC33:
	.string	"#ifndef GCC_INSN_FLAGS_H"
.LC34:
	.string	"#define GCC_INSN_FLAGS_H\n"
	.align 4
.LC35:
	.string	"\n#endif /* GCC_INSN_FLAGS_H */"
	.text
.globl main
	.type	main, @function
main:
.LFB20:
	.loc 1 255 0
	leal	4(%esp), %ecx
.LCFI24:
	andl	$-16, %esp
	pushl	-4(%ecx)
.LCFI25:
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
	pushl	%ecx
.LCFI31:
	subl	$88, %esp
.LCFI32:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	%ecx, -72(%ebp)
	.loc 1 261 0
	movl	progname@GOT(%ebx), %edx
	leal	.LC29@GOTOFF(%ebx), %eax
	movl	%eax, (%edx)
	.loc 1 262 0
	movl	xmalloc@GOT(%ebx), %eax
	movl	%eax, %edx
	movl	free@GOT(%ebx), %eax
	movl	%eax, 16(%esp)
	movl	%edx, 12(%esp)
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	leal	obstack@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	_obstack_begin@PLT
	.loc 1 266 0
	movl	insn_elision@GOT(%ebx), %eax
	movl	$0, (%eax)
	.loc 1 268 0
	movl	-72(%ebp), %eax
	cmpl	$1, (%eax)
	jg	.L94
	.loc 1 269 0
	leal	.LC30@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fatal@PLT
.L94:
	.loc 1 271 0
	movl	-72(%ebp), %edx
	movl	4(%edx), %eax
	movl	%eax, 4(%esp)
	movl	-72(%ebp), %esi
	movl	(%esi), %eax
	movl	%eax, (%esp)
	call	init_md_reader_args@PLT
	testl	%eax, %eax
	je	.L96
	.loc 1 272 0
	movl	$1, -68(%ebp)
	jmp	.L98
.L96:
	.loc 1 274 0
	leal	.LC31@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 275 0
	leal	.LC32@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 276 0
	leal	.LC33@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 277 0
	leal	.LC34@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	jmp	.L119
.L99:
.L119:
.LBB4:
	.loc 1 283 0
	movl	$0, -56(%ebp)
	.loc 1 285 0
	leal	-56(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	read_md_rtx@PLT
	movl	%eax, -44(%ebp)
	.loc 1 286 0
	cmpl	$0, -44(%ebp)
	je	.L100
	.loc 1 288 0
	movl	-44(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$13, %ax
	je	.L102
	movl	-44(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$19, %ax
	jne	.L99
.L102:
	.loc 1 289 0
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_insn
	.loc 1 290 0
	jmp	.L99
.L100:
.LBE4:
	.loc 1 293 0
	movl	$0, -48(%ebp)
.LBB5:
	.loc 1 294 0
	leal	obstack@GOTOFF(%ebx), %eax
	movl	%eax, -32(%ebp)
	movl	$4, -28(%ebp)
	movl	-32(%ebp), %eax
	movl	12(%eax), %edx
	movl	-28(%ebp), %eax
	addl	%eax, %edx
	movl	-32(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	jbe	.L105
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	_obstack_newchunk@PLT
.L105:
	movl	-28(%ebp), %ecx
	movl	-32(%ebp), %eax
	movl	12(%eax), %eax
	leal	-48(%ebp), %edx
	movl	%eax, %edi
	movl	%edx, %esi
	cld
	rep
	movsb
	movl	-32(%ebp), %eax
	movl	12(%eax), %edx
	movl	-28(%ebp), %eax
	addl	%eax, %edx
	movl	-32(%ebp), %eax
	movl	%edx, 12(%eax)
.LBE5:
.LBB6:
	.loc 1 295 0
	leal	obstack@GOTOFF(%ebx), %eax
	movl	%eax, -24(%ebp)
	movl	-24(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -20(%ebp)
	movl	-24(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	-20(%ebp), %eax
	jne	.L107
	movl	-24(%ebp), %eax
	movzbl	40(%eax), %edx
	orl	$2, %edx
	movb	%dl, 40(%eax)
.L107:
	movl	-24(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, %edx
	movl	-24(%ebp), %eax
	movl	24(%eax), %eax
	addl	%eax, %edx
	movl	-24(%ebp), %eax
	movl	24(%eax), %eax
	notl	%eax
	andl	%edx, %eax
	movl	%eax, %edx
	movl	-24(%ebp), %eax
	movl	%edx, 12(%eax)
	movl	-24(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, %edx
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	-24(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, %edx
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, %esi
	subl	%eax, %esi
	movl	%esi, %eax
	cmpl	%eax, %ecx
	jle	.L109
	movl	-24(%ebp), %eax
	movl	16(%eax), %edx
	movl	-24(%ebp), %eax
	movl	%edx, 12(%eax)
.L109:
	movl	-24(%ebp), %eax
	movl	12(%eax), %edx
	movl	-24(%ebp), %eax
	movl	%edx, 8(%eax)
	movl	-20(%ebp), %eax
.LBE6:
	movl	%eax, -40(%ebp)
	.loc 1 297 0
	movl	-40(%ebp), %eax
	movl	%eax, -36(%ebp)
	jmp	.L111
.L112:
	.loc 1 298 0
	movl	-36(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	gen_proto
	.loc 1 297 0
	addl	$4, -36(%ebp)
.L111:
	movl	-36(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L112
	.loc 1 300 0
	leal	.LC35@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 302 0
	movl	stdout@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	ferror@PLT
	testl	%eax, %eax
	jne	.L114
	movl	stdout@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	fflush@PLT
	testl	%eax, %eax
	jne	.L114
	movl	stdout@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	fclose@PLT
	testl	%eax, %eax
	je	.L117
.L114:
	.loc 1 303 0
	movl	$1, -68(%ebp)
	jmp	.L98
.L117:
	.loc 1 305 0
	movl	$0, -68(%ebp)
.L98:
	movl	-68(%ebp), %eax
	.loc 1 306 0
	addl	$88, %esp
	popl	%ecx
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	leal	-4(%ecx), %esp
	ret
.LFE20:
	.size	main, .-main
.globl get_insn_name
	.type	get_insn_name, @function
get_insn_name:
.LFB21:
	.loc 1 312 0
	pushl	%ebp
.LCFI33:
	movl	%esp, %ebp
.LCFI34:
	.loc 1 313 0
	movl	$0, %eax
	.loc 1 314 0
	popl	%ebp
	ret
.LFE21:
	.size	get_insn_name, .-get_insn_name
	.local	obstack
	.comm	obstack,44,32
	.local	max_id_len
	.comm	max_id_len,4,4
	.local	max_opno
	.comm	max_opno,4,4
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
	.long	.LCFI17-.LCFI13
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
	.long	.LCFI18-.LFB19
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI19-.LCFI18
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI23-.LCFI19
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
	.long	.LCFI24-.LFB20
	.byte	0xc
	.uleb128 0x1
	.uleb128 0x0
	.byte	0x9
	.uleb128 0x4
	.uleb128 0x1
	.byte	0x4
	.long	.LCFI25-.LCFI24
	.byte	0xc
	.uleb128 0x4
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI26-.LCFI25
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
	.byte	0x84
	.uleb128 0x6
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
	.long	.LCFI33-.LFB21
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI34-.LCFI33
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE12:
	.file 2 "../../../kgccfe/gnu/MIPS/hconfig.h"
	.file 3 "../../../kgccfe/gnu/rtl.h"
	.file 4 "../../../kgccfe/gnu/machmode.h"
	.file 5 "/usr/include/stdio.h"
	.file 6 "../../../include/gnu/obstack.h"
	.file 7 "/usr/include/libio.h"
	.file 8 "/usr/include/bits/types.h"
	.file 9 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h"
	.file 10 "../../../include/gnu/safe-ctype.h"
	.file 11 "../../../kgccfe/gnu/errors.h"
	.file 12 "../../../kgccfe/gnu/gensupport.h"
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
	.long	.LFE19-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST5:
	.long	.LFB20-.Ltext0
	.long	.LCFI24-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI24-.Ltext0
	.long	.LCFI25-.Ltext0
	.value	0x1
	.byte	0x51
	.long	.LCFI25-.Ltext0
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
	.long	.LFE20-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST6:
	.long	.LFB21-.Ltext0
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
	.long	.LFE21-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
	.section	.debug_info
	.long	0x192a
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.Ldebug_line0
	.long	.Letext0
	.long	.Ltext0
	.string	"GNU C 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.byte	0x1
	.string	"../../../kgccfe/gnu/genflags.c"
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
	.long	0x858
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
	.long	0x60f
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
	.long	0x21e
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
	.long	0x21e
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
	.long	0x21e
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
	.long	0x21e
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
	.long	0x21e
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
	.long	0x21e
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
	.long	0x21e
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
	.long	0x21e
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
	.long	0x12b4
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
	.long	0x12c4
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
	.long	.LASF0
	.byte	0x4
	.byte	0x7
	.uleb128 0xa
	.long	.LASF0
	.byte	0x4
	.byte	0x7
	.uleb128 0x2
	.string	"size_t"
	.byte	0x9
	.byte	0xd6
	.long	0x21e
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
	.byte	0x8
	.byte	0x3b
	.long	0x292
	.uleb128 0x2
	.string	"__off_t"
	.byte	0x8
	.byte	0x90
	.long	0x2dc
	.uleb128 0x9
	.string	"long int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x2
	.string	"__off64_t"
	.byte	0x8
	.byte	0x91
	.long	0x2bd
	.uleb128 0xb
	.byte	0x4
	.uleb128 0x3
	.byte	0x4
	.long	0x20f
	.uleb128 0xc
	.long	0x57c
	.long	.LASF1
	.byte	0x94
	.byte	0x5
	.byte	0x2e
	.uleb128 0xd
	.string	"_flags"
	.byte	0x7
	.value	0x10c
	.long	0x217
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"_IO_read_ptr"
	.byte	0x7
	.value	0x111
	.long	0x2fb
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"_IO_read_end"
	.byte	0x7
	.value	0x112
	.long	0x2fb
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"_IO_read_base"
	.byte	0x7
	.value	0x113
	.long	0x2fb
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.string	"_IO_write_base"
	.byte	0x7
	.value	0x114
	.long	0x2fb
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"_IO_write_ptr"
	.byte	0x7
	.value	0x115
	.long	0x2fb
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.string	"_IO_write_end"
	.byte	0x7
	.value	0x116
	.long	0x2fb
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.string	"_IO_buf_base"
	.byte	0x7
	.value	0x117
	.long	0x2fb
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xd
	.string	"_IO_buf_end"
	.byte	0x7
	.value	0x118
	.long	0x2fb
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.string	"_IO_save_base"
	.byte	0x7
	.value	0x11a
	.long	0x2fb
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xd
	.string	"_IO_backup_base"
	.byte	0x7
	.value	0x11b
	.long	0x2fb
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xd
	.string	"_IO_save_end"
	.byte	0x7
	.value	0x11c
	.long	0x2fb
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xd
	.string	"_markers"
	.byte	0x7
	.value	0x11e
	.long	0x5dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.string	"_chain"
	.byte	0x7
	.value	0x120
	.long	0x5e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xd
	.string	"_fileno"
	.byte	0x7
	.value	0x122
	.long	0x217
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.string	"_flags2"
	.byte	0x7
	.value	0x126
	.long	0x217
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xd
	.string	"_old_offset"
	.byte	0x7
	.value	0x128
	.long	0x2cd
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.string	"_cur_column"
	.byte	0x7
	.value	0x12c
	.long	0x24b
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xd
	.string	"_vtable_offset"
	.byte	0x7
	.value	0x12d
	.long	0x276
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0xd
	.string	"_shortbuf"
	.byte	0x7
	.value	0x12e
	.long	0x5e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x47
	.uleb128 0xd
	.string	"_lock"
	.byte	0x7
	.value	0x132
	.long	0x5f9
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xd
	.string	"_offset"
	.byte	0x7
	.value	0x13b
	.long	0x2e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xd
	.string	"__pad1"
	.byte	0x7
	.value	0x144
	.long	0x2f9
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xd
	.string	"__pad2"
	.byte	0x7
	.value	0x145
	.long	0x2f9
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xd
	.string	"__pad3"
	.byte	0x7
	.value	0x146
	.long	0x2f9
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xd
	.string	"__pad4"
	.byte	0x7
	.value	0x147
	.long	0x2f9
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xd
	.string	"__pad5"
	.byte	0x7
	.value	0x148
	.long	0x22c
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xd
	.string	"_mode"
	.byte	0x7
	.value	0x14a
	.long	0x217
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xd
	.string	"_unused2"
	.byte	0x7
	.value	0x14c
	.long	0x5ff
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.byte	0x0
	.uleb128 0xe
	.long	0x58c
	.long	0x20f
	.uleb128 0xf
	.long	0x225
	.byte	0x3
	.byte	0x0
	.uleb128 0x10
	.string	"_IO_lock_t"
	.byte	0x7
	.byte	0xb0
	.uleb128 0x4
	.long	0x5dd
	.string	"_IO_marker"
	.byte	0xc
	.byte	0x7
	.byte	0xb6
	.uleb128 0x6
	.string	"_next"
	.byte	0x7
	.byte	0xb7
	.long	0x5dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"_sbuf"
	.byte	0x7
	.byte	0xb8
	.long	0x5e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"_pos"
	.byte	0x7
	.byte	0xbc
	.long	0x217
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x59a
	.uleb128 0x3
	.byte	0x4
	.long	0x301
	.uleb128 0xe
	.long	0x5f9
	.long	0x20f
	.uleb128 0xf
	.long	0x225
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x58c
	.uleb128 0xe
	.long	0x60f
	.long	0x20f
	.uleb128 0xf
	.long	0x225
	.byte	0x27
	.byte	0x0
	.uleb128 0x11
	.long	0x858
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
	.long	0x1027
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
	.long	0x1101
	.byte	0x4
	.byte	0x3
	.byte	0x4d
	.uleb128 0x5
	.string	"min_align"
	.byte	0x3
	.byte	0x4f
	.long	0x21e
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
	.long	0x21e
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
	.long	0x21e
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
	.long	0x21e
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
	.long	0x21e
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
	.long	0x21e
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
	.long	0x21e
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
	.long	0x21e
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
	.long	0x1027
	.uleb128 0xc
	.long	0x1178
	.long	.LASF2
	.byte	0x18
	.byte	0x3
	.byte	0x68
	.uleb128 0x6
	.string	"alias"
	.byte	0x3
	.byte	0x69
	.long	0x292
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
	.long	0x21e
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x14
	.long	.LASF2
	.byte	0x3
	.byte	0x6e
	.long	0x111c
	.uleb128 0x15
	.long	0x1255
	.string	"rtunion_def"
	.byte	0x8
	.byte	0x3
	.byte	0x73
	.uleb128 0x16
	.string	"rtwint"
	.byte	0x3
	.byte	0x74
	.long	0x292
	.uleb128 0x16
	.string	"rtint"
	.byte	0x3
	.byte	0x75
	.long	0x217
	.uleb128 0x16
	.string	"rtuint"
	.byte	0x3
	.byte	0x76
	.long	0x21e
	.uleb128 0x16
	.string	"rtstr"
	.byte	0x3
	.byte	0x77
	.long	0x204
	.uleb128 0x16
	.string	"rtx"
	.byte	0x3
	.byte	0x78
	.long	0x9d
	.uleb128 0x16
	.string	"rtvec"
	.byte	0x3
	.byte	0x79
	.long	0x19e
	.uleb128 0x16
	.string	"rttype"
	.byte	0x3
	.byte	0x7a
	.long	0x60f
	.uleb128 0x16
	.string	"rt_addr_diff_vec_flags"
	.byte	0x3
	.byte	0x7b
	.long	0x1101
	.uleb128 0x16
	.string	"rt_cselib"
	.byte	0x3
	.byte	0x7c
	.long	0x1269
	.uleb128 0x16
	.string	"rtbit"
	.byte	0x3
	.byte	0x7d
	.long	0x1281
	.uleb128 0x16
	.string	"rttree"
	.byte	0x3
	.byte	0x7e
	.long	0x1e6
	.uleb128 0x16
	.string	"bb"
	.byte	0x3
	.byte	0x7f
	.long	0x1299
	.uleb128 0x16
	.string	"rtmem"
	.byte	0x3
	.byte	0x80
	.long	0x129f
	.byte	0x0
	.uleb128 0x17
	.string	"cselib_val_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x1255
	.uleb128 0x17
	.string	"bitmap_head_def"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x126f
	.uleb128 0x17
	.string	"basic_block_def"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x1287
	.uleb128 0x3
	.byte	0x4
	.long	0x1178
	.uleb128 0x2
	.string	"rtunion"
	.byte	0x3
	.byte	0x82
	.long	0x1183
	.uleb128 0xe
	.long	0x12c4
	.long	0x12a5
	.uleb128 0xf
	.long	0x225
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.long	0x12d4
	.long	0x9d
	.uleb128 0xf
	.long	0x225
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x9d
	.uleb128 0x4
	.long	0x1324
	.string	"_obstack_chunk"
	.byte	0xc
	.byte	0x6
	.byte	0xa2
	.uleb128 0x6
	.string	"limit"
	.byte	0x6
	.byte	0xa3
	.long	0x2fb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"prev"
	.byte	0x6
	.byte	0xa4
	.long	0x1324
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"contents"
	.byte	0x6
	.byte	0xa5
	.long	0x57c
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x12da
	.uleb128 0x18
	.long	0x1457
	.string	"obstack"
	.byte	0x2c
	.byte	0x5
	.value	0x31b
	.uleb128 0x6
	.string	"chunk_size"
	.byte	0x6
	.byte	0xaa
	.long	0x2dc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"chunk"
	.byte	0x6
	.byte	0xab
	.long	0x1324
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"object_base"
	.byte	0x6
	.byte	0xac
	.long	0x2fb
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"next_free"
	.byte	0x6
	.byte	0xad
	.long	0x2fb
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"chunk_limit"
	.byte	0x6
	.byte	0xae
	.long	0x2fb
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"temp"
	.byte	0x6
	.byte	0xaf
	.long	0x217
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"alignment_mask"
	.byte	0x6
	.byte	0xb0
	.long	0x217
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"chunkfun"
	.byte	0x6
	.byte	0xb5
	.long	0x146c
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"freefun"
	.byte	0x6
	.byte	0xb6
	.long	0x1483
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.string	"extra_arg"
	.byte	0x6
	.byte	0xb7
	.long	0x2f9
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x5
	.string	"use_extra_arg"
	.byte	0x6
	.byte	0xbd
	.long	0x21e
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x5
	.string	"maybe_empty_object"
	.byte	0x6
	.byte	0xbe
	.long	0x21e
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x5
	.string	"alloc_failed"
	.byte	0x6
	.byte	0xc2
	.long	0x21e
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x19
	.long	0x146c
	.byte	0x1
	.long	0x1324
	.uleb128 0x1a
	.long	0x2f9
	.uleb128 0x1a
	.long	0x2dc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1457
	.uleb128 0x1b
	.long	0x1483
	.byte	0x1
	.uleb128 0x1a
	.long	0x2f9
	.uleb128 0x1a
	.long	0x1324
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1472
	.uleb128 0x1c
	.long	0x1505
	.string	"max_operand_1"
	.byte	0x1
	.byte	0x3a
	.byte	0x1
	.long	.LFB15
	.long	.LFE15
	.long	.LLST0
	.uleb128 0x1d
	.string	"x"
	.byte	0x1
	.byte	0x39
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1e
	.string	"code"
	.byte	0x1
	.byte	0x3b
	.long	0x858
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1e
	.string	"i"
	.byte	0x1
	.byte	0x3c
	.long	0x217
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1e
	.string	"len"
	.byte	0x1
	.byte	0x3d
	.long	0x217
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1e
	.string	"fmt"
	.byte	0x1
	.byte	0x3e
	.long	0x204
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1f
	.long	.LBB2
	.long	.LBE2
	.uleb128 0x1e
	.string	"j"
	.byte	0x1
	.byte	0x51
	.long	0x217
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x20
	.long	0x1554
	.string	"num_operands"
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.long	0x217
	.long	.LFB16
	.long	.LFE16
	.long	.LLST1
	.uleb128 0x1d
	.string	"insn"
	.byte	0x1
	.byte	0x5a
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1e
	.string	"len"
	.byte	0x1
	.byte	0x5c
	.long	0x217
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1e
	.string	"i"
	.byte	0x1
	.byte	0x5d
	.long	0x217
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x1c
	.long	0x15c7
	.string	"gen_macro"
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.long	.LFB17
	.long	.LFE17
	.long	.LLST2
	.uleb128 0x1d
	.string	"name"
	.byte	0x1
	.byte	0x6c
	.long	0x204
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1d
	.string	"real"
	.byte	0x1
	.byte	0x6d
	.long	0x217
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1d
	.string	"expect"
	.byte	0x1
	.byte	0x6d
	.long	0x217
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1e
	.string	"i"
	.byte	0x1
	.byte	0x6f
	.long	0x217
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x21
	.string	"__FUNCTION__"
	.long	0x1830
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.6847
	.byte	0x0
	.uleb128 0x1c
	.long	0x162e
	.string	"gen_proto"
	.byte	0x1
	.byte	0x8c
	.byte	0x1
	.long	.LFB18
	.long	.LFE18
	.long	.LLST3
	.uleb128 0x1d
	.string	"insn"
	.byte	0x1
	.byte	0x8b
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1e
	.string	"num"
	.byte	0x1
	.byte	0x8d
	.long	0x217
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1e
	.string	"i"
	.byte	0x1
	.byte	0x8e
	.long	0x217
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1e
	.string	"name"
	.byte	0x1
	.byte	0x8f
	.long	0x204
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1e
	.string	"truth"
	.byte	0x1
	.byte	0x90
	.long	0x217
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x1c
	.long	0x16bc
	.string	"gen_insn"
	.byte	0x1
	.byte	0xce
	.byte	0x1
	.long	.LFB19
	.long	.LFE19
	.long	.LLST4
	.uleb128 0x1d
	.string	"insn"
	.byte	0x1
	.byte	0xcd
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1e
	.string	"name"
	.byte	0x1
	.byte	0xcf
	.long	0x204
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1e
	.string	"p"
	.byte	0x1
	.byte	0xd0
	.long	0x204
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1e
	.string	"len"
	.byte	0x1
	.byte	0xd1
	.long	0x217
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1e
	.string	"truth"
	.byte	0x1
	.byte	0xd2
	.long	0x217
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1f
	.long	.LBB3
	.long	.LBE3
	.uleb128 0x1e
	.string	"__o"
	.byte	0x1
	.byte	0xf6
	.long	0x16bc
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1e
	.string	"__len"
	.byte	0x1
	.byte	0xf6
	.long	0x217
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x132a
	.uleb128 0x22
	.long	0x17e1
	.byte	0x1
	.string	"main"
	.byte	0x1
	.byte	0xff
	.byte	0x1
	.long	0x217
	.long	.LFB20
	.long	.LFE20
	.long	.LLST5
	.uleb128 0x1d
	.string	"argc"
	.byte	0x1
	.byte	0xfd
	.long	0x217
	.byte	0x4
	.byte	0x75
	.sleb128 -72
	.byte	0x6
	.uleb128 0x1d
	.string	"argv"
	.byte	0x1
	.byte	0xfe
	.long	0x17e1
	.byte	0x6
	.byte	0x75
	.sleb128 -72
	.byte	0x6
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x23
	.string	"desc"
	.byte	0x1
	.value	0x100
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x23
	.string	"dummy"
	.byte	0x1
	.value	0x101
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x23
	.string	"insns"
	.byte	0x1
	.value	0x102
	.long	0x12d4
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x23
	.string	"insn_ptr"
	.byte	0x1
	.value	0x103
	.long	0x12d4
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x24
	.long	0x1787
	.long	.LBB4
	.long	.LBE4
	.uleb128 0x23
	.string	"line_no"
	.byte	0x1
	.value	0x11b
	.long	0x217
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x23
	.string	"insn_code_number"
	.byte	0x1
	.value	0x11b
	.long	0x217
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.byte	0x0
	.uleb128 0x24
	.long	0x17b5
	.long	.LBB5
	.long	.LBE5
	.uleb128 0x23
	.string	"__o"
	.byte	0x1
	.value	0x126
	.long	0x16bc
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x23
	.string	"__len"
	.byte	0x1
	.value	0x126
	.long	0x217
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.uleb128 0x1f
	.long	.LBB6
	.long	.LBE6
	.uleb128 0x23
	.string	"__o1"
	.byte	0x1
	.value	0x127
	.long	0x16bc
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x23
	.string	"value"
	.byte	0x1
	.value	0x127
	.long	0x2f9
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x2fb
	.uleb128 0x25
	.long	0x1820
	.byte	0x1
	.string	"get_insn_name"
	.byte	0x1
	.value	0x138
	.byte	0x1
	.long	0x204
	.long	.LFB21
	.long	.LFE21
	.long	.LLST6
	.uleb128 0x26
	.string	"code"
	.byte	0x1
	.value	0x137
	.long	0x217
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0xe
	.long	0x1830
	.long	0x20f
	.uleb128 0xf
	.long	0x225
	.byte	0x9
	.byte	0x0
	.uleb128 0x8
	.long	0x1820
	.uleb128 0x1e
	.string	"obstack"
	.byte	0x1
	.byte	0x27
	.long	0x132a
	.byte	0x5
	.byte	0x3
	.long	obstack
	.uleb128 0x1e
	.string	"max_id_len"
	.byte	0x1
	.byte	0x2a
	.long	0x217
	.byte	0x5
	.byte	0x3
	.long	max_id_len
	.uleb128 0x1e
	.string	"max_opno"
	.byte	0x1
	.byte	0x2d
	.long	0x217
	.byte	0x5
	.byte	0x3
	.long	max_opno
	.uleb128 0x27
	.string	"stdout"
	.byte	0x5
	.byte	0x8f
	.long	0x5e3
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.long	0x1898
	.long	0x23a
	.uleb128 0xf
	.long	0x225
	.byte	0xff
	.byte	0x0
	.uleb128 0x27
	.string	"_sch_toupper"
	.byte	0xa
	.byte	0x61
	.long	0x18ae
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.long	0x1888
	.uleb128 0xe
	.long	0x18c3
	.long	0x23a
	.uleb128 0xf
	.long	0x225
	.byte	0xa2
	.byte	0x0
	.uleb128 0x27
	.string	"rtx_length"
	.byte	0x3
	.byte	0x3c
	.long	0x18d7
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.long	0x18b3
	.uleb128 0xe
	.long	0x18ec
	.long	0x204
	.uleb128 0xf
	.long	0x225
	.byte	0xa2
	.byte	0x0
	.uleb128 0x27
	.string	"rtx_format"
	.byte	0x3
	.byte	0x42
	.long	0x1900
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.long	0x18dc
	.uleb128 0x27
	.string	"progname"
	.byte	0xb
	.byte	0x29
	.long	0x204
	.byte	0x1
	.byte	0x1
	.uleb128 0x27
	.string	"insn_elision"
	.byte	0xc
	.byte	0x25
	.long	0x217
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
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
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.long	0x192e
	.long	0x16c2
	.string	"main"
	.long	0x17e7
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
