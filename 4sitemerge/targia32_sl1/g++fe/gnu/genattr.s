	.file	"genattr.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
	.type	extend_range, @function
extend_range:
.LFB15:
	.file 1 "../../../kg++fe/gnu/genattr.c"
	.loc 1 64 0
	pushl	%ebp
.LCFI0:
	movl	%esp, %ebp
.LCFI1:
	.loc 1 65 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	cmpl	12(%ebp), %eax
	jle	.L2
	movl	8(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, (%edx)
.L2:
	.loc 1 66 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	16(%ebp), %eax
	jge	.L6
	movl	8(%ebp), %edx
	movl	16(%ebp), %eax
	movl	%eax, 4(%edx)
.L6:
	.loc 1 67 0
	popl	%ebp
	ret
.LFE15:
	.size	extend_range, .-extend_range
	.type	init_range, @function
init_range:
.LFB16:
	.loc 1 72 0
	pushl	%ebp
.LCFI2:
	movl	%esp, %ebp
.LCFI3:
	.loc 1 73 0
	movl	8(%ebp), %eax
	movl	$100000, (%eax)
	.loc 1 74 0
	movl	8(%ebp), %eax
	movl	$-1, 4(%eax)
	.loc 1 75 0
	popl	%ebp
	ret
.LFE16:
	.size	init_range, .-init_range
	.type	write_upcase, @function
write_upcase:
.LFB17:
	.loc 1 80 0
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
	.loc 1 81 0
	jmp	.L10
.L11:
	.loc 1 82 0
	movl	8(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edx
	movl	_sch_toupper@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, (%esp)
	call	putchar@PLT
	.loc 1 81 0
	addl	$1, 8(%ebp)
.L10:
	movl	8(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L11
	.loc 1 83 0
	addl	$4, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE17:
	.size	write_upcase, .-write_upcase
	.section	.rodata
.LC0:
	.string	"#define HAVE_ATTR_%s\n"
.LC1:
	.string	"void"
.LC2:
	.string	"rtx"
	.align 4
.LC3:
	.string	"extern int get_attr_%s PARAMS ((%s));\n"
.LC4:
	.string	"enum attr_%s {"
.LC5:
	.string	", "
.LC6:
	.string	"};\n"
	.align 4
.LC7:
	.string	"extern enum attr_%s get_attr_%s PARAMS ((%s));\n\n"
.LC8:
	.string	"length"
	.align 4
.LC9:
	.string	"extern void shorten_branches PARAMS ((rtx));\nextern int insn_default_length PARAMS ((rtx));\nextern int insn_variable_length_p PARAMS ((rtx));\nextern int insn_current_length PARAMS ((rtx));\n\n#include \"insn-addr.h\"\n"
	.text
	.type	gen_attr, @function
gen_attr:
.LFB18:
	.loc 1 88 0
	pushl	%ebp
.LCFI8:
	movl	%esp, %ebp
.LCFI9:
	pushl	%edi
.LCFI10:
	pushl	%esi
.LCFI11:
	pushl	%ebx
.LCFI12:
	subl	$60, %esp
.LCFI13:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 90 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -16(%ebp)
	.loc 1 92 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 95 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 96 0
	movl	-24(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L15
	.loc 1 97 0
	cmpl	$0, -16(%ebp)
	je	.L17
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, -36(%ebp)
	jmp	.L19
.L17:
	leal	.LC2@GOTOFF(%ebx), %edx
	movl	%edx, -36(%ebp)
.L19:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	-36(%ebp), %ecx
	movl	%ecx, 8(%esp)
	movl	%eax, 4(%esp)
	leal	.LC3@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	jmp	.L20
.L15:
	.loc 1 101 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC4@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 103 0
	jmp	.L34
.L22:
	.loc 1 105 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	write_upcase
	.loc 1 106 0
	movl	$95, (%esp)
	call	putchar@PLT
	.loc 1 107 0
	jmp	.L23
.L24:
	.loc 1 108 0
	movl	-20(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edx
	movl	_sch_toupper@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	addl	$1, -20(%ebp)
	movl	%eax, (%esp)
	call	putchar@PLT
.L23:
	.loc 1 107 0
	movl	-24(%ebp), %eax
	cmpl	%eax, -20(%ebp)
	jne	.L24
	.loc 1 109 0
	movl	-24(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$44, %al
	jne	.L21
	.loc 1 110 0
	movl	stdout@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$2, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC5@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite_unlocked@PLT
.L21:
.L34:
	.loc 1 103 0
	leal	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	scan_comma_elt@PLT
	movl	%eax, -20(%ebp)
	cmpl	$0, -20(%ebp)
	jne	.L22
	.loc 1 113 0
	movl	stdout@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$3, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC6@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite_unlocked@PLT
	.loc 1 114 0
	cmpl	$0, -16(%ebp)
	je	.L28
	leal	.LC1@GOTOFF(%ebx), %esi
	movl	%esi, -32(%ebp)
	jmp	.L30
.L28:
	leal	.LC2@GOTOFF(%ebx), %edi
	movl	%edi, -32(%ebp)
.L30:
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	-32(%ebp), %ecx
	movl	%ecx, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	leal	.LC7@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
.L20:
	.loc 1 120 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -40(%ebp)
	leal	.LC8@GOTOFF(%ebx), %esi
	movl	%esi, -44(%ebp)
	movl	$7, -48(%ebp)
	cld
	movl	-40(%ebp), %esi
	movl	-44(%ebp), %edi
	movl	-48(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L33
	.loc 1 122 0
	leal	.LC9@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
.L33:
	.loc 1 129 0
	addl	$60, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE18:
	.size	gen_attr, .-gen_attr
	.section	.rodata
.LC10:
	.string	"#define INSN_SCHEDULING\n"
	.align 4
.LC11:
	.string	"extern int result_ready_cost PARAMS ((rtx));"
	.align 4
.LC12:
	.string	"extern int function_units_used PARAMS ((rtx));\n"
	.align 4
.LC13:
	.string	"extern const struct function_unit_desc"
.LC14:
	.string	"{"
.LC15:
	.string	"  const char *const name;"
.LC16:
	.string	"  const int bitmask;"
.LC17:
	.string	"  const int multiplicity;"
.LC18:
	.string	"  const int simultaneity;"
.LC19:
	.string	"  const int default_cost;"
.LC20:
	.string	"  const int max_issue_delay;"
	.align 4
.LC21:
	.string	"  int (*const ready_cost_function) PARAMS ((rtx));"
	.align 4
.LC22:
	.string	"  int (*const conflict_cost_function) PARAMS ((rtx, rtx));"
.LC23:
	.string	"  const int max_blockage;"
	.align 4
.LC24:
	.string	"  unsigned int (*const blockage_range_function) PARAMS ((rtx));"
	.align 4
.LC25:
	.string	"  int (*const blockage_function) PARAMS ((rtx, rtx));"
.LC26:
	.string	"} function_units[];\n"
	.align 4
.LC27:
	.string	"#define FUNCTION_UNITS_SIZE %d\n"
.LC28:
	.string	"#define MIN_MULTIPLICITY %d\n"
.LC29:
	.string	"#define MAX_MULTIPLICITY %d\n"
.LC30:
	.string	"#define MIN_SIMULTANEITY %d\n"
.LC31:
	.string	"#define MAX_SIMULTANEITY %d\n"
.LC32:
	.string	"#define MIN_READY_COST %d\n"
.LC33:
	.string	"#define MAX_READY_COST %d\n"
.LC34:
	.string	"#define MIN_ISSUE_DELAY %d\n"
.LC35:
	.string	"#define MAX_ISSUE_DELAY %d\n"
.LC36:
	.string	"#define MIN_BLOCKAGE %d\n"
.LC37:
	.string	"#define MAX_BLOCKAGE %d\n"
.LC38:
	.string	"#define BLOCKAGE_BITS %d\n"
.LC39:
	.string	"#define INSN_QUEUE_SIZE %d\n"
	.text
	.type	write_units, @function
write_units:
.LFB19:
	.loc 1 140 0
	pushl	%ebp
.LCFI14:
	movl	%esp, %ebp
.LCFI15:
	pushl	%ebx
.LCFI16:
	subl	$36, %esp
.LCFI17:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 143 0
	leal	.LC10@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 144 0
	leal	.LC11@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 145 0
	leal	.LC12@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 146 0
	leal	.LC13@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 147 0
	leal	.LC14@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 148 0
	leal	.LC15@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 149 0
	leal	.LC16@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 150 0
	leal	.LC17@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 151 0
	leal	.LC18@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 152 0
	leal	.LC19@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 153 0
	leal	.LC20@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 154 0
	leal	.LC21@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 155 0
	leal	.LC22@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 156 0
	leal	.LC23@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 157 0
	leal	.LC24@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 158 0
	leal	.LC25@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 159 0
	leal	.LC26@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 160 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC27@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 161 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC28@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 162 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC29@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 163 0
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC30@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 164 0
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC31@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 165 0
	movl	20(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC32@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 166 0
	movl	20(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC33@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 167 0
	movl	24(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC34@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 168 0
	movl	24(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC35@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 169 0
	movl	28(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC36@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 170 0
	movl	28(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC37@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 171 0
	movl	$0, -12(%ebp)
	jmp	.L36
.L37:
	addl	$1, -12(%ebp)
.L36:
	movl	-12(%ebp), %ecx
	movl	$1, %eax
	movl	%eax, %edx
	sall	%cl, %edx
	movl	28(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	jl	.L37
	.loc 1 173 0
	movl	-12(%ebp), %eax
	addl	$1, %eax
	movl	%eax, 4(%esp)
	leal	.LC38@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 177 0
	movl	20(%ebp), %eax
	movl	4(%eax), %edx
	movl	28(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
	movl	%edx, -28(%ebp)
	movl	-24(%ebp), %eax
	cmpl	%eax, -28(%ebp)
	jge	.L39
	movl	-24(%ebp), %eax
	movl	%eax, -28(%ebp)
.L39:
	movl	-28(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 178 0
	movl	$1, -8(%ebp)
	jmp	.L40
.L41:
	sall	-8(%ebp)
.L40:
	movl	-8(%ebp), %eax
	cmpl	-12(%ebp), %eax
	jle	.L41
	.loc 1 180 0
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC39@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 181 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE19:
	.size	write_units, .-write_units
	.section	.rodata
.LC40:
	.string	"genattr"
.LC41:
	.string	"no input file name"
	.align 4
.LC42:
	.string	"/* Generated automatically by the program `genattr'"
	.align 4
.LC43:
	.string	"   from the machine description file `md'.  */\n"
.LC44:
	.string	"#ifndef GCC_INSN_ATTR_H"
.LC45:
	.string	"#define GCC_INSN_ATTR_H\n"
.LC46:
	.string	"#define HAVE_ATTR_alternative"
	.align 4
.LC47:
	.string	"#define get_attr_alternative(insn) which_alternative"
.LC48:
	.string	"#define DELAY_SLOTS"
	.align 4
.LC49:
	.string	"extern int num_delay_slots PARAMS ((rtx));"
	.align 4
.LC50:
	.string	"extern int eligible_for_delay PARAMS ((rtx, int, rtx, int));\n"
	.align 4
.LC51:
	.string	"extern int const_num_delay_slots PARAMS ((rtx));\n"
.LC52:
	.string	"#define ANNUL_IFTRUE_SLOTS"
	.align 4
.LC53:
	.string	"extern int eligible_for_annul_true PARAMS ((rtx, int, rtx, int));"
.LC54:
	.string	"#define ANNUL_IFFALSE_SLOTS"
	.align 4
.LC55:
	.string	"extern int eligible_for_annul_false PARAMS ((rtx, int, rtx, int));"
	.align 4
.LC56:
	.string	"Differing specifications given for `%s' function unit"
	.align 4
.LC57:
	.string	"#define TRADITIONAL_PIPELINE_INTERFACE 1"
	.align 4
.LC58:
	.string	"#define DFA_PIPELINE_INTERFACE 1"
	.align 4
.LC59:
	.string	"\n/* DFA based pipeline interface.  */"
.LC60:
	.string	"\n#ifndef AUTOMATON_STATE_ALTS"
	.align 4
.LC61:
	.string	"#define AUTOMATON_STATE_ALTS 0"
.LC62:
	.string	"#endif\n"
.LC63:
	.string	"#ifndef CPU_UNITS_QUERY"
.LC64:
	.string	"#define CPU_UNITS_QUERY 0"
	.align 4
.LC65:
	.string	"extern int max_dfa_issue_rate;\n"
	.align 4
.LC66:
	.string	"/* The following macro value is calculated from the"
	.align 4
.LC67:
	.string	"   automaton based pipeline description and is equal to"
	.align 4
.LC68:
	.string	"   maximal number of all insns described in constructions"
	.align 4
.LC69:
	.string	"   `define_insn_reservation' which can be issued on the"
.LC70:
	.string	"   same processor cycle. */"
	.align 4
.LC71:
	.string	"#define MAX_DFA_ISSUE_RATE max_dfa_issue_rate\n"
	.align 4
.LC72:
	.string	"/* Insn latency time defined in define_insn_reservation. */"
	.align 4
.LC73:
	.string	"extern int insn_default_latency PARAMS ((rtx));\n"
	.align 4
.LC74:
	.string	"/* Return nonzero if there is a bypass for given insn"
	.align 4
.LC75:
	.string	"   which is a data producer.  */"
	.align 4
.LC76:
	.string	"extern int bypass_p PARAMS ((rtx));\n"
	.align 4
.LC77:
	.string	"/* Insn latency time on data consumed by the 2nd insn."
	.align 4
.LC78:
	.string	"   Use the function if bypass_p returns nonzero for"
.LC79:
	.string	"   the 1st insn. */"
	.align 4
.LC80:
	.string	"extern int insn_latency PARAMS ((rtx, rtx));\n"
	.align 4
.LC81:
	.string	"/* The following function returns number of alternative"
	.align 4
.LC82:
	.string	"   reservations of given insn.  It may be used for better"
	.align 4
.LC83:
	.string	"   insns scheduling heuristics. */"
	.align 4
.LC84:
	.string	"extern int insn_alts PARAMS ((rtx));\n"
	.align 4
.LC85:
	.string	"/* Maximal possible number of insns waiting results being"
	.align 4
.LC86:
	.string	"   produced by insns whose execution is not finished. */"
	.align 4
.LC87:
	.string	"extern int max_insn_queue_index;\n"
	.align 4
.LC88:
	.string	"/* Pointer to data describing current state of DFA.  */"
.LC89:
	.string	"typedef void *state_t;\n"
	.align 4
.LC90:
	.string	"/* Size of the data in bytes.  */"
	.align 4
.LC91:
	.string	"extern int state_size PARAMS ((void));\n"
	.align 4
.LC92:
	.string	"/* Initiate given DFA state, i.e. Set up the state"
	.align 4
.LC93:
	.string	"   as all functional units were not reserved.  */"
	.align 4
.LC94:
	.string	"extern void state_reset PARAMS ((state_t));"
	.align 4
.LC95:
	.string	"/* The following function returns negative value if given"
	.align 4
.LC96:
	.string	"   insn can be issued in processor state described by given"
	.align 4
.LC97:
	.string	"   DFA state.  In this case, the DFA state is changed to"
	.align 4
.LC98:
	.string	"   reflect the current and future reservations by given"
	.align 4
.LC99:
	.string	"   insn.  Otherwise the function returns minimal time"
	.align 4
.LC100:
	.string	"   delay to issue the insn.  This delay may be zero"
	.align 4
.LC101:
	.string	"   for superscalar or VLIW processors.  If the second"
	.align 4
.LC102:
	.string	"   parameter is NULL the function changes given DFA state"
	.align 4
.LC103:
	.string	"   as new processor cycle started.  */"
	.align 4
.LC104:
	.string	"extern int state_transition PARAMS ((state_t, rtx));"
.LC105:
	.string	"\n#if AUTOMATON_STATE_ALTS"
	.align 4
.LC106:
	.string	"/* The following function returns number of possible"
	.align 4
.LC107:
	.string	"   alternative reservations of given insn in given"
	.align 4
.LC108:
	.string	"   DFA state.  It may be used for better insns scheduling"
	.align 4
.LC109:
	.string	"   heuristics.  By default the function is defined if"
	.align 4
.LC110:
	.string	"   macro AUTOMATON_STATE_ALTS is defined because its"
	.align 4
.LC111:
	.string	"   implementation may require much memory.  */"
	.align 4
.LC112:
	.string	"extern int state_alts PARAMS ((state_t, rtx));"
	.align 4
.LC113:
	.string	"extern int min_issue_delay PARAMS ((state_t, rtx));"
	.align 4
.LC114:
	.string	"/* The following function returns nonzero if no one insn"
	.align 4
.LC115:
	.string	"   can be issued in current DFA state. */"
	.align 4
.LC116:
	.string	"extern int state_dead_lock_p PARAMS ((state_t));"
	.align 4
.LC117:
	.string	"/* The function returns minimal delay of issue of the 2nd"
	.align 4
.LC118:
	.string	"   insn after issuing the 1st insn in given DFA state."
	.align 4
.LC119:
	.string	"   The 1st insn should be issued in given state (i.e."
	.align 4
.LC120:
	.string	"    state_transition should return negative value for"
	.align 4
.LC121:
	.string	"    the insn and the state).  Data dependencies between"
	.align 4
.LC122:
	.string	"    the insns are ignored by the function.  */"
	.align 4
.LC123:
	.string	"extern int min_insn_conflict_delay PARAMS ((state_t, rtx, rtx));"
	.align 4
.LC124:
	.string	"/* The following function outputs reservations for given"
	.align 4
.LC125:
	.string	"   insn as they are described in the corresponding"
	.align 4
.LC126:
	.string	"   define_insn_reservation.  */"
	.align 4
.LC127:
	.string	"extern void print_reservation PARAMS ((FILE *, rtx));"
.LC128:
	.string	"\n#if CPU_UNITS_QUERY"
	.align 4
.LC129:
	.string	"/* The following function returns code of functional unit"
	.align 4
.LC130:
	.string	"   with given name (see define_cpu_unit). */"
	.align 4
.LC131:
	.string	"extern int get_cpu_unit_code PARAMS ((const char *));"
	.align 4
.LC132:
	.string	"/* The following function returns nonzero if functional"
	.align 4
.LC133:
	.string	"   unit with given code is currently reserved in given"
.LC134:
	.string	"   DFA state.  */"
	.align 4
.LC135:
	.string	"extern int cpu_unit_reservation_p PARAMS ((state_t, int));"
	.align 4
.LC136:
	.string	"/* Initiate and finish work with DFA.  They should be"
	.align 4
.LC137:
	.string	"   called as the first and the last interface"
.LC138:
	.string	"   functions.  */"
	.align 4
.LC139:
	.string	"extern void dfa_start PARAMS ((void));"
	.align 4
.LC140:
	.string	"extern void dfa_finish PARAMS ((void));"
	.align 4
.LC141:
	.string	"\n#define ATTR_FLAG_forward\t0x1"
	.align 4
.LC142:
	.string	"#define ATTR_FLAG_backward\t0x2"
.LC143:
	.string	"#define ATTR_FLAG_likely\t0x4"
	.align 4
.LC144:
	.string	"#define ATTR_FLAG_very_likely\t0x8"
	.align 4
.LC145:
	.string	"#define ATTR_FLAG_unlikely\t0x10"
	.align 4
.LC146:
	.string	"#define ATTR_FLAG_very_unlikely\t0x20"
.LC147:
	.string	"\n#endif /* GCC_INSN_ATTR_H */"
	.text
.globl main
	.type	main, @function
main:
.LFB20:
	.loc 1 189 0
	leal	4(%esp), %ecx
.LCFI18:
	andl	$-16, %esp
	pushl	-4(%ecx)
.LCFI19:
	pushl	%ebp
.LCFI20:
	movl	%esp, %ebp
.LCFI21:
	pushl	%esi
.LCFI22:
	pushl	%ebx
.LCFI23:
	pushl	%ecx
.LCFI24:
	subl	$204, %esp
.LCFI25:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	%ecx, -180(%ebp)
	.loc 1 191 0
	movl	$0, -72(%ebp)
	.loc 1 192 0
	movl	$0, -68(%ebp)
	.loc 1 193 0
	movl	$0, -64(%ebp)
	.loc 1 194 0
	movl	$0, -60(%ebp)
	.loc 1 195 0
	movl	$0, -56(%ebp)
	.loc 1 198 0
	movl	$0, -52(%ebp)
	.loc 1 201 0
	leal	-100(%ebp), %eax
	movl	%eax, (%esp)
	call	init_range
	.loc 1 202 0
	leal	-92(%ebp), %eax
	movl	%eax, (%esp)
	call	init_range
	.loc 1 203 0
	leal	-108(%ebp), %eax
	movl	%eax, (%esp)
	call	init_range
	.loc 1 204 0
	leal	-116(%ebp), %eax
	movl	%eax, (%esp)
	call	init_range
	.loc 1 205 0
	leal	-124(%ebp), %eax
	movl	%eax, (%esp)
	call	init_range
	.loc 1 207 0
	movl	progname@GOT(%ebx), %edx
	leal	.LC40@GOTOFF(%ebx), %eax
	movl	%eax, (%edx)
	.loc 1 209 0
	movl	-180(%ebp), %eax
	cmpl	$1, (%eax)
	jg	.L45
	.loc 1 210 0
	leal	.LC41@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fatal@PLT
.L45:
	.loc 1 212 0
	movl	-180(%ebp), %edx
	movl	4(%edx), %eax
	movl	%eax, 4(%esp)
	movl	-180(%ebp), %ecx
	movl	(%ecx), %eax
	movl	%eax, (%esp)
	call	init_md_reader_args@PLT
	testl	%eax, %eax
	je	.L47
	.loc 1 213 0
	movl	$1, -176(%ebp)
	jmp	.L49
.L47:
	.loc 1 215 0
	leal	.LC42@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 216 0
	leal	.LC43@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 217 0
	leal	.LC44@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 218 0
	leal	.LC45@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 223 0
	leal	.LC46@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 224 0
	leal	.LC47@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	jmp	.L108
.L50:
.L108:
.LBB2:
	.loc 1 232 0
	leal	-84(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-80(%ebp), %eax
	movl	%eax, (%esp)
	call	read_md_rtx@PLT
	movl	%eax, -76(%ebp)
	.loc 1 233 0
	cmpl	$0, -76(%ebp)
	je	.L51
	.loc 1 236 0
	movl	-76(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$36, %ax
	jne	.L53
	.loc 1 237 0
	movl	-76(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_attr
	jmp	.L50
.L53:
	.loc 1 239 0
	movl	-76(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$20, %ax
	jne	.L56
	.loc 1 241 0
	cmpl	$0, -72(%ebp)
	jne	.L58
	.loc 1 243 0
	leal	.LC48@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 244 0
	leal	.LC49@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 245 0
	leal	.LC50@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 246 0
	leal	.LC51@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 247 0
	movl	$1, -72(%ebp)
.L58:
	.loc 1 250 0
	movl	$0, -44(%ebp)
	jmp	.L60
.L61:
	.loc 1 252 0
	movl	-76(%ebp), %eax
	movl	12(%eax), %edx
	movl	-44(%ebp), %eax
	addl	$1, %eax
	movl	4(%edx,%eax,4), %eax
	testl	%eax, %eax
	je	.L62
	cmpl	$0, -68(%ebp)
	jne	.L62
	.loc 1 254 0
	leal	.LC52@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 255 0
	leal	.LC53@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 256 0
	movl	$1, -68(%ebp)
.L62:
	.loc 1 259 0
	movl	-76(%ebp), %eax
	movl	12(%eax), %edx
	movl	-44(%ebp), %eax
	addl	$2, %eax
	movl	4(%edx,%eax,4), %eax
	testl	%eax, %eax
	je	.L65
	cmpl	$0, -64(%ebp)
	jne	.L65
	.loc 1 261 0
	leal	.LC54@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 262 0
	leal	.LC55@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 263 0
	movl	$1, -64(%ebp)
.L65:
	.loc 1 250 0
	addl	$3, -44(%ebp)
.L60:
	movl	-76(%ebp), %eax
	movl	12(%eax), %eax
	movl	(%eax), %eax
	cmpl	-44(%ebp), %eax
	jg	.L61
	jmp	.L50
.L56:
	.loc 1 268 0
	movl	-76(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$21, %ax
	jne	.L69
.LBB3:
	.loc 1 270 0
	movl	-76(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 271 0
	movl	-76(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -36(%ebp)
	.loc 1 272 0
	movl	-76(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 273 0
	movl	-76(%ebp), %eax
	movl	36(%eax), %eax
	movl	%eax, -184(%ebp)
	cmpl	$0, -184(%ebp)
	jg	.L71
	movl	$1, -184(%ebp)
.L71:
	movl	-184(%ebp), %esi
	movl	%esi, -28(%ebp)
	.loc 1 274 0
	movl	-76(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -188(%ebp)
	cmpl	$0, -188(%ebp)
	jg	.L72
	movl	$1, -188(%ebp)
.L72:
	movl	-188(%ebp), %eax
	movl	%eax, -24(%ebp)
	.loc 1 275 0
	movl	-76(%ebp), %eax
	movl	52(%eax), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -20(%ebp)
	.loc 1 277 0
	movl	-52(%ebp), %eax
	movl	%eax, -48(%ebp)
	jmp	.L73
.L74:
	.loc 1 278 0
	movl	-48(%ebp), %eax
	movl	(%eax), %edx
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L75
	.loc 1 277 0
	movl	-48(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -48(%ebp)
.L73:
	cmpl	$0, -48(%ebp)
	jne	.L74
.L75:
	.loc 1 281 0
	cmpl	$0, -48(%ebp)
	jne	.L77
	.loc 1 283 0
	movl	$32, (%esp)
	call	xmalloc@PLT
	movl	%eax, -48(%ebp)
	.loc 1 285 0
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	xstrdup@PLT
	movl	%eax, %edx
	movl	-48(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 286 0
	movl	-48(%ebp), %edx
	movl	-36(%ebp), %eax
	movl	%eax, 8(%edx)
	.loc 1 287 0
	movl	-48(%ebp), %edx
	movl	-32(%ebp), %eax
	movl	%eax, 12(%edx)
	.loc 1 288 0
	movl	-48(%ebp), %edx
	movl	-28(%ebp), %eax
	movl	%eax, 20(%edx)
	movl	-48(%ebp), %eax
	movl	20(%eax), %edx
	movl	-48(%ebp), %eax
	movl	%edx, 16(%eax)
	.loc 1 289 0
	movl	-48(%ebp), %edx
	movl	-24(%ebp), %eax
	movl	%eax, 28(%edx)
	movl	-48(%ebp), %eax
	movl	28(%eax), %edx
	movl	-48(%ebp), %eax
	movl	%edx, 24(%eax)
	.loc 1 290 0
	movl	-48(%ebp), %edx
	movl	-52(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 291 0
	movl	-48(%ebp), %eax
	movl	%eax, -52(%ebp)
	.loc 1 292 0
	addl	$1, -56(%ebp)
	.loc 1 294 0
	movl	-36(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-100(%ebp), %eax
	movl	%eax, (%esp)
	call	extend_range
	.loc 1 295 0
	movl	-32(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-92(%ebp), %eax
	movl	%eax, (%esp)
	call	extend_range
	jmp	.L79
.L77:
	.loc 1 297 0
	movl	-48(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	-36(%ebp), %eax
	jne	.L80
	movl	-48(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	-32(%ebp), %eax
	je	.L79
.L80:
	.loc 1 299 0
	movl	-48(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC56@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fatal@PLT
.L79:
	.loc 1 302 0
	movl	-48(%ebp), %eax
	addl	$16, %eax
	movl	-28(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	-28(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	extend_range
	.loc 1 303 0
	cmpl	$0, -20(%ebp)
	jne	.L82
	movl	-24(%ebp), %edx
	movl	%edx, -172(%ebp)
	jmp	.L84
.L82:
	movl	$1, -172(%ebp)
.L84:
	movl	-48(%ebp), %edx
	addl	$24, %edx
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-172(%ebp), %ecx
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	extend_range
	.loc 1 305 0
	movl	-48(%ebp), %eax
	movl	20(%eax), %edx
	movl	-48(%ebp), %eax
	movl	16(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	leal	-108(%ebp), %eax
	movl	%eax, (%esp)
	call	extend_range
	.loc 1 307 0
	movl	-48(%ebp), %eax
	movl	28(%eax), %edx
	movl	-48(%ebp), %eax
	movl	24(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	leal	-116(%ebp), %eax
	movl	%eax, (%esp)
	call	extend_range
	jmp	.L50
.L69:
.LBE3:
	.loc 1 310 0
	movl	-76(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$35, %ax
	jne	.L50
	.loc 1 311 0
	addl	$1, -60(%ebp)
	.loc 1 312 0
	jmp	.L50
.L51:
.LBE2:
	.loc 1 314 0
	cmpl	$0, -56(%ebp)
	jg	.L86
	cmpl	$0, -60(%ebp)
	jle	.L88
.L86:
	.loc 1 316 0
	cmpl	$0, -56(%ebp)
	jle	.L89
	.loc 1 317 0
	leal	.LC57@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
.L89:
	.loc 1 319 0
	cmpl	$0, -60(%ebp)
	jle	.L91
	.loc 1 320 0
	leal	.LC58@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
.L91:
	.loc 1 334 0
	movl	-52(%ebp), %eax
	movl	%eax, -48(%ebp)
	jmp	.L93
.L94:
.LBB4:
	.loc 1 338 0
	movl	-48(%ebp), %eax
	movl	28(%eax), %edx
	movl	24(%eax), %eax
	movl	%eax, -132(%ebp)
	movl	%edx, -128(%ebp)
	.loc 1 339 0
	movl	-128(%ebp), %ecx
	movl	-48(%ebp), %eax
	movl	20(%eax), %edx
	movl	-48(%ebp), %eax
	movl	16(%eax), %eax
	movl	%edx, %esi
	subl	%eax, %esi
	movl	%esi, %eax
	addl	$1, %eax
	movl	%eax, -168(%ebp)
	movl	%ecx, -164(%ebp)
	movl	-168(%ebp), %eax
	cmpl	%eax, -164(%ebp)
	jge	.L95
	movl	-168(%ebp), %edx
	movl	%edx, -164(%ebp)
.L95:
	movl	-164(%ebp), %ecx
	movl	%ecx, -128(%ebp)
	.loc 1 342 0
	movl	-132(%ebp), %eax
	movl	%eax, -160(%ebp)
	cmpl	$0, -160(%ebp)
	jg	.L96
	movl	$1, -160(%ebp)
.L96:
	movl	-160(%ebp), %esi
	movl	%esi, -132(%ebp)
	.loc 1 344 0
	movl	-48(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	.L97
.LBB5:
	.loc 1 347 0
	movl	-48(%ebp), %eax
	movl	12(%eax), %eax
	leal	-1(%eax), %edx
	movl	-48(%ebp), %eax
	movl	24(%eax), %eax
	imull	%edx, %eax
	movl	%eax, -16(%ebp)
	.loc 1 348 0
	movl	-132(%ebp), %edx
	movl	-48(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, %ecx
	subl	-16(%ebp), %ecx
	movl	%ecx, -156(%ebp)
	movl	%edx, -152(%ebp)
	movl	-156(%ebp), %esi
	cmpl	%esi, -152(%ebp)
	jge	.L99
	movl	-156(%ebp), %eax
	movl	%eax, -152(%ebp)
.L99:
	movl	-152(%ebp), %edx
	movl	%edx, -132(%ebp)
	.loc 1 350 0
	movl	-128(%ebp), %eax
	movl	-48(%ebp), %edx
	movl	20(%edx), %edx
	movl	%edx, %ecx
	subl	-16(%ebp), %ecx
	movl	%ecx, -148(%ebp)
	movl	%eax, -144(%ebp)
	movl	-148(%ebp), %esi
	cmpl	%esi, -144(%ebp)
	jge	.L100
	movl	-148(%ebp), %eax
	movl	%eax, -144(%ebp)
.L100:
	movl	-144(%ebp), %edx
	movl	%edx, -128(%ebp)
.L97:
.LBE5:
	.loc 1 353 0
	movl	-128(%ebp), %eax
	movl	-132(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	leal	-124(%ebp), %eax
	movl	%eax, (%esp)
	call	extend_range
.LBE4:
	.loc 1 334 0
	movl	-48(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -48(%ebp)
.L93:
	cmpl	$0, -48(%ebp)
	jne	.L94
	.loc 1 356 0
	leal	-124(%ebp), %eax
	movl	%eax, 20(%esp)
	leal	-116(%ebp), %eax
	movl	%eax, 16(%esp)
	leal	-108(%ebp), %eax
	movl	%eax, 12(%esp)
	leal	-92(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-100(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	write_units
	.loc 1 361 0
	leal	.LC59@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 362 0
	leal	.LC60@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 363 0
	leal	.LC61@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 364 0
	leal	.LC62@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 365 0
	leal	.LC63@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 366 0
	leal	.LC64@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 367 0
	leal	.LC62@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 369 0
	leal	.LC65@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 370 0
	leal	.LC66@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 371 0
	leal	.LC67@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 372 0
	leal	.LC68@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 373 0
	leal	.LC69@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 374 0
	leal	.LC70@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 375 0
	leal	.LC71@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 376 0
	leal	.LC72@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 377 0
	leal	.LC73@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 378 0
	leal	.LC74@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 379 0
	leal	.LC75@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 380 0
	leal	.LC76@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 381 0
	leal	.LC77@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 382 0
	leal	.LC78@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 383 0
	leal	.LC79@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 384 0
	leal	.LC80@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 385 0
	leal	.LC81@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 386 0
	leal	.LC82@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 387 0
	leal	.LC83@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 388 0
	leal	.LC84@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 389 0
	leal	.LC85@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 390 0
	leal	.LC86@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 391 0
	leal	.LC87@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 392 0
	leal	.LC88@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 393 0
	leal	.LC89@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 394 0
	leal	.LC90@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 395 0
	leal	.LC91@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 396 0
	leal	.LC92@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 397 0
	leal	.LC93@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 398 0
	leal	.LC94@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 399 0
	leal	.LC95@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 400 0
	leal	.LC96@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 401 0
	leal	.LC97@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 402 0
	leal	.LC98@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 403 0
	leal	.LC99@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 404 0
	leal	.LC100@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 405 0
	leal	.LC101@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 406 0
	leal	.LC102@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 407 0
	leal	.LC103@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 408 0
	leal	.LC104@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 409 0
	leal	.LC105@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 410 0
	leal	.LC106@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 411 0
	leal	.LC107@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 412 0
	leal	.LC108@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 413 0
	leal	.LC109@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 414 0
	leal	.LC110@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 415 0
	leal	.LC111@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 416 0
	leal	.LC112@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 417 0
	leal	.LC62@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 418 0
	leal	.LC113@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 419 0
	leal	.LC114@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 420 0
	leal	.LC115@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 421 0
	leal	.LC116@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 422 0
	leal	.LC117@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 423 0
	leal	.LC118@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 424 0
	leal	.LC119@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 425 0
	leal	.LC120@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 426 0
	leal	.LC121@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 427 0
	leal	.LC122@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 428 0
	leal	.LC123@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 430 0
	leal	.LC124@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 431 0
	leal	.LC125@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 432 0
	leal	.LC126@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 433 0
	leal	.LC127@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 434 0
	leal	.LC128@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 435 0
	leal	.LC129@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 436 0
	leal	.LC130@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 437 0
	leal	.LC131@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 438 0
	leal	.LC132@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 439 0
	leal	.LC133@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 440 0
	leal	.LC134@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 441 0
	leal	.LC135@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 442 0
	leal	.LC62@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 443 0
	leal	.LC136@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 444 0
	leal	.LC137@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 445 0
	leal	.LC138@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 446 0
	leal	.LC139@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 447 0
	leal	.LC140@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 314 0
	jmp	.L102
.L88:
	.loc 1 453 0
	leal	.LC89@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
.L102:
	.loc 1 460 0
	leal	.LC141@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 461 0
	leal	.LC142@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 462 0
	leal	.LC143@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 463 0
	leal	.LC144@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 464 0
	leal	.LC145@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 465 0
	leal	.LC146@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 467 0
	leal	.LC147@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 469 0
	movl	stdout@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	ferror@PLT
	testl	%eax, %eax
	jne	.L103
	movl	stdout@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	fflush@PLT
	testl	%eax, %eax
	jne	.L103
	movl	stdout@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	fclose@PLT
	testl	%eax, %eax
	je	.L106
.L103:
	.loc 1 470 0
	movl	$1, -176(%ebp)
	jmp	.L49
.L106:
	.loc 1 472 0
	movl	$0, -176(%ebp)
.L49:
	movl	-176(%ebp), %eax
	.loc 1 473 0
	addl	$204, %esp
	popl	%ecx
	popl	%ebx
	popl	%esi
	popl	%ebp
	leal	-4(%ecx), %esp
	ret
.LFE20:
	.size	main, .-main
.globl get_insn_name
	.type	get_insn_name, @function
get_insn_name:
.LFB21:
	.loc 1 479 0
	pushl	%ebp
.LCFI26:
	movl	%esp, %ebp
.LCFI27:
	.loc 1 480 0
	movl	$0, %eax
	.loc 1 481 0
	popl	%ebp
	ret
.LFE21:
	.size	get_insn_name, .-get_insn_name
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
	.align 4
.LEFDE2:
.LSFDE4:
	.long	.LEFDE4-.LASFDE4
.LASFDE4:
	.long	.Lframe0
	.long	.LFB17
	.long	.LFE17-.LFB17
	.byte	0x4
	.long	.LCFI4-.LFB17
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
.LEFDE4:
.LSFDE6:
	.long	.LEFDE6-.LASFDE6
.LASFDE6:
	.long	.Lframe0
	.long	.LFB18
	.long	.LFE18-.LFB18
	.byte	0x4
	.long	.LCFI8-.LFB18
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI9-.LCFI8
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI13-.LCFI9
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
	.long	.LCFI14-.LFB19
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI15-.LCFI14
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI17-.LCFI15
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
	.long	.LCFI18-.LFB20
	.byte	0xc
	.uleb128 0x1
	.uleb128 0x0
	.byte	0x9
	.uleb128 0x4
	.uleb128 0x1
	.byte	0x4
	.long	.LCFI19-.LCFI18
	.byte	0xc
	.uleb128 0x4
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI20-.LCFI19
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI21-.LCFI20
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI24-.LCFI21
	.byte	0x84
	.uleb128 0x5
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
	.align 4
.LEFDE12:
	.file 2 "../../../kg++fe/gnu/MIPS/hconfig.h"
	.file 3 "../../../kg++fe/gnu/rtl.h"
	.file 4 "../../../kg++fe/gnu/machmode.h"
	.file 5 "/usr/include/stdio.h"
	.file 6 "/usr/include/libio.h"
	.file 7 "/usr/include/bits/types.h"
	.file 8 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h"
	.file 9 "../../../include/gnu/safe-ctype.h"
	.file 10 "../../../kg++fe/gnu/errors.h"
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
	.long	.LFE17-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST3:
	.long	.LFB18-.Ltext0
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
	.long	.LCFI18-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI18-.Ltext0
	.long	.LCFI19-.Ltext0
	.value	0x1
	.byte	0x51
	.long	.LCFI19-.Ltext0
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
	.section	.debug_info
	.long	0x17eb
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.Ldebug_line0
	.long	.Letext0
	.long	.Ltext0
	.string	"GNU C 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.byte	0x1
	.string	"../../../kg++fe/gnu/genattr.c"
	.string	"/usa/handong/simplnano/cmplr-open64-merge/targia32_sl1/g++fe/gnu"
	.uleb128 0x2
	.string	"rtx"
	.byte	0x2
	.byte	0xc
	.long	0xa7
	.uleb128 0x3
	.byte	0x4
	.long	0xad
	.uleb128 0x4
	.long	0x19d
	.string	"rtx_def"
	.byte	0xc
	.byte	0x2
	.byte	0xb
	.uleb128 0x5
	.string	"code"
	.byte	0x3
	.byte	0x84
	.long	0x847
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
	.long	0x5fe
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
	.byte	0x91
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
	.byte	0x99
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
	.byte	0xa2
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
	.byte	0xb4
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
	.byte	0xbb
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
	.byte	0xc0
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
	.byte	0xc9
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
	.byte	0xce
	.long	0x12a3
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
	.uleb128 0x6
	.string	"num_elem"
	.byte	0x3
	.byte	0xf2
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"elem"
	.byte	0x3
	.byte	0xf3
	.long	0x12b3
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
	.byte	0x8
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
	.byte	0x7
	.byte	0x3b
	.long	0x291
	.uleb128 0x2
	.string	"__off_t"
	.byte	0x7
	.byte	0x90
	.long	0x2db
	.uleb128 0x9
	.string	"long int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x2
	.string	"__off64_t"
	.byte	0x7
	.byte	0x91
	.long	0x2bc
	.uleb128 0xb
	.byte	0x4
	.uleb128 0x3
	.byte	0x4
	.long	0x20e
	.uleb128 0xc
	.long	0x57b
	.long	.LASF1
	.byte	0x94
	.byte	0x5
	.byte	0x2e
	.uleb128 0xd
	.string	"_flags"
	.byte	0x6
	.value	0x10c
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"_IO_read_ptr"
	.byte	0x6
	.value	0x111
	.long	0x2fa
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"_IO_read_end"
	.byte	0x6
	.value	0x112
	.long	0x2fa
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"_IO_read_base"
	.byte	0x6
	.value	0x113
	.long	0x2fa
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.string	"_IO_write_base"
	.byte	0x6
	.value	0x114
	.long	0x2fa
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"_IO_write_ptr"
	.byte	0x6
	.value	0x115
	.long	0x2fa
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.string	"_IO_write_end"
	.byte	0x6
	.value	0x116
	.long	0x2fa
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.string	"_IO_buf_base"
	.byte	0x6
	.value	0x117
	.long	0x2fa
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xd
	.string	"_IO_buf_end"
	.byte	0x6
	.value	0x118
	.long	0x2fa
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.string	"_IO_save_base"
	.byte	0x6
	.value	0x11a
	.long	0x2fa
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xd
	.string	"_IO_backup_base"
	.byte	0x6
	.value	0x11b
	.long	0x2fa
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xd
	.string	"_IO_save_end"
	.byte	0x6
	.value	0x11c
	.long	0x2fa
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xd
	.string	"_markers"
	.byte	0x6
	.value	0x11e
	.long	0x5cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.string	"_chain"
	.byte	0x6
	.value	0x120
	.long	0x5d2
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xd
	.string	"_fileno"
	.byte	0x6
	.value	0x122
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.string	"_flags2"
	.byte	0x6
	.value	0x126
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xd
	.string	"_old_offset"
	.byte	0x6
	.value	0x128
	.long	0x2cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.string	"_cur_column"
	.byte	0x6
	.value	0x12c
	.long	0x24a
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xd
	.string	"_vtable_offset"
	.byte	0x6
	.value	0x12d
	.long	0x275
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0xd
	.string	"_shortbuf"
	.byte	0x6
	.value	0x12e
	.long	0x5d8
	.byte	0x2
	.byte	0x23
	.uleb128 0x47
	.uleb128 0xd
	.string	"_lock"
	.byte	0x6
	.value	0x132
	.long	0x5e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xd
	.string	"_offset"
	.byte	0x6
	.value	0x13b
	.long	0x2e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xd
	.string	"__pad1"
	.byte	0x6
	.value	0x144
	.long	0x2f8
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xd
	.string	"__pad2"
	.byte	0x6
	.value	0x145
	.long	0x2f8
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xd
	.string	"__pad3"
	.byte	0x6
	.value	0x146
	.long	0x2f8
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xd
	.string	"__pad4"
	.byte	0x6
	.value	0x147
	.long	0x2f8
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xd
	.string	"__pad5"
	.byte	0x6
	.value	0x148
	.long	0x22b
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xd
	.string	"_mode"
	.byte	0x6
	.value	0x14a
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xd
	.string	"_unused2"
	.byte	0x6
	.value	0x14c
	.long	0x5ee
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.byte	0x0
	.uleb128 0xe
	.string	"_IO_lock_t"
	.byte	0x6
	.byte	0xb0
	.uleb128 0x4
	.long	0x5cc
	.string	"_IO_marker"
	.byte	0xc
	.byte	0x6
	.byte	0xb6
	.uleb128 0x6
	.string	"_next"
	.byte	0x6
	.byte	0xb7
	.long	0x5cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"_sbuf"
	.byte	0x6
	.byte	0xb8
	.long	0x5d2
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"_pos"
	.byte	0x6
	.byte	0xbc
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x589
	.uleb128 0x3
	.byte	0x4
	.long	0x300
	.uleb128 0xf
	.long	0x5e8
	.long	0x20e
	.uleb128 0x10
	.long	0x224
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x57b
	.uleb128 0xf
	.long	0x5fe
	.long	0x20e
	.uleb128 0x10
	.long	0x224
	.byte	0x27
	.byte	0x0
	.uleb128 0x11
	.long	0x847
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
	.long	0x1016
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
	.long	0x10f0
	.byte	0x4
	.byte	0x3
	.byte	0x47
	.uleb128 0x5
	.string	"min_align"
	.byte	0x3
	.byte	0x49
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
	.byte	0x4b
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
	.byte	0x4c
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
	.byte	0x4e
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
	.byte	0x50
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
	.byte	0x52
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
	.byte	0x55
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
	.byte	0x57
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
	.byte	0x58
	.long	0x1016
	.uleb128 0xc
	.long	0x1167
	.long	.LASF2
	.byte	0x18
	.byte	0x3
	.byte	0x62
	.uleb128 0x6
	.string	"alias"
	.byte	0x3
	.byte	0x63
	.long	0x291
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"expr"
	.byte	0x3
	.byte	0x64
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"offset"
	.byte	0x3
	.byte	0x65
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"size"
	.byte	0x3
	.byte	0x66
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"align"
	.byte	0x3
	.byte	0x67
	.long	0x21d
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x14
	.long	.LASF2
	.byte	0x3
	.byte	0x68
	.long	0x110b
	.uleb128 0x15
	.long	0x1244
	.string	"rtunion_def"
	.byte	0x8
	.byte	0x3
	.byte	0x6d
	.uleb128 0x16
	.string	"rtwint"
	.byte	0x3
	.byte	0x6e
	.long	0x291
	.uleb128 0x16
	.string	"rtint"
	.byte	0x3
	.byte	0x6f
	.long	0x216
	.uleb128 0x16
	.string	"rtuint"
	.byte	0x3
	.byte	0x70
	.long	0x21d
	.uleb128 0x16
	.string	"rtstr"
	.byte	0x3
	.byte	0x71
	.long	0x203
	.uleb128 0x16
	.string	"rtx"
	.byte	0x3
	.byte	0x72
	.long	0x9c
	.uleb128 0x16
	.string	"rtvec"
	.byte	0x3
	.byte	0x73
	.long	0x19d
	.uleb128 0x16
	.string	"rttype"
	.byte	0x3
	.byte	0x74
	.long	0x5fe
	.uleb128 0x16
	.string	"rt_addr_diff_vec_flags"
	.byte	0x3
	.byte	0x75
	.long	0x10f0
	.uleb128 0x16
	.string	"rt_cselib"
	.byte	0x3
	.byte	0x76
	.long	0x1258
	.uleb128 0x16
	.string	"rtbit"
	.byte	0x3
	.byte	0x77
	.long	0x1270
	.uleb128 0x16
	.string	"rttree"
	.byte	0x3
	.byte	0x78
	.long	0x1e5
	.uleb128 0x16
	.string	"bb"
	.byte	0x3
	.byte	0x79
	.long	0x1288
	.uleb128 0x16
	.string	"rtmem"
	.byte	0x3
	.byte	0x7a
	.long	0x128e
	.byte	0x0
	.uleb128 0x17
	.string	"cselib_val_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x1244
	.uleb128 0x17
	.string	"bitmap_head_def"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x125e
	.uleb128 0x17
	.string	"basic_block_def"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x1276
	.uleb128 0x3
	.byte	0x4
	.long	0x1167
	.uleb128 0x2
	.string	"rtunion"
	.byte	0x3
	.byte	0x7c
	.long	0x1172
	.uleb128 0xf
	.long	0x12b3
	.long	0x1294
	.uleb128 0x10
	.long	0x224
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x12c3
	.long	0x9c
	.uleb128 0x10
	.long	0x224
	.byte	0x0
	.byte	0x0
	.uleb128 0x4
	.long	0x12ee
	.string	"range"
	.byte	0x8
	.byte	0x1
	.byte	0x21
	.uleb128 0x6
	.string	"min"
	.byte	0x1
	.byte	0x22
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"max"
	.byte	0x1
	.byte	0x23
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x4
	.long	0x135b
	.string	"function_unit"
	.byte	0x20
	.byte	0x1
	.byte	0x2a
	.uleb128 0x6
	.string	"name"
	.byte	0x1
	.byte	0x2b
	.long	0x2fa
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"next"
	.byte	0x1
	.byte	0x2c
	.long	0x135b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x18
	.long	.LASF3
	.byte	0x1
	.byte	0x2d
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x18
	.long	.LASF4
	.byte	0x1
	.byte	0x2e
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x18
	.long	.LASF5
	.byte	0x1
	.byte	0x30
	.long	0x12c3
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x18
	.long	.LASF6
	.byte	0x1
	.byte	0x31
	.long	0x12c3
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x12ee
	.uleb128 0x19
	.long	0x13af
	.string	"extend_range"
	.byte	0x1
	.byte	0x40
	.byte	0x1
	.long	.LFB15
	.long	.LFE15
	.long	.LLST0
	.uleb128 0x1a
	.string	"range"
	.byte	0x1
	.byte	0x3d
	.long	0x13af
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1a
	.string	"min"
	.byte	0x1
	.byte	0x3e
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1a
	.string	"max"
	.byte	0x1
	.byte	0x3f
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x12c3
	.uleb128 0x19
	.long	0x13e5
	.string	"init_range"
	.byte	0x1
	.byte	0x48
	.byte	0x1
	.long	.LFB16
	.long	.LFE16
	.long	.LLST1
	.uleb128 0x1a
	.string	"range"
	.byte	0x1
	.byte	0x47
	.long	0x13af
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x19
	.long	0x1415
	.string	"write_upcase"
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.long	.LFB17
	.long	.LFE17
	.long	.LLST2
	.uleb128 0x1a
	.string	"str"
	.byte	0x1
	.byte	0x4f
	.long	0x203
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x19
	.long	0x146f
	.string	"gen_attr"
	.byte	0x1
	.byte	0x58
	.byte	0x1
	.long	.LFB18
	.long	.LFE18
	.long	.LLST3
	.uleb128 0x1a
	.string	"attr"
	.byte	0x1
	.byte	0x57
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1b
	.string	"p"
	.byte	0x1
	.byte	0x59
	.long	0x203
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1b
	.string	"tag"
	.byte	0x1
	.byte	0x59
	.long	0x203
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1b
	.string	"is_const"
	.byte	0x1
	.byte	0x5a
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x19
	.long	0x1501
	.string	"write_units"
	.byte	0x1
	.byte	0x8c
	.byte	0x1
	.long	.LFB19
	.long	.LFE19
	.long	.LLST4
	.uleb128 0x1c
	.long	.LASF7
	.byte	0x1
	.byte	0x86
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1c
	.long	.LASF3
	.byte	0x1
	.byte	0x87
	.long	0x13af
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1c
	.long	.LASF4
	.byte	0x1
	.byte	0x88
	.long	0x13af
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1c
	.long	.LASF5
	.byte	0x1
	.byte	0x89
	.long	0x13af
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x1c
	.long	.LASF6
	.byte	0x1
	.byte	0x8a
	.long	0x13af
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x1c
	.long	.LASF8
	.byte	0x1
	.byte	0x8b
	.long	0x13af
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x1b
	.string	"i"
	.byte	0x1
	.byte	0x8d
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1b
	.string	"q_size"
	.byte	0x1
	.byte	0x8d
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x1d
	.long	0x1762
	.byte	0x1
	.string	"main"
	.byte	0x1
	.byte	0xbd
	.byte	0x1
	.long	0x216
	.long	.LFB20
	.long	.LFE20
	.long	.LLST5
	.uleb128 0x1a
	.string	"argc"
	.byte	0x1
	.byte	0xbb
	.long	0x216
	.byte	0x4
	.byte	0x75
	.sleb128 -180
	.byte	0x6
	.uleb128 0x1a
	.string	"argv"
	.byte	0x1
	.byte	0xbc
	.long	0x1762
	.byte	0x6
	.byte	0x75
	.sleb128 -180
	.byte	0x6
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1b
	.string	"desc"
	.byte	0x1
	.byte	0xbe
	.long	0x9c
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x1b
	.string	"have_delay"
	.byte	0x1
	.byte	0xbf
	.long	0x216
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1b
	.string	"have_annul_true"
	.byte	0x1
	.byte	0xc0
	.long	0x216
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x1b
	.string	"have_annul_false"
	.byte	0x1
	.byte	0xc1
	.long	0x216
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1b
	.string	"num_insn_reservations"
	.byte	0x1
	.byte	0xc2
	.long	0x216
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x1e
	.long	.LASF7
	.byte	0x1
	.byte	0xc3
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1b
	.string	"all_simultaneity"
	.byte	0x1
	.byte	0xc4
	.long	0x12c3
	.byte	0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x1b
	.string	"all_multiplicity"
	.byte	0x1
	.byte	0xc4
	.long	0x12c3
	.byte	0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x1b
	.string	"all_ready_cost"
	.byte	0x1
	.byte	0xc5
	.long	0x12c3
	.byte	0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x1b
	.string	"all_issue_delay"
	.byte	0x1
	.byte	0xc5
	.long	0x12c3
	.byte	0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x1b
	.string	"all_blockage"
	.byte	0x1
	.byte	0xc5
	.long	0x12c3
	.byte	0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x1b
	.string	"units"
	.byte	0x1
	.byte	0xc6
	.long	0x135b
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1b
	.string	"unit"
	.byte	0x1
	.byte	0xc6
	.long	0x135b
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1b
	.string	"i"
	.byte	0x1
	.byte	0xc7
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1f
	.long	0x1728
	.long	.LBB2
	.long	.LBE2
	.uleb128 0x1b
	.string	"line_no"
	.byte	0x1
	.byte	0xe6
	.long	0x216
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x1b
	.string	"insn_code_number"
	.byte	0x1
	.byte	0xe6
	.long	0x216
	.byte	0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x20
	.long	.LBB3
	.long	.LBE3
	.uleb128 0x21
	.string	"name"
	.byte	0x1
	.value	0x10e
	.long	0x203
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x22
	.long	.LASF3
	.byte	0x1
	.value	0x10f
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x22
	.long	.LASF4
	.byte	0x1
	.value	0x110
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x22
	.long	.LASF5
	.byte	0x1
	.value	0x111
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x22
	.long	.LASF6
	.byte	0x1
	.value	0x112
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x21
	.string	"issueexp_p"
	.byte	0x1
	.value	0x113
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.uleb128 0x20
	.long	.LBB4
	.long	.LBE4
	.uleb128 0x22
	.long	.LASF8
	.byte	0x1
	.value	0x150
	.long	0x12c3
	.byte	0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x20
	.long	.LBB5
	.long	.LBE5
	.uleb128 0x21
	.string	"fill_time"
	.byte	0x1
	.value	0x15a
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x2fa
	.uleb128 0x23
	.long	0x17a1
	.byte	0x1
	.string	"get_insn_name"
	.byte	0x1
	.value	0x1df
	.byte	0x1
	.long	0x203
	.long	.LFB21
	.long	.LFE21
	.long	.LLST6
	.uleb128 0x24
	.string	"code"
	.byte	0x1
	.value	0x1de
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x25
	.string	"stdout"
	.byte	0x5
	.byte	0x8f
	.long	0x5d2
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.long	0x17c1
	.long	0x239
	.uleb128 0x10
	.long	0x224
	.byte	0xff
	.byte	0x0
	.uleb128 0x25
	.string	"_sch_toupper"
	.byte	0x9
	.byte	0x61
	.long	0x17d7
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.long	0x17b1
	.uleb128 0x25
	.string	"progname"
	.byte	0xa
	.byte	0x29
	.long	0x203
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x22
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
	.uleb128 0x25
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
	.long	0x17ef
	.long	0x1501
	.string	"main"
	.long	0x1768
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
.LASF6:
	.string	"issue_delay"
.LASF5:
	.string	"ready_cost"
.LASF0:
	.string	"unsigned int"
.LASF4:
	.string	"simultaneity"
.LASF3:
	.string	"multiplicity"
.LASF7:
	.string	"num_units"
.LASF8:
	.string	"blockage"
	.ident	"GCC: (GNU) 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.section	.text.__i686.get_pc_thunk.bx,"axG",@progbits,__i686.get_pc_thunk.bx,comdat
.globl __i686.get_pc_thunk.bx
	.hidden	__i686.get_pc_thunk.bx
	.type	__i686.get_pc_thunk.bx, @function
__i686.get_pc_thunk.bx:
	movl	(%esp), %ebx
	ret
	.section	.note.GNU-stack,"",@progbits
