	.file	"dwarf2asm.c"
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
	.string	"0x%llx"
	.text
.globl dw2_assemble_integer
	.type	dw2_assemble_integer, @function
dw2_assemble_integer:
.LFB15:
	.file 1 "../../../kg++fe/gnu/dwarf2asm.c"
	.loc 1 59 0
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
	.loc 1 60 0
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	integer_asm_op@PLT
	movl	%eax, -12(%ebp)
	.loc 1 62 0
	cmpl	$0, -12(%ebp)
	je	.L2
	.loc 1 64 0
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	fputs_unlocked@PLT
	.loc 1 65 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L4
	.loc 1 66 0
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%eax), %ecx
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %esi
	movl	%edx, 8(%esp)
	movl	%ecx, 12(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	call	fprintf@PLT
	jmp	.L8
.L4:
	.loc 1 68 0
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	output_addr_const@PLT
	jmp	.L8
.L2:
	.loc 1 71 0
	movl	8(%ebp), %eax
	movl	$1, 12(%esp)
	movl	$8, 8(%esp)
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	assemble_integer@PLT
.L8:
	.loc 1 72 0
	addl	$32, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE15:
	.size	dw2_assemble_integer, .-dw2_assemble_integer
	.section	.rodata
.LC1:
	.string	" #"
.LC2:
	.string	"\t%s "
	.text
.globl dw2_asm_output_data
	.type	dw2_asm_output_data, @function
dw2_asm_output_data:
.LFB16:
	.loc 1 80 0
	pushl	%ebp
.LCFI5:
	movl	%esp, %ebp
.LCFI6:
	pushl	%edi
.LCFI7:
	pushl	%esi
.LCFI8:
	pushl	%ebx
.LCFI9:
	subl	$44, %esp
.LCFI10:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	12(%ebp), %eax
	movl	%eax, -40(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, -36(%ebp)
.LBB2:
	.loc 1 81 0
	leal	24(%ebp), %eax
	movl	%eax, -20(%ebp)
.LBB3:
	.loc 1 86 0
	movl	8(%ebp), %eax
	sall	$3, %eax
	cmpl	$63, %eax
	jg	.L10
	.loc 1 87 0
	movl	8(%ebp), %eax
	leal	0(,%eax,8), %ecx
	movl	$-1, %eax
	movl	$-1, %edx
	shldl	%eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	je	.L16
	movl	%eax, %edx
	xorl	%eax, %eax
.L16:
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-40(%ebp), %eax
	andl	%esi, %eax
	movl	-36(%ebp), %edx
	andl	%edi, %edx
	movl	%eax, -40(%ebp)
	movl	%edx, -36(%ebp)
.L10:
	.loc 1 89 0
	movl	-40(%ebp), %eax
	movl	-36(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$0, (%esp)
	call	gen_rtx_CONST_INT@PLT
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dw2_assemble_integer@PLT
	.loc 1 91 0
	movl	flag_debug_asm@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L12
	cmpl	$0, 20(%ebp)
	je	.L12
	.loc 1 93 0
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %edx
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
	.loc 1 94 0
	movl	-20(%ebp), %edx
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 8(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	vfprintf@PLT
.L12:
	.loc 1 96 0
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	fputc_unlocked@PLT
.LBE3:
.LBE2:
	.loc 1 99 0
	addl	$44, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE16:
	.size	dw2_asm_output_data, .-dw2_asm_output_data
.globl dw2_asm_output_delta
	.type	dw2_asm_output_delta, @function
dw2_asm_output_delta:
.LFB17:
	.loc 1 110 0
	pushl	%ebp
.LCFI11:
	movl	%esp, %ebp
.LCFI12:
	pushl	%ebx
.LCFI13:
	subl	$52, %esp
.LCFI14:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
.LBB4:
	.loc 1 111 0
	leal	24(%ebp), %eax
	movl	%eax, -8(%ebp)
.LBB5:
	.loc 1 120 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L18
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L18
	movl	$5, -40(%ebp)
	jmp	.L21
.L18:
	movl	$4, -40(%ebp)
.L21:
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$78, (%esp)
	call	gen_rtx_fmt_s@PLT
	movl	%eax, -36(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L22
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L22
	movl	$5, -32(%ebp)
	jmp	.L25
.L22:
	movl	$4, -32(%ebp)
.L25:
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$78, (%esp)
	call	gen_rtx_fmt_s@PLT
	movl	%eax, -28(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L26
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L26
	movl	$5, -24(%ebp)
	jmp	.L29
.L26:
	movl	$4, -24(%ebp)
.L29:
	movl	-36(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$86, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dw2_assemble_integer@PLT
	.loc 1 125 0
	movl	flag_debug_asm@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L30
	cmpl	$0, 20(%ebp)
	je	.L30
	.loc 1 127 0
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %edx
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
	.loc 1 128 0
	movl	-8(%ebp), %edx
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 8(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	vfprintf@PLT
.L30:
	.loc 1 130 0
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	fputc_unlocked@PLT
.LBE5:
.LBE4:
	.loc 1 133 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE17:
	.size	dw2_asm_output_delta, .-dw2_asm_output_delta
.globl dw2_asm_output_offset
	.type	dw2_asm_output_offset, @function
dw2_asm_output_offset:
.LFB18:
	.loc 1 144 0
	pushl	%ebp
.LCFI15:
	movl	%esp, %ebp
.LCFI16:
	pushl	%ebx
.LCFI17:
	subl	$36, %esp
.LCFI18:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
.LBB6:
	.loc 1 145 0
	leal	20(%ebp), %eax
	movl	%eax, -8(%ebp)
.LBB7:
	.loc 1 153 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L35
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L35
	movl	$5, -24(%ebp)
	jmp	.L38
.L35:
	movl	$4, -24(%ebp)
.L38:
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$78, (%esp)
	call	gen_rtx_fmt_s@PLT
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dw2_assemble_integer@PLT
	.loc 1 156 0
	movl	flag_debug_asm@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L39
	cmpl	$0, 16(%ebp)
	je	.L39
	.loc 1 158 0
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %edx
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
	.loc 1 159 0
	movl	-8(%ebp), %edx
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	vfprintf@PLT
.L39:
	.loc 1 161 0
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	fputc_unlocked@PLT
.LBE7:
.LBE6:
	.loc 1 164 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE18:
	.size	dw2_asm_output_offset, .-dw2_asm_output_offset
.globl dw2_asm_output_pcrel
	.type	dw2_asm_output_pcrel, @function
dw2_asm_output_pcrel:
.LFB19:
	.loc 1 173 0
	pushl	%ebp
.LCFI19:
	movl	%esp, %ebp
.LCFI20:
	pushl	%ebx
.LCFI21:
	subl	$52, %esp
.LCFI22:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
.LBB8:
	.loc 1 174 0
	leal	20(%ebp), %eax
	movl	%eax, -8(%ebp)
.LBB9:
	.loc 1 182 0
	movl	global_rtl@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -36(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L44
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L44
	movl	$5, -32(%ebp)
	jmp	.L47
.L44:
	movl	$4, -32(%ebp)
.L47:
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$78, (%esp)
	call	gen_rtx_fmt_s@PLT
	movl	%eax, -28(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L48
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L48
	movl	$5, -24(%ebp)
	jmp	.L51
.L48:
	movl	$4, -24(%ebp)
.L51:
	movl	-36(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$86, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dw2_assemble_integer@PLT
	.loc 1 188 0
	movl	flag_debug_asm@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L52
	cmpl	$0, 16(%ebp)
	je	.L52
	.loc 1 190 0
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %edx
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
	.loc 1 191 0
	movl	-8(%ebp), %edx
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	vfprintf@PLT
.L52:
	.loc 1 193 0
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	fputc_unlocked@PLT
.LBE9:
.LBE8:
	.loc 1 196 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE19:
	.size	dw2_asm_output_pcrel, .-dw2_asm_output_pcrel
.globl dw2_asm_output_addr
	.type	dw2_asm_output_addr, @function
dw2_asm_output_addr:
.LFB20:
	.loc 1 203 0
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
.LBB10:
	.loc 1 204 0
	leal	20(%ebp), %eax
	movl	%eax, -8(%ebp)
.LBB11:
	.loc 1 209 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L57
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L57
	movl	$5, -24(%ebp)
	jmp	.L60
.L57:
	movl	$4, -24(%ebp)
.L60:
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$78, (%esp)
	call	gen_rtx_fmt_s@PLT
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dw2_assemble_integer@PLT
	.loc 1 211 0
	movl	flag_debug_asm@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L61
	cmpl	$0, 16(%ebp)
	je	.L61
	.loc 1 213 0
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %edx
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
	.loc 1 214 0
	movl	-8(%ebp), %edx
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	vfprintf@PLT
.L61:
	.loc 1 216 0
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	fputc_unlocked@PLT
.LBE11:
.LBE10:
	.loc 1 219 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE20:
	.size	dw2_asm_output_addr, .-dw2_asm_output_addr
.globl dw2_asm_output_addr_rtx
	.type	dw2_asm_output_addr_rtx, @function
dw2_asm_output_addr_rtx:
.LFB21:
	.loc 1 226 0
	pushl	%ebp
.LCFI27:
	movl	%esp, %ebp
.LCFI28:
	pushl	%ebx
.LCFI29:
	subl	$36, %esp
.LCFI30:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
.LBB12:
	.loc 1 227 0
	leal	20(%ebp), %eax
	movl	%eax, -8(%ebp)
.LBB13:
	.loc 1 232 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dw2_assemble_integer@PLT
	.loc 1 234 0
	movl	flag_debug_asm@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L66
	cmpl	$0, 16(%ebp)
	je	.L66
	.loc 1 236 0
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %edx
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
	.loc 1 237 0
	movl	-8(%ebp), %edx
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	vfprintf@PLT
.L66:
	.loc 1 239 0
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	fputc_unlocked@PLT
.LBE13:
.LBE12:
	.loc 1 242 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE21:
	.size	dw2_asm_output_addr_rtx, .-dw2_asm_output_addr_rtx
	.section	.rodata
.LC3:
	.string	"\t.ascii \""
.LC4:
	.string	"\\%o"
.LC5:
	.string	"\\0\"\t%s "
	.text
.globl dw2_asm_output_nstring
	.type	dw2_asm_output_nstring, @function
dw2_asm_output_nstring:
.LFB22:
	.loc 1 247 0
	pushl	%ebp
.LCFI31:
	movl	%esp, %ebp
.LCFI32:
	pushl	%edi
.LCFI33:
	pushl	%ebx
.LCFI34:
	subl	$48, %esp
.LCFI35:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
.LBB14:
	.loc 1 250 0
	leal	20(%ebp), %eax
	movl	%eax, -24(%ebp)
.LBB15:
	.loc 1 255 0
	movl	12(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 257 0
	cmpl	$-1, -16(%ebp)
	jne	.L71
	.loc 1 258 0
	movl	8(%ebp), %eax
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
	movl	%eax, -16(%ebp)
.L71:
	.loc 1 260 0
	movl	flag_debug_asm@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L73
	cmpl	$0, 16(%ebp)
	je	.L73
	.loc 1 262 0
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$9, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC3@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite_unlocked@PLT
	.loc 1 263 0
	movl	$0, -20(%ebp)
	jmp	.L76
.L77:
.LBB16:
	.loc 1 265 0
	movl	-20(%ebp), %eax
	addl	8(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -12(%ebp)
	.loc 1 266 0
	cmpl	$34, -12(%ebp)
	je	.L78
	cmpl	$92, -12(%ebp)
	jne	.L80
.L78:
	.loc 1 267 0
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$92, (%esp)
	call	fputc_unlocked@PLT
.L80:
	.loc 1 268 0
	movzbl	-12(%ebp),%edx
	movl	_sch_istable@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	andl	$16, %eax
	testl	%eax, %eax
	je	.L81
	.loc 1 269 0
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	fputc_unlocked@PLT
	jmp	.L83
.L81:
	.loc 1 271 0
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC4@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
.L83:
.LBE16:
	.loc 1 263 0
	addl	$1, -20(%ebp)
.L76:
	movl	-20(%ebp), %eax
	cmpl	-16(%ebp), %eax
	jb	.L77
	.loc 1 273 0
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %edx
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	.LC5@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
	.loc 1 274 0
	movl	-24(%ebp), %edx
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	vfprintf@PLT
	.loc 1 275 0
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	fputc_unlocked@PLT
	.loc 1 260 0
	jmp	.L89
.L73:
	.loc 1 281 0
	cmpl	$-1, 12(%ebp)
	jne	.L86
	.loc 1 282 0
	addl	$1, -16(%ebp)
.L86:
	.loc 1 283 0
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	mips_output_ascii@PLT
	.loc 1 284 0
	cmpl	$-1, 12(%ebp)
	je	.L89
	.loc 1 285 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	$1, 12(%esp)
	movl	$8, 8(%esp)
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	assemble_integer@PLT
.L89:
.LBE15:
.LBE14:
	.loc 1 289 0
	addl	$48, %esp
	popl	%ebx
	popl	%edi
	popl	%ebp
	ret
.LFE22:
	.size	dw2_asm_output_nstring, .-dw2_asm_output_nstring
.globl size_of_uleb128
	.type	size_of_uleb128, @function
size_of_uleb128:
.LFB23:
	.loc 1 297 0
	pushl	%ebp
.LCFI36:
	movl	%esp, %ebp
.LCFI37:
	subl	$24, %esp
.LCFI38:
	movl	8(%ebp), %eax
	movl	%eax, -24(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 298 0
	movl	$0, -8(%ebp)
.L91:
	.loc 1 302 0
	movl	-24(%ebp), %eax
	andl	$127, %eax
	movl	%eax, -4(%ebp)
	.loc 1 303 0
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %edx
	shrdl	$7, %edx, %eax
	shrl	$7, %edx
	movl	%eax, -24(%ebp)
	movl	%edx, -20(%ebp)
	.loc 1 304 0
	addl	$1, -8(%ebp)
	.loc 1 306 0
	movl	-24(%ebp), %eax
	orl	-20(%ebp), %eax
	testl	%eax, %eax
	jne	.L91
	.loc 1 308 0
	movl	-8(%ebp), %eax
	.loc 1 309 0
	leave
	ret
.LFE23:
	.size	size_of_uleb128, .-size_of_uleb128
.globl size_of_sleb128
	.type	size_of_sleb128, @function
size_of_sleb128:
.LFB24:
	.loc 1 316 0
	pushl	%ebp
.LCFI39:
	movl	%esp, %ebp
.LCFI40:
	subl	$24, %esp
.LCFI41:
	movl	8(%ebp), %eax
	movl	%eax, -24(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 317 0
	movl	$0, -8(%ebp)
	jmp	.L101
.L95:
.L101:
	.loc 1 321 0
	movl	-24(%ebp), %eax
	andl	$127, %eax
	movl	%eax, -4(%ebp)
	.loc 1 322 0
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %edx
	shrdl	$7, %edx, %eax
	sarl	$7, %edx
	movl	%eax, -24(%ebp)
	movl	%edx, -20(%ebp)
	.loc 1 323 0
	addl	$1, -8(%ebp)
	.loc 1 326 0
	movl	-24(%ebp), %eax
	orl	-20(%ebp), %eax
	testl	%eax, %eax
	jne	.L96
	movl	-4(%ebp), %eax
	andl	$64, %eax
	testl	%eax, %eax
	je	.L98
.L96:
	movl	-20(%ebp), %eax
	xorl	$-1, %eax
	movl	-24(%ebp), %edx
	xorl	$-1, %edx
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L95
	movl	-4(%ebp), %eax
	andl	$64, %eax
	testl	%eax, %eax
	je	.L95
.L98:
	.loc 1 328 0
	movl	-8(%ebp), %eax
	.loc 1 329 0
	leave
	ret
.LFE24:
	.size	size_of_sleb128, .-size_of_sleb128
	.section	.rodata
	.type	__FUNCTION__.12352, @object
	.size	__FUNCTION__.12352, 22
__FUNCTION__.12352:
	.string	"size_of_encoded_value"
	.align 4
.LC6:
	.string	"../../../kg++fe/gnu/dwarf2asm.c"
	.text
.globl size_of_encoded_value
	.type	size_of_encoded_value, @function
size_of_encoded_value:
.LFB25:
	.loc 1 338 0
	pushl	%ebp
.LCFI42:
	movl	%esp, %ebp
.LCFI43:
	pushl	%ebx
.LCFI44:
	subl	$36, %esp
.LCFI45:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 339 0
	cmpl	$255, 8(%ebp)
	jne	.L103
	.loc 1 340 0
	movl	$0, -16(%ebp)
	jmp	.L105
.L103:
	.loc 1 342 0
	movl	8(%ebp), %eax
	andl	$7, %eax
	movl	%eax, -12(%ebp)
	cmpl	$2, -12(%ebp)
	je	.L108
	cmpl	$2, -12(%ebp)
	jg	.L111
	cmpl	$0, -12(%ebp)
	je	.L107
	jmp	.L106
.L111:
	cmpl	$3, -12(%ebp)
	je	.L109
	cmpl	$4, -12(%ebp)
	je	.L110
	jmp	.L106
.L107:
	.loc 1 345 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L112
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L112
	movl	$8, -8(%ebp)
	jmp	.L115
.L112:
	movl	$4, -8(%ebp)
.L115:
	movl	-8(%ebp), %eax
	movl	%eax, -16(%ebp)
	jmp	.L105
.L108:
	.loc 1 347 0
	movl	$2, -16(%ebp)
	jmp	.L105
.L109:
	.loc 1 349 0
	movl	$4, -16(%ebp)
	jmp	.L105
.L110:
	.loc 1 351 0
	movl	$8, -16(%ebp)
	jmp	.L105
.L106:
	.loc 1 353 0
	leal	__FUNCTION__.12352@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$353, 4(%esp)
	leal	.LC6@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L105:
	movl	-16(%ebp), %eax
	.loc 1 354 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE25:
	.size	size_of_encoded_value, .-size_of_encoded_value
	.section	.rodata
	.type	__FUNCTION__.12373, @object
	.size	__FUNCTION__.12373, 20
__FUNCTION__.12373:
	.string	"eh_data_format_name"
.LC7:
	.string	"absolute"
.LC8:
	.string	"uleb128"
.LC9:
	.string	"udata2"
.LC10:
	.string	"udata4"
.LC11:
	.string	"udata8"
.LC12:
	.string	"sleb128"
.LC13:
	.string	"sdata2"
.LC14:
	.string	"sdata4"
.LC15:
	.string	"sdata8"
.LC16:
	.string	"pcrel"
.LC17:
	.string	"pcrel uleb128"
.LC18:
	.string	"pcrel udata2"
.LC19:
	.string	"pcrel udata4"
.LC20:
	.string	"pcrel udata8"
.LC21:
	.string	"pcrel sleb128"
.LC22:
	.string	"pcrel sdata2"
.LC23:
	.string	"pcrel sdata4"
.LC24:
	.string	"pcrel sdata8"
.LC25:
	.string	"textrel"
.LC26:
	.string	"textrel uleb128"
.LC27:
	.string	"textrel udata2"
.LC28:
	.string	"textrel udata4"
.LC29:
	.string	"textrel udata8"
.LC30:
	.string	"textrel sleb128"
.LC31:
	.string	"textrel sdata2"
.LC32:
	.string	"textrel sdata4"
.LC33:
	.string	"textrel sdata8"
.LC34:
	.string	"datarel"
.LC35:
	.string	"datarel uleb128"
.LC36:
	.string	"datarel udata2"
.LC37:
	.string	"datarel udata4"
.LC38:
	.string	"datarel udata8"
.LC39:
	.string	"datarel sleb128"
.LC40:
	.string	"datarel sdata2"
.LC41:
	.string	"datarel sdata4"
.LC42:
	.string	"datarel sdata8"
.LC43:
	.string	"funcrel"
.LC44:
	.string	"funcrel uleb128"
.LC45:
	.string	"funcrel udata2"
.LC46:
	.string	"funcrel udata4"
.LC47:
	.string	"funcrel udata8"
.LC48:
	.string	"funcrel sleb128"
.LC49:
	.string	"funcrel sdata2"
.LC50:
	.string	"funcrel sdata4"
.LC51:
	.string	"funcrel sdata8"
.LC52:
	.string	"aligned absolute"
.LC53:
	.string	"indirect pcrel"
.LC54:
	.string	"indirect pcrel uleb128"
.LC55:
	.string	"indirect pcrel udata2"
.LC56:
	.string	"indirect pcrel udata4"
.LC57:
	.string	"indirect pcrel udata8"
.LC58:
	.string	"indirect pcrel sleb128"
.LC59:
	.string	"indirect pcrel sdata2"
.LC60:
	.string	"indirect pcrel sdata4"
.LC61:
	.string	"indirect pcrel sdata8"
.LC62:
	.string	"indirect textrel"
.LC63:
	.string	"indirect textrel uleb128"
.LC64:
	.string	"indirect textrel udata2"
.LC65:
	.string	"indirect textrel udata4"
.LC66:
	.string	"indirect textrel udata8"
.LC67:
	.string	"indirect textrel sleb128"
.LC68:
	.string	"indirect textrel sdata2"
.LC69:
	.string	"indirect textrel sdata4"
.LC70:
	.string	"indirect textrel sdata8"
.LC71:
	.string	"indirect datarel"
.LC72:
	.string	"indirect datarel uleb128"
.LC73:
	.string	"indirect datarel udata2"
.LC74:
	.string	"indirect datarel udata4"
.LC75:
	.string	"indirect datarel udata8"
.LC76:
	.string	"indirect datarel sleb128"
.LC77:
	.string	"indirect datarel sdata2"
.LC78:
	.string	"indirect datarel sdata4"
.LC79:
	.string	"indirect datarel sdata8"
.LC80:
	.string	"indirect funcrel"
.LC81:
	.string	"indirect funcrel uleb128"
.LC82:
	.string	"indirect funcrel udata2"
.LC83:
	.string	"indirect funcrel udata4"
.LC84:
	.string	"indirect funcrel udata8"
.LC85:
	.string	"indirect funcrel sleb128"
.LC86:
	.string	"indirect funcrel sdata2"
.LC87:
	.string	"indirect funcrel sdata4"
.LC88:
	.string	"indirect funcrel sdata8"
.LC89:
	.string	"omit"
	.section	.data.rel.ro.local,"aw",@progbits
	.align 32
	.type	format_names.12372, @object
	.size	format_names.12372, 1024
format_names.12372:
	.long	.LC7
	.long	.LC8
	.long	.LC9
	.long	.LC10
	.long	.LC11
	.zero	16
	.long	.LC12
	.long	.LC13
	.long	.LC14
	.long	.LC15
	.zero	12
	.long	.LC16
	.long	.LC17
	.long	.LC18
	.long	.LC19
	.long	.LC20
	.zero	16
	.long	.LC21
	.long	.LC22
	.long	.LC23
	.long	.LC24
	.zero	12
	.long	.LC25
	.long	.LC26
	.long	.LC27
	.long	.LC28
	.long	.LC29
	.zero	16
	.long	.LC30
	.long	.LC31
	.long	.LC32
	.long	.LC33
	.zero	12
	.long	.LC34
	.long	.LC35
	.long	.LC36
	.long	.LC37
	.long	.LC38
	.zero	16
	.long	.LC39
	.long	.LC40
	.long	.LC41
	.long	.LC42
	.zero	12
	.long	.LC43
	.long	.LC44
	.long	.LC45
	.long	.LC46
	.long	.LC47
	.zero	16
	.long	.LC48
	.long	.LC49
	.long	.LC50
	.long	.LC51
	.zero	12
	.long	.LC52
	.zero	252
	.long	.LC53
	.long	.LC54
	.long	.LC55
	.long	.LC56
	.long	.LC57
	.zero	16
	.long	.LC58
	.long	.LC59
	.long	.LC60
	.long	.LC61
	.zero	12
	.long	.LC62
	.long	.LC63
	.long	.LC64
	.long	.LC65
	.long	.LC66
	.zero	16
	.long	.LC67
	.long	.LC68
	.long	.LC69
	.long	.LC70
	.zero	12
	.long	.LC71
	.long	.LC72
	.long	.LC73
	.long	.LC74
	.long	.LC75
	.zero	16
	.long	.LC76
	.long	.LC77
	.long	.LC78
	.long	.LC79
	.zero	12
	.long	.LC80
	.long	.LC81
	.long	.LC82
	.long	.LC83
	.long	.LC84
	.zero	16
	.long	.LC85
	.long	.LC86
	.long	.LC87
	.long	.LC88
	.zero	200
	.long	.LC89
	.text
.globl eh_data_format_name
	.type	eh_data_format_name, @function
eh_data_format_name:
.LFB26:
	.loc 1 361 0
	pushl	%ebp
.LCFI46:
	movl	%esp, %ebp
.LCFI47:
	pushl	%ebx
.LCFI48:
	subl	$20, %esp
.LCFI49:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 506 0
	cmpl	$0, 8(%ebp)
	js	.L118
	cmpl	$255, 8(%ebp)
	jg	.L118
	movl	8(%ebp), %eax
	movl	format_names.12372@GOTOFF(%ebx,%eax,4), %eax
	testl	%eax, %eax
	jne	.L121
.L118:
	.loc 1 507 0
	leal	__FUNCTION__.12373@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$507, 4(%esp)
	leal	.LC6@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L121:
	.loc 1 508 0
	movl	8(%ebp), %eax
	movl	format_names.12372@GOTOFF(%ebx,%eax,4), %eax
	.loc 1 513 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE26:
	.size	eh_data_format_name, .-eh_data_format_name
	.section	.rodata
.LC90:
	.string	"\t.uleb128 "
	.text
.globl dw2_asm_output_data_uleb128
	.type	dw2_asm_output_data_uleb128, @function
dw2_asm_output_data_uleb128:
.LFB27:
	.loc 1 520 0
	pushl	%ebp
.LCFI50:
	movl	%esp, %ebp
.LCFI51:
	pushl	%ebx
.LCFI52:
	subl	$52, %esp
.LCFI53:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	movl	%eax, -32(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -28(%ebp)
.LBB17:
	.loc 1 521 0
	leal	20(%ebp), %eax
	movl	%eax, -12(%ebp)
.LBB18:
	.loc 1 526 0
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$10, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC90@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite_unlocked@PLT
	.loc 1 527 0
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	-32(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
	.loc 1 529 0
	movl	flag_debug_asm@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L124
	cmpl	$0, 16(%ebp)
	je	.L124
	.loc 1 531 0
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %edx
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
	.loc 1 532 0
	movl	-12(%ebp), %edx
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	vfprintf@PLT
.L124:
	.loc 1 572 0
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	fputc_unlocked@PLT
.LBE18:
.LBE17:
	.loc 1 575 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE27:
	.size	dw2_asm_output_data_uleb128, .-dw2_asm_output_data_uleb128
	.section	.rodata
.LC91:
	.string	"\t.sleb128 "
.LC92:
	.string	"%lld"
	.text
.globl dw2_asm_output_data_sleb128
	.type	dw2_asm_output_data_sleb128, @function
dw2_asm_output_data_sleb128:
.LFB28:
	.loc 1 582 0
	pushl	%ebp
.LCFI54:
	movl	%esp, %ebp
.LCFI55:
	pushl	%ebx
.LCFI56:
	subl	$52, %esp
.LCFI57:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	movl	%eax, -32(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -28(%ebp)
.LBB19:
	.loc 1 583 0
	leal	20(%ebp), %eax
	movl	%eax, -12(%ebp)
.LBB20:
	.loc 1 588 0
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$10, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC91@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite_unlocked@PLT
	.loc 1 589 0
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	-32(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	leal	.LC92@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
	.loc 1 591 0
	movl	flag_debug_asm@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L129
	cmpl	$0, 16(%ebp)
	je	.L129
	.loc 1 593 0
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %edx
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
	.loc 1 594 0
	movl	-12(%ebp), %edx
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	vfprintf@PLT
.L129:
	.loc 1 637 0
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	fputc_unlocked@PLT
.LBE20:
.LBE19:
	.loc 1 640 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE28:
	.size	dw2_asm_output_data_sleb128, .-dw2_asm_output_data_sleb128
.globl dw2_asm_output_delta_uleb128
	.type	dw2_asm_output_delta_uleb128, @function
dw2_asm_output_delta_uleb128:
.LFB29:
	.loc 1 646 0
	pushl	%ebp
.LCFI58:
	movl	%esp, %ebp
.LCFI59:
	pushl	%ebx
.LCFI60:
	subl	$36, %esp
.LCFI61:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
.LBB21:
	.loc 1 647 0
	leal	20(%ebp), %eax
	movl	%eax, -8(%ebp)
.LBB22:
	.loc 1 653 0
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$10, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC90@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite_unlocked@PLT
	.loc 1 654 0
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	assemble_name@PLT
	.loc 1 655 0
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$45, (%esp)
	call	fputc_unlocked@PLT
	.loc 1 656 0
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	assemble_name@PLT
	.loc 1 661 0
	movl	flag_debug_asm@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L134
	cmpl	$0, 16(%ebp)
	je	.L134
	.loc 1 663 0
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %edx
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
	.loc 1 664 0
	movl	-8(%ebp), %edx
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	vfprintf@PLT
.L134:
	.loc 1 666 0
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	fputc_unlocked@PLT
.LBE22:
.LBE21:
	.loc 1 669 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE29:
	.size	dw2_asm_output_delta_uleb128, .-dw2_asm_output_delta_uleb128
.globl dw2_asm_output_delta_sleb128
	.type	dw2_asm_output_delta_sleb128, @function
dw2_asm_output_delta_sleb128:
.LFB30:
	.loc 1 675 0
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
.LBB23:
	.loc 1 676 0
	leal	20(%ebp), %eax
	movl	%eax, -8(%ebp)
.LBB24:
	.loc 1 682 0
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$10, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC91@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite_unlocked@PLT
	.loc 1 683 0
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	assemble_name@PLT
	.loc 1 684 0
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$45, (%esp)
	call	fputc_unlocked@PLT
	.loc 1 685 0
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	assemble_name@PLT
	.loc 1 690 0
	movl	flag_debug_asm@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L139
	cmpl	$0, 16(%ebp)
	je	.L139
	.loc 1 692 0
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %edx
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
	.loc 1 693 0
	movl	-8(%ebp), %edx
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	vfprintf@PLT
.L139:
	.loc 1 695 0
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	fputc_unlocked@PLT
.LBE24:
.LBE23:
	.loc 1 698 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE30:
	.size	dw2_asm_output_delta_sleb128, .-dw2_asm_output_delta_sleb128
	.type	mark_indirect_pool_entry, @function
mark_indirect_pool_entry:
.LFB31:
	.loc 1 719 0
	pushl	%ebp
.LCFI66:
	movl	%esp, %ebp
.LCFI67:
	pushl	%ebx
.LCFI68:
	subl	$4, %esp
.LCFI69:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 720 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L144
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_lang_tree_node@PLT
.L144:
	.loc 1 721 0
	movl	$0, %eax
	.loc 1 722 0
	addl	$4, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE31:
	.size	mark_indirect_pool_entry, .-mark_indirect_pool_entry
	.type	mark_indirect_pool, @function
mark_indirect_pool:
.LFB32:
	.loc 1 729 0
	pushl	%ebp
.LCFI70:
	movl	%esp, %ebp
.LCFI71:
	pushl	%ebx
.LCFI72:
	subl	$20, %esp
.LCFI73:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 730 0
	movl	indirect_pool@GOTOFF(%ebx), %edx
	movl	$0, 8(%esp)
	leal	mark_indirect_pool_entry@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	splay_tree_foreach@PLT
	.loc 1 731 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE32:
	.size	mark_indirect_pool, .-mark_indirect_pool
	.section	.rodata
	.type	__FUNCTION__.12494, @object
	.size	__FUNCTION__.12494, 20
__FUNCTION__.12494:
	.string	"dw2_force_const_mem"
.LC93:
	.string	"DW.ref.%s"
	.text
	.type	dw2_force_const_mem, @function
dw2_force_const_mem:
.LFB33:
	.loc 1 741 0
	pushl	%ebp
.LCFI74:
	movl	%esp, %ebp
.LCFI75:
	pushl	%edi
.LCFI76:
	pushl	%ebx
.LCFI77:
	subl	$64, %esp
.LCFI78:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	movl	%eax, -44(%ebp)
	.loc 1 741 0
	movl	%gs:20, %eax
	movl	%eax, -12(%ebp)
	xorl	%eax, %eax
	.loc 1 746 0
	movl	indirect_pool@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L150
	.loc 1 748 0
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	splay_tree_compare_pointers@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	splay_tree_new@PLT
	movl	%eax, indirect_pool@GOTOFF(%ebx)
	.loc 1 749 0
	leal	mark_indirect_pool@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	movl	$4, 8(%esp)
	movl	$1, 4(%esp)
	leal	indirect_pool@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	ggc_add_root@PLT
.L150:
	.loc 1 752 0
	movl	-44(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	je	.L152
	.loc 1 753 0
	leal	__FUNCTION__.12494@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$753, 4(%esp)
	leal	.LC6@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L152:
	.loc 1 755 0
	movl	targetm@GOT(%ebx), %eax
	movl	240(%eax), %edx
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	*%edx
	movl	%eax, -28(%ebp)
	.loc 1 756 0
	movl	-28(%ebp), %eax
	movl	indirect_pool@GOTOFF(%ebx), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	splay_tree_lookup@PLT
	movl	%eax, -32(%ebp)
	.loc 1 757 0
	cmpl	$0, -32(%ebp)
	je	.L154
	.loc 1 758 0
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L156
.L154:
.LBB25:
.LBB26:
	.loc 1 765 0
	movl	-28(%ebp), %eax
	movl	$-1, %ecx
	movl	%eax, -56(%ebp)
	movl	$0, %eax
	cld
	movl	-56(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	addl	$8, %eax
	addl	$15, %eax
	addl	$15, %eax
	shrl	$4, %eax
	sall	$4, %eax
	subl	%eax, %esp
	leal	16(%esp), %eax
	movl	%eax, -52(%ebp)
	movl	-52(%ebp), %eax
	addl	$15, %eax
	shrl	$4, %eax
	sall	$4, %eax
	movl	%eax, -52(%ebp)
	movl	-52(%ebp), %edx
	movl	%edx, -16(%ebp)
	.loc 1 767 0
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC93@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	sprintf@PLT
	.loc 1 768 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	get_identifier@PLT
	movl	%eax, -20(%ebp)
	.loc 1 769 0
	movl	global_trees@GOT(%ebx), %eax
	movl	132(%eax), %eax
	movl	%eax, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$35, (%esp)
	call	build_decl@PLT
	movl	%eax, -24(%ebp)
	.loc 1 770 0
	movl	-24(%ebp), %edx
	movzbl	35(%edx), %eax
	orl	$8, %eax
	movb	%al, 35(%edx)
	.loc 1 771 0
	movl	-24(%ebp), %edx
	movzbl	10(%edx), %eax
	orl	$8, %eax
	movb	%al, 10(%edx)
	.loc 1 772 0
	movl	-24(%ebp), %edx
	movl	-24(%ebp), %eax
	movl	%eax, 68(%edx)
	.loc 1 773 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	make_decl_one_only@PLT
.LBE26:
	.loc 1 789 0
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	maybe_get_identifier@PLT
	movl	%eax, -20(%ebp)
	.loc 1 790 0
	cmpl	$0, -20(%ebp)
	je	.L157
	.loc 1 791 0
	movl	-20(%ebp), %eax
	movzbl	10(%eax), %edx
	orl	$4, %edx
	movb	%dl, 10(%eax)
.L157:
	.loc 1 793 0
	movl	-24(%ebp), %eax
	movl	%eax, %ecx
	movl	-28(%ebp), %eax
	movl	indirect_pool@GOTOFF(%ebx), %edx
	movl	%ecx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	splay_tree_insert@PLT
.L156:
.LBE25:
	.loc 1 797 0
	movl	-24(%ebp), %eax
	movl	104(%eax), %eax
	testl	%eax, %eax
	je	.L159
	movl	-24(%ebp), %eax
	movl	104(%eax), %eax
	movl	%eax, -48(%ebp)
	jmp	.L161
.L159:
	movl	$0, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	make_decl_rtl@PLT
	movl	-24(%ebp), %eax
	movl	104(%eax), %eax
	movl	%eax, -48(%ebp)
.L161:
	movl	-48(%ebp), %edi
	movl	4(%edi), %eax
	.loc 1 798 0
	movl	-12(%ebp), %edx
	xorl	%gs:20, %edx
	je	.L163
	call	__stack_chk_fail_local
.L163:
	leal	-8(%ebp), %esp
	popl	%ebx
	popl	%edi
	popl	%ebp
	ret
.LFE33:
	.size	dw2_force_const_mem, .-dw2_force_const_mem
	.section	.rodata
.LC94:
	.string	"\t.hidden DW.ref.%s\n"
	.text
	.type	dw2_output_indirect_constant_1, @function
dw2_output_indirect_constant_1:
.LFB34:
	.loc 1 807 0
	pushl	%ebp
.LCFI79:
	movl	%esp, %ebp
.LCFI80:
	pushl	%ebx
.LCFI81:
	subl	$52, %esp
.LCFI82:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 811 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 812 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L165
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L165
	movl	$5, -32(%ebp)
	jmp	.L168
.L165:
	movl	$4, -32(%ebp)
.L168:
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$78, (%esp)
	call	gen_rtx_fmt_s@PLT
	movl	%eax, -8(%ebp)
	.loc 1 814 0
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC94@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
	.loc 1 815 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	$1, 12(%esp)
	movl	$1, 8(%esp)
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	assemble_variable@PLT
	.loc 1 816 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L169
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L169
	movl	$64, -28(%ebp)
	jmp	.L172
.L169:
	movl	$32, -28(%ebp)
.L172:
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L173
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L173
	movl	$8, -24(%ebp)
	jmp	.L176
.L173:
	movl	$4, -24(%ebp)
.L176:
	movl	$1, 12(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	assemble_integer@PLT
	.loc 1 818 0
	movl	$0, %eax
	.loc 1 819 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE34:
	.size	dw2_output_indirect_constant_1, .-dw2_output_indirect_constant_1
.globl dw2_output_indirect_constants
	.type	dw2_output_indirect_constants, @function
dw2_output_indirect_constants:
.LFB35:
	.loc 1 825 0
	pushl	%ebp
.LCFI83:
	movl	%esp, %ebp
.LCFI84:
	pushl	%ebx
.LCFI85:
	subl	$20, %esp
.LCFI86:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 826 0
	movl	indirect_pool@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L181
	.loc 1 827 0
	movl	indirect_pool@GOTOFF(%ebx), %edx
	movl	$0, 8(%esp)
	leal	dw2_output_indirect_constant_1@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	splay_tree_foreach@PLT
.L181:
	.loc 1 828 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE35:
	.size	dw2_output_indirect_constants, .-dw2_output_indirect_constants
	.section	.rodata
	.align 32
	.type	__FUNCTION__.12605, @object
	.size	__FUNCTION__.12605, 32
__FUNCTION__.12605:
	.string	"dw2_asm_output_encoded_addr_rtx"
	.text
.globl dw2_asm_output_encoded_addr_rtx
	.type	dw2_asm_output_encoded_addr_rtx, @function
dw2_asm_output_encoded_addr_rtx:
.LFB36:
	.loc 1 836 0
	pushl	%ebp
.LCFI87:
	movl	%esp, %ebp
.LCFI88:
	pushl	%ebx
.LCFI89:
	subl	$52, %esp
.LCFI90:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
.LBB27:
	.loc 1 839 0
	leal	20(%ebp), %eax
	movl	%eax, -12(%ebp)
.LBB28:
	.loc 1 844 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	size_of_encoded_value@PLT
	movl	%eax, -8(%ebp)
	.loc 1 846 0
	cmpl	$80, 8(%ebp)
	jne	.L183
	.loc 1 848 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L185
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L185
	movl	$64, -40(%ebp)
	jmp	.L188
.L185:
	movl	$32, -40(%ebp)
.L188:
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	assemble_align@PLT
	.loc 1 849 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L189
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L189
	movl	$64, -36(%ebp)
	jmp	.L192
.L189:
	movl	$32, -36(%ebp)
.L192:
	movl	-8(%ebp), %eax
	movl	$1, 12(%esp)
	movl	-36(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	assemble_integer@PLT
	.loc 1 850 0
	jmp	.L212
.L183:
	.loc 1 855 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	cmpl	12(%ebp), %eax
	je	.L194
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	260(%eax), %eax
	cmpl	12(%ebp), %eax
	jne	.L196
.L194:
	.loc 1 856 0
	movl	-8(%ebp), %eax
	movl	$1, 12(%esp)
	movl	$8, 8(%esp)
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	assemble_integer@PLT
	.loc 1 855 0
	jmp	.L197
.L196:
	.loc 1 870 0
	movl	8(%ebp), %eax
	andl	$128, %eax
	testl	%eax, %eax
	je	.L198
	.loc 1 877 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	dw2_force_const_mem
	movl	%eax, 12(%ebp)
	.loc 1 878 0
	andl	$-129, 8(%ebp)
	.loc 1 879 0
	jmp	.L196
.L198:
	.loc 1 882 0
	movl	8(%ebp), %eax
	andl	$240, %eax
	movl	%eax, -32(%ebp)
	cmpl	$0, -32(%ebp)
	je	.L201
	cmpl	$16, -32(%ebp)
	je	.L202
	jmp	.L200
.L201:
	.loc 1 885 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	dw2_assemble_integer@PLT
	.loc 1 886 0
	jmp	.L197
.L202:
	.loc 1 889 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	je	.L203
	.loc 1 890 0
	leal	__FUNCTION__.12605@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$890, 4(%esp)
	leal	.LC6@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L203:
	.loc 1 894 0
	movl	global_rtl@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L205
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L205
	movl	$5, -24(%ebp)
	jmp	.L208
.L205:
	movl	$4, -24(%ebp)
.L208:
	movl	-28(%ebp), %edx
	movl	%edx, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$86, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	dw2_assemble_integer@PLT
	.loc 1 896 0
	jmp	.L197
.L200:
	.loc 1 901 0
	leal	__FUNCTION__.12605@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$901, 4(%esp)
	leal	.LC6@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L197:
	.loc 1 909 0
	movl	flag_debug_asm@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L209
	cmpl	$0, 16(%ebp)
	je	.L209
	.loc 1 911 0
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %edx
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
	.loc 1 912 0
	movl	-12(%ebp), %edx
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	vfprintf@PLT
.L209:
	.loc 1 914 0
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	fputc_unlocked@PLT
.L212:
.LBE28:
.LBE27:
	.loc 1 917 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE36:
	.size	dw2_asm_output_encoded_addr_rtx, .-dw2_asm_output_encoded_addr_rtx
	.local	indirect_pool
	.comm	indirect_pool,4,4
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
	.long	.LCFI10-.LCFI6
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
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
	.long	.LCFI11-.LFB17
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
.LEFDE4:
.LSFDE6:
	.long	.LEFDE6-.LASFDE6
.LASFDE6:
	.long	.Lframe0
	.long	.LFB18
	.long	.LFE18-.LFB18
	.byte	0x4
	.long	.LCFI15-.LFB18
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
.LEFDE6:
.LSFDE8:
	.long	.LEFDE8-.LASFDE8
.LASFDE8:
	.long	.Lframe0
	.long	.LFB19
	.long	.LFE19-.LFB19
	.byte	0x4
	.long	.LCFI19-.LFB19
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
.LEFDE8:
.LSFDE10:
	.long	.LEFDE10-.LASFDE10
.LASFDE10:
	.long	.Lframe0
	.long	.LFB20
	.long	.LFE20-.LFB20
	.byte	0x4
	.long	.LCFI23-.LFB20
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
.LEFDE10:
.LSFDE12:
	.long	.LEFDE12-.LASFDE12
.LASFDE12:
	.long	.Lframe0
	.long	.LFB21
	.long	.LFE21-.LFB21
	.byte	0x4
	.long	.LCFI27-.LFB21
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
.LEFDE12:
.LSFDE14:
	.long	.LEFDE14-.LASFDE14
.LASFDE14:
	.long	.Lframe0
	.long	.LFB22
	.long	.LFE22-.LFB22
	.byte	0x4
	.long	.LCFI31-.LFB22
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI32-.LCFI31
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI35-.LCFI32
	.byte	0x83
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
	.align 4
.LEFDE16:
.LSFDE18:
	.long	.LEFDE18-.LASFDE18
.LASFDE18:
	.long	.Lframe0
	.long	.LFB24
	.long	.LFE24-.LFB24
	.byte	0x4
	.long	.LCFI39-.LFB24
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI40-.LCFI39
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE18:
.LSFDE20:
	.long	.LEFDE20-.LASFDE20
.LASFDE20:
	.long	.Lframe0
	.long	.LFB25
	.long	.LFE25-.LFB25
	.byte	0x4
	.long	.LCFI42-.LFB25
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI43-.LCFI42
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI45-.LCFI43
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
	.long	.LCFI46-.LFB26
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI47-.LCFI46
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI49-.LCFI47
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
	.long	.LCFI50-.LFB27
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI51-.LCFI50
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI53-.LCFI51
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
	.long	.LCFI54-.LFB28
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI55-.LCFI54
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI57-.LCFI55
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
	.long	.LCFI58-.LFB29
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI59-.LCFI58
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI61-.LCFI59
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
	.long	.LCFI62-.LFB30
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
.LEFDE30:
.LSFDE32:
	.long	.LEFDE32-.LASFDE32
.LASFDE32:
	.long	.Lframe0
	.long	.LFB31
	.long	.LFE31-.LFB31
	.byte	0x4
	.long	.LCFI66-.LFB31
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI67-.LCFI66
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI69-.LCFI67
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
	.long	.LCFI70-.LFB32
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI71-.LCFI70
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI73-.LCFI71
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
	.byte	0x87
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
	.long	.LCFI82-.LCFI80
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
	.long	.LCFI83-.LFB35
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
.LEFDE40:
.LSFDE42:
	.long	.LEFDE42-.LASFDE42
.LASFDE42:
	.long	.Lframe0
	.long	.LFB36
	.long	.LFE36-.LFB36
	.byte	0x4
	.long	.LCFI87-.LFB36
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI88-.LCFI87
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI90-.LCFI88
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE42:
	.file 2 "../../../kg++fe/gnu/MIPS/config.h"
	.file 3 "../../../kg++fe/gnu/rtl.h"
	.file 4 "../../../kg++fe/gnu/machmode.h"
	.file 5 "../../../kg++fe/gnu/tree.h"
	.file 6 "../../../kg++fe/gnu/hashtable.h"
	.file 7 "../../../kg++fe/gnu/location.h"
	.file 8 "../../../kg++fe/omp_types.h"
	.file 9 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stdarg.h"
	.file 10 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h"
	.file 11 "../../../include/gnu/splay-tree.h"
	.file 12 "../../../kg++fe/gnu/MIPS/mips.h"
	.file 13 "../../../include/gnu/safe-ctype.h"
	.file 14 "../../../kg++fe/gnu/flags.h"
	.file 15 "../../../kg++fe/gnu/output.h"
	.file 16 "/usr/include/stdio.h"
	.file 17 "/usr/include/libio.h"
	.file 18 "/usr/include/bits/types.h"
	.file 19 "../../../kg++fe/gnu/target.h"
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
	.long	.LFE17-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST3:
	.long	.LFB18-.Ltext0
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
	.long	.LFE18-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST4:
	.long	.LFB19-.Ltext0
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
	.long	.LFE19-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST5:
	.long	.LFB20-.Ltext0
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
	.long	.LFE20-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST6:
	.long	.LFB21-.Ltext0
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
	.long	.LFE21-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST7:
	.long	.LFB22-.Ltext0
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
.LLST9:
	.long	.LFB24-.Ltext0
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
	.long	.LFE24-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST10:
	.long	.LFB25-.Ltext0
	.long	.LCFI42-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI42-.Ltext0
	.long	.LCFI43-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI43-.Ltext0
	.long	.LFE25-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST11:
	.long	.LFB26-.Ltext0
	.long	.LCFI46-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI46-.Ltext0
	.long	.LCFI47-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI47-.Ltext0
	.long	.LFE26-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST12:
	.long	.LFB27-.Ltext0
	.long	.LCFI50-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI50-.Ltext0
	.long	.LCFI51-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI51-.Ltext0
	.long	.LFE27-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST13:
	.long	.LFB28-.Ltext0
	.long	.LCFI54-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI54-.Ltext0
	.long	.LCFI55-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI55-.Ltext0
	.long	.LFE28-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST14:
	.long	.LFB29-.Ltext0
	.long	.LCFI58-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI58-.Ltext0
	.long	.LCFI59-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI59-.Ltext0
	.long	.LFE29-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST15:
	.long	.LFB30-.Ltext0
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
	.long	.LFE30-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST16:
	.long	.LFB31-.Ltext0
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
	.long	.LFE31-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST17:
	.long	.LFB32-.Ltext0
	.long	.LCFI70-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI70-.Ltext0
	.long	.LCFI71-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI71-.Ltext0
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
	.long	.LFE35-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST21:
	.long	.LFB36-.Ltext0
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
	.long	.LFE36-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
	.section	.debug_info
	.long	0x69bc
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.Ldebug_line0
	.long	.Letext0
	.long	.Ltext0
	.string	"GNU C 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.byte	0x1
	.string	"../../../kg++fe/gnu/dwarf2asm.c"
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
	.long	0x98c
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
	.long	0x743
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
	.long	0x2ed
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
	.long	0x2ed
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
	.long	0x2ed
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
	.long	0x2ed
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
	.long	0x2ed
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
	.long	0x2ed
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
	.long	0x2ed
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
	.long	0x2ed
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
	.long	0x13e7
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
	.long	0x2e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"elem"
	.byte	0x3
	.byte	0xf3
	.long	0x13f7
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
	.long	0x2d3
	.string	"tree_node"
	.byte	0xa0
	.byte	0x2
	.byte	0xf
	.uleb128 0x8
	.long	.LASF0
	.byte	0x5
	.value	0x887
	.long	0x3acc
	.uleb128 0x9
	.string	"int_cst"
	.byte	0x5
	.value	0x888
	.long	0x3deb
	.uleb128 0x9
	.string	"real_cst"
	.byte	0x5
	.value	0x889
	.long	0x3e33
	.uleb128 0x9
	.string	"vector"
	.byte	0x5
	.value	0x88a
	.long	0x3f56
	.uleb128 0x9
	.string	"string"
	.byte	0x5
	.value	0x88b
	.long	0x3e94
	.uleb128 0x9
	.string	"complex"
	.byte	0x5
	.value	0x88c
	.long	0x3f01
	.uleb128 0x9
	.string	"identifier"
	.byte	0x5
	.value	0x88d
	.long	0x3fdc
	.uleb128 0x9
	.string	"decl"
	.byte	0x5
	.value	0x88e
	.long	0x46a0
	.uleb128 0x9
	.string	"type"
	.byte	0x5
	.value	0x88f
	.long	0x423f
	.uleb128 0x9
	.string	"list"
	.byte	0x5
	.value	0x890
	.long	0x4013
	.uleb128 0x9
	.string	"vec"
	.byte	0x5
	.value	0x891
	.long	0x4058
	.uleb128 0x9
	.string	"exp"
	.byte	0x5
	.value	0x892
	.long	0x40a9
	.uleb128 0x9
	.string	"block"
	.byte	0x5
	.value	0x893
	.long	0x40f5
	.uleb128 0x9
	.string	"omp"
	.byte	0x5
	.value	0x895
	.long	0x5079
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x2d9
	.uleb128 0xa
	.long	0x2de
	.uleb128 0xb
	.string	"char"
	.byte	0x1
	.byte	0x8
	.uleb128 0xb
	.string	"int"
	.byte	0x4
	.byte	0x5
	.uleb128 0xc
	.long	.LASF1
	.byte	0x4
	.byte	0x7
	.uleb128 0xc
	.long	.LASF1
	.byte	0x4
	.byte	0x7
	.uleb128 0x2
	.string	"__gnuc_va_list"
	.byte	0x9
	.byte	0x2b
	.long	0x311
	.uleb128 0x3
	.byte	0x4
	.long	0x2de
	.uleb128 0x2
	.string	"va_list"
	.byte	0x9
	.byte	0x69
	.long	0x2fb
	.uleb128 0x2
	.string	"size_t"
	.byte	0xa
	.byte	0xd6
	.long	0x2ed
	.uleb128 0xb
	.string	"unsigned char"
	.byte	0x1
	.byte	0x8
	.uleb128 0xb
	.string	"short unsigned int"
	.byte	0x2
	.byte	0x7
	.uleb128 0xb
	.string	"long unsigned int"
	.byte	0x4
	.byte	0x7
	.uleb128 0xb
	.string	"signed char"
	.byte	0x1
	.byte	0x6
	.uleb128 0xb
	.string	"short int"
	.byte	0x2
	.byte	0x5
	.uleb128 0xb
	.string	"long long int"
	.byte	0x8
	.byte	0x5
	.uleb128 0xb
	.string	"long long unsigned int"
	.byte	0x8
	.byte	0x7
	.uleb128 0x2
	.string	"__quad_t"
	.byte	0x12
	.byte	0x3b
	.long	0x38c
	.uleb128 0x2
	.string	"__off_t"
	.byte	0x12
	.byte	0x90
	.long	0x3d6
	.uleb128 0xb
	.string	"long int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x2
	.string	"__off64_t"
	.byte	0x12
	.byte	0x91
	.long	0x3b7
	.uleb128 0xd
	.byte	0x4
	.uleb128 0x3
	.byte	0x4
	.long	0x2de
	.uleb128 0x2
	.string	"FILE"
	.byte	0x10
	.byte	0x2e
	.long	0x407
	.uleb128 0xe
	.long	0x682
	.long	.LASF2
	.byte	0x94
	.byte	0x10
	.byte	0x2e
	.uleb128 0xf
	.string	"_flags"
	.byte	0x11
	.value	0x10c
	.long	0x2e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.string	"_IO_read_ptr"
	.byte	0x11
	.value	0x111
	.long	0x3f5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xf
	.string	"_IO_read_end"
	.byte	0x11
	.value	0x112
	.long	0x3f5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xf
	.string	"_IO_read_base"
	.byte	0x11
	.value	0x113
	.long	0x3f5
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xf
	.string	"_IO_write_base"
	.byte	0x11
	.value	0x114
	.long	0x3f5
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xf
	.string	"_IO_write_ptr"
	.byte	0x11
	.value	0x115
	.long	0x3f5
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xf
	.string	"_IO_write_end"
	.byte	0x11
	.value	0x116
	.long	0x3f5
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xf
	.string	"_IO_buf_base"
	.byte	0x11
	.value	0x117
	.long	0x3f5
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xf
	.string	"_IO_buf_end"
	.byte	0x11
	.value	0x118
	.long	0x3f5
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xf
	.string	"_IO_save_base"
	.byte	0x11
	.value	0x11a
	.long	0x3f5
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xf
	.string	"_IO_backup_base"
	.byte	0x11
	.value	0x11b
	.long	0x3f5
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xf
	.string	"_IO_save_end"
	.byte	0x11
	.value	0x11c
	.long	0x3f5
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xf
	.string	"_markers"
	.byte	0x11
	.value	0x11e
	.long	0x6de
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xf
	.string	"_chain"
	.byte	0x11
	.value	0x120
	.long	0x6e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xf
	.string	"_fileno"
	.byte	0x11
	.value	0x122
	.long	0x2e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xf
	.string	"_flags2"
	.byte	0x11
	.value	0x126
	.long	0x2e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xf
	.string	"_old_offset"
	.byte	0x11
	.value	0x128
	.long	0x3c7
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xf
	.string	"_cur_column"
	.byte	0x11
	.value	0x12c
	.long	0x345
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xf
	.string	"_vtable_offset"
	.byte	0x11
	.value	0x12d
	.long	0x370
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0xf
	.string	"_shortbuf"
	.byte	0x11
	.value	0x12e
	.long	0x6ea
	.byte	0x2
	.byte	0x23
	.uleb128 0x47
	.uleb128 0xf
	.string	"_lock"
	.byte	0x11
	.value	0x132
	.long	0x6fa
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xf
	.string	"_offset"
	.byte	0x11
	.value	0x13b
	.long	0x3e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xf
	.string	"__pad1"
	.byte	0x11
	.value	0x144
	.long	0x3f3
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xf
	.string	"__pad2"
	.byte	0x11
	.value	0x145
	.long	0x3f3
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xf
	.string	"__pad3"
	.byte	0x11
	.value	0x146
	.long	0x3f3
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xf
	.string	"__pad4"
	.byte	0x11
	.value	0x147
	.long	0x3f3
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xf
	.string	"__pad5"
	.byte	0x11
	.value	0x148
	.long	0x326
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xf
	.string	"_mode"
	.byte	0x11
	.value	0x14a
	.long	0x2e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xf
	.string	"_unused2"
	.byte	0x11
	.value	0x14c
	.long	0x700
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x688
	.uleb128 0xa
	.long	0x334
	.uleb128 0x10
	.string	"_IO_lock_t"
	.byte	0x11
	.byte	0xb0
	.uleb128 0x4
	.long	0x6de
	.string	"_IO_marker"
	.byte	0xc
	.byte	0x11
	.byte	0xb6
	.uleb128 0x6
	.string	"_next"
	.byte	0x11
	.byte	0xb7
	.long	0x6de
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"_sbuf"
	.byte	0x11
	.byte	0xb8
	.long	0x6e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"_pos"
	.byte	0x11
	.byte	0xbc
	.long	0x2e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x69b
	.uleb128 0x3
	.byte	0x4
	.long	0x407
	.uleb128 0x11
	.long	0x6fa
	.long	0x2de
	.uleb128 0x12
	.long	0x2f4
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x68d
	.uleb128 0x11
	.long	0x710
	.long	0x2de
	.uleb128 0x12
	.long	0x2f4
	.byte	0x27
	.byte	0x0
	.uleb128 0x11
	.long	0x720
	.long	0x2de
	.uleb128 0x12
	.long	0x2f4
	.byte	0x1f
	.byte	0x0
	.uleb128 0x11
	.long	0x730
	.long	0x2de
	.uleb128 0x12
	.long	0x2f4
	.byte	0x13
	.byte	0x0
	.uleb128 0xa
	.long	0x2e6
	.uleb128 0x3
	.byte	0x4
	.long	0x2e6
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x73b
	.uleb128 0x14
	.long	0x98c
	.string	"machine_mode"
	.byte	0x4
	.byte	0x4
	.byte	0x1d
	.uleb128 0x15
	.string	"VOIDmode"
	.sleb128 0
	.uleb128 0x15
	.string	"BImode"
	.sleb128 1
	.uleb128 0x15
	.string	"QImode"
	.sleb128 2
	.uleb128 0x15
	.string	"HImode"
	.sleb128 3
	.uleb128 0x15
	.string	"SImode"
	.sleb128 4
	.uleb128 0x15
	.string	"DImode"
	.sleb128 5
	.uleb128 0x15
	.string	"TImode"
	.sleb128 6
	.uleb128 0x15
	.string	"OImode"
	.sleb128 7
	.uleb128 0x15
	.string	"PQImode"
	.sleb128 8
	.uleb128 0x15
	.string	"PHImode"
	.sleb128 9
	.uleb128 0x15
	.string	"PSImode"
	.sleb128 10
	.uleb128 0x15
	.string	"PDImode"
	.sleb128 11
	.uleb128 0x15
	.string	"QFmode"
	.sleb128 12
	.uleb128 0x15
	.string	"HFmode"
	.sleb128 13
	.uleb128 0x15
	.string	"TQFmode"
	.sleb128 14
	.uleb128 0x15
	.string	"SFmode"
	.sleb128 15
	.uleb128 0x15
	.string	"DFmode"
	.sleb128 16
	.uleb128 0x15
	.string	"XFmode"
	.sleb128 17
	.uleb128 0x15
	.string	"TFmode"
	.sleb128 18
	.uleb128 0x15
	.string	"QCmode"
	.sleb128 19
	.uleb128 0x15
	.string	"HCmode"
	.sleb128 20
	.uleb128 0x15
	.string	"SCmode"
	.sleb128 21
	.uleb128 0x15
	.string	"DCmode"
	.sleb128 22
	.uleb128 0x15
	.string	"XCmode"
	.sleb128 23
	.uleb128 0x15
	.string	"TCmode"
	.sleb128 24
	.uleb128 0x15
	.string	"CQImode"
	.sleb128 25
	.uleb128 0x15
	.string	"CHImode"
	.sleb128 26
	.uleb128 0x15
	.string	"CSImode"
	.sleb128 27
	.uleb128 0x15
	.string	"CDImode"
	.sleb128 28
	.uleb128 0x15
	.string	"CTImode"
	.sleb128 29
	.uleb128 0x15
	.string	"COImode"
	.sleb128 30
	.uleb128 0x15
	.string	"V1DImode"
	.sleb128 31
	.uleb128 0x15
	.string	"V2QImode"
	.sleb128 32
	.uleb128 0x15
	.string	"V2HImode"
	.sleb128 33
	.uleb128 0x15
	.string	"V2SImode"
	.sleb128 34
	.uleb128 0x15
	.string	"V2DImode"
	.sleb128 35
	.uleb128 0x15
	.string	"V4QImode"
	.sleb128 36
	.uleb128 0x15
	.string	"V4HImode"
	.sleb128 37
	.uleb128 0x15
	.string	"V4SImode"
	.sleb128 38
	.uleb128 0x15
	.string	"V4DImode"
	.sleb128 39
	.uleb128 0x15
	.string	"V8QImode"
	.sleb128 40
	.uleb128 0x15
	.string	"V8HImode"
	.sleb128 41
	.uleb128 0x15
	.string	"V8SImode"
	.sleb128 42
	.uleb128 0x15
	.string	"V8DImode"
	.sleb128 43
	.uleb128 0x15
	.string	"V16QImode"
	.sleb128 44
	.uleb128 0x15
	.string	"V2SFmode"
	.sleb128 45
	.uleb128 0x15
	.string	"V2DFmode"
	.sleb128 46
	.uleb128 0x15
	.string	"V4SFmode"
	.sleb128 47
	.uleb128 0x15
	.string	"V4DFmode"
	.sleb128 48
	.uleb128 0x15
	.string	"V8SFmode"
	.sleb128 49
	.uleb128 0x15
	.string	"V8DFmode"
	.sleb128 50
	.uleb128 0x15
	.string	"V16SFmode"
	.sleb128 51
	.uleb128 0x15
	.string	"BLKmode"
	.sleb128 52
	.uleb128 0x15
	.string	"CCmode"
	.sleb128 53
	.uleb128 0x15
	.string	"MAX_MACHINE_MODE"
	.sleb128 54
	.byte	0x0
	.uleb128 0x14
	.long	0x115b
	.string	"rtx_code"
	.byte	0x4
	.byte	0x3
	.byte	0x29
	.uleb128 0x15
	.string	"UNKNOWN"
	.sleb128 0
	.uleb128 0x15
	.string	"NIL"
	.sleb128 1
	.uleb128 0x15
	.string	"INCLUDE"
	.sleb128 2
	.uleb128 0x15
	.string	"EXPR_LIST"
	.sleb128 3
	.uleb128 0x15
	.string	"INSN_LIST"
	.sleb128 4
	.uleb128 0x15
	.string	"MATCH_OPERAND"
	.sleb128 5
	.uleb128 0x15
	.string	"MATCH_SCRATCH"
	.sleb128 6
	.uleb128 0x15
	.string	"MATCH_DUP"
	.sleb128 7
	.uleb128 0x15
	.string	"MATCH_OPERATOR"
	.sleb128 8
	.uleb128 0x15
	.string	"MATCH_PARALLEL"
	.sleb128 9
	.uleb128 0x15
	.string	"MATCH_OP_DUP"
	.sleb128 10
	.uleb128 0x15
	.string	"MATCH_PAR_DUP"
	.sleb128 11
	.uleb128 0x15
	.string	"MATCH_INSN"
	.sleb128 12
	.uleb128 0x15
	.string	"DEFINE_INSN"
	.sleb128 13
	.uleb128 0x15
	.string	"DEFINE_PEEPHOLE"
	.sleb128 14
	.uleb128 0x15
	.string	"DEFINE_SPLIT"
	.sleb128 15
	.uleb128 0x15
	.string	"DEFINE_INSN_AND_SPLIT"
	.sleb128 16
	.uleb128 0x15
	.string	"DEFINE_PEEPHOLE2"
	.sleb128 17
	.uleb128 0x15
	.string	"DEFINE_COMBINE"
	.sleb128 18
	.uleb128 0x15
	.string	"DEFINE_EXPAND"
	.sleb128 19
	.uleb128 0x15
	.string	"DEFINE_DELAY"
	.sleb128 20
	.uleb128 0x15
	.string	"DEFINE_FUNCTION_UNIT"
	.sleb128 21
	.uleb128 0x15
	.string	"DEFINE_ASM_ATTRIBUTES"
	.sleb128 22
	.uleb128 0x15
	.string	"DEFINE_COND_EXEC"
	.sleb128 23
	.uleb128 0x15
	.string	"SEQUENCE"
	.sleb128 24
	.uleb128 0x15
	.string	"ADDRESS"
	.sleb128 25
	.uleb128 0x15
	.string	"DEFINE_CPU_UNIT"
	.sleb128 26
	.uleb128 0x15
	.string	"DEFINE_QUERY_CPU_UNIT"
	.sleb128 27
	.uleb128 0x15
	.string	"EXCLUSION_SET"
	.sleb128 28
	.uleb128 0x15
	.string	"PRESENCE_SET"
	.sleb128 29
	.uleb128 0x15
	.string	"ABSENCE_SET"
	.sleb128 30
	.uleb128 0x15
	.string	"DEFINE_BYPASS"
	.sleb128 31
	.uleb128 0x15
	.string	"DEFINE_AUTOMATON"
	.sleb128 32
	.uleb128 0x15
	.string	"AUTOMATA_OPTION"
	.sleb128 33
	.uleb128 0x15
	.string	"DEFINE_RESERVATION"
	.sleb128 34
	.uleb128 0x15
	.string	"DEFINE_INSN_RESERVATION"
	.sleb128 35
	.uleb128 0x15
	.string	"DEFINE_ATTR"
	.sleb128 36
	.uleb128 0x15
	.string	"ATTR"
	.sleb128 37
	.uleb128 0x15
	.string	"SET_ATTR"
	.sleb128 38
	.uleb128 0x15
	.string	"SET_ATTR_ALTERNATIVE"
	.sleb128 39
	.uleb128 0x15
	.string	"EQ_ATTR"
	.sleb128 40
	.uleb128 0x15
	.string	"ATTR_FLAG"
	.sleb128 41
	.uleb128 0x15
	.string	"INSN"
	.sleb128 42
	.uleb128 0x15
	.string	"JUMP_INSN"
	.sleb128 43
	.uleb128 0x15
	.string	"CALL_INSN"
	.sleb128 44
	.uleb128 0x15
	.string	"BARRIER"
	.sleb128 45
	.uleb128 0x15
	.string	"CODE_LABEL"
	.sleb128 46
	.uleb128 0x15
	.string	"NOTE"
	.sleb128 47
	.uleb128 0x15
	.string	"COND_EXEC"
	.sleb128 48
	.uleb128 0x15
	.string	"PARALLEL"
	.sleb128 49
	.uleb128 0x15
	.string	"ASM_INPUT"
	.sleb128 50
	.uleb128 0x15
	.string	"ASM_OPERANDS"
	.sleb128 51
	.uleb128 0x15
	.string	"UNSPEC"
	.sleb128 52
	.uleb128 0x15
	.string	"UNSPEC_VOLATILE"
	.sleb128 53
	.uleb128 0x15
	.string	"ADDR_VEC"
	.sleb128 54
	.uleb128 0x15
	.string	"ADDR_DIFF_VEC"
	.sleb128 55
	.uleb128 0x15
	.string	"PREFETCH"
	.sleb128 56
	.uleb128 0x15
	.string	"SET"
	.sleb128 57
	.uleb128 0x15
	.string	"USE"
	.sleb128 58
	.uleb128 0x15
	.string	"CLOBBER"
	.sleb128 59
	.uleb128 0x15
	.string	"CALL"
	.sleb128 60
	.uleb128 0x15
	.string	"RETURN"
	.sleb128 61
	.uleb128 0x15
	.string	"TRAP_IF"
	.sleb128 62
	.uleb128 0x15
	.string	"RESX"
	.sleb128 63
	.uleb128 0x15
	.string	"CONST_INT"
	.sleb128 64
	.uleb128 0x15
	.string	"CONST_DOUBLE"
	.sleb128 65
	.uleb128 0x15
	.string	"CONST_VECTOR"
	.sleb128 66
	.uleb128 0x15
	.string	"CONST_STRING"
	.sleb128 67
	.uleb128 0x15
	.string	"CONST"
	.sleb128 68
	.uleb128 0x15
	.string	"PC"
	.sleb128 69
	.uleb128 0x15
	.string	"VALUE"
	.sleb128 70
	.uleb128 0x15
	.string	"REG"
	.sleb128 71
	.uleb128 0x15
	.string	"SCRATCH"
	.sleb128 72
	.uleb128 0x15
	.string	"SUBREG"
	.sleb128 73
	.uleb128 0x15
	.string	"STRICT_LOW_PART"
	.sleb128 74
	.uleb128 0x15
	.string	"CONCAT"
	.sleb128 75
	.uleb128 0x15
	.string	"MEM"
	.sleb128 76
	.uleb128 0x15
	.string	"LABEL_REF"
	.sleb128 77
	.uleb128 0x15
	.string	"SYMBOL_REF"
	.sleb128 78
	.uleb128 0x15
	.string	"CC0"
	.sleb128 79
	.uleb128 0x15
	.string	"ADDRESSOF"
	.sleb128 80
	.uleb128 0x15
	.string	"QUEUED"
	.sleb128 81
	.uleb128 0x15
	.string	"IF_THEN_ELSE"
	.sleb128 82
	.uleb128 0x15
	.string	"COND"
	.sleb128 83
	.uleb128 0x15
	.string	"COMPARE"
	.sleb128 84
	.uleb128 0x15
	.string	"PLUS"
	.sleb128 85
	.uleb128 0x15
	.string	"MINUS"
	.sleb128 86
	.uleb128 0x15
	.string	"NEG"
	.sleb128 87
	.uleb128 0x15
	.string	"MULT"
	.sleb128 88
	.uleb128 0x15
	.string	"DIV"
	.sleb128 89
	.uleb128 0x15
	.string	"MOD"
	.sleb128 90
	.uleb128 0x15
	.string	"UDIV"
	.sleb128 91
	.uleb128 0x15
	.string	"UMOD"
	.sleb128 92
	.uleb128 0x15
	.string	"AND"
	.sleb128 93
	.uleb128 0x15
	.string	"IOR"
	.sleb128 94
	.uleb128 0x15
	.string	"XOR"
	.sleb128 95
	.uleb128 0x15
	.string	"NOT"
	.sleb128 96
	.uleb128 0x15
	.string	"ASHIFT"
	.sleb128 97
	.uleb128 0x15
	.string	"ROTATE"
	.sleb128 98
	.uleb128 0x15
	.string	"ASHIFTRT"
	.sleb128 99
	.uleb128 0x15
	.string	"LSHIFTRT"
	.sleb128 100
	.uleb128 0x15
	.string	"ROTATERT"
	.sleb128 101
	.uleb128 0x15
	.string	"SMIN"
	.sleb128 102
	.uleb128 0x15
	.string	"SMAX"
	.sleb128 103
	.uleb128 0x15
	.string	"UMIN"
	.sleb128 104
	.uleb128 0x15
	.string	"UMAX"
	.sleb128 105
	.uleb128 0x15
	.string	"PRE_DEC"
	.sleb128 106
	.uleb128 0x15
	.string	"PRE_INC"
	.sleb128 107
	.uleb128 0x15
	.string	"POST_DEC"
	.sleb128 108
	.uleb128 0x15
	.string	"POST_INC"
	.sleb128 109
	.uleb128 0x15
	.string	"PRE_MODIFY"
	.sleb128 110
	.uleb128 0x15
	.string	"POST_MODIFY"
	.sleb128 111
	.uleb128 0x15
	.string	"NE"
	.sleb128 112
	.uleb128 0x15
	.string	"EQ"
	.sleb128 113
	.uleb128 0x15
	.string	"GE"
	.sleb128 114
	.uleb128 0x15
	.string	"GT"
	.sleb128 115
	.uleb128 0x15
	.string	"LE"
	.sleb128 116
	.uleb128 0x15
	.string	"LT"
	.sleb128 117
	.uleb128 0x15
	.string	"GEU"
	.sleb128 118
	.uleb128 0x15
	.string	"GTU"
	.sleb128 119
	.uleb128 0x15
	.string	"LEU"
	.sleb128 120
	.uleb128 0x15
	.string	"LTU"
	.sleb128 121
	.uleb128 0x15
	.string	"UNORDERED"
	.sleb128 122
	.uleb128 0x15
	.string	"ORDERED"
	.sleb128 123
	.uleb128 0x15
	.string	"UNEQ"
	.sleb128 124
	.uleb128 0x15
	.string	"UNGE"
	.sleb128 125
	.uleb128 0x15
	.string	"UNGT"
	.sleb128 126
	.uleb128 0x15
	.string	"UNLE"
	.sleb128 127
	.uleb128 0x15
	.string	"UNLT"
	.sleb128 128
	.uleb128 0x15
	.string	"LTGT"
	.sleb128 129
	.uleb128 0x15
	.string	"SIGN_EXTEND"
	.sleb128 130
	.uleb128 0x15
	.string	"ZERO_EXTEND"
	.sleb128 131
	.uleb128 0x15
	.string	"TRUNCATE"
	.sleb128 132
	.uleb128 0x15
	.string	"FLOAT_EXTEND"
	.sleb128 133
	.uleb128 0x15
	.string	"FLOAT_TRUNCATE"
	.sleb128 134
	.uleb128 0x15
	.string	"FLOAT"
	.sleb128 135
	.uleb128 0x15
	.string	"FIX"
	.sleb128 136
	.uleb128 0x15
	.string	"UNSIGNED_FLOAT"
	.sleb128 137
	.uleb128 0x15
	.string	"UNSIGNED_FIX"
	.sleb128 138
	.uleb128 0x15
	.string	"ABS"
	.sleb128 139
	.uleb128 0x15
	.string	"SQRT"
	.sleb128 140
	.uleb128 0x15
	.string	"FFS"
	.sleb128 141
	.uleb128 0x15
	.string	"SIGN_EXTRACT"
	.sleb128 142
	.uleb128 0x15
	.string	"ZERO_EXTRACT"
	.sleb128 143
	.uleb128 0x15
	.string	"HIGH"
	.sleb128 144
	.uleb128 0x15
	.string	"LO_SUM"
	.sleb128 145
	.uleb128 0x15
	.string	"RANGE_INFO"
	.sleb128 146
	.uleb128 0x15
	.string	"RANGE_REG"
	.sleb128 147
	.uleb128 0x15
	.string	"RANGE_VAR"
	.sleb128 148
	.uleb128 0x15
	.string	"RANGE_LIVE"
	.sleb128 149
	.uleb128 0x15
	.string	"CONSTANT_P_RTX"
	.sleb128 150
	.uleb128 0x15
	.string	"CALL_PLACEHOLDER"
	.sleb128 151
	.uleb128 0x15
	.string	"VEC_MERGE"
	.sleb128 152
	.uleb128 0x15
	.string	"VEC_SELECT"
	.sleb128 153
	.uleb128 0x15
	.string	"VEC_CONCAT"
	.sleb128 154
	.uleb128 0x15
	.string	"VEC_DUPLICATE"
	.sleb128 155
	.uleb128 0x15
	.string	"SS_PLUS"
	.sleb128 156
	.uleb128 0x15
	.string	"US_PLUS"
	.sleb128 157
	.uleb128 0x15
	.string	"SS_MINUS"
	.sleb128 158
	.uleb128 0x15
	.string	"US_MINUS"
	.sleb128 159
	.uleb128 0x15
	.string	"SS_TRUNCATE"
	.sleb128 160
	.uleb128 0x15
	.string	"US_TRUNCATE"
	.sleb128 161
	.uleb128 0x15
	.string	"PHI"
	.sleb128 162
	.uleb128 0x15
	.string	"LAST_AND_UNUSED_RTX_CODE"
	.sleb128 163
	.byte	0x0
	.uleb128 0x16
	.long	0x1235
	.byte	0x4
	.byte	0x3
	.byte	0x47
	.uleb128 0x5
	.string	"min_align"
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
	.byte	0x58
	.long	0x115b
	.uleb128 0xe
	.long	0x12ab
	.long	.LASF3
	.byte	0x18
	.byte	0x3
	.byte	0x62
	.uleb128 0x6
	.string	"alias"
	.byte	0x3
	.byte	0x63
	.long	0x38c
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
	.uleb128 0x17
	.long	.LASF4
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
	.long	0x2ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x18
	.long	.LASF3
	.byte	0x3
	.byte	0x68
	.long	0x1250
	.uleb128 0x7
	.long	0x1388
	.string	"rtunion_def"
	.byte	0x8
	.byte	0x3
	.byte	0x6d
	.uleb128 0x19
	.string	"rtwint"
	.byte	0x3
	.byte	0x6e
	.long	0x38c
	.uleb128 0x19
	.string	"rtint"
	.byte	0x3
	.byte	0x6f
	.long	0x2e6
	.uleb128 0x19
	.string	"rtuint"
	.byte	0x3
	.byte	0x70
	.long	0x2ed
	.uleb128 0x19
	.string	"rtstr"
	.byte	0x3
	.byte	0x71
	.long	0x2d3
	.uleb128 0x19
	.string	"rtx"
	.byte	0x3
	.byte	0x72
	.long	0x9e
	.uleb128 0x19
	.string	"rtvec"
	.byte	0x3
	.byte	0x73
	.long	0x19f
	.uleb128 0x19
	.string	"rttype"
	.byte	0x3
	.byte	0x74
	.long	0x743
	.uleb128 0x19
	.string	"rt_addr_diff_vec_flags"
	.byte	0x3
	.byte	0x75
	.long	0x1235
	.uleb128 0x19
	.string	"rt_cselib"
	.byte	0x3
	.byte	0x76
	.long	0x139c
	.uleb128 0x19
	.string	"rtbit"
	.byte	0x3
	.byte	0x77
	.long	0x13b4
	.uleb128 0x19
	.string	"rttree"
	.byte	0x3
	.byte	0x78
	.long	0x1e7
	.uleb128 0x19
	.string	"bb"
	.byte	0x3
	.byte	0x79
	.long	0x13cc
	.uleb128 0x19
	.string	"rtmem"
	.byte	0x3
	.byte	0x7a
	.long	0x13d2
	.byte	0x0
	.uleb128 0x1a
	.string	"cselib_val_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x1388
	.uleb128 0x1a
	.string	"bitmap_head_def"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x13a2
	.uleb128 0x1a
	.string	"basic_block_def"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x13ba
	.uleb128 0x3
	.byte	0x4
	.long	0x12ab
	.uleb128 0x2
	.string	"rtunion"
	.byte	0x3
	.byte	0x7c
	.long	0x12b6
	.uleb128 0x11
	.long	0x13f7
	.long	0x13d8
	.uleb128 0x12
	.long	0x2f4
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
	.long	0x1407
	.long	0x9e
	.uleb128 0x12
	.long	0x2f4
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x9e
	.uleb128 0x4
	.long	0x143f
	.string	"location_s"
	.byte	0x8
	.byte	0x7
	.byte	0x1c
	.uleb128 0x6
	.string	"file"
	.byte	0x7
	.byte	0x1e
	.long	0x2d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"line"
	.byte	0x7
	.byte	0x21
	.long	0x2e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"location_t"
	.byte	0x7
	.byte	0x23
	.long	0x140d
	.uleb128 0x14
	.long	0x1d73
	.string	"tree_code"
	.byte	0x4
	.byte	0x5
	.byte	0x25
	.uleb128 0x15
	.string	"ERROR_MARK"
	.sleb128 0
	.uleb128 0x15
	.string	"IDENTIFIER_NODE"
	.sleb128 1
	.uleb128 0x15
	.string	"OP_IDENTIFIER"
	.sleb128 2
	.uleb128 0x15
	.string	"TREE_LIST"
	.sleb128 3
	.uleb128 0x15
	.string	"TREE_VEC"
	.sleb128 4
	.uleb128 0x15
	.string	"BLOCK"
	.sleb128 5
	.uleb128 0x15
	.string	"VOID_TYPE"
	.sleb128 6
	.uleb128 0x15
	.string	"INTEGER_TYPE"
	.sleb128 7
	.uleb128 0x15
	.string	"REAL_TYPE"
	.sleb128 8
	.uleb128 0x15
	.string	"COMPLEX_TYPE"
	.sleb128 9
	.uleb128 0x15
	.string	"VECTOR_TYPE"
	.sleb128 10
	.uleb128 0x15
	.string	"ENUMERAL_TYPE"
	.sleb128 11
	.uleb128 0x15
	.string	"BOOLEAN_TYPE"
	.sleb128 12
	.uleb128 0x15
	.string	"CHAR_TYPE"
	.sleb128 13
	.uleb128 0x15
	.string	"POINTER_TYPE"
	.sleb128 14
	.uleb128 0x15
	.string	"OFFSET_TYPE"
	.sleb128 15
	.uleb128 0x15
	.string	"REFERENCE_TYPE"
	.sleb128 16
	.uleb128 0x15
	.string	"METHOD_TYPE"
	.sleb128 17
	.uleb128 0x15
	.string	"FILE_TYPE"
	.sleb128 18
	.uleb128 0x15
	.string	"ARRAY_TYPE"
	.sleb128 19
	.uleb128 0x15
	.string	"SET_TYPE"
	.sleb128 20
	.uleb128 0x15
	.string	"RECORD_TYPE"
	.sleb128 21
	.uleb128 0x15
	.string	"UNION_TYPE"
	.sleb128 22
	.uleb128 0x15
	.string	"QUAL_UNION_TYPE"
	.sleb128 23
	.uleb128 0x15
	.string	"FUNCTION_TYPE"
	.sleb128 24
	.uleb128 0x15
	.string	"LANG_TYPE"
	.sleb128 25
	.uleb128 0x15
	.string	"INTEGER_CST"
	.sleb128 26
	.uleb128 0x15
	.string	"REAL_CST"
	.sleb128 27
	.uleb128 0x15
	.string	"COMPLEX_CST"
	.sleb128 28
	.uleb128 0x15
	.string	"VECTOR_CST"
	.sleb128 29
	.uleb128 0x15
	.string	"STRING_CST"
	.sleb128 30
	.uleb128 0x15
	.string	"FUNCTION_DECL"
	.sleb128 31
	.uleb128 0x15
	.string	"LABEL_DECL"
	.sleb128 32
	.uleb128 0x15
	.string	"CONST_DECL"
	.sleb128 33
	.uleb128 0x15
	.string	"TYPE_DECL"
	.sleb128 34
	.uleb128 0x15
	.string	"VAR_DECL"
	.sleb128 35
	.uleb128 0x15
	.string	"PARM_DECL"
	.sleb128 36
	.uleb128 0x15
	.string	"RESULT_DECL"
	.sleb128 37
	.uleb128 0x15
	.string	"FIELD_DECL"
	.sleb128 38
	.uleb128 0x15
	.string	"NAMESPACE_DECL"
	.sleb128 39
	.uleb128 0x15
	.string	"COMPONENT_REF"
	.sleb128 40
	.uleb128 0x15
	.string	"BIT_FIELD_REF"
	.sleb128 41
	.uleb128 0x15
	.string	"INDIRECT_REF"
	.sleb128 42
	.uleb128 0x15
	.string	"BUFFER_REF"
	.sleb128 43
	.uleb128 0x15
	.string	"ARRAY_REF"
	.sleb128 44
	.uleb128 0x15
	.string	"ARRAY_RANGE_REF"
	.sleb128 45
	.uleb128 0x15
	.string	"VTABLE_REF"
	.sleb128 46
	.uleb128 0x15
	.string	"CONSTRUCTOR"
	.sleb128 47
	.uleb128 0x15
	.string	"COMPOUND_EXPR"
	.sleb128 48
	.uleb128 0x15
	.string	"MODIFY_EXPR"
	.sleb128 49
	.uleb128 0x15
	.string	"INIT_EXPR"
	.sleb128 50
	.uleb128 0x15
	.string	"TARGET_EXPR"
	.sleb128 51
	.uleb128 0x15
	.string	"COND_EXPR"
	.sleb128 52
	.uleb128 0x15
	.string	"BIND_EXPR"
	.sleb128 53
	.uleb128 0x15
	.string	"CALL_EXPR"
	.sleb128 54
	.uleb128 0x15
	.string	"METHOD_CALL_EXPR"
	.sleb128 55
	.uleb128 0x15
	.string	"WITH_CLEANUP_EXPR"
	.sleb128 56
	.uleb128 0x15
	.string	"CLEANUP_POINT_EXPR"
	.sleb128 57
	.uleb128 0x15
	.string	"PLACEHOLDER_EXPR"
	.sleb128 58
	.uleb128 0x15
	.string	"WITH_RECORD_EXPR"
	.sleb128 59
	.uleb128 0x15
	.string	"PLUS_EXPR"
	.sleb128 60
	.uleb128 0x15
	.string	"MINUS_EXPR"
	.sleb128 61
	.uleb128 0x15
	.string	"MULT_EXPR"
	.sleb128 62
	.uleb128 0x15
	.string	"TRUNC_DIV_EXPR"
	.sleb128 63
	.uleb128 0x15
	.string	"CEIL_DIV_EXPR"
	.sleb128 64
	.uleb128 0x15
	.string	"FLOOR_DIV_EXPR"
	.sleb128 65
	.uleb128 0x15
	.string	"ROUND_DIV_EXPR"
	.sleb128 66
	.uleb128 0x15
	.string	"TRUNC_MOD_EXPR"
	.sleb128 67
	.uleb128 0x15
	.string	"CEIL_MOD_EXPR"
	.sleb128 68
	.uleb128 0x15
	.string	"FLOOR_MOD_EXPR"
	.sleb128 69
	.uleb128 0x15
	.string	"ROUND_MOD_EXPR"
	.sleb128 70
	.uleb128 0x15
	.string	"RDIV_EXPR"
	.sleb128 71
	.uleb128 0x15
	.string	"EXACT_DIV_EXPR"
	.sleb128 72
	.uleb128 0x15
	.string	"FIX_TRUNC_EXPR"
	.sleb128 73
	.uleb128 0x15
	.string	"FIX_CEIL_EXPR"
	.sleb128 74
	.uleb128 0x15
	.string	"FIX_FLOOR_EXPR"
	.sleb128 75
	.uleb128 0x15
	.string	"FIX_ROUND_EXPR"
	.sleb128 76
	.uleb128 0x15
	.string	"FLOAT_EXPR"
	.sleb128 77
	.uleb128 0x15
	.string	"EXPON_EXPR"
	.sleb128 78
	.uleb128 0x15
	.string	"NEGATE_EXPR"
	.sleb128 79
	.uleb128 0x15
	.string	"MIN_EXPR"
	.sleb128 80
	.uleb128 0x15
	.string	"MAX_EXPR"
	.sleb128 81
	.uleb128 0x15
	.string	"ABS_EXPR"
	.sleb128 82
	.uleb128 0x15
	.string	"FFS_EXPR"
	.sleb128 83
	.uleb128 0x15
	.string	"LSHIFT_EXPR"
	.sleb128 84
	.uleb128 0x15
	.string	"RSHIFT_EXPR"
	.sleb128 85
	.uleb128 0x15
	.string	"LROTATE_EXPR"
	.sleb128 86
	.uleb128 0x15
	.string	"RROTATE_EXPR"
	.sleb128 87
	.uleb128 0x15
	.string	"BIT_IOR_EXPR"
	.sleb128 88
	.uleb128 0x15
	.string	"BIT_XOR_EXPR"
	.sleb128 89
	.uleb128 0x15
	.string	"BIT_AND_EXPR"
	.sleb128 90
	.uleb128 0x15
	.string	"BIT_ANDTC_EXPR"
	.sleb128 91
	.uleb128 0x15
	.string	"BIT_NOT_EXPR"
	.sleb128 92
	.uleb128 0x15
	.string	"TRUTH_ANDIF_EXPR"
	.sleb128 93
	.uleb128 0x15
	.string	"TRUTH_ORIF_EXPR"
	.sleb128 94
	.uleb128 0x15
	.string	"TRUTH_AND_EXPR"
	.sleb128 95
	.uleb128 0x15
	.string	"TRUTH_OR_EXPR"
	.sleb128 96
	.uleb128 0x15
	.string	"TRUTH_XOR_EXPR"
	.sleb128 97
	.uleb128 0x15
	.string	"TRUTH_NOT_EXPR"
	.sleb128 98
	.uleb128 0x15
	.string	"LT_EXPR"
	.sleb128 99
	.uleb128 0x15
	.string	"LE_EXPR"
	.sleb128 100
	.uleb128 0x15
	.string	"GT_EXPR"
	.sleb128 101
	.uleb128 0x15
	.string	"GE_EXPR"
	.sleb128 102
	.uleb128 0x15
	.string	"EQ_EXPR"
	.sleb128 103
	.uleb128 0x15
	.string	"NE_EXPR"
	.sleb128 104
	.uleb128 0x15
	.string	"UNORDERED_EXPR"
	.sleb128 105
	.uleb128 0x15
	.string	"ORDERED_EXPR"
	.sleb128 106
	.uleb128 0x15
	.string	"UNLT_EXPR"
	.sleb128 107
	.uleb128 0x15
	.string	"UNLE_EXPR"
	.sleb128 108
	.uleb128 0x15
	.string	"UNGT_EXPR"
	.sleb128 109
	.uleb128 0x15
	.string	"UNGE_EXPR"
	.sleb128 110
	.uleb128 0x15
	.string	"UNEQ_EXPR"
	.sleb128 111
	.uleb128 0x15
	.string	"IN_EXPR"
	.sleb128 112
	.uleb128 0x15
	.string	"SET_LE_EXPR"
	.sleb128 113
	.uleb128 0x15
	.string	"CARD_EXPR"
	.sleb128 114
	.uleb128 0x15
	.string	"RANGE_EXPR"
	.sleb128 115
	.uleb128 0x15
	.string	"CONVERT_EXPR"
	.sleb128 116
	.uleb128 0x15
	.string	"NOP_EXPR"
	.sleb128 117
	.uleb128 0x15
	.string	"NON_LVALUE_EXPR"
	.sleb128 118
	.uleb128 0x15
	.string	"VIEW_CONVERT_EXPR"
	.sleb128 119
	.uleb128 0x15
	.string	"SAVE_EXPR"
	.sleb128 120
	.uleb128 0x15
	.string	"UNSAVE_EXPR"
	.sleb128 121
	.uleb128 0x15
	.string	"RTL_EXPR"
	.sleb128 122
	.uleb128 0x15
	.string	"ADDR_EXPR"
	.sleb128 123
	.uleb128 0x15
	.string	"REFERENCE_EXPR"
	.sleb128 124
	.uleb128 0x15
	.string	"ENTRY_VALUE_EXPR"
	.sleb128 125
	.uleb128 0x15
	.string	"FDESC_EXPR"
	.sleb128 126
	.uleb128 0x15
	.string	"COMPLEX_EXPR"
	.sleb128 127
	.uleb128 0x15
	.string	"CONJ_EXPR"
	.sleb128 128
	.uleb128 0x15
	.string	"REALPART_EXPR"
	.sleb128 129
	.uleb128 0x15
	.string	"IMAGPART_EXPR"
	.sleb128 130
	.uleb128 0x15
	.string	"PREDECREMENT_EXPR"
	.sleb128 131
	.uleb128 0x15
	.string	"PREINCREMENT_EXPR"
	.sleb128 132
	.uleb128 0x15
	.string	"POSTDECREMENT_EXPR"
	.sleb128 133
	.uleb128 0x15
	.string	"POSTINCREMENT_EXPR"
	.sleb128 134
	.uleb128 0x15
	.string	"VA_ARG_EXPR"
	.sleb128 135
	.uleb128 0x15
	.string	"TRY_CATCH_EXPR"
	.sleb128 136
	.uleb128 0x15
	.string	"TRY_FINALLY_EXPR"
	.sleb128 137
	.uleb128 0x15
	.string	"GOTO_SUBROUTINE_EXPR"
	.sleb128 138
	.uleb128 0x15
	.string	"POPDHC_EXPR"
	.sleb128 139
	.uleb128 0x15
	.string	"POPDCC_EXPR"
	.sleb128 140
	.uleb128 0x15
	.string	"LABEL_EXPR"
	.sleb128 141
	.uleb128 0x15
	.string	"GOTO_EXPR"
	.sleb128 142
	.uleb128 0x15
	.string	"RETURN_EXPR"
	.sleb128 143
	.uleb128 0x15
	.string	"EXIT_EXPR"
	.sleb128 144
	.uleb128 0x15
	.string	"LOOP_EXPR"
	.sleb128 145
	.uleb128 0x15
	.string	"LABELED_BLOCK_EXPR"
	.sleb128 146
	.uleb128 0x15
	.string	"EXIT_BLOCK_EXPR"
	.sleb128 147
	.uleb128 0x15
	.string	"EXPR_WITH_FILE_LOCATION"
	.sleb128 148
	.uleb128 0x15
	.string	"SWITCH_EXPR"
	.sleb128 149
	.uleb128 0x15
	.string	"EXC_PTR_EXPR"
	.sleb128 150
	.uleb128 0x15
	.string	"LAST_AND_UNUSED_TREE_CODE"
	.sleb128 151
	.byte	0x0
	.uleb128 0x2
	.string	"LABEL_IDX"
	.byte	0x5
	.byte	0x2f
	.long	0x2ed
	.uleb128 0x4
	.long	0x1dc3
	.string	"mongoose_gcc_DST_IDX"
	.byte	0x8
	.byte	0x5
	.byte	0x30
	.uleb128 0x6
	.string	"block"
	.byte	0x5
	.byte	0x30
	.long	0x2ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"offset"
	.byte	0x5
	.byte	0x30
	.long	0x2ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"ST"
	.byte	0x5
	.byte	0x34
	.long	0x1dcd
	.uleb128 0x1a
	.string	"st"
	.byte	0x1
	.uleb128 0x1b
	.long	0x1e22
	.long	.LASF5
	.byte	0x4
	.byte	0x5
	.byte	0x58
	.uleb128 0x15
	.string	"NOT_BUILT_IN"
	.sleb128 0
	.uleb128 0x15
	.string	"BUILT_IN_FRONTEND"
	.sleb128 1
	.uleb128 0x15
	.string	"BUILT_IN_MD"
	.sleb128 2
	.uleb128 0x15
	.string	"BUILT_IN_NORMAL"
	.sleb128 3
	.byte	0x0
	.uleb128 0x14
	.long	0x3acc
	.string	"built_in_function"
	.byte	0x4
	.byte	0x5
	.byte	0x67
	.uleb128 0x15
	.string	"BUILT_IN_ALLOCA"
	.sleb128 0
	.uleb128 0x15
	.string	"BUILT_IN_ABS"
	.sleb128 1
	.uleb128 0x15
	.string	"BUILT_IN_LABS"
	.sleb128 2
	.uleb128 0x15
	.string	"BUILT_IN_FABS"
	.sleb128 3
	.uleb128 0x15
	.string	"BUILT_IN_FABSF"
	.sleb128 4
	.uleb128 0x15
	.string	"BUILT_IN_FABSL"
	.sleb128 5
	.uleb128 0x15
	.string	"BUILT_IN_LLABS"
	.sleb128 6
	.uleb128 0x15
	.string	"BUILT_IN_IMAXABS"
	.sleb128 7
	.uleb128 0x15
	.string	"BUILT_IN_CONJ"
	.sleb128 8
	.uleb128 0x15
	.string	"BUILT_IN_CONJF"
	.sleb128 9
	.uleb128 0x15
	.string	"BUILT_IN_CONJL"
	.sleb128 10
	.uleb128 0x15
	.string	"BUILT_IN_CREAL"
	.sleb128 11
	.uleb128 0x15
	.string	"BUILT_IN_CREALF"
	.sleb128 12
	.uleb128 0x15
	.string	"BUILT_IN_CREALL"
	.sleb128 13
	.uleb128 0x15
	.string	"BUILT_IN_CIMAG"
	.sleb128 14
	.uleb128 0x15
	.string	"BUILT_IN_CIMAGF"
	.sleb128 15
	.uleb128 0x15
	.string	"BUILT_IN_CIMAGL"
	.sleb128 16
	.uleb128 0x15
	.string	"BUILT_IN_DIV"
	.sleb128 17
	.uleb128 0x15
	.string	"BUILT_IN_LDIV"
	.sleb128 18
	.uleb128 0x15
	.string	"BUILT_IN_FFLOOR"
	.sleb128 19
	.uleb128 0x15
	.string	"BUILT_IN_FCEIL"
	.sleb128 20
	.uleb128 0x15
	.string	"BUILT_IN_FMOD"
	.sleb128 21
	.uleb128 0x15
	.string	"BUILT_IN_FREM"
	.sleb128 22
	.uleb128 0x15
	.string	"BUILT_IN_BZERO"
	.sleb128 23
	.uleb128 0x15
	.string	"BUILT_IN_BCOPY"
	.sleb128 24
	.uleb128 0x15
	.string	"BUILT_IN_BCMP"
	.sleb128 25
	.uleb128 0x15
	.string	"BUILT_IN_FFS"
	.sleb128 26
	.uleb128 0x15
	.string	"BUILT_IN_INDEX"
	.sleb128 27
	.uleb128 0x15
	.string	"BUILT_IN_RINDEX"
	.sleb128 28
	.uleb128 0x15
	.string	"BUILT_IN_MEMCPY"
	.sleb128 29
	.uleb128 0x15
	.string	"BUILT_IN_MEMMOVE"
	.sleb128 30
	.uleb128 0x15
	.string	"BUILT_IN_MEMCMP"
	.sleb128 31
	.uleb128 0x15
	.string	"BUILT_IN_MEMSET"
	.sleb128 32
	.uleb128 0x15
	.string	"BUILT_IN_MEMPCPY"
	.sleb128 33
	.uleb128 0x15
	.string	"BUILT_IN_STRCAT"
	.sleb128 34
	.uleb128 0x15
	.string	"BUILT_IN_STRNCAT"
	.sleb128 35
	.uleb128 0x15
	.string	"BUILT_IN_STPCPY"
	.sleb128 36
	.uleb128 0x15
	.string	"BUILT_IN_STRCPY"
	.sleb128 37
	.uleb128 0x15
	.string	"BUILT_IN_STRNCPY"
	.sleb128 38
	.uleb128 0x15
	.string	"BUILT_IN_STRCMP"
	.sleb128 39
	.uleb128 0x15
	.string	"BUILT_IN_STRNCMP"
	.sleb128 40
	.uleb128 0x15
	.string	"BUILT_IN_STRLEN"
	.sleb128 41
	.uleb128 0x15
	.string	"BUILT_IN_STRSTR"
	.sleb128 42
	.uleb128 0x15
	.string	"BUILT_IN_STRPBRK"
	.sleb128 43
	.uleb128 0x15
	.string	"BUILT_IN_STRSPN"
	.sleb128 44
	.uleb128 0x15
	.string	"BUILT_IN_STRCSPN"
	.sleb128 45
	.uleb128 0x15
	.string	"BUILT_IN_STRCHR"
	.sleb128 46
	.uleb128 0x15
	.string	"BUILT_IN_STRRCHR"
	.sleb128 47
	.uleb128 0x15
	.string	"BUILT_IN_CVT64_LOW"
	.sleb128 48
	.uleb128 0x15
	.string	"BUILT_IN_CVT64_HIGH"
	.sleb128 49
	.uleb128 0x15
	.string	"BUILT_IN_CVT32"
	.sleb128 50
	.uleb128 0x15
	.string	"BUILT_IN_PERIPHERAL_RW_BEGIN"
	.sleb128 51
	.uleb128 0x15
	.string	"BUILT_IN_PERIPHERAL_RW_END"
	.sleb128 52
	.uleb128 0x15
	.string	"BUILT_IN_VBUF_OFFSET"
	.sleb128 53
	.uleb128 0x15
	.string	"BUILT_IN_SBUF_OFFSET"
	.sleb128 54
	.uleb128 0x15
	.string	"BUILD_IN_MUL_SHIFT_HI"
	.sleb128 55
	.uleb128 0x15
	.string	"BUILD_IN_MUL_SHIFT"
	.sleb128 56
	.uleb128 0x15
	.string	"BUILD_IN_C3_LEAD"
	.sleb128 57
	.uleb128 0x15
	.string	"BUILD_IN_C3_MAC"
	.sleb128 58
	.uleb128 0x15
	.string	"BUILD_IN_C3_MACN"
	.sleb128 59
	.uleb128 0x15
	.string	"BUILD_IN_C3_ROUND"
	.sleb128 60
	.uleb128 0x15
	.string	"BUILD_IN_C3_SAADDS"
	.sleb128 61
	.uleb128 0x15
	.string	"BUILD_IN_C3_SASUBS"
	.sleb128 62
	.uleb128 0x15
	.string	"BUILD_IN_C3_MULA"
	.sleb128 63
	.uleb128 0x15
	.string	"BUILD_IN_C3_INIT_ACC"
	.sleb128 64
	.uleb128 0x15
	.string	"BUILD_IN_C3_SAVE_ACC"
	.sleb128 65
	.uleb128 0x15
	.string	"BUILD_IN_MPY_32_16"
	.sleb128 66
	.uleb128 0x15
	.string	"BUILD_IN_C3_MACD"
	.sleb128 67
	.uleb128 0x15
	.string	"BUILD_IN_C3_MULAD"
	.sleb128 68
	.uleb128 0x15
	.string	"BUILD_IN_C3_SAADDSH"
	.sleb128 69
	.uleb128 0x15
	.string	"BUILD_IN_C3_SASUBSH"
	.sleb128 70
	.uleb128 0x15
	.string	"BUILD_IN_C3_MVFS"
	.sleb128 71
	.uleb128 0x15
	.string	"BUILD_IN_C3_INIT_ADDR"
	.sleb128 72
	.uleb128 0x15
	.string	"BUILD_IN_C3_SAVE_ADDR"
	.sleb128 73
	.uleb128 0x15
	.string	"BUILD_IN_C3_MAC_A"
	.sleb128 74
	.uleb128 0x15
	.string	"BUILD_IN_C3_MACN_A"
	.sleb128 75
	.uleb128 0x15
	.string	"BUILD_IN_C3_DMAC_A"
	.sleb128 76
	.uleb128 0x15
	.string	"BUILD_IN_C3_DMACN_A"
	.sleb128 77
	.uleb128 0x15
	.string	"BUILD_IN_C3_INIT_DACC"
	.sleb128 78
	.uleb128 0x15
	.string	"BUILD_IN_C3_SAVE_DACC"
	.sleb128 79
	.uleb128 0x15
	.string	"BUILD_IN_C3_SAADDH_A"
	.sleb128 80
	.uleb128 0x15
	.string	"BUILD_IN_C3_SASUBH_A"
	.sleb128 81
	.uleb128 0x15
	.string	"BUILD_IN_C3_SAMULSH"
	.sleb128 82
	.uleb128 0x15
	.string	"BUILD_IN_C3_MULA_A"
	.sleb128 83
	.uleb128 0x15
	.string	"BUILD_IN_C3_SAMULH_A"
	.sleb128 84
	.uleb128 0x15
	.string	"BUILD_IN_C3_PTR"
	.sleb128 85
	.uleb128 0x15
	.string	"BUILD_IN_C3_MAC_AR"
	.sleb128 86
	.uleb128 0x15
	.string	"BUILD_IN_C3_MACN_AR"
	.sleb128 87
	.uleb128 0x15
	.string	"BUILD_IN_C3_MULA_AR"
	.sleb128 88
	.uleb128 0x15
	.string	"BUILD_IN_C3_INIT_PTR"
	.sleb128 89
	.uleb128 0x15
	.string	"BUILD_IN_C3_TRBACK"
	.sleb128 90
	.uleb128 0x15
	.string	"BUILD_IN_C3_VITERBI"
	.sleb128 91
	.uleb128 0x15
	.string	"BUILD_IN_C3_DMULT"
	.sleb128 92
	.uleb128 0x15
	.string	"BUILD_IN_C3_DMULT_A"
	.sleb128 93
	.uleb128 0x15
	.string	"BUILD_IN_C3_DMULTN"
	.sleb128 94
	.uleb128 0x15
	.string	"BUILD_IN_C3_DMULTN_A"
	.sleb128 95
	.uleb128 0x15
	.string	"BUILD_IN_SET_CIRCBUF"
	.sleb128 96
	.uleb128 0x15
	.string	"BUILD_IN_RESET_CIRCBUF"
	.sleb128 97
	.uleb128 0x15
	.string	"BUILD_IN_C3_DADD"
	.sleb128 98
	.uleb128 0x15
	.string	"BUILD_IN_C3_DSUB"
	.sleb128 99
	.uleb128 0x15
	.string	"BUILD_IN_C3_FFT"
	.sleb128 100
	.uleb128 0x15
	.string	"BUILD_IN_C3_FFTLD"
	.sleb128 101
	.uleb128 0x15
	.string	"BUILD_IN_C3_FFTST"
	.sleb128 102
	.uleb128 0x15
	.string	"BUILD_IN_DEPOSIT"
	.sleb128 103
	.uleb128 0x15
	.string	"BUILD_IN_EXTRACT"
	.sleb128 104
	.uleb128 0x15
	.string	"BUILD_IN_C3_BITR"
	.sleb128 105
	.uleb128 0x15
	.string	"BUILD_IN_C3_DMAC"
	.sleb128 106
	.uleb128 0x15
	.string	"BUILD_IN_C3_DMACN"
	.sleb128 107
	.uleb128 0x15
	.string	"BUILD_IN_C3_LOAD"
	.sleb128 108
	.uleb128 0x15
	.string	"BUILD_IN_C3_STORE"
	.sleb128 109
	.uleb128 0x15
	.string	"BUILD_IN_C3_REVB"
	.sleb128 110
	.uleb128 0x15
	.string	"BUILD_IN_C3_DSHL_I"
	.sleb128 111
	.uleb128 0x15
	.string	"BUILD_IN_C3_DSHR_I"
	.sleb128 112
	.uleb128 0x15
	.string	"BUILD_IN_C3_MAC_I"
	.sleb128 113
	.uleb128 0x15
	.string	"BUILD_IN_C3_MACN_I"
	.sleb128 114
	.uleb128 0x15
	.string	"BUILD_IN_C3_MULA_I"
	.sleb128 115
	.uleb128 0x15
	.string	"BUILD_IN_C3_SAADD_A"
	.sleb128 116
	.uleb128 0x15
	.string	"BUILD_IN_C3_SADDHA"
	.sleb128 117
	.uleb128 0x15
	.string	"BUILD_IN_C3_SAADDHA_A"
	.sleb128 118
	.uleb128 0x15
	.string	"BUILD_IN_C3_SASUB_A"
	.sleb128 119
	.uleb128 0x15
	.string	"BUILD_IN_COPY_ADDR"
	.sleb128 120
	.uleb128 0x15
	.string	"BUILD_IN_SET_ADDR"
	.sleb128 121
	.uleb128 0x15
	.string	"BUILT_IN_C2_MVGR_G2R"
	.sleb128 122
	.uleb128 0x15
	.string	"BUILT_IN_C2_MVGR_R2G"
	.sleb128 123
	.uleb128 0x15
	.string	"BUILT_IN_C2_MVGR_G2S"
	.sleb128 124
	.uleb128 0x15
	.string	"BUILT_IN_C2_MVGR_S2G"
	.sleb128 125
	.uleb128 0x15
	.string	"BUILT_IN_C2_MVGC_C2G"
	.sleb128 126
	.uleb128 0x15
	.string	"BUILT_IN_C2_MVGC_G2C"
	.sleb128 127
	.uleb128 0x15
	.string	"BUILT_IN_C2_LD_V"
	.sleb128 128
	.uleb128 0x15
	.string	"BUILT_IN_C2_LD_G"
	.sleb128 129
	.uleb128 0x15
	.string	"BUILT_IN_C2_LD_S"
	.sleb128 130
	.uleb128 0x15
	.string	"BUILT_IN_C2_ST_V"
	.sleb128 131
	.uleb128 0x15
	.string	"BUILT_IN_C2_ST_G"
	.sleb128 132
	.uleb128 0x15
	.string	"BUILT_IN_C2_LD_G_IMM"
	.sleb128 133
	.uleb128 0x15
	.string	"BUILT_IN_C2_LD_C_IMM"
	.sleb128 134
	.uleb128 0x15
	.string	"BUILT_IN_C2_LD_V_IMM"
	.sleb128 135
	.uleb128 0x15
	.string	"BUILT_IN_C2_ST_V_IMM"
	.sleb128 136
	.uleb128 0x15
	.string	"BUILT_IN_C2_ST_C_IMM"
	.sleb128 137
	.uleb128 0x15
	.string	"BUILT_IN_C2_ST_G_IMM"
	.sleb128 138
	.uleb128 0x15
	.string	"BUILT_IN_C2_VADDS"
	.sleb128 139
	.uleb128 0x15
	.string	"BUILT_IN_C2_VSUBS"
	.sleb128 140
	.uleb128 0x15
	.string	"BUILT_IN_C2_VMUL"
	.sleb128 141
	.uleb128 0x15
	.string	"BUILT_IN_C2_VNEG"
	.sleb128 142
	.uleb128 0x15
	.string	"BUILT_IN_C2_VSHFT"
	.sleb128 143
	.uleb128 0x15
	.string	"BUILT_IN_C2_VCLP"
	.sleb128 144
	.uleb128 0x15
	.string	"BUILT_IN_C2_VCLG"
	.sleb128 145
	.uleb128 0x15
	.string	"BUILT_IN_C2_VCMOV"
	.sleb128 146
	.uleb128 0x15
	.string	"BUILT_IN_C2_LCZERO"
	.sleb128 147
	.uleb128 0x15
	.string	"BUILT_IN_C2_VRND"
	.sleb128 148
	.uleb128 0x15
	.string	"BUILT_IN_C2_VSPAS"
	.sleb128 149
	.uleb128 0x15
	.string	"BUILT_IN_C2_VSPEL"
	.sleb128 150
	.uleb128 0x15
	.string	"BUILT_IN_C2_VSPEL_MAC"
	.sleb128 151
	.uleb128 0x15
	.string	"BUILT_IN_C2_MMUL"
	.sleb128 152
	.uleb128 0x15
	.string	"BUILT_IN_C2_VMOV"
	.sleb128 153
	.uleb128 0x15
	.string	"BUILT_IN_C2_VCOPY"
	.sleb128 154
	.uleb128 0x15
	.string	"BUILT_IN_C2_VCMPR"
	.sleb128 155
	.uleb128 0x15
	.string	"BUILT_IN_C2_SAD"
	.sleb128 156
	.uleb128 0x15
	.string	"BUILT_IN_C2_SAD_TMP"
	.sleb128 157
	.uleb128 0x15
	.string	"BUILT_IN_C2_SATD"
	.sleb128 158
	.uleb128 0x15
	.string	"BUILT_IN_C2_INTRA"
	.sleb128 159
	.uleb128 0x15
	.string	"BUILT_IN_C2_MVSEL"
	.sleb128 160
	.uleb128 0x15
	.string	"BUILT_IN_C2_BCST"
	.sleb128 161
	.uleb128 0x15
	.string	"BUILT_IN_C2_VLCS_R"
	.sleb128 162
	.uleb128 0x15
	.string	"BUILT_IN_C2_VLCS"
	.sleb128 163
	.uleb128 0x15
	.string	"BUILT_IN_C2_ADDS"
	.sleb128 164
	.uleb128 0x15
	.string	"BUILT_IN_C2_ADDS_R"
	.sleb128 165
	.uleb128 0x15
	.string	"BUILT_IN_C2_SUBS"
	.sleb128 166
	.uleb128 0x15
	.string	"BUILT_IN_C2_SUBS_R"
	.sleb128 167
	.uleb128 0x15
	.string	"BUILT_IN_C2_MULS"
	.sleb128 168
	.uleb128 0x15
	.string	"BUILT_IN_C2_MADS"
	.sleb128 169
	.uleb128 0x15
	.string	"BUILT_IN_C2_SMADS"
	.sleb128 170
	.uleb128 0x15
	.string	"BUILT_IN_C2_CMOV"
	.sleb128 171
	.uleb128 0x15
	.string	"BUILT_IN_C2_MOV"
	.sleb128 172
	.uleb128 0x15
	.string	"BUILT_IN_C2_MOV_R"
	.sleb128 173
	.uleb128 0x15
	.string	"BUILT_IN_C2_CLP"
	.sleb128 174
	.uleb128 0x15
	.string	"BUILT_IN_C2_CHKRNG"
	.sleb128 175
	.uleb128 0x15
	.string	"BUILT_IN_C2_SCOND"
	.sleb128 176
	.uleb128 0x15
	.string	"BUILT_IN_C2_SCOND_R_WB"
	.sleb128 177
	.uleb128 0x15
	.string	"BUILT_IN_C2_SCOND_R"
	.sleb128 178
	.uleb128 0x15
	.string	"BUILT_IN_C2_SCOND_BR"
	.sleb128 179
	.uleb128 0x15
	.string	"BUILT_IN_C2_SCOND_BR_R"
	.sleb128 180
	.uleb128 0x15
	.string	"BUILT_IN_C2_BOP"
	.sleb128 181
	.uleb128 0x15
	.string	"BUILT_IN_C2_BDEP"
	.sleb128 182
	.uleb128 0x15
	.string	"BUILT_IN_C2_WRAP"
	.sleb128 183
	.uleb128 0x15
	.string	"BUILT_IN_C2_BXTR"
	.sleb128 184
	.uleb128 0x15
	.string	"BUILT_IN_C2_SUM4"
	.sleb128 185
	.uleb128 0x15
	.string	"BUILT_IN_C2_SUM3_SADDR"
	.sleb128 186
	.uleb128 0x15
	.string	"BUILT_IN_C2_SUM4_R"
	.sleb128 187
	.uleb128 0x15
	.string	"BUILT_IN_C2_MED"
	.sleb128 188
	.uleb128 0x15
	.string	"BUILT_IN_C2_GSUMS"
	.sleb128 189
	.uleb128 0x15
	.string	"BUILT_IN_C2_CLZOB"
	.sleb128 190
	.uleb128 0x15
	.string	"BUILT_IN_C2_THCTRL"
	.sleb128 191
	.uleb128 0x15
	.string	"BUILT_IN_C2_BR_F"
	.sleb128 192
	.uleb128 0x15
	.string	"BUILT_IN_C2_BR_T"
	.sleb128 193
	.uleb128 0x15
	.string	"BUILT_IN_C2_LD_V2G"
	.sleb128 194
	.uleb128 0x15
	.string	"BUILT_IN_C2_LD_V2G_IMM"
	.sleb128 195
	.uleb128 0x15
	.string	"BUILT_IN_C2_ST_G2V"
	.sleb128 196
	.uleb128 0x15
	.string	"BUILT_IN_C2_ST_G2V_IMM"
	.sleb128 197
	.uleb128 0x15
	.string	"BUILT_IN_C2_MVGR_R2S"
	.sleb128 198
	.uleb128 0x15
	.string	"BUILT_IN_C2_FORK"
	.sleb128 199
	.uleb128 0x15
	.string	"BUILT_IN_C2_JOINT"
	.sleb128 200
	.uleb128 0x15
	.string	"BUILT_IN_C2_THREAD_MAJOR"
	.sleb128 201
	.uleb128 0x15
	.string	"BUILT_IN_C2_THREAD_MINOR"
	.sleb128 202
	.uleb128 0x15
	.string	"BUILT_IN_FLOOR"
	.sleb128 203
	.uleb128 0x15
	.string	"BUILT_IN_FLOORF"
	.sleb128 204
	.uleb128 0x15
	.string	"BUILT_IN_FLOORL"
	.sleb128 205
	.uleb128 0x15
	.string	"BUILT_IN_POW"
	.sleb128 206
	.uleb128 0x15
	.string	"BUILT_IN_TAN"
	.sleb128 207
	.uleb128 0x15
	.string	"BUILT_IN_ACOS"
	.sleb128 208
	.uleb128 0x15
	.string	"BUILT_IN_ACOSF"
	.sleb128 209
	.uleb128 0x15
	.string	"BUILT_IN_ACOSH"
	.sleb128 210
	.uleb128 0x15
	.string	"BUILT_IN_ACOSHF"
	.sleb128 211
	.uleb128 0x15
	.string	"BUILT_IN_ACOSHL"
	.sleb128 212
	.uleb128 0x15
	.string	"BUILT_IN_ACOSL"
	.sleb128 213
	.uleb128 0x15
	.string	"BUILT_IN_ASIN"
	.sleb128 214
	.uleb128 0x15
	.string	"BUILT_IN_ASINF"
	.sleb128 215
	.uleb128 0x15
	.string	"BUILT_IN_ASINH"
	.sleb128 216
	.uleb128 0x15
	.string	"BUILT_IN_ASINHF"
	.sleb128 217
	.uleb128 0x15
	.string	"BUILT_IN_ASINHL"
	.sleb128 218
	.uleb128 0x15
	.string	"BUILT_IN_ASINL"
	.sleb128 219
	.uleb128 0x15
	.string	"BUILT_IN_ATAN"
	.sleb128 220
	.uleb128 0x15
	.string	"BUILT_IN_ATAN2"
	.sleb128 221
	.uleb128 0x15
	.string	"BUILT_IN_ATAN2F"
	.sleb128 222
	.uleb128 0x15
	.string	"BUILT_IN_ATAN2L"
	.sleb128 223
	.uleb128 0x15
	.string	"BUILT_IN_ATANF"
	.sleb128 224
	.uleb128 0x15
	.string	"BUILT_IN_ATANH"
	.sleb128 225
	.uleb128 0x15
	.string	"BUILT_IN_ATANHF"
	.sleb128 226
	.uleb128 0x15
	.string	"BUILT_IN_ATANHL"
	.sleb128 227
	.uleb128 0x15
	.string	"BUILT_IN_ATANL"
	.sleb128 228
	.uleb128 0x15
	.string	"BUILT_IN_CEIL"
	.sleb128 229
	.uleb128 0x15
	.string	"BUILT_IN_CEILF"
	.sleb128 230
	.uleb128 0x15
	.string	"BUILT_IN_CEILL"
	.sleb128 231
	.uleb128 0x15
	.string	"BUILT_IN_FMODF"
	.sleb128 232
	.uleb128 0x15
	.string	"BUILT_IN_FMODL"
	.sleb128 233
	.uleb128 0x15
	.string	"BUILT_IN_FREXP"
	.sleb128 234
	.uleb128 0x15
	.string	"BUILT_IN_FREXPF"
	.sleb128 235
	.uleb128 0x15
	.string	"BUILT_IN_FREXPL"
	.sleb128 236
	.uleb128 0x15
	.string	"BUILT_IN_LDEXP"
	.sleb128 237
	.uleb128 0x15
	.string	"BUILT_IN_LDEXPF"
	.sleb128 238
	.uleb128 0x15
	.string	"BUILT_IN_LDEXPL"
	.sleb128 239
	.uleb128 0x15
	.string	"BUILT_IN_LOG10"
	.sleb128 240
	.uleb128 0x15
	.string	"BUILT_IN_LOG10F"
	.sleb128 241
	.uleb128 0x15
	.string	"BUILT_IN_LOG10L"
	.sleb128 242
	.uleb128 0x15
	.string	"BUILT_IN_MODF"
	.sleb128 243
	.uleb128 0x15
	.string	"BUILT_IN_MODFF"
	.sleb128 244
	.uleb128 0x15
	.string	"BUILT_IN_MODFL"
	.sleb128 245
	.uleb128 0x15
	.string	"BUILT_IN_POWF"
	.sleb128 246
	.uleb128 0x15
	.string	"BUILT_IN_POWL"
	.sleb128 247
	.uleb128 0x15
	.string	"BUILT_IN_SINH"
	.sleb128 248
	.uleb128 0x15
	.string	"BUILT_IN_SINHF"
	.sleb128 249
	.uleb128 0x15
	.string	"BUILT_IN_SINHL"
	.sleb128 250
	.uleb128 0x15
	.string	"BUILT_IN_TANF"
	.sleb128 251
	.uleb128 0x15
	.string	"BUILT_IN_TANH"
	.sleb128 252
	.uleb128 0x15
	.string	"BUILT_IN_TANHF"
	.sleb128 253
	.uleb128 0x15
	.string	"BUILT_IN_TANHL"
	.sleb128 254
	.uleb128 0x15
	.string	"BUILT_IN_TANL"
	.sleb128 255
	.uleb128 0x15
	.string	"BUILT_IN_COSH"
	.sleb128 256
	.uleb128 0x15
	.string	"BUILT_IN_COSHF"
	.sleb128 257
	.uleb128 0x15
	.string	"BUILT_IN_COSHL"
	.sleb128 258
	.uleb128 0x15
	.string	"BUILT_IN_POPCOUNT"
	.sleb128 259
	.uleb128 0x15
	.string	"BUILT_IN_POPCOUNTL"
	.sleb128 260
	.uleb128 0x15
	.string	"BUILT_IN_POPCOUNTLL"
	.sleb128 261
	.uleb128 0x15
	.string	"BUILT_IN_CTZ"
	.sleb128 262
	.uleb128 0x15
	.string	"BUILT_IN_CTZL"
	.sleb128 263
	.uleb128 0x15
	.string	"BUILT_IN_CTZLL"
	.sleb128 264
	.uleb128 0x15
	.string	"BUILT_IN_SQRT"
	.sleb128 265
	.uleb128 0x15
	.string	"BUILT_IN_SIN"
	.sleb128 266
	.uleb128 0x15
	.string	"BUILT_IN_COS"
	.sleb128 267
	.uleb128 0x15
	.string	"BUILT_IN_EXP"
	.sleb128 268
	.uleb128 0x15
	.string	"BUILT_IN_LOG"
	.sleb128 269
	.uleb128 0x15
	.string	"BUILT_IN_SQRTF"
	.sleb128 270
	.uleb128 0x15
	.string	"BUILT_IN_SINF"
	.sleb128 271
	.uleb128 0x15
	.string	"BUILT_IN_COSF"
	.sleb128 272
	.uleb128 0x15
	.string	"BUILT_IN_EXPF"
	.sleb128 273
	.uleb128 0x15
	.string	"BUILT_IN_LOGF"
	.sleb128 274
	.uleb128 0x15
	.string	"BUILT_IN_SQRTL"
	.sleb128 275
	.uleb128 0x15
	.string	"BUILT_IN_SINL"
	.sleb128 276
	.uleb128 0x15
	.string	"BUILT_IN_COSL"
	.sleb128 277
	.uleb128 0x15
	.string	"BUILT_IN_EXPL"
	.sleb128 278
	.uleb128 0x15
	.string	"BUILT_IN_LOGL"
	.sleb128 279
	.uleb128 0x15
	.string	"BUILT_IN_INF"
	.sleb128 280
	.uleb128 0x15
	.string	"BUILT_IN_INFF"
	.sleb128 281
	.uleb128 0x15
	.string	"BUILT_IN_INFL"
	.sleb128 282
	.uleb128 0x15
	.string	"BUILT_IN_HUGE_VAL"
	.sleb128 283
	.uleb128 0x15
	.string	"BUILT_IN_HUGE_VALF"
	.sleb128 284
	.uleb128 0x15
	.string	"BUILT_IN_HUGE_VALL"
	.sleb128 285
	.uleb128 0x15
	.string	"BUILT_IN_NAN"
	.sleb128 286
	.uleb128 0x15
	.string	"BUILT_IN_NANF"
	.sleb128 287
	.uleb128 0x15
	.string	"BUILT_IN_NANL"
	.sleb128 288
	.uleb128 0x15
	.string	"BUILT_IN_NANS"
	.sleb128 289
	.uleb128 0x15
	.string	"BUILT_IN_NANSF"
	.sleb128 290
	.uleb128 0x15
	.string	"BUILT_IN_NANSL"
	.sleb128 291
	.uleb128 0x15
	.string	"BUILT_IN_SAVEREGS"
	.sleb128 292
	.uleb128 0x15
	.string	"BUILT_IN_CLASSIFY_TYPE"
	.sleb128 293
	.uleb128 0x15
	.string	"BUILT_IN_NEXT_ARG"
	.sleb128 294
	.uleb128 0x15
	.string	"BUILT_IN_ARGS_INFO"
	.sleb128 295
	.uleb128 0x15
	.string	"BUILT_IN_CONSTANT_P"
	.sleb128 296
	.uleb128 0x15
	.string	"BUILT_IN_FRAME_ADDRESS"
	.sleb128 297
	.uleb128 0x15
	.string	"BUILT_IN_RETURN_ADDRESS"
	.sleb128 298
	.uleb128 0x15
	.string	"BUILT_IN_AGGREGATE_INCOMING_ADDRESS"
	.sleb128 299
	.uleb128 0x15
	.string	"BUILT_IN_APPLY_ARGS"
	.sleb128 300
	.uleb128 0x15
	.string	"BUILT_IN_APPLY"
	.sleb128 301
	.uleb128 0x15
	.string	"BUILT_IN_RETURN"
	.sleb128 302
	.uleb128 0x15
	.string	"BUILT_IN_SETJMP"
	.sleb128 303
	.uleb128 0x15
	.string	"BUILT_IN_LONGJMP"
	.sleb128 304
	.uleb128 0x15
	.string	"BUILT_IN_TRAP"
	.sleb128 305
	.uleb128 0x15
	.string	"BUILT_IN_PREFETCH"
	.sleb128 306
	.uleb128 0x15
	.string	"BUILT_IN_PRINTF"
	.sleb128 307
	.uleb128 0x15
	.string	"BUILT_IN_PUTCHAR"
	.sleb128 308
	.uleb128 0x15
	.string	"BUILT_IN_PUTS"
	.sleb128 309
	.uleb128 0x15
	.string	"BUILT_IN_SNPRINTF"
	.sleb128 310
	.uleb128 0x15
	.string	"BUILT_IN_SPRINTF"
	.sleb128 311
	.uleb128 0x15
	.string	"BUILT_IN_SCANF"
	.sleb128 312
	.uleb128 0x15
	.string	"BUILT_IN_SSCANF"
	.sleb128 313
	.uleb128 0x15
	.string	"BUILT_IN_VPRINTF"
	.sleb128 314
	.uleb128 0x15
	.string	"BUILT_IN_VSCANF"
	.sleb128 315
	.uleb128 0x15
	.string	"BUILT_IN_VSSCANF"
	.sleb128 316
	.uleb128 0x15
	.string	"BUILT_IN_VSNPRINTF"
	.sleb128 317
	.uleb128 0x15
	.string	"BUILT_IN_VSPRINTF"
	.sleb128 318
	.uleb128 0x15
	.string	"BUILT_IN_FPUTC"
	.sleb128 319
	.uleb128 0x15
	.string	"BUILT_IN_FPUTS"
	.sleb128 320
	.uleb128 0x15
	.string	"BUILT_IN_FWRITE"
	.sleb128 321
	.uleb128 0x15
	.string	"BUILT_IN_FPRINTF"
	.sleb128 322
	.uleb128 0x15
	.string	"BUILT_IN_PUTCHAR_UNLOCKED"
	.sleb128 323
	.uleb128 0x15
	.string	"BUILT_IN_PUTS_UNLOCKED"
	.sleb128 324
	.uleb128 0x15
	.string	"BUILT_IN_PRINTF_UNLOCKED"
	.sleb128 325
	.uleb128 0x15
	.string	"BUILT_IN_FPUTC_UNLOCKED"
	.sleb128 326
	.uleb128 0x15
	.string	"BUILT_IN_FPUTS_UNLOCKED"
	.sleb128 327
	.uleb128 0x15
	.string	"BUILT_IN_FWRITE_UNLOCKED"
	.sleb128 328
	.uleb128 0x15
	.string	"BUILT_IN_ISGREATER"
	.sleb128 329
	.uleb128 0x15
	.string	"BUILT_IN_ISGREATEREQUAL"
	.sleb128 330
	.uleb128 0x15
	.string	"BUILT_IN_ISLESS"
	.sleb128 331
	.uleb128 0x15
	.string	"BUILT_IN_ISLESSEQUAL"
	.sleb128 332
	.uleb128 0x15
	.string	"BUILT_IN_ISLESSGREATER"
	.sleb128 333
	.uleb128 0x15
	.string	"BUILT_IN_ISUNORDERED"
	.sleb128 334
	.uleb128 0x15
	.string	"BUILT_IN_UNWIND_INIT"
	.sleb128 335
	.uleb128 0x15
	.string	"BUILT_IN_DWARF_CFA"
	.sleb128 336
	.uleb128 0x15
	.string	"BUILT_IN_DWARF_SP_COLUMN"
	.sleb128 337
	.uleb128 0x15
	.string	"BUILT_IN_INIT_DWARF_REG_SIZES"
	.sleb128 338
	.uleb128 0x15
	.string	"BUILT_IN_FROB_RETURN_ADDR"
	.sleb128 339
	.uleb128 0x15
	.string	"BUILT_IN_EXTRACT_RETURN_ADDR"
	.sleb128 340
	.uleb128 0x15
	.string	"BUILT_IN_EH_RETURN"
	.sleb128 341
	.uleb128 0x15
	.string	"BUILT_IN_EH_RETURN_DATA_REGNO"
	.sleb128 342
	.uleb128 0x15
	.string	"BUILT_IN_VA_START"
	.sleb128 343
	.uleb128 0x15
	.string	"BUILT_IN_STDARG_START"
	.sleb128 344
	.uleb128 0x15
	.string	"BUILT_IN_VA_END"
	.sleb128 345
	.uleb128 0x15
	.string	"BUILT_IN_VA_COPY"
	.sleb128 346
	.uleb128 0x15
	.string	"BUILT_IN_EXPECT"
	.sleb128 347
	.uleb128 0x15
	.string	"BUILT_IN_EXTEND_POINTER"
	.sleb128 348
	.uleb128 0x15
	.string	"BUILT_IN_NEW"
	.sleb128 349
	.uleb128 0x15
	.string	"BUILT_IN_VEC_NEW"
	.sleb128 350
	.uleb128 0x15
	.string	"BUILT_IN_DELETE"
	.sleb128 351
	.uleb128 0x15
	.string	"BUILT_IN_VEC_DELETE"
	.sleb128 352
	.uleb128 0x15
	.string	"BUILT_IN_ABORT"
	.sleb128 353
	.uleb128 0x15
	.string	"BUILT_IN_EXIT"
	.sleb128 354
	.uleb128 0x15
	.string	"BUILT_IN__EXIT"
	.sleb128 355
	.uleb128 0x15
	.string	"BUILT_IN__EXIT2"
	.sleb128 356
	.uleb128 0x15
	.string	"END_BUILTINS"
	.sleb128 357
	.byte	0x0
	.uleb128 0x4
	.long	0x3daf
	.string	"tree_common"
	.byte	0x10
	.byte	0x5
	.byte	0x8c
	.uleb128 0x6
	.string	"chain"
	.byte	0x5
	.byte	0x8d
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"type"
	.byte	0x5
	.byte	0x8e
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x5
	.string	"code"
	.byte	0x5
	.byte	0x90
	.long	0x1451
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"side_effects_flag"
	.byte	0x5
	.byte	0x92
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"constant_flag"
	.byte	0x5
	.byte	0x93
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"addressable_flag"
	.byte	0x5
	.byte	0x94
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"volatile_flag"
	.byte	0x5
	.byte	0x95
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"readonly_flag"
	.byte	0x5
	.byte	0x96
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"unsigned_flag"
	.byte	0x5
	.byte	0x97
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"asm_written_flag"
	.byte	0x5
	.byte	0x98
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"not_emitted_by_gxx"
	.byte	0x5
	.byte	0x9a
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"used_flag"
	.byte	0x5
	.byte	0x9f
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"nothrow_flag"
	.byte	0x5
	.byte	0xa0
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"static_flag"
	.byte	0x5
	.byte	0xa1
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"public_flag"
	.byte	0x5
	.byte	0xa2
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"private_flag"
	.byte	0x5
	.byte	0xa3
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"protected_flag"
	.byte	0x5
	.byte	0xa4
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"bounded_flag"
	.byte	0x5
	.byte	0xa5
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"deprecated_flag"
	.byte	0x5
	.byte	0xa6
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1c
	.long	.LASF6
	.byte	0x5
	.byte	0xa8
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1c
	.long	.LASF7
	.byte	0x5
	.byte	0xa9
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1c
	.long	.LASF8
	.byte	0x5
	.byte	0xaa
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1c
	.long	.LASF9
	.byte	0x5
	.byte	0xab
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1c
	.long	.LASF10
	.byte	0x5
	.byte	0xac
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1c
	.long	.LASF11
	.byte	0x5
	.byte	0xad
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1c
	.long	.LASF12
	.byte	0x5
	.byte	0xae
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1c
	.long	.LASF13
	.byte	0x5
	.byte	0xb0
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"sbuf"
	.byte	0x5
	.byte	0xb5
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x5
	.string	"sdram"
	.byte	0x5
	.byte	0xb6
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x5
	.string	"v1buf"
	.byte	0x5
	.byte	0xb7
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x5
	.string	"v2buf"
	.byte	0x5
	.byte	0xb8
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x5
	.string	"v4buf"
	.byte	0x5
	.byte	0xb9
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x1d
	.long	0x3deb
	.string	"tree_int_cst_lowhi"
	.byte	0x10
	.byte	0x5
	.value	0x30a
	.uleb128 0xf
	.string	"low"
	.byte	0x5
	.value	0x30b
	.long	0x39d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.string	"high"
	.byte	0x5
	.value	0x30c
	.long	0x38c
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x1d
	.long	0x3e33
	.string	"tree_int_cst"
	.byte	0x24
	.byte	0x5
	.value	0x303
	.uleb128 0x1e
	.long	.LASF0
	.byte	0x5
	.value	0x304
	.long	0x3acc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.string	"rtl"
	.byte	0x5
	.value	0x305
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xf
	.string	"int_cst"
	.byte	0x5
	.value	0x30d
	.long	0x3daf
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x1d
	.long	0x3e81
	.string	"tree_real_cst"
	.byte	0x18
	.byte	0x5
	.value	0x31f
	.uleb128 0x1e
	.long	.LASF0
	.byte	0x5
	.value	0x320
	.long	0x3acc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.string	"rtl"
	.byte	0x5
	.value	0x321
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xf
	.string	"real_cst_ptr"
	.byte	0x5
	.value	0x322
	.long	0x3e8e
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x1a
	.string	"real_value"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x3e81
	.uleb128 0x1d
	.long	0x3efb
	.string	"tree_string"
	.byte	0x20
	.byte	0x5
	.value	0x333
	.uleb128 0x1e
	.long	.LASF0
	.byte	0x5
	.value	0x334
	.long	0x3acc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.string	"rtl"
	.byte	0x5
	.value	0x335
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xf
	.string	"length"
	.byte	0x5
	.value	0x336
	.long	0x2e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xf
	.string	"pointer"
	.byte	0x5
	.value	0x337
	.long	0x2d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xf
	.string	"st"
	.byte	0x5
	.value	0x339
	.long	0x3efb
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1dc3
	.uleb128 0x1d
	.long	0x3f56
	.string	"tree_complex"
	.byte	0x1c
	.byte	0x5
	.value	0x342
	.uleb128 0x1e
	.long	.LASF0
	.byte	0x5
	.value	0x343
	.long	0x3acc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.string	"rtl"
	.byte	0x5
	.value	0x344
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xf
	.string	"real"
	.byte	0x5
	.value	0x345
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xf
	.string	"imag"
	.byte	0x5
	.value	0x346
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x1d
	.long	0x3f9e
	.string	"tree_vector"
	.byte	0x18
	.byte	0x5
	.value	0x355
	.uleb128 0x1e
	.long	.LASF0
	.byte	0x5
	.value	0x356
	.long	0x3acc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.string	"rtl"
	.byte	0x5
	.value	0x357
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xf
	.string	"elements"
	.byte	0x5
	.value	0x358
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xe
	.long	0x3fdc
	.long	.LASF14
	.byte	0xc
	.byte	0x6
	.byte	0x19
	.uleb128 0x6
	.string	"str"
	.byte	0x6
	.byte	0x1c
	.long	0x682
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"len"
	.byte	0x6
	.byte	0x1d
	.long	0x2ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"hash_value"
	.byte	0x6
	.byte	0x1e
	.long	0x2ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x1d
	.long	0x4013
	.string	"tree_identifier"
	.byte	0x1c
	.byte	0x5
	.value	0x376
	.uleb128 0x1e
	.long	.LASF0
	.byte	0x5
	.value	0x377
	.long	0x3acc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.string	"id"
	.byte	0x5
	.value	0x378
	.long	0x3f9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x1d
	.long	0x4058
	.string	"tree_list"
	.byte	0x18
	.byte	0x5
	.value	0x380
	.uleb128 0x1e
	.long	.LASF0
	.byte	0x5
	.value	0x381
	.long	0x3acc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.string	"purpose"
	.byte	0x5
	.value	0x382
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x1e
	.long	.LASF15
	.byte	0x5
	.value	0x383
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x1d
	.long	0x4099
	.string	"tree_vec"
	.byte	0x18
	.byte	0x5
	.value	0x38e
	.uleb128 0x1e
	.long	.LASF0
	.byte	0x5
	.value	0x38f
	.long	0x3acc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.string	"length"
	.byte	0x5
	.value	0x390
	.long	0x2e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xf
	.string	"a"
	.byte	0x5
	.value	0x391
	.long	0x4099
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x11
	.long	0x40a9
	.long	0x1e7
	.uleb128 0x12
	.long	0x2f4
	.byte	0x0
	.byte	0x0
	.uleb128 0x1d
	.long	0x40f5
	.string	"tree_exp"
	.byte	0x18
	.byte	0x5
	.value	0x3d4
	.uleb128 0x1e
	.long	.LASF0
	.byte	0x5
	.value	0x3d5
	.long	0x3acc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.string	"complexity"
	.byte	0x5
	.value	0x3d6
	.long	0x2e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xf
	.string	"operands"
	.byte	0x5
	.value	0x3d9
	.long	0x4099
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x1d
	.long	0x41e5
	.string	"tree_block"
	.byte	0x2c
	.byte	0x5
	.value	0x40a
	.uleb128 0x1e
	.long	.LASF0
	.byte	0x5
	.value	0x40b
	.long	0x3acc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1f
	.string	"handler_block_flag"
	.byte	0x5
	.value	0x40d
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x20
	.long	.LASF16
	.byte	0x5
	.value	0x40e
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x1f
	.string	"block_num"
	.byte	0x5
	.value	0x40f
	.long	0x2ed
	.byte	0x4
	.byte	0x1e
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xf
	.string	"vars"
	.byte	0x5
	.value	0x411
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xf
	.string	"subblocks"
	.byte	0x5
	.value	0x412
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xf
	.string	"supercontext"
	.byte	0x5
	.value	0x413
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x1e
	.long	.LASF17
	.byte	0x5
	.value	0x414
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xf
	.string	"fragment_origin"
	.byte	0x5
	.value	0x415
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xf
	.string	"fragment_chain"
	.byte	0x5
	.value	0x416
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x21
	.long	0x422c
	.string	"tree_type_symtab"
	.byte	0x4
	.byte	0x5
	.value	0x570
	.uleb128 0x9
	.string	"address"
	.byte	0x5
	.value	0x571
	.long	0x2e6
	.uleb128 0x9
	.string	"pointer"
	.byte	0x5
	.value	0x572
	.long	0x3f5
	.uleb128 0x9
	.string	"die"
	.byte	0x5
	.value	0x573
	.long	0x4239
	.byte	0x0
	.uleb128 0x1a
	.string	"die_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x422c
	.uleb128 0x1d
	.long	0x458c
	.string	"tree_type"
	.byte	0x74
	.byte	0x5
	.value	0x551
	.uleb128 0x1e
	.long	.LASF0
	.byte	0x5
	.value	0x552
	.long	0x3acc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.string	"values"
	.byte	0x5
	.value	0x553
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x1e
	.long	.LASF4
	.byte	0x5
	.value	0x554
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x1e
	.long	.LASF18
	.byte	0x5
	.value	0x555
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x1e
	.long	.LASF19
	.byte	0x5
	.value	0x556
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xf
	.string	"uid"
	.byte	0x5
	.value	0x557
	.long	0x2ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.string	"precision"
	.byte	0x5
	.value	0x559
	.long	0x2ed
	.byte	0x4
	.byte	0x9
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.string	"mode"
	.byte	0x5
	.value	0x55a
	.long	0x743
	.byte	0x4
	.byte	0x7
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.string	"string_flag"
	.byte	0x5
	.value	0x55c
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.string	"no_force_blk_flag"
	.byte	0x5
	.value	0x55d
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.string	"needs_constructing_flag"
	.byte	0x5
	.value	0x55e
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.string	"transparent_union_flag"
	.byte	0x5
	.value	0x55f
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.string	"packed_flag"
	.byte	0x5
	.value	0x560
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.string	"restrict_flag"
	.byte	0x5
	.value	0x561
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.long	.LASF20
	.byte	0x5
	.value	0x562
	.long	0x2ed
	.byte	0x4
	.byte	0x2
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.long	.LASF6
	.byte	0x5
	.value	0x564
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.long	.LASF7
	.byte	0x5
	.value	0x565
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.long	.LASF8
	.byte	0x5
	.value	0x566
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.long	.LASF9
	.byte	0x5
	.value	0x567
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.long	.LASF10
	.byte	0x5
	.value	0x568
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.long	.LASF11
	.byte	0x5
	.value	0x569
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.long	.LASF12
	.byte	0x5
	.value	0x56a
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.long	.LASF21
	.byte	0x5
	.value	0x56b
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xf
	.string	"align"
	.byte	0x5
	.value	0x56d
	.long	0x2ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xf
	.string	"pointer_to"
	.byte	0x5
	.value	0x56e
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xf
	.string	"reference_to"
	.byte	0x5
	.value	0x56f
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xf
	.string	"symtab"
	.byte	0x5
	.value	0x574
	.long	0x41e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xf
	.string	"name"
	.byte	0x5
	.value	0x576
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xf
	.string	"minval"
	.byte	0x5
	.value	0x577
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xf
	.string	"maxval"
	.byte	0x5
	.value	0x578
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xf
	.string	"next_variant"
	.byte	0x5
	.value	0x579
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xf
	.string	"main_variant"
	.byte	0x5
	.value	0x57a
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xf
	.string	"binfo"
	.byte	0x5
	.value	0x57b
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xf
	.string	"context"
	.byte	0x5
	.value	0x57c
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xf
	.string	"alias_set"
	.byte	0x5
	.value	0x57d
	.long	0x38c
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x1e
	.long	.LASF22
	.byte	0x5
	.value	0x57f
	.long	0x4598
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xf
	.string	"ty_idx"
	.byte	0x5
	.value	0x581
	.long	0x2ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xf
	.string	"field_ids_used"
	.byte	0x5
	.value	0x582
	.long	0x2ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xf
	.string	"dst_id"
	.byte	0x5
	.value	0x583
	.long	0x1d84
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xf
	.string	"extra_methods"
	.byte	0x5
	.value	0x58a
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.byte	0x0
	.uleb128 0x1a
	.string	"lang_type"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x458c
	.uleb128 0x1d
	.long	0x45e3
	.string	"tree_decl_u1_a"
	.byte	0x4
	.byte	0x5
	.value	0x817
	.uleb128 0x1f
	.string	"align"
	.byte	0x5
	.value	0x818
	.long	0x2ed
	.byte	0x4
	.byte	0x18
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1f
	.string	"off_align"
	.byte	0x5
	.value	0x819
	.long	0x2ed
	.byte	0x4
	.byte	0x8
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x21
	.long	0x4618
	.string	"tree_decl_u1"
	.byte	0x8
	.byte	0x5
	.value	0x80e
	.uleb128 0x9
	.string	"f"
	.byte	0x5
	.value	0x811
	.long	0x1e22
	.uleb128 0x9
	.string	"i"
	.byte	0x5
	.value	0x814
	.long	0x38c
	.uleb128 0x9
	.string	"a"
	.byte	0x5
	.value	0x81a
	.long	0x459e
	.byte	0x0
	.uleb128 0x21
	.long	0x4657
	.string	"tree_decl_u2"
	.byte	0x4
	.byte	0x5
	.value	0x837
	.uleb128 0x9
	.string	"f"
	.byte	0x5
	.value	0x838
	.long	0x4662
	.uleb128 0x9
	.string	"r"
	.byte	0x5
	.value	0x839
	.long	0x9e
	.uleb128 0x9
	.string	"t"
	.byte	0x5
	.value	0x83a
	.long	0x1e7
	.uleb128 0x9
	.string	"i"
	.byte	0x5
	.value	0x83b
	.long	0x2e6
	.byte	0x0
	.uleb128 0x1a
	.string	"function"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x4657
	.uleb128 0x22
	.long	0x46a0
	.byte	0x4
	.byte	0x5
	.value	0x84e
	.uleb128 0x9
	.string	"st"
	.byte	0x5
	.value	0x84f
	.long	0x3efb
	.uleb128 0x9
	.string	"label_idx"
	.byte	0x5
	.value	0x850
	.long	0x1d73
	.uleb128 0x9
	.string	"field_id"
	.byte	0x5
	.value	0x851
	.long	0x2ed
	.byte	0x0
	.uleb128 0x1d
	.long	0x4de9
	.string	"tree_decl"
	.byte	0xa0
	.byte	0x5
	.value	0x7c5
	.uleb128 0x1e
	.long	.LASF0
	.byte	0x5
	.value	0x7c6
	.long	0x3acc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.string	"locus"
	.byte	0x5
	.value	0x7c7
	.long	0x143f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xf
	.string	"uid"
	.byte	0x5
	.value	0x7c8
	.long	0x2ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x1e
	.long	.LASF4
	.byte	0x5
	.value	0x7c9
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x1f
	.string	"mode"
	.byte	0x5
	.value	0x7ca
	.long	0x743
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.string	"external_flag"
	.byte	0x5
	.value	0x7cc
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.string	"nonlocal_flag"
	.byte	0x5
	.value	0x7cd
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.string	"regdecl_flag"
	.byte	0x5
	.value	0x7ce
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.string	"inline_flag"
	.byte	0x5
	.value	0x7cf
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.string	"bit_field_flag"
	.byte	0x5
	.value	0x7d0
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.string	"virtual_flag"
	.byte	0x5
	.value	0x7d1
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.string	"ignored_flag"
	.byte	0x5
	.value	0x7d2
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x20
	.long	.LASF16
	.byte	0x5
	.value	0x7d3
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.string	"sbuf_flag"
	.byte	0x5
	.value	0x7d7
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.string	"sdram_flag"
	.byte	0x5
	.value	0x7d8
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.string	"v1buf_flag"
	.byte	0x5
	.value	0x7d9
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.string	"v2buf_flag"
	.byte	0x5
	.value	0x7da
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.string	"v4buf_flag"
	.byte	0x5
	.value	0x7db
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.string	"in_system_header_flag"
	.byte	0x5
	.value	0x7df
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.string	"common_flag"
	.byte	0x5
	.value	0x7e0
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.string	"defer_output"
	.byte	0x5
	.value	0x7e1
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.string	"transparent_union"
	.byte	0x5
	.value	0x7e2
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.string	"static_ctor_flag"
	.byte	0x5
	.value	0x7e3
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.string	"static_dtor_flag"
	.byte	0x5
	.value	0x7e4
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.string	"artificial_flag"
	.byte	0x5
	.value	0x7e5
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.string	"weak_flag"
	.byte	0x5
	.value	0x7e6
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.string	"non_addr_const_p"
	.byte	0x5
	.value	0x7e8
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.string	"no_instrument_function_entry_exit"
	.byte	0x5
	.value	0x7e9
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.string	"comdat_flag"
	.byte	0x5
	.value	0x7ea
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.string	"malloc_flag"
	.byte	0x5
	.value	0x7eb
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.string	"no_limit_stack"
	.byte	0x5
	.value	0x7ec
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.long	.LASF5
	.byte	0x5
	.value	0x7ed
	.long	0x1dd2
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.string	"pure_flag"
	.byte	0x5
	.value	0x7ee
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.long	.LASF20
	.byte	0x5
	.value	0x7f0
	.long	0x2ed
	.byte	0x4
	.byte	0x2
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.string	"non_addressable"
	.byte	0x5
	.value	0x7f1
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.long	.LASF21
	.byte	0x5
	.value	0x7f2
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.string	"uninlinable"
	.byte	0x5
	.value	0x7f3
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.string	"thread_local_flag"
	.byte	0x5
	.value	0x7f4
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.string	"inlined_function_flag"
	.byte	0x5
	.value	0x7f5
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.string	"threadprivate_flag"
	.byte	0x5
	.value	0x7f7
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.long	.LASF6
	.byte	0x5
	.value	0x7fa
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.long	.LASF7
	.byte	0x5
	.value	0x7fb
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.long	.LASF8
	.byte	0x5
	.value	0x7fc
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.long	.LASF9
	.byte	0x5
	.value	0x7fd
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.long	.LASF10
	.byte	0x5
	.value	0x7fe
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.long	.LASF11
	.byte	0x5
	.value	0x7ff
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.long	.LASF12
	.byte	0x5
	.value	0x800
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.long	.LASF13
	.byte	0x5
	.value	0x801
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.string	"syscall_linkage_flag"
	.byte	0x5
	.value	0x804
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.string	"widen_retval_flag"
	.byte	0x5
	.value	0x805
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.string	"emitted_by_gxx"
	.byte	0x5
	.value	0x808
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xf
	.string	"u1"
	.byte	0x5
	.value	0x81b
	.long	0x45e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x1e
	.long	.LASF18
	.byte	0x5
	.value	0x81d
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xf
	.string	"name"
	.byte	0x5
	.value	0x81e
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xf
	.string	"context"
	.byte	0x5
	.value	0x81f
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xf
	.string	"arguments"
	.byte	0x5
	.value	0x820
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xf
	.string	"result"
	.byte	0x5
	.value	0x821
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xf
	.string	"initial"
	.byte	0x5
	.value	0x822
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xf
	.string	"initial_2"
	.byte	0x5
	.value	0x824
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xf
	.string	"alias_target"
	.byte	0x5
	.value	0x825
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xf
	.string	"thunk_delta"
	.byte	0x5
	.value	0x829
	.long	0x38c
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x1e
	.long	.LASF17
	.byte	0x5
	.value	0x82b
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xf
	.string	"assembler_name"
	.byte	0x5
	.value	0x82c
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xf
	.string	"section_name"
	.byte	0x5
	.value	0x82d
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x1e
	.long	.LASF19
	.byte	0x5
	.value	0x82e
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xf
	.string	"rtl"
	.byte	0x5
	.value	0x82f
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xf
	.string	"live_range_rtl"
	.byte	0x5
	.value	0x830
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0xf
	.string	"u2"
	.byte	0x5
	.value	0x83c
	.long	0x4618
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xf
	.string	"saved_tree"
	.byte	0x5
	.value	0x83f
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0xf
	.string	"inlined_fns"
	.byte	0x5
	.value	0x843
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xf
	.string	"vindex"
	.byte	0x5
	.value	0x845
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0xf
	.string	"pointer_alias_set"
	.byte	0x5
	.value	0x846
	.long	0x38c
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x1e
	.long	.LASF22
	.byte	0x5
	.value	0x848
	.long	0x4df5
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x1f
	.string	"symtab_idx"
	.byte	0x5
	.value	0x84b
	.long	0x2ed
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0x1f
	.string	"label_defined"
	.byte	0x5
	.value	0x84c
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0xf
	.string	"sgi_u1"
	.byte	0x5
	.value	0x852
	.long	0x4668
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xf
	.string	"decl_dst_id"
	.byte	0x5
	.value	0x858
	.long	0x1d84
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0xf
	.string	"sl_model_name"
	.byte	0x5
	.value	0x85c
	.long	0x1e7
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.byte	0x0
	.uleb128 0x1a
	.string	"lang_decl"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x4de9
	.uleb128 0x14
	.long	0x5079
	.string	"omp_tree_type"
	.byte	0x4
	.byte	0x8
	.byte	0x1d
	.uleb128 0x15
	.string	"parallel_dir_b"
	.sleb128 0
	.uleb128 0x15
	.string	"parallel_dir_e"
	.sleb128 1
	.uleb128 0x15
	.string	"for_dir_b"
	.sleb128 2
	.uleb128 0x15
	.string	"for_dir_e"
	.sleb128 3
	.uleb128 0x15
	.string	"sections_cons_b"
	.sleb128 4
	.uleb128 0x15
	.string	"sections_cons_e"
	.sleb128 5
	.uleb128 0x15
	.string	"section_cons_b"
	.sleb128 6
	.uleb128 0x15
	.string	"section_cons_e"
	.sleb128 7
	.uleb128 0x15
	.string	"single_cons_b"
	.sleb128 8
	.uleb128 0x15
	.string	"single_cons_e"
	.sleb128 9
	.uleb128 0x15
	.string	"par_for_cons_b"
	.sleb128 10
	.uleb128 0x15
	.string	"par_for_cons_e"
	.sleb128 11
	.uleb128 0x15
	.string	"par_sctn_cons_b"
	.sleb128 12
	.uleb128 0x15
	.string	"par_sctn_cons_e"
	.sleb128 13
	.uleb128 0x15
	.string	"master_cons_b"
	.sleb128 14
	.uleb128 0x15
	.string	"master_cons_e"
	.sleb128 15
	.uleb128 0x15
	.string	"critical_cons_b"
	.sleb128 16
	.uleb128 0x15
	.string	"critical_cons_e"
	.sleb128 17
	.uleb128 0x15
	.string	"barrier_dir"
	.sleb128 18
	.uleb128 0x15
	.string	"flush_dir"
	.sleb128 19
	.uleb128 0x15
	.string	"atomic_cons"
	.sleb128 20
	.uleb128 0x15
	.string	"atomic_cons_b"
	.sleb128 21
	.uleb128 0x15
	.string	"atomic_cons_e"
	.sleb128 22
	.uleb128 0x15
	.string	"thdprv_dir"
	.sleb128 23
	.uleb128 0x15
	.string	"ordered_cons_b"
	.sleb128 24
	.uleb128 0x15
	.string	"ordered_cons_e"
	.sleb128 25
	.uleb128 0x15
	.string	"options_dir"
	.sleb128 26
	.uleb128 0x15
	.string	"exec_freq_dir"
	.sleb128 27
	.uleb128 0x15
	.string	"sl2_sections_cons_b"
	.sleb128 28
	.uleb128 0x15
	.string	"sl2_minor_sections_cons_b"
	.sleb128 29
	.uleb128 0x15
	.string	"sl2_sections_cons_e"
	.sleb128 30
	.uleb128 0x15
	.string	"sl2_section_cons_b"
	.sleb128 31
	.uleb128 0x15
	.string	"sl2_section_cons_e"
	.sleb128 32
	.uleb128 0x15
	.string	"sl2_minor_section_cons_b"
	.sleb128 33
	.uleb128 0x15
	.string	"sl2_minor_section_cons_e"
	.sleb128 34
	.byte	0x0
	.uleb128 0x1d
	.long	0x50c8
	.string	"tree_omp"
	.byte	0x18
	.byte	0x5
	.value	0x864
	.uleb128 0x1e
	.long	.LASF0
	.byte	0x5
	.value	0x865
	.long	0x3acc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.string	"choice"
	.byte	0x5
	.value	0x866
	.long	0x4dfb
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xf
	.string	"omp_clause_list"
	.byte	0x5
	.value	0x867
	.long	0x3f3
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x1d
	.long	0x5184
	.string	"attribute_spec"
	.byte	0x14
	.byte	0x5
	.value	0xa1d
	.uleb128 0xf
	.string	"name"
	.byte	0x5
	.value	0xa20
	.long	0x5184
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.string	"min_length"
	.byte	0x5
	.value	0xa22
	.long	0x730
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xf
	.string	"max_length"
	.byte	0x5
	.value	0xa25
	.long	0x730
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xf
	.string	"decl_required"
	.byte	0x5
	.value	0xa2d
	.long	0x5189
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xf
	.string	"type_required"
	.byte	0x5
	.value	0xa30
	.long	0x5189
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.uleb128 0xf
	.string	"function_type_required"
	.byte	0x5
	.value	0xa35
	.long	0x5189
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xf
	.string	"handler"
	.byte	0x5
	.value	0xa44
	.long	0x51c7
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0xa
	.long	0x2d3
	.uleb128 0xa
	.long	0x518e
	.uleb128 0xb
	.string	"_Bool"
	.byte	0x1
	.byte	0x2
	.uleb128 0x23
	.long	0x51bb
	.byte	0x1
	.long	0x1e7
	.uleb128 0x24
	.long	0x51bb
	.uleb128 0x24
	.long	0x1e7
	.uleb128 0x24
	.long	0x1e7
	.uleb128 0x24
	.long	0x2e6
	.uleb128 0x24
	.long	0x51c1
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1e7
	.uleb128 0x3
	.byte	0x4
	.long	0x518e
	.uleb128 0xa
	.long	0x51cc
	.uleb128 0x3
	.byte	0x4
	.long	0x5197
	.uleb128 0x4
	.long	0x521a
	.string	"asm_int_op"
	.byte	0x10
	.byte	0x13
	.byte	0x3a
	.uleb128 0x6
	.string	"hi"
	.byte	0x13
	.byte	0x3b
	.long	0x2d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"si"
	.byte	0x13
	.byte	0x3c
	.long	0x2d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"di"
	.byte	0x13
	.byte	0x3d
	.long	0x2d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"ti"
	.byte	0x13
	.byte	0x3e
	.long	0x2d3
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x4
	.long	0x5450
	.string	"asm_out"
	.byte	0x70
	.byte	0x13
	.byte	0x33
	.uleb128 0x6
	.string	"open_paren"
	.byte	0x13
	.byte	0x35
	.long	0x2d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"close_paren"
	.byte	0x13
	.byte	0x35
	.long	0x2d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"byte_op"
	.byte	0x13
	.byte	0x38
	.long	0x2d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"aligned_op"
	.byte	0x13
	.byte	0x3f
	.long	0x51d2
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"unaligned_op"
	.byte	0x13
	.byte	0x3f
	.long	0x51d2
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"integer"
	.byte	0x13
	.byte	0x46
	.long	0x546a
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x6
	.string	"globalize_label"
	.byte	0x13
	.byte	0x49
	.long	0x5487
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x6
	.string	"visibility"
	.byte	0x13
	.byte	0x4d
	.long	0x549e
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x6
	.string	"function_prologue"
	.byte	0x13
	.byte	0x50
	.long	0x54b5
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x6
	.string	"function_end_prologue"
	.byte	0x13
	.byte	0x53
	.long	0x54c7
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x6
	.string	"function_begin_epilogue"
	.byte	0x13
	.byte	0x56
	.long	0x54c7
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x6
	.string	"function_epilogue"
	.byte	0x13
	.byte	0x59
	.long	0x54b5
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x6
	.string	"named_section"
	.byte	0x13
	.byte	0x5d
	.long	0x54de
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x6
	.string	"exception_section"
	.byte	0x13
	.byte	0x60
	.long	0x73d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x6
	.string	"eh_frame_section"
	.byte	0x13
	.byte	0x63
	.long	0x73d
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x6
	.string	"select_section"
	.byte	0x13
	.byte	0x6a
	.long	0x54fa
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x6
	.string	"select_rtx_section"
	.byte	0x13
	.byte	0x6e
	.long	0x5516
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x6
	.string	"unique_section"
	.byte	0x13
	.byte	0x73
	.long	0x549e
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x6
	.string	"constructor"
	.byte	0x13
	.byte	0x76
	.long	0x552d
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x6
	.string	"destructor"
	.byte	0x13
	.byte	0x79
	.long	0x552d
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x6
	.string	"output_mi_thunk"
	.byte	0x13
	.byte	0x80
	.long	0x5553
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x6
	.string	"can_output_mi_thunk"
	.byte	0x13
	.byte	0x8b
	.long	0x5578
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.byte	0x0
	.uleb128 0x23
	.long	0x546a
	.byte	0x1
	.long	0x518e
	.uleb128 0x24
	.long	0x9e
	.uleb128 0x24
	.long	0x2ed
	.uleb128 0x24
	.long	0x2e6
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5450
	.uleb128 0x25
	.long	0x5481
	.byte	0x1
	.uleb128 0x24
	.long	0x5481
	.uleb128 0x24
	.long	0x2d3
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x3fb
	.uleb128 0x3
	.byte	0x4
	.long	0x5470
	.uleb128 0x25
	.long	0x549e
	.byte	0x1
	.uleb128 0x24
	.long	0x1e7
	.uleb128 0x24
	.long	0x2e6
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x548d
	.uleb128 0x25
	.long	0x54b5
	.byte	0x1
	.uleb128 0x24
	.long	0x5481
	.uleb128 0x24
	.long	0x38c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x54a4
	.uleb128 0x25
	.long	0x54c7
	.byte	0x1
	.uleb128 0x24
	.long	0x5481
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x54bb
	.uleb128 0x25
	.long	0x54de
	.byte	0x1
	.uleb128 0x24
	.long	0x2d3
	.uleb128 0x24
	.long	0x2ed
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x54cd
	.uleb128 0x25
	.long	0x54fa
	.byte	0x1
	.uleb128 0x24
	.long	0x1e7
	.uleb128 0x24
	.long	0x2e6
	.uleb128 0x24
	.long	0x39d
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x54e4
	.uleb128 0x25
	.long	0x5516
	.byte	0x1
	.uleb128 0x24
	.long	0x743
	.uleb128 0x24
	.long	0x9e
	.uleb128 0x24
	.long	0x39d
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5500
	.uleb128 0x25
	.long	0x552d
	.byte	0x1
	.uleb128 0x24
	.long	0x9e
	.uleb128 0x24
	.long	0x2e6
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x551c
	.uleb128 0x25
	.long	0x5553
	.byte	0x1
	.uleb128 0x24
	.long	0x5481
	.uleb128 0x24
	.long	0x1e7
	.uleb128 0x24
	.long	0x38c
	.uleb128 0x24
	.long	0x38c
	.uleb128 0x24
	.long	0x1e7
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5533
	.uleb128 0x23
	.long	0x5578
	.byte	0x1
	.long	0x518e
	.uleb128 0x24
	.long	0x1e7
	.uleb128 0x24
	.long	0x38c
	.uleb128 0x24
	.long	0x38c
	.uleb128 0x24
	.long	0x1e7
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5559
	.uleb128 0x4
	.long	0x5739
	.string	"sched"
	.byte	0x40
	.byte	0x13
	.byte	0x93
	.uleb128 0x6
	.string	"adjust_cost"
	.byte	0x13
	.byte	0x97
	.long	0x5758
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"adjust_priority"
	.byte	0x13
	.byte	0x9b
	.long	0x5773
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"issue_rate"
	.byte	0x13
	.byte	0xa0
	.long	0x577f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"variable_issue"
	.byte	0x13
	.byte	0xa4
	.long	0x57a4
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"md_init"
	.byte	0x13
	.byte	0xa7
	.long	0x57c0
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"md_finish"
	.byte	0x13
	.byte	0xaa
	.long	0x57d7
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"reorder"
	.byte	0x13
	.byte	0xae
	.long	0x5801
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"reorder2"
	.byte	0x13
	.byte	0xaf
	.long	0x5801
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"use_dfa_pipeline_interface"
	.byte	0x13
	.byte	0xb4
	.long	0x577f
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.string	"init_dfa_pre_cycle_insn"
	.byte	0x13
	.byte	0xc2
	.long	0x73d
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.string	"dfa_pre_cycle_insn"
	.byte	0x13
	.byte	0xc3
	.long	0x580d
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x6
	.string	"init_dfa_post_cycle_insn"
	.byte	0x13
	.byte	0xc4
	.long	0x73d
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x6
	.string	"dfa_post_cycle_insn"
	.byte	0x13
	.byte	0xc5
	.long	0x580d
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x6
	.string	"first_cycle_multipass_dfa_lookahead"
	.byte	0x13
	.byte	0xcd
	.long	0x577f
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x6
	.string	"init_dfa_bubbles"
	.byte	0x13
	.byte	0xd8
	.long	0x73d
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x6
	.string	"dfa_bubble"
	.byte	0x13
	.byte	0xd9
	.long	0x5823
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.byte	0x0
	.uleb128 0x23
	.long	0x5758
	.byte	0x1
	.long	0x2e6
	.uleb128 0x24
	.long	0x9e
	.uleb128 0x24
	.long	0x9e
	.uleb128 0x24
	.long	0x9e
	.uleb128 0x24
	.long	0x2e6
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5739
	.uleb128 0x23
	.long	0x5773
	.byte	0x1
	.long	0x2e6
	.uleb128 0x24
	.long	0x9e
	.uleb128 0x24
	.long	0x2e6
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x575e
	.uleb128 0x26
	.byte	0x1
	.long	0x2e6
	.uleb128 0x3
	.byte	0x4
	.long	0x5779
	.uleb128 0x23
	.long	0x57a4
	.byte	0x1
	.long	0x2e6
	.uleb128 0x24
	.long	0x5481
	.uleb128 0x24
	.long	0x2e6
	.uleb128 0x24
	.long	0x9e
	.uleb128 0x24
	.long	0x2e6
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5785
	.uleb128 0x25
	.long	0x57c0
	.byte	0x1
	.uleb128 0x24
	.long	0x5481
	.uleb128 0x24
	.long	0x2e6
	.uleb128 0x24
	.long	0x2e6
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x57aa
	.uleb128 0x25
	.long	0x57d7
	.byte	0x1
	.uleb128 0x24
	.long	0x5481
	.uleb128 0x24
	.long	0x2e6
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x57c6
	.uleb128 0x23
	.long	0x5801
	.byte	0x1
	.long	0x2e6
	.uleb128 0x24
	.long	0x5481
	.uleb128 0x24
	.long	0x2e6
	.uleb128 0x24
	.long	0x1407
	.uleb128 0x24
	.long	0x735
	.uleb128 0x24
	.long	0x2e6
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x57dd
	.uleb128 0x26
	.byte	0x1
	.long	0x9e
	.uleb128 0x3
	.byte	0x4
	.long	0x5807
	.uleb128 0x23
	.long	0x5823
	.byte	0x1
	.long	0x9e
	.uleb128 0x24
	.long	0x2e6
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5813
	.uleb128 0x4
	.long	0x5b12
	.string	"gcc_target"
	.byte	0xfc
	.byte	0x13
	.byte	0x30
	.uleb128 0x6
	.string	"asm_out"
	.byte	0x13
	.byte	0x8f
	.long	0x521a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"sched"
	.byte	0x13
	.byte	0xda
	.long	0x557e
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x6
	.string	"merge_decl_attributes"
	.byte	0x13
	.byte	0xdd
	.long	0x5b27
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x6
	.string	"merge_type_attributes"
	.byte	0x13
	.byte	0xe0
	.long	0x5b27
	.byte	0x3
	.byte	0x23
	.uleb128 0xb4
	.uleb128 0x6
	.string	"attribute_table"
	.byte	0x13
	.byte	0xe4
	.long	0x5b2d
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0x6
	.string	"comp_type_attributes"
	.byte	0x13
	.byte	0xe9
	.long	0x5b4d
	.byte	0x3
	.byte	0x23
	.uleb128 0xbc
	.uleb128 0x6
	.string	"set_default_type_attributes"
	.byte	0x13
	.byte	0xec
	.long	0x5b5f
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0x6
	.string	"insert_attributes"
	.byte	0x13
	.byte	0xef
	.long	0x5b76
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.uleb128 0x6
	.string	"function_attribute_inlinable_p"
	.byte	0x13
	.byte	0xf3
	.long	0x5b8c
	.byte	0x3
	.byte	0x23
	.uleb128 0xc8
	.uleb128 0x6
	.string	"ms_bitfield_layout_p"
	.byte	0x13
	.byte	0xf7
	.long	0x5b8c
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.uleb128 0x6
	.string	"init_builtins"
	.byte	0x13
	.byte	0xfa
	.long	0x73d
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0x6
	.string	"expand_builtin"
	.byte	0x13
	.byte	0xfd
	.long	0x5bb6
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0xf
	.string	"section_type_flags"
	.byte	0x13
	.value	0x103
	.long	0x5bd6
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0xf
	.string	"cannot_modify_jumps_p"
	.byte	0x13
	.value	0x107
	.long	0x5be2
	.byte	0x3
	.byte	0x23
	.uleb128 0xdc
	.uleb128 0xf
	.string	"cannot_force_const_mem"
	.byte	0x13
	.value	0x10a
	.long	0x5bf8
	.byte	0x3
	.byte	0x23
	.uleb128 0xe0
	.uleb128 0xf
	.string	"in_small_data_p"
	.byte	0x13
	.value	0x10d
	.long	0x5b8c
	.byte	0x3
	.byte	0x23
	.uleb128 0xe4
	.uleb128 0xf
	.string	"binds_local_p"
	.byte	0x13
	.value	0x111
	.long	0x5b8c
	.byte	0x3
	.byte	0x23
	.uleb128 0xe8
	.uleb128 0xf
	.string	"encode_section_info"
	.byte	0x13
	.value	0x115
	.long	0x549e
	.byte	0x3
	.byte	0x23
	.uleb128 0xec
	.uleb128 0xf
	.string	"strip_name_encoding"
	.byte	0x13
	.value	0x118
	.long	0x5c0e
	.byte	0x3
	.byte	0x23
	.uleb128 0xf0
	.uleb128 0xf
	.string	"have_named_sections"
	.byte	0x13
	.value	0x11d
	.long	0x518e
	.byte	0x3
	.byte	0x23
	.uleb128 0xf4
	.uleb128 0xf
	.string	"have_ctors_dtors"
	.byte	0x13
	.value	0x121
	.long	0x518e
	.byte	0x3
	.byte	0x23
	.uleb128 0xf5
	.uleb128 0xf
	.string	"have_tls"
	.byte	0x13
	.value	0x124
	.long	0x518e
	.byte	0x3
	.byte	0x23
	.uleb128 0xf6
	.uleb128 0xf
	.string	"have_srodata_section"
	.byte	0x13
	.value	0x127
	.long	0x518e
	.byte	0x3
	.byte	0x23
	.uleb128 0xf7
	.uleb128 0xf
	.string	"terminate_dw2_eh_frame_info"
	.byte	0x13
	.value	0x12a
	.long	0x518e
	.byte	0x3
	.byte	0x23
	.uleb128 0xf8
	.byte	0x0
	.uleb128 0x23
	.long	0x5b27
	.byte	0x1
	.long	0x1e7
	.uleb128 0x24
	.long	0x1e7
	.uleb128 0x24
	.long	0x1e7
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5b12
	.uleb128 0x3
	.byte	0x4
	.long	0x5b33
	.uleb128 0xa
	.long	0x50c8
	.uleb128 0x23
	.long	0x5b4d
	.byte	0x1
	.long	0x2e6
	.uleb128 0x24
	.long	0x1e7
	.uleb128 0x24
	.long	0x1e7
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5b38
	.uleb128 0x25
	.long	0x5b5f
	.byte	0x1
	.uleb128 0x24
	.long	0x1e7
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5b53
	.uleb128 0x25
	.long	0x5b76
	.byte	0x1
	.uleb128 0x24
	.long	0x1e7
	.uleb128 0x24
	.long	0x51bb
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5b65
	.uleb128 0x23
	.long	0x5b8c
	.byte	0x1
	.long	0x518e
	.uleb128 0x24
	.long	0x1e7
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5b7c
	.uleb128 0x23
	.long	0x5bb6
	.byte	0x1
	.long	0x9e
	.uleb128 0x24
	.long	0x1e7
	.uleb128 0x24
	.long	0x9e
	.uleb128 0x24
	.long	0x9e
	.uleb128 0x24
	.long	0x743
	.uleb128 0x24
	.long	0x2e6
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5b92
	.uleb128 0x23
	.long	0x5bd6
	.byte	0x1
	.long	0x2ed
	.uleb128 0x24
	.long	0x1e7
	.uleb128 0x24
	.long	0x2d3
	.uleb128 0x24
	.long	0x2e6
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5bbc
	.uleb128 0x26
	.byte	0x1
	.long	0x518e
	.uleb128 0x3
	.byte	0x4
	.long	0x5bdc
	.uleb128 0x23
	.long	0x5bf8
	.byte	0x1
	.long	0x518e
	.uleb128 0x24
	.long	0x9e
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5be8
	.uleb128 0x23
	.long	0x5c0e
	.byte	0x1
	.long	0x2d3
	.uleb128 0x24
	.long	0x2d3
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5bfe
	.uleb128 0x2
	.string	"splay_tree_key"
	.byte	0xb
	.byte	0x2f
	.long	0x35b
	.uleb128 0x2
	.string	"splay_tree_value"
	.byte	0xb
	.byte	0x30
	.long	0x35b
	.uleb128 0x2
	.string	"splay_tree_node"
	.byte	0xb
	.byte	0x33
	.long	0x5c59
	.uleb128 0x3
	.byte	0x4
	.long	0x5c5f
	.uleb128 0x4
	.long	0x5cb5
	.string	"splay_tree_node_s"
	.byte	0x10
	.byte	0xb
	.byte	0x33
	.uleb128 0x6
	.string	"key"
	.byte	0xb
	.byte	0x54
	.long	0x5c14
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x17
	.long	.LASF15
	.byte	0xb
	.byte	0x57
	.long	0x5c2a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"left"
	.byte	0xb
	.byte	0x5a
	.long	0x5c42
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"right"
	.byte	0xb
	.byte	0x5b
	.long	0x5c42
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x2
	.string	"splay_tree_compare_fn"
	.byte	0xb
	.byte	0x37
	.long	0x5cd2
	.uleb128 0x3
	.byte	0x4
	.long	0x5cd8
	.uleb128 0x23
	.long	0x5ced
	.byte	0x1
	.long	0x2e6
	.uleb128 0x24
	.long	0x5c14
	.uleb128 0x24
	.long	0x5c14
	.byte	0x0
	.uleb128 0x2
	.string	"splay_tree_delete_key_fn"
	.byte	0xb
	.byte	0x3b
	.long	0x5d0d
	.uleb128 0x3
	.byte	0x4
	.long	0x5d13
	.uleb128 0x25
	.long	0x5d1f
	.byte	0x1
	.uleb128 0x24
	.long	0x5c14
	.byte	0x0
	.uleb128 0x2
	.string	"splay_tree_delete_value_fn"
	.byte	0xb
	.byte	0x3f
	.long	0x5d41
	.uleb128 0x3
	.byte	0x4
	.long	0x5d47
	.uleb128 0x25
	.long	0x5d53
	.byte	0x1
	.uleb128 0x24
	.long	0x5c2a
	.byte	0x0
	.uleb128 0x2
	.string	"splay_tree_allocate_fn"
	.byte	0xb
	.byte	0x48
	.long	0x5d71
	.uleb128 0x3
	.byte	0x4
	.long	0x5d77
	.uleb128 0x23
	.long	0x5d8c
	.byte	0x1
	.long	0x3f3
	.uleb128 0x24
	.long	0x2e6
	.uleb128 0x24
	.long	0x3f3
	.byte	0x0
	.uleb128 0x2
	.string	"splay_tree_deallocate_fn"
	.byte	0xb
	.byte	0x4e
	.long	0x5dac
	.uleb128 0x3
	.byte	0x4
	.long	0x5db2
	.uleb128 0x25
	.long	0x5dc3
	.byte	0x1
	.uleb128 0x24
	.long	0x3f3
	.uleb128 0x24
	.long	0x3f3
	.byte	0x0
	.uleb128 0x4
	.long	0x5e63
	.string	"splay_tree_s"
	.byte	0x1c
	.byte	0xb
	.byte	0x60
	.uleb128 0x6
	.string	"root"
	.byte	0xb
	.byte	0x62
	.long	0x5c42
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"comp"
	.byte	0xb
	.byte	0x65
	.long	0x5cb5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"delete_key"
	.byte	0xb
	.byte	0x68
	.long	0x5ced
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"delete_value"
	.byte	0xb
	.byte	0x6b
	.long	0x5d1f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"allocate"
	.byte	0xb
	.byte	0x6e
	.long	0x5d53
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"deallocate"
	.byte	0xb
	.byte	0x6f
	.long	0x5d8c
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"allocate_data"
	.byte	0xb
	.byte	0x70
	.long	0x3f3
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x2
	.string	"splay_tree"
	.byte	0xb
	.byte	0x72
	.long	0x5e75
	.uleb128 0x3
	.byte	0x4
	.long	0x5dc3
	.uleb128 0x27
	.long	0x5ecd
	.byte	0x1
	.string	"dw2_assemble_integer"
	.byte	0x1
	.byte	0x3b
	.byte	0x1
	.long	.LFB15
	.long	.LFE15
	.long	.LLST0
	.uleb128 0x28
	.long	.LASF4
	.byte	0x1
	.byte	0x39
	.long	0x2e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x29
	.string	"x"
	.byte	0x1
	.byte	0x3a
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2a
	.string	"op"
	.byte	0x1
	.byte	0x3c
	.long	0x2d3
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x27
	.long	0x5f42
	.byte	0x1
	.string	"dw2_asm_output_data"
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.long	.LFB16
	.long	.LFE16
	.long	.LLST1
	.uleb128 0x28
	.long	.LASF4
	.byte	0x1
	.byte	0x4e
	.long	0x2e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x28
	.long	.LASF15
	.byte	0x1
	.byte	0x4e
	.long	0x39d
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x28
	.long	.LASF23
	.byte	0x1
	.byte	0x4e
	.long	0x2d3
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x2b
	.uleb128 0x2c
	.long	.LBB2
	.long	.LBE2
	.uleb128 0x2a
	.string	"ap"
	.byte	0x1
	.byte	0x51
	.long	0x317
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2d
	.long	.LBB3
	.long	.LBE3
	.byte	0x0
	.byte	0x0
	.uleb128 0x27
	.long	0x5fc8
	.byte	0x1
	.string	"dw2_asm_output_delta"
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.long	.LFB17
	.long	.LFE17
	.long	.LLST2
	.uleb128 0x28
	.long	.LASF4
	.byte	0x1
	.byte	0x6c
	.long	0x2e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x29
	.string	"lab1"
	.byte	0x1
	.byte	0x6c
	.long	0x2d3
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x29
	.string	"lab2"
	.byte	0x1
	.byte	0x6c
	.long	0x2d3
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x28
	.long	.LASF23
	.byte	0x1
	.byte	0x6c
	.long	0x2d3
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x2b
	.uleb128 0x2c
	.long	.LBB4
	.long	.LBE4
	.uleb128 0x2a
	.string	"ap"
	.byte	0x1
	.byte	0x6f
	.long	0x317
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x2d
	.long	.LBB5
	.long	.LBE5
	.byte	0x0
	.byte	0x0
	.uleb128 0x27
	.long	0x6041
	.byte	0x1
	.string	"dw2_asm_output_offset"
	.byte	0x1
	.byte	0x90
	.byte	0x1
	.long	.LFB18
	.long	.LFE18
	.long	.LLST3
	.uleb128 0x28
	.long	.LASF4
	.byte	0x1
	.byte	0x8e
	.long	0x2e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x29
	.string	"label"
	.byte	0x1
	.byte	0x8e
	.long	0x2d3
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x28
	.long	.LASF23
	.byte	0x1
	.byte	0x8e
	.long	0x2d3
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2b
	.uleb128 0x2c
	.long	.LBB6
	.long	.LBE6
	.uleb128 0x2a
	.string	"ap"
	.byte	0x1
	.byte	0x91
	.long	0x317
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x2d
	.long	.LBB7
	.long	.LBE7
	.byte	0x0
	.byte	0x0
	.uleb128 0x27
	.long	0x60b9
	.byte	0x1
	.string	"dw2_asm_output_pcrel"
	.byte	0x1
	.byte	0xad
	.byte	0x1
	.long	.LFB19
	.long	.LFE19
	.long	.LLST4
	.uleb128 0x28
	.long	.LASF4
	.byte	0x1
	.byte	0xaa
	.long	0x2e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x29
	.string	"label"
	.byte	0x1
	.byte	0xaa
	.long	0x2d3
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x28
	.long	.LASF23
	.byte	0x1
	.byte	0xaa
	.long	0x2d3
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2b
	.uleb128 0x2c
	.long	.LBB8
	.long	.LBE8
	.uleb128 0x2a
	.string	"ap"
	.byte	0x1
	.byte	0xae
	.long	0x317
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x2d
	.long	.LBB9
	.long	.LBE9
	.byte	0x0
	.byte	0x0
	.uleb128 0x27
	.long	0x6130
	.byte	0x1
	.string	"dw2_asm_output_addr"
	.byte	0x1
	.byte	0xcb
	.byte	0x1
	.long	.LFB20
	.long	.LFE20
	.long	.LLST5
	.uleb128 0x28
	.long	.LASF4
	.byte	0x1
	.byte	0xc9
	.long	0x2e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x29
	.string	"label"
	.byte	0x1
	.byte	0xc9
	.long	0x2d3
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x28
	.long	.LASF23
	.byte	0x1
	.byte	0xc9
	.long	0x2d3
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2b
	.uleb128 0x2c
	.long	.LBB10
	.long	.LBE10
	.uleb128 0x2a
	.string	"ap"
	.byte	0x1
	.byte	0xcc
	.long	0x317
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x2d
	.long	.LBB11
	.long	.LBE11
	.byte	0x0
	.byte	0x0
	.uleb128 0x27
	.long	0x61aa
	.byte	0x1
	.string	"dw2_asm_output_addr_rtx"
	.byte	0x1
	.byte	0xe2
	.byte	0x1
	.long	.LFB21
	.long	.LFE21
	.long	.LLST6
	.uleb128 0x28
	.long	.LASF4
	.byte	0x1
	.byte	0xe0
	.long	0x2e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x29
	.string	"addr"
	.byte	0x1
	.byte	0xe0
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x28
	.long	.LASF23
	.byte	0x1
	.byte	0xe0
	.long	0x2d3
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2b
	.uleb128 0x2c
	.long	.LBB12
	.long	.LBE12
	.uleb128 0x2a
	.string	"ap"
	.byte	0x1
	.byte	0xe3
	.long	0x317
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x2d
	.long	.LBB13
	.long	.LBE13
	.byte	0x0
	.byte	0x0
	.uleb128 0x27
	.long	0x6259
	.byte	0x1
	.string	"dw2_asm_output_nstring"
	.byte	0x1
	.byte	0xf7
	.byte	0x1
	.long	.LFB22
	.long	.LFE22
	.long	.LLST7
	.uleb128 0x29
	.string	"str"
	.byte	0x1
	.byte	0xf5
	.long	0x2d3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x29
	.string	"orig_len"
	.byte	0x1
	.byte	0xf5
	.long	0x326
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x28
	.long	.LASF23
	.byte	0x1
	.byte	0xf5
	.long	0x2d3
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2b
	.uleb128 0x2a
	.string	"i"
	.byte	0x1
	.byte	0xf8
	.long	0x326
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2a
	.string	"len"
	.byte	0x1
	.byte	0xf8
	.long	0x326
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2c
	.long	.LBB14
	.long	.LBE14
	.uleb128 0x2a
	.string	"ap"
	.byte	0x1
	.byte	0xfa
	.long	0x317
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2c
	.long	.LBB15
	.long	.LBE15
	.uleb128 0x2c
	.long	.LBB16
	.long	.LBE16
	.uleb128 0x2e
	.string	"c"
	.byte	0x1
	.value	0x109
	.long	0x2e6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
	.long	0x62b2
	.byte	0x1
	.string	"size_of_uleb128"
	.byte	0x1
	.value	0x129
	.byte	0x1
	.long	0x2e6
	.long	.LFB23
	.long	.LFE23
	.long	.LLST8
	.uleb128 0x30
	.long	.LASF15
	.byte	0x1
	.value	0x128
	.long	0x39d
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x31
	.long	.LASF4
	.byte	0x1
	.value	0x12a
	.long	0x2e6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x2e
	.string	"byte"
	.byte	0x1
	.value	0x12a
	.long	0x2e6
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x2f
	.long	0x630b
	.byte	0x1
	.string	"size_of_sleb128"
	.byte	0x1
	.value	0x13c
	.byte	0x1
	.long	0x2e6
	.long	.LFB24
	.long	.LFE24
	.long	.LLST9
	.uleb128 0x30
	.long	.LASF15
	.byte	0x1
	.value	0x13b
	.long	0x38c
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x31
	.long	.LASF4
	.byte	0x1
	.value	0x13d
	.long	0x2e6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x2e
	.string	"byte"
	.byte	0x1
	.value	0x13d
	.long	0x2e6
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x2f
	.long	0x635b
	.byte	0x1
	.string	"size_of_encoded_value"
	.byte	0x1
	.value	0x152
	.byte	0x1
	.long	0x2e6
	.long	.LFB25
	.long	.LFE25
	.long	.LLST10
	.uleb128 0x30
	.long	.LASF24
	.byte	0x1
	.value	0x151
	.long	0x2e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.long	.LASF25
	.long	0x688f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.12352
	.byte	0x0
	.uleb128 0x2f
	.long	0x63c7
	.byte	0x1
	.string	"eh_data_format_name"
	.byte	0x1
	.value	0x169
	.byte	0x1
	.long	0x2d3
	.long	.LFB26
	.long	.LFE26
	.long	.LLST11
	.uleb128 0x33
	.string	"format"
	.byte	0x1
	.value	0x168
	.long	0x2e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"format_names"
	.byte	0x1
	.value	0x171
	.long	0x6875
	.byte	0x5
	.byte	0x3
	.long	format_names.12372
	.uleb128 0x32
	.long	.LASF25
	.long	0x687a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.12373
	.byte	0x0
	.uleb128 0x34
	.long	0x643a
	.byte	0x1
	.string	"dw2_asm_output_data_uleb128"
	.byte	0x1
	.value	0x208
	.byte	0x1
	.long	.LFB27
	.long	.LFE27
	.long	.LLST12
	.uleb128 0x30
	.long	.LASF15
	.byte	0x1
	.value	0x206
	.long	0x39d
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x30
	.long	.LASF23
	.byte	0x1
	.value	0x206
	.long	0x2d3
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2b
	.uleb128 0x2c
	.long	.LBB17
	.long	.LBE17
	.uleb128 0x2e
	.string	"ap"
	.byte	0x1
	.value	0x209
	.long	0x317
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2d
	.long	.LBB18
	.long	.LBE18
	.byte	0x0
	.byte	0x0
	.uleb128 0x34
	.long	0x64ad
	.byte	0x1
	.string	"dw2_asm_output_data_sleb128"
	.byte	0x1
	.value	0x246
	.byte	0x1
	.long	.LFB28
	.long	.LFE28
	.long	.LLST13
	.uleb128 0x30
	.long	.LASF15
	.byte	0x1
	.value	0x244
	.long	0x38c
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x30
	.long	.LASF23
	.byte	0x1
	.value	0x244
	.long	0x2d3
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2b
	.uleb128 0x2c
	.long	.LBB19
	.long	.LBE19
	.uleb128 0x2e
	.string	"ap"
	.byte	0x1
	.value	0x247
	.long	0x317
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2d
	.long	.LBB20
	.long	.LBE20
	.byte	0x0
	.byte	0x0
	.uleb128 0x34
	.long	0x6532
	.byte	0x1
	.string	"dw2_asm_output_delta_uleb128"
	.byte	0x1
	.value	0x286
	.byte	0x1
	.long	.LFB29
	.long	.LFE29
	.long	.LLST14
	.uleb128 0x33
	.string	"lab1"
	.byte	0x1
	.value	0x283
	.long	0x2d3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.string	"lab2"
	.byte	0x1
	.value	0x283
	.long	0x2d3
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x30
	.long	.LASF23
	.byte	0x1
	.value	0x283
	.long	0x2d3
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2b
	.uleb128 0x2c
	.long	.LBB21
	.long	.LBE21
	.uleb128 0x2e
	.string	"ap"
	.byte	0x1
	.value	0x287
	.long	0x317
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x2d
	.long	.LBB22
	.long	.LBE22
	.byte	0x0
	.byte	0x0
	.uleb128 0x34
	.long	0x65b7
	.byte	0x1
	.string	"dw2_asm_output_delta_sleb128"
	.byte	0x1
	.value	0x2a3
	.byte	0x1
	.long	.LFB30
	.long	.LFE30
	.long	.LLST15
	.uleb128 0x33
	.string	"lab1"
	.byte	0x1
	.value	0x2a0
	.long	0x2d3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.string	"lab2"
	.byte	0x1
	.value	0x2a0
	.long	0x2d3
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x30
	.long	.LASF23
	.byte	0x1
	.value	0x2a0
	.long	0x2d3
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2b
	.uleb128 0x2c
	.long	.LBB23
	.long	.LBE23
	.uleb128 0x2e
	.string	"ap"
	.byte	0x1
	.value	0x2a4
	.long	0x317
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x2d
	.long	.LBB24
	.long	.LBE24
	.byte	0x0
	.byte	0x0
	.uleb128 0x35
	.long	0x660a
	.string	"mark_indirect_pool_entry"
	.byte	0x1
	.value	0x2cf
	.byte	0x1
	.long	0x2e6
	.long	.LFB31
	.long	.LFE31
	.long	.LLST16
	.uleb128 0x33
	.string	"node"
	.byte	0x1
	.value	0x2cd
	.long	0x5c42
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.string	"data"
	.byte	0x1
	.value	0x2ce
	.long	0x3f3
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x36
	.long	0x6642
	.string	"mark_indirect_pool"
	.byte	0x1
	.value	0x2d9
	.byte	0x1
	.long	.LFB32
	.long	.LFE32
	.long	.LLST17
	.uleb128 0x33
	.string	"arg"
	.byte	0x1
	.value	0x2d8
	.long	0x3f3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x35
	.long	0x66f6
	.string	"dw2_force_const_mem"
	.byte	0x1
	.value	0x2e5
	.byte	0x1
	.long	0x9e
	.long	.LFB33
	.long	.LFE33
	.long	.LLST18
	.uleb128 0x33
	.string	"x"
	.byte	0x1
	.value	0x2e4
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2e
	.string	"node"
	.byte	0x1
	.value	0x2e6
	.long	0x5c42
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2e
	.string	"str"
	.byte	0x1
	.value	0x2e7
	.long	0x2d3
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2e
	.string	"decl"
	.byte	0x1
	.value	0x2e8
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x37
	.long	0x66e5
	.long	.LBB25
	.long	.LBE25
	.uleb128 0x2e
	.string	"id"
	.byte	0x1
	.value	0x2f9
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2c
	.long	.LBB26
	.long	.LBE26
	.uleb128 0x2e
	.string	"ref_name"
	.byte	0x1
	.value	0x2fd
	.long	0x3f5
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.uleb128 0x32
	.long	.LASF25
	.long	0x6860
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.12494
	.byte	0x0
	.uleb128 0x35
	.long	0x6771
	.string	"dw2_output_indirect_constant_1"
	.byte	0x1
	.value	0x327
	.byte	0x1
	.long	0x2e6
	.long	.LFB34
	.long	.LFE34
	.long	.LLST19
	.uleb128 0x33
	.string	"node"
	.byte	0x1
	.value	0x325
	.long	0x5c42
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.string	"data"
	.byte	0x1
	.value	0x326
	.long	0x3f3
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2e
	.string	"sym"
	.byte	0x1
	.value	0x328
	.long	0x2d3
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2e
	.string	"sym_ref"
	.byte	0x1
	.value	0x329
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x38
	.byte	0x1
	.string	"dw2_output_indirect_constants"
	.byte	0x1
	.value	0x339
	.byte	0x1
	.long	.LFB35
	.long	.LFE35
	.long	.LLST20
	.uleb128 0x34
	.long	0x685b
	.byte	0x1
	.string	"dw2_asm_output_encoded_addr_rtx"
	.byte	0x1
	.value	0x344
	.byte	0x1
	.long	.LFB36
	.long	.LFE36
	.long	.LLST21
	.uleb128 0x30
	.long	.LASF24
	.byte	0x1
	.value	0x341
	.long	0x2e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.string	"addr"
	.byte	0x1
	.value	0x341
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x30
	.long	.LASF23
	.byte	0x1
	.value	0x341
	.long	0x2d3
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2b
	.uleb128 0x31
	.long	.LASF4
	.byte	0x1
	.value	0x345
	.long	0x2e6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x39
	.string	"restart"
	.byte	0x1
	.value	0x36f
	.long	.L196
	.uleb128 0x37
	.long	0x684a
	.long	.LBB27
	.long	.LBE27
	.uleb128 0x2e
	.string	"ap"
	.byte	0x1
	.value	0x347
	.long	0x317
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2d
	.long	.LBB28
	.long	.LBE28
	.byte	0x0
	.uleb128 0x32
	.long	.LASF25
	.long	0x685b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.12605
	.byte	0x0
	.uleb128 0xa
	.long	0x710
	.uleb128 0xa
	.long	0x720
	.uleb128 0x11
	.long	0x6875
	.long	0x2d3
	.uleb128 0x12
	.long	0x2f4
	.byte	0xff
	.byte	0x0
	.uleb128 0xa
	.long	0x6865
	.uleb128 0xa
	.long	0x720
	.uleb128 0x11
	.long	0x688f
	.long	0x2de
	.uleb128 0x12
	.long	0x2f4
	.byte	0x15
	.byte	0x0
	.uleb128 0xa
	.long	0x687f
	.uleb128 0x2e
	.string	"indirect_pool"
	.byte	0x1
	.value	0x2c1
	.long	0x5e63
	.byte	0x5
	.byte	0x3
	.long	indirect_pool
	.uleb128 0x3a
	.string	"target_flags"
	.byte	0xc
	.byte	0x21
	.long	0x2e6
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.long	0x68d6
	.long	0x345
	.uleb128 0x12
	.long	0x2f4
	.byte	0xff
	.byte	0x0
	.uleb128 0x3a
	.string	"_sch_istable"
	.byte	0xd
	.byte	0x48
	.long	0x68ec
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.long	0x68c6
	.uleb128 0x3b
	.string	"flag_debug_asm"
	.byte	0xe
	.value	0x220
	.long	0x2e6
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.long	0x691a
	.long	0x9e
	.uleb128 0x12
	.long	0x2f4
	.byte	0x80
	.byte	0x0
	.uleb128 0x3b
	.string	"const_int_rtx"
	.byte	0x3
	.value	0x69e
	.long	0x690a
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.long	0x6942
	.long	0x9e
	.uleb128 0x12
	.long	0x2f4
	.byte	0xa
	.byte	0x0
	.uleb128 0x3b
	.string	"global_rtl"
	.byte	0x3
	.value	0x6df
	.long	0x6932
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.long	0x6967
	.long	0x1e7
	.uleb128 0x12
	.long	0x2f4
	.byte	0x3f
	.byte	0x0
	.uleb128 0x3b
	.string	"global_trees"
	.byte	0x5
	.value	0x8ee
	.long	0x6957
	.byte	0x1
	.byte	0x1
	.uleb128 0x3b
	.string	"asm_out_file"
	.byte	0xf
	.value	0x194
	.long	0x5481
	.byte	0x1
	.byte	0x1
	.uleb128 0x3b
	.string	"targetm"
	.byte	0x13
	.value	0x12d
	.long	0x5829
	.byte	0x1
	.byte	0x1
	.uleb128 0x3b
	.string	"const_labelno"
	.byte	0x1
	.value	0x309
	.long	0x2e6
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xb
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
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x12
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
	.uleb128 0x15
	.byte	0x0
	.uleb128 0x27
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0x0
	.byte	0x0
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x13
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x23
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
	.uleb128 0x24
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x15
	.byte	0x0
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x18
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x2d
	.uleb128 0xb
	.byte	0x0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x38
	.uleb128 0x2e
	.byte	0x0
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
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uleb128 0x3b
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
	.long	0x1fc
	.value	0x2
	.long	.Ldebug_info0
	.long	0x69c0
	.long	0x5e7b
	.string	"dw2_assemble_integer"
	.long	0x5ecd
	.string	"dw2_asm_output_data"
	.long	0x5f42
	.string	"dw2_asm_output_delta"
	.long	0x5fc8
	.string	"dw2_asm_output_offset"
	.long	0x6041
	.string	"dw2_asm_output_pcrel"
	.long	0x60b9
	.string	"dw2_asm_output_addr"
	.long	0x6130
	.string	"dw2_asm_output_addr_rtx"
	.long	0x61aa
	.string	"dw2_asm_output_nstring"
	.long	0x6259
	.string	"size_of_uleb128"
	.long	0x62b2
	.string	"size_of_sleb128"
	.long	0x630b
	.string	"size_of_encoded_value"
	.long	0x635b
	.string	"eh_data_format_name"
	.long	0x63c7
	.string	"dw2_asm_output_data_uleb128"
	.long	0x643a
	.string	"dw2_asm_output_data_sleb128"
	.long	0x64ad
	.string	"dw2_asm_output_delta_uleb128"
	.long	0x6532
	.string	"dw2_asm_output_delta_sleb128"
	.long	0x6771
	.string	"dw2_output_indirect_constants"
	.long	0x67a1
	.string	"dw2_asm_output_encoded_addr_rtx"
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
	.string	"lang_flag_0"
.LASF7:
	.string	"lang_flag_1"
.LASF8:
	.string	"lang_flag_2"
.LASF12:
	.string	"lang_flag_6"
.LASF13:
	.string	"lang_flag_7"
.LASF4:
	.string	"size"
.LASF3:
	.string	"mem_attrs"
.LASF0:
	.string	"common"
.LASF22:
	.string	"lang_specific"
.LASF9:
	.string	"lang_flag_3"
.LASF1:
	.string	"unsigned int"
.LASF17:
	.string	"abstract_origin"
.LASF20:
	.string	"pointer_depth"
.LASF23:
	.string	"comment"
.LASF18:
	.string	"size_unit"
.LASF24:
	.string	"encoding"
.LASF15:
	.string	"value"
.LASF10:
	.string	"lang_flag_4"
.LASF11:
	.string	"lang_flag_5"
.LASF16:
	.string	"abstract_flag"
.LASF21:
	.string	"user_align"
.LASF14:
	.string	"ht_identifier"
.LASF25:
	.string	"__FUNCTION__"
.LASF5:
	.string	"built_in_class"
.LASF2:
	.string	"_IO_FILE"
.LASF19:
	.string	"attributes"
	.ident	"GCC: (GNU) 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.section	.text.__i686.get_pc_thunk.bx,"axG",@progbits,__i686.get_pc_thunk.bx,comdat
.globl __i686.get_pc_thunk.bx
	.hidden	__i686.get_pc_thunk.bx
	.type	__i686.get_pc_thunk.bx, @function
__i686.get_pc_thunk.bx:
	movl	(%esp), %ebx
	ret
	.section	.note.GNU-stack,"",@progbits
