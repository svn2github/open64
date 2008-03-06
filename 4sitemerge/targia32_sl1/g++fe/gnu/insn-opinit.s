	.file	"insn-opinit.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
.globl init_all_optabs
	.type	init_all_optabs, @function
init_all_optabs:
.LFB15:
	.file 1 "../../../kg++fe/gnu/MIPS/insn-opinit.c"
	.loc 1 16 0
	pushl	%ebp
.LCFI0:
	movl	%esp, %ebp
.LCFI1:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 17 0
	movl	target_flags@GOT(%ecx), %eax
	movl	(%eax), %eax
	andl	$256, %eax
	testl	%eax, %eax
	jne	.L2
	movl	target_flags@GOT(%ecx), %eax
	movl	(%eax), %eax
	andl	$131072, %eax
	testl	%eax, %eax
	jne	.L2
	.loc 1 18 0
	movl	optab_table@GOT(%ecx), %eax
	movl	4(%eax), %edx
	movl	optab_table@GOT(%ecx), %eax
	movl	(%eax), %eax
	movl	$2, 132(%eax)
	movl	132(%eax), %eax
	movl	%eax, 132(%edx)
.L2:
	.loc 1 20 0
	movl	target_flags@GOT(%ecx), %eax
	movl	(%eax), %eax
	andl	$256, %eax
	testl	%eax, %eax
	jne	.L5
	.loc 1 21 0
	movl	optab_table@GOT(%ecx), %eax
	movl	4(%eax), %edx
	movl	optab_table@GOT(%ecx), %eax
	movl	(%eax), %eax
	movl	$3, 124(%eax)
	movl	124(%eax), %eax
	movl	%eax, 124(%edx)
.L5:
	.loc 1 23 0
	movl	target_flags@GOT(%ecx), %eax
	movl	(%eax), %eax
	andl	$256, %eax
	testl	%eax, %eax
	jne	.L7
	movl	target_flags@GOT(%ecx), %eax
	movl	(%eax), %eax
	andl	$131072, %eax
	testl	%eax, %eax
	jne	.L7
	.loc 1 24 0
	movl	optab_table@GOT(%ecx), %eax
	movl	12(%eax), %edx
	movl	optab_table@GOT(%ecx), %eax
	movl	8(%eax), %eax
	movl	$16, 132(%eax)
	movl	132(%eax), %eax
	movl	%eax, 132(%edx)
.L7:
	.loc 1 26 0
	movl	target_flags@GOT(%ecx), %eax
	movl	(%eax), %eax
	andl	$256, %eax
	testl	%eax, %eax
	jne	.L10
	.loc 1 27 0
	movl	optab_table@GOT(%ecx), %eax
	movl	12(%eax), %edx
	movl	optab_table@GOT(%ecx), %eax
	movl	8(%eax), %eax
	movl	$17, 124(%eax)
	movl	124(%eax), %eax
	movl	%eax, 124(%edx)
.L10:
	.loc 1 29 0
	movl	target_flags@GOT(%ecx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L12
	.loc 1 30 0
	movl	optab_table@GOT(%ecx), %eax
	movl	24(%eax), %eax
	movl	$50, 44(%eax)
.L12:
	.loc 1 31 0
	movl	target_flags@GOT(%ecx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L14
	.loc 1 32 0
	movl	optab_table@GOT(%ecx), %eax
	movl	28(%eax), %eax
	movl	$51, 44(%eax)
.L14:
	.loc 1 33 0
	movl	target_flags@GOT(%ecx), %eax
	movl	(%eax), %eax
	andl	$256, %eax
	testl	%eax, %eax
	jne	.L16
	movl	target_flags@GOT(%ecx), %eax
	movl	(%eax), %eax
	andl	$131072, %eax
	testl	%eax, %eax
	jne	.L16
	.loc 1 34 0
	movl	optab_table@GOT(%ecx), %eax
	movl	40(%eax), %eax
	movl	$63, 132(%eax)
.L16:
	.loc 1 35 0
	movl	target_flags@GOT(%ecx), %eax
	movl	(%eax), %eax
	andl	$256, %eax
	testl	%eax, %eax
	jne	.L19
	.loc 1 36 0
	movl	optab_table@GOT(%ecx), %eax
	movl	40(%eax), %eax
	movl	$64, 124(%eax)
.L19:
	.loc 1 37 0
	movl	target_flags@GOT(%ecx), %eax
	movl	(%eax), %eax
	andl	$256, %eax
	testl	%eax, %eax
	jne	.L21
	movl	mips_isa@GOT(%ecx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L21
	movl	target_flags@GOT(%ecx), %eax
	movl	(%eax), %eax
	andl	$131072, %eax
	testl	%eax, %eax
	jne	.L21
	.loc 1 38 0
	movl	optab_table@GOT(%ecx), %eax
	movl	152(%eax), %eax
	movl	$81, 132(%eax)
.L21:
	.loc 1 39 0
	movl	target_flags@GOT(%ecx), %eax
	movl	(%eax), %eax
	andl	$256, %eax
	testl	%eax, %eax
	jne	.L25
	movl	mips_isa@GOT(%ecx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L25
	.loc 1 40 0
	movl	optab_table@GOT(%ecx), %eax
	movl	152(%eax), %eax
	movl	$82, 124(%eax)
.L25:
	.loc 1 41 0
	movl	target_flags@GOT(%ecx), %eax
	movl	(%eax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	jne	.L28
	.loc 1 42 0
	movl	optab_table@GOT(%ecx), %eax
	movl	136(%eax), %eax
	movl	$85, 36(%eax)
.L28:
	.loc 1 43 0
	movl	target_flags@GOT(%ecx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L30
	movl	target_flags@GOT(%ecx), %eax
	movl	(%eax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	jne	.L30
	.loc 1 44 0
	movl	optab_table@GOT(%ecx), %eax
	movl	136(%eax), %eax
	movl	$86, 44(%eax)
.L30:
	.loc 1 45 0
	movl	target_flags@GOT(%ecx), %eax
	movl	(%eax), %eax
	andl	$256, %eax
	testl	%eax, %eax
	jne	.L33
	movl	target_flags@GOT(%ecx), %eax
	movl	(%eax), %eax
	andl	$131072, %eax
	testl	%eax, %eax
	jne	.L33
	.loc 1 46 0
	movl	optab_table@GOT(%ecx), %eax
	movl	140(%eax), %edx
	movl	optab_table@GOT(%ecx), %eax
	movl	136(%eax), %eax
	movl	$87, 132(%eax)
	movl	132(%eax), %eax
	movl	%eax, 132(%edx)
.L33:
	.loc 1 48 0
	movl	target_flags@GOT(%ecx), %eax
	movl	(%eax), %eax
	andl	$256, %eax
	testl	%eax, %eax
	jne	.L36
	.loc 1 49 0
	movl	optab_table@GOT(%ecx), %eax
	movl	140(%eax), %edx
	movl	optab_table@GOT(%ecx), %eax
	movl	136(%eax), %eax
	movl	$88, 124(%eax)
	movl	124(%eax), %eax
	movl	%eax, 124(%edx)
.L36:
	.loc 1 51 0
	movl	target_flags@GOT(%ecx), %eax
	movl	(%eax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	jne	.L38
	.loc 1 52 0
	movl	optab_table@GOT(%ecx), %eax
	movl	148(%eax), %eax
	movl	$89, 36(%eax)
.L38:
	.loc 1 53 0
	movl	target_flags@GOT(%ecx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L40
	movl	target_flags@GOT(%ecx), %eax
	movl	(%eax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	jne	.L40
	.loc 1 54 0
	movl	optab_table@GOT(%ecx), %eax
	movl	148(%eax), %eax
	movl	$90, 44(%eax)
.L40:
	.loc 1 55 0
	movl	optab_table@GOT(%ecx), %eax
	movl	128(%eax), %eax
	movl	$91, 36(%eax)
	.loc 1 56 0
	movl	target_flags@GOT(%ecx), %eax
	movl	(%eax), %eax
	andl	$256, %eax
	testl	%eax, %eax
	jne	.L43
	movl	target_flags@GOT(%ecx), %eax
	movl	(%eax), %eax
	andl	$131072, %eax
	testl	%eax, %eax
	jne	.L43
	.loc 1 57 0
	movl	optab_table@GOT(%ecx), %eax
	movl	132(%eax), %edx
	movl	optab_table@GOT(%ecx), %eax
	movl	128(%eax), %eax
	movl	$94, 132(%eax)
	movl	132(%eax), %eax
	movl	%eax, 132(%edx)
.L43:
	.loc 1 59 0
	movl	target_flags@GOT(%ecx), %eax
	movl	(%eax), %eax
	andl	$256, %eax
	testl	%eax, %eax
	jne	.L46
	.loc 1 60 0
	movl	optab_table@GOT(%ecx), %eax
	movl	132(%eax), %edx
	movl	optab_table@GOT(%ecx), %eax
	movl	128(%eax), %eax
	movl	$95, 124(%eax)
	movl	124(%eax), %eax
	movl	%eax, 124(%edx)
.L46:
	.loc 1 62 0
	movl	optab_table@GOT(%ecx), %eax
	movl	144(%eax), %eax
	movl	$96, 36(%eax)
	.loc 1 63 0
	movl	optab_table@GOT(%ecx), %eax
	movl	144(%eax), %eax
	movl	$97, 44(%eax)
	.loc 1 64 0
	movl	target_flags@GOT(%ecx), %eax
	movl	(%eax), %eax
	andl	$256, %eax
	testl	%eax, %eax
	jne	.L48
	movl	target_flags@GOT(%ecx), %eax
	movl	(%eax), %eax
	andl	$131072, %eax
	testl	%eax, %eax
	jne	.L48
	.loc 1 65 0
	movl	extendtab@GOT(%ecx), %eax
	movl	$142, 7032(%eax)
.L48:
	.loc 1 66 0
	movl	target_flags@GOT(%ecx), %eax
	movl	(%eax), %eax
	andl	$256, %eax
	testl	%eax, %eax
	jne	.L51
	movl	target_flags@GOT(%ecx), %eax
	movl	(%eax), %eax
	andl	$512, %eax
	testl	%eax, %eax
	je	.L51
	movl	target_flags@GOT(%ecx), %eax
	movl	(%eax), %eax
	andl	$131072, %eax
	testl	%eax, %eax
	jne	.L51
	.loc 1 67 0
	movl	fixtrunctab@GOT(%ecx), %eax
	movl	$147, 6952(%eax)
.L51:
	.loc 1 68 0
	movl	target_flags@GOT(%ecx), %eax
	movl	(%eax), %eax
	andl	$256, %eax
	testl	%eax, %eax
	jne	.L55
	movl	target_flags@GOT(%ecx), %eax
	movl	(%eax), %eax
	andl	$512, %eax
	testl	%eax, %eax
	je	.L55
	movl	target_flags@GOT(%ecx), %eax
	movl	(%eax), %eax
	andl	$131072, %eax
	testl	%eax, %eax
	jne	.L55
	.loc 1 69 0
	movl	fixtrunctab@GOT(%ecx), %eax
	movl	$148, 6520(%eax)
.L55:
	.loc 1 70 0
	movl	target_flags@GOT(%ecx), %eax
	movl	(%eax), %eax
	andl	$256, %eax
	testl	%eax, %eax
	jne	.L59
	movl	target_flags@GOT(%ecx), %eax
	movl	(%eax), %eax
	andl	$131072, %eax
	testl	%eax, %eax
	jne	.L59
	.loc 1 71 0
	movl	floattab@GOT(%ecx), %eax
	movl	$149, 6944(%eax)
.L59:
	.loc 1 72 0
	movl	target_flags@GOT(%ecx), %eax
	movl	(%eax), %eax
	andl	$256, %eax
	testl	%eax, %eax
	jne	.L62
	movl	target_flags@GOT(%ecx), %eax
	movl	(%eax), %eax
	andl	$512, %eax
	testl	%eax, %eax
	je	.L62
	movl	target_flags@GOT(%ecx), %eax
	movl	(%eax), %eax
	andl	$131072, %eax
	testl	%eax, %eax
	jne	.L62
	.loc 1 73 0
	movl	floattab@GOT(%ecx), %eax
	movl	$150, 6952(%eax)
.L62:
	.loc 1 74 0
	movl	target_flags@GOT(%ecx), %eax
	movl	(%eax), %eax
	andl	$256, %eax
	testl	%eax, %eax
	jne	.L66
	.loc 1 75 0
	movl	floattab@GOT(%ecx), %eax
	movl	$151, 6512(%eax)
.L66:
	.loc 1 76 0
	movl	target_flags@GOT(%ecx), %eax
	movl	(%eax), %eax
	andl	$256, %eax
	testl	%eax, %eax
	jne	.L68
	movl	target_flags@GOT(%ecx), %eax
	movl	(%eax), %eax
	andl	$512, %eax
	testl	%eax, %eax
	je	.L68
	movl	target_flags@GOT(%ecx), %eax
	movl	(%eax), %eax
	andl	$131072, %eax
	testl	%eax, %eax
	jne	.L68
	.loc 1 77 0
	movl	floattab@GOT(%ecx), %eax
	movl	$152, 6520(%eax)
.L68:
	.loc 1 78 0
	movl	mips_isa@GOT(%ecx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	je	.L72
	movl	mips_isa@GOT(%ecx), %eax
	movl	(%eax), %eax
	cmpl	$32, %eax
	je	.L72
	movl	mips_isa@GOT(%ecx), %eax
	movl	(%eax), %eax
	cmpl	$64, %eax
	jne	.L75
.L72:
	movl	target_flags@GOT(%ecx), %eax
	movl	(%eax), %eax
	andl	$256, %eax
	testl	%eax, %eax
	jne	.L75
	.loc 1 79 0
	movl	optab_table@GOT(%ecx), %eax
	movl	120(%eax), %eax
	movl	$169, 428(%eax)
.L75:
	.loc 1 80 0
	movl	mips_arch@GOT(%ecx), %eax
	movl	(%eax), %eax
	cmpl	$12, %eax
	je	.L77
	movl	mips_arch@GOT(%ecx), %eax
	movl	(%eax), %eax
	cmpl	$13, %eax
	je	.L77
	movl	mips_arch@GOT(%ecx), %eax
	movl	(%eax), %eax
	cmpl	$18, %eax
	jne	.L80
.L77:
	.loc 1 81 0
	movl	optab_table@GOT(%ecx), %eax
	movl	100(%eax), %eax
	movl	$217, 36(%eax)
.L80:
	.loc 1 82 0
	movl	target_flags@GOT(%ecx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L81
	movl	mips_arch@GOT(%ecx), %eax
	movl	(%eax), %eax
	cmpl	$12, %eax
	je	.L83
	movl	mips_arch@GOT(%ecx), %eax
	movl	(%eax), %eax
	cmpl	$13, %eax
	je	.L83
	movl	mips_arch@GOT(%ecx), %eax
	movl	(%eax), %eax
	cmpl	$18, %eax
	jne	.L81
.L83:
	.loc 1 83 0
	movl	optab_table@GOT(%ecx), %eax
	movl	100(%eax), %eax
	movl	$218, 44(%eax)
.L81:
	.loc 1 84 0
	movl	optab_table@GOT(%ecx), %eax
	movl	(%eax), %eax
	movl	$343, 36(%eax)
	.loc 1 85 0
	movl	target_flags@GOT(%ecx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	jne	.L86
	movl	target_flags@GOT(%ecx), %eax
	movl	(%eax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	jne	.L88
.L86:
	.loc 1 86 0
	movl	optab_table@GOT(%ecx), %eax
	movl	(%eax), %eax
	movl	$346, 44(%eax)
.L88:
	.loc 1 87 0
	movl	optab_table@GOT(%ecx), %eax
	movl	8(%eax), %eax
	movl	$353, 36(%eax)
	.loc 1 88 0
	movl	target_flags@GOT(%ecx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	jne	.L89
	movl	target_flags@GOT(%ecx), %eax
	movl	(%eax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	jne	.L91
.L89:
	.loc 1 89 0
	movl	optab_table@GOT(%ecx), %eax
	movl	8(%eax), %eax
	movl	$356, 44(%eax)
.L91:
	.loc 1 90 0
	movl	target_flags@GOT(%ecx), %eax
	movl	(%eax), %eax
	andl	$256, %eax
	testl	%eax, %eax
	jne	.L92
	movl	target_flags@GOT(%ecx), %eax
	movl	(%eax), %eax
	andl	$131072, %eax
	testl	%eax, %eax
	jne	.L92
	.loc 1 91 0
	movl	optab_table@GOT(%ecx), %eax
	movl	20(%eax), %edx
	movl	optab_table@GOT(%ecx), %eax
	movl	16(%eax), %eax
	movl	$363, 132(%eax)
	movl	132(%eax), %eax
	movl	%eax, 132(%edx)
.L92:
	.loc 1 93 0
	movl	target_flags@GOT(%ecx), %eax
	movl	(%eax), %eax
	andl	$256, %eax
	testl	%eax, %eax
	jne	.L95
	.loc 1 94 0
	movl	optab_table@GOT(%ecx), %eax
	movl	20(%eax), %edx
	movl	optab_table@GOT(%ecx), %eax
	movl	16(%eax), %eax
	movl	$364, 124(%eax)
	movl	124(%eax), %eax
	movl	%eax, 124(%edx)
.L95:
	.loc 1 96 0
	movl	optab_table@GOT(%ecx), %eax
	movl	16(%eax), %eax
	movl	$365, 36(%eax)
	.loc 1 97 0
	movl	target_flags@GOT(%ecx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L97
	.loc 1 98 0
	movl	optab_table@GOT(%ecx), %eax
	movl	16(%eax), %eax
	movl	$371, 44(%eax)
.L97:
	.loc 1 99 0
	movl	optab_table@GOT(%ecx), %eax
	movl	32(%eax), %eax
	movl	$372, 44(%eax)
	.loc 1 100 0
	movl	optab_table@GOT(%ecx), %eax
	movl	36(%eax), %eax
	movl	$373, 44(%eax)
	.loc 1 101 0
	movl	optab_table@GOT(%ecx), %eax
	movl	24(%eax), %eax
	movl	$374, 36(%eax)
	.loc 1 102 0
	movl	optab_table@GOT(%ecx), %eax
	movl	28(%eax), %eax
	movl	$375, 36(%eax)
	.loc 1 103 0
	movl	optimize@GOT(%ecx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L99
	.loc 1 104 0
	movl	optab_table@GOT(%ecx), %eax
	movl	48(%eax), %eax
	movl	$376, 36(%eax)
.L99:
	.loc 1 105 0
	movl	target_flags@GOT(%ecx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L101
	movl	optimize@GOT(%ecx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L101
	.loc 1 106 0
	movl	optab_table@GOT(%ecx), %eax
	movl	48(%eax), %eax
	movl	$377, 44(%eax)
.L101:
	.loc 1 107 0
	movl	optimize@GOT(%ecx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L104
	.loc 1 108 0
	movl	optab_table@GOT(%ecx), %eax
	movl	56(%eax), %eax
	movl	$378, 36(%eax)
.L104:
	.loc 1 109 0
	movl	target_flags@GOT(%ecx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L106
	movl	optimize@GOT(%ecx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L106
	.loc 1 110 0
	movl	optab_table@GOT(%ecx), %eax
	movl	56(%eax), %eax
	movl	$379, 44(%eax)
.L106:
	.loc 1 111 0
	movl	optimize@GOT(%ecx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L109
	.loc 1 112 0
	movl	optab_table@GOT(%ecx), %eax
	movl	40(%eax), %eax
	movl	$381, 36(%eax)
.L109:
	.loc 1 113 0
	movl	target_flags@GOT(%ecx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L111
	movl	optimize@GOT(%ecx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L111
	.loc 1 114 0
	movl	optab_table@GOT(%ecx), %eax
	movl	40(%eax), %eax
	movl	$382, 44(%eax)
.L111:
	.loc 1 115 0
	movl	optimize@GOT(%ecx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L114
	.loc 1 116 0
	movl	optab_table@GOT(%ecx), %eax
	movl	60(%eax), %eax
	movl	$383, 36(%eax)
.L114:
	.loc 1 117 0
	movl	target_flags@GOT(%ecx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L116
	movl	optimize@GOT(%ecx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L116
	.loc 1 118 0
	movl	optab_table@GOT(%ecx), %eax
	movl	60(%eax), %eax
	movl	$384, 44(%eax)
.L116:
	.loc 1 119 0
	movl	optimize@GOT(%ecx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L119
	.loc 1 120 0
	movl	optab_table@GOT(%ecx), %eax
	movl	52(%eax), %eax
	movl	$385, 36(%eax)
.L119:
	.loc 1 121 0
	movl	target_flags@GOT(%ecx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L121
	movl	optimize@GOT(%ecx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L121
	.loc 1 122 0
	movl	optab_table@GOT(%ecx), %eax
	movl	52(%eax), %eax
	movl	$386, 44(%eax)
.L121:
	.loc 1 123 0
	movl	optimize@GOT(%ecx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L124
	.loc 1 124 0
	movl	optab_table@GOT(%ecx), %eax
	movl	64(%eax), %eax
	movl	$387, 36(%eax)
.L124:
	.loc 1 125 0
	movl	target_flags@GOT(%ecx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L126
	movl	optimize@GOT(%ecx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L126
	.loc 1 126 0
	movl	optab_table@GOT(%ecx), %eax
	movl	64(%eax), %eax
	movl	$388, 44(%eax)
.L126:
	.loc 1 127 0
	movl	target_flags@GOT(%ecx), %eax
	movl	(%eax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	jne	.L129
	.loc 1 128 0
	movl	optab_table@GOT(%ecx), %eax
	movl	128(%eax), %eax
	movl	$389, 44(%eax)
.L129:
	.loc 1 129 0
	movl	optab_table@GOT(%ecx), %eax
	movl	72(%eax), %eax
	movl	$391, 36(%eax)
	.loc 1 131 0
	movl	optab_table@GOT(%ecx), %eax
	movl	72(%eax), %eax
	movl	$392, 44(%eax)
	.loc 1 132 0
	movl	optab_table@GOT(%ecx), %eax
	movl	76(%eax), %eax
	movl	$394, 36(%eax)
	.loc 1 134 0
	movl	optab_table@GOT(%ecx), %eax
	movl	76(%eax), %eax
	movl	$395, 44(%eax)
	.loc 1 135 0
	movl	optab_table@GOT(%ecx), %eax
	movl	80(%eax), %eax
	movl	$397, 36(%eax)
	.loc 1 137 0
	movl	optab_table@GOT(%ecx), %eax
	movl	80(%eax), %eax
	movl	$398, 44(%eax)
	.loc 1 138 0
	movl	target_flags@GOT(%ecx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L131
	.loc 1 139 0
	movl	extendtab@GOT(%ecx), %eax
	movl	$401, 2196(%eax)
.L131:
	.loc 1 140 0
	movl	extendtab@GOT(%ecx), %eax
	movl	$402, 1756(%eax)
	.loc 1 141 0
	movl	target_flags@GOT(%ecx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L133
	.loc 1 142 0
	movl	extendtab@GOT(%ecx), %eax
	movl	$403, 2188(%eax)
.L133:
	.loc 1 143 0
	movl	extendtab@GOT(%ecx), %eax
	movl	$404, 1316(%eax)
	.loc 1 144 0
	movl	extendtab@GOT(%ecx), %eax
	movl	$405, 1748(%eax)
	.loc 1 145 0
	movl	target_flags@GOT(%ecx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L135
	.loc 1 146 0
	movl	extendtab@GOT(%ecx), %eax
	movl	$406, 2180(%eax)
.L135:
	.loc 1 147 0
	movl	target_flags@GOT(%ecx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L137
	.loc 1 148 0
	movl	extendtab@GOT(%ecx), %eax
	movl	$407, 2192(%eax)
.L137:
	.loc 1 149 0
	movl	target_flags@GOT(%ecx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L139
	.loc 1 150 0
	movl	extendtab@GOT(%ecx), %eax
	movl	$408, 2184(%eax)
.L139:
	.loc 1 151 0
	movl	extendtab@GOT(%ecx), %eax
	movl	$409, 1752(%eax)
	.loc 1 152 0
	movl	extendtab@GOT(%ecx), %eax
	movl	$410, 1312(%eax)
	.loc 1 153 0
	movl	extendtab@GOT(%ecx), %eax
	movl	$411, 1744(%eax)
	.loc 1 154 0
	movl	target_flags@GOT(%ecx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L141
	.loc 1 155 0
	movl	extendtab@GOT(%ecx), %eax
	movl	$412, 2176(%eax)
.L141:
	.loc 1 156 0
	movl	target_flags@GOT(%ecx), %eax
	movl	(%eax), %eax
	andl	$256, %eax
	testl	%eax, %eax
	jne	.L143
	movl	target_flags@GOT(%ecx), %eax
	movl	(%eax), %eax
	andl	$131072, %eax
	testl	%eax, %eax
	jne	.L143
	.loc 1 157 0
	movl	fixtrunctab@GOT(%ecx), %eax
	movl	$413, 6944(%eax)
.L143:
	.loc 1 158 0
	movl	target_flags@GOT(%ecx), %eax
	movl	(%eax), %eax
	andl	$256, %eax
	testl	%eax, %eax
	jne	.L146
	.loc 1 159 0
	movl	fixtrunctab@GOT(%ecx), %eax
	movl	$414, 6512(%eax)
.L146:
	.loc 1 160 0
	movl	target_flags@GOT(%ecx), %eax
	movl	(%eax), %eax
	andl	$256, %eax
	testl	%eax, %eax
	jne	.L148
	movl	target_flags@GOT(%ecx), %eax
	movl	(%eax), %eax
	andl	$131072, %eax
	testl	%eax, %eax
	jne	.L148
	.loc 1 161 0
	movl	fixtrunctab@GOT(%ecx), %eax
	movl	$415, 6948(%eax)
.L148:
	.loc 1 162 0
	movl	target_flags@GOT(%ecx), %eax
	movl	(%eax), %eax
	andl	$256, %eax
	testl	%eax, %eax
	jne	.L151
	movl	target_flags@GOT(%ecx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L151
	movl	target_flags@GOT(%ecx), %eax
	movl	(%eax), %eax
	andl	$131072, %eax
	testl	%eax, %eax
	jne	.L151
	.loc 1 163 0
	movl	fixtrunctab@GOT(%ecx), %eax
	movl	$416, 6956(%eax)
.L151:
	.loc 1 164 0
	movl	target_flags@GOT(%ecx), %eax
	movl	(%eax), %eax
	andl	$256, %eax
	testl	%eax, %eax
	jne	.L155
	.loc 1 165 0
	movl	fixtrunctab@GOT(%ecx), %eax
	movl	$417, 6516(%eax)
.L155:
	.loc 1 166 0
	movl	target_flags@GOT(%ecx), %eax
	movl	(%eax), %eax
	andl	$256, %eax
	testl	%eax, %eax
	jne	.L157
	movl	target_flags@GOT(%ecx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L157
	movl	target_flags@GOT(%ecx), %eax
	movl	(%eax), %eax
	andl	$131072, %eax
	testl	%eax, %eax
	jne	.L157
	.loc 1 167 0
	movl	fixtrunctab@GOT(%ecx), %eax
	movl	$418, 6524(%eax)
.L157:
	.loc 1 168 0
	movl	optab_table@GOT(%ecx), %eax
	movl	120(%eax), %eax
	movl	$422, 44(%eax)
	.loc 1 169 0
	movl	target_flags@GOT(%ecx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L161
	.loc 1 170 0
	movl	reload_in_optab@GOT(%ecx), %eax
	movl	$425, 20(%eax)
.L161:
	.loc 1 171 0
	movl	target_flags@GOT(%ecx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L163
	.loc 1 172 0
	movl	reload_out_optab@GOT(%ecx), %eax
	movl	$426, 20(%eax)
.L163:
	.loc 1 173 0
	movl	optab_table@GOT(%ecx), %eax
	movl	120(%eax), %eax
	movl	$428, 36(%eax)
	.loc 1 174 0
	movl	target_flags@GOT(%ecx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	jne	.L165
	movl	target_flags@GOT(%ecx), %eax
	movl	(%eax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	je	.L167
.L165:
	.loc 1 175 0
	movl	reload_out_optab@GOT(%ecx), %eax
	movl	$432, 16(%eax)
.L167:
	.loc 1 176 0
	movl	target_flags@GOT(%ecx), %eax
	movl	(%eax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	je	.L168
	.loc 1 177 0
	movl	reload_in_optab@GOT(%ecx), %eax
	movl	$433, 16(%eax)
.L168:
	.loc 1 178 0
	movl	mips_isa@GOT(%ecx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	je	.L170
	movl	mips_isa@GOT(%ecx), %eax
	movl	(%eax), %eax
	cmpl	$32, %eax
	je	.L170
	movl	mips_isa@GOT(%ecx), %eax
	movl	(%eax), %eax
	cmpl	$64, %eax
	jne	.L173
.L170:
	movl	target_flags@GOT(%ecx), %eax
	movl	(%eax), %eax
	andl	$256, %eax
	testl	%eax, %eax
	jne	.L173
	.loc 1 179 0
	movl	reload_in_optab@GOT(%ecx), %eax
	movl	$434, 212(%eax)
.L173:
	.loc 1 180 0
	movl	mips_isa@GOT(%ecx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	je	.L175
	movl	mips_isa@GOT(%ecx), %eax
	movl	(%eax), %eax
	cmpl	$32, %eax
	je	.L175
	movl	mips_isa@GOT(%ecx), %eax
	movl	(%eax), %eax
	cmpl	$64, %eax
	jne	.L178
.L175:
	movl	target_flags@GOT(%ecx), %eax
	movl	(%eax), %eax
	andl	$256, %eax
	testl	%eax, %eax
	jne	.L178
	.loc 1 181 0
	movl	reload_out_optab@GOT(%ecx), %eax
	movl	$435, 212(%eax)
.L178:
	.loc 1 182 0
	movl	optab_table@GOT(%ecx), %eax
	movl	120(%eax), %eax
	movl	$436, 28(%eax)
	.loc 1 183 0
	movl	optab_table@GOT(%ecx), %eax
	movl	120(%eax), %eax
	movl	$438, 20(%eax)
	.loc 1 184 0
	movl	optab_table@GOT(%ecx), %eax
	movl	120(%eax), %eax
	movl	$440, 124(%eax)
	.loc 1 185 0
	movl	optab_table@GOT(%ecx), %eax
	movl	120(%eax), %eax
	movl	$441, 132(%eax)
	.loc 1 186 0
	movl	target_flags@GOT(%ecx), %eax
	movl	(%eax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	jne	.L180
	.loc 1 187 0
	movl	movstr_optab@GOT(%ecx), %eax
	movl	$443, 16(%eax)
.L180:
	.loc 1 188 0
	movl	optab_table@GOT(%ecx), %eax
	movl	84(%eax), %eax
	movl	$444, 36(%eax)
	.loc 1 189 0
	movl	target_flags@GOT(%ecx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	jne	.L182
	movl	target_flags@GOT(%ecx), %eax
	movl	(%eax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	jne	.L184
.L182:
	.loc 1 190 0
	movl	optab_table@GOT(%ecx), %eax
	movl	84(%eax), %eax
	movl	$446, 44(%eax)
.L184:
	.loc 1 191 0
	movl	optab_table@GOT(%ecx), %eax
	movl	92(%eax), %eax
	movl	$452, 36(%eax)
	.loc 1 192 0
	movl	target_flags@GOT(%ecx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	jne	.L185
	movl	target_flags@GOT(%ecx), %eax
	movl	(%eax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	jne	.L187
.L185:
	.loc 1 193 0
	movl	optab_table@GOT(%ecx), %eax
	movl	92(%eax), %eax
	movl	$454, 44(%eax)
.L187:
	.loc 1 194 0
	movl	optab_table@GOT(%ecx), %eax
	movl	88(%eax), %eax
	movl	$460, 36(%eax)
	.loc 1 195 0
	movl	target_flags@GOT(%ecx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	jne	.L188
	movl	target_flags@GOT(%ecx), %eax
	movl	(%eax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	jne	.L190
.L188:
	.loc 1 196 0
	movl	optab_table@GOT(%ecx), %eax
	movl	88(%eax), %eax
	movl	$463, 44(%eax)
.L190:
	.loc 1 197 0
	movl	optab_table@GOT(%ecx), %eax
	movl	172(%eax), %eax
	movl	$469, 36(%eax)
	.loc 1 198 0
	movl	optab_table@GOT(%ecx), %eax
	movl	180(%eax), %eax
	movl	$470, 36(%eax)
	.loc 1 199 0
	movl	target_flags@GOT(%ecx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L191
	.loc 1 200 0
	movl	optab_table@GOT(%ecx), %eax
	movl	172(%eax), %eax
	movl	$471, 44(%eax)
.L191:
	.loc 1 201 0
	movl	target_flags@GOT(%ecx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L193
	.loc 1 202 0
	movl	optab_table@GOT(%ecx), %eax
	movl	180(%eax), %eax
	movl	$472, 44(%eax)
.L193:
	.loc 1 203 0
	movl	target_flags@GOT(%ecx), %eax
	movl	(%eax), %eax
	andl	$256, %eax
	testl	%eax, %eax
	jne	.L195
	movl	target_flags@GOT(%ecx), %eax
	movl	(%eax), %eax
	andl	$131072, %eax
	testl	%eax, %eax
	jne	.L195
	.loc 1 204 0
	movl	optab_table@GOT(%ecx), %eax
	movl	172(%eax), %eax
	movl	$473, 132(%eax)
.L195:
	.loc 1 205 0
	movl	target_flags@GOT(%ecx), %eax
	movl	(%eax), %eax
	andl	$256, %eax
	testl	%eax, %eax
	jne	.L198
	.loc 1 206 0
	movl	optab_table@GOT(%ecx), %eax
	movl	172(%eax), %eax
	movl	$474, 124(%eax)
.L198:
	.loc 1 207 0
	movl	bcc_gen_fctn@GOT(%ecx), %edx
	movl	gen_bunordered@GOT(%ecx), %eax
	movl	%eax, 488(%edx)
	.loc 1 208 0
	movl	bcc_gen_fctn@GOT(%ecx), %edx
	movl	gen_bordered@GOT(%ecx), %eax
	movl	%eax, 492(%edx)
	.loc 1 209 0
	movl	bcc_gen_fctn@GOT(%ecx), %edx
	movl	gen_bunlt@GOT(%ecx), %eax
	movl	%eax, 512(%edx)
	.loc 1 210 0
	movl	bcc_gen_fctn@GOT(%ecx), %edx
	movl	gen_bunge@GOT(%ecx), %eax
	movl	%eax, 500(%edx)
	.loc 1 211 0
	movl	bcc_gen_fctn@GOT(%ecx), %edx
	movl	gen_buneq@GOT(%ecx), %eax
	movl	%eax, 496(%edx)
	.loc 1 212 0
	movl	bcc_gen_fctn@GOT(%ecx), %edx
	movl	gen_bltgt@GOT(%ecx), %eax
	movl	%eax, 516(%edx)
	.loc 1 213 0
	movl	bcc_gen_fctn@GOT(%ecx), %edx
	movl	gen_bunle@GOT(%ecx), %eax
	movl	%eax, 508(%edx)
	.loc 1 214 0
	movl	bcc_gen_fctn@GOT(%ecx), %edx
	movl	gen_bungt@GOT(%ecx), %eax
	movl	%eax, 504(%edx)
	.loc 1 215 0
	movl	bcc_gen_fctn@GOT(%ecx), %edx
	movl	gen_beq@GOT(%ecx), %eax
	movl	%eax, 452(%edx)
	.loc 1 216 0
	movl	bcc_gen_fctn@GOT(%ecx), %edx
	movl	gen_bne@GOT(%ecx), %eax
	movl	%eax, 448(%edx)
	.loc 1 217 0
	movl	bcc_gen_fctn@GOT(%ecx), %edx
	movl	gen_bgt@GOT(%ecx), %eax
	movl	%eax, 460(%edx)
	.loc 1 218 0
	movl	bcc_gen_fctn@GOT(%ecx), %edx
	movl	gen_bge@GOT(%ecx), %eax
	movl	%eax, 456(%edx)
	.loc 1 219 0
	movl	bcc_gen_fctn@GOT(%ecx), %edx
	movl	gen_blt@GOT(%ecx), %eax
	movl	%eax, 468(%edx)
	.loc 1 220 0
	movl	bcc_gen_fctn@GOT(%ecx), %edx
	movl	gen_ble@GOT(%ecx), %eax
	movl	%eax, 464(%edx)
	.loc 1 221 0
	movl	bcc_gen_fctn@GOT(%ecx), %edx
	movl	gen_bgtu@GOT(%ecx), %eax
	movl	%eax, 476(%edx)
	.loc 1 222 0
	movl	bcc_gen_fctn@GOT(%ecx), %edx
	movl	gen_bgeu@GOT(%ecx), %eax
	movl	%eax, 472(%edx)
	.loc 1 223 0
	movl	bcc_gen_fctn@GOT(%ecx), %edx
	movl	gen_bltu@GOT(%ecx), %eax
	movl	%eax, 484(%edx)
	.loc 1 224 0
	movl	bcc_gen_fctn@GOT(%ecx), %edx
	movl	gen_bleu@GOT(%ecx), %eax
	movl	%eax, 480(%edx)
	.loc 1 225 0
	movl	setcc_gen_code@GOT(%ecx), %eax
	movl	$493, 452(%eax)
	.loc 1 226 0
	movl	target_flags@GOT(%ecx), %eax
	movl	(%eax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	jne	.L200
	.loc 1 227 0
	movl	setcc_gen_code@GOT(%ecx), %eax
	movl	$494, 448(%eax)
.L200:
	.loc 1 228 0
	movl	setcc_gen_code@GOT(%ecx), %eax
	movl	$495, 460(%eax)
	.loc 1 229 0
	movl	setcc_gen_code@GOT(%ecx), %eax
	movl	$496, 456(%eax)
	.loc 1 230 0
	movl	setcc_gen_code@GOT(%ecx), %eax
	movl	$497, 468(%eax)
	.loc 1 231 0
	movl	setcc_gen_code@GOT(%ecx), %eax
	movl	$498, 464(%eax)
	.loc 1 232 0
	movl	setcc_gen_code@GOT(%ecx), %eax
	movl	$499, 476(%eax)
	.loc 1 233 0
	movl	setcc_gen_code@GOT(%ecx), %eax
	movl	$500, 472(%eax)
	.loc 1 234 0
	movl	setcc_gen_code@GOT(%ecx), %eax
	movl	$501, 484(%eax)
	.loc 1 235 0
	movl	setcc_gen_code@GOT(%ecx), %eax
	movl	$502, 480(%eax)
	.loc 1 236 0
	movl	mips_isa@GOT(%ecx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	je	.L202
	movl	mips_isa@GOT(%ecx), %eax
	movl	(%eax), %eax
	cmpl	$32, %eax
	je	.L202
	movl	mips_isa@GOT(%ecx), %eax
	movl	(%eax), %eax
	cmpl	$64, %eax
	jne	.L205
.L202:
	movl	mips_arch@GOT(%ecx), %eax
	movl	(%eax), %eax
	cmpl	$13, %eax
	je	.L205
	movl	target_flags@GOT(%ecx), %eax
	movl	(%eax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	jne	.L205
	.loc 1 237 0
	movl	movcc_gen_code@GOT(%ecx), %eax
	movl	$525, 16(%eax)
.L205:
	.loc 1 238 0
	movl	mips_isa@GOT(%ecx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	je	.L208
	movl	mips_isa@GOT(%ecx), %eax
	movl	(%eax), %eax
	cmpl	$32, %eax
	je	.L208
	movl	mips_isa@GOT(%ecx), %eax
	movl	(%eax), %eax
	cmpl	$64, %eax
	jne	.L211
.L208:
	movl	mips_arch@GOT(%ecx), %eax
	movl	(%eax), %eax
	cmpl	$13, %eax
	je	.L211
	movl	target_flags@GOT(%ecx), %eax
	movl	(%eax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	jne	.L211
	movl	target_flags@GOT(%ecx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L211
	.loc 1 239 0
	movl	movcc_gen_code@GOT(%ecx), %eax
	movl	$526, 20(%eax)
.L211:
	.loc 1 240 0
	movl	mips_isa@GOT(%ecx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	je	.L215
	movl	mips_isa@GOT(%ecx), %eax
	movl	(%eax), %eax
	cmpl	$32, %eax
	je	.L215
	movl	mips_isa@GOT(%ecx), %eax
	movl	(%eax), %eax
	cmpl	$64, %eax
	jne	.L218
.L215:
	movl	mips_arch@GOT(%ecx), %eax
	movl	(%eax), %eax
	cmpl	$13, %eax
	je	.L218
	movl	target_flags@GOT(%ecx), %eax
	movl	(%eax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	jne	.L218
	movl	target_flags@GOT(%ecx), %eax
	movl	(%eax), %eax
	andl	$256, %eax
	testl	%eax, %eax
	jne	.L218
	.loc 1 241 0
	movl	movcc_gen_code@GOT(%ecx), %eax
	movl	$527, 60(%eax)
.L218:
	.loc 1 242 0
	movl	mips_isa@GOT(%ecx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	je	.L222
	movl	mips_isa@GOT(%ecx), %eax
	movl	(%eax), %eax
	cmpl	$32, %eax
	je	.L222
	movl	mips_isa@GOT(%ecx), %eax
	movl	(%eax), %eax
	cmpl	$64, %eax
	jne	.L230
.L222:
	movl	mips_arch@GOT(%ecx), %eax
	movl	(%eax), %eax
	cmpl	$13, %eax
	je	.L230
	movl	target_flags@GOT(%ecx), %eax
	movl	(%eax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	jne	.L230
	movl	target_flags@GOT(%ecx), %eax
	movl	(%eax), %eax
	andl	$256, %eax
	testl	%eax, %eax
	jne	.L230
	movl	target_flags@GOT(%ecx), %eax
	movl	(%eax), %eax
	andl	$131072, %eax
	testl	%eax, %eax
	jne	.L230
	.loc 1 243 0
	movl	movcc_gen_code@GOT(%ecx), %eax
	movl	$528, 64(%eax)
.L230:
	.loc 1 244 0
	popl	%ebp
	ret
.LFE15:
	.size	init_all_optabs, .-init_all_optabs
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
	.file 2 "../../../kg++fe/gnu/MIPS/mips.h"
	.file 3 "../../../kg++fe/gnu/flags.h"
	.file 4 "../../../kg++fe/gnu/optabs.h"
	.file 5 "../../../kg++fe/gnu/rtl.h"
	.file 6 "../../../kg++fe/gnu/MIPS/insn-codes.h"
	.file 7 "../../../kg++fe/gnu/MIPS/config.h"
	.file 8 "../../../kg++fe/gnu/machmode.h"
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
	.section	.debug_info
	.long	0x34be
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.Ldebug_line0
	.long	.Letext0
	.long	.Ltext0
	.string	"GNU C 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.byte	0x1
	.string	"../../../kg++fe/gnu/MIPS/insn-opinit.c"
	.string	"/usa/handong/simplnano/cmplr-open64-merge/targia32_sl1/g++fe/gnu"
	.uleb128 0x2
	.string	"rtx"
	.byte	0x7
	.byte	0xc
	.long	0xb0
	.uleb128 0x3
	.byte	0x4
	.long	0xb6
	.uleb128 0x4
	.long	0x1a6
	.string	"rtx_def"
	.byte	0xc
	.byte	0x7
	.byte	0xb
	.uleb128 0x5
	.string	"code"
	.byte	0x5
	.byte	0x84
	.long	0x68c
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"mode"
	.byte	0x5
	.byte	0x87
	.long	0x443
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"jump"
	.byte	0x5
	.byte	0x8e
	.long	0x3a6
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"call"
	.byte	0x5
	.byte	0x91
	.long	0x3a6
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"unchanging"
	.byte	0x5
	.byte	0x99
	.long	0x3a6
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"volatil"
	.byte	0x5
	.byte	0xa2
	.long	0x3a6
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"in_struct"
	.byte	0x5
	.byte	0xb4
	.long	0x3a6
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"used"
	.byte	0x5
	.byte	0xbb
	.long	0x3a6
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"integrated"
	.byte	0x5
	.byte	0xc0
	.long	0x3a6
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"frame_related"
	.byte	0x5
	.byte	0xc9
	.long	0x3a6
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"fld"
	.byte	0x5
	.byte	0xce
	.long	0x10e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"rtvec"
	.byte	0x7
	.byte	0xe
	.long	0x1b3
	.uleb128 0x3
	.byte	0x4
	.long	0x1b9
	.uleb128 0x4
	.long	0x1ee
	.string	"rtvec_def"
	.byte	0x8
	.byte	0x7
	.byte	0xd
	.uleb128 0x6
	.string	"num_elem"
	.byte	0x5
	.byte	0xf2
	.long	0x39f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"elem"
	.byte	0x5
	.byte	0xf3
	.long	0x10f8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"tree"
	.byte	0x7
	.byte	0x10
	.long	0x1fa
	.uleb128 0x3
	.byte	0x4
	.long	0x200
	.uleb128 0x7
	.string	"tree_node"
	.byte	0x1
	.uleb128 0x8
	.long	0x38c
	.string	"processor_type"
	.byte	0x4
	.byte	0x2
	.byte	0x3b
	.uleb128 0x9
	.string	"PROCESSOR_DEFAULT"
	.sleb128 0
	.uleb128 0x9
	.string	"PROCESSOR_R3000"
	.sleb128 1
	.uleb128 0x9
	.string	"PROCESSOR_R3900"
	.sleb128 2
	.uleb128 0x9
	.string	"PROCESSOR_R6000"
	.sleb128 3
	.uleb128 0x9
	.string	"PROCESSOR_R4000"
	.sleb128 4
	.uleb128 0x9
	.string	"PROCESSOR_R4100"
	.sleb128 5
	.uleb128 0x9
	.string	"PROCESSOR_R4111"
	.sleb128 6
	.uleb128 0x9
	.string	"PROCESSOR_R4120"
	.sleb128 7
	.uleb128 0x9
	.string	"PROCESSOR_R4300"
	.sleb128 8
	.uleb128 0x9
	.string	"PROCESSOR_R4600"
	.sleb128 9
	.uleb128 0x9
	.string	"PROCESSOR_R4650"
	.sleb128 10
	.uleb128 0x9
	.string	"PROCESSOR_R5000"
	.sleb128 11
	.uleb128 0x9
	.string	"PROCESSOR_R5400"
	.sleb128 12
	.uleb128 0x9
	.string	"PROCESSOR_R5500"
	.sleb128 13
	.uleb128 0x9
	.string	"PROCESSOR_R8000"
	.sleb128 14
	.uleb128 0x9
	.string	"PROCESSOR_R4KC"
	.sleb128 15
	.uleb128 0x9
	.string	"PROCESSOR_R5KC"
	.sleb128 16
	.uleb128 0x9
	.string	"PROCESSOR_R20KC"
	.sleb128 17
	.uleb128 0x9
	.string	"PROCESSOR_SR71000"
	.sleb128 18
	.uleb128 0x9
	.string	"PROCESSOR_SB1"
	.sleb128 19
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x392
	.uleb128 0xa
	.long	0x397
	.uleb128 0xb
	.string	"char"
	.byte	0x1
	.byte	0x8
	.uleb128 0xb
	.string	"int"
	.byte	0x4
	.byte	0x5
	.uleb128 0xc
	.long	.LASF0
	.byte	0x4
	.byte	0x7
	.uleb128 0xc
	.long	.LASF0
	.byte	0x4
	.byte	0x7
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
	.uleb128 0xb
	.string	"long int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x8
	.long	0x68c
	.string	"machine_mode"
	.byte	0x4
	.byte	0x8
	.byte	0x1d
	.uleb128 0x9
	.string	"VOIDmode"
	.sleb128 0
	.uleb128 0x9
	.string	"BImode"
	.sleb128 1
	.uleb128 0x9
	.string	"QImode"
	.sleb128 2
	.uleb128 0x9
	.string	"HImode"
	.sleb128 3
	.uleb128 0x9
	.string	"SImode"
	.sleb128 4
	.uleb128 0x9
	.string	"DImode"
	.sleb128 5
	.uleb128 0x9
	.string	"TImode"
	.sleb128 6
	.uleb128 0x9
	.string	"OImode"
	.sleb128 7
	.uleb128 0x9
	.string	"PQImode"
	.sleb128 8
	.uleb128 0x9
	.string	"PHImode"
	.sleb128 9
	.uleb128 0x9
	.string	"PSImode"
	.sleb128 10
	.uleb128 0x9
	.string	"PDImode"
	.sleb128 11
	.uleb128 0x9
	.string	"QFmode"
	.sleb128 12
	.uleb128 0x9
	.string	"HFmode"
	.sleb128 13
	.uleb128 0x9
	.string	"TQFmode"
	.sleb128 14
	.uleb128 0x9
	.string	"SFmode"
	.sleb128 15
	.uleb128 0x9
	.string	"DFmode"
	.sleb128 16
	.uleb128 0x9
	.string	"XFmode"
	.sleb128 17
	.uleb128 0x9
	.string	"TFmode"
	.sleb128 18
	.uleb128 0x9
	.string	"QCmode"
	.sleb128 19
	.uleb128 0x9
	.string	"HCmode"
	.sleb128 20
	.uleb128 0x9
	.string	"SCmode"
	.sleb128 21
	.uleb128 0x9
	.string	"DCmode"
	.sleb128 22
	.uleb128 0x9
	.string	"XCmode"
	.sleb128 23
	.uleb128 0x9
	.string	"TCmode"
	.sleb128 24
	.uleb128 0x9
	.string	"CQImode"
	.sleb128 25
	.uleb128 0x9
	.string	"CHImode"
	.sleb128 26
	.uleb128 0x9
	.string	"CSImode"
	.sleb128 27
	.uleb128 0x9
	.string	"CDImode"
	.sleb128 28
	.uleb128 0x9
	.string	"CTImode"
	.sleb128 29
	.uleb128 0x9
	.string	"COImode"
	.sleb128 30
	.uleb128 0x9
	.string	"V1DImode"
	.sleb128 31
	.uleb128 0x9
	.string	"V2QImode"
	.sleb128 32
	.uleb128 0x9
	.string	"V2HImode"
	.sleb128 33
	.uleb128 0x9
	.string	"V2SImode"
	.sleb128 34
	.uleb128 0x9
	.string	"V2DImode"
	.sleb128 35
	.uleb128 0x9
	.string	"V4QImode"
	.sleb128 36
	.uleb128 0x9
	.string	"V4HImode"
	.sleb128 37
	.uleb128 0x9
	.string	"V4SImode"
	.sleb128 38
	.uleb128 0x9
	.string	"V4DImode"
	.sleb128 39
	.uleb128 0x9
	.string	"V8QImode"
	.sleb128 40
	.uleb128 0x9
	.string	"V8HImode"
	.sleb128 41
	.uleb128 0x9
	.string	"V8SImode"
	.sleb128 42
	.uleb128 0x9
	.string	"V8DImode"
	.sleb128 43
	.uleb128 0x9
	.string	"V16QImode"
	.sleb128 44
	.uleb128 0x9
	.string	"V2SFmode"
	.sleb128 45
	.uleb128 0x9
	.string	"V2DFmode"
	.sleb128 46
	.uleb128 0x9
	.string	"V4SFmode"
	.sleb128 47
	.uleb128 0x9
	.string	"V4DFmode"
	.sleb128 48
	.uleb128 0x9
	.string	"V8SFmode"
	.sleb128 49
	.uleb128 0x9
	.string	"V8DFmode"
	.sleb128 50
	.uleb128 0x9
	.string	"V16SFmode"
	.sleb128 51
	.uleb128 0x9
	.string	"BLKmode"
	.sleb128 52
	.uleb128 0x9
	.string	"CCmode"
	.sleb128 53
	.uleb128 0x9
	.string	"MAX_MACHINE_MODE"
	.sleb128 54
	.byte	0x0
	.uleb128 0x8
	.long	0xe5b
	.string	"rtx_code"
	.byte	0x4
	.byte	0x5
	.byte	0x29
	.uleb128 0x9
	.string	"UNKNOWN"
	.sleb128 0
	.uleb128 0x9
	.string	"NIL"
	.sleb128 1
	.uleb128 0x9
	.string	"INCLUDE"
	.sleb128 2
	.uleb128 0x9
	.string	"EXPR_LIST"
	.sleb128 3
	.uleb128 0x9
	.string	"INSN_LIST"
	.sleb128 4
	.uleb128 0x9
	.string	"MATCH_OPERAND"
	.sleb128 5
	.uleb128 0x9
	.string	"MATCH_SCRATCH"
	.sleb128 6
	.uleb128 0x9
	.string	"MATCH_DUP"
	.sleb128 7
	.uleb128 0x9
	.string	"MATCH_OPERATOR"
	.sleb128 8
	.uleb128 0x9
	.string	"MATCH_PARALLEL"
	.sleb128 9
	.uleb128 0x9
	.string	"MATCH_OP_DUP"
	.sleb128 10
	.uleb128 0x9
	.string	"MATCH_PAR_DUP"
	.sleb128 11
	.uleb128 0x9
	.string	"MATCH_INSN"
	.sleb128 12
	.uleb128 0x9
	.string	"DEFINE_INSN"
	.sleb128 13
	.uleb128 0x9
	.string	"DEFINE_PEEPHOLE"
	.sleb128 14
	.uleb128 0x9
	.string	"DEFINE_SPLIT"
	.sleb128 15
	.uleb128 0x9
	.string	"DEFINE_INSN_AND_SPLIT"
	.sleb128 16
	.uleb128 0x9
	.string	"DEFINE_PEEPHOLE2"
	.sleb128 17
	.uleb128 0x9
	.string	"DEFINE_COMBINE"
	.sleb128 18
	.uleb128 0x9
	.string	"DEFINE_EXPAND"
	.sleb128 19
	.uleb128 0x9
	.string	"DEFINE_DELAY"
	.sleb128 20
	.uleb128 0x9
	.string	"DEFINE_FUNCTION_UNIT"
	.sleb128 21
	.uleb128 0x9
	.string	"DEFINE_ASM_ATTRIBUTES"
	.sleb128 22
	.uleb128 0x9
	.string	"DEFINE_COND_EXEC"
	.sleb128 23
	.uleb128 0x9
	.string	"SEQUENCE"
	.sleb128 24
	.uleb128 0x9
	.string	"ADDRESS"
	.sleb128 25
	.uleb128 0x9
	.string	"DEFINE_CPU_UNIT"
	.sleb128 26
	.uleb128 0x9
	.string	"DEFINE_QUERY_CPU_UNIT"
	.sleb128 27
	.uleb128 0x9
	.string	"EXCLUSION_SET"
	.sleb128 28
	.uleb128 0x9
	.string	"PRESENCE_SET"
	.sleb128 29
	.uleb128 0x9
	.string	"ABSENCE_SET"
	.sleb128 30
	.uleb128 0x9
	.string	"DEFINE_BYPASS"
	.sleb128 31
	.uleb128 0x9
	.string	"DEFINE_AUTOMATON"
	.sleb128 32
	.uleb128 0x9
	.string	"AUTOMATA_OPTION"
	.sleb128 33
	.uleb128 0x9
	.string	"DEFINE_RESERVATION"
	.sleb128 34
	.uleb128 0x9
	.string	"DEFINE_INSN_RESERVATION"
	.sleb128 35
	.uleb128 0x9
	.string	"DEFINE_ATTR"
	.sleb128 36
	.uleb128 0x9
	.string	"ATTR"
	.sleb128 37
	.uleb128 0x9
	.string	"SET_ATTR"
	.sleb128 38
	.uleb128 0x9
	.string	"SET_ATTR_ALTERNATIVE"
	.sleb128 39
	.uleb128 0x9
	.string	"EQ_ATTR"
	.sleb128 40
	.uleb128 0x9
	.string	"ATTR_FLAG"
	.sleb128 41
	.uleb128 0x9
	.string	"INSN"
	.sleb128 42
	.uleb128 0x9
	.string	"JUMP_INSN"
	.sleb128 43
	.uleb128 0x9
	.string	"CALL_INSN"
	.sleb128 44
	.uleb128 0x9
	.string	"BARRIER"
	.sleb128 45
	.uleb128 0x9
	.string	"CODE_LABEL"
	.sleb128 46
	.uleb128 0x9
	.string	"NOTE"
	.sleb128 47
	.uleb128 0x9
	.string	"COND_EXEC"
	.sleb128 48
	.uleb128 0x9
	.string	"PARALLEL"
	.sleb128 49
	.uleb128 0x9
	.string	"ASM_INPUT"
	.sleb128 50
	.uleb128 0x9
	.string	"ASM_OPERANDS"
	.sleb128 51
	.uleb128 0x9
	.string	"UNSPEC"
	.sleb128 52
	.uleb128 0x9
	.string	"UNSPEC_VOLATILE"
	.sleb128 53
	.uleb128 0x9
	.string	"ADDR_VEC"
	.sleb128 54
	.uleb128 0x9
	.string	"ADDR_DIFF_VEC"
	.sleb128 55
	.uleb128 0x9
	.string	"PREFETCH"
	.sleb128 56
	.uleb128 0x9
	.string	"SET"
	.sleb128 57
	.uleb128 0x9
	.string	"USE"
	.sleb128 58
	.uleb128 0x9
	.string	"CLOBBER"
	.sleb128 59
	.uleb128 0x9
	.string	"CALL"
	.sleb128 60
	.uleb128 0x9
	.string	"RETURN"
	.sleb128 61
	.uleb128 0x9
	.string	"TRAP_IF"
	.sleb128 62
	.uleb128 0x9
	.string	"RESX"
	.sleb128 63
	.uleb128 0x9
	.string	"CONST_INT"
	.sleb128 64
	.uleb128 0x9
	.string	"CONST_DOUBLE"
	.sleb128 65
	.uleb128 0x9
	.string	"CONST_VECTOR"
	.sleb128 66
	.uleb128 0x9
	.string	"CONST_STRING"
	.sleb128 67
	.uleb128 0x9
	.string	"CONST"
	.sleb128 68
	.uleb128 0x9
	.string	"PC"
	.sleb128 69
	.uleb128 0x9
	.string	"VALUE"
	.sleb128 70
	.uleb128 0x9
	.string	"REG"
	.sleb128 71
	.uleb128 0x9
	.string	"SCRATCH"
	.sleb128 72
	.uleb128 0x9
	.string	"SUBREG"
	.sleb128 73
	.uleb128 0x9
	.string	"STRICT_LOW_PART"
	.sleb128 74
	.uleb128 0x9
	.string	"CONCAT"
	.sleb128 75
	.uleb128 0x9
	.string	"MEM"
	.sleb128 76
	.uleb128 0x9
	.string	"LABEL_REF"
	.sleb128 77
	.uleb128 0x9
	.string	"SYMBOL_REF"
	.sleb128 78
	.uleb128 0x9
	.string	"CC0"
	.sleb128 79
	.uleb128 0x9
	.string	"ADDRESSOF"
	.sleb128 80
	.uleb128 0x9
	.string	"QUEUED"
	.sleb128 81
	.uleb128 0x9
	.string	"IF_THEN_ELSE"
	.sleb128 82
	.uleb128 0x9
	.string	"COND"
	.sleb128 83
	.uleb128 0x9
	.string	"COMPARE"
	.sleb128 84
	.uleb128 0x9
	.string	"PLUS"
	.sleb128 85
	.uleb128 0x9
	.string	"MINUS"
	.sleb128 86
	.uleb128 0x9
	.string	"NEG"
	.sleb128 87
	.uleb128 0x9
	.string	"MULT"
	.sleb128 88
	.uleb128 0x9
	.string	"DIV"
	.sleb128 89
	.uleb128 0x9
	.string	"MOD"
	.sleb128 90
	.uleb128 0x9
	.string	"UDIV"
	.sleb128 91
	.uleb128 0x9
	.string	"UMOD"
	.sleb128 92
	.uleb128 0x9
	.string	"AND"
	.sleb128 93
	.uleb128 0x9
	.string	"IOR"
	.sleb128 94
	.uleb128 0x9
	.string	"XOR"
	.sleb128 95
	.uleb128 0x9
	.string	"NOT"
	.sleb128 96
	.uleb128 0x9
	.string	"ASHIFT"
	.sleb128 97
	.uleb128 0x9
	.string	"ROTATE"
	.sleb128 98
	.uleb128 0x9
	.string	"ASHIFTRT"
	.sleb128 99
	.uleb128 0x9
	.string	"LSHIFTRT"
	.sleb128 100
	.uleb128 0x9
	.string	"ROTATERT"
	.sleb128 101
	.uleb128 0x9
	.string	"SMIN"
	.sleb128 102
	.uleb128 0x9
	.string	"SMAX"
	.sleb128 103
	.uleb128 0x9
	.string	"UMIN"
	.sleb128 104
	.uleb128 0x9
	.string	"UMAX"
	.sleb128 105
	.uleb128 0x9
	.string	"PRE_DEC"
	.sleb128 106
	.uleb128 0x9
	.string	"PRE_INC"
	.sleb128 107
	.uleb128 0x9
	.string	"POST_DEC"
	.sleb128 108
	.uleb128 0x9
	.string	"POST_INC"
	.sleb128 109
	.uleb128 0x9
	.string	"PRE_MODIFY"
	.sleb128 110
	.uleb128 0x9
	.string	"POST_MODIFY"
	.sleb128 111
	.uleb128 0x9
	.string	"NE"
	.sleb128 112
	.uleb128 0x9
	.string	"EQ"
	.sleb128 113
	.uleb128 0x9
	.string	"GE"
	.sleb128 114
	.uleb128 0x9
	.string	"GT"
	.sleb128 115
	.uleb128 0x9
	.string	"LE"
	.sleb128 116
	.uleb128 0x9
	.string	"LT"
	.sleb128 117
	.uleb128 0x9
	.string	"GEU"
	.sleb128 118
	.uleb128 0x9
	.string	"GTU"
	.sleb128 119
	.uleb128 0x9
	.string	"LEU"
	.sleb128 120
	.uleb128 0x9
	.string	"LTU"
	.sleb128 121
	.uleb128 0x9
	.string	"UNORDERED"
	.sleb128 122
	.uleb128 0x9
	.string	"ORDERED"
	.sleb128 123
	.uleb128 0x9
	.string	"UNEQ"
	.sleb128 124
	.uleb128 0x9
	.string	"UNGE"
	.sleb128 125
	.uleb128 0x9
	.string	"UNGT"
	.sleb128 126
	.uleb128 0x9
	.string	"UNLE"
	.sleb128 127
	.uleb128 0x9
	.string	"UNLT"
	.sleb128 128
	.uleb128 0x9
	.string	"LTGT"
	.sleb128 129
	.uleb128 0x9
	.string	"SIGN_EXTEND"
	.sleb128 130
	.uleb128 0x9
	.string	"ZERO_EXTEND"
	.sleb128 131
	.uleb128 0x9
	.string	"TRUNCATE"
	.sleb128 132
	.uleb128 0x9
	.string	"FLOAT_EXTEND"
	.sleb128 133
	.uleb128 0x9
	.string	"FLOAT_TRUNCATE"
	.sleb128 134
	.uleb128 0x9
	.string	"FLOAT"
	.sleb128 135
	.uleb128 0x9
	.string	"FIX"
	.sleb128 136
	.uleb128 0x9
	.string	"UNSIGNED_FLOAT"
	.sleb128 137
	.uleb128 0x9
	.string	"UNSIGNED_FIX"
	.sleb128 138
	.uleb128 0x9
	.string	"ABS"
	.sleb128 139
	.uleb128 0x9
	.string	"SQRT"
	.sleb128 140
	.uleb128 0x9
	.string	"FFS"
	.sleb128 141
	.uleb128 0x9
	.string	"SIGN_EXTRACT"
	.sleb128 142
	.uleb128 0x9
	.string	"ZERO_EXTRACT"
	.sleb128 143
	.uleb128 0x9
	.string	"HIGH"
	.sleb128 144
	.uleb128 0x9
	.string	"LO_SUM"
	.sleb128 145
	.uleb128 0x9
	.string	"RANGE_INFO"
	.sleb128 146
	.uleb128 0x9
	.string	"RANGE_REG"
	.sleb128 147
	.uleb128 0x9
	.string	"RANGE_VAR"
	.sleb128 148
	.uleb128 0x9
	.string	"RANGE_LIVE"
	.sleb128 149
	.uleb128 0x9
	.string	"CONSTANT_P_RTX"
	.sleb128 150
	.uleb128 0x9
	.string	"CALL_PLACEHOLDER"
	.sleb128 151
	.uleb128 0x9
	.string	"VEC_MERGE"
	.sleb128 152
	.uleb128 0x9
	.string	"VEC_SELECT"
	.sleb128 153
	.uleb128 0x9
	.string	"VEC_CONCAT"
	.sleb128 154
	.uleb128 0x9
	.string	"VEC_DUPLICATE"
	.sleb128 155
	.uleb128 0x9
	.string	"SS_PLUS"
	.sleb128 156
	.uleb128 0x9
	.string	"US_PLUS"
	.sleb128 157
	.uleb128 0x9
	.string	"SS_MINUS"
	.sleb128 158
	.uleb128 0x9
	.string	"US_MINUS"
	.sleb128 159
	.uleb128 0x9
	.string	"SS_TRUNCATE"
	.sleb128 160
	.uleb128 0x9
	.string	"US_TRUNCATE"
	.sleb128 161
	.uleb128 0x9
	.string	"PHI"
	.sleb128 162
	.uleb128 0x9
	.string	"LAST_AND_UNUSED_RTX_CODE"
	.sleb128 163
	.byte	0x0
	.uleb128 0xd
	.long	0xf35
	.byte	0x4
	.byte	0x5
	.byte	0x47
	.uleb128 0x5
	.string	"min_align"
	.byte	0x5
	.byte	0x49
	.long	0x3a6
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"base_after_vec"
	.byte	0x5
	.byte	0x4b
	.long	0x3a6
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"min_after_vec"
	.byte	0x5
	.byte	0x4c
	.long	0x3a6
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"max_after_vec"
	.byte	0x5
	.byte	0x4e
	.long	0x3a6
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"min_after_base"
	.byte	0x5
	.byte	0x50
	.long	0x3a6
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"max_after_base"
	.byte	0x5
	.byte	0x52
	.long	0x3a6
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"offset_unsigned"
	.byte	0x5
	.byte	0x55
	.long	0x3a6
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"scale"
	.byte	0x5
	.byte	0x57
	.long	0x3a6
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x2
	.string	"addr_diff_vec_flags"
	.byte	0x5
	.byte	0x58
	.long	0xe5b
	.uleb128 0xe
	.long	0xfac
	.long	.LASF1
	.byte	0x18
	.byte	0x5
	.byte	0x62
	.uleb128 0x6
	.string	"alias"
	.byte	0x5
	.byte	0x63
	.long	0x40c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"expr"
	.byte	0x5
	.byte	0x64
	.long	0x1ee
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"offset"
	.byte	0x5
	.byte	0x65
	.long	0xa5
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"size"
	.byte	0x5
	.byte	0x66
	.long	0xa5
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"align"
	.byte	0x5
	.byte	0x67
	.long	0x3a6
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xf
	.long	.LASF1
	.byte	0x5
	.byte	0x68
	.long	0xf50
	.uleb128 0x10
	.long	0x1089
	.string	"rtunion_def"
	.byte	0x8
	.byte	0x5
	.byte	0x6d
	.uleb128 0x11
	.string	"rtwint"
	.byte	0x5
	.byte	0x6e
	.long	0x40c
	.uleb128 0x11
	.string	"rtint"
	.byte	0x5
	.byte	0x6f
	.long	0x39f
	.uleb128 0x11
	.string	"rtuint"
	.byte	0x5
	.byte	0x70
	.long	0x3a6
	.uleb128 0x11
	.string	"rtstr"
	.byte	0x5
	.byte	0x71
	.long	0x38c
	.uleb128 0x11
	.string	"rtx"
	.byte	0x5
	.byte	0x72
	.long	0xa5
	.uleb128 0x11
	.string	"rtvec"
	.byte	0x5
	.byte	0x73
	.long	0x1a6
	.uleb128 0x11
	.string	"rttype"
	.byte	0x5
	.byte	0x74
	.long	0x443
	.uleb128 0x11
	.string	"rt_addr_diff_vec_flags"
	.byte	0x5
	.byte	0x75
	.long	0xf35
	.uleb128 0x11
	.string	"rt_cselib"
	.byte	0x5
	.byte	0x76
	.long	0x109d
	.uleb128 0x11
	.string	"rtbit"
	.byte	0x5
	.byte	0x77
	.long	0x10b5
	.uleb128 0x11
	.string	"rttree"
	.byte	0x5
	.byte	0x78
	.long	0x1ee
	.uleb128 0x11
	.string	"bb"
	.byte	0x5
	.byte	0x79
	.long	0x10cd
	.uleb128 0x11
	.string	"rtmem"
	.byte	0x5
	.byte	0x7a
	.long	0x10d3
	.byte	0x0
	.uleb128 0x12
	.string	"cselib_val_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x1089
	.uleb128 0x12
	.string	"bitmap_head_def"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x10a3
	.uleb128 0x12
	.string	"basic_block_def"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x10bb
	.uleb128 0x3
	.byte	0x4
	.long	0xfac
	.uleb128 0x2
	.string	"rtunion"
	.byte	0x5
	.byte	0x7c
	.long	0xfb7
	.uleb128 0x13
	.long	0x10f8
	.long	0x10d9
	.uleb128 0x14
	.long	0x3ad
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
	.long	0x1108
	.long	0xa5
	.uleb128 0x14
	.long	0x3ad
	.byte	0x0
	.byte	0x0
	.uleb128 0x15
	.long	0x3267
	.long	.LASF2
	.byte	0x4
	.byte	0x6
	.byte	0x7
	.uleb128 0x9
	.string	"CODE_FOR_trap"
	.sleb128 0
	.uleb128 0x9
	.string	"CODE_FOR_adddf3"
	.sleb128 2
	.uleb128 0x9
	.string	"CODE_FOR_addsf3"
	.sleb128 3
	.uleb128 0x9
	.string	"CODE_FOR_addsi3_internal"
	.sleb128 4
	.uleb128 0x9
	.string	"CODE_FOR_adddi3_internal_1"
	.sleb128 8
	.uleb128 0x9
	.string	"CODE_FOR_adddi3_internal_2"
	.sleb128 9
	.uleb128 0x9
	.string	"CODE_FOR_adddi3_internal_3"
	.sleb128 10
	.uleb128 0x9
	.string	"CODE_FOR_addsi3_internal_2"
	.sleb128 14
	.uleb128 0x9
	.string	"CODE_FOR_subdf3"
	.sleb128 16
	.uleb128 0x9
	.string	"CODE_FOR_subsf3"
	.sleb128 17
	.uleb128 0x9
	.string	"CODE_FOR_subsi3_internal"
	.sleb128 18
	.uleb128 0x9
	.string	"CODE_FOR_subdi3_internal"
	.sleb128 22
	.uleb128 0x9
	.string	"CODE_FOR_subdi3_internal_2"
	.sleb128 23
	.uleb128 0x9
	.string	"CODE_FOR_subdi3_internal_3"
	.sleb128 24
	.uleb128 0x9
	.string	"CODE_FOR_subsi3_internal_2"
	.sleb128 28
	.uleb128 0x9
	.string	"CODE_FOR_muldf3_internal"
	.sleb128 30
	.uleb128 0x9
	.string	"CODE_FOR_muldf3_r4300"
	.sleb128 31
	.uleb128 0x9
	.string	"CODE_FOR_mulsf3_internal"
	.sleb128 32
	.uleb128 0x9
	.string	"CODE_FOR_mulsf3_r4300"
	.sleb128 33
	.uleb128 0x9
	.string	"CODE_FOR_mulsi3_mult3"
	.sleb128 34
	.uleb128 0x9
	.string	"CODE_FOR_mulsi3_internal"
	.sleb128 35
	.uleb128 0x9
	.string	"CODE_FOR_mulsi3_r4000"
	.sleb128 36
	.uleb128 0x9
	.string	"CODE_FOR_muldi3_internal"
	.sleb128 41
	.uleb128 0x9
	.string	"CODE_FOR_muldi3_internal2"
	.sleb128 42
	.uleb128 0x9
	.string	"CODE_FOR_mulsidi3_internal"
	.sleb128 43
	.uleb128 0x9
	.string	"CODE_FOR_mulsidi3_64bit"
	.sleb128 44
	.uleb128 0x9
	.string	"CODE_FOR_xmulsi3_highpart_internal"
	.sleb128 47
	.uleb128 0x9
	.string	"CODE_FOR_xmulsi3_highpart_mulhi"
	.sleb128 48
	.uleb128 0x9
	.string	"CODE_FOR_smuldi3_highpart"
	.sleb128 50
	.uleb128 0x9
	.string	"CODE_FOR_umuldi3_highpart"
	.sleb128 51
	.uleb128 0x9
	.string	"CODE_FOR_madsi"
	.sleb128 52
	.uleb128 0x9
	.string	"CODE_FOR_divdf3"
	.sleb128 63
	.uleb128 0x9
	.string	"CODE_FOR_divsf3"
	.sleb128 64
	.uleb128 0x9
	.string	"CODE_FOR_divmodsi4_internal"
	.sleb128 67
	.uleb128 0x9
	.string	"CODE_FOR_divmoddi4_internal"
	.sleb128 68
	.uleb128 0x9
	.string	"CODE_FOR_udivmodsi4_internal"
	.sleb128 69
	.uleb128 0x9
	.string	"CODE_FOR_udivmoddi4_internal"
	.sleb128 70
	.uleb128 0x9
	.string	"CODE_FOR_div_trap_normal"
	.sleb128 71
	.uleb128 0x9
	.string	"CODE_FOR_div_trap_mips16"
	.sleb128 72
	.uleb128 0x9
	.string	"CODE_FOR_divsi3_internal"
	.sleb128 73
	.uleb128 0x9
	.string	"CODE_FOR_divdi3_internal"
	.sleb128 74
	.uleb128 0x9
	.string	"CODE_FOR_modsi3_internal"
	.sleb128 75
	.uleb128 0x9
	.string	"CODE_FOR_moddi3_internal"
	.sleb128 76
	.uleb128 0x9
	.string	"CODE_FOR_udivsi3_internal"
	.sleb128 77
	.uleb128 0x9
	.string	"CODE_FOR_udivdi3_internal"
	.sleb128 78
	.uleb128 0x9
	.string	"CODE_FOR_umodsi3_internal"
	.sleb128 79
	.uleb128 0x9
	.string	"CODE_FOR_umoddi3_internal"
	.sleb128 80
	.uleb128 0x9
	.string	"CODE_FOR_sqrtdf2"
	.sleb128 81
	.uleb128 0x9
	.string	"CODE_FOR_sqrtsf2"
	.sleb128 82
	.uleb128 0x9
	.string	"CODE_FOR_abssi2"
	.sleb128 85
	.uleb128 0x9
	.string	"CODE_FOR_absdi2"
	.sleb128 86
	.uleb128 0x9
	.string	"CODE_FOR_absdf2"
	.sleb128 87
	.uleb128 0x9
	.string	"CODE_FOR_abssf2"
	.sleb128 88
	.uleb128 0x9
	.string	"CODE_FOR_ffssi2"
	.sleb128 89
	.uleb128 0x9
	.string	"CODE_FOR_ffsdi2"
	.sleb128 90
	.uleb128 0x9
	.string	"CODE_FOR_negsi2"
	.sleb128 91
	.uleb128 0x9
	.string	"CODE_FOR_negdi2_internal"
	.sleb128 92
	.uleb128 0x9
	.string	"CODE_FOR_negdi2_internal_2"
	.sleb128 93
	.uleb128 0x9
	.string	"CODE_FOR_negdf2"
	.sleb128 94
	.uleb128 0x9
	.string	"CODE_FOR_negsf2"
	.sleb128 95
	.uleb128 0x9
	.string	"CODE_FOR_one_cmplsi2"
	.sleb128 96
	.uleb128 0x9
	.string	"CODE_FOR_one_cmpldi2"
	.sleb128 97
	.uleb128 0x9
	.string	"CODE_FOR_anddi3_internal1"
	.sleb128 102
	.uleb128 0x9
	.string	"CODE_FOR_xordi3_immed"
	.sleb128 112
	.uleb128 0x9
	.string	"CODE_FOR_truncdfsf2"
	.sleb128 115
	.uleb128 0x9
	.string	"CODE_FOR_truncdisi2"
	.sleb128 116
	.uleb128 0x9
	.string	"CODE_FOR_truncdihi2"
	.sleb128 117
	.uleb128 0x9
	.string	"CODE_FOR_truncdiqi2"
	.sleb128 118
	.uleb128 0x9
	.string	"CODE_FOR_zero_extendsidi2_internal"
	.sleb128 125
	.uleb128 0x9
	.string	"CODE_FOR_extendhidi2_internal"
	.sleb128 137
	.uleb128 0x9
	.string	"CODE_FOR_extendhisi2_internal"
	.sleb128 138
	.uleb128 0x9
	.string	"CODE_FOR_extendqihi2_internal"
	.sleb128 139
	.uleb128 0x9
	.string	"CODE_FOR_extendqisi2_insn"
	.sleb128 140
	.uleb128 0x9
	.string	"CODE_FOR_extendqidi2_insn"
	.sleb128 141
	.uleb128 0x9
	.string	"CODE_FOR_extendsfdf2"
	.sleb128 142
	.uleb128 0x9
	.string	"CODE_FOR_fix_truncdfsi2_insn"
	.sleb128 143
	.uleb128 0x9
	.string	"CODE_FOR_fix_truncdfsi2_macro"
	.sleb128 144
	.uleb128 0x9
	.string	"CODE_FOR_fix_truncsfsi2_insn"
	.sleb128 145
	.uleb128 0x9
	.string	"CODE_FOR_fix_truncsfsi2_macro"
	.sleb128 146
	.uleb128 0x9
	.string	"CODE_FOR_fix_truncdfdi2"
	.sleb128 147
	.uleb128 0x9
	.string	"CODE_FOR_fix_truncsfdi2"
	.sleb128 148
	.uleb128 0x9
	.string	"CODE_FOR_floatsidf2"
	.sleb128 149
	.uleb128 0x9
	.string	"CODE_FOR_floatdidf2"
	.sleb128 150
	.uleb128 0x9
	.string	"CODE_FOR_floatsisf2"
	.sleb128 151
	.uleb128 0x9
	.string	"CODE_FOR_floatdisf2"
	.sleb128 152
	.uleb128 0x9
	.string	"CODE_FOR_movsi_ulw"
	.sleb128 153
	.uleb128 0x9
	.string	"CODE_FOR_movsi_usw"
	.sleb128 154
	.uleb128 0x9
	.string	"CODE_FOR_movdi_uld"
	.sleb128 155
	.uleb128 0x9
	.string	"CODE_FOR_movdi_usd"
	.sleb128 156
	.uleb128 0x9
	.string	"CODE_FOR_high"
	.sleb128 157
	.uleb128 0x9
	.string	"CODE_FOR_low"
	.sleb128 158
	.uleb128 0x9
	.string	"CODE_FOR_movdi_internal"
	.sleb128 160
	.uleb128 0x9
	.string	"CODE_FOR_movdi_internal2"
	.sleb128 162
	.uleb128 0x9
	.string	"CODE_FOR_movsi_internal"
	.sleb128 166
	.uleb128 0x9
	.string	"CODE_FOR_hilo_delay"
	.sleb128 168
	.uleb128 0x9
	.string	"CODE_FOR_movcc"
	.sleb128 169
	.uleb128 0x9
	.string	"CODE_FOR_movhi_internal"
	.sleb128 178
	.uleb128 0x9
	.string	"CODE_FOR_movqi_internal"
	.sleb128 180
	.uleb128 0x9
	.string	"CODE_FOR_movsf_internal1"
	.sleb128 182
	.uleb128 0x9
	.string	"CODE_FOR_movsf_internal2"
	.sleb128 183
	.uleb128 0x9
	.string	"CODE_FOR_movdf_internal1"
	.sleb128 185
	.uleb128 0x9
	.string	"CODE_FOR_movdf_internal1a"
	.sleb128 186
	.uleb128 0x9
	.string	"CODE_FOR_movdf_internal2"
	.sleb128 187
	.uleb128 0x9
	.string	"CODE_FOR_loadgp"
	.sleb128 189
	.uleb128 0x9
	.string	"CODE_FOR_movstrsi_internal"
	.sleb128 190
	.uleb128 0x9
	.string	"CODE_FOR_movstrsi_internal2"
	.sleb128 192
	.uleb128 0x9
	.string	"CODE_FOR_movstrsi_internal3"
	.sleb128 194
	.uleb128 0x9
	.string	"CODE_FOR_ashlsi3_internal1"
	.sleb128 195
	.uleb128 0x9
	.string	"CODE_FOR_ashlsi3_internal2"
	.sleb128 196
	.uleb128 0x9
	.string	"CODE_FOR_ashldi3_internal"
	.sleb128 197
	.uleb128 0x9
	.string	"CODE_FOR_ashldi3_internal2"
	.sleb128 198
	.uleb128 0x9
	.string	"CODE_FOR_ashldi3_internal3"
	.sleb128 199
	.uleb128 0x9
	.string	"CODE_FOR_ashldi3_internal4"
	.sleb128 200
	.uleb128 0x9
	.string	"CODE_FOR_ashrsi3_internal1"
	.sleb128 202
	.uleb128 0x9
	.string	"CODE_FOR_ashrsi3_internal2"
	.sleb128 203
	.uleb128 0x9
	.string	"CODE_FOR_ashrdi3_internal"
	.sleb128 204
	.uleb128 0x9
	.string	"CODE_FOR_ashrdi3_internal2"
	.sleb128 205
	.uleb128 0x9
	.string	"CODE_FOR_ashrdi3_internal3"
	.sleb128 206
	.uleb128 0x9
	.string	"CODE_FOR_ashrdi3_internal4"
	.sleb128 207
	.uleb128 0x9
	.string	"CODE_FOR_lshrsi3_internal1"
	.sleb128 209
	.uleb128 0x9
	.string	"CODE_FOR_lshrsi3_internal2"
	.sleb128 210
	.uleb128 0x9
	.string	"CODE_FOR_lshrdi3_internal"
	.sleb128 212
	.uleb128 0x9
	.string	"CODE_FOR_lshrdi3_internal2"
	.sleb128 213
	.uleb128 0x9
	.string	"CODE_FOR_lshrdi3_internal3"
	.sleb128 214
	.uleb128 0x9
	.string	"CODE_FOR_lshrdi3_internal4"
	.sleb128 215
	.uleb128 0x9
	.string	"CODE_FOR_rotrsi3"
	.sleb128 217
	.uleb128 0x9
	.string	"CODE_FOR_rotrdi3"
	.sleb128 218
	.uleb128 0x9
	.string	"CODE_FOR_branch_fp"
	.sleb128 219
	.uleb128 0x9
	.string	"CODE_FOR_branch_fp_inverted"
	.sleb128 220
	.uleb128 0x9
	.string	"CODE_FOR_branch_zero"
	.sleb128 221
	.uleb128 0x9
	.string	"CODE_FOR_branch_zero_inverted"
	.sleb128 222
	.uleb128 0x9
	.string	"CODE_FOR_branch_zero_di"
	.sleb128 223
	.uleb128 0x9
	.string	"CODE_FOR_branch_zero_di_inverted"
	.sleb128 224
	.uleb128 0x9
	.string	"CODE_FOR_branch_equality"
	.sleb128 225
	.uleb128 0x9
	.string	"CODE_FOR_branch_equality_di"
	.sleb128 226
	.uleb128 0x9
	.string	"CODE_FOR_branch_equality_inverted"
	.sleb128 227
	.uleb128 0x9
	.string	"CODE_FOR_branch_equality_di_inverted"
	.sleb128 228
	.uleb128 0x9
	.string	"CODE_FOR_seq_si_zero"
	.sleb128 231
	.uleb128 0x9
	.string	"CODE_FOR_seq_di_zero"
	.sleb128 233
	.uleb128 0x9
	.string	"CODE_FOR_sne_si_zero"
	.sleb128 235
	.uleb128 0x9
	.string	"CODE_FOR_sne_di_zero"
	.sleb128 236
	.uleb128 0x9
	.string	"CODE_FOR_sgt_si"
	.sleb128 237
	.uleb128 0x9
	.string	"CODE_FOR_sgt_di"
	.sleb128 239
	.uleb128 0x9
	.string	"CODE_FOR_slt_si"
	.sleb128 241
	.uleb128 0x9
	.string	"CODE_FOR_slt_di"
	.sleb128 243
	.uleb128 0x9
	.string	"CODE_FOR_sle_si_const"
	.sleb128 245
	.uleb128 0x9
	.string	"CODE_FOR_sle_di_const"
	.sleb128 247
	.uleb128 0x9
	.string	"CODE_FOR_sgtu_si"
	.sleb128 249
	.uleb128 0x9
	.string	"CODE_FOR_sgtu_di"
	.sleb128 251
	.uleb128 0x9
	.string	"CODE_FOR_sltu_si"
	.sleb128 253
	.uleb128 0x9
	.string	"CODE_FOR_sltu_di"
	.sleb128 255
	.uleb128 0x9
	.string	"CODE_FOR_sleu_si_const"
	.sleb128 257
	.uleb128 0x9
	.string	"CODE_FOR_sleu_di_const"
	.sleb128 259
	.uleb128 0x9
	.string	"CODE_FOR_sunordered_df"
	.sleb128 261
	.uleb128 0x9
	.string	"CODE_FOR_sunlt_df"
	.sleb128 262
	.uleb128 0x9
	.string	"CODE_FOR_suneq_df"
	.sleb128 263
	.uleb128 0x9
	.string	"CODE_FOR_sunle_df"
	.sleb128 264
	.uleb128 0x9
	.string	"CODE_FOR_seq_df"
	.sleb128 265
	.uleb128 0x9
	.string	"CODE_FOR_slt_df"
	.sleb128 266
	.uleb128 0x9
	.string	"CODE_FOR_sle_df"
	.sleb128 267
	.uleb128 0x9
	.string	"CODE_FOR_sgt_df"
	.sleb128 268
	.uleb128 0x9
	.string	"CODE_FOR_sge_df"
	.sleb128 269
	.uleb128 0x9
	.string	"CODE_FOR_sunordered_sf"
	.sleb128 270
	.uleb128 0x9
	.string	"CODE_FOR_sunlt_sf"
	.sleb128 271
	.uleb128 0x9
	.string	"CODE_FOR_suneq_sf"
	.sleb128 272
	.uleb128 0x9
	.string	"CODE_FOR_sunle_sf"
	.sleb128 273
	.uleb128 0x9
	.string	"CODE_FOR_seq_sf"
	.sleb128 274
	.uleb128 0x9
	.string	"CODE_FOR_slt_sf"
	.sleb128 275
	.uleb128 0x9
	.string	"CODE_FOR_sle_sf"
	.sleb128 276
	.uleb128 0x9
	.string	"CODE_FOR_sgt_sf"
	.sleb128 277
	.uleb128 0x9
	.string	"CODE_FOR_sge_sf"
	.sleb128 278
	.uleb128 0x9
	.string	"CODE_FOR_jump"
	.sleb128 279
	.uleb128 0x9
	.string	"CODE_FOR_indirect_jump_internal1"
	.sleb128 281
	.uleb128 0x9
	.string	"CODE_FOR_indirect_jump_internal2"
	.sleb128 282
	.uleb128 0x9
	.string	"CODE_FOR_tablejump_internal1"
	.sleb128 283
	.uleb128 0x9
	.string	"CODE_FOR_tablejump_internal2"
	.sleb128 284
	.uleb128 0x9
	.string	"CODE_FOR_casesi_internal"
	.sleb128 287
	.uleb128 0x9
	.string	"CODE_FOR_casesi_internal_di"
	.sleb128 288
	.uleb128 0x9
	.string	"CODE_FOR_blockage"
	.sleb128 289
	.uleb128 0x9
	.string	"CODE_FOR_return"
	.sleb128 290
	.uleb128 0x9
	.string	"CODE_FOR_return_internal"
	.sleb128 291
	.uleb128 0x9
	.string	"CODE_FOR_get_fnaddr"
	.sleb128 292
	.uleb128 0x9
	.string	"CODE_FOR_eh_set_lr_si"
	.sleb128 293
	.uleb128 0x9
	.string	"CODE_FOR_eh_set_lr_di"
	.sleb128 294
	.uleb128 0x9
	.string	"CODE_FOR_exception_receiver"
	.sleb128 295
	.uleb128 0x9
	.string	"CODE_FOR_call_internal1"
	.sleb128 297
	.uleb128 0x9
	.string	"CODE_FOR_call_internal2"
	.sleb128 298
	.uleb128 0x9
	.string	"CODE_FOR_call_internal3a"
	.sleb128 299
	.uleb128 0x9
	.string	"CODE_FOR_call_internal3b"
	.sleb128 300
	.uleb128 0x9
	.string	"CODE_FOR_call_internal3c"
	.sleb128 301
	.uleb128 0x9
	.string	"CODE_FOR_call_internal4a"
	.sleb128 302
	.uleb128 0x9
	.string	"CODE_FOR_call_internal4b"
	.sleb128 303
	.uleb128 0x9
	.string	"CODE_FOR_call_value_internal1"
	.sleb128 305
	.uleb128 0x9
	.string	"CODE_FOR_call_value_internal2"
	.sleb128 306
	.uleb128 0x9
	.string	"CODE_FOR_call_value_internal3a"
	.sleb128 307
	.uleb128 0x9
	.string	"CODE_FOR_call_value_internal3b"
	.sleb128 308
	.uleb128 0x9
	.string	"CODE_FOR_call_value_internal3c"
	.sleb128 309
	.uleb128 0x9
	.string	"CODE_FOR_call_value_internal4a"
	.sleb128 310
	.uleb128 0x9
	.string	"CODE_FOR_call_value_internal4b"
	.sleb128 311
	.uleb128 0x9
	.string	"CODE_FOR_call_value_multiple_internal1"
	.sleb128 312
	.uleb128 0x9
	.string	"CODE_FOR_call_value_multiple_internal2"
	.sleb128 313
	.uleb128 0x9
	.string	"CODE_FOR_prefetch_si_address"
	.sleb128 314
	.uleb128 0x9
	.string	"CODE_FOR_prefetch_si"
	.sleb128 315
	.uleb128 0x9
	.string	"CODE_FOR_prefetch_di_address"
	.sleb128 316
	.uleb128 0x9
	.string	"CODE_FOR_prefetch_di"
	.sleb128 317
	.uleb128 0x9
	.string	"CODE_FOR_nop"
	.sleb128 318
	.uleb128 0x9
	.string	"CODE_FOR_consttable_qi"
	.sleb128 331
	.uleb128 0x9
	.string	"CODE_FOR_consttable_hi"
	.sleb128 332
	.uleb128 0x9
	.string	"CODE_FOR_consttable_si"
	.sleb128 333
	.uleb128 0x9
	.string	"CODE_FOR_consttable_di"
	.sleb128 334
	.uleb128 0x9
	.string	"CODE_FOR_consttable_sf"
	.sleb128 335
	.uleb128 0x9
	.string	"CODE_FOR_consttable_df"
	.sleb128 336
	.uleb128 0x9
	.string	"CODE_FOR_align_2"
	.sleb128 337
	.uleb128 0x9
	.string	"CODE_FOR_align_4"
	.sleb128 338
	.uleb128 0x9
	.string	"CODE_FOR_align_8"
	.sleb128 339
	.uleb128 0x9
	.string	"CODE_FOR_leasi"
	.sleb128 340
	.uleb128 0x9
	.string	"CODE_FOR_leadi"
	.sleb128 341
	.uleb128 0x9
	.string	"CODE_FOR_conditional_trap"
	.sleb128 342
	.uleb128 0x9
	.string	"CODE_FOR_addsi3"
	.sleb128 343
	.uleb128 0x9
	.string	"CODE_FOR_adddi3"
	.sleb128 346
	.uleb128 0x9
	.string	"CODE_FOR_subsi3"
	.sleb128 353
	.uleb128 0x9
	.string	"CODE_FOR_subdi3"
	.sleb128 356
	.uleb128 0x9
	.string	"CODE_FOR_muldf3"
	.sleb128 363
	.uleb128 0x9
	.string	"CODE_FOR_mulsf3"
	.sleb128 364
	.uleb128 0x9
	.string	"CODE_FOR_mulsi3"
	.sleb128 365
	.uleb128 0x9
	.string	"CODE_FOR_muldi3"
	.sleb128 371
	.uleb128 0x9
	.string	"CODE_FOR_mulsidi3"
	.sleb128 372
	.uleb128 0x9
	.string	"CODE_FOR_umulsidi3"
	.sleb128 373
	.uleb128 0x9
	.string	"CODE_FOR_smulsi3_highpart"
	.sleb128 374
	.uleb128 0x9
	.string	"CODE_FOR_umulsi3_highpart"
	.sleb128 375
	.uleb128 0x9
	.string	"CODE_FOR_divmodsi4"
	.sleb128 376
	.uleb128 0x9
	.string	"CODE_FOR_divmoddi4"
	.sleb128 377
	.uleb128 0x9
	.string	"CODE_FOR_udivmodsi4"
	.sleb128 378
	.uleb128 0x9
	.string	"CODE_FOR_udivmoddi4"
	.sleb128 379
	.uleb128 0x9
	.string	"CODE_FOR_div_trap"
	.sleb128 380
	.uleb128 0x9
	.string	"CODE_FOR_divsi3"
	.sleb128 381
	.uleb128 0x9
	.string	"CODE_FOR_divdi3"
	.sleb128 382
	.uleb128 0x9
	.string	"CODE_FOR_modsi3"
	.sleb128 383
	.uleb128 0x9
	.string	"CODE_FOR_moddi3"
	.sleb128 384
	.uleb128 0x9
	.string	"CODE_FOR_udivsi3"
	.sleb128 385
	.uleb128 0x9
	.string	"CODE_FOR_udivdi3"
	.sleb128 386
	.uleb128 0x9
	.string	"CODE_FOR_umodsi3"
	.sleb128 387
	.uleb128 0x9
	.string	"CODE_FOR_umoddi3"
	.sleb128 388
	.uleb128 0x9
	.string	"CODE_FOR_negdi2"
	.sleb128 389
	.uleb128 0x9
	.string	"CODE_FOR_andsi3"
	.sleb128 391
	.uleb128 0x9
	.string	"CODE_FOR_anddi3"
	.sleb128 392
	.uleb128 0x9
	.string	"CODE_FOR_iorsi3"
	.sleb128 394
	.uleb128 0x9
	.string	"CODE_FOR_iordi3"
	.sleb128 395
	.uleb128 0x9
	.string	"CODE_FOR_xorsi3"
	.sleb128 397
	.uleb128 0x9
	.string	"CODE_FOR_xordi3"
	.sleb128 398
	.uleb128 0x9
	.string	"CODE_FOR_zero_extendsidi2"
	.sleb128 401
	.uleb128 0x9
	.string	"CODE_FOR_zero_extendhisi2"
	.sleb128 402
	.uleb128 0x9
	.string	"CODE_FOR_zero_extendhidi2"
	.sleb128 403
	.uleb128 0x9
	.string	"CODE_FOR_zero_extendqihi2"
	.sleb128 404
	.uleb128 0x9
	.string	"CODE_FOR_zero_extendqisi2"
	.sleb128 405
	.uleb128 0x9
	.string	"CODE_FOR_zero_extendqidi2"
	.sleb128 406
	.uleb128 0x9
	.string	"CODE_FOR_extendsidi2"
	.sleb128 407
	.uleb128 0x9
	.string	"CODE_FOR_extendhidi2"
	.sleb128 408
	.uleb128 0x9
	.string	"CODE_FOR_extendhisi2"
	.sleb128 409
	.uleb128 0x9
	.string	"CODE_FOR_extendqihi2"
	.sleb128 410
	.uleb128 0x9
	.string	"CODE_FOR_extendqisi2"
	.sleb128 411
	.uleb128 0x9
	.string	"CODE_FOR_extendqidi2"
	.sleb128 412
	.uleb128 0x9
	.string	"CODE_FOR_fix_truncdfsi2"
	.sleb128 413
	.uleb128 0x9
	.string	"CODE_FOR_fix_truncsfsi2"
	.sleb128 414
	.uleb128 0x9
	.string	"CODE_FOR_fixuns_truncdfsi2"
	.sleb128 415
	.uleb128 0x9
	.string	"CODE_FOR_fixuns_truncdfdi2"
	.sleb128 416
	.uleb128 0x9
	.string	"CODE_FOR_fixuns_truncsfsi2"
	.sleb128 417
	.uleb128 0x9
	.string	"CODE_FOR_fixuns_truncsfdi2"
	.sleb128 418
	.uleb128 0x9
	.string	"CODE_FOR_extv"
	.sleb128 419
	.uleb128 0x9
	.string	"CODE_FOR_extzv"
	.sleb128 420
	.uleb128 0x9
	.string	"CODE_FOR_insv"
	.sleb128 421
	.uleb128 0x9
	.string	"CODE_FOR_movdi"
	.sleb128 422
	.uleb128 0x9
	.string	"CODE_FOR_reload_indi"
	.sleb128 425
	.uleb128 0x9
	.string	"CODE_FOR_reload_outdi"
	.sleb128 426
	.uleb128 0x9
	.string	"CODE_FOR_movsi"
	.sleb128 428
	.uleb128 0x9
	.string	"CODE_FOR_reload_outsi"
	.sleb128 432
	.uleb128 0x9
	.string	"CODE_FOR_reload_insi"
	.sleb128 433
	.uleb128 0x9
	.string	"CODE_FOR_reload_incc"
	.sleb128 434
	.uleb128 0x9
	.string	"CODE_FOR_reload_outcc"
	.sleb128 435
	.uleb128 0x9
	.string	"CODE_FOR_movhi"
	.sleb128 436
	.uleb128 0x9
	.string	"CODE_FOR_movqi"
	.sleb128 438
	.uleb128 0x9
	.string	"CODE_FOR_movsf"
	.sleb128 440
	.uleb128 0x9
	.string	"CODE_FOR_movdf"
	.sleb128 441
	.uleb128 0x9
	.string	"CODE_FOR_movstrsi"
	.sleb128 443
	.uleb128 0x9
	.string	"CODE_FOR_ashlsi3"
	.sleb128 444
	.uleb128 0x9
	.string	"CODE_FOR_ashldi3"
	.sleb128 446
	.uleb128 0x9
	.string	"CODE_FOR_ashrsi3"
	.sleb128 452
	.uleb128 0x9
	.string	"CODE_FOR_ashrdi3"
	.sleb128 454
	.uleb128 0x9
	.string	"CODE_FOR_lshrsi3"
	.sleb128 460
	.uleb128 0x9
	.string	"CODE_FOR_lshrdi3"
	.sleb128 463
	.uleb128 0x9
	.string	"CODE_FOR_cmpsi"
	.sleb128 469
	.uleb128 0x9
	.string	"CODE_FOR_tstsi"
	.sleb128 470
	.uleb128 0x9
	.string	"CODE_FOR_cmpdi"
	.sleb128 471
	.uleb128 0x9
	.string	"CODE_FOR_tstdi"
	.sleb128 472
	.uleb128 0x9
	.string	"CODE_FOR_cmpdf"
	.sleb128 473
	.uleb128 0x9
	.string	"CODE_FOR_cmpsf"
	.sleb128 474
	.uleb128 0x9
	.string	"CODE_FOR_bunordered"
	.sleb128 475
	.uleb128 0x9
	.string	"CODE_FOR_bordered"
	.sleb128 476
	.uleb128 0x9
	.string	"CODE_FOR_bunlt"
	.sleb128 477
	.uleb128 0x9
	.string	"CODE_FOR_bunge"
	.sleb128 478
	.uleb128 0x9
	.string	"CODE_FOR_buneq"
	.sleb128 479
	.uleb128 0x9
	.string	"CODE_FOR_bltgt"
	.sleb128 480
	.uleb128 0x9
	.string	"CODE_FOR_bunle"
	.sleb128 481
	.uleb128 0x9
	.string	"CODE_FOR_bungt"
	.sleb128 482
	.uleb128 0x9
	.string	"CODE_FOR_beq"
	.sleb128 483
	.uleb128 0x9
	.string	"CODE_FOR_bne"
	.sleb128 484
	.uleb128 0x9
	.string	"CODE_FOR_bgt"
	.sleb128 485
	.uleb128 0x9
	.string	"CODE_FOR_bge"
	.sleb128 486
	.uleb128 0x9
	.string	"CODE_FOR_blt"
	.sleb128 487
	.uleb128 0x9
	.string	"CODE_FOR_ble"
	.sleb128 488
	.uleb128 0x9
	.string	"CODE_FOR_bgtu"
	.sleb128 489
	.uleb128 0x9
	.string	"CODE_FOR_bgeu"
	.sleb128 490
	.uleb128 0x9
	.string	"CODE_FOR_bltu"
	.sleb128 491
	.uleb128 0x9
	.string	"CODE_FOR_bleu"
	.sleb128 492
	.uleb128 0x9
	.string	"CODE_FOR_seq"
	.sleb128 493
	.uleb128 0x9
	.string	"CODE_FOR_sne"
	.sleb128 494
	.uleb128 0x9
	.string	"CODE_FOR_sgt"
	.sleb128 495
	.uleb128 0x9
	.string	"CODE_FOR_sge"
	.sleb128 496
	.uleb128 0x9
	.string	"CODE_FOR_slt"
	.sleb128 497
	.uleb128 0x9
	.string	"CODE_FOR_sle"
	.sleb128 498
	.uleb128 0x9
	.string	"CODE_FOR_sgtu"
	.sleb128 499
	.uleb128 0x9
	.string	"CODE_FOR_sgeu"
	.sleb128 500
	.uleb128 0x9
	.string	"CODE_FOR_sltu"
	.sleb128 501
	.uleb128 0x9
	.string	"CODE_FOR_sleu"
	.sleb128 502
	.uleb128 0x9
	.string	"CODE_FOR_indirect_jump"
	.sleb128 503
	.uleb128 0x9
	.string	"CODE_FOR_tablejump"
	.sleb128 504
	.uleb128 0x9
	.string	"CODE_FOR_tablejump_internal3"
	.sleb128 505
	.uleb128 0x9
	.string	"CODE_FOR_tablejump_mips161"
	.sleb128 506
	.uleb128 0x9
	.string	"CODE_FOR_tablejump_mips162"
	.sleb128 507
	.uleb128 0x9
	.string	"CODE_FOR_tablejump_internal4"
	.sleb128 508
	.uleb128 0x9
	.string	"CODE_FOR_casesi"
	.sleb128 509
	.uleb128 0x9
	.string	"CODE_FOR_builtin_setjmp_setup"
	.sleb128 510
	.uleb128 0x9
	.string	"CODE_FOR_builtin_setjmp_setup_32"
	.sleb128 511
	.uleb128 0x9
	.string	"CODE_FOR_builtin_setjmp_setup_64"
	.sleb128 512
	.uleb128 0x9
	.string	"CODE_FOR_builtin_longjmp"
	.sleb128 513
	.uleb128 0x9
	.string	"CODE_FOR_prologue"
	.sleb128 514
	.uleb128 0x9
	.string	"CODE_FOR_epilogue"
	.sleb128 515
	.uleb128 0x9
	.string	"CODE_FOR_eh_return"
	.sleb128 516
	.uleb128 0x9
	.string	"CODE_FOR_call"
	.sleb128 518
	.uleb128 0x9
	.string	"CODE_FOR_call_internal0"
	.sleb128 519
	.uleb128 0x9
	.string	"CODE_FOR_call_value"
	.sleb128 520
	.uleb128 0x9
	.string	"CODE_FOR_call_value_internal0"
	.sleb128 521
	.uleb128 0x9
	.string	"CODE_FOR_call_value_multiple_internal0"
	.sleb128 522
	.uleb128 0x9
	.string	"CODE_FOR_untyped_call"
	.sleb128 523
	.uleb128 0x9
	.string	"CODE_FOR_prefetch"
	.sleb128 524
	.uleb128 0x9
	.string	"CODE_FOR_movsicc"
	.sleb128 525
	.uleb128 0x9
	.string	"CODE_FOR_movdicc"
	.sleb128 526
	.uleb128 0x9
	.string	"CODE_FOR_movsfcc"
	.sleb128 527
	.uleb128 0x9
	.string	"CODE_FOR_movdfcc"
	.sleb128 528
	.uleb128 0x9
	.string	"CODE_FOR_nothing"
	.sleb128 529
	.byte	0x0
	.uleb128 0x4
	.long	0x329f
	.string	"optab_handlers"
	.byte	0x8
	.byte	0x4
	.byte	0x2c
	.uleb128 0x16
	.long	.LASF2
	.byte	0x4
	.byte	0x2d
	.long	0x1108
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"libfunc"
	.byte	0x4
	.byte	0x2e
	.long	0xa5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x17
	.long	0x32d1
	.string	"optab"
	.value	0x1b4
	.byte	0x4
	.byte	0x2a
	.uleb128 0x6
	.string	"code"
	.byte	0x4
	.byte	0x2b
	.long	0x68c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"handlers"
	.byte	0x4
	.byte	0x2f
	.long	0x32d1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x13
	.long	0x32e1
	.long	0x3267
	.uleb128 0x14
	.long	0x3ad
	.byte	0x35
	.byte	0x0
	.uleb128 0x2
	.string	"optab"
	.byte	0x4
	.byte	0x31
	.long	0x32ee
	.uleb128 0x3
	.byte	0x4
	.long	0x329f
	.uleb128 0x2
	.string	"rtxfun"
	.byte	0x4
	.byte	0xed
	.long	0x3302
	.uleb128 0x3
	.byte	0x4
	.long	0x3308
	.uleb128 0x18
	.long	0x3318
	.byte	0x1
	.long	0xa5
	.uleb128 0x19
	.long	0xa5
	.byte	0x0
	.uleb128 0x1a
	.byte	0x1
	.string	"init_all_optabs"
	.byte	0x1
	.byte	0x10
	.byte	0x1
	.long	.LFB15
	.long	.LFE15
	.long	.LLST0
	.uleb128 0x1b
	.string	"target_flags"
	.byte	0x2
	.byte	0x21
	.long	0x39f
	.byte	0x1
	.byte	0x1
	.uleb128 0x1b
	.string	"mips_arch"
	.byte	0x2
	.byte	0xa3
	.long	0x20c
	.byte	0x1
	.byte	0x1
	.uleb128 0x1b
	.string	"mips_isa"
	.byte	0x2
	.byte	0xa6
	.long	0x39f
	.byte	0x1
	.byte	0x1
	.uleb128 0x1b
	.string	"optimize"
	.byte	0x3
	.byte	0x41
	.long	0x39f
	.byte	0x1
	.byte	0x1
	.uleb128 0x13
	.long	0x3396
	.long	0x32e1
	.uleb128 0x14
	.long	0x3ad
	.byte	0x32
	.byte	0x0
	.uleb128 0x1b
	.string	"optab_table"
	.byte	0x4
	.byte	0xa0
	.long	0x3386
	.byte	0x1
	.byte	0x1
	.uleb128 0x13
	.long	0x33c7
	.long	0x1108
	.uleb128 0x14
	.long	0x3ad
	.byte	0x35
	.uleb128 0x14
	.long	0x3ad
	.byte	0x35
	.uleb128 0x14
	.long	0x3ad
	.byte	0x1
	.byte	0x0
	.uleb128 0x1b
	.string	"extendtab"
	.byte	0x4
	.byte	0xdc
	.long	0x33ab
	.byte	0x1
	.byte	0x1
	.uleb128 0x1b
	.string	"fixtrunctab"
	.byte	0x4
	.byte	0xe0
	.long	0x33ab
	.byte	0x1
	.byte	0x1
	.uleb128 0x1b
	.string	"floattab"
	.byte	0x4
	.byte	0xe1
	.long	0x33ab
	.byte	0x1
	.byte	0x1
	.uleb128 0x13
	.long	0x3411
	.long	0x1108
	.uleb128 0x14
	.long	0x3ad
	.byte	0x35
	.byte	0x0
	.uleb128 0x1b
	.string	"reload_in_optab"
	.byte	0x4
	.byte	0xe6
	.long	0x3401
	.byte	0x1
	.byte	0x1
	.uleb128 0x1b
	.string	"reload_out_optab"
	.byte	0x4
	.byte	0xe7
	.long	0x3401
	.byte	0x1
	.byte	0x1
	.uleb128 0x13
	.long	0x3454
	.long	0x32f4
	.uleb128 0x14
	.long	0x3ad
	.byte	0xa2
	.byte	0x0
	.uleb128 0x1b
	.string	"bcc_gen_fctn"
	.byte	0x4
	.byte	0xf2
	.long	0x3444
	.byte	0x1
	.byte	0x1
	.uleb128 0x13
	.long	0x347a
	.long	0x1108
	.uleb128 0x14
	.long	0x3ad
	.byte	0xa2
	.byte	0x0
	.uleb128 0x1b
	.string	"setcc_gen_code"
	.byte	0x4
	.byte	0xf8
	.long	0x346a
	.byte	0x1
	.byte	0x1
	.uleb128 0x1b
	.string	"movcc_gen_code"
	.byte	0x4
	.byte	0xfe
	.long	0x3401
	.byte	0x1
	.byte	0x1
	.uleb128 0x1c
	.string	"movstr_optab"
	.byte	0x4
	.value	0x102
	.long	0x3401
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
	.uleb128 0x9
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x13
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x14
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1a
	.uleb128 0x2e
	.byte	0x0
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
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
	.long	0x22
	.value	0x2
	.long	.Ldebug_info0
	.long	0x34c2
	.long	0x3318
	.string	"init_all_optabs"
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
.LASF2:
	.string	"insn_code"
.LASF1:
	.string	"mem_attrs"
.LASF0:
	.string	"unsigned int"
	.ident	"GCC: (GNU) 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.section	.text.__i686.get_pc_thunk.cx,"axG",@progbits,__i686.get_pc_thunk.cx,comdat
.globl __i686.get_pc_thunk.cx
	.hidden	__i686.get_pc_thunk.cx
	.type	__i686.get_pc_thunk.cx, @function
__i686.get_pc_thunk.cx:
	movl	(%esp), %ecx
	ret
	.section	.note.GNU-stack,"",@progbits
