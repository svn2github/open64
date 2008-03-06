	.file	"genoutput.c"
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
	.type	next_operand_number, @object
	.size	next_operand_number, 4
next_operand_number:
	.long	1
	.section	.rodata
.LC0:
	.string	""
	.section	.data.rel.local,"aw",@progbits
	.align 4
	.type	null_operand, @object
	.size	null_operand, 28
null_operand:
	.long	0
	.long	0
	.long	.LC0
	.long	.LC0
	.long	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.zero	3
	.align 4
	.type	odata, @object
	.size	odata, 4
odata:
	.long	null_operand
	.align 4
	.type	odata_end, @object
	.size	odata_end, 4
odata_end:
	.long	null_operand
	.align 4
	.type	idata_end, @object
	.size	idata_end, 4
idata_end:
	.long	idata
	.local	buf.6718
	.comm	buf.6718,100,32
	.section	.rodata
.LC1:
	.string	"%s+%d"
.LC2:
	.string	"insn %d"
	.text
.globl get_insn_name
	.type	get_insn_name, @function
get_insn_name:
.LFB15:
	.file 1 "../../../kgccfe/gnu/genoutput.c"
	.loc 1 200 0
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
	.loc 1 203 0
	movl	$0, -8(%ebp)
	.loc 1 204 0
	movl	idata@GOTOFF(%ebx), %eax
	movl	%eax, -12(%ebp)
	jmp	.L2
.L3:
	.loc 1 206 0
	movl	-12(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L4
	.loc 1 207 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L6
.L4:
	.loc 1 208 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L7
	.loc 1 209 0
	movl	-12(%ebp), %eax
	movl	%eax, -8(%ebp)
.L7:
	.loc 1 204 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
.L2:
	cmpl	$0, -12(%ebp)
	jne	.L3
	.loc 1 212 0
	cmpl	$0, -8(%ebp)
	je	.L10
	.loc 1 213 0
	movl	-8(%ebp), %eax
	movl	16(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, %ecx
	subl	%edx, %ecx
	movl	%ecx, %edx
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	buf.6718@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	sprintf@PLT
	jmp	.L12
.L10:
	.loc 1 215 0
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	buf.6718@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	sprintf@PLT
.L12:
	.loc 1 217 0
	leal	buf.6718@GOTOFF(%ebx), %eax
	movl	%eax, -24(%ebp)
.L6:
	movl	-24(%ebp), %eax
	.loc 1 218 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE15:
	.size	get_insn_name, .-get_insn_name
	.section	.rodata
	.align 4
.LC3:
	.string	"/* Generated automatically by the program `genoutput'\n   from the machine description file `md'.  */\n"
.LC4:
	.string	"#include \"config.h\""
.LC5:
	.string	"#include \"system.h\""
.LC6:
	.string	"#include \"flags.h\""
.LC7:
	.string	"#include \"ggc.h\""
.LC8:
	.string	"#include \"rtl.h\""
.LC9:
	.string	"#include \"expr.h\""
.LC10:
	.string	"#include \"insn-codes.h\""
.LC11:
	.string	"#include \"tm_p.h\""
.LC12:
	.string	"#include \"function.h\""
.LC13:
	.string	"#include \"regs.h\""
.LC14:
	.string	"#include \"hard-reg-set.h\""
.LC15:
	.string	"#include \"real.h\""
.LC16:
	.string	"#include \"insn-config.h\"\n"
.LC17:
	.string	"#include \"conditions.h\""
.LC18:
	.string	"#include \"insn-flags.h\""
.LC19:
	.string	"#include \"insn-attr.h\"\n"
.LC20:
	.string	"#include \"recog.h\"\n"
.LC21:
	.string	"#include \"toplev.h\""
.LC22:
	.string	"#include \"output.h\""
	.text
	.type	output_prologue, @function
output_prologue:
.LFB16:
	.loc 1 222 0
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
	.loc 1 223 0
	leal	.LC3@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 226 0
	leal	.LC4@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 227 0
	leal	.LC5@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 228 0
	leal	.LC6@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 229 0
	leal	.LC7@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 230 0
	leal	.LC8@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 231 0
	leal	.LC9@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 232 0
	leal	.LC10@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 233 0
	leal	.LC11@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 234 0
	leal	.LC12@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 235 0
	leal	.LC13@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 236 0
	leal	.LC14@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 237 0
	leal	.LC15@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 238 0
	leal	.LC16@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 239 0
	leal	.LC17@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 241 0
	leal	.LC18@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 243 0
	leal	.LC19@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 244 0
	leal	.LC20@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 245 0
	leal	.LC21@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 246 0
	leal	.LC22@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 247 0
	addl	$4, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE16:
	.size	output_prologue, .-output_prologue
	.section	.rodata
	.align 4
.LC23:
	.string	"extern int %s PARAMS ((rtx, enum machine_mode));\n"
.LC24:
	.string	"\n"
	.text
	.type	output_predicate_decls, @function
output_predicate_decls:
.LFB17:
	.loc 1 257 0
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
	.loc 1 258 0
	movl	$0, -20(%ebp)
	.loc 1 262 0
	movl	odata@GOTOFF(%ebx), %eax
	movl	%eax, -16(%ebp)
	jmp	.L17
.L18:
	.loc 1 263 0
	movl	-16(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	je	.L19
	movl	-16(%ebp), %eax
	movl	8(%eax), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L19
	.loc 1 265 0
	movl	-20(%ebp), %eax
	movl	%eax, -12(%ebp)
	jmp	.L22
.L23:
	.loc 1 266 0
	movl	-16(%ebp), %eax
	movl	8(%eax), %edx
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L24
	.loc 1 265 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
.L22:
	cmpl	$0, -12(%ebp)
	jne	.L23
.L24:
	.loc 1 269 0
	cmpl	$0, -12(%ebp)
	jne	.L19
	.loc 1 271 0
	movl	-16(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC23@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 273 0
	movl	$8, (%esp)
	call	xmalloc@PLT
	movl	%eax, -12(%ebp)
	.loc 1 274 0
	movl	-16(%ebp), %eax
	movl	8(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 275 0
	movl	-12(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 276 0
	movl	-12(%ebp), %eax
	movl	%eax, -20(%ebp)
.L19:
	.loc 1 262 0
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
.L17:
	cmpl	$0, -16(%ebp)
	jne	.L18
	.loc 1 280 0
	leal	.LC24@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 281 0
	movl	-20(%ebp), %eax
	movl	%eax, -12(%ebp)
	jmp	.L28
.L29:
	.loc 1 283 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 284 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 281 0
	movl	-8(%ebp), %eax
	movl	%eax, -12(%ebp)
.L28:
	cmpl	$0, -12(%ebp)
	jne	.L29
	.loc 1 286 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE17:
	.size	output_predicate_decls, .-output_predicate_decls
	.section	.rodata
	.align 4
.LC25:
	.string	"\nstatic const struct insn_operand_data operand_data[] = \n{"
.LC26:
	.string	"  {"
.LC27:
	.string	"0"
.LC28:
	.string	"    %s,\n"
.LC29:
	.string	"    \"%s\",\n"
.LC30:
	.string	"    %smode,\n"
.LC31:
	.string	"    %d,\n"
.LC32:
	.string	"    %d\n"
.LC33:
	.string	"  },"
.LC34:
	.string	"};\n\n"
	.text
	.type	output_operand_data, @function
output_operand_data:
.LFB18:
	.loc 1 290 0
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
	.loc 1 293 0
	leal	.LC25@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 295 0
	movl	odata@GOTOFF(%ebx), %eax
	movl	%eax, -8(%ebp)
	jmp	.L33
.L34:
	.loc 1 297 0
	leal	.LC26@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 299 0
	movl	-8(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	je	.L35
	movl	-8(%ebp), %eax
	movl	8(%eax), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L35
	movl	-8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L38
.L35:
	leal	.LC27@GOTOFF(%ebx), %eax
	movl	%eax, -28(%ebp)
.L38:
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC28@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 302 0
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	.L39
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L41
.L39:
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, -24(%ebp)
.L41:
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC29@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 304 0
	movl	-8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, %edx
	movl	mode_name@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, 4(%esp)
	leal	.LC30@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 306 0
	movl	-8(%ebp), %eax
	movzbl	22(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, 4(%esp)
	leal	.LC31@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 308 0
	movl	-8(%ebp), %eax
	movzbl	23(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, 4(%esp)
	leal	.LC32@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 310 0
	leal	.LC33@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 295 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
.L33:
	cmpl	$0, -8(%ebp)
	jne	.L34
	.loc 1 312 0
	leal	.LC34@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 313 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE18:
	.size	output_operand_data, .-output_operand_data
	.section	.rodata
	.type	__FUNCTION__.6820, @object
	.size	__FUNCTION__.6820, 17
__FUNCTION__.6820:
	.string	"output_insn_data"
	.align 4
.LC35:
	.string	"\nconst struct insn_data insn_data[] = \n{"
.LC36:
	.string	"    \"%s-%d\",\n"
.LC37:
	.string	"    \"%s+%d\",\n"
.LC38:
	.string	"    0,"
.LC39:
	.string	"    (const PTR) output_%d,\n"
	.align 4
.LC40:
	.string	"../../../kgccfe/gnu/genoutput.c"
.LC41:
	.string	"    (insn_gen_fn) gen_%s,\n"
.LC42:
	.string	"    &operand_data[%d],\n"
	.text
	.type	output_insn_data, @function
output_insn_data:
.LFB19:
	.loc 1 317 0
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
	.loc 1 319 0
	movl	$0, -24(%ebp)
	.loc 1 321 0
	movl	$0, -16(%ebp)
	.loc 1 322 0
	movl	$0, -12(%ebp)
	.loc 1 325 0
	movl	idata@GOTOFF(%ebx), %eax
	movl	%eax, -8(%ebp)
	movl	$1, -20(%ebp)
	jmp	.L45
.L46:
	.loc 1 326 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L47
	.loc 1 328 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 329 0
	jmp	.L49
.L47:
	.loc 1 325 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	addl	$1, -20(%ebp)
.L45:
	cmpl	$0, -8(%ebp)
	jne	.L46
.L49:
	.loc 1 332 0
	leal	.LC35@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 334 0
	movl	idata@GOTOFF(%ebx), %eax
	movl	%eax, -28(%ebp)
	jmp	.L50
.L51:
	.loc 1 336 0
	leal	.LC26@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 338 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L52
	.loc 1 340 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC29@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 341 0
	movl	$0, -24(%ebp)
	.loc 1 342 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 343 0
	movl	$0, -12(%ebp)
	.loc 1 344 0
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	movl	$1, -20(%ebp)
	jmp	.L54
.L55:
	.loc 1 347 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L56
	.loc 1 349 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 350 0
	jmp	.L59
.L56:
	.loc 1 345 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	addl	$1, -20(%ebp)
.L54:
	.loc 1 344 0
	cmpl	$0, -8(%ebp)
	jne	.L55
	jmp	.L59
.L52:
	.loc 1 356 0
	addl	$1, -24(%ebp)
	.loc 1 357 0
	cmpl	$0, -12(%ebp)
	je	.L60
	cmpl	$0, -16(%ebp)
	je	.L62
	movl	-20(%ebp), %edx
	movl	%edx, %eax
	shrl	$31, %eax
	addl	%edx, %eax
	sarl	%eax
	cmpl	-24(%ebp), %eax
	jge	.L60
.L62:
	.loc 1 359 0
	movl	-24(%ebp), %edx
	movl	-20(%ebp), %eax
	subl	%edx, %eax
	movl	%eax, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC36@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 357 0
	jmp	.L59
.L60:
	.loc 1 362 0
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC37@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
.L59:
	.loc 1 365 0
	movl	-28(%ebp), %eax
	movl	40(%eax), %eax
	movl	%eax, -40(%ebp)
	cmpl	$1, -40(%ebp)
	je	.L66
	cmpl	$1, -40(%ebp)
	jg	.L68
	cmpl	$0, -40(%ebp)
	je	.L65
	jmp	.L64
.L68:
	cmpl	$3, -40(%ebp)
	jg	.L64
	jmp	.L67
.L65:
	.loc 1 368 0
	leal	.LC38@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 369 0
	jmp	.L69
.L66:
	.loc 1 394 0
	movl	-28(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC29@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 396 0
	jmp	.L69
.L67:
	.loc 1 399 0
	movl	-28(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC39@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 400 0
	jmp	.L69
.L64:
	.loc 1 402 0
	leal	__FUNCTION__.6820@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$402, 4(%esp)
	leal	.LC40@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L69:
	.loc 1 405 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L70
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	(%eax), %eax
	cmpb	$42, %al
	je	.L70
	.loc 1 406 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC41@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 405 0
	jmp	.L73
.L70:
	.loc 1 408 0
	leal	.LC38@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
.L73:
	.loc 1 410 0
	movl	-28(%ebp), %eax
	movl	36(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC42@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 411 0
	movl	-28(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC31@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 412 0
	movl	-28(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC31@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 413 0
	movl	-28(%ebp), %eax
	movl	32(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC31@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 414 0
	movl	-28(%ebp), %eax
	movl	40(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC32@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 416 0
	leal	.LC33@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 334 0
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
.L50:
	cmpl	$0, -28(%ebp)
	jne	.L51
	.loc 1 418 0
	leal	.LC34@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 419 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE19:
	.size	output_insn_data, .-output_insn_data
	.section	.rodata
.LC43:
	.string	"const char *"
.LC44:
	.string	"get_insn_name (code)"
.LC45:
	.string	"     int code;"
.LC46:
	.string	"{"
	.align 4
.LC47:
	.string	"  return insn_data[code].name;"
.LC48:
	.string	"}"
	.text
	.type	output_get_insn_name, @function
output_get_insn_name:
.LFB20:
	.loc 1 423 0
	pushl	%ebp
.LCFI20:
	movl	%esp, %ebp
.LCFI21:
	pushl	%ebx
.LCFI22:
	subl	$4, %esp
.LCFI23:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 424 0
	leal	.LC43@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 425 0
	leal	.LC44@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 426 0
	leal	.LC45@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 427 0
	leal	.LC46@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 428 0
	leal	.LC47@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 429 0
	leal	.LC48@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 430 0
	addl	$4, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE20:
	.size	output_get_insn_name, .-output_get_insn_name
	.section	.rodata
	.align 4
.LC49:
	.string	"maximum number of operands exceeded"
.LC50:
	.string	"repeated operand number %d\n"
.LC51:
	.string	"scratch_operand"
	.text
	.type	scan_operands, @function
scan_operands:
.LFB21:
	.loc 1 449 0
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
	subl	$44, %esp
.LCFI29:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 454 0
	cmpl	$0, 12(%ebp)
	je	.L118
	.loc 1 457 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	subl	$5, %eax
	movl	%eax, -36(%ebp)
	cmpl	$69, -36(%ebp)
	ja	.L81
	movl	-36(%ebp), %eax
	sall	$2, %eax
	movl	.L88@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L88:
	.long	.L82@GOTOFF
	.long	.L83@GOTOFF
	.long	.L84@GOTOFF
	.long	.L85@GOTOFF
	.long	.L85@GOTOFF
	.long	.L84@GOTOFF
	.long	.L84@GOTOFF
	.long	.L81@GOTOFF
	.long	.L81@GOTOFF
	.long	.L81@GOTOFF
	.long	.L81@GOTOFF
	.long	.L81@GOTOFF
	.long	.L81@GOTOFF
	.long	.L81@GOTOFF
	.long	.L81@GOTOFF
	.long	.L81@GOTOFF
	.long	.L81@GOTOFF
	.long	.L81@GOTOFF
	.long	.L81@GOTOFF
	.long	.L81@GOTOFF
	.long	.L86@GOTOFF
	.long	.L81@GOTOFF
	.long	.L81@GOTOFF
	.long	.L81@GOTOFF
	.long	.L81@GOTOFF
	.long	.L81@GOTOFF
	.long	.L81@GOTOFF
	.long	.L81@GOTOFF
	.long	.L81@GOTOFF
	.long	.L81@GOTOFF
	.long	.L81@GOTOFF
	.long	.L81@GOTOFF
	.long	.L81@GOTOFF
	.long	.L81@GOTOFF
	.long	.L81@GOTOFF
	.long	.L81@GOTOFF
	.long	.L81@GOTOFF
	.long	.L81@GOTOFF
	.long	.L81@GOTOFF
	.long	.L81@GOTOFF
	.long	.L81@GOTOFF
	.long	.L81@GOTOFF
	.long	.L81@GOTOFF
	.long	.L81@GOTOFF
	.long	.L81@GOTOFF
	.long	.L81@GOTOFF
	.long	.L81@GOTOFF
	.long	.L81@GOTOFF
	.long	.L81@GOTOFF
	.long	.L81@GOTOFF
	.long	.L81@GOTOFF
	.long	.L81@GOTOFF
	.long	.L81@GOTOFF
	.long	.L81@GOTOFF
	.long	.L81@GOTOFF
	.long	.L81@GOTOFF
	.long	.L81@GOTOFF
	.long	.L81@GOTOFF
	.long	.L81@GOTOFF
	.long	.L81@GOTOFF
	.long	.L81@GOTOFF
	.long	.L81@GOTOFF
	.long	.L81@GOTOFF
	.long	.L81@GOTOFF
	.long	.L81@GOTOFF
	.long	.L81@GOTOFF
	.long	.L81@GOTOFF
	.long	.L81@GOTOFF
	.long	.L81@GOTOFF
	.long	.L87@GOTOFF
	.text
.L82:
	.loc 1 460 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 461 0
	movl	max_opno@GOTOFF(%ebx), %eax
	cmpl	%eax, -16(%ebp)
	jle	.L89
	.loc 1 462 0
	movl	-16(%ebp), %eax
	movl	%eax, max_opno@GOTOFF(%ebx)
.L89:
	.loc 1 463 0
	movl	max_opno@GOTOFF(%ebx), %eax
	cmpl	$39, %eax
	jle	.L91
	.loc 1 465 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	leal	.LC49@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	message_with_line@PLT
	.loc 1 467 0
	movl	have_error@GOT(%ebx), %eax
	movl	$1, (%eax)
	.loc 1 468 0
	jmp	.L118
.L91:
	.loc 1 470 0
	movl	-16(%ebp), %eax
	movl	8(%ebp), %ecx
	leal	0(,%eax,4), %edx
	leal	0(,%edx,8), %eax
	subl	%edx, %eax
	addl	%ecx, %eax
	addl	$48, %eax
	movzbl	20(%eax), %eax
	testb	%al, %al
	je	.L93
	.loc 1 472 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC50@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	message_with_line@PLT
	.loc 1 474 0
	movl	have_error@GOT(%ebx), %eax
	movl	$1, (%eax)
.L93:
	.loc 1 477 0
	movl	-16(%ebp), %eax
	movl	8(%ebp), %ecx
	leal	0(,%eax,4), %edx
	leal	0(,%edx,8), %eax
	subl	%edx, %eax
	addl	%ecx, %eax
	addl	$48, %eax
	movb	$1, 20(%eax)
	.loc 1 478 0
	movl	-16(%ebp), %edx
	movl	12(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %esi
	movl	8(%ebp), %ecx
	movl	%edx, %eax
	leal	0(,%eax,4), %edx
	leal	0(,%edx,8), %eax
	subl	%edx, %eax
	addl	%ecx, %eax
	addl	$60, %eax
	movl	%esi, (%eax)
	.loc 1 479 0
	movl	-16(%ebp), %edx
	movl	20(%ebp), %eax
	movl	%eax, %esi
	movl	8(%ebp), %ecx
	movl	%edx, %eax
	leal	0(,%eax,4), %edx
	leal	0(,%edx,8), %eax
	subl	%edx, %eax
	addl	%ecx, %eax
	addl	$48, %eax
	movl	%esi, %edx
	movb	%dl, 18(%eax)
	.loc 1 480 0
	movl	-16(%ebp), %edx
	movl	12(%ebp), %eax
	movl	12(%eax), %esi
	movl	8(%ebp), %ecx
	movl	%edx, %eax
	leal	0(,%eax,4), %edx
	leal	0(,%edx,8), %eax
	subl	%edx, %eax
	addl	%ecx, %eax
	addl	$52, %eax
	movl	%esi, (%eax)
	.loc 1 481 0
	movl	-16(%ebp), %esi
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	strip_whitespace
	movl	%eax, %edi
	movl	8(%ebp), %ecx
	movl	%esi, %eax
	leal	0(,%eax,4), %edx
	leal	0(,%edx,8), %eax
	subl	%edx, %eax
	addl	%ecx, %eax
	addl	$56, %eax
	movl	%edi, (%eax)
	.loc 1 482 0
	movl	-16(%ebp), %edi
	movl	-16(%ebp), %eax
	movl	8(%ebp), %ecx
	leal	0(,%eax,4), %edx
	leal	0(,%edx,8), %eax
	subl	%edx, %eax
	addl	%ecx, %eax
	addl	$56, %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$44, (%esp)
	call	n_occurrences
	leal	1(%eax), %esi
	movl	8(%ebp), %ecx
	movl	%edi, %eax
	leal	0(,%eax,4), %edx
	leal	0(,%edx,8), %eax
	subl	%edx, %eax
	addl	%ecx, %eax
	addl	$48, %eax
	movl	%esi, %edx
	movb	%dl, 16(%eax)
	.loc 1 484 0
	movl	-16(%ebp), %edx
	movl	16(%ebp), %eax
	movl	%eax, %esi
	movl	8(%ebp), %ecx
	movl	%edx, %eax
	leal	0(,%eax,4), %edx
	leal	0(,%edx,8), %eax
	subl	%edx, %eax
	addl	%ecx, %eax
	addl	$48, %eax
	movl	%esi, %edx
	movb	%dl, 17(%eax)
	.loc 1 485 0
	movl	-16(%ebp), %eax
	movl	8(%ebp), %ecx
	leal	0(,%eax,4), %edx
	leal	0(,%edx,8), %eax
	subl	%edx, %eax
	addl	%ecx, %eax
	addl	$48, %eax
	movb	$1, 19(%eax)
	.loc 1 486 0
	jmp	.L118
.L83:
	.loc 1 489 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 490 0
	movl	max_opno@GOTOFF(%ebx), %eax
	cmpl	%eax, -16(%ebp)
	jle	.L95
	.loc 1 491 0
	movl	-16(%ebp), %eax
	movl	%eax, max_opno@GOTOFF(%ebx)
.L95:
	.loc 1 492 0
	movl	max_opno@GOTOFF(%ebx), %eax
	cmpl	$39, %eax
	jle	.L97
	.loc 1 494 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	leal	.LC49@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	message_with_line@PLT
	.loc 1 496 0
	movl	have_error@GOT(%ebx), %eax
	movl	$1, (%eax)
	.loc 1 497 0
	jmp	.L118
.L97:
	.loc 1 499 0
	movl	-16(%ebp), %eax
	movl	8(%ebp), %ecx
	leal	0(,%eax,4), %edx
	leal	0(,%edx,8), %eax
	subl	%edx, %eax
	addl	%ecx, %eax
	addl	$48, %eax
	movzbl	20(%eax), %eax
	testb	%al, %al
	je	.L99
	.loc 1 501 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC50@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	message_with_line@PLT
	.loc 1 503 0
	movl	have_error@GOT(%ebx), %eax
	movl	$1, (%eax)
.L99:
	.loc 1 506 0
	movl	-16(%ebp), %eax
	movl	8(%ebp), %ecx
	leal	0(,%eax,4), %edx
	leal	0(,%edx,8), %eax
	subl	%edx, %eax
	addl	%ecx, %eax
	addl	$48, %eax
	movb	$1, 20(%eax)
	.loc 1 507 0
	movl	-16(%ebp), %edx
	movl	12(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %esi
	movl	8(%ebp), %ecx
	movl	%edx, %eax
	leal	0(,%eax,4), %edx
	leal	0(,%edx,8), %eax
	subl	%edx, %eax
	addl	%ecx, %eax
	addl	$60, %eax
	movl	%esi, (%eax)
	.loc 1 508 0
	movl	-16(%ebp), %eax
	movl	8(%ebp), %ecx
	leal	0(,%eax,4), %edx
	leal	0(,%edx,8), %eax
	subl	%edx, %eax
	addl	%ecx, %eax
	addl	$48, %eax
	movb	$0, 18(%eax)
	.loc 1 509 0
	movl	-16(%ebp), %eax
	movl	8(%ebp), %ecx
	leal	0(,%eax,4), %edx
	leal	0(,%edx,8), %eax
	subl	%edx, %eax
	addl	%ecx, %eax
	leal	52(%eax), %edx
	leal	.LC51@GOTOFF(%ebx), %eax
	movl	%eax, (%edx)
	.loc 1 510 0
	movl	-16(%ebp), %esi
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, (%esp)
	call	strip_whitespace
	movl	%eax, %edi
	movl	8(%ebp), %ecx
	movl	%esi, %eax
	leal	0(,%eax,4), %edx
	leal	0(,%edx,8), %eax
	subl	%edx, %eax
	addl	%ecx, %eax
	addl	$56, %eax
	movl	%edi, (%eax)
	.loc 1 511 0
	movl	-16(%ebp), %edi
	movl	-16(%ebp), %eax
	movl	8(%ebp), %ecx
	leal	0(,%eax,4), %edx
	leal	0(,%edx,8), %eax
	subl	%edx, %eax
	addl	%ecx, %eax
	addl	$56, %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$44, (%esp)
	call	n_occurrences
	leal	1(%eax), %esi
	movl	8(%ebp), %ecx
	movl	%edi, %eax
	leal	0(,%eax,4), %edx
	leal	0(,%edx,8), %eax
	subl	%edx, %eax
	addl	%ecx, %eax
	addl	$48, %eax
	movl	%esi, %edx
	movb	%dl, 16(%eax)
	.loc 1 513 0
	movl	-16(%ebp), %eax
	movl	8(%ebp), %ecx
	leal	0(,%eax,4), %edx
	leal	0(,%edx,8), %eax
	subl	%edx, %eax
	addl	%ecx, %eax
	addl	$48, %eax
	movb	$0, 17(%eax)
	.loc 1 514 0
	movl	-16(%ebp), %eax
	movl	8(%ebp), %ecx
	leal	0(,%eax,4), %edx
	leal	0(,%edx,8), %eax
	subl	%edx, %eax
	addl	%ecx, %eax
	addl	$48, %eax
	movb	$0, 19(%eax)
	.loc 1 515 0
	jmp	.L118
.L85:
	.loc 1 519 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 520 0
	movl	max_opno@GOTOFF(%ebx), %eax
	cmpl	%eax, -16(%ebp)
	jle	.L101
	.loc 1 521 0
	movl	-16(%ebp), %eax
	movl	%eax, max_opno@GOTOFF(%ebx)
.L101:
	.loc 1 522 0
	movl	max_opno@GOTOFF(%ebx), %eax
	cmpl	$39, %eax
	jle	.L103
	.loc 1 524 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	leal	.LC49@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	message_with_line@PLT
	.loc 1 526 0
	movl	have_error@GOT(%ebx), %eax
	movl	$1, (%eax)
	.loc 1 527 0
	jmp	.L118
.L103:
	.loc 1 529 0
	movl	-16(%ebp), %eax
	movl	8(%ebp), %ecx
	leal	0(,%eax,4), %edx
	leal	0(,%edx,8), %eax
	subl	%edx, %eax
	addl	%ecx, %eax
	addl	$48, %eax
	movzbl	20(%eax), %eax
	testb	%al, %al
	je	.L105
	.loc 1 531 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC50@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	message_with_line@PLT
	.loc 1 533 0
	movl	have_error@GOT(%ebx), %eax
	movl	$1, (%eax)
.L105:
	.loc 1 536 0
	movl	-16(%ebp), %eax
	movl	8(%ebp), %ecx
	leal	0(,%eax,4), %edx
	leal	0(,%edx,8), %eax
	subl	%edx, %eax
	addl	%ecx, %eax
	addl	$48, %eax
	movb	$1, 20(%eax)
	.loc 1 537 0
	movl	-16(%ebp), %edx
	movl	12(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %esi
	movl	8(%ebp), %ecx
	movl	%edx, %eax
	leal	0(,%eax,4), %edx
	leal	0(,%edx,8), %eax
	subl	%edx, %eax
	addl	%ecx, %eax
	addl	$60, %eax
	movl	%esi, (%eax)
	.loc 1 538 0
	movl	-16(%ebp), %eax
	movl	8(%ebp), %ecx
	leal	0(,%eax,4), %edx
	leal	0(,%edx,8), %eax
	subl	%edx, %eax
	addl	%ecx, %eax
	addl	$48, %eax
	movb	$0, 18(%eax)
	.loc 1 539 0
	movl	-16(%ebp), %edx
	movl	12(%ebp), %eax
	movl	12(%eax), %esi
	movl	8(%ebp), %ecx
	movl	%edx, %eax
	leal	0(,%eax,4), %edx
	leal	0(,%edx,8), %eax
	subl	%edx, %eax
	addl	%ecx, %eax
	addl	$52, %eax
	movl	%esi, (%eax)
	.loc 1 540 0
	movl	-16(%ebp), %eax
	movl	8(%ebp), %ecx
	leal	0(,%eax,4), %edx
	leal	0(,%edx,8), %eax
	subl	%edx, %eax
	addl	%ecx, %eax
	addl	$56, %eax
	movl	$0, (%eax)
	.loc 1 541 0
	movl	-16(%ebp), %eax
	movl	8(%ebp), %ecx
	leal	0(,%eax,4), %edx
	leal	0(,%edx,8), %eax
	subl	%edx, %eax
	addl	%ecx, %eax
	addl	$48, %eax
	movb	$0, 17(%eax)
	.loc 1 542 0
	movl	-16(%ebp), %eax
	movl	8(%ebp), %ecx
	leal	0(,%eax,4), %edx
	leal	0(,%edx,8), %eax
	subl	%edx, %eax
	addl	%ecx, %eax
	addl	$48, %eax
	movb	$0, 19(%eax)
	.loc 1 543 0
	movl	$0, -28(%ebp)
	jmp	.L107
.L108:
	.loc 1 544 0
	movl	12(%ebp), %eax
	movl	20(%eax), %edx
	movl	-28(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	scan_operands
	.loc 1 543 0
	addl	$1, -28(%ebp)
.L107:
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	(%eax), %eax
	cmpl	-28(%ebp), %eax
	jg	.L108
	.loc 1 545 0
	jmp	.L118
.L84:
	.loc 1 550 0
	movl	num_dups@GOTOFF(%ebx), %eax
	addl	$1, %eax
	movl	%eax, num_dups@GOTOFF(%ebx)
	.loc 1 551 0
	jmp	.L81
.L86:
	.loc 1 554 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 12(%esp)
	movl	$1, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	scan_operands
	.loc 1 555 0
	jmp	.L118
.L87:
	.loc 1 558 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	$1, 12(%esp)
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	scan_operands
	.loc 1 559 0
	jmp	.L118
.L81:
	.loc 1 565 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_format@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -20(%ebp)
	.loc 1 567 0
	movl	$0, -28(%ebp)
	jmp	.L110
.L111:
	.loc 1 568 0
	movl	-20(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -32(%ebp)
	addl	$1, -20(%ebp)
	cmpl	$101, -32(%ebp)
	je	.L114
	cmpl	$117, -32(%ebp)
	je	.L114
	cmpl	$69, -32(%ebp)
	je	.L113
	jmp	.L112
.L114:
	.loc 1 572 0
	movl	-28(%ebp), %edx
	movl	12(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	scan_operands
	.loc 1 573 0
	jmp	.L112
.L113:
	.loc 1 575 0
	movl	-28(%ebp), %eax
	movl	12(%ebp), %edx
	movl	4(%edx,%eax,8), %eax
	testl	%eax, %eax
	je	.L112
	.loc 1 576 0
	movl	$0, -24(%ebp)
	jmp	.L116
.L117:
	.loc 1 577 0
	movl	-28(%ebp), %edx
	movl	12(%ebp), %eax
	movl	4(%eax,%edx,8), %edx
	movl	-24(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	scan_operands
	.loc 1 576 0
	addl	$1, -24(%ebp)
.L116:
	movl	-28(%ebp), %edx
	movl	12(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	(%eax), %eax
	cmpl	-24(%ebp), %eax
	jg	.L117
.L112:
	.loc 1 567 0
	addl	$1, -28(%ebp)
.L110:
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_length@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	cmpl	-28(%ebp), %eax
	jg	.L111
.L118:
	.loc 1 580 0
	addl	$44, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE21:
	.size	scan_operands, .-scan_operands
	.type	compare_operands, @function
compare_operands:
.LFB22:
	.loc 1 587 0
	pushl	%ebp
.LCFI30:
	movl	%esp, %ebp
.LCFI31:
	pushl	%ebx
.LCFI32:
	subl	$36, %esp
.LCFI33:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 590 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 591 0
	cmpl	$0, -12(%ebp)
	jne	.L120
	.loc 1 592 0
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, -12(%ebp)
.L120:
	.loc 1 593 0
	movl	12(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 594 0
	cmpl	$0, -8(%ebp)
	jne	.L122
	.loc 1 595 0
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, -8(%ebp)
.L122:
	.loc 1 596 0
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L124
	.loc 1 597 0
	movl	$0, -24(%ebp)
	jmp	.L126
.L124:
	.loc 1 599 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 600 0
	cmpl	$0, -12(%ebp)
	jne	.L127
	.loc 1 601 0
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, -12(%ebp)
.L127:
	.loc 1 602 0
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 603 0
	cmpl	$0, -8(%ebp)
	jne	.L129
	.loc 1 604 0
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, -8(%ebp)
.L129:
	.loc 1 605 0
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L131
	.loc 1 606 0
	movl	$0, -24(%ebp)
	jmp	.L126
.L131:
	.loc 1 608 0
	movl	8(%ebp), %eax
	movl	16(%eax), %edx
	movl	12(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	je	.L133
	.loc 1 609 0
	movl	$0, -24(%ebp)
	jmp	.L126
.L133:
	.loc 1 611 0
	movl	8(%ebp), %eax
	movzbl	22(%eax), %edx
	movl	12(%ebp), %eax
	movzbl	22(%eax), %eax
	cmpb	%al, %dl
	je	.L135
	.loc 1 612 0
	movl	$0, -24(%ebp)
	jmp	.L126
.L135:
	.loc 1 614 0
	movl	8(%ebp), %eax
	movzbl	23(%eax), %edx
	movl	12(%ebp), %eax
	movzbl	23(%eax), %eax
	cmpb	%al, %dl
	je	.L137
	.loc 1 615 0
	movl	$0, -24(%ebp)
	jmp	.L126
.L137:
	.loc 1 617 0
	movl	$1, -24(%ebp)
.L126:
	movl	-24(%ebp), %eax
	.loc 1 618 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE22:
	.size	compare_operands, .-compare_operands
	.type	place_operands, @function
place_operands:
.LFB23:
	.loc 1 626 0
	pushl	%ebp
.LCFI34:
	movl	%esp, %ebp
.LCFI35:
	pushl	%ebx
.LCFI36:
	subl	$36, %esp
.LCFI37:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 630 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	testl	%eax, %eax
	jne	.L141
	.loc 1 632 0
	movl	8(%ebp), %eax
	movl	$0, 36(%eax)
	.loc 1 633 0
	jmp	.L157
.L141:
	.loc 1 637 0
	movl	odata@GOTOFF(%ebx), %eax
	movl	%eax, -16(%ebp)
	movl	$0, -8(%ebp)
	jmp	.L144
.L145:
	.loc 1 638 0
	movl	8(%ebp), %eax
	addl	$44, %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	compare_operands
	testl	%eax, %eax
	je	.L146
	.loc 1 640 0
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 641 0
	movl	$1, -8(%ebp)
.L148:
	.loc 1 644 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	cmpl	-8(%ebp), %eax
	je	.L149
	.loc 1 646 0
	cmpl	$0, -12(%ebp)
	je	.L151
	.loc 1 648 0
	movl	8(%ebp), %ecx
	addl	$44, %ecx
	movl	-8(%ebp), %eax
	leal	0(,%eax,4), %edx
	leal	0(,%edx,8), %eax
	subl	%edx, %eax
	leal	(%ecx,%eax), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	compare_operands
	testl	%eax, %eax
	je	.L146
	.loc 1 650 0
	addl	$1, -8(%ebp)
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 651 0
	jmp	.L148
.L146:
	.loc 1 637 0
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
	movl	$0, -8(%ebp)
.L144:
	cmpl	$0, -16(%ebp)
	jne	.L145
.L151:
	.loc 1 657 0
	movl	next_operand_number@GOTOFF(%ebx), %eax
	movl	%eax, %edx
	subl	-8(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%edx, 36(%eax)
	.loc 1 658 0
	jmp	.L154
.L155:
	.loc 1 660 0
	movl	8(%ebp), %ecx
	addl	$44, %ecx
	movl	-8(%ebp), %eax
	leal	0(,%eax,4), %edx
	leal	0(,%edx,8), %eax
	subl	%edx, %eax
	leal	(%ecx,%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 661 0
	movl	odata_end@GOTOFF(%ebx), %edx
	movl	-12(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 662 0
	movl	-12(%ebp), %eax
	movl	%eax, odata_end@GOTOFF(%ebx)
	.loc 1 663 0
	movl	next_operand_number@GOTOFF(%ebx), %edx
	movl	-12(%ebp), %eax
	movl	%edx, 4(%eax)
	leal	1(%edx), %eax
	movl	%eax, next_operand_number@GOTOFF(%ebx)
	.loc 1 658 0
	addl	$1, -8(%ebp)
.L154:
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	cmpl	-8(%ebp), %eax
	jg	.L155
	.loc 1 665 0
	movl	odata_end@GOTOFF(%ebx), %eax
	movl	$0, (%eax)
	.loc 1 666 0
	jmp	.L157
.L149:
	.loc 1 669 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 36(%eax)
.L157:
	.loc 1 671 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE23:
	.size	place_operands, .-place_operands
	.section	.rodata
	.align 4
.LC52:
	.string	"\nstatic const char *output_%d PARAMS ((rtx *, rtx));\n"
.LC53:
	.string	"\nstatic const char *"
.LC54:
	.string	"output_%d (operands, insn)\n"
	.align 4
.LC55:
	.string	"     rtx *operands ATTRIBUTE_UNUSED;"
	.align 4
.LC56:
	.string	"     rtx insn ATTRIBUTE_UNUSED;"
	.align 4
.LC57:
	.string	"\nstatic const char * const output_%d[] = {\n"
.LC58:
	.string	"  \""
.LC59:
	.string	"\","
	.align 4
.LC60:
	.string	"'@' is redundant for output template with single alternative"
	.align 4
.LC61:
	.string	"wrong number of alternatives in the output template"
.LC62:
	.string	"};"
	.text
	.type	process_template, @function
process_template:
.LFB24:
	.loc 1 682 0
	pushl	%ebp
.LCFI38:
	movl	%esp, %ebp
.LCFI39:
	pushl	%ebx
.LCFI40:
	subl	$36, %esp
.LCFI41:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 687 0
	movl	12(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$42, %al
	jne	.L159
	.loc 1 689 0
	movl	8(%ebp), %eax
	movl	$0, 8(%eax)
	.loc 1 690 0
	movl	8(%ebp), %eax
	movl	$3, 40(%eax)
	.loc 1 692 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC52@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 694 0
	leal	.LC53@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 695 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC54@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 696 0
	leal	.LC55@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 697 0
	leal	.LC56@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 698 0
	leal	.LC46@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 700 0
	movl	12(%ebp), %eax
	addl	$1, %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 701 0
	leal	.LC48@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	jmp	.L178
.L159:
	.loc 1 706 0
	movl	12(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$64, %al
	jne	.L162
	.loc 1 708 0
	movl	8(%ebp), %eax
	movl	$0, 8(%eax)
	.loc 1 709 0
	movl	8(%ebp), %eax
	movl	$2, 40(%eax)
	.loc 1 711 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC57@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 713 0
	movl	$0, -8(%ebp)
	movl	12(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -12(%ebp)
	jmp	.L164
.L167:
	.loc 1 716 0
	addl	$1, -12(%ebp)
.L166:
	.loc 1 715 0
	movl	-12(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edx
	movl	_sch_istable@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	andl	$64, %eax
	testl	%eax, %eax
	jne	.L167
	.loc 1 718 0
	leal	.LC58@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 722 0
	jmp	.L169
.L170:
	.loc 1 725 0
	movl	-12(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, (%esp)
	call	putchar@PLT
	.loc 1 726 0
	addl	$1, -12(%ebp)
.L169:
	.loc 1 722 0
	movl	-12(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$10, %al
	je	.L171
	movl	-12(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L170
.L171:
	.loc 1 729 0
	leal	.LC59@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 730 0
	addl	$1, -8(%ebp)
.L164:
	.loc 1 713 0
	movl	-12(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L166
	.loc 1 732 0
	cmpl	$1, -8(%ebp)
	jne	.L174
	.loc 1 733 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	leal	.LC60@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	message_with_line@PLT
.L174:
	.loc 1 735 0
	movl	8(%ebp), %eax
	movl	32(%eax), %eax
	cmpl	-8(%ebp), %eax
	je	.L176
	.loc 1 737 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	leal	.LC61@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	message_with_line@PLT
	.loc 1 739 0
	movl	have_error@GOT(%ebx), %eax
	movl	$1, (%eax)
.L176:
	.loc 1 742 0
	leal	.LC62@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	jmp	.L178
.L162:
	.loc 1 746 0
	movl	8(%ebp), %eax
	movl	12(%ebp), %edx
	movl	%edx, 8(%eax)
	.loc 1 747 0
	movl	8(%ebp), %eax
	movl	$1, 40(%eax)
.L178:
	.loc 1 749 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE24:
	.size	process_template, .-process_template
	.section	.rodata
	.align 4
.LC63:
	.string	"wrong number of alternatives in operand %d"
	.text
	.type	validate_insn_alternatives, @function
validate_insn_alternatives:
.LFB25:
	.loc 1 756 0
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
	.loc 1 757 0
	movl	$0, -12(%ebp)
	.loc 1 761 0
	movl	$0, -8(%ebp)
	jmp	.L180
.L181:
	.loc 1 762 0
	movl	-8(%ebp), %eax
	movl	8(%ebp), %ecx
	leal	0(,%eax,4), %edx
	leal	0(,%edx,8), %eax
	subl	%edx, %eax
	addl	%ecx, %eax
	addl	$48, %eax
	movzbl	16(%eax), %eax
	testb	%al, %al
	je	.L182
	.loc 1 764 0
	cmpl	$0, -12(%ebp)
	jne	.L184
	.loc 1 765 0
	movl	-8(%ebp), %eax
	movl	8(%ebp), %ecx
	leal	0(,%eax,4), %edx
	leal	0(,%edx,8), %eax
	subl	%edx, %eax
	addl	%ecx, %eax
	addl	$48, %eax
	movzbl	16(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -12(%ebp)
	jmp	.L182
.L184:
	.loc 1 766 0
	movl	-8(%ebp), %eax
	movl	8(%ebp), %ecx
	leal	0(,%eax,4), %edx
	leal	0(,%edx,8), %eax
	subl	%edx, %eax
	addl	%ecx, %eax
	addl	$48, %eax
	movzbl	16(%eax), %eax
	movzbl	%al, %eax
	cmpl	-12(%ebp), %eax
	je	.L182
	.loc 1 768 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC63@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	message_with_line@PLT
	.loc 1 771 0
	movl	have_error@GOT(%ebx), %eax
	movl	$1, (%eax)
.L182:
	.loc 1 761 0
	addl	$1, -8(%ebp)
.L180:
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	cmpl	-8(%ebp), %eax
	jg	.L181
	.loc 1 776 0
	movl	8(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 32(%edx)
	.loc 1 777 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE25:
	.size	validate_insn_alternatives, .-validate_insn_alternatives
	.section	.rodata
.LC64:
	.string	"missing operand %d"
	.text
	.type	validate_insn_operands, @function
validate_insn_operands:
.LFB26:
	.loc 1 784 0
	pushl	%ebp
.LCFI46:
	movl	%esp, %ebp
.LCFI47:
	pushl	%ebx
.LCFI48:
	subl	$36, %esp
.LCFI49:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 787 0
	movl	$0, -8(%ebp)
	jmp	.L190
.L191:
	.loc 1 788 0
	movl	-8(%ebp), %eax
	movl	8(%ebp), %ecx
	leal	0(,%eax,4), %edx
	leal	0(,%edx,8), %eax
	subl	%edx, %eax
	addl	%ecx, %eax
	addl	$48, %eax
	movzbl	20(%eax), %eax
	testb	%al, %al
	jne	.L192
	.loc 1 790 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC64@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	message_with_line@PLT
	.loc 1 791 0
	movl	have_error@GOT(%ebx), %eax
	movl	$1, (%eax)
.L192:
	.loc 1 787 0
	addl	$1, -8(%ebp)
.L190:
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	cmpl	-8(%ebp), %eax
	jg	.L191
	.loc 1 793 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE26:
	.size	validate_insn_operands, .-validate_insn_operands
	.type	gen_insn, @function
gen_insn:
.LFB27:
	.loc 1 803 0
	pushl	%ebp
.LCFI50:
	movl	%esp, %ebp
.LCFI51:
	pushl	%ebx
.LCFI52:
	subl	$36, %esp
.LCFI53:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 804 0
	movl	$1164, (%esp)
	call	xmalloc@PLT
	movl	%eax, -12(%ebp)
	.loc 1 807 0
	movl	next_code_number@GOTOFF(%ebx), %edx
	movl	-12(%ebp), %eax
	movl	%edx, 12(%eax)
	.loc 1 808 0
	movl	next_index_number@GOTOFF(%ebx), %edx
	movl	-12(%ebp), %eax
	movl	%edx, 16(%eax)
	.loc 1 809 0
	movl	-12(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, 20(%edx)
	.loc 1 810 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L197
	.loc 1 811 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%edx, 4(%eax)
	jmp	.L199
.L197:
	.loc 1 813 0
	movl	-12(%ebp), %eax
	movl	$0, 4(%eax)
.L199:
	.loc 1 817 0
	movl	-12(%ebp), %eax
	movl	$0, (%eax)
	.loc 1 818 0
	movl	idata_end@GOTOFF(%ebx), %edx
	movl	-12(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 819 0
	movl	-12(%ebp), %eax
	movl	%eax, idata_end@GOTOFF(%ebx)
	.loc 1 821 0
	movl	$-1, max_opno@GOTOFF(%ebx)
	.loc 1 822 0
	movl	$0, num_dups@GOTOFF(%ebx)
	.loc 1 823 0
	movl	-12(%ebp), %eax
	addl	$44, %eax
	movl	%eax, %edx
	movl	$1120, %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	%edx, (%esp)
	call	memset@PLT
	.loc 1 825 0
	movl	$0, -8(%ebp)
	jmp	.L200
.L201:
	.loc 1 826 0
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	-8(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	scan_operands
	.loc 1 825 0
	addl	$1, -8(%ebp)
.L200:
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	(%eax), %eax
	cmpl	-8(%ebp), %eax
	jg	.L201
	.loc 1 828 0
	movl	max_opno@GOTOFF(%ebx), %eax
	leal	1(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%edx, 24(%eax)
	.loc 1 829 0
	movl	num_dups@GOTOFF(%ebx), %edx
	movl	-12(%ebp), %eax
	movl	%edx, 28(%eax)
	.loc 1 831 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	validate_insn_operands
	.loc 1 832 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	validate_insn_alternatives
	.loc 1 833 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	place_operands
	.loc 1 834 0
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	process_template
	.loc 1 835 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE27:
	.size	gen_insn, .-gen_insn
	.type	gen_peephole, @function
gen_peephole:
.LFB28:
	.loc 1 845 0
	pushl	%ebp
.LCFI54:
	movl	%esp, %ebp
.LCFI55:
	pushl	%ebx
.LCFI56:
	subl	$36, %esp
.LCFI57:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 846 0
	movl	$1164, (%esp)
	call	xmalloc@PLT
	movl	%eax, -12(%ebp)
	.loc 1 849 0
	movl	next_code_number@GOTOFF(%ebx), %edx
	movl	-12(%ebp), %eax
	movl	%edx, 12(%eax)
	.loc 1 850 0
	movl	next_index_number@GOTOFF(%ebx), %edx
	movl	-12(%ebp), %eax
	movl	%edx, 16(%eax)
	.loc 1 851 0
	movl	-12(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, 20(%edx)
	.loc 1 852 0
	movl	-12(%ebp), %eax
	movl	$0, 4(%eax)
	.loc 1 856 0
	movl	-12(%ebp), %eax
	movl	$0, (%eax)
	.loc 1 857 0
	movl	idata_end@GOTOFF(%ebx), %edx
	movl	-12(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 858 0
	movl	-12(%ebp), %eax
	movl	%eax, idata_end@GOTOFF(%ebx)
	.loc 1 860 0
	movl	$-1, max_opno@GOTOFF(%ebx)
	.loc 1 861 0
	movl	$0, num_dups@GOTOFF(%ebx)
	.loc 1 862 0
	movl	-12(%ebp), %eax
	addl	$44, %eax
	movl	%eax, %edx
	movl	$1120, %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	%edx, (%esp)
	call	memset@PLT
	.loc 1 867 0
	movl	$0, -8(%ebp)
	jmp	.L205
.L206:
	.loc 1 868 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	-8(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	scan_operands
	.loc 1 867 0
	addl	$1, -8(%ebp)
.L205:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	cmpl	-8(%ebp), %eax
	jg	.L206
	.loc 1 870 0
	movl	max_opno@GOTOFF(%ebx), %eax
	leal	1(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%edx, 24(%eax)
	.loc 1 871 0
	movl	-12(%ebp), %eax
	movl	$0, 28(%eax)
	.loc 1 873 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	validate_insn_alternatives
	.loc 1 874 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	place_operands
	.loc 1 875 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	process_template
	.loc 1 876 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE28:
	.size	gen_peephole, .-gen_peephole
	.type	gen_expand, @function
gen_expand:
.LFB29:
	.loc 1 885 0
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
	.loc 1 886 0
	movl	$1164, (%esp)
	call	xmalloc@PLT
	movl	%eax, -12(%ebp)
	.loc 1 889 0
	movl	next_code_number@GOTOFF(%ebx), %edx
	movl	-12(%ebp), %eax
	movl	%edx, 12(%eax)
	.loc 1 890 0
	movl	next_index_number@GOTOFF(%ebx), %edx
	movl	-12(%ebp), %eax
	movl	%edx, 16(%eax)
	.loc 1 891 0
	movl	-12(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, 20(%edx)
	.loc 1 892 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L210
	.loc 1 893 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%edx, 4(%eax)
	jmp	.L212
.L210:
	.loc 1 895 0
	movl	-12(%ebp), %eax
	movl	$0, 4(%eax)
.L212:
	.loc 1 899 0
	movl	-12(%ebp), %eax
	movl	$0, (%eax)
	.loc 1 900 0
	movl	idata_end@GOTOFF(%ebx), %edx
	movl	-12(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 901 0
	movl	-12(%ebp), %eax
	movl	%eax, idata_end@GOTOFF(%ebx)
	.loc 1 903 0
	movl	$-1, max_opno@GOTOFF(%ebx)
	.loc 1 904 0
	movl	$0, num_dups@GOTOFF(%ebx)
	.loc 1 905 0
	movl	-12(%ebp), %eax
	addl	$44, %eax
	movl	%eax, %edx
	movl	$1120, %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	%edx, (%esp)
	call	memset@PLT
	.loc 1 910 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	.L213
	.loc 1 911 0
	movl	$0, -8(%ebp)
	jmp	.L215
.L216:
	.loc 1 912 0
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	-8(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	scan_operands
	.loc 1 911 0
	addl	$1, -8(%ebp)
.L215:
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	(%eax), %eax
	cmpl	-8(%ebp), %eax
	jg	.L216
.L213:
	.loc 1 914 0
	movl	max_opno@GOTOFF(%ebx), %eax
	leal	1(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%edx, 24(%eax)
	.loc 1 915 0
	movl	num_dups@GOTOFF(%ebx), %edx
	movl	-12(%ebp), %eax
	movl	%edx, 28(%eax)
	.loc 1 916 0
	movl	-12(%ebp), %eax
	movl	$0, 8(%eax)
	.loc 1 917 0
	movl	-12(%ebp), %eax
	movl	$0, 40(%eax)
	.loc 1 919 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	validate_insn_alternatives
	.loc 1 920 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	place_operands
	.loc 1 921 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE29:
	.size	gen_expand, .-gen_expand
	.type	gen_split, @function
gen_split:
.LFB30:
	.loc 1 930 0
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
	.loc 1 931 0
	movl	$1164, (%esp)
	call	xmalloc@PLT
	movl	%eax, -12(%ebp)
	.loc 1 934 0
	movl	next_code_number@GOTOFF(%ebx), %edx
	movl	-12(%ebp), %eax
	movl	%edx, 12(%eax)
	.loc 1 935 0
	movl	next_index_number@GOTOFF(%ebx), %edx
	movl	-12(%ebp), %eax
	movl	%edx, 16(%eax)
	.loc 1 936 0
	movl	-12(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, 20(%edx)
	.loc 1 937 0
	movl	-12(%ebp), %eax
	movl	$0, 4(%eax)
	.loc 1 941 0
	movl	-12(%ebp), %eax
	movl	$0, (%eax)
	.loc 1 942 0
	movl	idata_end@GOTOFF(%ebx), %edx
	movl	-12(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 943 0
	movl	-12(%ebp), %eax
	movl	%eax, idata_end@GOTOFF(%ebx)
	.loc 1 945 0
	movl	$-1, max_opno@GOTOFF(%ebx)
	.loc 1 946 0
	movl	$0, num_dups@GOTOFF(%ebx)
	.loc 1 947 0
	movl	-12(%ebp), %eax
	addl	$44, %eax
	movl	%eax, %edx
	movl	$1120, %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	%edx, (%esp)
	call	memset@PLT
	.loc 1 952 0
	movl	$0, -8(%ebp)
	jmp	.L219
.L220:
	.loc 1 953 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	-8(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	scan_operands
	.loc 1 952 0
	addl	$1, -8(%ebp)
.L219:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	cmpl	-8(%ebp), %eax
	jg	.L220
	.loc 1 955 0
	movl	max_opno@GOTOFF(%ebx), %eax
	leal	1(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%edx, 24(%eax)
	.loc 1 956 0
	movl	-12(%ebp), %eax
	movl	$0, 28(%eax)
	.loc 1 957 0
	movl	-12(%ebp), %eax
	movl	$0, 32(%eax)
	.loc 1 958 0
	movl	-12(%ebp), %eax
	movl	$0, 8(%eax)
	.loc 1 959 0
	movl	-12(%ebp), %eax
	movl	$0, 40(%eax)
	.loc 1 961 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	place_operands
	.loc 1 962 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE30:
	.size	gen_split, .-gen_split
	.section	.rodata
.LC65:
	.string	"genoutput"
.LC66:
	.string	"no input file name"
	.text
.globl main
	.type	main, @function
main:
.LFB31:
	.loc 1 970 0
	leal	4(%esp), %ecx
.LCFI66:
	andl	$-16, %esp
	pushl	-4(%ecx)
.LCFI67:
	pushl	%ebp
.LCFI68:
	movl	%esp, %ebp
.LCFI69:
	pushl	%ebx
.LCFI70:
	pushl	%ecx
.LCFI71:
	subl	$48, %esp
.LCFI72:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	%ecx, -36(%ebp)
	.loc 1 973 0
	movl	progname@GOT(%ebx), %edx
	leal	.LC65@GOTOFF(%ebx), %eax
	movl	%eax, (%edx)
	.loc 1 975 0
	movl	-36(%ebp), %eax
	cmpl	$1, (%eax)
	jg	.L224
	.loc 1 976 0
	leal	.LC66@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fatal@PLT
.L224:
	.loc 1 978 0
	movl	-36(%ebp), %edx
	movl	4(%edx), %eax
	movl	%eax, 4(%esp)
	movl	-36(%ebp), %edx
	movl	(%edx), %eax
	movl	%eax, (%esp)
	call	init_md_reader_args@PLT
	testl	%eax, %eax
	je	.L226
	.loc 1 979 0
	movl	$1, -32(%ebp)
	jmp	.L228
.L226:
	.loc 1 981 0
	call	output_prologue
	.loc 1 982 0
	movl	$0, next_code_number@GOTOFF(%ebx)
	.loc 1 983 0
	movl	$0, next_index_number@GOTOFF(%ebx)
.L229:
.LBB2:
	.loc 1 991 0
	leal	next_code_number@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	read_md_rtx@PLT
	movl	%eax, -12(%ebp)
	.loc 1 992 0
	cmpl	$0, -12(%ebp)
	je	.L230
	.loc 1 995 0
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$13, %ax
	jne	.L232
	.loc 1 996 0
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_insn
.L232:
	.loc 1 997 0
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$14, %ax
	jne	.L234
	.loc 1 998 0
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_peephole
.L234:
	.loc 1 999 0
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$19, %ax
	jne	.L236
	.loc 1 1000 0
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_expand
.L236:
	.loc 1 1001 0
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$15, %ax
	je	.L238
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$17, %ax
	jne	.L240
.L238:
	.loc 1 1003 0
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_split
.L240:
	.loc 1 1004 0
	movl	next_index_number@GOTOFF(%ebx), %eax
	addl	$1, %eax
	movl	%eax, next_index_number@GOTOFF(%ebx)
	.loc 1 1005 0
	jmp	.L229
.L230:
.LBE2:
	.loc 1 1007 0
	leal	.LC24@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 1008 0
	call	output_predicate_decls
	.loc 1 1009 0
	call	output_operand_data
	.loc 1 1010 0
	call	output_insn_data
	.loc 1 1011 0
	call	output_get_insn_name
	.loc 1 1013 0
	movl	stdout@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	fflush@PLT
	.loc 1 1014 0
	movl	stdout@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	ferror@PLT
	testl	%eax, %eax
	jne	.L241
	movl	have_error@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L243
.L241:
	movl	$1, -28(%ebp)
	jmp	.L244
.L243:
	movl	$0, -28(%ebp)
.L244:
	movl	-28(%ebp), %eax
	movl	%eax, -32(%ebp)
.L228:
	movl	-32(%ebp), %eax
	.loc 1 1016 0
	addl	$48, %esp
	popl	%ecx
	popl	%ebx
	popl	%ebp
	leal	-4(%ecx), %esp
	ret
.LFE31:
	.size	main, .-main
	.type	n_occurrences, @function
n_occurrences:
.LFB32:
	.loc 1 1025 0
	pushl	%ebp
.LCFI73:
	movl	%esp, %ebp
.LCFI74:
	subl	$20, %esp
.LCFI75:
	.loc 1 1026 0
	movl	$0, -4(%ebp)
	.loc 1 1028 0
	cmpl	$0, 12(%ebp)
	je	.L247
	movl	12(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L251
.L247:
	.loc 1 1029 0
	movl	$-1, -20(%ebp)
	jmp	.L250
.L252:
	.loc 1 1032 0
	movl	12(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	cmpl	8(%ebp), %eax
	sete	%al
	movzbl	%al, %eax
	addl	%eax, -4(%ebp)
	addl	$1, 12(%ebp)
.L251:
	.loc 1 1031 0
	movl	12(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L252
	.loc 1 1034 0
	movl	-4(%ebp), %eax
	movl	%eax, -20(%ebp)
.L250:
	movl	-20(%ebp), %eax
	.loc 1 1035 0
	leave
	ret
.LFE32:
	.size	n_occurrences, .-n_occurrences
	.type	strip_whitespace, @function
strip_whitespace:
.LFB33:
	.loc 1 1043 0
	pushl	%ebp
.LCFI76:
	movl	%esp, %ebp
.LCFI77:
	pushl	%edi
.LCFI78:
	pushl	%ebx
.LCFI79:
	subl	$32, %esp
.LCFI80:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1047 0
	cmpl	$0, 8(%ebp)
	jne	.L256
	.loc 1 1048 0
	movl	$0, -28(%ebp)
	jmp	.L258
.L256:
	.loc 1 1050 0
	movl	8(%ebp), %eax
	movl	$-1, %ecx
	movl	%eax, -32(%ebp)
	movl	$0, %eax
	cld
	movl	-32(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	addl	$1, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, -16(%ebp)
	movl	-16(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 1051 0
	jmp	.L264
.L260:
	.loc 1 1052 0
	movzbl	-9(%ebp), %edx
	movl	_sch_istable@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	andl	$64, %eax
	testl	%eax, %eax
	jne	.L259
	.loc 1 1053 0
	movl	-20(%ebp), %edx
	movzbl	-9(%ebp), %eax
	movb	%al, (%edx)
	addl	$1, -20(%ebp)
.L259:
.L264:
	.loc 1 1051 0
	movl	8(%ebp), %eax
	movzbl	(%eax), %eax
	movb	%al, -9(%ebp)
	cmpb	$0, -9(%ebp)
	setne	%al
	addl	$1, 8(%ebp)
	testb	%al, %al
	jne	.L260
	.loc 1 1055 0
	movl	-20(%ebp), %eax
	movb	$0, (%eax)
	.loc 1 1056 0
	movl	-16(%ebp), %eax
	movl	%eax, -28(%ebp)
.L258:
	movl	-28(%ebp), %eax
	.loc 1 1057 0
	addl	$32, %esp
	popl	%ebx
	popl	%edi
	popl	%ebp
	ret
.LFE33:
	.size	strip_whitespace, .-strip_whitespace
	.local	next_code_number
	.comm	next_code_number,4,4
	.local	next_index_number
	.comm	next_index_number,4,4
	.local	idata
	.comm	idata,4,4
	.local	max_opno
	.comm	max_opno,4,4
	.local	num_dups
	.comm	num_dups,4,4
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
	.long	.LCFI33-.LCFI31
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
	.long	.LCFI34-.LFB23
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
	.long	.LCFI41-.LCFI39
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
	.byte	0xc
	.uleb128 0x1
	.uleb128 0x0
	.byte	0x9
	.uleb128 0x4
	.uleb128 0x1
	.byte	0x4
	.long	.LCFI67-.LCFI66
	.byte	0xc
	.uleb128 0x4
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI68-.LCFI67
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI69-.LCFI68
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI71-.LCFI69
	.byte	0x84
	.uleb128 0x4
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
	.long	.LCFI73-.LFB32
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI74-.LCFI73
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE34:
.LSFDE36:
	.long	.LEFDE36-.LASFDE36
.LASFDE36:
	.long	.Lframe0
	.long	.LFB33
	.long	.LFE33-.LFB33
	.byte	0x4
	.long	.LCFI76-.LFB33
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI77-.LCFI76
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI80-.LCFI77
	.byte	0x83
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE36:
	.file 2 "../../../kgccfe/gnu/machmode.h"
	.file 3 "../../../kgccfe/gnu/MIPS/hconfig.h"
	.file 4 "../../../kgccfe/gnu/rtl.h"
	.file 5 "/usr/include/stdio.h"
	.file 6 "/usr/include/libio.h"
	.file 7 "/usr/include/bits/types.h"
	.file 8 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h"
	.file 9 "../../../include/gnu/safe-ctype.h"
	.file 10 "../../../kgccfe/gnu/errors.h"
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
	.value	0x1
	.byte	0x51
	.long	.LCFI67-.Ltext0
	.long	.LCFI68-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI68-.Ltext0
	.long	.LCFI69-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI69-.Ltext0
	.long	.LFE31-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST17:
	.long	.LFB32-.Ltext0
	.long	.LCFI73-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI73-.Ltext0
	.long	.LCFI74-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI74-.Ltext0
	.long	.LFE32-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST18:
	.long	.LFB33-.Ltext0
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
	.long	.LFE33-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
	.section	.debug_info
	.long	0x1dfc
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.Ldebug_line0
	.long	.Letext0
	.long	.Ltext0
	.string	"GNU C 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.byte	0x1
	.string	"../../../kgccfe/gnu/genoutput.c"
	.string	"/usa/handong/simplnano/cmplr-open64-merge/targia32_sl1/gccfe/gnu"
	.uleb128 0x2
	.string	"rtx"
	.byte	0x3
	.byte	0xc
	.long	0xa9
	.uleb128 0x3
	.byte	0x4
	.long	0xaf
	.uleb128 0x4
	.long	0x19f
	.string	"rtx_def"
	.byte	0xc
	.byte	0x3
	.byte	0xb
	.uleb128 0x5
	.string	"code"
	.byte	0x4
	.byte	0x8a
	.long	0x849
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"mode"
	.byte	0x4
	.byte	0x8d
	.long	0x600
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"jump"
	.byte	0x4
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
	.byte	0x4
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
	.byte	0x4
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
	.byte	0x4
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
	.byte	0x4
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
	.byte	0x4
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
	.byte	0x4
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
	.byte	0x4
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
	.byte	0x4
	.byte	0xd4
	.long	0x12a5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"rtvec"
	.byte	0x3
	.byte	0xe
	.long	0x1ac
	.uleb128 0x3
	.byte	0x4
	.long	0x1b2
	.uleb128 0x4
	.long	0x1e7
	.string	"rtvec_def"
	.byte	0x8
	.byte	0x3
	.byte	0xd
	.uleb128 0x6
	.string	"num_elem"
	.byte	0x4
	.byte	0xf8
	.long	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"elem"
	.byte	0x4
	.byte	0xf9
	.long	0x12b5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"tree"
	.byte	0x3
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
	.byte	0x2
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
	.byte	0x4
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
	.long	0x10f2
	.byte	0x4
	.byte	0x4
	.byte	0x4d
	.uleb128 0x5
	.string	"min_align"
	.byte	0x4
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
	.byte	0x4
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
	.byte	0x4
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
	.byte	0x4
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
	.byte	0x4
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
	.byte	0x4
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
	.byte	0x4
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
	.byte	0x4
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
	.byte	0x4
	.byte	0x5e
	.long	0x1018
	.uleb128 0xc
	.long	0x1169
	.long	.LASF2
	.byte	0x18
	.byte	0x4
	.byte	0x68
	.uleb128 0x6
	.string	"alias"
	.byte	0x4
	.byte	0x69
	.long	0x293
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"expr"
	.byte	0x4
	.byte	0x6a
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"offset"
	.byte	0x4
	.byte	0x6b
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"size"
	.byte	0x4
	.byte	0x6c
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"align"
	.byte	0x4
	.byte	0x6d
	.long	0x21f
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x14
	.long	.LASF2
	.byte	0x4
	.byte	0x6e
	.long	0x110d
	.uleb128 0x15
	.long	0x1246
	.string	"rtunion_def"
	.byte	0x8
	.byte	0x4
	.byte	0x73
	.uleb128 0x16
	.string	"rtwint"
	.byte	0x4
	.byte	0x74
	.long	0x293
	.uleb128 0x16
	.string	"rtint"
	.byte	0x4
	.byte	0x75
	.long	0x218
	.uleb128 0x16
	.string	"rtuint"
	.byte	0x4
	.byte	0x76
	.long	0x21f
	.uleb128 0x16
	.string	"rtstr"
	.byte	0x4
	.byte	0x77
	.long	0x205
	.uleb128 0x16
	.string	"rtx"
	.byte	0x4
	.byte	0x78
	.long	0x9e
	.uleb128 0x16
	.string	"rtvec"
	.byte	0x4
	.byte	0x79
	.long	0x19f
	.uleb128 0x16
	.string	"rttype"
	.byte	0x4
	.byte	0x7a
	.long	0x600
	.uleb128 0x16
	.string	"rt_addr_diff_vec_flags"
	.byte	0x4
	.byte	0x7b
	.long	0x10f2
	.uleb128 0x16
	.string	"rt_cselib"
	.byte	0x4
	.byte	0x7c
	.long	0x125a
	.uleb128 0x16
	.string	"rtbit"
	.byte	0x4
	.byte	0x7d
	.long	0x1272
	.uleb128 0x16
	.string	"rttree"
	.byte	0x4
	.byte	0x7e
	.long	0x1e7
	.uleb128 0x16
	.string	"bb"
	.byte	0x4
	.byte	0x7f
	.long	0x128a
	.uleb128 0x16
	.string	"rtmem"
	.byte	0x4
	.byte	0x80
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
	.byte	0x4
	.byte	0x82
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
	.uleb128 0x4
	.long	0x1387
	.string	"operand_data"
	.byte	0x1c
	.byte	0x1
	.byte	0x7f
	.uleb128 0x6
	.string	"next"
	.byte	0x1
	.byte	0x80
	.long	0x1387
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"index"
	.byte	0x1
	.byte	0x81
	.long	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x18
	.long	.LASF3
	.byte	0x1
	.byte	0x82
	.long	0x205
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"constraint"
	.byte	0x1
	.byte	0x83
	.long	0x205
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"mode"
	.byte	0x1
	.byte	0x84
	.long	0x600
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x18
	.long	.LASF4
	.byte	0x1
	.byte	0x85
	.long	0x23b
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"address_p"
	.byte	0x1
	.byte	0x86
	.long	0x210
	.byte	0x2
	.byte	0x23
	.uleb128 0x15
	.uleb128 0x6
	.string	"strict_low"
	.byte	0x1
	.byte	0x87
	.long	0x210
	.byte	0x2
	.byte	0x23
	.uleb128 0x16
	.uleb128 0x6
	.string	"eliminable"
	.byte	0x1
	.byte	0x88
	.long	0x210
	.byte	0x2
	.byte	0x23
	.uleb128 0x17
	.uleb128 0x6
	.string	"seen"
	.byte	0x1
	.byte	0x89
	.long	0x210
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x12c5
	.uleb128 0x19
	.long	0x147a
	.string	"data"
	.value	0x48c
	.byte	0x1
	.byte	0xa1
	.uleb128 0x6
	.string	"next"
	.byte	0x1
	.byte	0xa2
	.long	0x147a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"name"
	.byte	0x1
	.byte	0xa3
	.long	0x205
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x18
	.long	.LASF5
	.byte	0x1
	.byte	0xa4
	.long	0x205
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"code_number"
	.byte	0x1
	.byte	0xa5
	.long	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"index_number"
	.byte	0x1
	.byte	0xa6
	.long	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x18
	.long	.LASF6
	.byte	0x1
	.byte	0xa7
	.long	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"n_operands"
	.byte	0x1
	.byte	0xa8
	.long	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"n_dups"
	.byte	0x1
	.byte	0xa9
	.long	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x18
	.long	.LASF4
	.byte	0x1
	.byte	0xaa
	.long	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.string	"operand_number"
	.byte	0x1
	.byte	0xab
	.long	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.string	"output_format"
	.byte	0x1
	.byte	0xac
	.long	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x6
	.string	"operand"
	.byte	0x1
	.byte	0xad
	.long	0x1480
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x138d
	.uleb128 0xf
	.long	0x1490
	.long	0x12c5
	.uleb128 0x10
	.long	0x226
	.byte	0x27
	.byte	0x0
	.uleb128 0x1a
	.long	0x14fa
	.byte	0x1
	.string	"get_insn_name"
	.byte	0x1
	.byte	0xc8
	.byte	0x1
	.long	0x205
	.long	.LFB15
	.long	.LFE15
	.long	.LLST0
	.uleb128 0x1b
	.string	"index"
	.byte	0x1
	.byte	0xc7
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1c
	.string	"i"
	.byte	0x1
	.byte	0xcb
	.long	0x147a
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1c
	.string	"last_named"
	.byte	0x1
	.byte	0xcb
	.long	0x147a
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x1c
	.string	"buf"
	.byte	0x1
	.byte	0xc9
	.long	0x1c0e
	.byte	0x5
	.byte	0x3
	.long	buf.6718
	.byte	0x0
	.uleb128 0x1d
	.string	"output_prologue"
	.byte	0x1
	.byte	0xde
	.byte	0x1
	.long	.LFB16
	.long	.LFE16
	.long	.LLST1
	.uleb128 0xc
	.long	0x1545
	.long	.LASF3
	.byte	0x8
	.byte	0x1
	.byte	0xfd
	.uleb128 0x6
	.string	"name"
	.byte	0x1
	.byte	0xfd
	.long	0x205
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"next"
	.byte	0x1
	.byte	0xfd
	.long	0x1545
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x151a
	.uleb128 0x1e
	.long	0x15b8
	.string	"output_predicate_decls"
	.byte	0x1
	.value	0x101
	.byte	0x1
	.long	.LFB17
	.long	.LFE17
	.long	.LLST2
	.uleb128 0x1f
	.string	"predicates"
	.byte	0x1
	.value	0x102
	.long	0x1545
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1f
	.string	"d"
	.byte	0x1
	.value	0x103
	.long	0x1387
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1f
	.string	"p"
	.byte	0x1
	.value	0x104
	.long	0x1545
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1f
	.string	"next"
	.byte	0x1
	.value	0x104
	.long	0x1545
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x1e
	.long	0x15ef
	.string	"output_operand_data"
	.byte	0x1
	.value	0x122
	.byte	0x1
	.long	.LFB18
	.long	.LFE18
	.long	.LLST3
	.uleb128 0x1f
	.string	"d"
	.byte	0x1
	.value	0x123
	.long	0x1387
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x1e
	.long	0x16a6
	.string	"output_insn_data"
	.byte	0x1
	.value	0x13d
	.byte	0x1
	.long	.LFB19
	.long	.LFE19
	.long	.LLST4
	.uleb128 0x1f
	.string	"d"
	.byte	0x1
	.value	0x13e
	.long	0x147a
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1f
	.string	"name_offset"
	.byte	0x1
	.value	0x13f
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1f
	.string	"next_name_offset"
	.byte	0x1
	.value	0x140
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1f
	.string	"last_name"
	.byte	0x1
	.value	0x141
	.long	0x205
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1f
	.string	"next_name"
	.byte	0x1
	.value	0x142
	.long	0x205
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1f
	.string	"n"
	.byte	0x1
	.value	0x143
	.long	0x147a
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x20
	.string	"__FUNCTION__"
	.long	0x1c09
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.6820
	.byte	0x0
	.uleb128 0x21
	.string	"output_get_insn_name"
	.byte	0x1
	.value	0x1a7
	.byte	0x1
	.long	.LFB20
	.long	.LFE20
	.long	.LLST5
	.uleb128 0x1e
	.long	0x1782
	.string	"scan_operands"
	.byte	0x1
	.value	0x1c1
	.byte	0x1
	.long	.LFB21
	.long	.LFE21
	.long	.LLST6
	.uleb128 0x22
	.string	"d"
	.byte	0x1
	.value	0x1bd
	.long	0x147a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x22
	.string	"part"
	.byte	0x1
	.value	0x1be
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x22
	.string	"this_address_p"
	.byte	0x1
	.value	0x1bf
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x22
	.string	"this_strict_low"
	.byte	0x1
	.value	0x1c0
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x1f
	.string	"i"
	.byte	0x1
	.value	0x1c2
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1f
	.string	"j"
	.byte	0x1
	.value	0x1c2
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1f
	.string	"format_ptr"
	.byte	0x1
	.value	0x1c3
	.long	0x205
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1f
	.string	"opno"
	.byte	0x1
	.value	0x1c4
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x23
	.long	0x17e5
	.string	"compare_operands"
	.byte	0x1
	.value	0x24b
	.byte	0x1
	.long	0x218
	.long	.LFB22
	.long	.LFE22
	.long	.LLST7
	.uleb128 0x22
	.string	"d0"
	.byte	0x1
	.value	0x24a
	.long	0x1387
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x22
	.string	"d1"
	.byte	0x1
	.value	0x24a
	.long	0x1387
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1f
	.string	"p0"
	.byte	0x1
	.value	0x24c
	.long	0x205
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1f
	.string	"p1"
	.byte	0x1
	.value	0x24c
	.long	0x205
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x1e
	.long	0x186a
	.string	"place_operands"
	.byte	0x1
	.value	0x272
	.byte	0x1
	.long	.LFB23
	.long	.LFE23
	.long	.LLST8
	.uleb128 0x22
	.string	"d"
	.byte	0x1
	.value	0x271
	.long	0x147a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1f
	.string	"od"
	.byte	0x1
	.value	0x273
	.long	0x1387
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1f
	.string	"od2"
	.byte	0x1
	.value	0x273
	.long	0x1387
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1f
	.string	"i"
	.byte	0x1
	.value	0x274
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x24
	.string	"full_match"
	.byte	0x1
	.value	0x29c
	.long	.L149
	.uleb128 0x24
	.string	"partial_match"
	.byte	0x1
	.value	0x290
	.long	.L151
	.byte	0x0
	.uleb128 0x1e
	.long	0x18c8
	.string	"process_template"
	.byte	0x1
	.value	0x2aa
	.byte	0x1
	.long	.LFB24
	.long	.LFE24
	.long	.LLST9
	.uleb128 0x22
	.string	"d"
	.byte	0x1
	.value	0x2a8
	.long	0x147a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x25
	.long	.LASF5
	.byte	0x1
	.value	0x2a9
	.long	0x205
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1f
	.string	"cp"
	.byte	0x1
	.value	0x2ab
	.long	0x205
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1f
	.string	"i"
	.byte	0x1
	.value	0x2ac
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x1e
	.long	0x1924
	.string	"validate_insn_alternatives"
	.byte	0x1
	.value	0x2f4
	.byte	0x1
	.long	.LFB25
	.long	.LFE25
	.long	.LLST10
	.uleb128 0x22
	.string	"d"
	.byte	0x1
	.value	0x2f3
	.long	0x147a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1f
	.string	"n"
	.byte	0x1
	.value	0x2f5
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1f
	.string	"start"
	.byte	0x1
	.value	0x2f5
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x1e
	.long	0x196b
	.string	"validate_insn_operands"
	.byte	0x1
	.value	0x310
	.byte	0x1
	.long	.LFB26
	.long	.LFE26
	.long	.LLST11
	.uleb128 0x22
	.string	"d"
	.byte	0x1
	.value	0x30f
	.long	0x147a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1f
	.string	"i"
	.byte	0x1
	.value	0x311
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x1e
	.long	0x19c3
	.string	"gen_insn"
	.byte	0x1
	.value	0x323
	.byte	0x1
	.long	.LFB27
	.long	.LFE27
	.long	.LLST12
	.uleb128 0x22
	.string	"insn"
	.byte	0x1
	.value	0x321
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x25
	.long	.LASF6
	.byte	0x1
	.value	0x322
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1f
	.string	"d"
	.byte	0x1
	.value	0x324
	.long	0x147a
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1f
	.string	"i"
	.byte	0x1
	.value	0x325
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x1e
	.long	0x1a1f
	.string	"gen_peephole"
	.byte	0x1
	.value	0x34d
	.byte	0x1
	.long	.LFB28
	.long	.LFE28
	.long	.LLST13
	.uleb128 0x22
	.string	"peep"
	.byte	0x1
	.value	0x34b
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x25
	.long	.LASF6
	.byte	0x1
	.value	0x34c
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1f
	.string	"d"
	.byte	0x1
	.value	0x34e
	.long	0x147a
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1f
	.string	"i"
	.byte	0x1
	.value	0x34f
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x1e
	.long	0x1a79
	.string	"gen_expand"
	.byte	0x1
	.value	0x375
	.byte	0x1
	.long	.LFB29
	.long	.LFE29
	.long	.LLST14
	.uleb128 0x22
	.string	"insn"
	.byte	0x1
	.value	0x373
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x25
	.long	.LASF6
	.byte	0x1
	.value	0x374
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1f
	.string	"d"
	.byte	0x1
	.value	0x376
	.long	0x147a
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1f
	.string	"i"
	.byte	0x1
	.value	0x377
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x1e
	.long	0x1ad3
	.string	"gen_split"
	.byte	0x1
	.value	0x3a2
	.byte	0x1
	.long	.LFB30
	.long	.LFE30
	.long	.LLST15
	.uleb128 0x22
	.string	"split"
	.byte	0x1
	.value	0x3a0
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x25
	.long	.LASF6
	.byte	0x1
	.value	0x3a1
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1f
	.string	"d"
	.byte	0x1
	.value	0x3a3
	.long	0x147a
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1f
	.string	"i"
	.byte	0x1
	.value	0x3a4
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x26
	.long	0x1b44
	.byte	0x1
	.string	"main"
	.byte	0x1
	.value	0x3ca
	.byte	0x1
	.long	0x218
	.long	.LFB31
	.long	.LFE31
	.long	.LLST16
	.uleb128 0x22
	.string	"argc"
	.byte	0x1
	.value	0x3c8
	.long	0x218
	.byte	0x3
	.byte	0x75
	.sleb128 -36
	.byte	0x6
	.uleb128 0x22
	.string	"argv"
	.byte	0x1
	.value	0x3c9
	.long	0x1b44
	.byte	0x5
	.byte	0x75
	.sleb128 -36
	.byte	0x6
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1f
	.string	"desc"
	.byte	0x1
	.value	0x3cb
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x27
	.long	.LBB2
	.long	.LBE2
	.uleb128 0x1f
	.string	"line_no"
	.byte	0x1
	.value	0x3dd
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x2fc
	.uleb128 0x23
	.long	0x1b99
	.string	"n_occurrences"
	.byte	0x1
	.value	0x401
	.byte	0x1
	.long	0x218
	.long	.LFB32
	.long	.LFE32
	.long	.LLST17
	.uleb128 0x22
	.string	"c"
	.byte	0x1
	.value	0x3ff
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x22
	.string	"s"
	.byte	0x1
	.value	0x400
	.long	0x205
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1f
	.string	"n"
	.byte	0x1
	.value	0x402
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x23
	.long	0x1bf9
	.string	"strip_whitespace"
	.byte	0x1
	.value	0x413
	.byte	0x1
	.long	0x205
	.long	.LFB33
	.long	.LFE33
	.long	.LLST18
	.uleb128 0x22
	.string	"s"
	.byte	0x1
	.value	0x412
	.long	0x205
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1f
	.string	"p"
	.byte	0x1
	.value	0x414
	.long	0x2fc
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1f
	.string	"q"
	.byte	0x1
	.value	0x414
	.long	0x2fc
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1f
	.string	"ch"
	.byte	0x1
	.value	0x415
	.long	0x210
	.byte	0x2
	.byte	0x91
	.sleb128 -17
	.byte	0x0
	.uleb128 0xf
	.long	0x1c09
	.long	0x210
	.uleb128 0x10
	.long	0x226
	.byte	0x10
	.byte	0x0
	.uleb128 0x8
	.long	0x1bf9
	.uleb128 0xf
	.long	0x1c1e
	.long	0x210
	.uleb128 0x10
	.long	0x226
	.byte	0x63
	.byte	0x0
	.uleb128 0x1c
	.string	"next_code_number"
	.byte	0x1
	.byte	0x71
	.long	0x218
	.byte	0x5
	.byte	0x3
	.long	next_code_number
	.uleb128 0x1c
	.string	"next_index_number"
	.byte	0x1
	.byte	0x76
	.long	0x218
	.byte	0x5
	.byte	0x3
	.long	next_index_number
	.uleb128 0x1c
	.string	"next_operand_number"
	.byte	0x1
	.byte	0x7a
	.long	0x218
	.byte	0x5
	.byte	0x3
	.long	next_operand_number
	.uleb128 0x1c
	.string	"null_operand"
	.byte	0x1
	.byte	0x8e
	.long	0x12c5
	.byte	0x5
	.byte	0x3
	.long	null_operand
	.uleb128 0x1c
	.string	"odata"
	.byte	0x1
	.byte	0x93
	.long	0x1387
	.byte	0x5
	.byte	0x3
	.long	odata
	.uleb128 0x1c
	.string	"odata_end"
	.byte	0x1
	.byte	0x94
	.long	0x1cc0
	.byte	0x5
	.byte	0x3
	.long	odata_end
	.uleb128 0x3
	.byte	0x4
	.long	0x1387
	.uleb128 0x1c
	.string	"idata"
	.byte	0x1
	.byte	0xb2
	.long	0x147a
	.byte	0x5
	.byte	0x3
	.long	idata
	.uleb128 0x1c
	.string	"idata_end"
	.byte	0x1
	.byte	0xb2
	.long	0x1cf0
	.byte	0x5
	.byte	0x3
	.long	idata_end
	.uleb128 0x3
	.byte	0x4
	.long	0x147a
	.uleb128 0x1f
	.string	"max_opno"
	.byte	0x1
	.value	0x1b8
	.long	0x218
	.byte	0x5
	.byte	0x3
	.long	max_opno
	.uleb128 0x1f
	.string	"num_dups"
	.byte	0x1
	.value	0x1b9
	.long	0x218
	.byte	0x5
	.byte	0x3
	.long	num_dups
	.uleb128 0x28
	.string	"stdout"
	.byte	0x5
	.byte	0x8f
	.long	0x5d4
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.long	0x1d44
	.long	0x24c
	.uleb128 0x10
	.long	0x226
	.byte	0xff
	.byte	0x0
	.uleb128 0x28
	.string	"_sch_istable"
	.byte	0x9
	.byte	0x48
	.long	0x1d5a
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.long	0x1d34
	.uleb128 0xf
	.long	0x1d6f
	.long	0x205
	.uleb128 0x10
	.long	0x226
	.byte	0x35
	.byte	0x0
	.uleb128 0x28
	.string	"mode_name"
	.byte	0x2
	.byte	0x29
	.long	0x1d82
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.long	0x1d5f
	.uleb128 0xf
	.long	0x1d97
	.long	0x23b
	.uleb128 0x10
	.long	0x226
	.byte	0xa2
	.byte	0x0
	.uleb128 0x28
	.string	"rtx_length"
	.byte	0x4
	.byte	0x3c
	.long	0x1dab
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.long	0x1d87
	.uleb128 0xf
	.long	0x1dc0
	.long	0x205
	.uleb128 0x10
	.long	0x226
	.byte	0xa2
	.byte	0x0
	.uleb128 0x28
	.string	"rtx_format"
	.byte	0x4
	.byte	0x42
	.long	0x1dd4
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.long	0x1db0
	.uleb128 0x28
	.string	"have_error"
	.byte	0xa
	.byte	0x28
	.long	0x218
	.byte	0x1
	.byte	0x1
	.uleb128 0x28
	.string	"progname"
	.byte	0xa
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0x2e
	.byte	0x0
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0x2e
	.byte	0x0
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.long	0x1e00
	.long	0x1490
	.string	"get_insn_name"
	.long	0x1ad3
	.string	"main"
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
.LASF4:
	.string	"n_alternatives"
.LASF2:
	.string	"mem_attrs"
.LASF3:
	.string	"predicate"
.LASF5:
	.string	"template"
.LASF0:
	.string	"unsigned int"
.LASF6:
	.string	"lineno"
	.ident	"GCC: (GNU) 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.section	.text.__i686.get_pc_thunk.bx,"axG",@progbits,__i686.get_pc_thunk.bx,comdat
.globl __i686.get_pc_thunk.bx
	.hidden	__i686.get_pc_thunk.bx
	.type	__i686.get_pc_thunk.bx, @function
__i686.get_pc_thunk.bx:
	movl	(%esp), %ebx
	ret
	.section	.note.GNU-stack,"",@progbits
