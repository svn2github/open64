	.file	"implicits.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
.globl toggle_implicits
	.type	toggle_implicits, @function
toggle_implicits:
.LFB2:
	.file 1 "implicits.c"
	.loc 1 14 0
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
	.loc 1 15 0
	movl	$34, (%esp)
	call	option_was_implicitly_seen@PLT
	testl	%eax, %eax
	je	.L2
	.loc 1 16 0
	movl	$34, (%esp)
	call	get_option_name@PLT
	movl	%eax, %edx
	movl	option_name@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 17 0
	movl	$0, 4(%esp)
	movl	msglevel@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
.L2:
	.loc 1 19 0
	movl	$39, (%esp)
	call	option_was_implicitly_seen@PLT
	testl	%eax, %eax
	je	.L4
	.loc 1 20 0
	movl	$39, (%esp)
	call	get_option_name@PLT
	movl	%eax, %edx
	movl	option_name@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 21 0
	movl	$0, 4(%esp)
	movl	msglevel@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
.L4:
	.loc 1 23 0
	movl	$51, (%esp)
	call	option_was_implicitly_seen@PLT
	testl	%eax, %eax
	je	.L6
	.loc 1 24 0
	movl	$51, (%esp)
	call	get_option_name@PLT
	movl	%eax, %edx
	movl	option_name@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 25 0
	movl	$0, 4(%esp)
	movl	skip_as@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
.L6:
	.loc 1 27 0
	movl	$91, (%esp)
	call	option_was_implicitly_seen@PLT
	testl	%eax, %eax
	je	.L8
	.loc 1 28 0
	movl	$91, (%esp)
	call	get_option_name@PLT
	movl	%eax, %edx
	movl	option_name@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 29 0
	movl	$2, 4(%esp)
	movl	shared@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
.L8:
	.loc 1 31 0
	movl	$98, (%esp)
	call	option_was_implicitly_seen@PLT
	testl	%eax, %eax
	je	.L10
	.loc 1 32 0
	movl	$98, (%esp)
	call	get_option_name@PLT
	movl	%eax, %edx
	movl	option_name@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 33 0
	movl	$2, 4(%esp)
	movl	rflag@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
.L10:
	.loc 1 35 0
	movl	$99, (%esp)
	call	option_was_implicitly_seen@PLT
	testl	%eax, %eax
	je	.L12
	.loc 1 36 0
	movl	$99, (%esp)
	call	get_option_name@PLT
	movl	%eax, %edx
	movl	option_name@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 37 0
	movl	$1, 4(%esp)
	movl	rflag@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
.L12:
	.loc 1 39 0
	movl	$100, (%esp)
	call	option_was_implicitly_seen@PLT
	testl	%eax, %eax
	je	.L14
	.loc 1 40 0
	movl	$100, (%esp)
	call	get_option_name@PLT
	movl	%eax, %edx
	movl	option_name@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 41 0
	movl	$4, 4(%esp)
	movl	shared@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
	movl	last_phase@GOT(%ebx), %eax
	movl	$39, (%eax)
.L14:
	.loc 1 43 0
	movl	$101, (%esp)
	call	option_was_implicitly_seen@PLT
	testl	%eax, %eax
	je	.L16
	.loc 1 44 0
	movl	$101, (%esp)
	call	get_option_name@PLT
	movl	%eax, %edx
	movl	option_name@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 45 0
	movl	$1, 4(%esp)
	movl	qwalign2@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
	movl	$0, 4(%esp)
	movl	qwalign1@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
.L16:
	.loc 1 47 0
	movl	$102, (%esp)
	call	option_was_implicitly_seen@PLT
	testl	%eax, %eax
	je	.L18
	.loc 1 48 0
	movl	$102, (%esp)
	call	get_option_name@PLT
	movl	%eax, %edx
	movl	option_name@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 49 0
	movl	$1, 4(%esp)
	movl	qwalign1@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
	movl	$0, 4(%esp)
	movl	qwalign2@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
.L18:
	.loc 1 51 0
	movl	$142, (%esp)
	call	option_was_implicitly_seen@PLT
	testl	%eax, %eax
	je	.L20
	.loc 1 52 0
	movl	$142, (%esp)
	call	get_option_name@PLT
	movl	%eax, %edx
	movl	option_name@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 53 0
	movl	$1, 4(%esp)
	movl	iflag@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
.L20:
	.loc 1 55 0
	movl	$150, (%esp)
	call	option_was_implicitly_seen@PLT
	testl	%eax, %eax
	je	.L22
	.loc 1 56 0
	movl	$150, (%esp)
	call	get_option_name@PLT
	movl	%eax, %edx
	movl	option_name@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 57 0
	movl	$1, 4(%esp)
	movl	skip_as@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
.L22:
	.loc 1 59 0
	movl	$157, (%esp)
	call	option_was_implicitly_seen@PLT
	testl	%eax, %eax
	je	.L24
	.loc 1 60 0
	movl	$157, (%esp)
	call	get_option_name@PLT
	movl	%eax, %edx
	movl	option_name@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 61 0
	movl	$1, 4(%esp)
	movl	abi@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
.L24:
	.loc 1 63 0
	movl	$162, (%esp)
	call	option_was_implicitly_seen@PLT
	testl	%eax, %eax
	je	.L26
	.loc 1 64 0
	movl	$162, (%esp)
	call	get_option_name@PLT
	movl	%eax, %edx
	movl	option_name@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 65 0
	movl	$1, 4(%esp)
	movl	sse2@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
	movl	$1, 4(%esp)
	movl	sse3@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
.L26:
	.loc 1 67 0
	movl	$163, (%esp)
	call	option_was_implicitly_seen@PLT
	testl	%eax, %eax
	je	.L28
	.loc 1 68 0
	movl	$163, (%esp)
	call	get_option_name@PLT
	movl	%eax, %edx
	movl	option_name@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 69 0
	movl	$1, 4(%esp)
	movl	sse2@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
.L28:
	.loc 1 71 0
	movl	$165, (%esp)
	call	option_was_implicitly_seen@PLT
	testl	%eax, %eax
	je	.L30
	.loc 1 72 0
	movl	$165, (%esp)
	call	get_option_name@PLT
	movl	%eax, %edx
	movl	option_name@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 73 0
	movl	$1, 4(%esp)
	movl	ospace@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
.L30:
	.loc 1 75 0
	movl	$174, (%esp)
	call	option_was_implicitly_seen@PLT
	testl	%eax, %eax
	je	.L32
	.loc 1 76 0
	movl	$174, (%esp)
	call	get_option_name@PLT
	movl	%eax, %edx
	movl	option_name@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 77 0
	movl	$0, 4(%esp)
	movl	mpkind@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
.L32:
	.loc 1 79 0
	movl	$176, (%esp)
	call	option_was_implicitly_seen@PLT
	testl	%eax, %eax
	je	.L34
	.loc 1 80 0
	movl	$176, (%esp)
	call	get_option_name@PLT
	movl	%eax, %edx
	movl	option_name@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 81 0
	movl	$0, 4(%esp)
	movl	sse3@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
.L34:
	.loc 1 83 0
	movl	$177, (%esp)
	call	option_was_implicitly_seen@PLT
	testl	%eax, %eax
	je	.L36
	.loc 1 84 0
	movl	$177, (%esp)
	call	get_option_name@PLT
	movl	%eax, %edx
	movl	option_name@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 85 0
	movl	$0, 4(%esp)
	movl	sse2@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
	movl	$0, 4(%esp)
	movl	sse3@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
.L36:
	.loc 1 87 0
	movl	$178, (%esp)
	call	option_was_implicitly_seen@PLT
	testl	%eax, %eax
	je	.L38
	.loc 1 88 0
	movl	$178, (%esp)
	call	get_option_name@PLT
	movl	%eax, %edx
	movl	option_name@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 89 0
	movl	$0, 4(%esp)
	movl	sse2@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
	movl	$0, 4(%esp)
	movl	sse3@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
.L38:
	.loc 1 91 0
	movl	$183, (%esp)
	call	option_was_implicitly_seen@PLT
	testl	%eax, %eax
	je	.L40
	.loc 1 92 0
	movl	$183, (%esp)
	call	get_option_name@PLT
	movl	%eax, %edx
	movl	option_name@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 93 0
	movl	$0, 4(%esp)
	movl	m3dnow@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
.L40:
	.loc 1 95 0
	movl	$185, (%esp)
	call	option_was_implicitly_seen@PLT
	testl	%eax, %eax
	je	.L42
	.loc 1 96 0
	movl	$185, (%esp)
	call	get_option_name@PLT
	movl	%eax, %edx
	movl	option_name@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 97 0
	movl	$4, 4(%esp)
	movl	isa@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
.L42:
	.loc 1 99 0
	movl	$201, (%esp)
	call	option_was_implicitly_seen@PLT
	testl	%eax, %eax
	je	.L44
	.loc 1 100 0
	movl	$201, (%esp)
	call	get_option_name@PLT
	movl	%eax, %edx
	movl	option_name@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 101 0
	movl	$2, 4(%esp)
	movl	abi@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
.L44:
	.loc 1 103 0
	movl	$202, (%esp)
	call	option_was_implicitly_seen@PLT
	testl	%eax, %eax
	je	.L46
	.loc 1 104 0
	movl	$202, (%esp)
	call	get_option_name@PLT
	movl	%eax, %edx
	movl	option_name@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 105 0
	movl	$1, 4(%esp)
	movl	m3dnow@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
.L46:
	.loc 1 107 0
	movl	$204, (%esp)
	call	option_was_implicitly_seen@PLT
	testl	%eax, %eax
	je	.L48
	.loc 1 108 0
	movl	$204, (%esp)
	call	get_option_name@PLT
	movl	%eax, %edx
	movl	option_name@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 109 0
	movl	$1, 4(%esp)
	movl	abi@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
.L48:
	.loc 1 111 0
	movl	$215, (%esp)
	call	option_was_implicitly_seen@PLT
	testl	%eax, %eax
	je	.L50
	.loc 1 112 0
	movl	$215, (%esp)
	call	get_option_name@PLT
	movl	%eax, %edx
	movl	option_name@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 113 0
	movl	$1, 4(%esp)
	movl	ipa@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
.L50:
	.loc 1 115 0
	movl	$223, (%esp)
	call	option_was_implicitly_seen@PLT
	testl	%eax, %eax
	je	.L52
	.loc 1 116 0
	movl	$223, (%esp)
	call	get_option_name@PLT
	movl	%eax, %edx
	movl	option_name@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 117 0
	movl	$3, 4(%esp)
	movl	iflag@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
.L52:
	.loc 1 119 0
	movl	$224, (%esp)
	call	option_was_implicitly_seen@PLT
	testl	%eax, %eax
	je	.L54
	.loc 1 120 0
	movl	$224, (%esp)
	call	get_option_name@PLT
	movl	%eax, %edx
	movl	option_name@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 121 0
	movl	$2, 4(%esp)
	movl	iflag@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
.L54:
	.loc 1 123 0
	movl	$225, (%esp)
	call	option_was_implicitly_seen@PLT
	testl	%eax, %eax
	je	.L56
	.loc 1 124 0
	movl	$225, (%esp)
	call	get_option_name@PLT
	movl	%eax, %edx
	movl	option_name@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 125 0
	movl	$1, 4(%esp)
	movl	iflag@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
.L56:
	.loc 1 127 0
	movl	$228, (%esp)
	call	option_was_implicitly_seen@PLT
	testl	%eax, %eax
	je	.L58
	.loc 1 128 0
	movl	$228, (%esp)
	call	get_option_name@PLT
	movl	%eax, %edx
	movl	option_name@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 129 0
	movl	$1, 4(%esp)
	movl	use_h264libs@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
	movl	$0, 4(%esp)
	movl	use_bblibs@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
.L58:
	.loc 1 131 0
	movl	$235, (%esp)
	call	option_was_implicitly_seen@PLT
	testl	%eax, %eax
	je	.L60
	.loc 1 132 0
	movl	$235, (%esp)
	call	get_option_name@PLT
	movl	%eax, %edx
	movl	option_name@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 133 0
	movl	$3, 4(%esp)
	movl	glevel@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
.L60:
	.loc 1 135 0
	movl	$236, (%esp)
	call	option_was_implicitly_seen@PLT
	testl	%eax, %eax
	je	.L62
	.loc 1 136 0
	movl	$236, (%esp)
	call	get_option_name@PLT
	movl	%eax, %edx
	movl	option_name@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 137 0
	movl	$2, 4(%esp)
	movl	glevel@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
.L62:
	.loc 1 139 0
	movl	$237, (%esp)
	call	option_was_implicitly_seen@PLT
	testl	%eax, %eax
	je	.L64
	.loc 1 140 0
	movl	$237, (%esp)
	call	get_option_name@PLT
	movl	%eax, %edx
	movl	option_name@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 141 0
	movl	$3, 4(%esp)
	movl	glevel@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
.L64:
	.loc 1 143 0
	movl	$238, (%esp)
	call	option_was_implicitly_seen@PLT
	testl	%eax, %eax
	je	.L66
	.loc 1 144 0
	movl	$238, (%esp)
	call	get_option_name@PLT
	movl	%eax, %edx
	movl	option_name@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 145 0
	movl	$2, 4(%esp)
	movl	glevel@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
.L66:
	.loc 1 147 0
	movl	$239, (%esp)
	call	option_was_implicitly_seen@PLT
	testl	%eax, %eax
	je	.L68
	.loc 1 148 0
	movl	$239, (%esp)
	call	get_option_name@PLT
	movl	%eax, %edx
	movl	option_name@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 149 0
	movl	$1, 4(%esp)
	movl	glevel@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
.L68:
	.loc 1 151 0
	movl	$240, (%esp)
	call	option_was_implicitly_seen@PLT
	testl	%eax, %eax
	je	.L70
	.loc 1 152 0
	movl	$240, (%esp)
	call	get_option_name@PLT
	movl	%eax, %edx
	movl	option_name@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 153 0
	movl	$0, 4(%esp)
	movl	glevel@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
.L70:
	.loc 1 155 0
	movl	$241, (%esp)
	call	option_was_implicitly_seen@PLT
	testl	%eax, %eax
	je	.L72
	.loc 1 156 0
	movl	$241, (%esp)
	call	get_option_name@PLT
	movl	%eax, %edx
	movl	option_name@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 157 0
	movl	$2, 4(%esp)
	movl	glevel@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
.L72:
	.loc 1 159 0
	movl	$246, (%esp)
	call	option_was_implicitly_seen@PLT
	testl	%eax, %eax
	je	.L74
	.loc 1 160 0
	movl	$246, (%esp)
	call	get_option_name@PLT
	movl	%eax, %edx
	movl	option_name@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 161 0
	movl	$3, 4(%esp)
	movl	glevel@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
.L74:
	.loc 1 163 0
	movl	$247, (%esp)
	call	option_was_implicitly_seen@PLT
	testl	%eax, %eax
	je	.L76
	.loc 1 164 0
	movl	$247, (%esp)
	call	get_option_name@PLT
	movl	%eax, %edx
	movl	option_name@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 165 0
	movl	$2, 4(%esp)
	movl	glevel@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
.L76:
	.loc 1 167 0
	movl	$248, (%esp)
	call	option_was_implicitly_seen@PLT
	testl	%eax, %eax
	je	.L78
	.loc 1 168 0
	movl	$248, (%esp)
	call	get_option_name@PLT
	movl	%eax, %edx
	movl	option_name@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 169 0
	movl	$1, 4(%esp)
	movl	glevel@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
.L78:
	.loc 1 171 0
	movl	$249, (%esp)
	call	option_was_implicitly_seen@PLT
	testl	%eax, %eax
	je	.L80
	.loc 1 172 0
	movl	$249, (%esp)
	call	get_option_name@PLT
	movl	%eax, %edx
	movl	option_name@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 173 0
	movl	$0, 4(%esp)
	movl	glevel@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
.L80:
	.loc 1 175 0
	movl	$250, (%esp)
	call	option_was_implicitly_seen@PLT
	testl	%eax, %eax
	je	.L82
	.loc 1 176 0
	movl	$250, (%esp)
	call	get_option_name@PLT
	movl	%eax, %edx
	movl	option_name@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 177 0
	movl	$2, 4(%esp)
	movl	glevel@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
.L82:
	.loc 1 179 0
	movl	$266, (%esp)
	call	option_was_implicitly_seen@PLT
	testl	%eax, %eax
	je	.L84
	.loc 1 180 0
	movl	$266, (%esp)
	call	get_option_name@PLT
	movl	%eax, %edx
	movl	option_name@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 181 0
	movl	$2, 4(%esp)
	movl	msglevel@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
.L84:
	.loc 1 183 0
	movl	$268, (%esp)
	call	option_was_implicitly_seen@PLT
	testl	%eax, %eax
	je	.L86
	.loc 1 184 0
	movl	$268, (%esp)
	call	get_option_name@PLT
	movl	%eax, %edx
	movl	option_name@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 185 0
	movl	$1, 4(%esp)
	movl	use_ftpp@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
.L86:
	.loc 1 187 0
	movl	$292, (%esp)
	call	option_was_implicitly_seen@PLT
	testl	%eax, %eax
	je	.L88
	.loc 1 188 0
	movl	$292, (%esp)
	call	get_option_name@PLT
	movl	%eax, %edx
	movl	option_name@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 189 0
	movl	$2, 4(%esp)
	movl	fortran_form@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
.L88:
	.loc 1 191 0
	movl	$299, (%esp)
	call	option_was_implicitly_seen@PLT
	testl	%eax, %eax
	je	.L90
	.loc 1 192 0
	movl	$299, (%esp)
	call	get_option_name@PLT
	movl	%eax, %edx
	movl	option_name@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 193 0
	movl	$1, 4(%esp)
	movl	pic@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
.L90:
	.loc 1 195 0
	movl	$329, (%esp)
	call	option_was_implicitly_seen@PLT
	testl	%eax, %eax
	je	.L92
	.loc 1 196 0
	movl	$329, (%esp)
	call	get_option_name@PLT
	movl	%eax, %edx
	movl	option_name@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 197 0
	movl	$0, 4(%esp)
	movl	pic@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
.L92:
	.loc 1 199 0
	movl	$336, (%esp)
	call	option_was_implicitly_seen@PLT
	testl	%eax, %eax
	je	.L94
	.loc 1 200 0
	movl	$336, (%esp)
	call	get_option_name@PLT
	movl	%eax, %edx
	movl	option_name@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 201 0
	movl	$0, 4(%esp)
	movl	fmath_errno@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
.L94:
	.loc 1 203 0
	movl	$350, (%esp)
	call	option_was_implicitly_seen@PLT
	testl	%eax, %eax
	je	.L96
	.loc 1 204 0
	movl	$350, (%esp)
	call	get_option_name@PLT
	movl	%eax, %edx
	movl	option_name@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 205 0
	movl	$0, 4(%esp)
	movl	ffast_math@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
.L96:
	.loc 1 207 0
	movl	$357, (%esp)
	call	option_was_implicitly_seen@PLT
	testl	%eax, %eax
	je	.L98
	.loc 1 208 0
	movl	$357, (%esp)
	call	get_option_name@PLT
	movl	%eax, %edx
	movl	option_name@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 209 0
	movl	$0, 4(%esp)
	movl	fbuiltin@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
.L98:
	.loc 1 211 0
	movl	$360, (%esp)
	call	option_was_implicitly_seen@PLT
	testl	%eax, %eax
	je	.L100
	.loc 1 212 0
	movl	$360, (%esp)
	call	get_option_name@PLT
	movl	%eax, %edx
	movl	option_name@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 213 0
	movl	$0, 4(%esp)
	movl	pic@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
.L100:
	.loc 1 215 0
	movl	$364, (%esp)
	call	option_was_implicitly_seen@PLT
	testl	%eax, %eax
	je	.L102
	.loc 1 216 0
	movl	$364, (%esp)
	call	get_option_name@PLT
	movl	%eax, %edx
	movl	option_name@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 217 0
	movl	$1, 4(%esp)
	movl	fmath_errno@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
.L102:
	.loc 1 219 0
	movl	$369, (%esp)
	call	option_was_implicitly_seen@PLT
	testl	%eax, %eax
	je	.L104
	.loc 1 220 0
	movl	$369, (%esp)
	call	get_option_name@PLT
	movl	%eax, %edx
	movl	option_name@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 221 0
	movl	$1, 4(%esp)
	movl	fortran_form@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
.L104:
	.loc 1 223 0
	movl	$389, (%esp)
	call	option_was_implicitly_seen@PLT
	testl	%eax, %eax
	je	.L106
	.loc 1 224 0
	movl	$389, (%esp)
	call	get_option_name@PLT
	movl	%eax, %edx
	movl	option_name@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 225 0
	movl	$1, 4(%esp)
	movl	ffast_math@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
.L106:
	.loc 1 227 0
	movl	$407, (%esp)
	call	option_was_implicitly_seen@PLT
	testl	%eax, %eax
	je	.L108
	.loc 1 228 0
	movl	$407, (%esp)
	call	get_option_name@PLT
	movl	%eax, %edx
	movl	option_name@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 229 0
	movl	$1, 4(%esp)
	movl	use_coco@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
.L108:
	.loc 1 231 0
	movl	$414, (%esp)
	call	option_was_implicitly_seen@PLT
	testl	%eax, %eax
	je	.L110
	.loc 1 232 0
	movl	$414, (%esp)
	call	get_option_name@PLT
	movl	%eax, %edx
	movl	option_name@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 233 0
	movl	$1, 4(%esp)
	movl	fbuiltin@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
.L110:
	.loc 1 235 0
	movl	$435, (%esp)
	call	option_was_implicitly_seen@PLT
	testl	%eax, %eax
	je	.L112
	.loc 1 236 0
	movl	$435, (%esp)
	call	get_option_name@PLT
	movl	%eax, %edx
	movl	option_name@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 237 0
	movl	$1, 4(%esp)
	movl	pic@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
.L112:
	.loc 1 239 0
	movl	$485, (%esp)
	call	option_was_implicitly_seen@PLT
	testl	%eax, %eax
	je	.L114
	.loc 1 240 0
	movl	$485, (%esp)
	call	get_option_name@PLT
	movl	%eax, %edx
	movl	option_name@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 241 0
	movl	$1, 4(%esp)
	movl	dflag@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
.L114:
	.loc 1 243 0
	movl	$488, (%esp)
	call	option_was_implicitly_seen@PLT
	testl	%eax, %eax
	je	.L116
	.loc 1 244 0
	movl	$488, (%esp)
	call	get_option_name@PLT
	movl	%eax, %edx
	movl	option_name@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 245 0
	movl	$0, 4(%esp)
	movl	use_ftpp@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
	movl	first_phase@GOT(%ebx), %eax
	movl	$12, (%eax)
.L116:
	.loc 1 247 0
	movl	$489, (%esp)
	call	option_was_implicitly_seen@PLT
	testl	%eax, %eax
	je	.L118
	.loc 1 248 0
	movl	$489, (%esp)
	call	get_option_name@PLT
	movl	%eax, %edx
	movl	option_name@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 249 0
	movl	$1, 4(%esp)
	movl	cordflag@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
.L118:
	.loc 1 251 0
	movl	$492, (%esp)
	call	option_was_implicitly_seen@PLT
	testl	%eax, %eax
	je	.L120
	.loc 1 252 0
	movl	$492, (%esp)
	call	get_option_name@PLT
	movl	%eax, %edx
	movl	option_name@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 253 0
	movl	$1, 4(%esp)
	movl	compat_gcc@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
.L120:
	.loc 1 255 0
	movl	$502, (%esp)
	call	option_was_implicitly_seen@PLT
	testl	%eax, %eax
	je	.L122
	.loc 1 256 0
	movl	$502, (%esp)
	call	get_option_name@PLT
	movl	%eax, %edx
	movl	option_name@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 257 0
	movl	$1, 4(%esp)
	movl	io_byteswap@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
.L122:
	.loc 1 259 0
	movl	$504, (%esp)
	call	option_was_implicitly_seen@PLT
	testl	%eax, %eax
	je	.L124
	.loc 1 260 0
	movl	$504, (%esp)
	call	get_option_name@PLT
	movl	%eax, %edx
	movl	option_name@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 261 0
	movl	$1, 4(%esp)
	movl	use_bblibs@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
	movl	$0, 4(%esp)
	movl	use_h264libs@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
.L124:
	.loc 1 263 0
	movl	$508, (%esp)
	call	option_was_implicitly_seen@PLT
	testl	%eax, %eax
	je	.L126
	.loc 1 264 0
	movl	$508, (%esp)
	call	get_option_name@PLT
	movl	%eax, %edx
	movl	option_name@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 265 0
	movl	$1, 4(%esp)
	movl	isstatic@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
.L126:
	.loc 1 267 0
	movl	$515, (%esp)
	call	option_was_implicitly_seen@PLT
	testl	%eax, %eax
	je	.L128
	.loc 1 268 0
	movl	$515, (%esp)
	call	get_option_name@PLT
	movl	%eax, %edx
	movl	option_name@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 269 0
	movl	$2, 4(%esp)
	movl	ansi@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
.L128:
	.loc 1 271 0
	movl	$696, (%esp)
	call	option_was_implicitly_seen@PLT
	testl	%eax, %eax
	je	.L130
	.loc 1 272 0
	movl	$696, (%esp)
	call	get_option_name@PLT
	movl	%eax, %edx
	movl	option_name@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 273 0
	movl	$1, 4(%esp)
	movl	ospace@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
.L130:
	.loc 1 275 0
	movl	$701, (%esp)
	call	option_was_implicitly_seen@PLT
	testl	%eax, %eax
	je	.L132
	.loc 1 276 0
	movl	$701, (%esp)
	call	get_option_name@PLT
	movl	%eax, %edx
	movl	option_name@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 277 0
	movl	$2, 4(%esp)
	movl	olevel@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
.L132:
	.loc 1 279 0
	movl	$702, (%esp)
	call	option_was_implicitly_seen@PLT
	testl	%eax, %eax
	je	.L134
	.loc 1 280 0
	movl	$702, (%esp)
	call	get_option_name@PLT
	movl	%eax, %edx
	movl	option_name@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 281 0
	movl	$1, 4(%esp)
	movl	olevel@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
.L134:
	.loc 1 283 0
	movl	$703, (%esp)
	call	option_was_implicitly_seen@PLT
	testl	%eax, %eax
	je	.L136
	.loc 1 284 0
	movl	$703, (%esp)
	call	get_option_name@PLT
	movl	%eax, %edx
	movl	option_name@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 285 0
	movl	$0, 4(%esp)
	movl	olevel@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
.L136:
	.loc 1 287 0
	movl	$705, (%esp)
	call	option_was_implicitly_seen@PLT
	testl	%eax, %eax
	je	.L138
	.loc 1 288 0
	movl	$705, (%esp)
	call	get_option_name@PLT
	movl	%eax, %edx
	movl	option_name@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 289 0
	movl	$2, 4(%esp)
	movl	olevel@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
.L138:
	.loc 1 291 0
	movl	$723, (%esp)
	call	option_was_implicitly_seen@PLT
	testl	%eax, %eax
	je	.L140
	.loc 1 292 0
	movl	$723, (%esp)
	call	get_option_name@PLT
	movl	%eax, %edx
	movl	option_name@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 293 0
	movl	$1, 4(%esp)
	movl	standard_cplusplus@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
.L140:
	.loc 1 295 0
	movl	$727, (%esp)
	call	option_was_implicitly_seen@PLT
	testl	%eax, %eax
	je	.L142
	.loc 1 296 0
	movl	$727, (%esp)
	call	get_option_name@PLT
	movl	%eax, %edx
	movl	option_name@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 297 0
	movl	$1, 4(%esp)
	movl	ipa@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
.L142:
	.loc 1 299 0
	movl	$728, (%esp)
	call	option_was_implicitly_seen@PLT
	testl	%eax, %eax
	je	.L146
	.loc 1 300 0
	movl	$728, (%esp)
	call	get_option_name@PLT
	movl	%eax, %edx
	movl	option_name@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 301 0
	movl	$1, 4(%esp)
	movl	ipa@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
.L146:
	.loc 1 303 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE2:
	.size	toggle_implicits, .-toggle_implicits
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
	.long	.LFB2
	.long	.LFE2-.LFB2
	.byte	0x4
	.long	.LCFI0-.LFB2
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
	.file 2 "../../driver/lang_defs.h"
	.file 3 "option_names.h"
	.file 4 "../../driver/get_options.h"
	.text
.Letext0:
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LFB2-.Ltext0
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
	.long	.LFE2-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
	.section	.debug_info
	.long	0x61b
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.Ldebug_line0
	.long	.Letext0
	.long	.Ltext0
	.string	"GNU C 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.byte	0x1
	.string	"implicits.c"
	.string	"/usa/handong/simplnano/cmplr/targia32_sl1/driver"
	.uleb128 0x2
	.long	.LASF0
	.byte	0x4
	.byte	0x7
	.uleb128 0x3
	.string	"unsigned char"
	.byte	0x1
	.byte	0x8
	.uleb128 0x3
	.string	"short unsigned int"
	.byte	0x2
	.byte	0x7
	.uleb128 0x3
	.string	"long unsigned int"
	.byte	0x4
	.byte	0x7
	.uleb128 0x3
	.string	"signed char"
	.byte	0x1
	.byte	0x6
	.uleb128 0x3
	.string	"short int"
	.byte	0x2
	.byte	0x5
	.uleb128 0x3
	.string	"int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x3
	.string	"long long int"
	.byte	0x8
	.byte	0x5
	.uleb128 0x3
	.string	"long long unsigned int"
	.byte	0x8
	.byte	0x7
	.uleb128 0x3
	.string	"long int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x2
	.long	.LASF0
	.byte	0x4
	.byte	0x7
	.uleb128 0x4
	.byte	0x4
	.long	0x124
	.uleb128 0x3
	.string	"char"
	.byte	0x1
	.byte	0x8
	.uleb128 0x5
	.long	0x353
	.byte	0x4
	.byte	0x2
	.byte	0x54
	.uleb128 0x6
	.string	"P_NONE"
	.sleb128 0
	.uleb128 0x6
	.string	"P_All"
	.sleb128 1
	.uleb128 0x6
	.string	"P_m4"
	.sleb128 2
	.uleb128 0x6
	.string	"P_ratfor"
	.sleb128 3
	.uleb128 0x6
	.string	"P_cpp"
	.sleb128 4
	.uleb128 0x6
	.string	"P_gcpp"
	.sleb128 5
	.uleb128 0x6
	.string	"P_gcpp_plus"
	.sleb128 6
	.uleb128 0x6
	.string	"P_c_cpp"
	.sleb128 7
	.uleb128 0x6
	.string	"P_cplus_cpp"
	.sleb128 8
	.uleb128 0x6
	.string	"P_f_cpp"
	.sleb128 9
	.uleb128 0x6
	.string	"P_f90_cpp"
	.sleb128 10
	.uleb128 0x6
	.string	"P_f_coco"
	.sleb128 11
	.uleb128 0x6
	.string	"P_any_cpp"
	.sleb128 12
	.uleb128 0x6
	.string	"P_pfa"
	.sleb128 13
	.uleb128 0x6
	.string	"P_pca"
	.sleb128 14
	.uleb128 0x6
	.string	"P_mpc"
	.sleb128 15
	.uleb128 0x6
	.string	"P_any_optfe"
	.sleb128 16
	.uleb128 0x6
	.string	"P_f_fe"
	.sleb128 17
	.uleb128 0x6
	.string	"P_cppf_fe"
	.sleb128 18
	.uleb128 0x6
	.string	"P_f90_fe"
	.sleb128 19
	.uleb128 0x6
	.string	"P_cppf90_fe"
	.sleb128 20
	.uleb128 0x6
	.string	"P_c_gfe"
	.sleb128 21
	.uleb128 0x6
	.string	"P_cplus_gfe"
	.sleb128 22
	.uleb128 0x6
	.string	"P_any_fe"
	.sleb128 23
	.uleb128 0x6
	.string	"P_pseudo_f_fe"
	.sleb128 24
	.uleb128 0x6
	.string	"P_pseudo_c_fe"
	.sleb128 25
	.uleb128 0x6
	.string	"P_lister"
	.sleb128 26
	.uleb128 0x6
	.string	"P_inline"
	.sleb128 27
	.uleb128 0x6
	.string	"P_ipl"
	.sleb128 28
	.uleb128 0x6
	.string	"p_any_ipl"
	.sleb128 29
	.uleb128 0x6
	.string	"P_be"
	.sleb128 30
	.uleb128 0x6
	.string	"P_as"
	.sleb128 31
	.uleb128 0x6
	.string	"P_gas"
	.sleb128 32
	.uleb128 0x6
	.string	"P_any_as"
	.sleb128 33
	.uleb128 0x6
	.string	"P_dsm_prelink"
	.sleb128 34
	.uleb128 0x6
	.string	"P_ipa_link"
	.sleb128 35
	.uleb128 0x6
	.string	"P_collect"
	.sleb128 36
	.uleb128 0x6
	.string	"P_ld"
	.sleb128 37
	.uleb128 0x6
	.string	"P_ldplus"
	.sleb128 38
	.uleb128 0x6
	.string	"P_any_ld"
	.sleb128 39
	.uleb128 0x6
	.string	"P_cord"
	.sleb128 40
	.uleb128 0x6
	.string	"P_pixie"
	.sleb128 41
	.uleb128 0x6
	.string	"P_prof"
	.sleb128 42
	.uleb128 0x6
	.string	"P_ar"
	.sleb128 43
	.uleb128 0x6
	.string	"P_startup"
	.sleb128 44
	.uleb128 0x6
	.string	"P_include"
	.sleb128 45
	.uleb128 0x6
	.string	"P_library"
	.sleb128 46
	.uleb128 0x6
	.string	"P_alt_library"
	.sleb128 47
	.uleb128 0x6
	.string	"P_sl2startup"
	.sleb128 48
	.uleb128 0x6
	.string	"P_LAST"
	.sleb128 49
	.byte	0x0
	.uleb128 0x7
	.string	"phases_t"
	.byte	0x2
	.byte	0x97
	.long	0x12c
	.uleb128 0x8
	.byte	0x1
	.string	"toggle_implicits"
	.byte	0x1
	.byte	0xe
	.byte	0x1
	.long	.LFB2
	.long	.LFE2
	.long	.LLST0
	.uleb128 0x9
	.string	"first_phase"
	.byte	0x2
	.byte	0x9f
	.long	0x353
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.string	"last_phase"
	.byte	0x2
	.byte	0xa0
	.long	0x353
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.string	"msglevel"
	.byte	0x3
	.value	0x327
	.long	0xd9
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.string	"skip_as"
	.byte	0x3
	.value	0x328
	.long	0xd9
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.string	"shared"
	.byte	0x3
	.value	0x329
	.long	0xd9
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.string	"rflag"
	.byte	0x3
	.value	0x32a
	.long	0xd9
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.string	"qwalign2"
	.byte	0x3
	.value	0x32b
	.long	0xd9
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.string	"qwalign1"
	.byte	0x3
	.value	0x32c
	.long	0xd9
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.string	"iflag"
	.byte	0x3
	.value	0x32d
	.long	0xd9
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.string	"abi"
	.byte	0x3
	.value	0x32e
	.long	0xd9
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.string	"sse2"
	.byte	0x3
	.value	0x32f
	.long	0xd9
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.string	"ospace"
	.byte	0x3
	.value	0x330
	.long	0xd9
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.string	"mpkind"
	.byte	0x3
	.value	0x331
	.long	0xd9
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.string	"sse3"
	.byte	0x3
	.value	0x332
	.long	0xd9
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.string	"m3dnow"
	.byte	0x3
	.value	0x333
	.long	0xd9
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.string	"isa"
	.byte	0x3
	.value	0x334
	.long	0xd9
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.string	"ipa"
	.byte	0x3
	.value	0x335
	.long	0xd9
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.string	"use_h264libs"
	.byte	0x3
	.value	0x336
	.long	0xd9
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.string	"glevel"
	.byte	0x3
	.value	0x337
	.long	0xd9
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.string	"use_ftpp"
	.byte	0x3
	.value	0x338
	.long	0xd9
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.string	"fortran_form"
	.byte	0x3
	.value	0x339
	.long	0xd9
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.string	"pic"
	.byte	0x3
	.value	0x33a
	.long	0xd9
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.string	"fmath_errno"
	.byte	0x3
	.value	0x33b
	.long	0xd9
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.string	"ffast_math"
	.byte	0x3
	.value	0x33c
	.long	0xd9
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.string	"fbuiltin"
	.byte	0x3
	.value	0x33d
	.long	0xd9
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.string	"use_coco"
	.byte	0x3
	.value	0x33e
	.long	0xd9
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.string	"dflag"
	.byte	0x3
	.value	0x33f
	.long	0xd9
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.string	"cordflag"
	.byte	0x3
	.value	0x340
	.long	0xd9
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.string	"io_byteswap"
	.byte	0x3
	.value	0x341
	.long	0xd9
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.string	"compat_gcc"
	.byte	0x3
	.value	0x342
	.long	0xd9
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.string	"use_bblibs"
	.byte	0x3
	.value	0x343
	.long	0xd9
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.string	"isstatic"
	.byte	0x3
	.value	0x344
	.long	0xd9
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.string	"ansi"
	.byte	0x3
	.value	0x345
	.long	0xd9
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.string	"olevel"
	.byte	0x3
	.value	0x346
	.long	0xd9
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.string	"standard_cplusplus"
	.byte	0x3
	.value	0x347
	.long	0xd9
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.string	"option_name"
	.byte	0x4
	.byte	0x2a
	.long	0x11e
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
	.uleb128 0x3
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
	.uleb128 0x4
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
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
	.uleb128 0x6
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0x0
	.byte	0x0
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.long	0x23
	.value	0x2
	.long	.Ldebug_info0
	.long	0x61f
	.long	0x363
	.string	"toggle_implicits"
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
