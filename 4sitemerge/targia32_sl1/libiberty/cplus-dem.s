	.file	"cplus-dem.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
.globl current_demangling_style
	.data
	.align 4
	.type	current_demangling_style, @object
	.size	current_demangling_style, 4
current_demangling_style:
	.long	256
	.type	cplus_markers, @object
	.size	cplus_markers, 4
cplus_markers:
	.byte	36
	.byte	46
	.byte	36
	.byte	0
	.local	char_str
	.comm	char_str,2,1
	.text
.globl set_cplus_marker_for_demangling
	.type	set_cplus_marker_for_demangling, @function
set_cplus_marker_for_demangling:
.LFB5:
	.file 1 "../../libiberty/cplus-dem.c"
	.loc 1 108 0
	pushl	%ebp
.LCFI0:
	movl	%esp, %ebp
.LCFI1:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 109 0
	movl	8(%ebp), %eax
	movb	%al, cplus_markers@GOTOFF(%ecx)
	.loc 1 110 0
	popl	%ebp
	ret
.LFE5:
	.size	set_cplus_marker_for_demangling, .-set_cplus_marker_for_demangling
	.section	.rodata
.LC0:
	.string	"nw"
.LC1:
	.string	" new"
.LC2:
	.string	"dl"
.LC3:
	.string	" delete"
.LC4:
	.string	"new"
.LC5:
	.string	"delete"
.LC6:
	.string	"vn"
.LC7:
	.string	" new []"
.LC8:
	.string	"vd"
.LC9:
	.string	" delete []"
.LC10:
	.string	"as"
.LC11:
	.string	"="
.LC12:
	.string	"ne"
.LC13:
	.string	"!="
.LC14:
	.string	"eq"
.LC15:
	.string	"=="
.LC16:
	.string	"ge"
.LC17:
	.string	">="
.LC18:
	.string	"gt"
.LC19:
	.string	">"
.LC20:
	.string	"le"
.LC21:
	.string	"<="
.LC22:
	.string	"lt"
.LC23:
	.string	"<"
.LC24:
	.string	"plus"
.LC25:
	.string	"+"
.LC26:
	.string	"pl"
.LC27:
	.string	"apl"
.LC28:
	.string	"+="
.LC29:
	.string	"minus"
.LC30:
	.string	"-"
.LC31:
	.string	"mi"
.LC32:
	.string	"ami"
.LC33:
	.string	"-="
.LC34:
	.string	"mult"
.LC35:
	.string	"*"
.LC36:
	.string	"ml"
.LC37:
	.string	"amu"
.LC38:
	.string	"*="
.LC39:
	.string	"aml"
.LC40:
	.string	"convert"
.LC41:
	.string	"negate"
.LC42:
	.string	"trunc_mod"
.LC43:
	.string	"%"
.LC44:
	.string	"md"
.LC45:
	.string	"amd"
.LC46:
	.string	"%="
.LC47:
	.string	"trunc_div"
.LC48:
	.string	"/"
.LC49:
	.string	"dv"
.LC50:
	.string	"adv"
.LC51:
	.string	"/="
.LC52:
	.string	"truth_andif"
.LC53:
	.string	"&&"
.LC54:
	.string	"aa"
.LC55:
	.string	"truth_orif"
.LC56:
	.string	"||"
.LC57:
	.string	"oo"
.LC58:
	.string	"truth_not"
.LC59:
	.string	"!"
.LC60:
	.string	"nt"
.LC61:
	.string	"postincrement"
.LC62:
	.string	"++"
.LC63:
	.string	"pp"
.LC64:
	.string	"postdecrement"
.LC65:
	.string	"--"
.LC66:
	.string	"mm"
.LC67:
	.string	"bit_ior"
.LC68:
	.string	"|"
.LC69:
	.string	"or"
.LC70:
	.string	"aor"
.LC71:
	.string	"|="
.LC72:
	.string	"bit_xor"
.LC73:
	.string	"^"
.LC74:
	.string	"er"
.LC75:
	.string	"aer"
.LC76:
	.string	"^="
.LC77:
	.string	"bit_and"
.LC78:
	.string	"&"
.LC79:
	.string	"ad"
.LC80:
	.string	"aad"
.LC81:
	.string	"&="
.LC82:
	.string	"bit_not"
.LC83:
	.string	"~"
.LC84:
	.string	"co"
.LC85:
	.string	"call"
.LC86:
	.string	"()"
.LC87:
	.string	"cl"
.LC88:
	.string	"alshift"
.LC89:
	.string	"<<"
.LC90:
	.string	"ls"
.LC91:
	.string	"als"
.LC92:
	.string	"<<="
.LC93:
	.string	"arshift"
.LC94:
	.string	">>"
.LC95:
	.string	"rs"
.LC96:
	.string	"ars"
.LC97:
	.string	">>="
.LC98:
	.string	"component"
.LC99:
	.string	"->"
.LC100:
	.string	"pt"
.LC101:
	.string	"rf"
.LC102:
	.string	"indirect"
.LC103:
	.string	"method_call"
.LC104:
	.string	"->()"
.LC105:
	.string	"addr"
.LC106:
	.string	"array"
.LC107:
	.string	"[]"
.LC108:
	.string	"vc"
.LC109:
	.string	"compound"
.LC110:
	.string	", "
.LC111:
	.string	"cm"
.LC112:
	.string	"cond"
.LC113:
	.string	"?:"
.LC114:
	.string	"cn"
.LC115:
	.string	"max"
.LC116:
	.string	">?"
.LC117:
	.string	"mx"
.LC118:
	.string	"min"
.LC119:
	.string	"<?"
.LC120:
	.string	"mn"
.LC121:
	.string	"nop"
.LC122:
	.string	""
.LC123:
	.string	"rm"
.LC124:
	.string	"->*"
.LC125:
	.string	"sz"
.LC126:
	.string	"sizeof "
	.section	.data.rel.ro.local,"aw",@progbits
	.align 32
	.type	optable, @object
	.size	optable, 948
optable:
	.long	.LC0
	.long	.LC1
	.long	2
	.long	.LC2
	.long	.LC3
	.long	2
	.long	.LC4
	.long	.LC1
	.long	0
	.long	.LC5
	.long	.LC3
	.long	0
	.long	.LC6
	.long	.LC7
	.long	2
	.long	.LC8
	.long	.LC9
	.long	2
	.long	.LC10
	.long	.LC11
	.long	2
	.long	.LC12
	.long	.LC13
	.long	2
	.long	.LC14
	.long	.LC15
	.long	2
	.long	.LC16
	.long	.LC17
	.long	2
	.long	.LC18
	.long	.LC19
	.long	2
	.long	.LC20
	.long	.LC21
	.long	2
	.long	.LC22
	.long	.LC23
	.long	2
	.long	.LC24
	.long	.LC25
	.long	0
	.long	.LC26
	.long	.LC25
	.long	2
	.long	.LC27
	.long	.LC28
	.long	2
	.long	.LC29
	.long	.LC30
	.long	0
	.long	.LC31
	.long	.LC30
	.long	2
	.long	.LC32
	.long	.LC33
	.long	2
	.long	.LC34
	.long	.LC35
	.long	0
	.long	.LC36
	.long	.LC35
	.long	2
	.long	.LC37
	.long	.LC38
	.long	2
	.long	.LC39
	.long	.LC38
	.long	2
	.long	.LC40
	.long	.LC25
	.long	0
	.long	.LC41
	.long	.LC30
	.long	0
	.long	.LC42
	.long	.LC43
	.long	0
	.long	.LC44
	.long	.LC43
	.long	2
	.long	.LC45
	.long	.LC46
	.long	2
	.long	.LC47
	.long	.LC48
	.long	0
	.long	.LC49
	.long	.LC48
	.long	2
	.long	.LC50
	.long	.LC51
	.long	2
	.long	.LC52
	.long	.LC53
	.long	0
	.long	.LC54
	.long	.LC53
	.long	2
	.long	.LC55
	.long	.LC56
	.long	0
	.long	.LC57
	.long	.LC56
	.long	2
	.long	.LC58
	.long	.LC59
	.long	0
	.long	.LC60
	.long	.LC59
	.long	2
	.long	.LC61
	.long	.LC62
	.long	0
	.long	.LC63
	.long	.LC62
	.long	2
	.long	.LC64
	.long	.LC65
	.long	0
	.long	.LC66
	.long	.LC65
	.long	2
	.long	.LC67
	.long	.LC68
	.long	0
	.long	.LC69
	.long	.LC68
	.long	2
	.long	.LC70
	.long	.LC71
	.long	2
	.long	.LC72
	.long	.LC73
	.long	0
	.long	.LC74
	.long	.LC73
	.long	2
	.long	.LC75
	.long	.LC76
	.long	2
	.long	.LC77
	.long	.LC78
	.long	0
	.long	.LC79
	.long	.LC78
	.long	2
	.long	.LC80
	.long	.LC81
	.long	2
	.long	.LC82
	.long	.LC83
	.long	0
	.long	.LC84
	.long	.LC83
	.long	2
	.long	.LC85
	.long	.LC86
	.long	0
	.long	.LC87
	.long	.LC86
	.long	2
	.long	.LC88
	.long	.LC89
	.long	0
	.long	.LC90
	.long	.LC89
	.long	2
	.long	.LC91
	.long	.LC92
	.long	2
	.long	.LC93
	.long	.LC94
	.long	0
	.long	.LC95
	.long	.LC94
	.long	2
	.long	.LC96
	.long	.LC97
	.long	2
	.long	.LC98
	.long	.LC99
	.long	0
	.long	.LC100
	.long	.LC99
	.long	2
	.long	.LC101
	.long	.LC99
	.long	2
	.long	.LC102
	.long	.LC35
	.long	0
	.long	.LC103
	.long	.LC104
	.long	0
	.long	.LC105
	.long	.LC78
	.long	0
	.long	.LC106
	.long	.LC107
	.long	0
	.long	.LC108
	.long	.LC107
	.long	2
	.long	.LC109
	.long	.LC110
	.long	0
	.long	.LC111
	.long	.LC110
	.long	2
	.long	.LC112
	.long	.LC113
	.long	0
	.long	.LC114
	.long	.LC113
	.long	2
	.long	.LC115
	.long	.LC116
	.long	0
	.long	.LC117
	.long	.LC116
	.long	2
	.long	.LC118
	.long	.LC119
	.long	0
	.long	.LC120
	.long	.LC119
	.long	2
	.long	.LC121
	.long	.LC122
	.long	0
	.long	.LC123
	.long	.LC124
	.long	2
	.long	.LC125
	.long	.LC126
	.long	2
.globl libiberty_demanglers
	.section	.rodata
.LC127:
	.string	"none"
.LC128:
	.string	"Demangling disabled"
.LC129:
	.string	"auto"
	.align 4
.LC130:
	.string	"Automatic selection based on executable"
.LC131:
	.string	"gnu"
.LC132:
	.string	"GNU (g++) style demangling"
.LC133:
	.string	"lucid"
.LC134:
	.string	"Lucid (lcc) style demangling"
.LC135:
	.string	"arm"
.LC136:
	.string	"ARM style demangling"
.LC137:
	.string	"hp"
.LC138:
	.string	"HP (aCC) style demangling"
.LC139:
	.string	"edg"
.LC140:
	.string	"EDG style demangling"
.LC141:
	.string	"gnu-v3"
	.align 4
.LC142:
	.string	"GNU (g++) V3 ABI-style demangling"
.LC143:
	.string	"java"
.LC144:
	.string	"Java style demangling"
.LC145:
	.string	"gnat"
.LC146:
	.string	"GNAT style demangling"
	.section	.data.rel.ro.local
	.align 32
	.type	libiberty_demanglers, @object
	.size	libiberty_demanglers, 132
libiberty_demanglers:
	.long	.LC127
	.long	-1
	.long	.LC128
	.long	.LC129
	.long	256
	.long	.LC130
	.long	.LC131
	.long	512
	.long	.LC132
	.long	.LC133
	.long	1024
	.long	.LC134
	.long	.LC135
	.long	2048
	.long	.LC136
	.long	.LC137
	.long	4096
	.long	.LC138
	.long	.LC139
	.long	8192
	.long	.LC140
	.long	.LC141
	.long	16384
	.long	.LC142
	.long	.LC143
	.long	4
	.long	.LC144
	.long	.LC145
	.long	32768
	.long	.LC146
	.long	0
	.long	0
	.long	0
	.text
	.type	consume_count, @function
consume_count:
.LFB6:
	.loc 1 543 0
	pushl	%ebp
.LCFI2:
	movl	%esp, %ebp
.LCFI3:
	pushl	%esi
.LCFI4:
	pushl	%ebx
.LCFI5:
	subl	$28, %esp
.LCFI6:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 544 0
	movl	$0, -12(%ebp)
	.loc 1 546 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edx
	movl	_sch_istable@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	andl	$4, %eax
	testl	%eax, %eax
	jne	.L7
	.loc 1 547 0
	movl	$-1, -32(%ebp)
	jmp	.L6
.L8:
	.loc 1 551 0
	movl	-12(%ebp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	movl	%eax, -12(%ebp)
	.loc 1 558 0
	movl	-12(%ebp), %ecx
	movl	$1717986919, -36(%ebp)
	movl	-36(%ebp), %eax
	imull	%ecx
	sarl	$2, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	movl	%edx, %esi
	subl	%eax, %esi
	movl	%esi, -28(%ebp)
	movl	-28(%ebp), %eax
	sall	$2, %eax
	addl	-28(%ebp), %eax
	addl	%eax, %eax
	movl	%ecx, %edx
	subl	%eax, %edx
	movl	%edx, -28(%ebp)
	cmpl	$0, -28(%ebp)
	je	.L9
	.loc 1 560 0
	jmp	.L11
.L12:
	.loc 1 561 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
.L11:
	.loc 1 560 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edx
	movl	_sch_istable@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	andl	$4, %eax
	testl	%eax, %eax
	jne	.L12
	.loc 1 562 0
	movl	$-1, -32(%ebp)
	jmp	.L6
.L9:
	.loc 1 565 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	addl	-12(%ebp), %eax
	subl	$48, %eax
	movl	%eax, -12(%ebp)
	.loc 1 566 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
.L7:
	.loc 1 549 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edx
	movl	_sch_istable@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	andl	$4, %eax
	testl	%eax, %eax
	jne	.L8
	.loc 1 569 0
	cmpl	$0, -12(%ebp)
	jns	.L15
	.loc 1 570 0
	movl	$-1, -12(%ebp)
.L15:
	.loc 1 572 0
	movl	-12(%ebp), %esi
	movl	%esi, -32(%ebp)
.L6:
	movl	-32(%ebp), %eax
	.loc 1 573 0
	addl	$28, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE6:
	.size	consume_count, .-consume_count
	.type	consume_count_with_underscores, @function
consume_count_with_underscores:
.LFB7:
	.loc 1 583 0
	pushl	%ebp
.LCFI7:
	movl	%esp, %ebp
.LCFI8:
	pushl	%ebx
.LCFI9:
	subl	$24, %esp
.LCFI10:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 586 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movzbl	(%eax), %eax
	cmpb	$95, %al
	jne	.L19
	.loc 1 588 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 589 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edx
	movl	_sch_istable@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	andl	$4, %eax
	testl	%eax, %eax
	jne	.L21
	.loc 1 590 0
	movl	$-1, -24(%ebp)
	jmp	.L23
.L21:
	.loc 1 592 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	consume_count
	movl	%eax, -8(%ebp)
	.loc 1 593 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movzbl	(%eax), %eax
	cmpb	$95, %al
	je	.L24
	.loc 1 595 0
	movl	$-1, -24(%ebp)
	jmp	.L23
.L24:
	.loc 1 597 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	jmp	.L26
.L19:
	.loc 1 601 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movzbl	(%eax), %eax
	cmpb	$47, %al
	jbe	.L27
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movzbl	(%eax), %eax
	cmpb	$57, %al
	jbe	.L29
.L27:
	.loc 1 602 0
	movl	$-1, -24(%ebp)
	jmp	.L23
.L29:
	.loc 1 604 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	subl	$48, %eax
	movl	%eax, -8(%ebp)
	.loc 1 605 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
.L26:
	.loc 1 608 0
	movl	-8(%ebp), %eax
	movl	%eax, -24(%ebp)
.L23:
	movl	-24(%ebp), %eax
	.loc 1 609 0
	addl	$24, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE7:
	.size	consume_count_with_underscores, .-consume_count_with_underscores
	.type	code_for_qualifier, @function
code_for_qualifier:
.LFB8:
	.loc 1 617 0
	pushl	%ebp
.LCFI11:
	movl	%esp, %ebp
.LCFI12:
	pushl	%ebx
.LCFI13:
	subl	$20, %esp
.LCFI14:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 618 0
	movl	8(%ebp), %eax
	movl	%eax, -12(%ebp)
	cmpl	$86, -12(%ebp)
	je	.L34
	cmpl	$117, -12(%ebp)
	je	.L35
	cmpl	$67, -12(%ebp)
	je	.L33
	jmp	.L32
.L33:
	.loc 1 621 0
	movl	$1, -8(%ebp)
	jmp	.L36
.L34:
	.loc 1 624 0
	movl	$2, -8(%ebp)
	jmp	.L36
.L35:
	.loc 1 627 0
	movl	$4, -8(%ebp)
	jmp	.L36
.L32:
	.loc 1 634 0
	call	abort@PLT
.L36:
	movl	-8(%ebp), %eax
	.loc 1 635 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE8:
	.size	code_for_qualifier, .-code_for_qualifier
	.section	.rodata
.LC147:
	.string	"const"
.LC148:
	.string	"volatile"
.LC149:
	.string	"__restrict"
.LC150:
	.string	"const volatile"
.LC151:
	.string	"const __restrict"
.LC152:
	.string	"volatile __restrict"
.LC153:
	.string	"const volatile __restrict"
	.text
	.type	qualifier_string, @function
qualifier_string:
.LFB9:
	.loc 1 643 0
	pushl	%ebp
.LCFI15:
	movl	%esp, %ebp
.LCFI16:
	pushl	%ebx
.LCFI17:
	subl	$4, %esp
.LCFI18:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 644 0
	cmpl	$7, 8(%ebp)
	ja	.L39
	movl	8(%ebp), %eax
	sall	$2, %eax
	movl	.L48@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L48:
	.long	.L40@GOTOFF
	.long	.L41@GOTOFF
	.long	.L42@GOTOFF
	.long	.L43@GOTOFF
	.long	.L44@GOTOFF
	.long	.L45@GOTOFF
	.long	.L46@GOTOFF
	.long	.L47@GOTOFF
	.text
.L40:
	.loc 1 647 0
	leal	.LC122@GOTOFF(%ebx), %eax
	movl	%eax, -8(%ebp)
	jmp	.L49
.L41:
	.loc 1 650 0
	leal	.LC147@GOTOFF(%ebx), %eax
	movl	%eax, -8(%ebp)
	jmp	.L49
.L42:
	.loc 1 653 0
	leal	.LC148@GOTOFF(%ebx), %eax
	movl	%eax, -8(%ebp)
	jmp	.L49
.L44:
	.loc 1 656 0
	leal	.LC149@GOTOFF(%ebx), %eax
	movl	%eax, -8(%ebp)
	jmp	.L49
.L43:
	.loc 1 659 0
	leal	.LC150@GOTOFF(%ebx), %eax
	movl	%eax, -8(%ebp)
	jmp	.L49
.L45:
	.loc 1 662 0
	leal	.LC151@GOTOFF(%ebx), %eax
	movl	%eax, -8(%ebp)
	jmp	.L49
.L46:
	.loc 1 665 0
	leal	.LC152@GOTOFF(%ebx), %eax
	movl	%eax, -8(%ebp)
	jmp	.L49
.L47:
	.loc 1 668 0
	leal	.LC153@GOTOFF(%ebx), %eax
	movl	%eax, -8(%ebp)
	jmp	.L49
.L39:
	.loc 1 675 0
	call	abort@PLT
.L49:
	movl	-8(%ebp), %eax
	.loc 1 676 0
	addl	$4, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE9:
	.size	qualifier_string, .-qualifier_string
	.type	demangle_qualifier, @function
demangle_qualifier:
.LFB10:
	.loc 1 685 0
	pushl	%ebp
.LCFI19:
	movl	%esp, %ebp
.LCFI20:
	subl	$8, %esp
.LCFI21:
	.loc 1 686 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	code_for_qualifier
	movl	%eax, (%esp)
	call	qualifier_string
	.loc 1 687 0
	leave
	ret
.LFE10:
	.size	demangle_qualifier, .-demangle_qualifier
	.section	.rodata
.LC154:
	.string	"operator"
.LC155:
	.string	"assign_"
.LC156:
	.string	"type"
.LC157:
	.string	"operator "
	.text
.globl cplus_demangle_opname
	.type	cplus_demangle_opname, @function
cplus_demangle_opname:
.LFB11:
	.loc 1 694 0
	pushl	%ebp
.LCFI22:
	movl	%esp, %ebp
.LCFI23:
	pushl	%edi
.LCFI24:
	pushl	%esi
.LCFI25:
	pushl	%ebx
.LCFI26:
	subl	$252, %esp
.LCFI27:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 700 0
	movl	8(%ebp), %eax
	movl	$-1, %ecx
	movl	%eax, -144(%ebp)
	movl	$0, %eax
	cld
	movl	-144(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	movl	%eax, -40(%ebp)
	.loc 1 701 0
	movl	12(%ebp), %eax
	movb	$0, (%eax)
	.loc 1 702 0
	movl	$0, -32(%ebp)
	.loc 1 703 0
	leal	-140(%ebp), %eax
	movl	%eax, %edx
	movl	$84, %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	%edx, (%esp)
	call	memset@PLT
	.loc 1 704 0
	movl	16(%ebp), %eax
	movl	%eax, -140(%ebp)
	.loc 1 706 0
	movl	8(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$95, %al
	jne	.L54
	movl	8(%ebp), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	cmpb	$95, %al
	jne	.L54
	movl	8(%ebp), %eax
	addl	$2, %eax
	movzbl	(%eax), %eax
	cmpb	$111, %al
	jne	.L54
	movl	8(%ebp), %eax
	addl	$3, %eax
	movzbl	(%eax), %eax
	cmpb	$112, %al
	jne	.L54
	.loc 1 711 0
	movl	8(%ebp), %eax
	addl	$4, %eax
	movl	%eax, -44(%ebp)
	.loc 1 712 0
	leal	-56(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-140(%ebp), %eax
	movl	%eax, (%esp)
	call	do_type
	testl	%eax, %eax
	je	.L61
	.loc 1 714 0
	movl	12(%ebp), %eax
	movl	$-1, %ecx
	movl	%eax, -148(%ebp)
	movl	$0, %eax
	cld
	movl	-148(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	addl	12(%ebp), %eax
	movl	$1919250543, (%eax)
	movl	$1919906913, 4(%eax)
	movw	$32, 8(%eax)
	.loc 1 715 0
	movl	-52(%ebp), %eax
	movl	%eax, %edx
	movl	-56(%ebp), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	-56(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	strncat@PLT
	.loc 1 716 0
	leal	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	string_delete
	.loc 1 717 0
	movl	$1, -32(%ebp)
	.loc 1 706 0
	jmp	.L61
.L54:
	.loc 1 720 0
	movl	8(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$95, %al
	jne	.L62
	movl	8(%ebp), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	cmpb	$95, %al
	jne	.L62
	movl	8(%ebp), %eax
	addl	$2, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edx
	movl	_sch_istable@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L62
	movl	8(%ebp), %eax
	addl	$3, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edx
	movl	_sch_istable@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L62
	.loc 1 724 0
	movl	8(%ebp), %eax
	addl	$4, %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L67
.LBB2:
	.loc 1 728 0
	movl	$0, -28(%ebp)
	jmp	.L69
.L70:
	.loc 1 730 0
	movl	-28(%ebp), %edx
	leal	optable@GOTOFF(%ebx), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	(%eax,%ecx), %eax
	movl	$-1, %ecx
	movl	%eax, -152(%ebp)
	movl	$0, %eax
	cld
	movl	-152(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	cmpl	$2, %eax
	jne	.L71
	movl	8(%ebp), %esi
	addl	$2, %esi
	movl	-28(%ebp), %edx
	leal	optable@GOTOFF(%ebx), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	(%eax,%ecx), %eax
	movl	%eax, -156(%ebp)
	movl	%esi, -160(%ebp)
	movl	$2, -164(%ebp)
	cld
	movl	-156(%ebp), %esi
	movl	-160(%ebp), %edi
	movl	-164(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L71
	.loc 1 733 0
	movl	12(%ebp), %eax
	movl	$-1, %ecx
	movl	%eax, -168(%ebp)
	movl	$0, %eax
	cld
	movl	-168(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	addl	12(%ebp), %eax
	movl	$1919250543, (%eax)
	movl	$1919906913, 4(%eax)
	movb	$0, 8(%eax)
	.loc 1 734 0
	movl	-28(%ebp), %edx
	leal	optable@GOTOFF(%ebx), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	4(%eax,%ecx), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	strcat@PLT
	.loc 1 735 0
	movl	$1, -32(%ebp)
	.loc 1 736 0
	jmp	.L61
.L71:
	.loc 1 728 0
	addl	$1, -28(%ebp)
.L69:
	cmpl	$78, -28(%ebp)
	jbe	.L70
	jmp	.L61
.L67:
.LBE2:
	.loc 1 742 0
	movl	8(%ebp), %eax
	addl	$2, %eax
	movzbl	(%eax), %eax
	cmpb	$97, %al
	jne	.L61
	movl	8(%ebp), %eax
	addl	$5, %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L61
.LBB3:
	.loc 1 746 0
	movl	$0, -24(%ebp)
	jmp	.L78
.L79:
	.loc 1 748 0
	movl	-24(%ebp), %edx
	leal	optable@GOTOFF(%ebx), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	(%eax,%ecx), %eax
	movl	$-1, %ecx
	movl	%eax, -172(%ebp)
	movl	$0, %eax
	cld
	movl	-172(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	cmpl	$3, %eax
	jne	.L80
	movl	8(%ebp), %esi
	addl	$2, %esi
	movl	-24(%ebp), %edx
	leal	optable@GOTOFF(%ebx), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	(%eax,%ecx), %eax
	movl	%eax, -176(%ebp)
	movl	%esi, -180(%ebp)
	movl	$3, -184(%ebp)
	cld
	movl	-176(%ebp), %esi
	movl	-180(%ebp), %edi
	movl	-184(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L80
	.loc 1 751 0
	leal	.LC154@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	strcat@PLT
	.loc 1 752 0
	movl	-24(%ebp), %edx
	leal	optable@GOTOFF(%ebx), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	4(%eax,%ecx), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	strcat@PLT
	.loc 1 753 0
	movl	$1, -32(%ebp)
	.loc 1 754 0
	jmp	.L61
.L80:
	.loc 1 746 0
	addl	$1, -24(%ebp)
.L78:
	cmpl	$78, -24(%ebp)
	jbe	.L79
	.loc 1 720 0
	jmp	.L61
.L62:
.LBE3:
	.loc 1 760 0
	cmpl	$2, -40(%ebp)
	jle	.L83
	movl	8(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$111, %al
	jne	.L83
	movl	8(%ebp), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	cmpb	$112, %al
	jne	.L83
	movl	8(%ebp), %eax
	addl	$2, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, 4(%esp)
	leal	cplus_markers@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	strchr@PLT
	testl	%eax, %eax
	je	.L83
	.loc 1 766 0
	cmpl	$9, -40(%ebp)
	jle	.L88
	movl	8(%ebp), %eax
	addl	$3, %eax
	movl	%eax, -188(%ebp)
	leal	.LC155@GOTOFF(%ebx), %esi
	movl	%esi, -192(%ebp)
	movl	$7, -196(%ebp)
	cld
	movl	-188(%ebp), %esi
	movl	-192(%ebp), %edi
	movl	-196(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L88
.LBB4:
	.loc 1 770 0
	movl	$0, -20(%ebp)
	jmp	.L91
.L92:
	.loc 1 772 0
	movl	-40(%ebp), %eax
	subl	$10, %eax
	movl	%eax, -36(%ebp)
	.loc 1 773 0
	movl	-20(%ebp), %edx
	leal	optable@GOTOFF(%ebx), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	(%eax,%ecx), %eax
	movl	$-1, %ecx
	movl	%eax, -200(%ebp)
	movl	$0, %eax
	cld
	movl	-200(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	cmpl	-36(%ebp), %eax
	jne	.L93
	movl	-36(%ebp), %edi
	movl	8(%ebp), %esi
	addl	$10, %esi
	movl	-20(%ebp), %edx
	leal	optable@GOTOFF(%ebx), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	(%eax,%ecx), %eax
	movl	%eax, -204(%ebp)
	movl	%esi, -208(%ebp)
	movl	%edi, -212(%ebp)
	cld
	movl	-212(%ebp), %eax
	cmpl	%eax, -212(%ebp)
	movl	-204(%ebp), %esi
	movl	-208(%ebp), %edi
	movl	-212(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L93
	.loc 1 776 0
	leal	.LC154@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	strcat@PLT
	.loc 1 777 0
	movl	-20(%ebp), %edx
	leal	optable@GOTOFF(%ebx), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	4(%eax,%ecx), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	strcat@PLT
	.loc 1 778 0
	leal	.LC11@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	strcat@PLT
	.loc 1 779 0
	movl	$1, -32(%ebp)
	.loc 1 780 0
	jmp	.L61
.L93:
	.loc 1 770 0
	addl	$1, -20(%ebp)
.L91:
	cmpl	$78, -20(%ebp)
	jbe	.L92
	.loc 1 766 0
	jmp	.L61
.L88:
.LBE4:
.LBB5:
	.loc 1 787 0
	movl	$0, -16(%ebp)
	jmp	.L98
.L99:
	.loc 1 789 0
	movl	-40(%ebp), %eax
	subl	$3, %eax
	movl	%eax, -36(%ebp)
	.loc 1 790 0
	movl	-16(%ebp), %edx
	leal	optable@GOTOFF(%ebx), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	(%eax,%ecx), %eax
	movl	$-1, %ecx
	movl	%eax, -216(%ebp)
	movl	$0, %eax
	cld
	movl	-216(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	cmpl	-36(%ebp), %eax
	jne	.L100
	movl	-36(%ebp), %edi
	movl	8(%ebp), %esi
	addl	$3, %esi
	movl	-16(%ebp), %edx
	leal	optable@GOTOFF(%ebx), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	(%eax,%ecx), %eax
	movl	%eax, -220(%ebp)
	movl	%esi, -224(%ebp)
	movl	%edi, -228(%ebp)
	cld
	movl	-228(%ebp), %eax
	cmpl	%eax, -228(%ebp)
	movl	-220(%ebp), %esi
	movl	-224(%ebp), %edi
	movl	-228(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L100
	.loc 1 793 0
	leal	.LC154@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	strcat@PLT
	.loc 1 794 0
	movl	-16(%ebp), %edx
	leal	optable@GOTOFF(%ebx), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	4(%eax,%ecx), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	strcat@PLT
	.loc 1 795 0
	movl	$1, -32(%ebp)
	.loc 1 796 0
	jmp	.L61
.L100:
	.loc 1 787 0
	addl	$1, -16(%ebp)
.L98:
	cmpl	$78, -16(%ebp)
	jbe	.L99
	.loc 1 760 0
	jmp	.L61
.L83:
.LBE5:
	.loc 1 801 0
	cmpl	$4, -40(%ebp)
	jle	.L61
	movl	8(%ebp), %eax
	movl	%eax, -232(%ebp)
	leal	.LC156@GOTOFF(%ebx), %esi
	movl	%esi, -236(%ebp)
	movl	$4, -240(%ebp)
	cld
	movl	-232(%ebp), %esi
	movl	-236(%ebp), %edi
	movl	-240(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L61
	movl	8(%ebp), %eax
	addl	$4, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, 4(%esp)
	leal	cplus_markers@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	strchr@PLT
	testl	%eax, %eax
	je	.L61
	.loc 1 805 0
	movl	8(%ebp), %eax
	addl	$5, %eax
	movl	%eax, -44(%ebp)
	.loc 1 806 0
	leal	-56(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-140(%ebp), %eax
	movl	%eax, (%esp)
	call	do_type
	testl	%eax, %eax
	je	.L61
	.loc 1 808 0
	leal	.LC157@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	strcat@PLT
	.loc 1 809 0
	movl	-52(%ebp), %eax
	movl	%eax, %edx
	movl	-56(%ebp), %eax
	movl	%edx, %esi
	subl	%eax, %esi
	movl	%esi, %eax
	movl	-56(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	strncat@PLT
	.loc 1 810 0
	leal	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	string_delete
	.loc 1 811 0
	movl	$1, -32(%ebp)
.L61:
	.loc 1 814 0
	leal	-140(%ebp), %eax
	movl	%eax, (%esp)
	call	squangle_mop_up
	.loc 1 815 0
	movl	-32(%ebp), %eax
	.loc 1 817 0
	addl	$252, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE11:
	.size	cplus_demangle_opname, .-cplus_demangle_opname
.globl cplus_mangle_opname
	.type	cplus_mangle_opname, @function
cplus_mangle_opname:
.LFB12:
	.loc 1 829 0
	pushl	%ebp
.LCFI28:
	movl	%esp, %ebp
.LCFI29:
	pushl	%edi
.LCFI30:
	pushl	%esi
.LCFI31:
	pushl	%ebx
.LCFI32:
	subl	$40, %esp
.LCFI33:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 833 0
	movl	8(%ebp), %eax
	movl	$-1, %ecx
	movl	%eax, -36(%ebp)
	movl	$0, %eax
	cld
	movl	-36(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	movl	%eax, -16(%ebp)
	.loc 1 834 0
	movl	$0, -20(%ebp)
	jmp	.L109
.L110:
	.loc 1 836 0
	movl	-20(%ebp), %edx
	leal	optable@GOTOFF(%ebx), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	4(%eax,%ecx), %eax
	movl	$-1, %ecx
	movl	%eax, -40(%ebp)
	movl	$0, %eax
	cld
	movl	-40(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	cmpl	-16(%ebp), %eax
	jne	.L111
	movl	12(%ebp), %esi
	andl	$2, %esi
	movl	-20(%ebp), %edx
	leal	optable@GOTOFF(%ebx), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	8(%eax,%ecx), %eax
	andl	$2, %eax
	cmpl	%eax, %esi
	jne	.L111
	movl	-16(%ebp), %esi
	movl	-20(%ebp), %edx
	leal	optable@GOTOFF(%ebx), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	4(%eax,%ecx), %eax
	movl	8(%ebp), %edx
	movl	%eax, -44(%ebp)
	movl	%edx, -48(%ebp)
	movl	%esi, -52(%ebp)
	cld
	movl	-52(%ebp), %eax
	cmpl	%eax, -52(%ebp)
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
	jne	.L111
	.loc 1 839 0
	movl	-20(%ebp), %edx
	leal	optable@GOTOFF(%ebx), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	(%eax,%ecx), %eax
	movl	%eax, -32(%ebp)
	jmp	.L115
.L111:
	.loc 1 834 0
	addl	$1, -20(%ebp)
.L109:
	cmpl	$78, -20(%ebp)
	jbe	.L110
	.loc 1 841 0
	movl	$0, -32(%ebp)
.L115:
	movl	-32(%ebp), %eax
	.loc 1 842 0
	addl	$40, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE12:
	.size	cplus_mangle_opname, .-cplus_mangle_opname
.globl cplus_demangle_set_style
	.type	cplus_demangle_set_style, @function
cplus_demangle_set_style:
.LFB13:
	.loc 1 850 0
	pushl	%ebp
.LCFI34:
	movl	%esp, %ebp
.LCFI35:
	subl	$20, %esp
.LCFI36:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 851 0
	movl	libiberty_demanglers@GOT(%ecx), %eax
	movl	%eax, -4(%ebp)
	.loc 1 853 0
	jmp	.L119
.L120:
	.loc 1 854 0
	movl	-4(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L121
	.loc 1 856 0
	movl	current_demangling_style@GOT(%ecx), %eax
	movl	8(%ebp), %edx
	movl	%edx, (%eax)
	.loc 1 857 0
	movl	current_demangling_style@GOT(%ecx), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
	jmp	.L123
.L121:
	.loc 1 853 0
	addl	$12, -4(%ebp)
.L119:
	movl	-4(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	jne	.L120
	.loc 1 860 0
	movl	$0, -20(%ebp)
.L123:
	movl	-20(%ebp), %eax
	.loc 1 861 0
	leave
	ret
.LFE13:
	.size	cplus_demangle_set_style, .-cplus_demangle_set_style
.globl cplus_demangle_name_to_style
	.type	cplus_demangle_name_to_style, @function
cplus_demangle_name_to_style:
.LFB14:
	.loc 1 868 0
	pushl	%ebp
.LCFI37:
	movl	%esp, %ebp
.LCFI38:
	pushl	%ebx
.LCFI39:
	subl	$36, %esp
.LCFI40:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 869 0
	movl	libiberty_demanglers@GOT(%ebx), %eax
	movl	%eax, -8(%ebp)
	.loc 1 871 0
	jmp	.L127
.L128:
	.loc 1 872 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L129
	.loc 1 873 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L131
.L129:
	.loc 1 871 0
	addl	$12, -8(%ebp)
.L127:
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	jne	.L128
	.loc 1 875 0
	movl	$0, -24(%ebp)
.L131:
	movl	-24(%ebp), %eax
	.loc 1 876 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE14:
	.size	cplus_demangle_name_to_style, .-cplus_demangle_name_to_style
.globl cplus_demangle
	.type	cplus_demangle, @function
cplus_demangle:
.LFB15:
	.loc 1 910 0
	pushl	%ebp
.LCFI41:
	movl	%esp, %ebp
.LCFI42:
	pushl	%ebx
.LCFI43:
	subl	$116, %esp
.LCFI44:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 914 0
	movl	current_demangling_style@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$-1, %eax
	jne	.L135
	.loc 1 915 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	xstrdup@PLT
	movl	%eax, -104(%ebp)
	jmp	.L137
.L135:
	.loc 1 917 0
	leal	-92(%ebp), %eax
	movl	%eax, %edx
	movl	$84, %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	%edx, (%esp)
	call	memset@PLT
	.loc 1 918 0
	movl	12(%ebp), %eax
	movl	%eax, -92(%ebp)
	.loc 1 919 0
	movl	-92(%ebp), %eax
	andl	$65284, %eax
	testl	%eax, %eax
	jne	.L138
	.loc 1 920 0
	movl	-92(%ebp), %edx
	movl	current_demangling_style@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$65284, %eax
	orl	%edx, %eax
	movl	%eax, -92(%ebp)
.L138:
	.loc 1 923 0
	movl	-92(%ebp), %eax
	andl	$16384, %eax
	testl	%eax, %eax
	jne	.L140
	movl	-92(%ebp), %eax
	andl	$256, %eax
	testl	%eax, %eax
	je	.L142
.L140:
	.loc 1 925 0
	movl	-92(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cplus_demangle_v3@PLT
	movl	%eax, -8(%ebp)
	.loc 1 926 0
	cmpl	$0, -8(%ebp)
	jne	.L143
	movl	-92(%ebp), %eax
	andl	$16384, %eax
	testl	%eax, %eax
	je	.L142
.L143:
	.loc 1 927 0
	movl	-8(%ebp), %eax
	movl	%eax, -104(%ebp)
	jmp	.L137
.L142:
	.loc 1 930 0
	movl	-92(%ebp), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L145
	.loc 1 932 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	java_demangle_v3@PLT
	movl	%eax, -8(%ebp)
	.loc 1 933 0
	cmpl	$0, -8(%ebp)
	je	.L145
	.loc 1 934 0
	movl	-8(%ebp), %eax
	movl	%eax, -104(%ebp)
	jmp	.L137
.L145:
	.loc 1 937 0
	movl	-92(%ebp), %eax
	andl	$32768, %eax
	testl	%eax, %eax
	je	.L148
	.loc 1 938 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	ada_demangle
	movl	%eax, -104(%ebp)
	jmp	.L137
.L148:
	.loc 1 940 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-92(%ebp), %eax
	movl	%eax, (%esp)
	call	internal_cplus_demangle
	movl	%eax, -8(%ebp)
	.loc 1 941 0
	leal	-92(%ebp), %eax
	movl	%eax, (%esp)
	call	squangle_mop_up
	.loc 1 942 0
	movl	-8(%ebp), %eax
	movl	%eax, -104(%ebp)
.L137:
	movl	-104(%ebp), %eax
	.loc 1 943 0
	addl	$116, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE15:
	.size	cplus_demangle, .-cplus_demangle
	.type	grow_vect, @function
grow_vect:
.LFB16:
	.loc 1 956 0
	pushl	%ebp
.LCFI45:
	movl	%esp, %ebp
.LCFI46:
	pushl	%ebx
.LCFI47:
	subl	$20, %esp
.LCFI48:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 957 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	cmpl	16(%ebp), %eax
	jae	.L156
	.loc 1 959 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	leal	(%eax,%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 960 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	cmpl	16(%ebp), %eax
	jae	.L154
	.loc 1 961 0
	movl	12(%ebp), %edx
	movl	16(%ebp), %eax
	movl	%eax, (%edx)
.L154:
	.loc 1 962 0
	movl	12(%ebp), %eax
	movl	(%eax), %edx
	movl	20(%ebp), %eax
	imull	%eax, %edx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	xrealloc@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
.L156:
	.loc 1 964 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE16:
	.size	grow_vect, .-grow_vect
	.section	.rodata
.LC158:
	.string	"_ada_"
.LC159:
	.string	"___"
.LC160:
	.string	"<%s>"
	.text
	.type	ada_demangle, @function
ada_demangle:
.LFB17:
	.loc 1 978 0
	pushl	%ebp
.LCFI49:
	movl	%esp, %ebp
.LCFI50:
	pushl	%edi
.LCFI51:
	pushl	%esi
.LCFI52:
	pushl	%ebx
.LCFI53:
	subl	$76, %esp
.LCFI54:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 982 0
	movl	$0, -40(%ebp)
	.loc 1 985 0
	movl	$0, -44(%ebp)
	.loc 1 987 0
	movl	$0, -16(%ebp)
	.loc 1 989 0
	movl	8(%ebp), %eax
	movl	%eax, -52(%ebp)
	leal	.LC158@GOTOFF(%ebx), %eax
	movl	%eax, -56(%ebp)
	movl	$5, -60(%ebp)
	cld
	movl	-52(%ebp), %esi
	movl	-56(%ebp), %edi
	movl	-60(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L158
	.loc 1 991 0
	addl	$5, 8(%ebp)
	.loc 1 992 0
	movl	$1, -16(%ebp)
.L158:
	.loc 1 995 0
	movl	8(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$95, %al
	je	.L160
	movl	8(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$60, %al
	je	.L160
	.loc 1 998 0
	leal	.LC159@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	strstr@PLT
	movl	%eax, -24(%ebp)
	.loc 1 999 0
	cmpl	$0, -24(%ebp)
	jne	.L163
	.loc 1 1000 0
	movl	8(%ebp), %eax
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
	movl	%eax, -28(%ebp)
	jmp	.L165
.L163:
	.loc 1 1003 0
	movl	-24(%ebp), %eax
	addl	$3, %eax
	movzbl	(%eax), %eax
	cmpb	$88, %al
	jne	.L160
	.loc 1 1005 0
	movl	-24(%ebp), %eax
	movl	8(%ebp), %edx
	subl	%edx, %eax
	movl	%eax, -28(%ebp)
	.loc 1 1006 0
	movl	$1, -16(%ebp)
.L165:
	.loc 1 1013 0
	movl	-28(%ebp), %eax
	addl	%eax, %eax
	addl	$1, %eax
	movl	$1, 12(%esp)
	movl	%eax, 8(%esp)
	leal	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	grow_vect
	.loc 1 1017 0
	movl	-28(%ebp), %eax
	addl	8(%ebp), %eax
	subl	$1, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edx
	movl	_sch_istable@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L167
	.loc 1 1018 0
	movl	-28(%ebp), %eax
	subl	$2, %eax
	movl	%eax, -36(%ebp)
	jmp	.L169
.L170:
	subl	$1, -36(%ebp)
.L169:
	cmpl	$0, -36(%ebp)
	js	.L171
	movl	-36(%ebp), %eax
	addl	8(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edx
	movl	_sch_istable@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	andl	$4, %eax
	testl	%eax, %eax
	jne	.L170
.L171:
	.loc 1 1020 0
	cmpl	$1, -36(%ebp)
	jle	.L173
	movl	-36(%ebp), %eax
	addl	8(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$95, %al
	jne	.L173
	movl	-36(%ebp), %eax
	addl	8(%ebp), %eax
	subl	$1, %eax
	movzbl	(%eax), %eax
	cmpb	$95, %al
	jne	.L173
	.loc 1 1022 0
	movl	-36(%ebp), %eax
	subl	$1, %eax
	movl	%eax, -28(%ebp)
	.loc 1 1023 0
	movl	$1, -16(%ebp)
	.loc 1 1020 0
	jmp	.L167
.L173:
	.loc 1 1025 0
	movl	-36(%ebp), %eax
	addl	8(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$36, %al
	jne	.L167
	.loc 1 1027 0
	movl	-36(%ebp), %eax
	movl	%eax, -28(%ebp)
	.loc 1 1028 0
	movl	$1, -16(%ebp)
.L167:
	.loc 1 1032 0
	movl	$0, -36(%ebp)
	movl	$0, -32(%ebp)
	jmp	.L178
.L179:
	.loc 1 1034 0
	movl	-40(%ebp), %edx
	movl	-32(%ebp), %eax
	addl	%eax, %edx
	movl	-36(%ebp), %eax
	addl	8(%ebp), %eax
	movzbl	(%eax), %eax
	movb	%al, (%edx)
	.loc 1 1033 0
	addl	$1, -36(%ebp)
	addl	$1, -32(%ebp)
.L178:
	.loc 1 1032 0
	movl	-36(%ebp), %eax
	cmpl	-28(%ebp), %eax
	jge	.L180
	movl	-36(%ebp), %eax
	addl	8(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edx
	movl	_sch_istable@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	andl	$136, %eax
	testl	%eax, %eax
	je	.L179
.L180:
	.loc 1 1036 0
	movl	$1, -20(%ebp)
	.loc 1 1037 0
	jmp	.L201
.L183:
	.loc 1 1039 0
	movl	$0, -20(%ebp)
	.loc 1 1041 0
	movl	-28(%ebp), %eax
	subl	$2, %eax
	cmpl	-36(%ebp), %eax
	jle	.L184
	movl	-36(%ebp), %eax
	addl	8(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$95, %al
	jne	.L184
	movl	-36(%ebp), %eax
	addl	8(%ebp), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	cmpb	$95, %al
	jne	.L184
	.loc 1 1043 0
	movl	-40(%ebp), %edx
	movl	-32(%ebp), %eax
	leal	(%edx,%eax), %eax
	movb	$46, (%eax)
	.loc 1 1044 0
	movl	$1, -20(%ebp)
	movl	-20(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 1045 0
	addl	$2, -36(%ebp)
	addl	$1, -32(%ebp)
	.loc 1 1041 0
	jmp	.L182
.L184:
	.loc 1 1049 0
	movl	-40(%ebp), %edx
	movl	-32(%ebp), %eax
	addl	%eax, %edx
	movl	-36(%ebp), %eax
	addl	8(%ebp), %eax
	movzbl	(%eax), %eax
	movb	%al, (%edx)
	.loc 1 1050 0
	addl	$1, -36(%ebp)
	addl	$1, -32(%ebp)
.L182:
.L201:
	.loc 1 1037 0
	movl	-36(%ebp), %eax
	cmpl	-28(%ebp), %eax
	jl	.L183
	.loc 1 1053 0
	movl	-40(%ebp), %edx
	movl	-32(%ebp), %eax
	leal	(%edx,%eax), %eax
	movb	$0, (%eax)
	.loc 1 1055 0
	movl	$0, -36(%ebp)
	jmp	.L189
.L190:
	.loc 1 1056 0
	movl	-40(%ebp), %edx
	movl	-36(%ebp), %eax
	leal	(%edx,%eax), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edx
	movl	_sch_istable@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	andl	$128, %eax
	testl	%eax, %eax
	jne	.L160
	movl	-40(%ebp), %edx
	movl	-36(%ebp), %eax
	leal	(%edx,%eax), %eax
	movzbl	(%eax), %eax
	cmpb	$32, %al
	je	.L160
	.loc 1 1055 0
	addl	$1, -36(%ebp)
.L189:
	movl	-40(%ebp), %edx
	movl	-36(%ebp), %eax
	leal	(%edx,%eax), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L190
	.loc 1 1059 0
	cmpl	$0, -16(%ebp)
	jne	.L194
	.loc 1 1060 0
	movl	$0, -48(%ebp)
	jmp	.L196
.L194:
	.loc 1 1062 0
	movl	-40(%ebp), %eax
	movl	%eax, -48(%ebp)
	jmp	.L196
.L160:
	.loc 1 1065 0
	movl	8(%ebp), %eax
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
	addl	$3, %eax
	movl	$1, 12(%esp)
	movl	%eax, 8(%esp)
	leal	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	grow_vect
	.loc 1 1069 0
	movl	8(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$60, %al
	jne	.L197
	.loc 1 1070 0
	movl	-40(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	strcpy@PLT
	jmp	.L199
.L197:
	.loc 1 1072 0
	movl	-40(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%edx, 8(%esp)
	leal	.LC160@GOTOFF(%ebx), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	sprintf@PLT
.L199:
	.loc 1 1074 0
	movl	-40(%ebp), %eax
	movl	%eax, -48(%ebp)
.L196:
	movl	-48(%ebp), %eax
	.loc 1 1075 0
	addl	$76, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE17:
	.size	ada_demangle, .-ada_demangle
	.section	.rodata
.LC161:
	.string	"global constructors keyed to "
.LC162:
	.string	"global destructors keyed to "
.LC163:
	.string	"import stub for "
	.text
	.type	internal_cplus_demangle, @function
internal_cplus_demangle:
.LFB18:
	.loc 1 1087 0
	pushl	%ebp
.LCFI55:
	movl	%esp, %ebp
.LCFI56:
	pushl	%ebx
.LCFI57:
	subl	$68, %esp
.LCFI58:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1090 0
	movl	$0, -28(%ebp)
	.loc 1 1091 0
	movl	$0, -24(%ebp)
	.loc 1 1093 0
	movl	8(%ebp), %eax
	movl	40(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 1094 0
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 1095 0
	movl	8(%ebp), %eax
	movl	48(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1096 0
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 1097 0
	movl	8(%ebp), %eax
	movl	$0, 44(%eax)
	movl	8(%ebp), %eax
	movl	44(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 40(%eax)
	.loc 1 1098 0
	movl	8(%ebp), %eax
	movl	$0, 56(%eax)
	.loc 1 1099 0
	movl	8(%ebp), %eax
	movl	$0, 60(%eax)
	.loc 1 1101 0
	movl	12(%ebp), %eax
	testl	%eax, %eax
	je	.L203
	movl	12(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L203
	.loc 1 1103 0
	leal	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	string_init
	.loc 1 1112 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	andl	$256, %eax
	testl	%eax, %eax
	jne	.L206
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	andl	$512, %eax
	testl	%eax, %eax
	je	.L208
.L206:
	.loc 1 1114 0
	leal	-40(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	gnu_special
	movl	%eax, -28(%ebp)
.L208:
	.loc 1 1116 0
	cmpl	$0, -28(%ebp)
	jne	.L209
	.loc 1 1118 0
	leal	-40(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_prefix
	movl	%eax, -28(%ebp)
.L209:
	.loc 1 1120 0
	cmpl	$0, -28(%ebp)
	je	.L211
	movl	12(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L211
	.loc 1 1122 0
	leal	-40(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_signature
	movl	%eax, -28(%ebp)
.L211:
	.loc 1 1124 0
	movl	8(%ebp), %eax
	movl	40(%eax), %eax
	cmpl	$2, %eax
	jne	.L214
	.loc 1 1126 0
	leal	.LC161@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	string_prepend
	.loc 1 1127 0
	movl	8(%ebp), %eax
	movl	$0, 40(%eax)
	jmp	.L216
.L214:
	.loc 1 1129 0
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	$2, %eax
	jne	.L217
	.loc 1 1131 0
	leal	.LC162@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	string_prepend
	.loc 1 1132 0
	movl	8(%ebp), %eax
	movl	$0, 44(%eax)
	jmp	.L216
.L217:
	.loc 1 1134 0
	movl	8(%ebp), %eax
	movl	60(%eax), %eax
	cmpl	$1, %eax
	jne	.L216
	.loc 1 1136 0
	leal	.LC163@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	string_prepend
	.loc 1 1137 0
	movl	8(%ebp), %eax
	movl	$0, 60(%eax)
.L216:
	.loc 1 1139 0
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	mop_up
	movl	%eax, -24(%ebp)
.L203:
	.loc 1 1141 0
	movl	8(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	%eax, 40(%edx)
	.loc 1 1142 0
	movl	8(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 44(%edx)
	.loc 1 1143 0
	movl	8(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 48(%edx)
	.loc 1 1144 0
	movl	8(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	%eax, 56(%edx)
	.loc 1 1145 0
	movl	-24(%ebp), %eax
	.loc 1 1146 0
	addl	$68, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE18:
	.size	internal_cplus_demangle, .-internal_cplus_demangle
	.type	squangle_mop_up, @function
squangle_mop_up:
.LFB19:
	.loc 1 1153 0
	pushl	%ebp
.LCFI59:
	movl	%esp, %ebp
.LCFI60:
	pushl	%ebx
.LCFI61:
	subl	$4, %esp
.LCFI62:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1155 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	forget_B_and_K_types
	.loc 1 1156 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	.L222
	.loc 1 1158 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, (%esp)
	call	free@PLT
.L222:
	.loc 1 1160 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	je	.L226
	.loc 1 1162 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, (%esp)
	call	free@PLT
.L226:
	.loc 1 1164 0
	addl	$4, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE19:
	.size	squangle_mop_up, .-squangle_mop_up
	.type	work_stuff_copy_to_from, @function
work_stuff_copy_to_from:
.LFB20:
	.loc 1 1173 0
	pushl	%ebp
.LCFI63:
	movl	%esp, %ebp
.LCFI64:
	pushl	%edi
.LCFI65:
	pushl	%esi
.LCFI66:
	pushl	%ebx
.LCFI67:
	subl	$76, %esp
.LCFI68:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1176 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_work_stuff
	.loc 1 1179 0
	movl	8(%ebp), %eax
	movl	12(%ebp), %edx
	movl	%eax, %ecx
	movl	$84, %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	memcpy@PLT
	.loc 1 1182 0
	movl	12(%ebp), %eax
	movl	36(%eax), %eax
	testl	%eax, %eax
	je	.L228
	.loc 1 1183 0
	movl	12(%ebp), %eax
	movl	36(%eax), %eax
	sall	$2, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 4(%eax)
.L228:
	.loc 1 1186 0
	movl	$0, -32(%ebp)
	jmp	.L230
.L231:
.LBB6:
	.loc 1 1188 0
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	-32(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
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
	addl	$1, %eax
	movl	%eax, -28(%ebp)
	.loc 1 1190 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	-32(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %esi
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, (%esi)
	.loc 1 1191 0
	movl	-28(%ebp), %eax
	movl	%eax, -60(%ebp)
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	-32(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %ecx
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	-32(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, %edi
	movl	%ecx, %esi
	cld
	movl	-60(%ebp), %ecx
	rep
	movsb
.LBE6:
	.loc 1 1186 0
	addl	$1, -32(%ebp)
.L230:
	movl	12(%ebp), %eax
	movl	32(%eax), %eax
	cmpl	-32(%ebp), %eax
	jg	.L231
	.loc 1 1194 0
	movl	12(%ebp), %eax
	movl	24(%eax), %eax
	testl	%eax, %eax
	je	.L233
	.loc 1 1195 0
	movl	12(%ebp), %eax
	movl	24(%eax), %eax
	sall	$2, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 8(%eax)
.L233:
	.loc 1 1198 0
	movl	$0, -32(%ebp)
	jmp	.L235
.L236:
.LBB7:
	.loc 1 1200 0
	movl	12(%ebp), %eax
	movl	8(%eax), %edx
	movl	-32(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
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
	addl	$1, %eax
	movl	%eax, -24(%ebp)
	.loc 1 1202 0
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	-32(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %esi
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, (%esi)
	.loc 1 1203 0
	movl	-24(%ebp), %eax
	movl	%eax, -56(%ebp)
	movl	12(%ebp), %eax
	movl	8(%eax), %edx
	movl	-32(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %ecx
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	-32(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, %edi
	movl	%ecx, %esi
	cld
	movl	-56(%ebp), %ecx
	rep
	movsb
.LBE7:
	.loc 1 1198 0
	addl	$1, -32(%ebp)
.L235:
	movl	12(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	-32(%ebp), %eax
	jg	.L236
	.loc 1 1206 0
	movl	12(%ebp), %eax
	movl	28(%eax), %eax
	testl	%eax, %eax
	je	.L238
	.loc 1 1207 0
	movl	12(%ebp), %eax
	movl	28(%eax), %eax
	sall	$2, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 12(%eax)
.L238:
	.loc 1 1210 0
	movl	$0, -32(%ebp)
	jmp	.L240
.L241:
.LBB8:
	.loc 1 1212 0
	movl	12(%ebp), %eax
	movl	12(%eax), %edx
	movl	-32(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
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
	movl	%eax, -20(%ebp)
	.loc 1 1214 0
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	-32(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %esi
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, (%esi)
	.loc 1 1215 0
	movl	-20(%ebp), %eax
	movl	%eax, -52(%ebp)
	movl	12(%ebp), %eax
	movl	12(%eax), %edx
	movl	-32(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %ecx
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	-32(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, %edi
	movl	%ecx, %esi
	cld
	movl	-52(%ebp), %ecx
	rep
	movsb
.LBE8:
	.loc 1 1210 0
	addl	$1, -32(%ebp)
.L240:
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	cmpl	-32(%ebp), %eax
	jg	.L241
	.loc 1 1218 0
	movl	12(%ebp), %eax
	movl	68(%eax), %eax
	testl	%eax, %eax
	je	.L243
	.loc 1 1219 0
	movl	12(%ebp), %eax
	movl	68(%eax), %eax
	sall	$2, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 64(%eax)
.L243:
	.loc 1 1222 0
	movl	$0, -32(%ebp)
	jmp	.L245
.L246:
.LBB9:
	.loc 1 1224 0
	movl	12(%ebp), %eax
	movl	64(%eax), %edx
	movl	-32(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
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
	addl	$1, %eax
	movl	%eax, -16(%ebp)
	.loc 1 1226 0
	movl	8(%ebp), %eax
	movl	64(%eax), %edx
	movl	-32(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %esi
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, (%esi)
	.loc 1 1227 0
	movl	-16(%ebp), %eax
	movl	%eax, -48(%ebp)
	movl	12(%ebp), %eax
	movl	64(%eax), %edx
	movl	-32(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %ecx
	movl	8(%ebp), %eax
	movl	64(%eax), %edx
	movl	-32(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, %edi
	movl	%ecx, %esi
	cld
	movl	-48(%ebp), %ecx
	rep
	movsb
.LBE9:
	.loc 1 1222 0
	addl	$1, -32(%ebp)
.L245:
	movl	12(%ebp), %eax
	movl	68(%eax), %eax
	cmpl	-32(%ebp), %eax
	jg	.L246
	.loc 1 1230 0
	movl	12(%ebp), %eax
	movl	76(%eax), %eax
	testl	%eax, %eax
	je	.L250
	.loc 1 1232 0
	movl	$12, (%esp)
	call	xmalloc@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 76(%eax)
	.loc 1 1233 0
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, (%esp)
	call	string_init
	.loc 1 1234 0
	movl	12(%ebp), %eax
	movl	76(%eax), %edx
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	string_appends
.L250:
	.loc 1 1236 0
	addl	$76, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE20:
	.size	work_stuff_copy_to_from, .-work_stuff_copy_to_from
	.type	delete_non_B_K_work_stuff, @function
delete_non_B_K_work_stuff:
.LFB21:
	.loc 1 1244 0
	pushl	%ebp
.LCFI69:
	movl	%esp, %ebp
.LCFI70:
	pushl	%ebx
.LCFI71:
	subl	$20, %esp
.LCFI72:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1247 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	forget_types
	.loc 1 1248 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L252
	.loc 1 1250 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 1251 0
	movl	8(%ebp), %eax
	movl	$0, 4(%eax)
	.loc 1 1252 0
	movl	8(%ebp), %eax
	movl	$0, 36(%eax)
.L252:
	.loc 1 1254 0
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	testl	%eax, %eax
	je	.L254
.LBB10:
	.loc 1 1258 0
	movl	$0, -8(%ebp)
	jmp	.L256
.L257:
	.loc 1 1259 0
	movl	8(%ebp), %eax
	movl	64(%eax), %edx
	movl	-8(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L258
	.loc 1 1260 0
	movl	8(%ebp), %eax
	movl	64(%eax), %edx
	movl	-8(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	free@PLT
.L258:
	.loc 1 1258 0
	addl	$1, -8(%ebp)
.L256:
	movl	8(%ebp), %eax
	movl	68(%eax), %eax
	cmpl	-8(%ebp), %eax
	jg	.L257
	.loc 1 1262 0
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 1263 0
	movl	8(%ebp), %eax
	movl	$0, 64(%eax)
.L254:
.LBE10:
	.loc 1 1265 0
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	testl	%eax, %eax
	je	.L263
	.loc 1 1267 0
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, (%esp)
	call	string_delete
	.loc 1 1268 0
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 1269 0
	movl	8(%ebp), %eax
	movl	$0, 76(%eax)
.L263:
	.loc 1 1271 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE21:
	.size	delete_non_B_K_work_stuff, .-delete_non_B_K_work_stuff
	.type	delete_work_stuff, @function
delete_work_stuff:
.LFB22:
	.loc 1 1278 0
	pushl	%ebp
.LCFI73:
	movl	%esp, %ebp
.LCFI74:
	subl	$8, %esp
.LCFI75:
	.loc 1 1279 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_non_B_K_work_stuff
	.loc 1 1280 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	squangle_mop_up
	.loc 1 1281 0
	leave
	ret
.LFE22:
	.size	delete_work_stuff, .-delete_work_stuff
	.type	mop_up, @function
mop_up:
.LFB23:
	.loc 1 1291 0
	pushl	%ebp
.LCFI76:
	movl	%esp, %ebp
.LCFI77:
	pushl	%ebx
.LCFI78:
	subl	$36, %esp
.LCFI79:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1292 0
	movl	$0, -8(%ebp)
	.loc 1 1294 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_non_B_K_work_stuff
	.loc 1 1299 0
	cmpl	$0, 16(%ebp)
	jne	.L267
	.loc 1 1301 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	string_delete
	jmp	.L269
.L267:
	.loc 1 1305 0
	movl	$1, 8(%esp)
	leal	.LC122@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	string_appendn
	.loc 1 1306 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
.L269:
	.loc 1 1308 0
	movl	-8(%ebp), %eax
	.loc 1 1309 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE23:
	.size	mop_up, .-mop_up
	.section	.rodata
.LC164:
	.string	"."
.LC165:
	.string	"::"
.LC166:
	.string	" "
.LC167:
	.string	" static"
	.text
	.type	demangle_signature, @function
demangle_signature:
.LFB24:
	.loc 1 1346 0
	pushl	%ebp
.LCFI80:
	movl	%esp, %ebp
.LCFI81:
	pushl	%esi
.LCFI82:
	pushl	%ebx
.LCFI83:
	subl	$112, %esp
.LCFI84:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1347 0
	movl	$1, -28(%ebp)
	.loc 1 1348 0
	movl	$0, -24(%ebp)
	.loc 1 1349 0
	movl	$0, -20(%ebp)
	.loc 1 1350 0
	movl	$0, -16(%ebp)
	.loc 1 1351 0
	movl	$0, -12(%ebp)
	.loc 1 1355 0
	jmp	.L388
.L273:
	.loc 1 1357 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	subl	$48, %eax
	movl	%eax, -84(%ebp)
	cmpl	$69, -84(%ebp)
	ja	.L274
	movl	-84(%ebp), %eax
	sall	$2, %eax
	movl	.L286@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L286:
	.long	.L275@GOTOFF
	.long	.L275@GOTOFF
	.long	.L275@GOTOFF
	.long	.L275@GOTOFF
	.long	.L275@GOTOFF
	.long	.L275@GOTOFF
	.long	.L275@GOTOFF
	.long	.L275@GOTOFF
	.long	.L275@GOTOFF
	.long	.L275@GOTOFF
	.long	.L274@GOTOFF
	.long	.L274@GOTOFF
	.long	.L274@GOTOFF
	.long	.L274@GOTOFF
	.long	.L274@GOTOFF
	.long	.L274@GOTOFF
	.long	.L274@GOTOFF
	.long	.L274@GOTOFF
	.long	.L276@GOTOFF
	.long	.L277@GOTOFF
	.long	.L274@GOTOFF
	.long	.L274@GOTOFF
	.long	.L278@GOTOFF
	.long	.L274@GOTOFF
	.long	.L279@GOTOFF
	.long	.L274@GOTOFF
	.long	.L274@GOTOFF
	.long	.L280@GOTOFF
	.long	.L281@GOTOFF
	.long	.L274@GOTOFF
	.long	.L274@GOTOFF
	.long	.L274@GOTOFF
	.long	.L274@GOTOFF
	.long	.L282@GOTOFF
	.long	.L274@GOTOFF
	.long	.L283@GOTOFF
	.long	.L274@GOTOFF
	.long	.L274@GOTOFF
	.long	.L277@GOTOFF
	.long	.L274@GOTOFF
	.long	.L274@GOTOFF
	.long	.L274@GOTOFF
	.long	.L274@GOTOFF
	.long	.L274@GOTOFF
	.long	.L274@GOTOFF
	.long	.L274@GOTOFF
	.long	.L274@GOTOFF
	.long	.L284@GOTOFF
	.long	.L274@GOTOFF
	.long	.L274@GOTOFF
	.long	.L274@GOTOFF
	.long	.L274@GOTOFF
	.long	.L274@GOTOFF
	.long	.L274@GOTOFF
	.long	.L274@GOTOFF
	.long	.L274@GOTOFF
	.long	.L274@GOTOFF
	.long	.L274@GOTOFF
	.long	.L274@GOTOFF
	.long	.L274@GOTOFF
	.long	.L274@GOTOFF
	.long	.L274@GOTOFF
	.long	.L274@GOTOFF
	.long	.L274@GOTOFF
	.long	.L274@GOTOFF
	.long	.L274@GOTOFF
	.long	.L274@GOTOFF
	.long	.L274@GOTOFF
	.long	.L285@GOTOFF
	.long	.L277@GOTOFF
	.text
.L282:
	.loc 1 1360 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1361 0
	movl	$0, 16(%esp)
	movl	$1, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_qualified
	movl	%eax, -28(%ebp)
	.loc 1 1362 0
	cmpl	$0, -28(%ebp)
	je	.L287
	.loc 1 1363 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	remember_type
.L287:
	.loc 1 1364 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	andl	$256, %eax
	testl	%eax, %eax
	jne	.L289
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	andl	$512, %eax
	testl	%eax, %eax
	je	.L291
.L289:
	.loc 1 1365 0
	movl	$1, -20(%ebp)
.L291:
	.loc 1 1366 0
	movl	$0, -12(%ebp)
	.loc 1 1367 0
	jmp	.L292
.L280:
	.loc 1 1370 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1371 0
	movl	$0, 16(%esp)
	movl	$1, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_qualified
	movl	%eax, -28(%ebp)
	.loc 1 1372 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	andl	$256, %eax
	testl	%eax, %eax
	jne	.L293
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	andl	$512, %eax
	testl	%eax, %eax
	je	.L295
.L293:
	.loc 1 1374 0
	movl	$1, -20(%ebp)
.L295:
	.loc 1 1376 0
	movl	$0, -12(%ebp)
	.loc 1 1377 0
	jmp	.L292
.L283:
	.loc 1 1381 0
	cmpl	$0, -12(%ebp)
	jne	.L296
	.loc 1 1383 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
.L296:
	.loc 1 1385 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 1386 0
	movl	8(%ebp), %eax
	movl	$1, 48(%eax)
	.loc 1 1387 0
	jmp	.L292
.L277:
	.loc 1 1392 0
	movl	8(%ebp), %eax
	movl	56(%eax), %esi
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, (%esp)
	call	code_for_qualifier
	movl	%esi, %edx
	orl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 56(%eax)
	.loc 1 1395 0
	cmpl	$0, -12(%ebp)
	jne	.L298
	.loc 1 1396 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
.L298:
	.loc 1 1397 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 1398 0
	jmp	.L292
.L281:
	.loc 1 1402 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	andl	$4096, %eax
	testl	%eax, %eax
	je	.L300
	.loc 1 1404 0
	jmp	.L302
.L303:
	.loc 1 1405 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
.L302:
	.loc 1 1404 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L304
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movzbl	(%eax), %eax
	cmpb	$95, %al
	jne	.L303
.L304:
	.loc 1 1406 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L306
	.loc 1 1407 0
	movl	$0, -28(%ebp)
	jmp	.L292
.L306:
	.loc 1 1409 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	jmp	.L292
.L300:
	.loc 1 1412 0
	movl	$0, -28(%ebp)
	.loc 1 1413 0
	jmp	.L292
.L275:
	.loc 1 1417 0
	cmpl	$0, -12(%ebp)
	jne	.L310
	.loc 1 1419 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
.L310:
	.loc 1 1421 0
	movl	8(%ebp), %eax
	movl	$-1, 52(%eax)
	.loc 1 1422 0
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_class
	movl	%eax, -28(%ebp)
	.loc 1 1423 0
	cmpl	$0, -28(%ebp)
	je	.L312
	.loc 1 1425 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	remember_type
.L312:
	.loc 1 1427 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	andl	$256, %eax
	testl	%eax, %eax
	jne	.L314
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	andl	$512, %eax
	testl	%eax, %eax
	jne	.L314
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L317
.L314:
	.loc 1 1431 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movzbl	(%eax), %eax
	cmpb	$70, %al
	je	.L317
	.loc 1 1432 0
	movl	$1, -20(%ebp)
.L317:
	.loc 1 1434 0
	movl	$0, -12(%ebp)
	.loc 1 1435 0
	jmp	.L292
.L276:
.LBB11:
	.loc 1 1440 0
	leal	-64(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	do_type
	movl	%eax, -28(%ebp)
	.loc 1 1441 0
	cmpl	$0, -28(%ebp)
	je	.L319
	.loc 1 1443 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L321
	leal	.LC164@GOTOFF(%ebx), %eax
	movl	%eax, -80(%ebp)
	jmp	.L323
.L321:
	leal	.LC165@GOTOFF(%ebx), %ecx
	movl	%ecx, -80(%ebp)
.L323:
	movl	-80(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	string_append
	.loc 1 1444 0
	leal	-64(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	string_prepends
.L319:
	.loc 1 1446 0
	movl	$0, -12(%ebp)
	.loc 1 1447 0
	movl	$1, -20(%ebp)
	.loc 1 1449 0
	jmp	.L292
.L278:
.LBE11:
	.loc 1 1458 0
	movl	$0, -12(%ebp)
	.loc 1 1459 0
	movl	$1, -24(%ebp)
	.loc 1 1460 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 1467 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	andl	$1024, %eax
	testl	%eax, %eax
	jne	.L324
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	andl	$2048, %eax
	testl	%eax, %eax
	jne	.L324
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	andl	$4096, %eax
	testl	%eax, %eax
	jne	.L324
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L328
.L324:
	.loc 1 1469 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	forget_types
.L328:
	.loc 1 1471 0
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_args
	movl	%eax, -28(%ebp)
	.loc 1 1475 0
	cmpl	$0, -28(%ebp)
	je	.L292
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	andl	$256, %eax
	testl	%eax, %eax
	jne	.L331
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L292
.L331:
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movzbl	(%eax), %eax
	cmpb	$95, %al
	jne	.L292
	.loc 1 1477 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 1479 0
	leal	-52(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	do_type
	movl	%eax, -28(%ebp)
	.loc 1 1480 0
	leal	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	string_delete
	.loc 1 1483 0
	jmp	.L292
.L285:
	.loc 1 1487 0
	leal	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	string_init
	.loc 1 1488 0
	leal	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	string_init
	.loc 1 1489 0
	cmpl	$0, -12(%ebp)
	jne	.L334
	.loc 1 1491 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
.L334:
	.loc 1 1493 0
	movl	$1, 20(%esp)
	movl	$1, 16(%esp)
	leal	-40(%ebp), %eax
	movl	%eax, 12(%esp)
	leal	-52(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_template
	movl	%eax, -28(%ebp)
	.loc 1 1495 0
	cmpl	$0, -28(%ebp)
	je	.L336
	.loc 1 1497 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	remember_type
.L336:
	.loc 1 1499 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L338
	leal	.LC164@GOTOFF(%ebx), %eax
	movl	%eax, -76(%ebp)
	jmp	.L340
.L338:
	leal	.LC165@GOTOFF(%ebx), %ecx
	movl	%ecx, -76(%ebp)
.L340:
	movl	-76(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	string_append
	.loc 1 1501 0
	leal	-52(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	string_prepends
	.loc 1 1502 0
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L341
	.loc 1 1504 0
	leal	.LC83@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	string_prepend
	.loc 1 1505 0
	leal	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	string_appends
	.loc 1 1506 0
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	leal	-1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 44(%eax)
.L341:
	.loc 1 1508 0
	movl	8(%ebp), %eax
	movl	40(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L343
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L345
.L343:
	.loc 1 1510 0
	leal	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	string_appends
	.loc 1 1511 0
	movl	8(%ebp), %eax
	movl	40(%eax), %eax
	leal	-1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 40(%eax)
.L345:
	.loc 1 1513 0
	leal	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	string_delete
	.loc 1 1514 0
	leal	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	string_delete
	.loc 1 1515 0
	movl	$0, -12(%ebp)
	.loc 1 1516 0
	movl	$1, -20(%ebp)
	.loc 1 1517 0
	jmp	.L292
.L284:
	.loc 1 1520 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	andl	$256, %eax
	testl	%eax, %eax
	jne	.L346
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	andl	$512, %eax
	testl	%eax, %eax
	je	.L348
.L346:
	cmpl	$0, -16(%ebp)
	je	.L348
.LBB12:
	.loc 1 1524 0
	leal	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	string_init
	.loc 1 1526 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 1527 0
	leal	-64(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	do_type
	movl	%eax, -28(%ebp)
	.loc 1 1528 0
	movl	-64(%ebp), %edx
	movl	-60(%ebp), %eax
	cmpl	%eax, %edx
	je	.L350
	leal	.LC166@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	string_append
.L350:
	.loc 1 1530 0
	leal	-64(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	string_prepends
	.loc 1 1531 0
	leal	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	string_delete
	.loc 1 1532 0
	jmp	.L292
.L348:
.LBE12:
	.loc 1 1543 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	andl	$4096, %eax
	testl	%eax, %eax
	je	.L352
	.loc 1 1545 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 1546 0
	jmp	.L354
.L355:
	.loc 1 1547 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
.L354:
	.loc 1 1546 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L292
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edx
	movl	_sch_istable@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	andl	$4, %eax
	testl	%eax, %eax
	jne	.L355
	jmp	.L292
.L352:
	.loc 1 1550 0
	movl	$0, -28(%ebp)
	.loc 1 1551 0
	jmp	.L292
.L279:
	.loc 1 1554 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	andl	$256, %eax
	testl	%eax, %eax
	jne	.L359
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	andl	$512, %eax
	testl	%eax, %eax
	je	.L274
.L359:
	.loc 1 1557 0
	movl	$0, 20(%esp)
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_template
	movl	%eax, -28(%ebp)
	.loc 1 1559 0
	movl	8(%ebp), %eax
	movl	40(%eax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L361
	.loc 1 1560 0
	movl	$1, -16(%ebp)
.L361:
	.loc 1 1561 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 1562 0
	jmp	.L292
.L274:
	.loc 1 1569 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	andl	$256, %eax
	testl	%eax, %eax
	jne	.L363
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	andl	$512, %eax
	testl	%eax, %eax
	je	.L365
.L363:
	.loc 1 1573 0
	movl	$1, -24(%ebp)
	.loc 1 1574 0
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_args
	movl	%eax, -28(%ebp)
	.loc 1 1569 0
	jmp	.L292
.L365:
	.loc 1 1582 0
	movl	$0, -28(%ebp)
.L292:
	.loc 1 1590 0
	cmpl	$0, -28(%ebp)
	je	.L272
	cmpl	$0, -20(%ebp)
	je	.L272
	.loc 1 1592 0
	movl	$1, -24(%ebp)
	.loc 1 1593 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	andl	$1024, %eax
	testl	%eax, %eax
	jne	.L368
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	andl	$2048, %eax
	testl	%eax, %eax
	jne	.L368
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L371
.L368:
	.loc 1 1595 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	forget_types
.L371:
	.loc 1 1597 0
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_args
	movl	%eax, -28(%ebp)
	.loc 1 1601 0
	movl	$0, -20(%ebp)
.L272:
.L388:
	.loc 1 1355 0
	cmpl	$0, -28(%ebp)
	je	.L372
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L273
.L372:
	.loc 1 1605 0
	cmpl	$0, -28(%ebp)
	je	.L374
	cmpl	$0, -24(%ebp)
	jne	.L374
	.loc 1 1607 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	andl	$256, %eax
	testl	%eax, %eax
	jne	.L377
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	andl	$512, %eax
	testl	%eax, %eax
	je	.L374
.L377:
	.loc 1 1615 0
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_args
	movl	%eax, -28(%ebp)
.L374:
	.loc 1 1618 0
	cmpl	$0, -28(%ebp)
	je	.L379
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L379
	.loc 1 1620 0
	movl	8(%ebp), %eax
	movl	48(%eax), %eax
	testl	%eax, %eax
	je	.L382
	.loc 1 1621 0
	leal	.LC167@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	string_append
.L382:
	.loc 1 1622 0
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	testl	%eax, %eax
	je	.L379
	.loc 1 1624 0
	movl	16(%ebp), %eax
	movl	(%eax), %edx
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	je	.L385
	leal	.LC166@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	string_append
.L385:
	.loc 1 1625 0
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	movl	%eax, (%esp)
	call	qualifier_string
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	string_append
.L379:
	.loc 1 1629 0
	movl	-28(%ebp), %eax
	.loc 1 1630 0
	addl	$112, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE24:
	.size	demangle_signature, .-demangle_signature
	.section	.rodata
.LC168:
	.string	"template <"
.LC169:
	.string	"class"
.LC170:
	.string	"> class"
	.text
	.type	demangle_template_template_parm, @function
demangle_template_template_parm:
.LFB25:
	.loc 1 1662 0
	pushl	%ebp
.LCFI85:
	movl	%esp, %ebp
.LCFI86:
	pushl	%ebx
.LCFI87:
	subl	$52, %esp
.LCFI88:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1665 0
	movl	$0, -12(%ebp)
	.loc 1 1666 0
	movl	$1, -8(%ebp)
	.loc 1 1669 0
	leal	.LC168@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	string_append
	.loc 1 1671 0
	leal	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_count
	testl	%eax, %eax
	je	.L390
	.loc 1 1673 0
	movl	$0, -16(%ebp)
	jmp	.L392
.L393:
	.loc 1 1675 0
	cmpl	$0, -12(%ebp)
	je	.L394
	.loc 1 1677 0
	leal	.LC110@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	string_append
.L394:
	.loc 1 1681 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movzbl	(%eax), %eax
	cmpb	$90, %al
	jne	.L396
	.loc 1 1683 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 1684 0
	leal	.LC169@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	string_append
	jmp	.L398
.L396:
	.loc 1 1687 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movzbl	(%eax), %eax
	cmpb	$122, %al
	jne	.L399
	.loc 1 1689 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 1690 0
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_template_template_parm
	movl	%eax, -8(%ebp)
	.loc 1 1692 0
	cmpl	$0, -8(%ebp)
	je	.L390
	.loc 1 1694 0
	jmp	.L398
.L399:
	.loc 1 1700 0
	leal	-32(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	do_type
	movl	%eax, -8(%ebp)
	.loc 1 1701 0
	cmpl	$0, -8(%ebp)
	je	.L402
	.loc 1 1703 0
	leal	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	string_appends
.L402:
	.loc 1 1705 0
	leal	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	string_delete
	.loc 1 1706 0
	cmpl	$0, -8(%ebp)
	je	.L390
.L398:
	.loc 1 1711 0
	movl	$1, -12(%ebp)
	.loc 1 1673 0
	addl	$1, -16(%ebp)
.L392:
	movl	-20(%ebp), %eax
	cmpl	%eax, -16(%ebp)
	jl	.L393
.L390:
	.loc 1 1715 0
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	subl	$1, %eax
	movzbl	(%eax), %eax
	cmpb	$62, %al
	jne	.L404
	.loc 1 1716 0
	leal	.LC166@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	string_append
.L404:
	.loc 1 1717 0
	leal	.LC170@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	string_append
	.loc 1 1718 0
	movl	-8(%ebp), %eax
	.loc 1 1719 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE25:
	.size	demangle_template_template_parm, .-demangle_template_template_parm
	.section	.rodata
.LC171:
	.string	"("
.LC172:
	.string	")"
	.text
	.type	demangle_expression, @function
demangle_expression:
.LFB26:
	.loc 1 1727 0
	pushl	%ebp
.LCFI89:
	movl	%esp, %ebp
.LCFI90:
	pushl	%edi
.LCFI91:
	pushl	%esi
.LCFI92:
	pushl	%ebx
.LCFI93:
	subl	$76, %esp
.LCFI94:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1728 0
	movl	$0, -32(%ebp)
	.loc 1 1731 0
	movl	$1, -28(%ebp)
	.loc 1 1732 0
	movl	$1, 8(%esp)
	leal	.LC171@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	string_appendn
	.loc 1 1733 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 1734 0
	jmp	.L408
.L409:
	.loc 1 1736 0
	cmpl	$0, -32(%ebp)
	je	.L410
.LBB13:
	.loc 1 1741 0
	movl	$0, -28(%ebp)
	.loc 1 1743 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
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
	movl	%eax, -20(%ebp)
	.loc 1 1745 0
	movl	$0, -24(%ebp)
	jmp	.L412
.L413:
.LBB14:
	.loc 1 1747 0
	movl	-24(%ebp), %edx
	leal	optable@GOTOFF(%ebx), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	(%eax,%ecx), %eax
	movl	$-1, %ecx
	movl	%eax, -52(%ebp)
	movl	$0, %eax
	cld
	movl	-52(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	movl	%eax, -16(%ebp)
	.loc 1 1749 0
	movl	-16(%ebp), %eax
	cmpl	-20(%ebp), %eax
	ja	.L414
	movl	12(%ebp), %eax
	movl	(%eax), %esi
	movl	-24(%ebp), %edx
	leal	optable@GOTOFF(%ebx), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	(%eax,%ecx), %eax
	movl	%eax, -56(%ebp)
	movl	%esi, -60(%ebp)
	movl	-16(%ebp), %eax
	movl	%eax, -64(%ebp)
	cld
	movl	-64(%ebp), %ecx
	cmpl	%ecx, -64(%ebp)
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
	jne	.L414
	.loc 1 1752 0
	movl	$1, 8(%esp)
	leal	.LC166@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	string_appendn
	.loc 1 1753 0
	movl	-24(%ebp), %edx
	leal	optable@GOTOFF(%ebx), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	4(%eax,%ecx), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	string_append
	.loc 1 1754 0
	movl	$1, 8(%esp)
	leal	.LC166@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	string_appendn
	.loc 1 1755 0
	movl	$1, -28(%ebp)
	.loc 1 1756 0
	movl	12(%ebp), %eax
	movl	(%eax), %edx
	movl	-16(%ebp), %eax
	addl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 1757 0
	jmp	.L417
.L414:
.LBE14:
	.loc 1 1745 0
	addl	$1, -24(%ebp)
.L412:
	cmpl	$78, -24(%ebp)
	jbe	.L413
.L417:
	.loc 1 1761 0
	cmpl	$0, -28(%ebp)
	je	.L418
	.loc 1 1762 0
	jmp	.L420
.L410:
.LBE13:
	.loc 1 1765 0
	movl	$1, -32(%ebp)
.L420:
	.loc 1 1767 0
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_template_value_parm
	movl	%eax, -28(%ebp)
.L408:
	.loc 1 1734 0
	cmpl	$0, -28(%ebp)
	je	.L418
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movzbl	(%eax), %eax
	cmpb	$87, %al
	je	.L418
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L409
.L418:
	.loc 1 1770 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movzbl	(%eax), %eax
	cmpb	$87, %al
	je	.L423
	.loc 1 1771 0
	movl	$0, -28(%ebp)
	jmp	.L425
.L423:
	.loc 1 1774 0
	movl	$1, 8(%esp)
	leal	.LC172@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	string_appendn
	.loc 1 1775 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
.L425:
	.loc 1 1778 0
	movl	-28(%ebp), %eax
	.loc 1 1779 0
	addl	$76, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE26:
	.size	demangle_expression, .-demangle_expression
	.section	.rodata
.LC173:
	.string	"%d"
	.text
	.type	demangle_integral_value, @function
demangle_integral_value:
.LFB27:
	.loc 1 1786 0
	pushl	%ebp
.LCFI95:
	movl	%esp, %ebp
.LCFI96:
	pushl	%ebx
.LCFI97:
	subl	$100, %esp
.LCFI98:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	movl	%eax, -72(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -76(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, -80(%ebp)
	.loc 1 1786 0
	movl	%gs:20, %eax
	movl	%eax, -8(%ebp)
	xorl	%eax, %eax
	.loc 1 1789 0
	movl	-76(%ebp), %eax
	movl	(%eax), %eax
	movzbl	(%eax), %eax
	cmpb	$69, %al
	jne	.L428
	.loc 1 1790 0
	movl	$3, 12(%esp)
	movl	-80(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-76(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_expression
	movl	%eax, -56(%ebp)
	jmp	.L430
.L428:
	.loc 1 1791 0
	movl	-76(%ebp), %eax
	movl	(%eax), %eax
	movzbl	(%eax), %eax
	cmpb	$81, %al
	je	.L431
	movl	-76(%ebp), %eax
	movl	(%eax), %eax
	movzbl	(%eax), %eax
	cmpb	$75, %al
	jne	.L433
.L431:
	.loc 1 1792 0
	movl	$1, 16(%esp)
	movl	$0, 12(%esp)
	movl	-80(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-76(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_qualified
	movl	%eax, -56(%ebp)
	.loc 1 1791 0
	jmp	.L430
.L433:
.LBB15:
	.loc 1 1799 0
	movl	$0, -48(%ebp)
	.loc 1 1800 0
	movl	$0, -44(%ebp)
	.loc 1 1802 0
	movl	$0, -56(%ebp)
	.loc 1 1805 0
	movl	-76(%ebp), %eax
	movl	(%eax), %eax
	movzbl	(%eax), %eax
	cmpb	$109, %al
	jne	.L434
	.loc 1 1807 0
	movl	$1, 8(%esp)
	leal	.LC30@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-80(%ebp), %eax
	movl	%eax, (%esp)
	call	string_appendn
	.loc 1 1808 0
	movl	-76(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	-76(%ebp), %eax
	movl	%edx, (%eax)
	jmp	.L436
.L434:
	.loc 1 1810 0
	movl	-76(%ebp), %eax
	movl	(%eax), %eax
	movzbl	(%eax), %eax
	cmpb	$95, %al
	jne	.L437
	movl	-76(%ebp), %eax
	movl	(%eax), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	cmpb	$109, %al
	jne	.L437
	.loc 1 1816 0
	movl	$1, -48(%ebp)
	.loc 1 1817 0
	movl	$1, 8(%esp)
	leal	.LC30@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-80(%ebp), %eax
	movl	%eax, (%esp)
	call	string_appendn
	.loc 1 1818 0
	movl	-76(%ebp), %eax
	movl	(%eax), %eax
	leal	2(%eax), %edx
	movl	-76(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 1810 0
	jmp	.L436
.L437:
	.loc 1 1820 0
	movl	-76(%ebp), %eax
	movl	(%eax), %eax
	movzbl	(%eax), %eax
	cmpb	$95, %al
	jne	.L440
	.loc 1 1825 0
	movl	$1, -44(%ebp)
	jmp	.L436
.L440:
	.loc 1 1833 0
	movl	$1, -48(%ebp)
	.loc 1 1836 0
	movl	$1, -44(%ebp)
.L436:
	.loc 1 1843 0
	cmpl	$0, -48(%ebp)
	je	.L442
	.loc 1 1844 0
	movl	-76(%ebp), %eax
	movl	%eax, (%esp)
	call	consume_count
	movl	%eax, -52(%ebp)
	jmp	.L444
.L442:
	.loc 1 1846 0
	movl	-76(%ebp), %eax
	movl	%eax, (%esp)
	call	consume_count_with_underscores
	movl	%eax, -52(%ebp)
.L444:
	.loc 1 1848 0
	cmpl	$-1, -52(%ebp)
	je	.L430
.LBB16:
	.loc 1 1851 0
	movl	-52(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC173@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	sprintf@PLT
	.loc 1 1852 0
	leal	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-80(%ebp), %eax
	movl	%eax, (%esp)
	call	string_append
	.loc 1 1861 0
	cmpl	$9, -52(%ebp)
	jg	.L446
	cmpl	$0, -48(%ebp)
	je	.L448
.L446:
	cmpl	$0, -44(%ebp)
	jne	.L448
	movl	-76(%ebp), %eax
	movl	(%eax), %eax
	movzbl	(%eax), %eax
	cmpb	$95, %al
	jne	.L448
	.loc 1 1864 0
	movl	-76(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	-76(%ebp), %eax
	movl	%edx, (%eax)
.L448:
	.loc 1 1867 0
	movl	$1, -56(%ebp)
.L430:
.LBE16:
.LBE15:
	.loc 1 1871 0
	movl	-56(%ebp), %eax
	.loc 1 1872 0
	movl	-8(%ebp), %edx
	xorl	%gs:20, %edx
	je	.L452
	call	__stack_chk_fail_local
.L452:
	addl	$100, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE27:
	.size	demangle_integral_value, .-demangle_integral_value
	.section	.rodata
.LC174:
	.string	"e"
	.text
	.type	demangle_real_value, @function
demangle_real_value:
.LFB28:
	.loc 1 1881 0
	pushl	%ebp
.LCFI99:
	movl	%esp, %ebp
.LCFI100:
	pushl	%ebx
.LCFI101:
	subl	$20, %esp
.LCFI102:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1882 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movzbl	(%eax), %eax
	cmpb	$69, %al
	jne	.L454
	.loc 1 1883 0
	movl	$6, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_expression
	movl	%eax, -8(%ebp)
	jmp	.L456
.L454:
	.loc 1 1885 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movzbl	(%eax), %eax
	cmpb	$109, %al
	jne	.L459
	.loc 1 1887 0
	movl	$1, 8(%esp)
	leal	.LC30@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	string_appendn
	.loc 1 1888 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 1890 0
	jmp	.L459
.L460:
	.loc 1 1892 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	$1, 8(%esp)
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	string_appendn
	.loc 1 1893 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
.L459:
	.loc 1 1890 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edx
	movl	_sch_istable@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	andl	$4, %eax
	testl	%eax, %eax
	jne	.L460
	.loc 1 1895 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movzbl	(%eax), %eax
	cmpb	$46, %al
	jne	.L462
	.loc 1 1897 0
	movl	$1, 8(%esp)
	leal	.LC164@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	string_appendn
	.loc 1 1898 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 1899 0
	jmp	.L464
.L465:
	.loc 1 1901 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	$1, 8(%esp)
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	string_appendn
	.loc 1 1902 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
.L464:
	.loc 1 1899 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edx
	movl	_sch_istable@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	andl	$4, %eax
	testl	%eax, %eax
	jne	.L465
.L462:
	.loc 1 1905 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movzbl	(%eax), %eax
	cmpb	$101, %al
	jne	.L466
	.loc 1 1907 0
	movl	$1, 8(%esp)
	leal	.LC174@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	string_appendn
	.loc 1 1908 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 1909 0
	jmp	.L468
.L469:
	.loc 1 1911 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	$1, 8(%esp)
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	string_appendn
	.loc 1 1912 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
.L468:
	.loc 1 1909 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edx
	movl	_sch_istable@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	andl	$4, %eax
	testl	%eax, %eax
	jne	.L469
.L466:
	.loc 1 1916 0
	movl	$1, -8(%ebp)
.L456:
	movl	-8(%ebp), %eax
	.loc 1 1917 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE28:
	.size	demangle_real_value, .-demangle_real_value
	.section	.rodata
.LC175:
	.string	"'"
.LC176:
	.string	"false"
.LC177:
	.string	"true"
.LC178:
	.string	"0"
	.text
	.type	demangle_template_value_parm, @function
demangle_template_value_parm:
.LFB29:
	.loc 1 1925 0
	pushl	%ebp
.LCFI103:
	movl	%esp, %ebp
.LCFI104:
	pushl	%ebx
.LCFI105:
	subl	$68, %esp
.LCFI106:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1926 0
	movl	$1, -36(%ebp)
	.loc 1 1928 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movzbl	(%eax), %eax
	cmpb	$89, %al
	jne	.L472
.LBB17:
	.loc 1 1933 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 1934 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	consume_count_with_underscores
	movl	%eax, -32(%ebp)
	.loc 1 1935 0
	cmpl	$-1, -32(%ebp)
	je	.L474
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	testl	%eax, %eax
	je	.L476
	movl	8(%ebp), %eax
	movl	68(%eax), %eax
	cmpl	-32(%ebp), %eax
	jle	.L474
.L476:
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	consume_count_with_underscores
	cmpl	$-1, %eax
	jne	.L478
.L474:
	.loc 1 1938 0
	movl	$-1, -40(%ebp)
	jmp	.L479
.L478:
	.loc 1 1939 0
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	testl	%eax, %eax
	je	.L480
	.loc 1 1940 0
	movl	8(%ebp), %eax
	movl	64(%eax), %edx
	movl	-32(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	string_append
	jmp	.L483
.L480:
	.loc 1 1942 0
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	string_append_template_idx
	jmp	.L483
.L472:
.LBE17:
	.loc 1 1944 0
	cmpl	$3, 20(%ebp)
	jne	.L484
	.loc 1 1945 0
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_integral_value
	movl	%eax, -36(%ebp)
	jmp	.L483
.L484:
	.loc 1 1946 0
	cmpl	$5, 20(%ebp)
	jne	.L486
.LBB18:
	.loc 1 1950 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movzbl	(%eax), %eax
	cmpb	$109, %al
	jne	.L488
	.loc 1 1952 0
	movl	$1, 8(%esp)
	leal	.LC30@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	string_appendn
	.loc 1 1953 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
.L488:
	.loc 1 1955 0
	movl	$1, 8(%esp)
	leal	.LC175@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	string_appendn
	.loc 1 1956 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	consume_count
	movl	%eax, -28(%ebp)
	.loc 1 1957 0
	cmpl	$0, -28(%ebp)
	jg	.L490
	.loc 1 1958 0
	movl	$0, -36(%ebp)
	jmp	.L483
.L490:
	.loc 1 1961 0
	movl	-28(%ebp), %eax
	movb	%al, -6(%ebp)
	.loc 1 1962 0
	movb	$0, -5(%ebp)
	.loc 1 1963 0
	movl	$1, 8(%esp)
	leal	-6(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	string_appendn
	.loc 1 1964 0
	movl	$1, 8(%esp)
	leal	.LC175@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	string_appendn
	jmp	.L483
.L486:
.LBE18:
	.loc 1 1967 0
	cmpl	$4, 20(%ebp)
	jne	.L493
.LBB19:
	.loc 1 1969 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	consume_count
	movl	%eax, -24(%ebp)
	.loc 1 1970 0
	cmpl	$0, -24(%ebp)
	jne	.L495
	.loc 1 1971 0
	movl	$5, 8(%esp)
	leal	.LC176@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	string_appendn
	jmp	.L483
.L495:
	.loc 1 1972 0
	cmpl	$1, -24(%ebp)
	jne	.L498
	.loc 1 1973 0
	movl	$4, 8(%esp)
	leal	.LC177@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	string_appendn
	jmp	.L483
.L498:
	.loc 1 1975 0
	movl	$0, -36(%ebp)
	jmp	.L483
.L493:
.LBE19:
	.loc 1 1977 0
	cmpl	$6, 20(%ebp)
	jne	.L500
	.loc 1 1978 0
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_real_value
	movl	%eax, -36(%ebp)
	jmp	.L483
.L500:
	.loc 1 1979 0
	cmpl	$1, 20(%ebp)
	je	.L502
	cmpl	$2, 20(%ebp)
	jne	.L483
.L502:
	.loc 1 1981 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movzbl	(%eax), %eax
	cmpb	$81, %al
	jne	.L504
	.loc 1 1982 0
	movl	$1, 16(%esp)
	movl	$0, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_qualified
	movl	%eax, -36(%ebp)
	jmp	.L483
.L504:
.LBB20:
	.loc 1 1987 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	consume_count
	movl	%eax, -20(%ebp)
	.loc 1 1988 0
	cmpl	$-1, -20(%ebp)
	jne	.L506
	.loc 1 1989 0
	movl	$-1, -40(%ebp)
	jmp	.L479
.L506:
	.loc 1 1990 0
	cmpl	$0, -20(%ebp)
	jne	.L508
	.loc 1 1991 0
	movl	$1, 8(%esp)
	leal	.LC178@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	string_appendn
	jmp	.L510
.L508:
.LBB21:
	.loc 1 1994 0
	movl	-20(%ebp), %eax
	addl	$1, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, -16(%ebp)
	.loc 1 1995 0
	movl	-20(%ebp), %edx
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	strncpy@PLT
	.loc 1 1996 0
	movl	-20(%ebp), %eax
	addl	-16(%ebp), %eax
	movb	$0, (%eax)
	.loc 1 2002 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	cplus_demangle@PLT
	movl	%eax, -12(%ebp)
	.loc 1 2003 0
	cmpl	$1, 20(%ebp)
	jne	.L511
	.loc 1 2004 0
	movl	$1, 8(%esp)
	leal	.LC78@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	string_appendn
.L511:
	.loc 1 2007 0
	cmpl	$0, -12(%ebp)
	je	.L513
	.loc 1 2009 0
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	string_append
	.loc 1 2010 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	jmp	.L515
.L513:
	.loc 1 2013 0
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	string_append
.L515:
	.loc 1 2014 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
.L510:
.LBE21:
	.loc 1 2016 0
	movl	12(%ebp), %eax
	movl	(%eax), %edx
	movl	-20(%ebp), %eax
	addl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
.L483:
.LBE20:
	.loc 1 2020 0
	movl	-36(%ebp), %eax
	movl	%eax, -40(%ebp)
.L479:
	movl	-40(%ebp), %eax
	.loc 1 2021 0
	addl	$68, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE29:
	.size	demangle_template_value_parm, .-demangle_template_value_parm
	.section	.rodata
.LC179:
	.string	"JArray1Z"
	.text
	.type	demangle_template, @function
demangle_template:
.LFB30:
	.loc 1 2039 0
	pushl	%ebp
.LCFI107:
	movl	%esp, %ebp
.LCFI108:
	pushl	%edi
.LCFI109:
	pushl	%esi
.LCFI110:
	pushl	%ebx
.LCFI111:
	subl	$140, %esp
.LCFI112:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2042 0
	movl	$0, -56(%ebp)
	.loc 1 2043 0
	movl	$0, -52(%ebp)
	.loc 1 2045 0
	movl	$0, -44(%ebp)
	.loc 1 2047 0
	movl	$0, -40(%ebp)
	.loc 1 2049 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 2050 0
	cmpl	$0, 24(%ebp)
	je	.L518
	.loc 1 2052 0
	cmpl	$0, 28(%ebp)
	je	.L520
	.loc 1 2053 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	register_Btype
	movl	%eax, -40(%ebp)
.L520:
	.loc 1 2054 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -48(%ebp)
	.loc 1 2056 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movzbl	(%eax), %eax
	cmpb	$122, %al
	jne	.L522
.LBB22:
	.loc 1 2059 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 2060 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 2062 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	consume_count_with_underscores
	movl	%eax, -36(%ebp)
	.loc 1 2063 0
	cmpl	$-1, -36(%ebp)
	je	.L524
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	testl	%eax, %eax
	je	.L526
	movl	8(%ebp), %eax
	movl	68(%eax), %eax
	cmpl	-36(%ebp), %eax
	jle	.L524
.L526:
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	consume_count_with_underscores
	cmpl	$-1, %eax
	jne	.L528
.L524:
	.loc 1 2066 0
	movl	$0, -116(%ebp)
	jmp	.L529
.L528:
	.loc 1 2068 0
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	testl	%eax, %eax
	je	.L530
	.loc 1 2070 0
	movl	8(%ebp), %eax
	movl	64(%eax), %edx
	movl	-36(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	string_append
	.loc 1 2071 0
	cmpl	$0, 20(%ebp)
	je	.L518
	.loc 1 2072 0
	movl	8(%ebp), %eax
	movl	64(%eax), %edx
	movl	-36(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	string_append
	jmp	.L518
.L530:
	.loc 1 2076 0
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	string_append_template_idx
	.loc 1 2077 0
	cmpl	$0, 20(%ebp)
	je	.L518
	.loc 1 2078 0
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	string_append_template_idx
	jmp	.L518
.L522:
.LBE22:
	.loc 1 2083 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	consume_count
	movl	%eax, -64(%ebp)
	movl	-64(%ebp), %eax
	testl	%eax, %eax
	jle	.L536
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	$-1, %ecx
	movl	%eax, -120(%ebp)
	movl	$0, %eax
	cld
	movl	-120(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	movl	%eax, %edx
	movl	-64(%ebp), %eax
	cmpl	%eax, %edx
	jge	.L538
.L536:
	.loc 1 2086 0
	movl	$0, -116(%ebp)
	jmp	.L529
.L538:
	.loc 1 2088 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L539
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -124(%ebp)
	leal	.LC179@GOTOFF(%ebx), %eax
	movl	%eax, -128(%ebp)
	movl	$8, -132(%ebp)
	cld
	movl	-124(%ebp), %esi
	movl	-128(%ebp), %edi
	movl	-132(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L539
	movl	$1, -112(%ebp)
	jmp	.L542
.L539:
	movl	$0, -112(%ebp)
.L542:
	movl	-112(%ebp), %esi
	movl	%esi, -44(%ebp)
	.loc 1 2090 0
	cmpl	$0, -44(%ebp)
	jne	.L543
	.loc 1 2092 0
	movl	-64(%ebp), %edx
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	string_appendn
.L543:
	.loc 1 2094 0
	cmpl	$0, 20(%ebp)
	je	.L545
	.loc 1 2095 0
	movl	-64(%ebp), %edx
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	string_appendn
.L545:
	.loc 1 2096 0
	movl	12(%ebp), %eax
	movl	(%eax), %edx
	movl	-64(%ebp), %eax
	addl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
.L518:
	.loc 1 2099 0
	cmpl	$0, -44(%ebp)
	jne	.L547
	.loc 1 2100 0
	leal	.LC23@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	string_append
.L547:
	.loc 1 2102 0
	leal	-64(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_count
	testl	%eax, %eax
	jne	.L549
	.loc 1 2104 0
	movl	$0, -116(%ebp)
	jmp	.L529
.L549:
	.loc 1 2106 0
	cmpl	$0, 24(%ebp)
	jne	.L551
	.loc 1 2109 0
	movl	-64(%ebp), %eax
	sall	$2, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 64(%eax)
	.loc 1 2110 0
	movl	-64(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%edx, 68(%eax)
	.loc 1 2111 0
	movl	$0, -60(%ebp)
	jmp	.L553
.L554:
	.loc 1 2112 0
	movl	8(%ebp), %eax
	movl	64(%eax), %edx
	movl	-60(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	$0, (%eax)
	.loc 1 2111 0
	addl	$1, -60(%ebp)
.L553:
	movl	-64(%ebp), %eax
	cmpl	%eax, -60(%ebp)
	jl	.L554
.L551:
	.loc 1 2114 0
	movl	$0, -60(%ebp)
	jmp	.L555
.L556:
	.loc 1 2116 0
	cmpl	$0, -56(%ebp)
	je	.L557
	.loc 1 2118 0
	leal	.LC110@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	string_append
.L557:
	.loc 1 2121 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movzbl	(%eax), %eax
	cmpb	$90, %al
	jne	.L559
	.loc 1 2123 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 2125 0
	leal	-76(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	do_type
	movl	%eax, -52(%ebp)
	.loc 1 2126 0
	cmpl	$0, -52(%ebp)
	je	.L561
	.loc 1 2128 0
	leal	-76(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	string_appends
	.loc 1 2130 0
	cmpl	$0, 24(%ebp)
	jne	.L561
.LBB23:
	.loc 1 2133 0
	movl	-72(%ebp), %eax
	movl	%eax, %edx
	movl	-76(%ebp), %eax
	movl	%edx, %edi
	subl	%eax, %edi
	movl	%edi, %eax
	movl	%eax, -32(%ebp)
	.loc 1 2134 0
	movl	8(%ebp), %eax
	movl	64(%eax), %edx
	movl	-60(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %esi
	movl	-32(%ebp), %eax
	addl	$1, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, (%esi)
	.loc 1 2135 0
	movl	-32(%ebp), %eax
	movl	%eax, -108(%ebp)
	movl	-76(%ebp), %ecx
	movl	8(%ebp), %eax
	movl	64(%eax), %edx
	movl	-60(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, %edi
	movl	%ecx, %esi
	cld
	movl	-108(%ebp), %ecx
	rep
	movsb
	.loc 1 2136 0
	movl	8(%ebp), %eax
	movl	64(%eax), %edx
	movl	-60(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	movl	-32(%ebp), %eax
	leal	(%edx,%eax), %eax
	movb	$0, (%eax)
.L561:
.LBE23:
	.loc 1 2139 0
	leal	-76(%ebp), %eax
	movl	%eax, (%esp)
	call	string_delete
	.loc 1 2140 0
	cmpl	$0, -52(%ebp)
	je	.L564
	.loc 1 2142 0
	jmp	.L566
.L559:
	.loc 1 2146 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movzbl	(%eax), %eax
	cmpb	$122, %al
	jne	.L567
.LBB24:
	.loc 1 2149 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 2150 0
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_template_template_parm
	movl	%eax, -52(%ebp)
	.loc 1 2152 0
	cmpl	$0, -52(%ebp)
	je	.L569
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	consume_count
	movl	%eax, -28(%ebp)
	cmpl	$0, -28(%ebp)
	jle	.L569
	movl	12(%ebp), %eax
	movl	(%eax), %eax
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
	cmpl	-28(%ebp), %eax
	jl	.L569
	.loc 1 2156 0
	leal	.LC166@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	string_append
	.loc 1 2157 0
	movl	12(%ebp), %eax
	movl	(%eax), %edx
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	string_appendn
	.loc 1 2158 0
	cmpl	$0, 24(%ebp)
	jne	.L573
.LBB25:
	.loc 1 2161 0
	movl	-28(%ebp), %eax
	movl	%eax, -24(%ebp)
	.loc 1 2162 0
	movl	8(%ebp), %eax
	movl	64(%eax), %edx
	movl	-60(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %esi
	movl	-24(%ebp), %eax
	addl	$1, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, (%esi)
	.loc 1 2163 0
	movl	-24(%ebp), %eax
	movl	%eax, -104(%ebp)
	movl	12(%ebp), %eax
	movl	(%eax), %ecx
	movl	8(%ebp), %eax
	movl	64(%eax), %edx
	movl	-60(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, %edi
	movl	%ecx, %esi
	cld
	movl	-104(%ebp), %ecx
	rep
	movsb
	.loc 1 2164 0
	movl	8(%ebp), %eax
	movl	64(%eax), %edx
	movl	-60(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	movl	-24(%ebp), %eax
	leal	(%edx,%eax), %eax
	movb	$0, (%eax)
.L573:
.LBE25:
	.loc 1 2166 0
	movl	12(%ebp), %eax
	movl	(%eax), %edx
	movl	-28(%ebp), %eax
	addl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
.L569:
	.loc 1 2168 0
	cmpl	$0, -52(%ebp)
	je	.L564
	.loc 1 2170 0
	jmp	.L566
.L567:
.LBE24:
.LBB26:
	.loc 1 2181 0
	leal	-76(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	do_type
	movl	%eax, -52(%ebp)
	.loc 1 2182 0
	leal	-76(%ebp), %eax
	movl	%eax, (%esp)
	call	string_delete
	.loc 1 2183 0
	cmpl	$0, -52(%ebp)
	je	.L564
	.loc 1 2186 0
	cmpl	$0, 24(%ebp)
	jne	.L577
	.loc 1 2188 0
	leal	-88(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 2189 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	string_init
	jmp	.L579
.L577:
	.loc 1 2192 0
	movl	16(%ebp), %eax
	movl	%eax, -20(%ebp)
.L579:
	.loc 1 2194 0
	movl	-52(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_template_value_parm
	movl	%eax, -52(%ebp)
	.loc 1 2197 0
	cmpl	$0, -52(%ebp)
	jne	.L580
	.loc 1 2199 0
	cmpl	$0, 24(%ebp)
	jne	.L582
	.loc 1 2200 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	string_delete
.L582:
	.loc 1 2201 0
	movl	$0, -52(%ebp)
	.loc 1 2202 0
	jmp	.L564
.L580:
	.loc 1 2205 0
	cmpl	$0, 24(%ebp)
	jne	.L566
.LBB27:
	.loc 1 2207 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	movl	-20(%ebp), %eax
	movl	(%eax), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, -16(%ebp)
	.loc 1 2208 0
	movl	8(%ebp), %eax
	movl	64(%eax), %edx
	movl	-60(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %esi
	movl	-16(%ebp), %eax
	addl	$1, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, (%esi)
	.loc 1 2209 0
	movl	-16(%ebp), %esi
	movl	%esi, -100(%ebp)
	movl	-20(%ebp), %eax
	movl	(%eax), %ecx
	movl	8(%ebp), %eax
	movl	64(%eax), %edx
	movl	-60(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, %edi
	movl	%ecx, %esi
	cld
	movl	-100(%ebp), %ecx
	rep
	movsb
	.loc 1 2210 0
	movl	8(%ebp), %eax
	movl	64(%eax), %edx
	movl	-60(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	movl	-16(%ebp), %eax
	leal	(%edx,%eax), %eax
	movb	$0, (%eax)
	.loc 1 2212 0
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	string_appends
	.loc 1 2213 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	string_delete
.L566:
.LBE27:
.LBE26:
	.loc 1 2216 0
	movl	$1, -56(%ebp)
	.loc 1 2114 0
	addl	$1, -60(%ebp)
.L555:
	movl	-64(%ebp), %eax
	cmpl	%eax, -60(%ebp)
	jl	.L556
.L564:
	.loc 1 2218 0
	cmpl	$0, -44(%ebp)
	je	.L585
	.loc 1 2220 0
	leal	.LC107@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	string_append
	jmp	.L587
.L585:
	.loc 1 2224 0
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	subl	$1, %eax
	movzbl	(%eax), %eax
	cmpb	$62, %al
	jne	.L588
	.loc 1 2225 0
	leal	.LC166@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	string_append
.L588:
	.loc 1 2226 0
	leal	.LC19@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	string_append
.L587:
	.loc 1 2229 0
	cmpl	$0, 24(%ebp)
	je	.L590
	cmpl	$0, 28(%ebp)
	je	.L590
	.loc 1 2230 0
	movl	16(%ebp), %eax
	movl	(%eax), %edx
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	je	.L593
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	%edx, %edi
	subl	%eax, %edi
	movl	%edi, -96(%ebp)
	jmp	.L595
.L593:
	movl	$0, -96(%ebp)
.L595:
	movl	16(%ebp), %eax
	movl	(%eax), %edx
	movl	-40(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-96(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	remember_Btype
.L590:
	.loc 1 2245 0
	movl	-52(%ebp), %ecx
	movl	%ecx, -116(%ebp)
.L529:
	movl	-116(%ebp), %eax
	.loc 1 2246 0
	addl	$140, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE30:
	.size	demangle_template, .-demangle_template
	.section	.rodata
.LC180:
	.string	"__pt__"
.LC181:
	.string	"__tm__"
.LC182:
	.string	"__ps__"
.LC183:
	.string	"__S"
	.text
	.type	arm_pt, @function
arm_pt:
.LFB31:
	.loc 1 2254 0
	pushl	%ebp
.LCFI113:
	movl	%esp, %ebp
.LCFI114:
	pushl	%ebx
.LCFI115:
	subl	$36, %esp
.LCFI116:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2257 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	andl	$2048, %eax
	testl	%eax, %eax
	jne	.L598
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	andl	$4096, %eax
	testl	%eax, %eax
	je	.L600
.L598:
	leal	.LC180@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	strstr@PLT
	movl	%eax, %edx
	movl	20(%ebp), %eax
	movl	%edx, (%eax)
	movl	20(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L600
.LBB28:
	.loc 1 2260 0
	movl	20(%ebp), %eax
	movl	(%eax), %eax
	leal	6(%eax), %edx
	movl	24(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 2261 0
	movl	24(%ebp), %eax
	movl	%eax, (%esp)
	call	consume_count
	movl	%eax, -16(%ebp)
	.loc 1 2262 0
	cmpl	$-1, -16(%ebp)
	jne	.L602
	.loc 1 2263 0
	movl	$0, -24(%ebp)
	jmp	.L604
.L602:
	.loc 1 2264 0
	movl	24(%ebp), %eax
	movl	(%eax), %edx
	movl	-16(%ebp), %eax
	addl	%eax, %edx
	movl	16(%ebp), %eax
	addl	12(%ebp), %eax
	cmpl	%eax, %edx
	jne	.L600
	movl	24(%ebp), %eax
	movl	(%eax), %eax
	movzbl	(%eax), %eax
	cmpb	$95, %al
	jne	.L600
	.loc 1 2266 0
	movl	24(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	24(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 2267 0
	movl	$1, -24(%ebp)
	jmp	.L604
.L600:
.LBE28:
	.loc 1 2270 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	andl	$256, %eax
	testl	%eax, %eax
	jne	.L607
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L609
.L607:
	.loc 1 2272 0
	leal	.LC181@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	strstr@PLT
	movl	%eax, %edx
	movl	20(%ebp), %eax
	movl	%edx, (%eax)
	movl	20(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L610
	leal	.LC182@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	strstr@PLT
	movl	%eax, %edx
	movl	20(%ebp), %eax
	movl	%edx, (%eax)
	movl	20(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L610
	leal	.LC180@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	strstr@PLT
	movl	%eax, %edx
	movl	20(%ebp), %eax
	movl	%edx, (%eax)
	movl	20(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L613
.L610:
.LBB29:
	.loc 1 2277 0
	movl	20(%ebp), %eax
	movl	(%eax), %eax
	leal	6(%eax), %edx
	movl	24(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 2278 0
	movl	24(%ebp), %eax
	movl	%eax, (%esp)
	call	consume_count
	movl	%eax, -12(%ebp)
	.loc 1 2279 0
	cmpl	$-1, -12(%ebp)
	jne	.L614
	.loc 1 2280 0
	movl	$0, -24(%ebp)
	jmp	.L604
.L614:
	.loc 1 2281 0
	movl	24(%ebp), %eax
	movl	(%eax), %edx
	movl	-12(%ebp), %eax
	addl	%eax, %edx
	movl	16(%ebp), %eax
	addl	12(%ebp), %eax
	cmpl	%eax, %edx
	jne	.L609
	movl	24(%ebp), %eax
	movl	(%eax), %eax
	movzbl	(%eax), %eax
	cmpb	$95, %al
	jne	.L609
	.loc 1 2283 0
	movl	24(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	24(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 2284 0
	movl	$1, -24(%ebp)
	jmp	.L604
.L613:
.LBE29:
	.loc 1 2287 0
	leal	.LC183@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	strstr@PLT
	movl	%eax, %edx
	movl	20(%ebp), %eax
	movl	%edx, (%eax)
	movl	20(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L609
.LBB30:
	.loc 1 2290 0
	movl	20(%ebp), %eax
	movl	(%eax), %eax
	leal	3(%eax), %edx
	movl	24(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 2291 0
	movl	24(%ebp), %eax
	movl	%eax, (%esp)
	call	consume_count
	movl	%eax, -8(%ebp)
	.loc 1 2292 0
	cmpl	$-1, -8(%ebp)
	jne	.L620
	.loc 1 2293 0
	movl	$0, -24(%ebp)
	jmp	.L604
.L620:
	.loc 1 2294 0
	movl	24(%ebp), %eax
	movl	(%eax), %edx
	movl	-8(%ebp), %eax
	addl	%eax, %edx
	movl	16(%ebp), %eax
	addl	12(%ebp), %eax
	cmpl	%eax, %edx
	jne	.L609
	movl	24(%ebp), %eax
	movl	(%eax), %eax
	movzbl	(%eax), %eax
	cmpb	$95, %al
	jne	.L609
	.loc 1 2296 0
	movl	24(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	24(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 2297 0
	movl	$1, -24(%ebp)
	jmp	.L604
.L609:
.LBE30:
	.loc 1 2302 0
	movl	$0, -24(%ebp)
.L604:
	movl	-24(%ebp), %eax
	.loc 1 2303 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE31:
	.size	arm_pt, .-arm_pt
	.section	.rodata
.LC184:
	.string	","
.LC185:
	.string	"_GLOBAL_"
.LC186:
	.string	"{anonymous}"
	.text
	.type	demangle_arm_hp_template, @function
demangle_arm_hp_template:
.LFB32:
	.loc 1 2311 0
	pushl	%ebp
.LCFI117:
	movl	%esp, %ebp
.LCFI118:
	pushl	%edi
.LCFI119:
	pushl	%esi
.LCFI120:
	pushl	%ebx
.LCFI121:
	subl	$92, %esp
.LCFI122:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2314 0
	movl	12(%ebp), %eax
	movl	(%eax), %edx
	movl	16(%ebp), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 2319 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	andl	$4096, %eax
	testl	%eax, %eax
	je	.L626
	movl	12(%ebp), %eax
	movl	(%eax), %edx
	movl	16(%ebp), %eax
	leal	(%edx,%eax), %eax
	movzbl	(%eax), %eax
	cmpb	$88, %al
	jne	.L626
.LBB31:
	.loc 1 2321 0
	movl	$0, -20(%ebp)
	.loc 1 2325 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	$60, 4(%esp)
	movl	%eax, (%esp)
	call	strchr@PLT
	movl	%eax, -20(%ebp)
	.loc 1 2326 0
	cmpl	$0, -20(%ebp)
	je	.L629
	movl	-20(%ebp), %edx
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	cmpl	16(%ebp), %eax
	jge	.L629
	.loc 1 2327 0
	movl	-20(%ebp), %edx
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	subl	%eax, %edx
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	string_appendn
	.loc 1 2326 0
	jmp	.L632
.L629:
	.loc 1 2329 0
	movl	12(%ebp), %eax
	movl	(%eax), %edx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	string_appendn
.L632:
	.loc 1 2330 0
	movl	12(%ebp), %eax
	movl	(%eax), %edx
	movl	16(%ebp), %eax
	leal	(%edx,%eax), %eax
	leal	1(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 2331 0
	leal	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	string_init
	.loc 1 2332 0
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	cmpl	$-1, %eax
	jne	.L633
	.loc 1 2333 0
	movl	20(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	movl	20(%ebp), %eax
	movl	(%eax), %eax
	subl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 52(%eax)
.L633:
	.loc 1 2334 0
	leal	.LC23@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	string_append
.L635:
	.loc 1 2337 0
	leal	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	string_clear
	.loc 1 2338 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -68(%ebp)
	cmpl	$83, -68(%ebp)
	je	.L638
	cmpl	$83, -68(%ebp)
	jg	.L640
	cmpl	$65, -68(%ebp)
	je	.L637
	jmp	.L641
.L640:
	cmpl	$84, -68(%ebp)
	je	.L639
	cmpl	$85, -68(%ebp)
	je	.L638
	jmp	.L641
.L639:
	.loc 1 2342 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 2343 0
	leal	-44(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	do_type
	testl	%eax, %eax
	je	.L641
	.loc 1 2345 0
	jmp	.L643
.L638:
	.loc 1 2350 0
	leal	-44(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	do_hpacc_template_const_value
	testl	%eax, %eax
	je	.L641
	.loc 1 2352 0
	jmp	.L643
.L637:
	.loc 1 2356 0
	leal	-44(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	do_hpacc_template_literal
	testl	%eax, %eax
	je	.L641
.L643:
	.loc 1 2366 0
	leal	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	string_appends
	.loc 1 2370 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L641
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movzbl	(%eax), %eax
	cmpb	$95, %al
	je	.L641
	.loc 1 2373 0
	leal	.LC184@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	string_append
	.loc 1 2374 0
	jmp	.L635
.L641:
	.loc 1 2376 0
	leal	.LC19@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	string_append
	.loc 1 2377 0
	leal	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	string_delete
	.loc 1 2378 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movzbl	(%eax), %eax
	cmpb	$95, %al
	jne	.L678
	.loc 1 2379 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 2380 0
	jmp	.L678
.L626:
.LBE31:
	.loc 1 2383 0
	movl	12(%ebp), %eax
	movl	(%eax), %edx
	leal	-32(%ebp), %eax
	movl	%eax, 16(%esp)
	leal	-28(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	arm_pt
	testl	%eax, %eax
	je	.L651
.LBB32:
	.loc 1 2387 0
	leal	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	string_init
	.loc 1 2388 0
	movl	-28(%ebp), %eax
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	subl	%eax, %edx
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	string_appendn
	.loc 1 2389 0
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	cmpl	$-1, %eax
	jne	.L653
	.loc 1 2390 0
	movl	20(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	movl	20(%ebp), %eax
	movl	(%eax), %eax
	subl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 52(%eax)
.L653:
	.loc 1 2391 0
	leal	.LC23@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	string_append
	.loc 1 2393 0
	jmp	.L655
.L656:
	.loc 1 2394 0
	leal	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	string_clear
	.loc 1 2397 0
	movl	-32(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -64(%ebp)
	cmpl	$76, -64(%ebp)
	je	.L658
	cmpl	$88, -64(%ebp)
	je	.L659
	jmp	.L657
.L659:
	.loc 1 2404 0
	movl	-32(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -32(%ebp)
	.loc 1 2405 0
	leal	-56(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	do_type
	testl	%eax, %eax
	je	.L660
	.loc 1 2407 0
	leal	.LC171@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	string_append
	.loc 1 2408 0
	leal	-56(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	string_appends
	.loc 1 2409 0
	leal	.LC172@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	string_append
	.loc 1 2410 0
	movl	-32(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$76, %al
	jne	.L660
	.loc 1 2412 0
	movl	-32(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -32(%ebp)
	.loc 1 2414 0
	leal	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	snarf_numeric_literal
	testl	%eax, %eax
	je	.L660
	.loc 1 2416 0
	jmp	.L664
.L658:
	.loc 1 2420 0
	movl	-32(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -32(%ebp)
	.loc 1 2421 0
	leal	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	snarf_numeric_literal
	testl	%eax, %eax
	je	.L660
	.loc 1 2423 0
	jmp	.L664
.L657:
.LBB33:
	.loc 1 2427 0
	movl	-32(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 2428 0
	leal	-44(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	do_type
	testl	%eax, %eax
	je	.L660
	.loc 1 2432 0
	movl	-32(%ebp), %eax
	cmpl	-16(%ebp), %eax
	je	.L678
.L664:
.LBE33:
	.loc 1 2436 0
	leal	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	string_appends
	.loc 1 2437 0
	leal	.LC184@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	string_append
.L655:
	.loc 1 2393 0
	movl	-32(%ebp), %eax
	cmpl	-24(%ebp), %eax
	jb	.L656
.L660:
	.loc 1 2440 0
	leal	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	string_delete
	.loc 1 2441 0
	movl	-32(%ebp), %eax
	cmpl	-24(%ebp), %eax
	jb	.L667
	.loc 1 2442 0
	movl	20(%ebp), %eax
	movl	4(%eax), %eax
	leal	-1(%eax), %edx
	movl	20(%ebp), %eax
	movl	%edx, 4(%eax)
.L667:
	.loc 1 2443 0
	leal	.LC19@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	string_append
	jmp	.L669
.L651:
.LBE32:
	.loc 1 2445 0
	cmpl	$10, 16(%ebp)
	jle	.L670
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -72(%ebp)
	leal	.LC185@GOTOFF(%ebx), %esi
	movl	%esi, -76(%ebp)
	movl	$8, -80(%ebp)
	cld
	movl	-72(%ebp), %esi
	movl	-76(%ebp), %edi
	movl	-80(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L670
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	addl	$9, %eax
	movzbl	(%eax), %eax
	cmpb	$78, %al
	jne	.L670
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	addl	$8, %eax
	movzbl	(%eax), %edx
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	addl	$10, %eax
	movzbl	(%eax), %eax
	cmpb	%al, %dl
	jne	.L670
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	addl	$8, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, 4(%esp)
	leal	cplus_markers@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	strchr@PLT
	testl	%eax, %eax
	je	.L670
	.loc 1 2451 0
	leal	.LC186@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	string_append
	.loc 1 2445 0
	jmp	.L669
.L670:
	.loc 1 2455 0
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	cmpl	$-1, %eax
	jne	.L676
	.loc 1 2456 0
	movl	8(%ebp), %eax
	movl	$0, 52(%eax)
.L676:
	.loc 1 2457 0
	movl	12(%ebp), %eax
	movl	(%eax), %edx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	string_appendn
.L669:
	.loc 1 2459 0
	movl	12(%ebp), %eax
	movl	(%eax), %edx
	movl	16(%ebp), %eax
	addl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
.L678:
	.loc 1 2460 0
	addl	$92, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE32:
	.size	demangle_arm_hp_template, .-demangle_arm_hp_template
	.type	demangle_class_name, @function
demangle_class_name:
.LFB33:
	.loc 1 2471 0
	pushl	%ebp
.LCFI123:
	movl	%esp, %ebp
.LCFI124:
	pushl	%edi
.LCFI125:
	subl	$52, %esp
.LCFI126:
	.loc 1 2473 0
	movl	$0, -8(%ebp)
	.loc 1 2475 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	consume_count
	movl	%eax, -12(%ebp)
	.loc 1 2476 0
	cmpl	$-1, -12(%ebp)
	jne	.L680
	.loc 1 2477 0
	movl	$0, -24(%ebp)
	jmp	.L682
.L680:
	.loc 1 2478 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
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
	cmpl	-12(%ebp), %eax
	jl	.L683
	.loc 1 2480 0
	movl	16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_arm_hp_template
	.loc 1 2481 0
	movl	$1, -8(%ebp)
.L683:
	.loc 1 2484 0
	movl	-8(%ebp), %eax
	movl	%eax, -24(%ebp)
.L682:
	movl	-24(%ebp), %eax
	.loc 1 2485 0
	addl	$52, %esp
	popl	%edi
	popl	%ebp
	ret
.LFE33:
	.size	demangle_class_name, .-demangle_class_name
	.type	demangle_class, @function
demangle_class:
.LFB34:
	.loc 1 2527 0
	pushl	%ebp
.LCFI127:
	movl	%esp, %ebp
.LCFI128:
	pushl	%ebx
.LCFI129:
	subl	$68, %esp
.LCFI130:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2528 0
	movl	$0, -16(%ebp)
	.loc 1 2531 0
	movl	$0, -8(%ebp)
	.loc 1 2533 0
	leal	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	string_init
	.loc 1 2534 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	register_Btype
	movl	%eax, -12(%ebp)
	.loc 1 2535 0
	leal	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_class_name
	testl	%eax, %eax
	je	.L687
	.loc 1 2537 0
	movl	-24(%ebp), %eax
	movl	%eax, -8(%ebp)
	.loc 1 2538 0
	movl	8(%ebp), %eax
	movl	40(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L689
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L691
.L689:
	.loc 1 2541 0
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	testl	%eax, %eax
	je	.L692
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	cmpl	$-1, %eax
	je	.L692
	.loc 1 2543 0
	movl	-28(%ebp), %edx
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -24(%ebp)
.L692:
	.loc 1 2545 0
	leal	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	string_prepends
	.loc 1 2546 0
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L695
	.loc 1 2548 0
	leal	.LC83@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	string_prepend
	.loc 1 2549 0
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	leal	-1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 44(%eax)
	jmp	.L691
.L695:
	.loc 1 2553 0
	movl	8(%ebp), %eax
	movl	40(%eax), %eax
	leal	-1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 40(%eax)
.L691:
	.loc 1 2556 0
	movl	-8(%ebp), %eax
	movl	%eax, -24(%ebp)
	.loc 1 2557 0
	movl	-28(%ebp), %edx
	movl	-24(%ebp), %eax
	cmpl	%eax, %edx
	je	.L697
	movl	-24(%ebp), %eax
	movl	%eax, %edx
	movl	-28(%ebp), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, -48(%ebp)
	jmp	.L699
.L697:
	movl	$0, -48(%ebp)
.L699:
	movl	-28(%ebp), %eax
	movl	-48(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	remember_Ktype
	.loc 1 2558 0
	movl	-28(%ebp), %edx
	movl	-24(%ebp), %eax
	cmpl	%eax, %edx
	je	.L700
	movl	-24(%ebp), %eax
	movl	%eax, %edx
	movl	-28(%ebp), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, -44(%ebp)
	jmp	.L702
.L700:
	movl	$0, -44(%ebp)
.L702:
	movl	-28(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	remember_Btype
	.loc 1 2559 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L703
	leal	.LC164@GOTOFF(%ebx), %edx
	movl	%edx, -40(%ebp)
	jmp	.L705
.L703:
	leal	.LC165@GOTOFF(%ebx), %ecx
	movl	%ecx, -40(%ebp)
.L705:
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	string_prepend
	.loc 1 2560 0
	leal	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	string_prepends
	.loc 1 2561 0
	movl	$1, -16(%ebp)
.L687:
	.loc 1 2563 0
	leal	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	string_delete
	.loc 1 2564 0
	movl	-16(%ebp), %eax
	.loc 1 2565 0
	addl	$68, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE34:
	.size	demangle_class, .-demangle_class
	.section	.rodata
.LC187:
	.string	"__"
	.text
	.type	iterate_demangle_function, @function
iterate_demangle_function:
.LFB35:
	.loc 1 2583 0
	pushl	%ebp
.LCFI131:
	movl	%esp, %ebp
.LCFI132:
	pushl	%ebx
.LCFI133:
	subl	$132, %esp
.LCFI134:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2584 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 2585 0
	movl	$0, -8(%ebp)
	.loc 1 2589 0
	movl	20(%ebp), %eax
	addl	$2, %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L708
	.loc 1 2590 0
	movl	$0, -120(%ebp)
	jmp	.L710
.L708:
	.loc 1 2594 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	andl	$2048, %eax
	testl	%eax, %eax
	jne	.L711
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	andl	$1024, %eax
	testl	%eax, %eax
	jne	.L711
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	andl	$4096, %eax
	testl	%eax, %eax
	jne	.L711
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	jne	.L711
	movl	20(%ebp), %eax
	addl	$2, %eax
	leal	.LC187@GOTOFF(%ebx), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	strstr@PLT
	testl	%eax, %eax
	jne	.L716
.L711:
	.loc 1 2597 0
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_function_name
	.loc 1 2598 0
	movl	$1, -120(%ebp)
	jmp	.L710
.L716:
	.loc 1 2603 0
	leal	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	string_init
	.loc 1 2604 0
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	string_appends
	.loc 1 2605 0
	leal	-108(%ebp), %eax
	movl	%eax, %edx
	movl	$84, %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	%edx, (%esp)
	call	memset@PLT
	.loc 1 2606 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-108(%ebp), %eax
	movl	%eax, (%esp)
	call	work_stuff_copy_to_from
	.loc 1 2614 0
	jmp	.L717
.L718:
	.loc 1 2616 0
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_function_name
	.loc 1 2617 0
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_signature
	movl	%eax, -8(%ebp)
	.loc 1 2618 0
	cmpl	$0, -8(%ebp)
	jne	.L719
	.loc 1 2622 0
	movl	12(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 2623 0
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	string_clear
	.loc 1 2624 0
	leal	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	string_appends
	.loc 1 2625 0
	leal	-108(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	work_stuff_copy_to_from
	.loc 1 2628 0
	addl	$2, 20(%ebp)
	.loc 1 2631 0
	jmp	.L721
.L722:
	.loc 1 2632 0
	addl	$1, 20(%ebp)
.L721:
	.loc 1 2631 0
	movl	20(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L726
	movl	20(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$95, %al
	jne	.L722
	movl	20(%ebp), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	cmpb	$95, %al
	jne	.L722
	.loc 1 2635 0
	jmp	.L726
.L727:
	.loc 1 2636 0
	addl	$1, 20(%ebp)
.L726:
	.loc 1 2635 0
	movl	20(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L728
	movl	20(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$95, %al
	je	.L727
.L728:
	.loc 1 2637 0
	subl	$2, 20(%ebp)
.L717:
	.loc 1 2614 0
	movl	20(%ebp), %eax
	addl	$2, %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L718
.L719:
	.loc 1 2641 0
	leal	-108(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_work_stuff
	.loc 1 2642 0
	leal	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	string_delete
	.loc 1 2644 0
	movl	-8(%ebp), %eax
	movl	%eax, -120(%ebp)
.L710:
	movl	-120(%ebp), %eax
	.loc 1 2645 0
	addl	$132, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE35:
	.size	iterate_demangle_function, .-iterate_demangle_function
	.section	.rodata
.LC188:
	.string	"_imp__"
.LC189:
	.string	"__imp_"
.LC190:
	.string	"__std__"
.LC191:
	.string	"__sti__"
.LC192:
	.string	"_"
	.text
	.type	demangle_prefix, @function
demangle_prefix:
.LFB36:
	.loc 1 2685 0
	pushl	%ebp
.LCFI135:
	movl	%esp, %ebp
.LCFI136:
	pushl	%edi
.LCFI137:
	pushl	%esi
.LCFI138:
	pushl	%ebx
.LCFI139:
	subl	$124, %esp
.LCFI140:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2686 0
	movl	$1, -28(%ebp)
	.loc 1 2690 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	$-1, %ecx
	movl	%eax, -36(%ebp)
	movl	$0, %eax
	cld
	movl	-36(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	cmpl	$6, %eax
	jbe	.L732
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -40(%ebp)
	leal	.LC188@GOTOFF(%ebx), %eax
	movl	%eax, -44(%ebp)
	movl	$6, -48(%ebp)
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
	je	.L734
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -52(%ebp)
	leal	.LC189@GOTOFF(%ebx), %esi
	movl	%esi, -56(%ebp)
	movl	$6, -60(%ebp)
	cld
	movl	-52(%ebp), %esi
	movl	-56(%ebp), %edi
	movl	-60(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L732
.L734:
	.loc 1 2697 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	leal	6(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 2698 0
	movl	8(%ebp), %eax
	movl	$1, 60(%eax)
	.loc 1 2690 0
	jmp	.L736
.L732:
	.loc 1 2700 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
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
	cmpl	$10, %eax
	jbe	.L737
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -68(%ebp)
	leal	.LC185@GOTOFF(%ebx), %eax
	movl	%eax, -72(%ebp)
	movl	$8, -76(%ebp)
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
	jne	.L737
.LBB34:
	.loc 1 2702 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	addl	$8, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, 4(%esp)
	leal	cplus_markers@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	strchr@PLT
	movl	%eax, -16(%ebp)
	.loc 1 2703 0
	cmpl	$0, -16(%ebp)
	je	.L736
	movl	-16(%ebp), %eax
	movzbl	(%eax), %edx
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	addl	$10, %eax
	movzbl	(%eax), %eax
	cmpb	%al, %dl
	jne	.L736
	.loc 1 2705 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	addl	$9, %eax
	movzbl	(%eax), %eax
	cmpb	$68, %al
	jne	.L743
	.loc 1 2708 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	leal	11(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 2709 0
	movl	8(%ebp), %eax
	movl	$2, 44(%eax)
	.loc 1 2710 0
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	gnu_special
	testl	%eax, %eax
	je	.L736
	.loc 1 2711 0
	movl	-28(%ebp), %esi
	movl	%esi, -32(%ebp)
	jmp	.L747
.L743:
	.loc 1 2713 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	addl	$9, %eax
	movzbl	(%eax), %eax
	cmpb	$73, %al
	jne	.L736
	.loc 1 2716 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	leal	11(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 2717 0
	movl	8(%ebp), %eax
	movl	$2, 40(%eax)
	.loc 1 2718 0
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	gnu_special
	testl	%eax, %eax
	je	.L736
	.loc 1 2719 0
	movl	-28(%ebp), %edi
	movl	%edi, -32(%ebp)
	jmp	.L747
.L737:
.LBE34:
	.loc 1 2723 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	andl	$2048, %eax
	testl	%eax, %eax
	jne	.L750
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	andl	$4096, %eax
	testl	%eax, %eax
	jne	.L750
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L753
.L750:
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -80(%ebp)
	leal	.LC190@GOTOFF(%ebx), %eax
	movl	%eax, -84(%ebp)
	movl	$7, -88(%ebp)
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
	jne	.L753
	.loc 1 2726 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	leal	7(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 2727 0
	movl	8(%ebp), %eax
	movl	$2, 44(%eax)
	.loc 1 2723 0
	jmp	.L736
.L753:
	.loc 1 2729 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	andl	$2048, %eax
	testl	%eax, %eax
	jne	.L755
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	andl	$4096, %eax
	testl	%eax, %eax
	jne	.L755
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L736
.L755:
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -92(%ebp)
	leal	.LC191@GOTOFF(%ebx), %esi
	movl	%esi, -96(%ebp)
	movl	$7, -100(%ebp)
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
	jne	.L736
	.loc 1 2732 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	leal	7(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 2733 0
	movl	8(%ebp), %eax
	movl	$2, 40(%eax)
.L736:
	.loc 1 2741 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
.L759:
	.loc 1 2744 0
	movl	$95, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	strchr@PLT
	movl	%eax, -24(%ebp)
	.loc 1 2745 0
	cmpl	$0, -24(%ebp)
	je	.L760
	addl	$1, -24(%ebp)
	movl	-24(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$95, %al
	jne	.L759
.L760:
	.loc 1 2747 0
	cmpl	$0, -24(%ebp)
	je	.L762
	subl	$1, -24(%ebp)
.L762:
	.loc 1 2750 0
	cmpl	$0, -24(%ebp)
	je	.L764
	.loc 1 2754 0
	leal	.LC192@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	strspn@PLT
	movl	%eax, -20(%ebp)
	.loc 1 2755 0
	cmpl	$2, -20(%ebp)
	jle	.L764
	.loc 1 2757 0
	movl	-20(%ebp), %eax
	addl	-24(%ebp), %eax
	subl	$2, %eax
	movl	%eax, -24(%ebp)
.L764:
	.loc 1 2761 0
	cmpl	$0, -24(%ebp)
	jne	.L767
	.loc 1 2763 0
	movl	$0, -28(%ebp)
	jmp	.L769
.L767:
	.loc 1 2765 0
	movl	8(%ebp), %eax
	movl	48(%eax), %eax
	testl	%eax, %eax
	je	.L770
	.loc 1 2767 0
	movl	-24(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edx
	movl	_sch_istable@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	andl	$4, %eax
	testl	%eax, %eax
	jne	.L769
	movl	-24(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$116, %al
	je	.L769
	.loc 1 2769 0
	movl	$0, -28(%ebp)
	jmp	.L769
.L770:
	.loc 1 2772 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	cmpl	-24(%ebp), %eax
	jne	.L775
	movl	-24(%ebp), %eax
	addl	$2, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edx
	movl	_sch_istable@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	andl	$4, %eax
	testl	%eax, %eax
	jne	.L777
	movl	-24(%ebp), %eax
	addl	$2, %eax
	movzbl	(%eax), %eax
	cmpb	$81, %al
	je	.L777
	movl	-24(%ebp), %eax
	addl	$2, %eax
	movzbl	(%eax), %eax
	cmpb	$116, %al
	je	.L777
	movl	-24(%ebp), %eax
	addl	$2, %eax
	movzbl	(%eax), %eax
	cmpb	$75, %al
	je	.L777
	movl	-24(%ebp), %eax
	addl	$2, %eax
	movzbl	(%eax), %eax
	cmpb	$72, %al
	jne	.L775
.L777:
	.loc 1 2779 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	andl	$1024, %eax
	testl	%eax, %eax
	jne	.L782
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	andl	$2048, %eax
	testl	%eax, %eax
	jne	.L782
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	andl	$4096, %eax
	testl	%eax, %eax
	je	.L785
.L782:
	movl	-24(%ebp), %eax
	addl	$2, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edx
	movl	_sch_istable@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L785
	.loc 1 2782 0
	movl	-24(%ebp), %edx
	addl	$2, %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 2783 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	consume_count
	.loc 1 2784 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	string_append
	.loc 1 2785 0
	movl	12(%ebp), %eax
	movl	(%eax), %edx
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	$-1, %ecx
	movl	%eax, -104(%ebp)
	movl	$0, %eax
	cld
	movl	-104(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	addl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 2786 0
	movl	$1, -28(%ebp)
	.loc 1 2779 0
	jmp	.L769
.L785:
	.loc 1 2794 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	andl	$1024, %eax
	testl	%eax, %eax
	jne	.L788
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	andl	$2048, %eax
	testl	%eax, %eax
	jne	.L788
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	andl	$4096, %eax
	testl	%eax, %eax
	jne	.L788
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	jne	.L788
	.loc 1 2795 0
	movl	8(%ebp), %eax
	movl	40(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 40(%eax)
.L788:
	.loc 1 2796 0
	movl	-24(%ebp), %edx
	addl	$2, %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 2772 0
	jmp	.L769
.L775:
	.loc 1 2799 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	andl	$2048, %eax
	testl	%eax, %eax
	je	.L793
	movl	-24(%ebp), %eax
	addl	$2, %eax
	movzbl	(%eax), %eax
	cmpb	$112, %al
	jne	.L793
	movl	-24(%ebp), %eax
	addl	$3, %eax
	movzbl	(%eax), %eax
	cmpb	$116, %al
	jne	.L793
	.loc 1 2802 0
	movl	$1, -28(%ebp)
	.loc 1 2805 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	$-1, %ecx
	movl	%eax, -108(%ebp)
	movl	$0, %eax
	cld
	movl	-108(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	movl	%eax, %edx
	movl	16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_arm_hp_template
	.loc 1 2799 0
	jmp	.L769
.L793:
	.loc 1 2807 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L797
	movl	-24(%ebp), %eax
	addl	$2, %eax
	movzbl	(%eax), %eax
	cmpb	$116, %al
	jne	.L799
	movl	-24(%ebp), %eax
	addl	$3, %eax
	movzbl	(%eax), %eax
	cmpb	$109, %al
	je	.L801
.L799:
	movl	-24(%ebp), %eax
	addl	$2, %eax
	movzbl	(%eax), %eax
	cmpb	$112, %al
	jne	.L802
	movl	-24(%ebp), %eax
	addl	$3, %eax
	movzbl	(%eax), %eax
	cmpb	$115, %al
	je	.L801
.L802:
	movl	-24(%ebp), %eax
	addl	$2, %eax
	movzbl	(%eax), %eax
	cmpb	$112, %al
	jne	.L797
	movl	-24(%ebp), %eax
	addl	$3, %eax
	movzbl	(%eax), %eax
	cmpb	$116, %al
	jne	.L797
.L801:
	.loc 1 2812 0
	movl	$1, -28(%ebp)
	.loc 1 2815 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	$-1, %ecx
	movl	%eax, -112(%ebp)
	movl	$0, %eax
	cld
	movl	-112(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	movl	%eax, %edx
	movl	16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_arm_hp_template
	.loc 1 2807 0
	jmp	.L769
.L797:
	.loc 1 2817 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	cmpl	-24(%ebp), %eax
	jne	.L805
	movl	-24(%ebp), %eax
	addl	$2, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edx
	movl	_sch_istable@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	andl	$4, %eax
	testl	%eax, %eax
	jne	.L805
	movl	-24(%ebp), %eax
	addl	$2, %eax
	movzbl	(%eax), %eax
	cmpb	$116, %al
	je	.L805
	.loc 1 2823 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	andl	$2048, %eax
	testl	%eax, %eax
	jne	.L809
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	andl	$1024, %eax
	testl	%eax, %eax
	jne	.L809
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	andl	$4096, %eax
	testl	%eax, %eax
	jne	.L809
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L815
.L809:
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	arm_special
	testl	%eax, %eax
	jne	.L769
	.loc 1 2826 0
	jmp	.L815
.L816:
	.loc 1 2828 0
	addl	$1, -24(%ebp)
.L815:
	.loc 1 2826 0
	movl	-24(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$95, %al
	je	.L816
	.loc 1 2830 0
	leal	.LC187@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	strstr@PLT
	movl	%eax, -24(%ebp)
	cmpl	$0, -24(%ebp)
	je	.L818
	movl	-24(%ebp), %eax
	addl	$2, %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L820
.L818:
	.loc 1 2834 0
	movl	$0, -28(%ebp)
	.loc 1 2830 0
	jmp	.L769
.L820:
	.loc 1 2837 0
	movl	-24(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	iterate_demangle_function
	movl	%eax, -32(%ebp)
	jmp	.L747
.L805:
	.loc 1 2840 0
	movl	-24(%ebp), %eax
	addl	$2, %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L821
	.loc 1 2846 0
	movl	-24(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	iterate_demangle_function
	movl	%eax, -32(%ebp)
	jmp	.L747
.L821:
	.loc 1 2851 0
	movl	$0, -28(%ebp)
.L769:
	.loc 1 2854 0
	cmpl	$0, -28(%ebp)
	jne	.L823
	movl	8(%ebp), %eax
	movl	40(%eax), %eax
	cmpl	$2, %eax
	je	.L825
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	$2, %eax
	jne	.L823
.L825:
	.loc 1 2856 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	string_append
	.loc 1 2857 0
	movl	12(%ebp), %eax
	movl	(%eax), %edx
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	$-1, %ecx
	movl	%eax, -116(%ebp)
	movl	$0, %eax
	cld
	movl	-116(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	addl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 2858 0
	movl	$1, -28(%ebp)
.L823:
	.loc 1 2860 0
	movl	-28(%ebp), %eax
	movl	%eax, -32(%ebp)
.L747:
	movl	-32(%ebp), %eax
	.loc 1 2861 0
	addl	$124, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE36:
	.size	demangle_prefix, .-demangle_prefix
	.section	.rodata
.LC193:
	.string	" virtual table"
.LC194:
	.string	"0123456789Qt"
.LC195:
	.string	"__thunk_"
	.align 4
.LC196:
	.string	"virtual function thunk (delta:%d) for "
.LC197:
	.string	"__t"
.LC198:
	.string	" type_info node"
.LC199:
	.string	" type_info function"
	.text
	.type	gnu_special, @function
gnu_special:
.LFB37:
	.loc 1 2896 0
	pushl	%ebp
.LCFI141:
	movl	%esp, %ebp
.LCFI142:
	pushl	%edi
.LCFI143:
	pushl	%esi
.LCFI144:
	pushl	%ebx
.LCFI145:
	subl	$204, %esp
.LCFI146:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	movl	%eax, -96(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -100(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, -104(%ebp)
	.loc 1 2896 0
	movl	%gs:20, %eax
	movl	%eax, -16(%ebp)
	xorl	%eax, %eax
	.loc 1 2898 0
	movl	$1, -84(%ebp)
	.loc 1 2901 0
	movl	-100(%ebp), %eax
	movl	(%eax), %eax
	movzbl	(%eax), %eax
	cmpb	$95, %al
	jne	.L829
	movl	-100(%ebp), %eax
	movl	(%eax), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, 4(%esp)
	leal	cplus_markers@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	strchr@PLT
	testl	%eax, %eax
	je	.L829
	movl	-100(%ebp), %eax
	movl	(%eax), %eax
	addl	$2, %eax
	movzbl	(%eax), %eax
	cmpb	$95, %al
	jne	.L829
	.loc 1 2906 0
	movl	-100(%ebp), %eax
	movl	(%eax), %eax
	leal	3(%eax), %edx
	movl	-100(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 2907 0
	movl	-96(%ebp), %eax
	movl	44(%eax), %eax
	leal	1(%eax), %edx
	movl	-96(%ebp), %eax
	movl	%edx, 44(%eax)
	.loc 1 2901 0
	jmp	.L833
.L829:
	.loc 1 2909 0
	movl	-100(%ebp), %eax
	movl	(%eax), %eax
	movzbl	(%eax), %eax
	cmpb	$95, %al
	jne	.L834
	movl	-100(%ebp), %eax
	movl	(%eax), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	cmpb	$95, %al
	jne	.L836
	movl	-100(%ebp), %eax
	movl	(%eax), %eax
	addl	$2, %eax
	movzbl	(%eax), %eax
	cmpb	$118, %al
	jne	.L836
	movl	-100(%ebp), %eax
	movl	(%eax), %eax
	addl	$3, %eax
	movzbl	(%eax), %eax
	cmpb	$116, %al
	jne	.L836
	movl	-100(%ebp), %eax
	movl	(%eax), %eax
	addl	$4, %eax
	movzbl	(%eax), %eax
	cmpb	$95, %al
	je	.L840
.L836:
	movl	-100(%ebp), %eax
	movl	(%eax), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	cmpb	$118, %al
	jne	.L834
	movl	-100(%ebp), %eax
	movl	(%eax), %eax
	addl	$2, %eax
	movzbl	(%eax), %eax
	cmpb	$116, %al
	jne	.L834
	movl	-100(%ebp), %eax
	movl	(%eax), %eax
	addl	$3, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, 4(%esp)
	leal	cplus_markers@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	strchr@PLT
	testl	%eax, %eax
	je	.L834
.L840:
	.loc 1 2922 0
	movl	-100(%ebp), %eax
	movl	(%eax), %eax
	addl	$2, %eax
	movzbl	(%eax), %eax
	cmpb	$118, %al
	jne	.L843
	.loc 1 2923 0
	movl	-100(%ebp), %eax
	movl	(%eax), %eax
	leal	5(%eax), %edx
	movl	-100(%ebp), %eax
	movl	%edx, (%eax)
	jmp	.L918
.L843:
	.loc 1 2925 0
	movl	-100(%ebp), %eax
	movl	(%eax), %eax
	leal	4(%eax), %edx
	movl	-100(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 2926 0
	jmp	.L918
.L847:
	.loc 1 2928 0
	movl	-100(%ebp), %eax
	movl	(%eax), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -128(%ebp)
	cmpl	$81, -128(%ebp)
	je	.L849
	cmpl	$116, -128(%ebp)
	je	.L850
	cmpl	$75, -128(%ebp)
	je	.L849
	jmp	.L848
.L849:
	.loc 1 2932 0
	movl	$1, 16(%esp)
	movl	$0, 12(%esp)
	movl	-104(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-100(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_qualified
	movl	%eax, -84(%ebp)
	.loc 1 2933 0
	jmp	.L851
.L850:
	.loc 1 2935 0
	movl	$1, 20(%esp)
	movl	$1, 16(%esp)
	movl	$0, 12(%esp)
	movl	-104(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-100(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_template
	movl	%eax, -84(%ebp)
	.loc 1 2937 0
	jmp	.L851
.L848:
	.loc 1 2939 0
	movl	-100(%ebp), %eax
	movl	(%eax), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edx
	movl	_sch_istable@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L852
	.loc 1 2941 0
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	call	consume_count
	movl	%eax, -88(%ebp)
	.loc 1 2946 0
	movl	-100(%ebp), %eax
	movl	(%eax), %eax
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
	cmpl	-88(%ebp), %eax
	jge	.L856
	.loc 1 2948 0
	movl	$1, -84(%ebp)
	.loc 1 2949 0
	jmp	.L851
.L852:
	.loc 1 2954 0
	movl	-100(%ebp), %eax
	movl	(%eax), %edx
	leal	cplus_markers@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	strcspn@PLT
	movl	%eax, -88(%ebp)
.L856:
	.loc 1 2956 0
	movl	-100(%ebp), %eax
	movl	(%eax), %edx
	movl	-88(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-104(%ebp), %eax
	movl	%eax, (%esp)
	call	string_appendn
	.loc 1 2957 0
	movl	-100(%ebp), %eax
	movl	(%eax), %edx
	movl	-88(%ebp), %eax
	addl	%eax, %edx
	movl	-100(%ebp), %eax
	movl	%edx, (%eax)
.L851:
	.loc 1 2960 0
	movl	-100(%ebp), %eax
	movl	(%eax), %edx
	leal	cplus_markers@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	strpbrk@PLT
	movl	%eax, -80(%ebp)
	.loc 1 2961 0
	cmpl	$0, -84(%ebp)
	je	.L857
	cmpl	$0, -80(%ebp)
	je	.L859
	movl	-100(%ebp), %eax
	movl	(%eax), %eax
	cmpl	-80(%ebp), %eax
	jne	.L857
.L859:
	.loc 1 2963 0
	cmpl	$0, -80(%ebp)
	je	.L846
	.loc 1 2965 0
	movl	-96(%ebp), %eax
	movl	(%eax), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L863
	leal	.LC164@GOTOFF(%ebx), %eax
	movl	%eax, -124(%ebp)
	jmp	.L865
.L863:
	leal	.LC165@GOTOFF(%ebx), %edx
	movl	%edx, -124(%ebp)
.L865:
	movl	-124(%ebp), %ecx
	movl	%ecx, 4(%esp)
	movl	-104(%ebp), %eax
	movl	%eax, (%esp)
	call	string_append
	.loc 1 2966 0
	movl	-100(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	-100(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 2961 0
	jmp	.L846
.L857:
	.loc 1 2971 0
	movl	$0, -84(%ebp)
	.loc 1 2972 0
	jmp	.L866
.L846:
.L918:
	.loc 1 2926 0
	movl	-100(%ebp), %eax
	movl	(%eax), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L847
.L866:
	.loc 1 2975 0
	cmpl	$0, -84(%ebp)
	je	.L833
	.loc 1 2976 0
	leal	.LC193@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-104(%ebp), %eax
	movl	%eax, (%esp)
	call	string_append
	.loc 1 2909 0
	jmp	.L833
.L834:
	.loc 1 2978 0
	movl	-100(%ebp), %eax
	movl	(%eax), %eax
	movzbl	(%eax), %eax
	cmpb	$95, %al
	jne	.L869
	movl	-100(%ebp), %eax
	movl	(%eax), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, 4(%esp)
	leal	.LC194@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	strchr@PLT
	testl	%eax, %eax
	je	.L869
	movl	-100(%ebp), %eax
	movl	(%eax), %edx
	leal	cplus_markers@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	strpbrk@PLT
	movl	%eax, -80(%ebp)
	cmpl	$0, -80(%ebp)
	je	.L869
	.loc 1 2983 0
	movl	-100(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	-100(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 2984 0
	movl	-100(%ebp), %eax
	movl	(%eax), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -120(%ebp)
	cmpl	$81, -120(%ebp)
	je	.L874
	cmpl	$116, -120(%ebp)
	je	.L875
	cmpl	$75, -120(%ebp)
	je	.L874
	jmp	.L873
.L874:
	.loc 1 2988 0
	movl	$1, 16(%esp)
	movl	$0, 12(%esp)
	movl	-104(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-100(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_qualified
	movl	%eax, -84(%ebp)
	.loc 1 2989 0
	jmp	.L876
.L875:
	.loc 1 2991 0
	movl	$1, 20(%esp)
	movl	$1, 16(%esp)
	movl	$0, 12(%esp)
	movl	-104(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-100(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_template
	movl	%eax, -84(%ebp)
	.loc 1 2992 0
	jmp	.L876
.L873:
	.loc 1 2994 0
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	call	consume_count
	movl	%eax, -88(%ebp)
	.loc 1 2995 0
	cmpl	$0, -88(%ebp)
	js	.L877
	movl	-100(%ebp), %eax
	movl	(%eax), %eax
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
	cmpl	-88(%ebp), %eax
	jge	.L879
.L877:
	.loc 1 2997 0
	movl	$0, -84(%ebp)
	.loc 1 2998 0
	jmp	.L876
.L879:
	.loc 1 3001 0
	cmpl	$10, -88(%ebp)
	jle	.L880
	movl	-100(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -140(%ebp)
	leal	.LC185@GOTOFF(%ebx), %eax
	movl	%eax, -144(%ebp)
	movl	$8, -148(%ebp)
	cld
	movl	-140(%ebp), %esi
	movl	-144(%ebp), %edi
	movl	-148(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L880
	movl	-100(%ebp), %eax
	movl	(%eax), %eax
	addl	$9, %eax
	movzbl	(%eax), %eax
	cmpb	$78, %al
	jne	.L880
	movl	-100(%ebp), %eax
	movl	(%eax), %eax
	addl	$8, %eax
	movzbl	(%eax), %edx
	movl	-100(%ebp), %eax
	movl	(%eax), %eax
	addl	$10, %eax
	movzbl	(%eax), %eax
	cmpb	%al, %dl
	jne	.L880
	movl	-100(%ebp), %eax
	movl	(%eax), %eax
	addl	$8, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, 4(%esp)
	leal	cplus_markers@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	strchr@PLT
	testl	%eax, %eax
	je	.L880
	.loc 1 3010 0
	leal	.LC186@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-104(%ebp), %eax
	movl	%eax, (%esp)
	call	string_append
	.loc 1 3011 0
	movl	-100(%ebp), %eax
	movl	(%eax), %edx
	movl	-88(%ebp), %eax
	addl	%eax, %edx
	movl	-100(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 3015 0
	movl	-100(%ebp), %eax
	movl	(%eax), %edx
	leal	cplus_markers@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	strpbrk@PLT
	movl	%eax, -80(%ebp)
	.loc 1 3016 0
	jmp	.L876
.L880:
	.loc 1 3019 0
	movl	-100(%ebp), %eax
	movl	(%eax), %edx
	movl	-88(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-104(%ebp), %eax
	movl	%eax, (%esp)
	call	string_appendn
	.loc 1 3020 0
	movl	-100(%ebp), %eax
	movl	(%eax), %edx
	movl	-88(%ebp), %eax
	addl	%eax, %edx
	movl	-100(%ebp), %eax
	movl	%edx, (%eax)
.L876:
	.loc 1 3022 0
	cmpl	$0, -84(%ebp)
	je	.L886
	movl	-100(%ebp), %eax
	movl	(%eax), %eax
	cmpl	-80(%ebp), %eax
	jne	.L886
	.loc 1 3026 0
	movl	-100(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	-100(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 3027 0
	movl	-96(%ebp), %eax
	movl	(%eax), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L889
	leal	.LC164@GOTOFF(%ebx), %esi
	movl	%esi, -116(%ebp)
	jmp	.L891
.L889:
	leal	.LC165@GOTOFF(%ebx), %edi
	movl	%edi, -116(%ebp)
.L891:
	movl	-116(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-104(%ebp), %eax
	movl	%eax, (%esp)
	call	string_append
	.loc 1 3028 0
	movl	-100(%ebp), %eax
	movl	(%eax), %eax
	movl	$-1, %ecx
	movl	%eax, -152(%ebp)
	movl	$0, %eax
	cld
	movl	-152(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	movl	%eax, -88(%ebp)
	.loc 1 3029 0
	movl	-100(%ebp), %eax
	movl	(%eax), %edx
	movl	-88(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-104(%ebp), %eax
	movl	%eax, (%esp)
	call	string_appendn
	.loc 1 3030 0
	movl	-100(%ebp), %eax
	movl	(%eax), %edx
	movl	-88(%ebp), %eax
	addl	%eax, %edx
	movl	-100(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 3022 0
	jmp	.L833
.L886:
	.loc 1 3034 0
	movl	$0, -84(%ebp)
	.loc 1 2978 0
	jmp	.L833
.L869:
	.loc 1 3037 0
	movl	-100(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -156(%ebp)
	leal	.LC195@GOTOFF(%ebx), %eax
	movl	%eax, -160(%ebp)
	movl	$8, -164(%ebp)
	cld
	movl	-156(%ebp), %esi
	movl	-160(%ebp), %edi
	movl	-164(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L893
.LBB35:
	.loc 1 3041 0
	movl	-100(%ebp), %eax
	movl	(%eax), %eax
	leal	8(%eax), %edx
	movl	-100(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 3042 0
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	call	consume_count
	movl	%eax, -76(%ebp)
	.loc 1 3043 0
	cmpl	$-1, -76(%ebp)
	jne	.L895
	.loc 1 3044 0
	movl	$0, -84(%ebp)
	jmp	.L833
.L895:
.LBB36:
	.loc 1 3047 0
	movl	-100(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	-100(%ebp), %eax
	movl	%edx, (%eax)
	movl	-100(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	internal_cplus_demangle
	movl	%eax, -72(%ebp)
	.loc 1 3049 0
	cmpl	$0, -72(%ebp)
	je	.L898
.LBB37:
	.loc 1 3052 0
	movl	-76(%ebp), %eax
	negl	%eax
	movl	%eax, 8(%esp)
	leal	.LC196@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-66(%ebp), %eax
	movl	%eax, (%esp)
	call	sprintf@PLT
	.loc 1 3053 0
	leal	-66(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-104(%ebp), %eax
	movl	%eax, (%esp)
	call	string_append
	.loc 1 3054 0
	movl	-72(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-104(%ebp), %eax
	movl	%eax, (%esp)
	call	string_append
	.loc 1 3055 0
	movl	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 3056 0
	movl	-100(%ebp), %eax
	movl	(%eax), %eax
	movl	$-1, %ecx
	movl	%eax, -168(%ebp)
	movl	$0, %eax
	cld
	movl	-168(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	movl	%eax, -88(%ebp)
	.loc 1 3057 0
	movl	-100(%ebp), %eax
	movl	(%eax), %edx
	movl	-88(%ebp), %eax
	addl	%eax, %edx
	movl	-100(%ebp), %eax
	movl	%edx, (%eax)
	jmp	.L833
.L898:
.LBE37:
	.loc 1 3061 0
	movl	$0, -84(%ebp)
	jmp	.L833
.L893:
.LBE36:
.LBE35:
	.loc 1 3065 0
	movl	-100(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -172(%ebp)
	leal	.LC197@GOTOFF(%ebx), %eax
	movl	%eax, -176(%ebp)
	movl	$3, -180(%ebp)
	cld
	movl	-172(%ebp), %esi
	movl	-176(%ebp), %edi
	movl	-180(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L900
	movl	-100(%ebp), %eax
	movl	(%eax), %eax
	addl	$3, %eax
	movzbl	(%eax), %eax
	cmpb	$105, %al
	je	.L902
	movl	-100(%ebp), %eax
	movl	(%eax), %eax
	addl	$3, %eax
	movzbl	(%eax), %eax
	cmpb	$102, %al
	jne	.L900
.L902:
	.loc 1 3068 0
	movl	-100(%ebp), %eax
	movl	(%eax), %eax
	addl	$3, %eax
	movzbl	(%eax), %eax
	cmpb	$105, %al
	jne	.L904
	leal	.LC198@GOTOFF(%ebx), %esi
	movl	%esi, -112(%ebp)
	jmp	.L906
.L904:
	leal	.LC199@GOTOFF(%ebx), %edi
	movl	%edi, -112(%ebp)
.L906:
	movl	-112(%ebp), %eax
	movl	%eax, -80(%ebp)
	.loc 1 3069 0
	movl	-100(%ebp), %eax
	movl	(%eax), %eax
	leal	4(%eax), %edx
	movl	-100(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 3070 0
	movl	-100(%ebp), %eax
	movl	(%eax), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -108(%ebp)
	cmpl	$81, -108(%ebp)
	je	.L908
	cmpl	$116, -108(%ebp)
	je	.L909
	cmpl	$75, -108(%ebp)
	je	.L908
	jmp	.L907
.L908:
	.loc 1 3074 0
	movl	$1, 16(%esp)
	movl	$0, 12(%esp)
	movl	-104(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-100(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_qualified
	movl	%eax, -84(%ebp)
	.loc 1 3075 0
	jmp	.L910
.L909:
	.loc 1 3077 0
	movl	$1, 20(%esp)
	movl	$1, 16(%esp)
	movl	$0, 12(%esp)
	movl	-104(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-100(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_template
	movl	%eax, -84(%ebp)
	.loc 1 3078 0
	jmp	.L910
.L907:
	.loc 1 3080 0
	movl	-104(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-100(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	do_type
	movl	%eax, -84(%ebp)
.L910:
	.loc 1 3083 0
	cmpl	$0, -84(%ebp)
	je	.L911
	movl	-100(%ebp), %eax
	movl	(%eax), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L911
	.loc 1 3084 0
	movl	$0, -84(%ebp)
.L911:
	.loc 1 3085 0
	cmpl	$0, -84(%ebp)
	je	.L833
	.loc 1 3086 0
	movl	-80(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-104(%ebp), %eax
	movl	%eax, (%esp)
	call	string_append
	.loc 1 3065 0
	jmp	.L833
.L900:
	.loc 1 3090 0
	movl	$0, -84(%ebp)
.L833:
	.loc 1 3092 0
	movl	-84(%ebp), %eax
	.loc 1 3093 0
	movl	-16(%ebp), %edx
	xorl	%gs:20, %edx
	je	.L917
	call	__stack_chk_fail_local
.L917:
	addl	$204, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE37:
	.size	gnu_special, .-gnu_special
	.type	recursively_demangle, @function
recursively_demangle:
.LFB38:
	.loc 1 3101 0
	pushl	%ebp
.LCFI147:
	movl	%esp, %ebp
.LCFI148:
	pushl	%edi
.LCFI149:
	pushl	%esi
.LCFI150:
	pushl	%ebx
.LCFI151:
	subl	$28, %esp
.LCFI152:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3102 0
	movl	$0, -20(%ebp)
	.loc 1 3103 0
	movl	$0, -16(%ebp)
	.loc 1 3105 0
	movl	20(%ebp), %eax
	addl	$1, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, -20(%ebp)
	.loc 1 3106 0
	movl	20(%ebp), %ecx
	movl	12(%ebp), %eax
	movl	(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%eax, %edi
	movl	%edx, %esi
	cld
	rep
	movsb
	.loc 1 3107 0
	movl	20(%ebp), %eax
	addl	-20(%ebp), %eax
	movb	$0, (%eax)
	.loc 1 3109 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	cplus_demangle@PLT
	movl	%eax, -16(%ebp)
	.loc 1 3111 0
	cmpl	$0, -16(%ebp)
	je	.L920
	.loc 1 3113 0
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	string_append
	.loc 1 3114 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	jmp	.L922
.L920:
	.loc 1 3118 0
	movl	12(%ebp), %eax
	movl	(%eax), %edx
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	string_appendn
.L922:
	.loc 1 3120 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 3121 0
	movl	12(%ebp), %eax
	movl	(%eax), %edx
	movl	20(%ebp), %eax
	addl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 3122 0
	addl	$28, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE38:
	.size	recursively_demangle, .-recursively_demangle
	.section	.rodata
.LC200:
	.string	"__vtbl__"
	.text
	.type	arm_special, @function
arm_special:
.LFB39:
	.loc 1 3151 0
	pushl	%ebp
.LCFI153:
	movl	%esp, %ebp
.LCFI154:
	pushl	%edi
.LCFI155:
	pushl	%esi
.LCFI156:
	pushl	%ebx
.LCFI157:
	subl	$60, %esp
.LCFI158:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3153 0
	movl	$1, -16(%ebp)
	.loc 1 3156 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -36(%ebp)
	leal	.LC200@GOTOFF(%ebx), %eax
	movl	%eax, -40(%ebp)
	movl	$8, -44(%ebp)
	cld
	movl	-36(%ebp), %esi
	movl	-40(%ebp), %edi
	movl	-44(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L925
	.loc 1 3162 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	addl	$8, %eax
	movl	%eax, -24(%ebp)
	.loc 1 3163 0
	jmp	.L945
.L928:
	.loc 1 3165 0
	leal	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	consume_count
	movl	%eax, -20(%ebp)
	.loc 1 3166 0
	cmpl	$-1, -20(%ebp)
	jne	.L929
	.loc 1 3168 0
	movl	$0, -32(%ebp)
	jmp	.L931
.L929:
	.loc 1 3170 0
	movl	-24(%ebp), %edx
	movl	-20(%ebp), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 3171 0
	movl	-24(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$95, %al
	jne	.L927
	movl	-24(%ebp), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	cmpb	$95, %al
	jne	.L927
	.loc 1 3173 0
	movl	-24(%ebp), %eax
	addl	$2, %eax
	movl	%eax, -24(%ebp)
.L927:
.L945:
	.loc 1 3163 0
	movl	-24(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L928
	.loc 1 3176 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	8(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 3177 0
	jmp	.L946
.L936:
	.loc 1 3179 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	consume_count
	movl	%eax, -20(%ebp)
	.loc 1 3180 0
	cmpl	$-1, -20(%ebp)
	je	.L937
	movl	8(%ebp), %eax
	movl	(%eax), %eax
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
	cmpl	-20(%ebp), %eax
	jge	.L939
.L937:
	.loc 1 3182 0
	movl	$0, -32(%ebp)
	jmp	.L931
.L939:
	.loc 1 3183 0
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	string_prependn
	.loc 1 3184 0
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	-20(%ebp), %eax
	addl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 3185 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movzbl	(%eax), %eax
	cmpb	$95, %al
	jne	.L935
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	cmpb	$95, %al
	jne	.L935
	.loc 1 3187 0
	leal	.LC165@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	string_prepend
	.loc 1 3188 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	2(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
.L935:
.L946:
	.loc 1 3177 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L936
	.loc 1 3191 0
	leal	.LC193@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	string_append
	jmp	.L943
.L925:
	.loc 1 3195 0
	movl	$0, -16(%ebp)
.L943:
	.loc 1 3197 0
	movl	-16(%ebp), %eax
	movl	%eax, -32(%ebp)
.L931:
	movl	-32(%ebp), %eax
	.loc 1 3198 0
	addl	$60, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE39:
	.size	arm_special, .-arm_special
	.type	demangle_qualified, @function
demangle_qualified:
.LFB40:
	.loc 1 3239 0
	pushl	%ebp
.LCFI159:
	movl	%esp, %ebp
.LCFI160:
	pushl	%ebx
.LCFI161:
	subl	$132, %esp
.LCFI162:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3240 0
	movl	$0, -36(%ebp)
	.loc 1 3241 0
	movl	$1, -32(%ebp)
	.loc 1 3245 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	register_Btype
	movl	%eax, -28(%ebp)
	.loc 1 3249 0
	cmpl	$0, 20(%ebp)
	je	.L948
	movl	8(%ebp), %eax
	movl	40(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L950
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L948
.L950:
	movl	$1, -100(%ebp)
	jmp	.L952
.L948:
	movl	$0, -100(%ebp)
.L952:
	movl	-100(%ebp), %eax
	movl	%eax, 20(%ebp)
	.loc 1 3252 0
	leal	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	string_init
	.loc 1 3253 0
	leal	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	string_init
	.loc 1 3255 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movzbl	(%eax), %eax
	cmpb	$75, %al
	jne	.L953
.LBB38:
	.loc 1 3259 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 3260 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	consume_count_with_underscores
	movl	%eax, -24(%ebp)
	.loc 1 3261 0
	cmpl	$-1, -24(%ebp)
	je	.L955
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	-24(%ebp), %eax
	jg	.L957
.L955:
	.loc 1 3262 0
	movl	$0, -32(%ebp)
	.loc 1 3261 0
	jmp	.L959
.L957:
	.loc 1 3264 0
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	-24(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	leal	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	string_append
	jmp	.L959
.L953:
.LBE38:
	.loc 1 3267 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -96(%ebp)
	cmpl	$49, -96(%ebp)
	jl	.L960
	cmpl	$57, -96(%ebp)
	jle	.L961
	cmpl	$95, -96(%ebp)
	je	.L962
	jmp	.L960
.L962:
	.loc 1 3273 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 3274 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	consume_count_with_underscores
	movl	%eax, -36(%ebp)
	.loc 1 3275 0
	cmpl	$-1, -36(%ebp)
	jne	.L959
	.loc 1 3276 0
	movl	$0, -32(%ebp)
	.loc 1 3277 0
	jmp	.L959
.L961:
	.loc 1 3289 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	movb	%al, -6(%ebp)
	.loc 1 3290 0
	movb	$0, -5(%ebp)
	.loc 1 3291 0
	leal	-6(%ebp), %eax
	movl	%eax, (%esp)
	call	atoi@PLT
	movl	%eax, -36(%ebp)
	.loc 1 3296 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	addl	$2, %eax
	movzbl	(%eax), %eax
	cmpb	$95, %al
	jne	.L965
	.loc 1 3298 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
.L965:
	.loc 1 3300 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	leal	2(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 3301 0
	jmp	.L959
.L960:
	.loc 1 3305 0
	movl	$0, -32(%ebp)
.L959:
	.loc 1 3308 0
	cmpl	$0, -32(%ebp)
	jne	.L1019
	.loc 1 3309 0
	movl	-32(%ebp), %edx
	movl	%edx, -92(%ebp)
	jmp	.L969
.L971:
.LBB39:
	.loc 1 3316 0
	movl	$1, -20(%ebp)
	.loc 1 3317 0
	leal	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	string_clear
	.loc 1 3319 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movzbl	(%eax), %eax
	cmpb	$95, %al
	jne	.L972
	.loc 1 3320 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
.L972:
	.loc 1 3322 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movzbl	(%eax), %eax
	cmpb	$116, %al
	jne	.L974
	.loc 1 3330 0
	movl	$0, 20(%esp)
	movl	$1, 16(%esp)
	leal	-60(%ebp), %eax
	movl	%eax, 12(%esp)
	leal	-48(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_template
	movl	%eax, -32(%ebp)
	.loc 1 3332 0
	cmpl	$0, -32(%ebp)
	je	.L976
	.loc 1 3333 0
	jmp	.L978
.L974:
	.loc 1 3335 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movzbl	(%eax), %eax
	cmpb	$75, %al
	jne	.L979
.LBB40:
	.loc 1 3338 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 3339 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	consume_count_with_underscores
	movl	%eax, -16(%ebp)
	.loc 1 3340 0
	cmpl	$-1, -16(%ebp)
	je	.L981
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	-16(%ebp), %eax
	jg	.L983
.L981:
	.loc 1 3341 0
	movl	$0, -32(%ebp)
	.loc 1 3340 0
	jmp	.L984
.L983:
	.loc 1 3343 0
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	-16(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	leal	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	string_append
.L984:
	.loc 1 3344 0
	movl	$0, -20(%ebp)
	.loc 1 3346 0
	cmpl	$0, -32(%ebp)
	je	.L976
	jmp	.L978
.L979:
.LBE40:
	.loc 1 3350 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L986
.LBB41:
	.loc 1 3356 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	consume_count
	movl	%eax, -12(%ebp)
	.loc 1 3357 0
	cmpl	$-1, -12(%ebp)
	jne	.L988
	.loc 1 3359 0
	movl	$0, -32(%ebp)
	.loc 1 3360 0
	jmp	.L976
.L988:
	.loc 1 3362 0
	movl	-12(%ebp), %eax
	movl	%eax, 12(%esp)
	leal	-48(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	recursively_demangle
	jmp	.L978
.L986:
.LBE41:
	.loc 1 3366 0
	leal	-60(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	do_type
	movl	%eax, -32(%ebp)
	.loc 1 3367 0
	cmpl	$0, -32(%ebp)
	je	.L976
	.loc 1 3369 0
	leal	-60(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	string_appends
.L978:
	.loc 1 3373 0
	cmpl	$0, -20(%ebp)
	je	.L991
	.loc 1 3374 0
	movl	-48(%ebp), %edx
	movl	-44(%ebp), %eax
	cmpl	%eax, %edx
	je	.L993
	movl	-44(%ebp), %eax
	movl	%eax, %edx
	movl	-48(%ebp), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, -88(%ebp)
	jmp	.L995
.L993:
	movl	$0, -88(%ebp)
.L995:
	movl	-48(%ebp), %eax
	movl	-88(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	remember_Ktype
.L991:
	.loc 1 3376 0
	cmpl	$0, -36(%ebp)
	jle	.L970
	.loc 1 3377 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L997
	leal	.LC164@GOTOFF(%ebx), %ecx
	movl	%ecx, -84(%ebp)
	jmp	.L999
.L997:
	leal	.LC165@GOTOFF(%ebx), %eax
	movl	%eax, -84(%ebp)
.L999:
	movl	-84(%ebp), %edx
	movl	%edx, 4(%esp)
	leal	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	string_append
.L970:
.L1019:
.LBE39:
	.loc 1 3314 0
	cmpl	$0, -36(%ebp)
	setg	%al
	subl	$1, -36(%ebp)
	testb	%al, %al
	jne	.L971
.L976:
	.loc 1 3380 0
	movl	-48(%ebp), %edx
	movl	-44(%ebp), %eax
	cmpl	%eax, %edx
	je	.L1000
	movl	-44(%ebp), %eax
	movl	%eax, %edx
	movl	-48(%ebp), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, -80(%ebp)
	jmp	.L1002
.L1000:
	movl	$0, -80(%ebp)
.L1002:
	movl	-48(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	%edx, 12(%esp)
	movl	-80(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	remember_Btype
	.loc 1 3387 0
	cmpl	$0, 20(%ebp)
	je	.L1003
	.loc 1 3389 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L1005
	leal	.LC164@GOTOFF(%ebx), %ecx
	movl	%ecx, -76(%ebp)
	jmp	.L1007
.L1005:
	leal	.LC165@GOTOFF(%ebx), %eax
	movl	%eax, -76(%ebp)
.L1007:
	movl	-76(%ebp), %edx
	movl	%edx, 4(%esp)
	leal	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	string_append
	.loc 1 3390 0
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L1008
	.loc 1 3391 0
	leal	.LC83@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	string_append
.L1008:
	.loc 1 3392 0
	leal	-60(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	string_appends
.L1003:
	.loc 1 3398 0
	cmpl	$0, 24(%ebp)
	je	.L1010
	.loc 1 3399 0
	leal	-48(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	string_appends
	jmp	.L1012
.L1010:
	.loc 1 3402 0
	movl	16(%ebp), %eax
	movl	(%eax), %edx
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	je	.L1013
	.loc 1 3403 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L1015
	leal	.LC164@GOTOFF(%ebx), %ecx
	movl	%ecx, -72(%ebp)
	jmp	.L1017
.L1015:
	leal	.LC165@GOTOFF(%ebx), %eax
	movl	%eax, -72(%ebp)
.L1017:
	movl	-72(%ebp), %edx
	movl	%edx, 4(%esp)
	leal	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	string_append
.L1013:
	.loc 1 3404 0
	leal	-48(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	string_prepends
.L1012:
	.loc 1 3407 0
	leal	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	string_delete
	.loc 1 3408 0
	leal	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	string_delete
	.loc 1 3409 0
	movl	-32(%ebp), %ecx
	movl	%ecx, -92(%ebp)
.L969:
	movl	-92(%ebp), %eax
	.loc 1 3410 0
	addl	$132, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE40:
	.size	demangle_qualified, .-demangle_qualified
	.type	get_count, @function
get_count:
.LFB41:
	.loc 1 3462 0
	pushl	%ebp
.LCFI163:
	movl	%esp, %ebp
.LCFI164:
	subl	$20, %esp
.LCFI165:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 3466 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edx
	movl	_sch_istable@GOT(%ecx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	andl	$4, %eax
	testl	%eax, %eax
	jne	.L1021
	.loc 1 3467 0
	movl	$0, -20(%ebp)
	jmp	.L1023
.L1021:
	.loc 1 3470 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	leal	-48(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 3471 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 3472 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edx
	movl	_sch_istable@GOT(%ecx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L1024
	.loc 1 3474 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 3475 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -4(%ebp)
.L1026:
	.loc 1 3478 0
	movl	-4(%ebp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	movl	%eax, -4(%ebp)
	.loc 1 3479 0
	movl	-8(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	addl	-4(%ebp), %eax
	subl	$48, %eax
	movl	%eax, -4(%ebp)
	.loc 1 3480 0
	addl	$1, -8(%ebp)
	.loc 1 3482 0
	movl	-8(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edx
	movl	_sch_istable@GOT(%ecx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	andl	$4, %eax
	testl	%eax, %eax
	jne	.L1026
	.loc 1 3483 0
	movl	-8(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$95, %al
	jne	.L1024
	.loc 1 3485 0
	movl	-8(%ebp), %edx
	addl	$1, %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 3486 0
	movl	12(%ebp), %edx
	movl	-4(%ebp), %eax
	movl	%eax, (%edx)
.L1024:
	.loc 1 3490 0
	movl	$1, -20(%ebp)
.L1023:
	movl	-20(%ebp), %eax
	.loc 1 3491 0
	leave
	ret
.LFE41:
	.size	get_count, .-get_count
	.section	.rodata
.LC201:
	.string	"["
.LC202:
	.string	"]"
	.text
	.type	do_type, @function
do_type:
.LFB42:
	.loc 1 3501 0
	pushl	%ebp
.LCFI166:
	movl	%esp, %ebp
.LCFI167:
	pushl	%edi
.LCFI168:
	pushl	%ebx
.LCFI169:
	subl	$144, %esp
.LCFI170:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3509 0
	movl	$0, -20(%ebp)
	.loc 1 3511 0
	leal	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	string_init
	.loc 1 3512 0
	leal	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	string_init
	.loc 1 3513 0
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	string_init
	.loc 1 3515 0
	movl	$0, -32(%ebp)
	.loc 1 3516 0
	movl	$1, -28(%ebp)
	.loc 1 3517 0
	jmp	.L1144
.L1032:
.LBB42:
	.loc 1 3520 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	subl	$65, %eax
	movl	%eax, -108(%ebp)
	cmpl	$52, -108(%ebp)
	ja	.L1033
	movl	-108(%ebp), %eax
	sall	$2, %eax
	movl	.L1042@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L1042:
	.long	.L1034@GOTOFF
	.long	.L1033@GOTOFF
	.long	.L1035@GOTOFF
	.long	.L1033@GOTOFF
	.long	.L1033@GOTOFF
	.long	.L1036@GOTOFF
	.long	.L1037@GOTOFF
	.long	.L1033@GOTOFF
	.long	.L1033@GOTOFF
	.long	.L1033@GOTOFF
	.long	.L1033@GOTOFF
	.long	.L1033@GOTOFF
	.long	.L1038@GOTOFF
	.long	.L1033@GOTOFF
	.long	.L1038@GOTOFF
	.long	.L1039@GOTOFF
	.long	.L1033@GOTOFF
	.long	.L1040@GOTOFF
	.long	.L1033@GOTOFF
	.long	.L1041@GOTOFF
	.long	.L1033@GOTOFF
	.long	.L1035@GOTOFF
	.long	.L1033@GOTOFF
	.long	.L1033@GOTOFF
	.long	.L1033@GOTOFF
	.long	.L1033@GOTOFF
	.long	.L1033@GOTOFF
	.long	.L1033@GOTOFF
	.long	.L1033@GOTOFF
	.long	.L1033@GOTOFF
	.long	.L1033@GOTOFF
	.long	.L1033@GOTOFF
	.long	.L1033@GOTOFF
	.long	.L1033@GOTOFF
	.long	.L1033@GOTOFF
	.long	.L1033@GOTOFF
	.long	.L1033@GOTOFF
	.long	.L1033@GOTOFF
	.long	.L1033@GOTOFF
	.long	.L1033@GOTOFF
	.long	.L1033@GOTOFF
	.long	.L1033@GOTOFF
	.long	.L1033@GOTOFF
	.long	.L1033@GOTOFF
	.long	.L1033@GOTOFF
	.long	.L1033@GOTOFF
	.long	.L1033@GOTOFF
	.long	.L1039@GOTOFF
	.long	.L1033@GOTOFF
	.long	.L1033@GOTOFF
	.long	.L1033@GOTOFF
	.long	.L1033@GOTOFF
	.long	.L1035@GOTOFF
	.text
.L1039:
	.loc 1 3526 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 3527 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	andl	$4, %eax
	testl	%eax, %eax
	jne	.L1043
	.loc 1 3528 0
	leal	.LC35@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	string_prepend
.L1043:
	.loc 1 3529 0
	cmpl	$0, -20(%ebp)
	jne	.L1031
	.loc 1 3530 0
	movl	$1, -20(%ebp)
	.loc 1 3531 0
	jmp	.L1031
.L1040:
	.loc 1 3535 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 3536 0
	leal	.LC78@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	string_prepend
	.loc 1 3537 0
	cmpl	$0, -20(%ebp)
	jne	.L1031
	.loc 1 3538 0
	movl	$2, -20(%ebp)
	.loc 1 3539 0
	jmp	.L1031
.L1034:
	.loc 1 3544 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 3545 0
	movl	-52(%ebp), %edx
	movl	-48(%ebp), %eax
	cmpl	%eax, %edx
	je	.L1049
	movl	-52(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$42, %al
	je	.L1051
	movl	-52(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$38, %al
	jne	.L1049
.L1051:
	.loc 1 3548 0
	leal	.LC171@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	string_prepend
	.loc 1 3549 0
	leal	.LC172@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	string_append
.L1049:
	.loc 1 3551 0
	leal	.LC201@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	string_append
	.loc 1 3552 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movzbl	(%eax), %eax
	cmpb	$95, %al
	je	.L1053
	.loc 1 3553 0
	movl	$3, 12(%esp)
	leal	-52(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_template_value_parm
	movl	%eax, -28(%ebp)
.L1053:
	.loc 1 3555 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movzbl	(%eax), %eax
	cmpb	$95, %al
	jne	.L1055
	.loc 1 3556 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
.L1055:
	.loc 1 3557 0
	leal	.LC202@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	string_append
	.loc 1 3558 0
	jmp	.L1031
.L1041:
	.loc 1 3563 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 3564 0
	leal	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_count
	testl	%eax, %eax
	je	.L1057
	movl	8(%ebp), %eax
	movl	32(%eax), %edx
	movl	-36(%ebp), %eax
	cmpl	%eax, %edx
	jg	.L1059
.L1057:
	.loc 1 3566 0
	movl	$0, -28(%ebp)
	.loc 1 3564 0
	jmp	.L1031
.L1059:
	.loc 1 3570 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	-36(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 3571 0
	leal	-40(%ebp), %eax
	movl	%eax, 12(%ebp)
	.loc 1 3573 0
	jmp	.L1031
.L1036:
	.loc 1 3577 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 3578 0
	movl	-52(%ebp), %edx
	movl	-48(%ebp), %eax
	cmpl	%eax, %edx
	je	.L1061
	movl	-52(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$42, %al
	je	.L1063
	movl	-52(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$38, %al
	jne	.L1061
.L1063:
	.loc 1 3581 0
	leal	.LC171@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	string_prepend
	.loc 1 3582 0
	leal	.LC172@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	string_append
.L1061:
	.loc 1 3587 0
	leal	-52(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_nested_args
	testl	%eax, %eax
	je	.L1065
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movzbl	(%eax), %eax
	cmpb	$95, %al
	je	.L1067
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L1067
.L1065:
	.loc 1 3590 0
	movl	$0, -28(%ebp)
	.loc 1 3591 0
	jmp	.L1031
.L1067:
	.loc 1 3593 0
	cmpl	$0, -28(%ebp)
	je	.L1031
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movzbl	(%eax), %eax
	cmpb	$95, %al
	jne	.L1031
	.loc 1 3594 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 3595 0
	jmp	.L1031
.L1038:
	.loc 1 3600 0
	movl	$0, -24(%ebp)
	.loc 1 3602 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movzbl	(%eax), %eax
	cmpb	$77, %al
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -16(%ebp)
	.loc 1 3603 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 3605 0
	leal	.LC172@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	string_append
	.loc 1 3609 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movzbl	(%eax), %eax
	cmpb	$81, %al
	je	.L1072
	.loc 1 3610 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L1074
	leal	.LC164@GOTOFF(%ebx), %eax
	movl	%eax, -104(%ebp)
	jmp	.L1076
.L1074:
	leal	.LC165@GOTOFF(%ebx), %ecx
	movl	%ecx, -104(%ebp)
.L1076:
	movl	-104(%ebp), %edi
	movl	%edi, 4(%esp)
	leal	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	string_prepend
.L1072:
	.loc 1 3612 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edx
	movl	_sch_istable@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L1077
	.loc 1 3614 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	consume_count
	movl	%eax, -36(%ebp)
	.loc 1 3615 0
	movl	-36(%ebp), %eax
	cmpl	$-1, %eax
	je	.L1079
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	$-1, %ecx
	movl	%eax, -112(%ebp)
	movl	$0, %eax
	cld
	movl	-112(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	movl	%eax, %edx
	movl	-36(%ebp), %eax
	cmpl	%eax, %edx
	jge	.L1081
.L1079:
	.loc 1 3618 0
	movl	$0, -28(%ebp)
	.loc 1 3619 0
	jmp	.L1031
.L1081:
	.loc 1 3621 0
	movl	-36(%ebp), %edx
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	leal	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	string_prependn
	.loc 1 3622 0
	movl	12(%ebp), %eax
	movl	(%eax), %edx
	movl	-36(%ebp), %eax
	addl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	jmp	.L1082
.L1077:
	.loc 1 3624 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movzbl	(%eax), %eax
	cmpb	$88, %al
	je	.L1083
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movzbl	(%eax), %eax
	cmpb	$89, %al
	jne	.L1085
.L1083:
.LBB43:
	.loc 1 3627 0
	leal	-76(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	do_type
	.loc 1 3628 0
	leal	-76(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	string_prepends
	.loc 1 3624 0
	jmp	.L1082
.L1085:
.LBE43:
	.loc 1 3630 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movzbl	(%eax), %eax
	cmpb	$116, %al
	jne	.L1086
.LBB44:
	.loc 1 3633 0
	leal	-76(%ebp), %eax
	movl	%eax, (%esp)
	call	string_init
	.loc 1 3634 0
	movl	$1, 20(%esp)
	movl	$1, 16(%esp)
	movl	$0, 12(%esp)
	leal	-76(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_template
	movl	%eax, -28(%ebp)
	.loc 1 3636 0
	cmpl	$0, -28(%ebp)
	je	.L1031
	.loc 1 3638 0
	movl	-72(%ebp), %eax
	movl	%eax, %edx
	movl	-76(%ebp), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	-76(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	leal	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	string_prependn
	.loc 1 3639 0
	leal	-76(%ebp), %eax
	movl	%eax, (%esp)
	call	string_clear
	jmp	.L1082
.L1086:
.LBE44:
	.loc 1 3644 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movzbl	(%eax), %eax
	cmpb	$81, %al
	jne	.L1089
	.loc 1 3646 0
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	leal	-52(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_qualified
	movl	%eax, -28(%ebp)
	.loc 1 3649 0
	cmpl	$0, -28(%ebp)
	je	.L1031
	.loc 1 3650 0
	jmp	.L1082
.L1089:
	.loc 1 3654 0
	movl	$0, -28(%ebp)
	.loc 1 3655 0
	jmp	.L1031
.L1082:
	.loc 1 3658 0
	leal	.LC171@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	string_prepend
	.loc 1 3659 0
	cmpl	$0, -16(%ebp)
	je	.L1092
	.loc 1 3661 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -100(%ebp)
	cmpl	$86, -100(%ebp)
	je	.L1095
	cmpl	$117, -100(%ebp)
	je	.L1095
	cmpl	$67, -100(%ebp)
	je	.L1095
	jmp	.L1094
.L1095:
	.loc 1 3666 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, (%esp)
	call	code_for_qualifier
	orl	%eax, -24(%ebp)
	.loc 1 3667 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
.L1094:
	.loc 1 3674 0
	movl	12(%ebp), %eax
	movl	(%eax), %edx
	movzbl	(%edx), %eax
	cmpb	$70, %al
	setne	%cl
	addl	$1, %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	testb	%cl, %cl
	je	.L1092
	.loc 1 3676 0
	movl	$0, -28(%ebp)
	.loc 1 3677 0
	jmp	.L1031
.L1092:
	.loc 1 3680 0
	cmpl	$0, -16(%ebp)
	je	.L1097
	leal	-52(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_nested_args
	testl	%eax, %eax
	je	.L1099
.L1097:
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movzbl	(%eax), %eax
	cmpb	$95, %al
	je	.L1100
.L1099:
	.loc 1 3683 0
	movl	$0, -28(%ebp)
	.loc 1 3684 0
	jmp	.L1031
.L1100:
	.loc 1 3686 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 3687 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L1031
	.loc 1 3691 0
	cmpl	$0, -24(%ebp)
	je	.L1031
	.loc 1 3693 0
	movl	-52(%ebp), %edx
	movl	-48(%ebp), %eax
	cmpl	%eax, %edx
	je	.L1104
	leal	.LC166@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	string_append
.L1104:
	.loc 1 3694 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	qualifier_string
	movl	%eax, 4(%esp)
	leal	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	string_append
	.loc 1 3696 0
	jmp	.L1031
.L1037:
	.loc 1 3699 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 3700 0
	jmp	.L1031
.L1035:
	.loc 1 3705 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L1106
	.loc 1 3707 0
	movl	-52(%ebp), %edx
	movl	-48(%ebp), %eax
	cmpl	%eax, %edx
	je	.L1108
	.loc 1 3708 0
	leal	.LC166@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	string_prepend
.L1108:
	.loc 1 3710 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, (%esp)
	call	demangle_qualifier
	movl	%eax, 4(%esp)
	leal	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	string_prepend
.L1106:
	.loc 1 3712 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 3713 0
	jmp	.L1031
.L1033:
	.loc 1 3720 0
	movl	$1, -32(%ebp)
.L1031:
.L1144:
.LBE42:
	.loc 1 3517 0
	cmpl	$0, -28(%ebp)
	je	.L1110
	cmpl	$0, -32(%ebp)
	je	.L1032
.L1110:
	.loc 1 3725 0
	cmpl	$0, -28(%ebp)
	je	.L1112
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	subl	$66, %eax
	movl	%eax, -116(%ebp)
	cmpl	$23, -116(%ebp)
	ja	.L1114
	movl	-116(%ebp), %eax
	sall	$2, %eax
	movl	.L1118@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L1118:
	.long	.L1115@GOTOFF
	.long	.L1114@GOTOFF
	.long	.L1114@GOTOFF
	.long	.L1114@GOTOFF
	.long	.L1114@GOTOFF
	.long	.L1114@GOTOFF
	.long	.L1114@GOTOFF
	.long	.L1114@GOTOFF
	.long	.L1114@GOTOFF
	.long	.L1116@GOTOFF
	.long	.L1114@GOTOFF
	.long	.L1114@GOTOFF
	.long	.L1114@GOTOFF
	.long	.L1114@GOTOFF
	.long	.L1114@GOTOFF
	.long	.L1116@GOTOFF
	.long	.L1114@GOTOFF
	.long	.L1114@GOTOFF
	.long	.L1114@GOTOFF
	.long	.L1114@GOTOFF
	.long	.L1114@GOTOFF
	.long	.L1114@GOTOFF
	.long	.L1117@GOTOFF
	.long	.L1117@GOTOFF
	.text
.L1116:
	.loc 1 3731 0
	movl	$1, 16(%esp)
	movl	$0, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_qualified
	movl	%eax, -28(%ebp)
	.loc 1 3732 0
	jmp	.L1112
.L1115:
	.loc 1 3737 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 3738 0
	leal	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_count
	testl	%eax, %eax
	je	.L1119
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	-36(%ebp), %eax
	cmpl	%eax, %edx
	jg	.L1121
.L1119:
	.loc 1 3739 0
	movl	$0, -28(%ebp)
	.loc 1 3738 0
	jmp	.L1112
.L1121:
	.loc 1 3741 0
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	-36(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	string_append
	.loc 1 3742 0
	jmp	.L1112
.L1117:
.LBB45:
	.loc 1 3750 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 3751 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	consume_count_with_underscores
	movl	%eax, -12(%ebp)
	.loc 1 3753 0
	cmpl	$-1, -12(%ebp)
	je	.L1123
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	testl	%eax, %eax
	je	.L1125
	movl	8(%ebp), %eax
	movl	68(%eax), %eax
	cmpl	-12(%ebp), %eax
	jle	.L1123
.L1125:
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	consume_count_with_underscores
	cmpl	$-1, %eax
	jne	.L1127
.L1123:
	.loc 1 3757 0
	movl	$0, -28(%ebp)
	.loc 1 3758 0
	jmp	.L1112
.L1127:
	.loc 1 3761 0
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	testl	%eax, %eax
	je	.L1128
	.loc 1 3762 0
	movl	8(%ebp), %eax
	movl	64(%eax), %edx
	movl	-12(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	string_append
	jmp	.L1130
.L1128:
	.loc 1 3764 0
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	string_append_template_idx
.L1130:
	.loc 1 3766 0
	movl	$1, -28(%ebp)
	.loc 1 3768 0
	jmp	.L1112
.L1114:
.LBE45:
	.loc 1 3771 0
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_fund_type
	movl	%eax, -28(%ebp)
	.loc 1 3772 0
	cmpl	$0, -20(%ebp)
	jne	.L1112
	.loc 1 3773 0
	movl	-28(%ebp), %eax
	movl	%eax, -20(%ebp)
.L1112:
	.loc 1 3777 0
	cmpl	$0, -28(%ebp)
	je	.L1132
	.loc 1 3779 0
	movl	-52(%ebp), %edx
	movl	-48(%ebp), %eax
	cmpl	%eax, %edx
	je	.L1136
	.loc 1 3781 0
	leal	.LC166@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	string_append
	.loc 1 3782 0
	leal	-52(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	string_appends
	jmp	.L1136
.L1132:
	.loc 1 3786 0
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	string_delete
.L1136:
	.loc 1 3787 0
	leal	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	string_delete
	.loc 1 3789 0
	cmpl	$0, -28(%ebp)
	je	.L1137
	.loc 1 3791 0
	cmpl	$0, -20(%ebp)
	je	.L1139
	movl	-20(%ebp), %edi
	movl	%edi, -92(%ebp)
	jmp	.L1141
.L1139:
	movl	$3, -92(%ebp)
.L1141:
	movl	-92(%ebp), %eax
	movl	%eax, -96(%ebp)
	jmp	.L1142
.L1137:
	.loc 1 3793 0
	movl	$0, -96(%ebp)
.L1142:
	movl	-96(%ebp), %eax
	.loc 1 3794 0
	addl	$144, %esp
	popl	%ebx
	popl	%edi
	popl	%ebp
	ret
.LFE42:
	.size	do_type, .-do_type
	.section	.rodata
.LC203:
	.string	"unsigned"
.LC204:
	.string	"signed"
.LC205:
	.string	"__complex"
.LC206:
	.string	"void"
.LC207:
	.string	"long long"
.LC208:
	.string	"long"
.LC209:
	.string	"int"
.LC210:
	.string	"short"
.LC211:
	.string	"bool"
.LC212:
	.string	"char"
.LC213:
	.string	"wchar_t"
.LC214:
	.string	"long double"
.LC215:
	.string	"double"
.LC216:
	.string	"float"
.LC217:
	.string	"%x"
.LC218:
	.string	"int%u_t"
	.text
	.type	demangle_fund_type, @function
demangle_fund_type:
.LFB43:
	.loc 1 3814 0
	pushl	%ebp
.LCFI171:
	movl	%esp, %ebp
.LCFI172:
	pushl	%edi
.LCFI173:
	pushl	%ebx
.LCFI174:
	subl	$144, %esp
.LCFI175:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	movl	%eax, -76(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -80(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, -84(%ebp)
	.loc 1 3814 0
	movl	%gs:20, %eax
	movl	%eax, -12(%ebp)
	xorl	%eax, %eax
	.loc 1 3815 0
	movl	$0, -44(%ebp)
	.loc 1 3816 0
	movl	$1, -40(%ebp)
	.loc 1 3818 0
	movl	$0, -48(%ebp)
	.loc 1 3820 0
	movl	$3, -36(%ebp)
	.loc 1 3822 0
	leal	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	string_init
	.loc 1 3826 0
	jmp	.L1235
.L1147:
	.loc 1 3828 0
	movl	-80(%ebp), %eax
	movl	(%eax), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	subl	$67, %eax
	movl	%eax, -108(%ebp)
	cmpl	$50, -108(%ebp)
	ja	.L1148
	movl	-108(%ebp), %eax
	sall	$2, %eax
	movl	.L1153@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L1153:
	.long	.L1149@GOTOFF
	.long	.L1148@GOTOFF
	.long	.L1148@GOTOFF
	.long	.L1148@GOTOFF
	.long	.L1148@GOTOFF
	.long	.L1148@GOTOFF
	.long	.L1148@GOTOFF
	.long	.L1150@GOTOFF
	.long	.L1148@GOTOFF
	.long	.L1148@GOTOFF
	.long	.L1148@GOTOFF
	.long	.L1148@GOTOFF
	.long	.L1148@GOTOFF
	.long	.L1148@GOTOFF
	.long	.L1148@GOTOFF
	.long	.L1148@GOTOFF
	.long	.L1151@GOTOFF
	.long	.L1148@GOTOFF
	.long	.L1152@GOTOFF
	.long	.L1149@GOTOFF
	.long	.L1148@GOTOFF
	.long	.L1148@GOTOFF
	.long	.L1148@GOTOFF
	.long	.L1148@GOTOFF
	.long	.L1148@GOTOFF
	.long	.L1148@GOTOFF
	.long	.L1148@GOTOFF
	.long	.L1148@GOTOFF
	.long	.L1148@GOTOFF
	.long	.L1148@GOTOFF
	.long	.L1148@GOTOFF
	.long	.L1148@GOTOFF
	.long	.L1148@GOTOFF
	.long	.L1148@GOTOFF
	.long	.L1148@GOTOFF
	.long	.L1148@GOTOFF
	.long	.L1148@GOTOFF
	.long	.L1148@GOTOFF
	.long	.L1148@GOTOFF
	.long	.L1148@GOTOFF
	.long	.L1148@GOTOFF
	.long	.L1148@GOTOFF
	.long	.L1148@GOTOFF
	.long	.L1148@GOTOFF
	.long	.L1148@GOTOFF
	.long	.L1148@GOTOFF
	.long	.L1148@GOTOFF
	.long	.L1148@GOTOFF
	.long	.L1148@GOTOFF
	.long	.L1148@GOTOFF
	.long	.L1149@GOTOFF
	.text
.L1149:
	.loc 1 3833 0
	movl	-76(%ebp), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L1154
	.loc 1 3835 0
	movl	-84(%ebp), %eax
	movl	(%eax), %edx
	movl	-84(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	je	.L1156
	.loc 1 3836 0
	leal	.LC166@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	string_prepend
.L1156:
	.loc 1 3837 0
	movl	-80(%ebp), %eax
	movl	(%eax), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, (%esp)
	call	demangle_qualifier
	movl	%eax, 4(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	string_prepend
.L1154:
	.loc 1 3839 0
	movl	-80(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	-80(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 3840 0
	jmp	.L1146
.L1152:
	.loc 1 3842 0
	movl	-80(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	-80(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 3843 0
	movl	-84(%ebp), %eax
	movl	(%eax), %edx
	movl	-84(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	je	.L1158
	leal	.LC166@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	string_append
.L1158:
	.loc 1 3844 0
	leal	.LC203@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	string_append
	.loc 1 3845 0
	jmp	.L1146
.L1151:
	.loc 1 3847 0
	movl	-80(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	-80(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 3848 0
	movl	-84(%ebp), %eax
	movl	(%eax), %edx
	movl	-84(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	je	.L1160
	leal	.LC166@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	string_append
.L1160:
	.loc 1 3849 0
	leal	.LC204@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	string_append
	.loc 1 3850 0
	jmp	.L1146
.L1150:
	.loc 1 3852 0
	movl	-80(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	-80(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 3853 0
	movl	-84(%ebp), %eax
	movl	(%eax), %edx
	movl	-84(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	je	.L1162
	leal	.LC166@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	string_append
.L1162:
	.loc 1 3854 0
	leal	.LC205@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	string_append
	.loc 1 3855 0
	jmp	.L1146
.L1148:
	.loc 1 3857 0
	movl	$1, -44(%ebp)
.L1146:
.L1235:
	.loc 1 3826 0
	cmpl	$0, -44(%ebp)
	je	.L1147
	.loc 1 3864 0
	movl	-80(%ebp), %eax
	movl	(%eax), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -104(%ebp)
	cmpl	$120, -104(%ebp)
	ja	.L1165
	movl	-104(%ebp), %eax
	sall	$2, %eax
	movl	.L1182@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L1182:
	.long	.L1183@GOTOFF
	.long	.L1165@GOTOFF
	.long	.L1165@GOTOFF
	.long	.L1165@GOTOFF
	.long	.L1165@GOTOFF
	.long	.L1165@GOTOFF
	.long	.L1165@GOTOFF
	.long	.L1165@GOTOFF
	.long	.L1165@GOTOFF
	.long	.L1165@GOTOFF
	.long	.L1165@GOTOFF
	.long	.L1165@GOTOFF
	.long	.L1165@GOTOFF
	.long	.L1165@GOTOFF
	.long	.L1165@GOTOFF
	.long	.L1165@GOTOFF
	.long	.L1165@GOTOFF
	.long	.L1165@GOTOFF
	.long	.L1165@GOTOFF
	.long	.L1165@GOTOFF
	.long	.L1165@GOTOFF
	.long	.L1165@GOTOFF
	.long	.L1165@GOTOFF
	.long	.L1165@GOTOFF
	.long	.L1165@GOTOFF
	.long	.L1165@GOTOFF
	.long	.L1165@GOTOFF
	.long	.L1165@GOTOFF
	.long	.L1165@GOTOFF
	.long	.L1165@GOTOFF
	.long	.L1165@GOTOFF
	.long	.L1165@GOTOFF
	.long	.L1165@GOTOFF
	.long	.L1165@GOTOFF
	.long	.L1165@GOTOFF
	.long	.L1165@GOTOFF
	.long	.L1165@GOTOFF
	.long	.L1165@GOTOFF
	.long	.L1165@GOTOFF
	.long	.L1165@GOTOFF
	.long	.L1165@GOTOFF
	.long	.L1165@GOTOFF
	.long	.L1165@GOTOFF
	.long	.L1165@GOTOFF
	.long	.L1165@GOTOFF
	.long	.L1165@GOTOFF
	.long	.L1165@GOTOFF
	.long	.L1165@GOTOFF
	.long	.L1167@GOTOFF
	.long	.L1167@GOTOFF
	.long	.L1167@GOTOFF
	.long	.L1167@GOTOFF
	.long	.L1167@GOTOFF
	.long	.L1167@GOTOFF
	.long	.L1167@GOTOFF
	.long	.L1167@GOTOFF
	.long	.L1167@GOTOFF
	.long	.L1167@GOTOFF
	.long	.L1165@GOTOFF
	.long	.L1165@GOTOFF
	.long	.L1165@GOTOFF
	.long	.L1165@GOTOFF
	.long	.L1165@GOTOFF
	.long	.L1165@GOTOFF
	.long	.L1165@GOTOFF
	.long	.L1165@GOTOFF
	.long	.L1165@GOTOFF
	.long	.L1165@GOTOFF
	.long	.L1165@GOTOFF
	.long	.L1165@GOTOFF
	.long	.L1165@GOTOFF
	.long	.L1168@GOTOFF
	.long	.L1165@GOTOFF
	.long	.L1169@GOTOFF
	.long	.L1165@GOTOFF
	.long	.L1165@GOTOFF
	.long	.L1165@GOTOFF
	.long	.L1165@GOTOFF
	.long	.L1165@GOTOFF
	.long	.L1165@GOTOFF
	.long	.L1165@GOTOFF
	.long	.L1165@GOTOFF
	.long	.L1165@GOTOFF
	.long	.L1165@GOTOFF
	.long	.L1165@GOTOFF
	.long	.L1165@GOTOFF
	.long	.L1165@GOTOFF
	.long	.L1165@GOTOFF
	.long	.L1165@GOTOFF
	.long	.L1165@GOTOFF
	.long	.L1165@GOTOFF
	.long	.L1165@GOTOFF
	.long	.L1165@GOTOFF
	.long	.L1165@GOTOFF
	.long	.L1165@GOTOFF
	.long	.L1183@GOTOFF
	.long	.L1165@GOTOFF
	.long	.L1165@GOTOFF
	.long	.L1170@GOTOFF
	.long	.L1171@GOTOFF
	.long	.L1172@GOTOFF
	.long	.L1165@GOTOFF
	.long	.L1173@GOTOFF
	.long	.L1165@GOTOFF
	.long	.L1165@GOTOFF
	.long	.L1174@GOTOFF
	.long	.L1165@GOTOFF
	.long	.L1165@GOTOFF
	.long	.L1175@GOTOFF
	.long	.L1165@GOTOFF
	.long	.L1165@GOTOFF
	.long	.L1165@GOTOFF
	.long	.L1165@GOTOFF
	.long	.L1165@GOTOFF
	.long	.L1176@GOTOFF
	.long	.L1177@GOTOFF
	.long	.L1178@GOTOFF
	.long	.L1165@GOTOFF
	.long	.L1179@GOTOFF
	.long	.L1180@GOTOFF
	.long	.L1181@GOTOFF
	.text
.L1179:
	.loc 1 3870 0
	movl	-80(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	-80(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 3871 0
	movl	-84(%ebp), %eax
	movl	(%eax), %edx
	movl	-84(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	je	.L1184
	leal	.LC166@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	string_append
.L1184:
	.loc 1 3872 0
	leal	.LC206@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	string_append
	.loc 1 3873 0
	jmp	.L1183
.L1181:
	.loc 1 3875 0
	movl	-80(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	-80(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 3876 0
	movl	-84(%ebp), %eax
	movl	(%eax), %edx
	movl	-84(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	je	.L1186
	leal	.LC166@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	string_append
.L1186:
	.loc 1 3877 0
	leal	.LC207@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	string_append
	.loc 1 3878 0
	jmp	.L1183
.L1175:
	.loc 1 3880 0
	movl	-80(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	-80(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 3881 0
	movl	-84(%ebp), %eax
	movl	(%eax), %edx
	movl	-84(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	je	.L1188
	leal	.LC166@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	string_append
.L1188:
	.loc 1 3882 0
	leal	.LC208@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	string_append
	.loc 1 3883 0
	jmp	.L1183
.L1174:
	.loc 1 3885 0
	movl	-80(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	-80(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 3886 0
	movl	-84(%ebp), %eax
	movl	(%eax), %edx
	movl	-84(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	je	.L1190
	leal	.LC166@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	string_append
.L1190:
	.loc 1 3887 0
	leal	.LC209@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	string_append
	.loc 1 3888 0
	jmp	.L1183
.L1177:
	.loc 1 3890 0
	movl	-80(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	-80(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 3891 0
	movl	-84(%ebp), %eax
	movl	(%eax), %edx
	movl	-84(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	je	.L1192
	leal	.LC166@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	string_append
.L1192:
	.loc 1 3892 0
	leal	.LC210@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	string_append
	.loc 1 3893 0
	jmp	.L1183
.L1170:
	.loc 1 3895 0
	movl	-80(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	-80(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 3896 0
	movl	-84(%ebp), %eax
	movl	(%eax), %edx
	movl	-84(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	je	.L1194
	leal	.LC166@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	string_append
.L1194:
	.loc 1 3897 0
	leal	.LC211@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	string_append
	.loc 1 3898 0
	movl	$4, -36(%ebp)
	.loc 1 3899 0
	jmp	.L1183
.L1171:
	.loc 1 3901 0
	movl	-80(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	-80(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 3902 0
	movl	-84(%ebp), %eax
	movl	(%eax), %edx
	movl	-84(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	je	.L1196
	leal	.LC166@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	string_append
.L1196:
	.loc 1 3903 0
	leal	.LC212@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	string_append
	.loc 1 3904 0
	movl	$5, -36(%ebp)
	.loc 1 3905 0
	jmp	.L1183
.L1180:
	.loc 1 3907 0
	movl	-80(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	-80(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 3908 0
	movl	-84(%ebp), %eax
	movl	(%eax), %edx
	movl	-84(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	je	.L1198
	leal	.LC166@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	string_append
.L1198:
	.loc 1 3909 0
	leal	.LC213@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	string_append
	.loc 1 3910 0
	movl	$5, -36(%ebp)
	.loc 1 3911 0
	jmp	.L1183
.L1176:
	.loc 1 3913 0
	movl	-80(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	-80(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 3914 0
	movl	-84(%ebp), %eax
	movl	(%eax), %edx
	movl	-84(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	je	.L1200
	leal	.LC166@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	string_append
.L1200:
	.loc 1 3915 0
	leal	.LC214@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	string_append
	.loc 1 3916 0
	movl	$6, -36(%ebp)
	.loc 1 3917 0
	jmp	.L1183
.L1172:
	.loc 1 3919 0
	movl	-80(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	-80(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 3920 0
	movl	-84(%ebp), %eax
	movl	(%eax), %edx
	movl	-84(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	je	.L1202
	leal	.LC166@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	string_append
.L1202:
	.loc 1 3921 0
	leal	.LC215@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	string_append
	.loc 1 3922 0
	movl	$6, -36(%ebp)
	.loc 1 3923 0
	jmp	.L1183
.L1173:
	.loc 1 3925 0
	movl	-80(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	-80(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 3926 0
	movl	-84(%ebp), %eax
	movl	(%eax), %edx
	movl	-84(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	je	.L1204
	leal	.LC166@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	string_append
.L1204:
	.loc 1 3927 0
	leal	.LC216@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	string_append
	.loc 1 3928 0
	movl	$6, -36(%ebp)
	.loc 1 3929 0
	jmp	.L1183
.L1168:
	.loc 1 3931 0
	movl	-80(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	-80(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 3932 0
	movl	-80(%ebp), %eax
	movl	(%eax), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edx
	movl	_sch_istable@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	andl	$4, %eax
	testl	%eax, %eax
	jne	.L1169
	.loc 1 3934 0
	movl	$0, -40(%ebp)
	.loc 1 3935 0
	jmp	.L1183
.L1169:
	.loc 1 3938 0
	movl	-80(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	-80(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 3939 0
	movl	-80(%ebp), %eax
	movl	(%eax), %eax
	movzbl	(%eax), %eax
	cmpb	$95, %al
	jne	.L1207
.LBB46:
	.loc 1 3942 0
	movl	-80(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	-80(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 3943 0
	movl	$0, -32(%ebp)
	.loc 1 3944 0
	jmp	.L1209
.L1210:
	.loc 1 3946 0
	movl	-32(%ebp), %edx
	movl	-80(%ebp), %eax
	movl	(%eax), %eax
	movzbl	(%eax), %eax
	movb	%al, -22(%ebp,%edx)
	.loc 1 3945 0
	movl	-80(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	-80(%ebp), %eax
	movl	%edx, (%eax)
	addl	$1, -32(%ebp)
.L1209:
	.loc 1 3944 0
	cmpl	$8, -32(%ebp)
	jg	.L1211
	movl	-80(%ebp), %eax
	movl	(%eax), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L1211
	movl	-80(%ebp), %eax
	movl	(%eax), %eax
	movzbl	(%eax), %eax
	cmpb	$95, %al
	jne	.L1210
.L1211:
	.loc 1 3947 0
	movl	-80(%ebp), %eax
	movl	(%eax), %eax
	movzbl	(%eax), %eax
	cmpb	$95, %al
	je	.L1214
	.loc 1 3949 0
	movl	$0, -40(%ebp)
	.loc 1 3950 0
	jmp	.L1183
.L1214:
	.loc 1 3952 0
	movl	-32(%ebp), %eax
	movb	$0, -22(%ebp,%eax)
	.loc 1 3953 0
	movl	-80(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	-80(%ebp), %eax
	movl	%edx, (%eax)
	jmp	.L1216
.L1207:
.LBE46:
	.loc 1 3957 0
	movl	-80(%ebp), %eax
	movl	(%eax), %eax
	movl	$2, 8(%esp)
	movl	%eax, 4(%esp)
	leal	-22(%ebp), %eax
	movl	%eax, (%esp)
	call	strncpy@PLT
	.loc 1 3958 0
	movb	$0, -20(%ebp)
	.loc 1 3959 0
	movl	-80(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -100(%ebp)
	movl	-80(%ebp), %eax
	movl	(%eax), %eax
	movl	$-1, %ecx
	movl	%eax, -112(%ebp)
	movl	$0, %eax
	cld
	movl	-112(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	cmpl	$1, %eax
	ja	.L1217
	movl	-80(%ebp), %eax
	movl	(%eax), %eax
	movl	$-1, %ecx
	movl	%eax, -116(%ebp)
	movl	$0, %eax
	cld
	movl	-116(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	movl	%eax, -96(%ebp)
	jmp	.L1219
.L1217:
	movl	$2, -96(%ebp)
.L1219:
	movl	-100(%ebp), %edx
	addl	-96(%ebp), %edx
	movl	-80(%ebp), %eax
	movl	%edx, (%eax)
.L1216:
	.loc 1 3961 0
	leal	-48(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC217@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-22(%ebp), %eax
	movl	%eax, (%esp)
	call	sscanf@PLT
	.loc 1 3962 0
	movl	-48(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC218@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-22(%ebp), %eax
	movl	%eax, (%esp)
	call	sprintf@PLT
	.loc 1 3963 0
	movl	-84(%ebp), %eax
	movl	(%eax), %edx
	movl	-84(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	je	.L1220
	leal	.LC166@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	string_append
.L1220:
	.loc 1 3964 0
	leal	-22(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	string_append
	.loc 1 3965 0
	jmp	.L1183
.L1167:
.LBB47:
	.loc 1 3980 0
	movl	-76(%ebp), %eax
	movl	%eax, (%esp)
	call	register_Btype
	movl	%eax, -28(%ebp)
	.loc 1 3982 0
	leal	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	string_init
	.loc 1 3983 0
	leal	-72(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-80(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-76(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_class_name
	testl	%eax, %eax
	je	.L1222
	.loc 1 3984 0
	movl	-72(%ebp), %edx
	movl	-68(%ebp), %eax
	cmpl	%eax, %edx
	je	.L1224
	movl	-68(%ebp), %eax
	movl	%eax, %edx
	movl	-72(%ebp), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, -92(%ebp)
	jmp	.L1226
.L1224:
	movl	$0, -92(%ebp)
.L1226:
	movl	-72(%ebp), %edx
	movl	-28(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-92(%ebp), %edi
	movl	%edi, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-76(%ebp), %eax
	movl	%eax, (%esp)
	call	remember_Btype
	.loc 1 3985 0
	movl	-84(%ebp), %eax
	movl	(%eax), %edx
	movl	-84(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	je	.L1227
	leal	.LC166@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	string_append
.L1227:
	.loc 1 3986 0
	leal	-72(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	string_appends
	jmp	.L1229
.L1222:
	.loc 1 3989 0
	movl	$0, -40(%ebp)
.L1229:
	.loc 1 3990 0
	leal	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	string_delete
	.loc 1 3991 0
	jmp	.L1183
.L1178:
.LBE47:
	.loc 1 3995 0
	movl	$1, 20(%esp)
	movl	$1, 16(%esp)
	movl	$0, 12(%esp)
	leal	-60(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-80(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-76(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_template
	movl	%eax, -40(%ebp)
	.loc 1 3996 0
	leal	-60(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	string_appends
	.loc 1 3997 0
	jmp	.L1183
.L1165:
	.loc 1 4000 0
	movl	$0, -40(%ebp)
.L1183:
	.loc 1 4004 0
	cmpl	$0, -40(%ebp)
	je	.L1230
	movl	-36(%ebp), %eax
	movl	%eax, -88(%ebp)
	jmp	.L1232
.L1230:
	movl	$0, -88(%ebp)
.L1232:
	movl	-88(%ebp), %eax
	.loc 1 4005 0
	movl	-12(%ebp), %edx
	xorl	%gs:20, %edx
	je	.L1234
	call	__stack_chk_fail_local
.L1234:
	addl	$144, %esp
	popl	%ebx
	popl	%edi
	popl	%ebp
	ret
.LFE43:
	.size	demangle_fund_type, .-demangle_fund_type
	.section	.rodata
.LC219:
	.string	"-2147483648"
.LC220:
	.string	"U"
	.text
	.type	do_hpacc_template_const_value, @function
do_hpacc_template_const_value:
.LFB44:
	.loc 1 4016 0
	pushl	%ebp
.LCFI176:
	movl	%esp, %ebp
.LCFI177:
	pushl	%ebx
.LCFI178:
	subl	$36, %esp
.LCFI179:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4019 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movzbl	(%eax), %eax
	cmpb	$85, %al
	je	.L1237
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movzbl	(%eax), %eax
	cmpb	$83, %al
	je	.L1237
	.loc 1 4020 0
	movl	$0, -28(%ebp)
	jmp	.L1240
.L1237:
	.loc 1 4022 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movzbl	(%eax), %eax
	cmpb	$85, %al
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -8(%ebp)
	.loc 1 4024 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 4026 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -24(%ebp)
	cmpl	$78, -24(%ebp)
	je	.L1243
	cmpl	$80, -24(%ebp)
	je	.L1244
	cmpl	$77, -24(%ebp)
	je	.L1242
	jmp	.L1241
.L1243:
	.loc 1 4029 0
	leal	.LC30@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	string_append
.L1244:
	.loc 1 4032 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 4044 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edx
	movl	_sch_istable@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L1245
	jmp	.L1247
.L1242:
	.loc 1 4036 0
	leal	.LC219@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	string_append
	.loc 1 4037 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 4038 0
	movl	$1, -28(%ebp)
	jmp	.L1240
.L1241:
	.loc 1 4040 0
	movl	$0, -28(%ebp)
	jmp	.L1240
.L1245:
	.loc 1 4045 0
	movl	$0, -28(%ebp)
	jmp	.L1240
.L1248:
	.loc 1 4051 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movzbl	(%eax), %eax
	movb	%al, char_str@GOTOFF(%ebx)
	.loc 1 4052 0
	leal	char_str@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	string_append
	.loc 1 4053 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
.L1247:
	.loc 1 4049 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edx
	movl	_sch_istable@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	andl	$4, %eax
	testl	%eax, %eax
	jne	.L1248
	.loc 1 4056 0
	cmpl	$0, -8(%ebp)
	je	.L1250
	.loc 1 4057 0
	leal	.LC220@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	string_append
.L1250:
	.loc 1 4062 0
	movl	$1, -28(%ebp)
.L1240:
	movl	-28(%ebp), %eax
	.loc 1 4063 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE44:
	.size	do_hpacc_template_const_value, .-do_hpacc_template_const_value
	.type	do_hpacc_template_literal, @function
do_hpacc_template_literal:
.LFB45:
	.loc 1 4073 0
	pushl	%ebp
.LCFI180:
	movl	%esp, %ebp
.LCFI181:
	pushl	%edi
.LCFI182:
	pushl	%esi
.LCFI183:
	pushl	%ebx
.LCFI184:
	subl	$44, %esp
.LCFI185:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4074 0
	movl	$0, -24(%ebp)
	.loc 1 4078 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movzbl	(%eax), %eax
	cmpb	$65, %al
	je	.L1254
	.loc 1 4079 0
	movl	$0, -32(%ebp)
	jmp	.L1256
.L1254:
	.loc 1 4081 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 4083 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	consume_count
	movl	%eax, -24(%ebp)
	.loc 1 4085 0
	cmpl	$0, -24(%ebp)
	jg	.L1257
	.loc 1 4086 0
	movl	$0, -32(%ebp)
	jmp	.L1256
.L1257:
	.loc 1 4090 0
	leal	.LC78@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	string_append
	.loc 1 4093 0
	movl	-24(%ebp), %eax
	addl	$1, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, -20(%ebp)
	.loc 1 4094 0
	movl	-24(%ebp), %ecx
	movl	12(%ebp), %eax
	movl	(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%eax, %edi
	movl	%edx, %esi
	cld
	rep
	movsb
	.loc 1 4095 0
	movl	-24(%ebp), %eax
	addl	-20(%ebp), %eax
	movb	$0, (%eax)
	.loc 1 4097 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	cplus_demangle@PLT
	movl	%eax, -16(%ebp)
	.loc 1 4099 0
	cmpl	$0, -16(%ebp)
	je	.L1259
	.loc 1 4101 0
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	string_append
	.loc 1 4102 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	jmp	.L1261
.L1259:
	.loc 1 4106 0
	movl	12(%ebp), %eax
	movl	(%eax), %edx
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	string_appendn
.L1261:
	.loc 1 4108 0
	movl	12(%ebp), %eax
	movl	(%eax), %edx
	movl	-24(%ebp), %eax
	addl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 4109 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 4111 0
	movl	$1, -32(%ebp)
.L1256:
	movl	-32(%ebp), %eax
	.loc 1 4112 0
	addl	$44, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE45:
	.size	do_hpacc_template_literal, .-do_hpacc_template_literal
	.type	snarf_numeric_literal, @function
snarf_numeric_literal:
.LFB46:
	.loc 1 4118 0
	pushl	%ebp
.LCFI186:
	movl	%esp, %ebp
.LCFI187:
	pushl	%ebx
.LCFI188:
	subl	$20, %esp
.LCFI189:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4119 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movzbl	(%eax), %eax
	cmpb	$45, %al
	jne	.L1264
	.loc 1 4121 0
	movb	$45, char_str@GOTOFF(%ebx)
	.loc 1 4122 0
	leal	char_str@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	string_append
	.loc 1 4123 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	jmp	.L1266
.L1264:
	.loc 1 4125 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movzbl	(%eax), %eax
	cmpb	$43, %al
	jne	.L1266
	.loc 1 4126 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
.L1266:
	.loc 1 4128 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edx
	movl	_sch_istable@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	andl	$4, %eax
	testl	%eax, %eax
	jne	.L1271
	.loc 1 4129 0
	movl	$0, -8(%ebp)
	jmp	.L1270
.L1272:
	.loc 1 4133 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movzbl	(%eax), %eax
	movb	%al, char_str@GOTOFF(%ebx)
	.loc 1 4134 0
	leal	char_str@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	string_append
	.loc 1 4135 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
.L1271:
	.loc 1 4131 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edx
	movl	_sch_istable@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	andl	$4, %eax
	testl	%eax, %eax
	jne	.L1272
	.loc 1 4138 0
	movl	$1, -8(%ebp)
.L1270:
	movl	-8(%ebp), %eax
	.loc 1 4139 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE46:
	.size	snarf_numeric_literal, .-snarf_numeric_literal
	.type	do_arg, @function
do_arg:
.LFB47:
	.loc 1 4150 0
	pushl	%ebp
.LCFI190:
	movl	%esp, %ebp
.LCFI191:
	pushl	%ebx
.LCFI192:
	subl	$36, %esp
.LCFI193:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4153 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 4155 0
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	string_init
	.loc 1 4157 0
	movl	8(%ebp), %eax
	movl	80(%eax), %eax
	testl	%eax, %eax
	jle	.L1276
	.loc 1 4159 0
	movl	8(%ebp), %eax
	movl	80(%eax), %eax
	leal	-1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 80(%eax)
	.loc 1 4161 0
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	testl	%eax, %eax
	jne	.L1278
	.loc 1 4162 0
	movl	$0, -24(%ebp)
	jmp	.L1280
.L1278:
	.loc 1 4165 0
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	string_appends
	.loc 1 4166 0
	movl	$1, -24(%ebp)
	jmp	.L1280
.L1276:
	.loc 1 4169 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movzbl	(%eax), %eax
	cmpb	$110, %al
	jne	.L1281
	.loc 1 4172 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 4173 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	consume_count
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 80(%eax)
	.loc 1 4175 0
	movl	8(%ebp), %eax
	movl	80(%eax), %eax
	testl	%eax, %eax
	jg	.L1283
	.loc 1 4177 0
	movl	$0, -24(%ebp)
	jmp	.L1280
.L1283:
	.loc 1 4179 0
	movl	8(%ebp), %eax
	movl	80(%eax), %eax
	cmpl	$9, %eax
	jle	.L1285
	.loc 1 4181 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movzbl	(%eax), %eax
	cmpb	$95, %al
	je	.L1287
	.loc 1 4184 0
	movl	$0, -24(%ebp)
	jmp	.L1280
.L1287:
	.loc 1 4186 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
.L1285:
	.loc 1 4190 0
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	do_arg
	movl	%eax, -24(%ebp)
	jmp	.L1280
.L1281:
	.loc 1 4197 0
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	testl	%eax, %eax
	je	.L1289
	.loc 1 4198 0
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, (%esp)
	call	string_clear
	jmp	.L1291
.L1289:
	.loc 1 4201 0
	movl	$12, (%esp)
	call	xmalloc@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 76(%eax)
	.loc 1 4202 0
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, (%esp)
	call	string_init
.L1291:
	.loc 1 4205 0
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	do_type
	testl	%eax, %eax
	jne	.L1292
	.loc 1 4206 0
	movl	$0, -24(%ebp)
	jmp	.L1280
.L1292:
	.loc 1 4208 0
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	string_appends
	.loc 1 4210 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, %edx
	movl	-8(%ebp), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, 8(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	remember_type
	.loc 1 4211 0
	movl	$1, -24(%ebp)
.L1280:
	movl	-24(%ebp), %eax
	.loc 1 4212 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE47:
	.size	do_arg, .-do_arg
	.type	remember_type, @function
remember_type:
.LFB48:
	.loc 1 4219 0
	pushl	%ebp
.LCFI194:
	movl	%esp, %ebp
.LCFI195:
	pushl	%edi
.LCFI196:
	pushl	%esi
.LCFI197:
	pushl	%ebx
.LCFI198:
	subl	$28, %esp
.LCFI199:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4222 0
	movl	8(%ebp), %eax
	movl	72(%eax), %eax
	testl	%eax, %eax
	jne	.L1302
	.loc 1 4225 0
	movl	8(%ebp), %eax
	movl	32(%eax), %edx
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	cmpl	%eax, %edx
	jl	.L1298
	.loc 1 4227 0
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	testl	%eax, %eax
	jne	.L1300
	.loc 1 4229 0
	movl	8(%ebp), %eax
	movl	$3, 36(%eax)
	.loc 1 4230 0
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	sall	$2, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 4(%eax)
	jmp	.L1298
.L1300:
	.loc 1 4235 0
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	leal	(%eax,%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 36(%eax)
	.loc 1 4236 0
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	leal	0(,%eax,4), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	xrealloc@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 4(%eax)
.L1298:
	.loc 1 4241 0
	movl	16(%ebp), %eax
	addl	$1, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, -16(%ebp)
	.loc 1 4242 0
	movl	16(%ebp), %ecx
	movl	-16(%ebp), %eax
	movl	12(%ebp), %edx
	movl	%eax, %edi
	movl	%edx, %esi
	cld
	rep
	movsb
	.loc 1 4243 0
	movl	16(%ebp), %eax
	addl	-16(%ebp), %eax
	movb	$0, (%eax)
	.loc 1 4244 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	32(%eax), %ecx
	movl	%ecx, %eax
	sall	$2, %eax
	addl	%eax, %edx
	movl	-16(%ebp), %eax
	movl	%eax, (%edx)
	leal	1(%ecx), %edx
	movl	8(%ebp), %eax
	movl	%edx, 32(%eax)
.L1302:
	.loc 1 4245 0
	addl	$28, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE48:
	.size	remember_type, .-remember_type
	.type	remember_Ktype, @function
remember_Ktype:
.LFB49:
	.loc 1 4254 0
	pushl	%ebp
.LCFI200:
	movl	%esp, %ebp
.LCFI201:
	pushl	%edi
.LCFI202:
	pushl	%esi
.LCFI203:
	pushl	%ebx
.LCFI204:
	subl	$28, %esp
.LCFI205:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4257 0
	movl	8(%ebp), %eax
	movl	16(%eax), %edx
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	cmpl	%eax, %edx
	jl	.L1304
	.loc 1 4259 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	testl	%eax, %eax
	jne	.L1306
	.loc 1 4261 0
	movl	8(%ebp), %eax
	movl	$5, 24(%eax)
	.loc 1 4262 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	sall	$2, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 8(%eax)
	jmp	.L1304
.L1306:
	.loc 1 4267 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	leal	(%eax,%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 24(%eax)
	.loc 1 4268 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	leal	0(,%eax,4), %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	xrealloc@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 8(%eax)
.L1304:
	.loc 1 4273 0
	movl	16(%ebp), %eax
	addl	$1, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, -16(%ebp)
	.loc 1 4274 0
	movl	16(%ebp), %ecx
	movl	-16(%ebp), %eax
	movl	12(%ebp), %edx
	movl	%eax, %edi
	movl	%edx, %esi
	cld
	rep
	movsb
	.loc 1 4275 0
	movl	16(%ebp), %eax
	addl	-16(%ebp), %eax
	movb	$0, (%eax)
	.loc 1 4276 0
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	8(%ebp), %eax
	movl	16(%eax), %ecx
	movl	%ecx, %eax
	sall	$2, %eax
	addl	%eax, %edx
	movl	-16(%ebp), %eax
	movl	%eax, (%edx)
	leal	1(%ecx), %edx
	movl	8(%ebp), %eax
	movl	%edx, 16(%eax)
	.loc 1 4277 0
	addl	$28, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE49:
	.size	remember_Ktype, .-remember_Ktype
	.type	register_Btype, @function
register_Btype:
.LFB50:
	.loc 1 4286 0
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
	.loc 1 4289 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	cmpl	%eax, %edx
	jl	.L1310
	.loc 1 4291 0
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	testl	%eax, %eax
	jne	.L1312
	.loc 1 4293 0
	movl	8(%ebp), %eax
	movl	$5, 28(%eax)
	.loc 1 4294 0
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	sall	$2, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 12(%eax)
	jmp	.L1310
.L1312:
	.loc 1 4299 0
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	leal	(%eax,%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 28(%eax)
	.loc 1 4300 0
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	leal	0(,%eax,4), %edx
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	xrealloc@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 12(%eax)
.L1310:
	.loc 1 4305 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -8(%ebp)
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 20(%eax)
	.loc 1 4306 0
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	-8(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	$0, (%eax)
	.loc 1 4307 0
	movl	-8(%ebp), %eax
	.loc 1 4308 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE50:
	.size	register_Btype, .-register_Btype
	.type	remember_Btype, @function
remember_Btype:
.LFB51:
	.loc 1 4317 0
	pushl	%ebp
.LCFI210:
	movl	%esp, %ebp
.LCFI211:
	pushl	%edi
.LCFI212:
	pushl	%esi
.LCFI213:
	pushl	%ebx
.LCFI214:
	subl	$28, %esp
.LCFI215:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4320 0
	movl	16(%ebp), %eax
	addl	$1, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, -16(%ebp)
	.loc 1 4321 0
	movl	16(%ebp), %ecx
	movl	-16(%ebp), %eax
	movl	12(%ebp), %edx
	movl	%eax, %edi
	movl	%edx, %esi
	cld
	rep
	movsb
	.loc 1 4322 0
	movl	16(%ebp), %eax
	addl	-16(%ebp), %eax
	movb	$0, (%eax)
	.loc 1 4323 0
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	20(%ebp), %eax
	sall	$2, %eax
	addl	%eax, %edx
	movl	-16(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 4324 0
	addl	$28, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE51:
	.size	remember_Btype, .-remember_Btype
	.type	forget_B_and_K_types, @function
forget_B_and_K_types:
.LFB52:
	.loc 1 4330 0
	pushl	%ebp
.LCFI216:
	movl	%esp, %ebp
.LCFI217:
	pushl	%ebx
.LCFI218:
	subl	$20, %esp
.LCFI219:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4333 0
	jmp	.L1327
.L1319:
	.loc 1 4335 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	leal	-1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 16(%eax)
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 4336 0
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	-8(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1318
	.loc 1 4338 0
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	-8(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 4339 0
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	-8(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	$0, (%eax)
.L1318:
.L1327:
	.loc 1 4333 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	jg	.L1319
	.loc 1 4343 0
	jmp	.L1328
.L1323:
	.loc 1 4345 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	leal	-1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 20(%eax)
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 4346 0
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	-8(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1322
	.loc 1 4348 0
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	-8(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 4349 0
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	-8(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	$0, (%eax)
.L1322:
.L1328:
	.loc 1 4343 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	jg	.L1323
	.loc 1 4352 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE52:
	.size	forget_B_and_K_types, .-forget_B_and_K_types
	.type	forget_types, @function
forget_types:
.LFB53:
	.loc 1 4358 0
	pushl	%ebp
.LCFI220:
	movl	%esp, %ebp
.LCFI221:
	pushl	%ebx
.LCFI222:
	subl	$20, %esp
.LCFI223:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4361 0
	jmp	.L1335
.L1331:
	.loc 1 4363 0
	movl	8(%ebp), %eax
	movl	32(%eax), %eax
	leal	-1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 32(%eax)
	movl	8(%ebp), %eax
	movl	32(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 4364 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	-8(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1330
	.loc 1 4366 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	-8(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 4367 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	-8(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	$0, (%eax)
.L1330:
.L1335:
	.loc 1 4361 0
	movl	8(%ebp), %eax
	movl	32(%eax), %eax
	testl	%eax, %eax
	jg	.L1331
	.loc 1 4370 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE53:
	.size	forget_types, .-forget_types
	.section	.rodata
.LC221:
	.string	"..."
	.text
	.type	demangle_args, @function
demangle_args:
.LFB54:
	.loc 1 4419 0
	pushl	%ebp
.LCFI224:
	movl	%esp, %ebp
.LCFI225:
	pushl	%ebx
.LCFI226:
	subl	$52, %esp
.LCFI227:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4421 0
	movl	$0, -12(%ebp)
	.loc 1 4427 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L1398
	.loc 1 4429 0
	leal	.LC171@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	string_append
	.loc 1 4430 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L1398
	.loc 1 4432 0
	leal	.LC206@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	string_append
	.loc 1 4436 0
	jmp	.L1398
.L1341:
	.loc 1 4439 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movzbl	(%eax), %eax
	cmpb	$78, %al
	je	.L1342
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movzbl	(%eax), %eax
	cmpb	$84, %al
	jne	.L1344
.L1342:
	.loc 1 4441 0
	movl	12(%ebp), %eax
	movl	(%eax), %edx
	movzbl	(%edx), %eax
	movb	%al, -5(%ebp)
	addl	$1, %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 4443 0
	cmpb	$78, -5(%ebp)
	jne	.L1345
	.loc 1 4445 0
	leal	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_count
	testl	%eax, %eax
	jne	.L1350
	.loc 1 4447 0
	movl	$0, -40(%ebp)
	jmp	.L1349
.L1345:
	.loc 1 4452 0
	movl	$1, -16(%ebp)
.L1350:
	.loc 1 4454 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	andl	$4096, %eax
	testl	%eax, %eax
	jne	.L1351
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	andl	$2048, %eax
	testl	%eax, %eax
	jne	.L1351
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L1354
.L1351:
	movl	8(%ebp), %eax
	movl	32(%eax), %eax
	cmpl	$9, %eax
	jle	.L1354
	.loc 1 4462 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	consume_count
	movl	%eax, -20(%ebp)
	movl	-20(%ebp), %eax
	testl	%eax, %eax
	jg	.L1358
	.loc 1 4464 0
	movl	$0, -40(%ebp)
	jmp	.L1349
.L1354:
	.loc 1 4469 0
	leal	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_count
	testl	%eax, %eax
	jne	.L1358
	.loc 1 4471 0
	movl	$0, -40(%ebp)
	jmp	.L1349
.L1358:
	.loc 1 4474 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	andl	$1024, %eax
	testl	%eax, %eax
	jne	.L1360
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	andl	$2048, %eax
	testl	%eax, %eax
	jne	.L1360
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	andl	$4096, %eax
	testl	%eax, %eax
	jne	.L1360
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L1364
.L1360:
	.loc 1 4476 0
	movl	-20(%ebp), %eax
	subl	$1, %eax
	movl	%eax, -20(%ebp)
.L1364:
	.loc 1 4480 0
	movl	-20(%ebp), %eax
	testl	%eax, %eax
	js	.L1365
	movl	8(%ebp), %eax
	movl	32(%eax), %edx
	movl	-20(%ebp), %eax
	cmpl	%eax, %edx
	jg	.L1368
.L1365:
	.loc 1 4482 0
	movl	$0, -40(%ebp)
	jmp	.L1349
.L1369:
	.loc 1 4486 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	-20(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 4487 0
	cmpl	$0, -12(%ebp)
	je	.L1370
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L1370
	.loc 1 4489 0
	leal	.LC110@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	string_append
.L1370:
	.loc 1 4491 0
	leal	-36(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	do_arg
	testl	%eax, %eax
	jne	.L1373
	.loc 1 4493 0
	movl	$0, -40(%ebp)
	jmp	.L1349
.L1373:
	.loc 1 4495 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L1375
	.loc 1 4497 0
	leal	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	string_appends
.L1375:
	.loc 1 4499 0
	leal	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	string_delete
	.loc 1 4500 0
	movl	$1, -12(%ebp)
.L1368:
	.loc 1 4484 0
	movl	8(%ebp), %eax
	movl	80(%eax), %eax
	testl	%eax, %eax
	jg	.L1369
	movl	-16(%ebp), %eax
	subl	$1, %eax
	movl	%eax, -16(%ebp)
	movl	-16(%ebp), %eax
	testl	%eax, %eax
	jns	.L1369
	.loc 1 4439 0
	jmp	.L1340
.L1344:
	.loc 1 4505 0
	cmpl	$0, -12(%ebp)
	je	.L1379
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L1379
	.loc 1 4506 0
	leal	.LC110@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	string_append
.L1379:
	.loc 1 4507 0
	leal	-36(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	do_arg
	testl	%eax, %eax
	jne	.L1382
	.loc 1 4508 0
	movl	$0, -40(%ebp)
	jmp	.L1349
.L1382:
	.loc 1 4509 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L1384
	.loc 1 4510 0
	leal	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	string_appends
.L1384:
	.loc 1 4511 0
	leal	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	string_delete
	.loc 1 4512 0
	movl	$1, -12(%ebp)
.L1340:
.L1398:
	.loc 1 4436 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movzbl	(%eax), %eax
	cmpb	$95, %al
	je	.L1386
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L1386
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movzbl	(%eax), %eax
	cmpb	$101, %al
	jne	.L1341
.L1386:
	movl	8(%ebp), %eax
	movl	80(%eax), %eax
	testl	%eax, %eax
	jg	.L1341
	.loc 1 4516 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movzbl	(%eax), %eax
	cmpb	$101, %al
	jne	.L1390
	.loc 1 4518 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 4519 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L1390
	.loc 1 4521 0
	cmpl	$0, -12(%ebp)
	je	.L1393
	.loc 1 4523 0
	leal	.LC184@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	string_append
.L1393:
	.loc 1 4525 0
	leal	.LC221@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	string_append
.L1390:
	.loc 1 4529 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L1395
	.loc 1 4531 0
	leal	.LC172@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	string_append
.L1395:
	.loc 1 4533 0
	movl	$1, -40(%ebp)
.L1349:
	movl	-40(%ebp), %eax
	.loc 1 4534 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE54:
	.size	demangle_args, .-demangle_args
	.type	demangle_nested_args, @function
demangle_nested_args:
.LFB55:
	.loc 1 4544 0
	pushl	%ebp
.LCFI228:
	movl	%esp, %ebp
.LCFI229:
	subl	$40, %esp
.LCFI230:
	.loc 1 4553 0
	movl	8(%ebp), %eax
	movl	72(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 72(%eax)
	.loc 1 4557 0
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 4558 0
	movl	8(%ebp), %eax
	movl	80(%eax), %eax
	movl	%eax, -4(%ebp)
	.loc 1 4559 0
	movl	8(%ebp), %eax
	movl	$0, 76(%eax)
	.loc 1 4560 0
	movl	8(%ebp), %eax
	movl	$0, 80(%eax)
	.loc 1 4563 0
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_args
	movl	%eax, -8(%ebp)
	.loc 1 4566 0
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	testl	%eax, %eax
	je	.L1400
	.loc 1 4567 0
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, (%esp)
	call	string_delete
.L1400:
	.loc 1 4568 0
	movl	8(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 76(%edx)
	.loc 1 4569 0
	movl	8(%ebp), %eax
	movl	72(%eax), %eax
	leal	-1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 72(%eax)
	.loc 1 4570 0
	movl	8(%ebp), %edx
	movl	-4(%ebp), %eax
	movl	%eax, 80(%edx)
	.loc 1 4572 0
	movl	-8(%ebp), %eax
	.loc 1 4573 0
	leave
	ret
.LFE55:
	.size	demangle_nested_args, .-demangle_nested_args
	.section	.rodata
.LC222:
	.string	"__ct"
.LC223:
	.string	"__dt"
	.text
	.type	demangle_function_name, @function
demangle_function_name:
.LFB56:
	.loc 1 4581 0
	pushl	%ebp
.LCFI231:
	movl	%esp, %ebp
.LCFI232:
	pushl	%edi
.LCFI233:
	pushl	%esi
.LCFI234:
	pushl	%ebx
.LCFI235:
	subl	$140, %esp
.LCFI236:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4586 0
	movl	20(%ebp), %edx
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	subl	%eax, %edx
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	string_appendn
	.loc 1 4587 0
	movl	$1, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	string_need
	.loc 1 4588 0
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movb	$0, (%eax)
	.loc 1 4594 0
	movl	20(%ebp), %edx
	addl	$2, %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 4600 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	andl	$4096, %eax
	testl	%eax, %eax
	je	.L1404
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movzbl	(%eax), %eax
	cmpb	$88, %al
	jne	.L1404
	.loc 1 4602 0
	movl	16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$0, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_arm_hp_template
.L1404:
	.loc 1 4606 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	andl	$1024, %eax
	testl	%eax, %eax
	jne	.L1407
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	andl	$2048, %eax
	testl	%eax, %eax
	jne	.L1407
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	andl	$4096, %eax
	testl	%eax, %eax
	jne	.L1407
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L1411
.L1407:
	.loc 1 4614 0
	movl	16(%ebp), %eax
	movl	(%eax), %edx
	leal	.LC222@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L1412
	.loc 1 4616 0
	movl	8(%ebp), %eax
	movl	40(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 40(%eax)
	.loc 1 4617 0
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	string_clear
	.loc 1 4618 0
	jmp	.L1468
.L1412:
	.loc 1 4620 0
	movl	16(%ebp), %eax
	movl	(%eax), %edx
	leal	.LC223@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L1411
	.loc 1 4622 0
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 44(%eax)
	.loc 1 4623 0
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	string_clear
	.loc 1 4624 0
	jmp	.L1468
.L1411:
	.loc 1 4628 0
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	cmpl	$2, %eax
	jle	.L1416
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	movzbl	(%eax), %eax
	cmpb	$111, %al
	jne	.L1416
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	cmpb	$112, %al
	jne	.L1416
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	addl	$2, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, 4(%esp)
	leal	cplus_markers@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	strchr@PLT
	testl	%eax, %eax
	je	.L1416
	.loc 1 4634 0
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	%edx, %esi
	subl	%eax, %esi
	movl	%esi, %eax
	cmpl	$9, %eax
	jle	.L1421
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	addl	$3, %eax
	movl	%eax, -48(%ebp)
	leal	.LC155@GOTOFF(%ebx), %edi
	movl	%edi, -52(%ebp)
	movl	$7, -56(%ebp)
	cld
	movl	-48(%ebp), %esi
	movl	-52(%ebp), %edi
	movl	-56(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1421
	.loc 1 4637 0
	movl	$0, -24(%ebp)
	jmp	.L1424
.L1425:
.LBB48:
	.loc 1 4639 0
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	%edx, %esi
	subl	%eax, %esi
	movl	%esi, %eax
	subl	$10, %eax
	movl	%eax, -20(%ebp)
	.loc 1 4640 0
	movl	-24(%ebp), %edx
	leal	optable@GOTOFF(%ebx), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	(%eax,%ecx), %eax
	movl	$-1, %ecx
	movl	%eax, -60(%ebp)
	movl	$0, %eax
	cld
	movl	-60(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	cmpl	-20(%ebp), %eax
	jne	.L1426
	movl	-20(%ebp), %edi
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	leal	10(%eax), %esi
	movl	-24(%ebp), %edx
	leal	optable@GOTOFF(%ebx), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	(%eax,%ecx), %eax
	movl	%eax, -64(%ebp)
	movl	%esi, -68(%ebp)
	movl	%edi, -72(%ebp)
	cld
	movl	-72(%ebp), %eax
	cmpl	%eax, -72(%ebp)
	movl	-64(%ebp), %esi
	movl	-68(%ebp), %edi
	movl	-72(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1426
	.loc 1 4643 0
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	string_clear
	.loc 1 4644 0
	leal	.LC154@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	string_append
	.loc 1 4645 0
	movl	-24(%ebp), %edx
	leal	optable@GOTOFF(%ebx), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	4(%eax,%ecx), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	string_append
	.loc 1 4646 0
	leal	.LC11@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	string_append
	.loc 1 4647 0
	jmp	.L1468
.L1426:
.LBE48:
	.loc 1 4637 0
	addl	$1, -24(%ebp)
.L1424:
	cmpl	$78, -24(%ebp)
	jbe	.L1425
	.loc 1 4634 0
	jmp	.L1468
.L1421:
	.loc 1 4653 0
	movl	$0, -24(%ebp)
	jmp	.L1431
.L1432:
.LBB49:
	.loc 1 4655 0
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	%edx, %esi
	subl	%eax, %esi
	movl	%esi, %eax
	subl	$3, %eax
	movl	%eax, -16(%ebp)
	.loc 1 4656 0
	movl	-24(%ebp), %edx
	leal	optable@GOTOFF(%ebx), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	(%eax,%ecx), %eax
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
	cmpl	-16(%ebp), %eax
	jne	.L1433
	movl	-16(%ebp), %edi
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	leal	3(%eax), %esi
	movl	-24(%ebp), %edx
	leal	optable@GOTOFF(%ebx), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	(%eax,%ecx), %eax
	movl	%eax, -80(%ebp)
	movl	%esi, -84(%ebp)
	movl	%edi, -88(%ebp)
	cld
	movl	-88(%ebp), %eax
	cmpl	%eax, -88(%ebp)
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
	jne	.L1433
	.loc 1 4659 0
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	string_clear
	.loc 1 4660 0
	leal	.LC154@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	string_append
	.loc 1 4661 0
	movl	-24(%ebp), %edx
	leal	optable@GOTOFF(%ebx), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	4(%eax,%ecx), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	string_append
	.loc 1 4662 0
	jmp	.L1468
.L1433:
.LBE49:
	.loc 1 4653 0
	addl	$1, -24(%ebp)
.L1431:
	cmpl	$78, -24(%ebp)
	jbe	.L1432
	.loc 1 4628 0
	jmp	.L1468
.L1416:
	.loc 1 4667 0
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	%edx, %esi
	subl	%eax, %esi
	movl	%esi, %eax
	cmpl	$4, %eax
	jle	.L1436
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -92(%ebp)
	leal	.LC156@GOTOFF(%ebx), %edi
	movl	%edi, -96(%ebp)
	movl	$4, -100(%ebp)
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
	jne	.L1436
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	addl	$4, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, 4(%esp)
	leal	cplus_markers@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	strchr@PLT
	testl	%eax, %eax
	je	.L1436
	.loc 1 4671 0
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	addl	$5, %eax
	movl	%eax, -28(%ebp)
	.loc 1 4672 0
	leal	-40(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	do_type
	testl	%eax, %eax
	je	.L1468
	.loc 1 4674 0
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	string_clear
	.loc 1 4675 0
	leal	.LC157@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	string_append
	.loc 1 4676 0
	leal	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	string_appends
	.loc 1 4677 0
	leal	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	string_delete
	.loc 1 4667 0
	jmp	.L1468
.L1436:
	.loc 1 4680 0
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	movzbl	(%eax), %eax
	cmpb	$95, %al
	jne	.L1442
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	cmpb	$95, %al
	jne	.L1442
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	addl	$2, %eax
	movzbl	(%eax), %eax
	cmpb	$111, %al
	jne	.L1442
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	addl	$3, %eax
	movzbl	(%eax), %eax
	cmpb	$112, %al
	jne	.L1442
	.loc 1 4685 0
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	addl	$4, %eax
	movl	%eax, -28(%ebp)
	.loc 1 4686 0
	leal	-40(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	do_type
	testl	%eax, %eax
	je	.L1468
	.loc 1 4688 0
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	string_clear
	.loc 1 4689 0
	leal	.LC157@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	string_append
	.loc 1 4690 0
	leal	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	string_appends
	.loc 1 4691 0
	leal	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	string_delete
	.loc 1 4680 0
	jmp	.L1468
.L1442:
	.loc 1 4694 0
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	movzbl	(%eax), %eax
	cmpb	$95, %al
	jne	.L1468
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	cmpb	$95, %al
	jne	.L1468
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	addl	$2, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edx
	movl	_sch_istable@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L1468
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	addl	$3, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edx
	movl	_sch_istable@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L1468
	.loc 1 4698 0
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	addl	$4, %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L1453
	.loc 1 4701 0
	movl	$0, -24(%ebp)
	jmp	.L1455
.L1456:
	.loc 1 4703 0
	movl	-24(%ebp), %edx
	leal	optable@GOTOFF(%ebx), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	(%eax,%ecx), %eax
	movl	$-1, %ecx
	movl	%eax, -104(%ebp)
	movl	$0, %eax
	cld
	movl	-104(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	cmpl	$2, %eax
	jne	.L1457
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	leal	2(%eax), %esi
	movl	-24(%ebp), %edx
	leal	optable@GOTOFF(%ebx), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	(%eax,%ecx), %eax
	movl	%eax, -108(%ebp)
	movl	%esi, -112(%ebp)
	movl	$2, -116(%ebp)
	cld
	movl	-108(%ebp), %esi
	movl	-112(%ebp), %edi
	movl	-116(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1457
	.loc 1 4706 0
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	string_clear
	.loc 1 4707 0
	leal	.LC154@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	string_append
	.loc 1 4708 0
	movl	-24(%ebp), %edx
	leal	optable@GOTOFF(%ebx), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	4(%eax,%ecx), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	string_append
	.loc 1 4709 0
	jmp	.L1468
.L1457:
	.loc 1 4701 0
	addl	$1, -24(%ebp)
.L1455:
	cmpl	$78, -24(%ebp)
	jbe	.L1456
	jmp	.L1468
.L1453:
	.loc 1 4715 0
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	addl	$2, %eax
	movzbl	(%eax), %eax
	cmpb	$97, %al
	jne	.L1468
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	addl	$5, %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L1468
	.loc 1 4718 0
	movl	$0, -24(%ebp)
	jmp	.L1463
.L1464:
	.loc 1 4720 0
	movl	-24(%ebp), %edx
	leal	optable@GOTOFF(%ebx), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	(%eax,%ecx), %eax
	movl	$-1, %ecx
	movl	%eax, -120(%ebp)
	movl	$0, %eax
	cld
	movl	-120(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	cmpl	$3, %eax
	jne	.L1465
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	leal	2(%eax), %esi
	movl	-24(%ebp), %edx
	leal	optable@GOTOFF(%ebx), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	(%eax,%ecx), %eax
	movl	%eax, -124(%ebp)
	movl	%esi, -128(%ebp)
	movl	$3, -132(%ebp)
	cld
	movl	-124(%ebp), %esi
	movl	-128(%ebp), %edi
	movl	-132(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1465
	.loc 1 4723 0
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	string_clear
	.loc 1 4724 0
	leal	.LC154@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	string_append
	.loc 1 4725 0
	movl	-24(%ebp), %edx
	leal	optable@GOTOFF(%ebx), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	4(%eax,%ecx), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	string_append
	.loc 1 4726 0
	jmp	.L1468
.L1465:
	.loc 1 4718 0
	addl	$1, -24(%ebp)
.L1463:
	cmpl	$78, -24(%ebp)
	jbe	.L1464
.L1468:
	.loc 1 4732 0
	addl	$140, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE56:
	.size	demangle_function_name, .-demangle_function_name
	.type	string_need, @function
string_need:
.LFB57:
	.loc 1 4740 0
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
	.loc 1 4743 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L1470
	.loc 1 4745 0
	cmpl	$31, 12(%ebp)
	jg	.L1472
	.loc 1 4747 0
	movl	$32, 12(%ebp)
.L1472:
	.loc 1 4749 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 4750 0
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	12(%ebp), %eax
	addl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 8(%eax)
	jmp	.L1476
.L1470:
	.loc 1 4752 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	cmpl	12(%ebp), %eax
	jge	.L1476
	.loc 1 4754 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, -8(%ebp)
	.loc 1 4755 0
	movl	-8(%ebp), %eax
	addl	%eax, 12(%ebp)
	.loc 1 4756 0
	sall	12(%ebp)
	.loc 1 4757 0
	movl	12(%ebp), %edx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	xrealloc@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 4758 0
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	-8(%ebp), %eax
	addl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 4759 0
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	12(%ebp), %eax
	addl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 8(%eax)
.L1476:
	.loc 1 4761 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE57:
	.size	string_need, .-string_need
	.type	string_delete, @function
string_delete:
.LFB58:
	.loc 1 4766 0
	pushl	%ebp
.LCFI241:
	movl	%esp, %ebp
.LCFI242:
	pushl	%ebx
.LCFI243:
	subl	$4, %esp
.LCFI244:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4767 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1480
	.loc 1 4769 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 4770 0
	movl	8(%ebp), %eax
	movl	$0, 4(%eax)
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 8(%eax)
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
.L1480:
	.loc 1 4772 0
	addl	$4, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE58:
	.size	string_delete, .-string_delete
	.type	string_init, @function
string_init:
.LFB59:
	.loc 1 4777 0
	pushl	%ebp
.LCFI245:
	movl	%esp, %ebp
.LCFI246:
	.loc 1 4778 0
	movl	8(%ebp), %eax
	movl	$0, 8(%eax)
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 4(%eax)
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 4779 0
	popl	%ebp
	ret
.LFE59:
	.size	string_init, .-string_init
	.type	string_clear, @function
string_clear:
.LFB60:
	.loc 1 4784 0
	pushl	%ebp
.LCFI247:
	movl	%esp, %ebp
.LCFI248:
	.loc 1 4785 0
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 4786 0
	popl	%ebp
	ret
.LFE60:
	.size	string_clear, .-string_clear
	.type	string_append, @function
string_append:
.LFB61:
	.loc 1 4803 0
	pushl	%ebp
.LCFI249:
	movl	%esp, %ebp
.LCFI250:
	pushl	%edi
.LCFI251:
	pushl	%esi
.LCFI252:
	subl	$32, %esp
.LCFI253:
	.loc 1 4805 0
	cmpl	$0, 12(%ebp)
	je	.L1490
	movl	12(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L1488
	.loc 1 4806 0
	jmp	.L1490
.L1488:
	.loc 1 4807 0
	movl	12(%ebp), %eax
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
	movl	%eax, -12(%ebp)
	.loc 1 4808 0
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	string_need
	.loc 1 4809 0
	movl	-12(%ebp), %ecx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	12(%ebp), %edx
	movl	%eax, %edi
	movl	%edx, %esi
	cld
	rep
	movsb
	.loc 1 4810 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	-12(%ebp), %eax
	addl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 4(%eax)
.L1490:
	.loc 1 4811 0
	addl	$32, %esp
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE61:
	.size	string_append, .-string_append
	.type	string_appends, @function
string_appends:
.LFB62:
	.loc 1 4816 0
	pushl	%ebp
.LCFI254:
	movl	%esp, %ebp
.LCFI255:
	pushl	%edi
.LCFI256:
	pushl	%esi
.LCFI257:
	subl	$32, %esp
.LCFI258:
	.loc 1 4819 0
	movl	12(%ebp), %eax
	movl	(%eax), %edx
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	je	.L1494
	.loc 1 4821 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, -12(%ebp)
	.loc 1 4822 0
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	string_need
	.loc 1 4823 0
	movl	-12(%ebp), %ecx
	movl	12(%ebp), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %edi
	movl	%edx, %esi
	cld
	rep
	movsb
	.loc 1 4824 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	-12(%ebp), %eax
	addl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 4(%eax)
.L1494:
	.loc 1 4826 0
	addl	$32, %esp
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE62:
	.size	string_appends, .-string_appends
	.type	string_appendn, @function
string_appendn:
.LFB63:
	.loc 1 4833 0
	pushl	%ebp
.LCFI259:
	movl	%esp, %ebp
.LCFI260:
	pushl	%edi
.LCFI261:
	pushl	%esi
.LCFI262:
	subl	$16, %esp
.LCFI263:
	.loc 1 4834 0
	cmpl	$0, 16(%ebp)
	je	.L1498
	.loc 1 4836 0
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	string_need
	.loc 1 4837 0
	movl	16(%ebp), %ecx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	12(%ebp), %edx
	movl	%eax, %edi
	movl	%edx, %esi
	cld
	rep
	movsb
	.loc 1 4838 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	16(%ebp), %eax
	addl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 4(%eax)
.L1498:
	.loc 1 4840 0
	addl	$16, %esp
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE63:
	.size	string_appendn, .-string_appendn
	.type	string_prepend, @function
string_prepend:
.LFB64:
	.loc 1 4846 0
	pushl	%ebp
.LCFI264:
	movl	%esp, %ebp
.LCFI265:
	pushl	%edi
.LCFI266:
	subl	$20, %esp
.LCFI267:
	.loc 1 4847 0
	cmpl	$0, 12(%ebp)
	je	.L1503
	movl	12(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L1503
	.loc 1 4849 0
	movl	12(%ebp), %eax
	movl	$-1, %ecx
	movl	%eax, -8(%ebp)
	movl	$0, %eax
	cld
	movl	-8(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	string_prependn
.L1503:
	.loc 1 4851 0
	addl	$20, %esp
	popl	%edi
	popl	%ebp
	ret
.LFE64:
	.size	string_prepend, .-string_prepend
	.type	string_prepends, @function
string_prepends:
.LFB65:
	.loc 1 4856 0
	pushl	%ebp
.LCFI268:
	movl	%esp, %ebp
.LCFI269:
	subl	$24, %esp
.LCFI270:
	.loc 1 4857 0
	movl	12(%ebp), %eax
	movl	(%eax), %edx
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	je	.L1507
	.loc 1 4859 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	subl	%eax, %edx
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	string_prependn
.L1507:
	.loc 1 4861 0
	leave
	ret
.LFE65:
	.size	string_prepends, .-string_prepends
	.type	string_prependn, @function
string_prependn:
.LFB66:
	.loc 1 4868 0
	pushl	%ebp
.LCFI271:
	movl	%esp, %ebp
.LCFI272:
	pushl	%edi
.LCFI273:
	pushl	%esi
.LCFI274:
	subl	$32, %esp
.LCFI275:
	.loc 1 4871 0
	cmpl	$0, 16(%ebp)
	je	.L1514
	.loc 1 4873 0
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	string_need
	.loc 1 4874 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	subl	$1, %eax
	movl	%eax, -12(%ebp)
	jmp	.L1511
.L1512:
	.loc 1 4876 0
	movl	16(%ebp), %eax
	movl	%eax, %edx
	addl	-12(%ebp), %edx
	movl	-12(%ebp), %eax
	movzbl	(%eax), %eax
	movb	%al, (%edx)
	.loc 1 4874 0
	subl	$1, -12(%ebp)
.L1511:
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	cmpl	-12(%ebp), %eax
	jbe	.L1512
	.loc 1 4878 0
	movl	16(%ebp), %ecx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	12(%ebp), %edx
	movl	%eax, %edi
	movl	%edx, %esi
	cld
	rep
	movsb
	.loc 1 4879 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	16(%ebp), %eax
	addl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 4(%eax)
.L1514:
	.loc 1 4881 0
	addl	$32, %esp
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE66:
	.size	string_prependn, .-string_prependn
	.section	.rodata
.LC224:
	.string	"T%d"
	.text
	.type	string_append_template_idx, @function
string_append_template_idx:
.LFB67:
	.loc 1 4887 0
	pushl	%ebp
.LCFI276:
	movl	%esp, %ebp
.LCFI277:
	pushl	%ebx
.LCFI278:
	subl	$68, %esp
.LCFI279:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	movl	%eax, -56(%ebp)
	.loc 1 4887 0
	movl	%gs:20, %eax
	movl	%eax, -8(%ebp)
	xorl	%eax, %eax
	.loc 1 4889 0
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC224@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-41(%ebp), %eax
	movl	%eax, (%esp)
	call	sprintf@PLT
	.loc 1 4890 0
	leal	-41(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	string_append
	.loc 1 4891 0
	movl	-8(%ebp), %eax
	xorl	%gs:20, %eax
	je	.L1517
	call	__stack_chk_fail_local
.L1517:
	addl	$68, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE67:
	.size	string_append_template_idx, .-string_append_template_idx
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
	.long	.LFB5
	.long	.LFE5-.LFB5
	.byte	0x4
	.long	.LCFI0-.LFB5
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
	.long	.LFB6
	.long	.LFE6-.LFB6
	.byte	0x4
	.long	.LCFI2-.LFB6
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI3-.LCFI2
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI6-.LCFI3
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x3
	.align 4
.LEFDE2:
.LSFDE4:
	.long	.LEFDE4-.LASFDE4
.LASFDE4:
	.long	.Lframe0
	.long	.LFB7
	.long	.LFE7-.LFB7
	.byte	0x4
	.long	.LCFI7-.LFB7
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI8-.LCFI7
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI10-.LCFI8
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE4:
.LSFDE6:
	.long	.LEFDE6-.LASFDE6
.LASFDE6:
	.long	.Lframe0
	.long	.LFB8
	.long	.LFE8-.LFB8
	.byte	0x4
	.long	.LCFI11-.LFB8
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
.LEFDE6:
.LSFDE8:
	.long	.LEFDE8-.LASFDE8
.LASFDE8:
	.long	.Lframe0
	.long	.LFB9
	.long	.LFE9-.LFB9
	.byte	0x4
	.long	.LCFI15-.LFB9
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
.LEFDE8:
.LSFDE10:
	.long	.LEFDE10-.LASFDE10
.LASFDE10:
	.long	.Lframe0
	.long	.LFB10
	.long	.LFE10-.LFB10
	.byte	0x4
	.long	.LCFI19-.LFB10
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI20-.LCFI19
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE10:
.LSFDE12:
	.long	.LEFDE12-.LASFDE12
.LASFDE12:
	.long	.Lframe0
	.long	.LFB11
	.long	.LFE11-.LFB11
	.byte	0x4
	.long	.LCFI22-.LFB11
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI23-.LCFI22
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI27-.LCFI23
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
	.long	.LFB12
	.long	.LFE12-.LFB12
	.byte	0x4
	.long	.LCFI28-.LFB12
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI29-.LCFI28
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI33-.LCFI29
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
	.long	.LFB13
	.long	.LFE13-.LFB13
	.byte	0x4
	.long	.LCFI34-.LFB13
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI35-.LCFI34
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE16:
.LSFDE18:
	.long	.LEFDE18-.LASFDE18
.LASFDE18:
	.long	.Lframe0
	.long	.LFB14
	.long	.LFE14-.LFB14
	.byte	0x4
	.long	.LCFI37-.LFB14
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI38-.LCFI37
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI40-.LCFI38
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE18:
.LSFDE20:
	.long	.LEFDE20-.LASFDE20
.LASFDE20:
	.long	.Lframe0
	.long	.LFB15
	.long	.LFE15-.LFB15
	.byte	0x4
	.long	.LCFI41-.LFB15
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI42-.LCFI41
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI44-.LCFI42
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE20:
.LSFDE22:
	.long	.LEFDE22-.LASFDE22
.LASFDE22:
	.long	.Lframe0
	.long	.LFB16
	.long	.LFE16-.LFB16
	.byte	0x4
	.long	.LCFI45-.LFB16
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI46-.LCFI45
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI48-.LCFI46
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE22:
.LSFDE24:
	.long	.LEFDE24-.LASFDE24
.LASFDE24:
	.long	.Lframe0
	.long	.LFB17
	.long	.LFE17-.LFB17
	.byte	0x4
	.long	.LCFI49-.LFB17
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI50-.LCFI49
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI54-.LCFI50
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE24:
.LSFDE26:
	.long	.LEFDE26-.LASFDE26
.LASFDE26:
	.long	.Lframe0
	.long	.LFB18
	.long	.LFE18-.LFB18
	.byte	0x4
	.long	.LCFI55-.LFB18
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
.LEFDE26:
.LSFDE28:
	.long	.LEFDE28-.LASFDE28
.LASFDE28:
	.long	.Lframe0
	.long	.LFB19
	.long	.LFE19-.LFB19
	.byte	0x4
	.long	.LCFI59-.LFB19
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
	.long	.LFB20
	.long	.LFE20-.LFB20
	.byte	0x4
	.long	.LCFI63-.LFB20
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI64-.LCFI63
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI68-.LCFI64
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
	.long	.LFB21
	.long	.LFE21-.LFB21
	.byte	0x4
	.long	.LCFI69-.LFB21
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI70-.LCFI69
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI72-.LCFI70
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE32:
.LSFDE34:
	.long	.LEFDE34-.LASFDE34
.LASFDE34:
	.long	.Lframe0
	.long	.LFB22
	.long	.LFE22-.LFB22
	.byte	0x4
	.long	.LCFI73-.LFB22
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
	.long	.LFB23
	.long	.LFE23-.LFB23
	.byte	0x4
	.long	.LCFI76-.LFB23
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI77-.LCFI76
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI79-.LCFI77
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE36:
.LSFDE38:
	.long	.LEFDE38-.LASFDE38
.LASFDE38:
	.long	.Lframe0
	.long	.LFB24
	.long	.LFE24-.LFB24
	.byte	0x4
	.long	.LCFI80-.LFB24
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI81-.LCFI80
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI84-.LCFI81
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
	.long	.LFB25
	.long	.LFE25-.LFB25
	.byte	0x4
	.long	.LCFI85-.LFB25
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI86-.LCFI85
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI88-.LCFI86
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE40:
.LSFDE42:
	.long	.LEFDE42-.LASFDE42
.LASFDE42:
	.long	.Lframe0
	.long	.LFB26
	.long	.LFE26-.LFB26
	.byte	0x4
	.long	.LCFI89-.LFB26
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI90-.LCFI89
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI94-.LCFI90
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE42:
.LSFDE44:
	.long	.LEFDE44-.LASFDE44
.LASFDE44:
	.long	.Lframe0
	.long	.LFB27
	.long	.LFE27-.LFB27
	.byte	0x4
	.long	.LCFI95-.LFB27
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI96-.LCFI95
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI98-.LCFI96
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE44:
.LSFDE46:
	.long	.LEFDE46-.LASFDE46
.LASFDE46:
	.long	.Lframe0
	.long	.LFB28
	.long	.LFE28-.LFB28
	.byte	0x4
	.long	.LCFI99-.LFB28
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI100-.LCFI99
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI102-.LCFI100
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE46:
.LSFDE48:
	.long	.LEFDE48-.LASFDE48
.LASFDE48:
	.long	.Lframe0
	.long	.LFB29
	.long	.LFE29-.LFB29
	.byte	0x4
	.long	.LCFI103-.LFB29
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI104-.LCFI103
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI106-.LCFI104
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE48:
.LSFDE50:
	.long	.LEFDE50-.LASFDE50
.LASFDE50:
	.long	.Lframe0
	.long	.LFB30
	.long	.LFE30-.LFB30
	.byte	0x4
	.long	.LCFI107-.LFB30
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI108-.LCFI107
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI112-.LCFI108
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE50:
.LSFDE52:
	.long	.LEFDE52-.LASFDE52
.LASFDE52:
	.long	.Lframe0
	.long	.LFB31
	.long	.LFE31-.LFB31
	.byte	0x4
	.long	.LCFI113-.LFB31
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI114-.LCFI113
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI116-.LCFI114
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE52:
.LSFDE54:
	.long	.LEFDE54-.LASFDE54
.LASFDE54:
	.long	.Lframe0
	.long	.LFB32
	.long	.LFE32-.LFB32
	.byte	0x4
	.long	.LCFI117-.LFB32
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI118-.LCFI117
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI122-.LCFI118
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE54:
.LSFDE56:
	.long	.LEFDE56-.LASFDE56
.LASFDE56:
	.long	.Lframe0
	.long	.LFB33
	.long	.LFE33-.LFB33
	.byte	0x4
	.long	.LCFI123-.LFB33
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
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE56:
.LSFDE58:
	.long	.LEFDE58-.LASFDE58
.LASFDE58:
	.long	.Lframe0
	.long	.LFB34
	.long	.LFE34-.LFB34
	.byte	0x4
	.long	.LCFI127-.LFB34
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
.LEFDE58:
.LSFDE60:
	.long	.LEFDE60-.LASFDE60
.LASFDE60:
	.long	.Lframe0
	.long	.LFB35
	.long	.LFE35-.LFB35
	.byte	0x4
	.long	.LCFI131-.LFB35
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
.LEFDE60:
.LSFDE62:
	.long	.LEFDE62-.LASFDE62
.LASFDE62:
	.long	.Lframe0
	.long	.LFB36
	.long	.LFE36-.LFB36
	.byte	0x4
	.long	.LCFI135-.LFB36
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI136-.LCFI135
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI140-.LCFI136
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE62:
.LSFDE64:
	.long	.LEFDE64-.LASFDE64
.LASFDE64:
	.long	.Lframe0
	.long	.LFB37
	.long	.LFE37-.LFB37
	.byte	0x4
	.long	.LCFI141-.LFB37
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI142-.LCFI141
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI146-.LCFI142
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE64:
.LSFDE66:
	.long	.LEFDE66-.LASFDE66
.LASFDE66:
	.long	.Lframe0
	.long	.LFB38
	.long	.LFE38-.LFB38
	.byte	0x4
	.long	.LCFI147-.LFB38
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI148-.LCFI147
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI152-.LCFI148
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE66:
.LSFDE68:
	.long	.LEFDE68-.LASFDE68
.LASFDE68:
	.long	.Lframe0
	.long	.LFB39
	.long	.LFE39-.LFB39
	.byte	0x4
	.long	.LCFI153-.LFB39
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI154-.LCFI153
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI158-.LCFI154
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE68:
.LSFDE70:
	.long	.LEFDE70-.LASFDE70
.LASFDE70:
	.long	.Lframe0
	.long	.LFB40
	.long	.LFE40-.LFB40
	.byte	0x4
	.long	.LCFI159-.LFB40
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI160-.LCFI159
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI162-.LCFI160
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE70:
.LSFDE72:
	.long	.LEFDE72-.LASFDE72
.LASFDE72:
	.long	.Lframe0
	.long	.LFB41
	.long	.LFE41-.LFB41
	.byte	0x4
	.long	.LCFI163-.LFB41
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI164-.LCFI163
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE72:
.LSFDE74:
	.long	.LEFDE74-.LASFDE74
.LASFDE74:
	.long	.Lframe0
	.long	.LFB42
	.long	.LFE42-.LFB42
	.byte	0x4
	.long	.LCFI166-.LFB42
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
.LEFDE74:
.LSFDE76:
	.long	.LEFDE76-.LASFDE76
.LASFDE76:
	.long	.Lframe0
	.long	.LFB43
	.long	.LFE43-.LFB43
	.byte	0x4
	.long	.LCFI171-.LFB43
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI172-.LCFI171
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI175-.LCFI172
	.byte	0x83
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE76:
.LSFDE78:
	.long	.LEFDE78-.LASFDE78
.LASFDE78:
	.long	.Lframe0
	.long	.LFB44
	.long	.LFE44-.LFB44
	.byte	0x4
	.long	.LCFI176-.LFB44
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI177-.LCFI176
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI179-.LCFI177
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE78:
.LSFDE80:
	.long	.LEFDE80-.LASFDE80
.LASFDE80:
	.long	.Lframe0
	.long	.LFB45
	.long	.LFE45-.LFB45
	.byte	0x4
	.long	.LCFI180-.LFB45
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI181-.LCFI180
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI185-.LCFI181
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE80:
.LSFDE82:
	.long	.LEFDE82-.LASFDE82
.LASFDE82:
	.long	.Lframe0
	.long	.LFB46
	.long	.LFE46-.LFB46
	.byte	0x4
	.long	.LCFI186-.LFB46
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI187-.LCFI186
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI189-.LCFI187
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE82:
.LSFDE84:
	.long	.LEFDE84-.LASFDE84
.LASFDE84:
	.long	.Lframe0
	.long	.LFB47
	.long	.LFE47-.LFB47
	.byte	0x4
	.long	.LCFI190-.LFB47
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI191-.LCFI190
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI193-.LCFI191
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE84:
.LSFDE86:
	.long	.LEFDE86-.LASFDE86
.LASFDE86:
	.long	.Lframe0
	.long	.LFB48
	.long	.LFE48-.LFB48
	.byte	0x4
	.long	.LCFI194-.LFB48
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI195-.LCFI194
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI199-.LCFI195
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE86:
.LSFDE88:
	.long	.LEFDE88-.LASFDE88
.LASFDE88:
	.long	.Lframe0
	.long	.LFB49
	.long	.LFE49-.LFB49
	.byte	0x4
	.long	.LCFI200-.LFB49
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI201-.LCFI200
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI205-.LCFI201
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE88:
.LSFDE90:
	.long	.LEFDE90-.LASFDE90
.LASFDE90:
	.long	.Lframe0
	.long	.LFB50
	.long	.LFE50-.LFB50
	.byte	0x4
	.long	.LCFI206-.LFB50
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
.LEFDE90:
.LSFDE92:
	.long	.LEFDE92-.LASFDE92
.LASFDE92:
	.long	.Lframe0
	.long	.LFB51
	.long	.LFE51-.LFB51
	.byte	0x4
	.long	.LCFI210-.LFB51
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI211-.LCFI210
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI215-.LCFI211
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE92:
.LSFDE94:
	.long	.LEFDE94-.LASFDE94
.LASFDE94:
	.long	.Lframe0
	.long	.LFB52
	.long	.LFE52-.LFB52
	.byte	0x4
	.long	.LCFI216-.LFB52
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI217-.LCFI216
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI219-.LCFI217
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE94:
.LSFDE96:
	.long	.LEFDE96-.LASFDE96
.LASFDE96:
	.long	.Lframe0
	.long	.LFB53
	.long	.LFE53-.LFB53
	.byte	0x4
	.long	.LCFI220-.LFB53
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI221-.LCFI220
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI223-.LCFI221
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE96:
.LSFDE98:
	.long	.LEFDE98-.LASFDE98
.LASFDE98:
	.long	.Lframe0
	.long	.LFB54
	.long	.LFE54-.LFB54
	.byte	0x4
	.long	.LCFI224-.LFB54
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI225-.LCFI224
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI227-.LCFI225
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE98:
.LSFDE100:
	.long	.LEFDE100-.LASFDE100
.LASFDE100:
	.long	.Lframe0
	.long	.LFB55
	.long	.LFE55-.LFB55
	.byte	0x4
	.long	.LCFI228-.LFB55
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI229-.LCFI228
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE100:
.LSFDE102:
	.long	.LEFDE102-.LASFDE102
.LASFDE102:
	.long	.Lframe0
	.long	.LFB56
	.long	.LFE56-.LFB56
	.byte	0x4
	.long	.LCFI231-.LFB56
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI232-.LCFI231
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI236-.LCFI232
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE102:
.LSFDE104:
	.long	.LEFDE104-.LASFDE104
.LASFDE104:
	.long	.Lframe0
	.long	.LFB57
	.long	.LFE57-.LFB57
	.byte	0x4
	.long	.LCFI237-.LFB57
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
.LEFDE104:
.LSFDE106:
	.long	.LEFDE106-.LASFDE106
.LASFDE106:
	.long	.Lframe0
	.long	.LFB58
	.long	.LFE58-.LFB58
	.byte	0x4
	.long	.LCFI241-.LFB58
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
.LEFDE106:
.LSFDE108:
	.long	.LEFDE108-.LASFDE108
.LASFDE108:
	.long	.Lframe0
	.long	.LFB59
	.long	.LFE59-.LFB59
	.byte	0x4
	.long	.LCFI245-.LFB59
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI246-.LCFI245
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE108:
.LSFDE110:
	.long	.LEFDE110-.LASFDE110
.LASFDE110:
	.long	.Lframe0
	.long	.LFB60
	.long	.LFE60-.LFB60
	.byte	0x4
	.long	.LCFI247-.LFB60
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI248-.LCFI247
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE110:
.LSFDE112:
	.long	.LEFDE112-.LASFDE112
.LASFDE112:
	.long	.Lframe0
	.long	.LFB61
	.long	.LFE61-.LFB61
	.byte	0x4
	.long	.LCFI249-.LFB61
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI250-.LCFI249
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI253-.LCFI250
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE112:
.LSFDE114:
	.long	.LEFDE114-.LASFDE114
.LASFDE114:
	.long	.Lframe0
	.long	.LFB62
	.long	.LFE62-.LFB62
	.byte	0x4
	.long	.LCFI254-.LFB62
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI255-.LCFI254
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI258-.LCFI255
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE114:
.LSFDE116:
	.long	.LEFDE116-.LASFDE116
.LASFDE116:
	.long	.Lframe0
	.long	.LFB63
	.long	.LFE63-.LFB63
	.byte	0x4
	.long	.LCFI259-.LFB63
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI260-.LCFI259
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI263-.LCFI260
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE116:
.LSFDE118:
	.long	.LEFDE118-.LASFDE118
.LASFDE118:
	.long	.Lframe0
	.long	.LFB64
	.long	.LFE64-.LFB64
	.byte	0x4
	.long	.LCFI264-.LFB64
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI265-.LCFI264
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI267-.LCFI265
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE118:
.LSFDE120:
	.long	.LEFDE120-.LASFDE120
.LASFDE120:
	.long	.Lframe0
	.long	.LFB65
	.long	.LFE65-.LFB65
	.byte	0x4
	.long	.LCFI268-.LFB65
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI269-.LCFI268
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE120:
.LSFDE122:
	.long	.LEFDE122-.LASFDE122
.LASFDE122:
	.long	.Lframe0
	.long	.LFB66
	.long	.LFE66-.LFB66
	.byte	0x4
	.long	.LCFI271-.LFB66
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI272-.LCFI271
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI275-.LCFI272
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE122:
.LSFDE124:
	.long	.LEFDE124-.LASFDE124
.LASFDE124:
	.long	.Lframe0
	.long	.LFB67
	.long	.LFE67-.LFB67
	.byte	0x4
	.long	.LCFI276-.LFB67
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI277-.LCFI276
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI279-.LCFI277
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE124:
	.file 2 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h"
	.file 3 "../../include/gnu/demangle.h"
	.file 4 "../../include/gnu/safe-ctype.h"
	.text
.Letext0:
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LFB5-.Ltext0
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
	.long	.LFE5-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST1:
	.long	.LFB6-.Ltext0
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
	.long	.LFE6-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST2:
	.long	.LFB7-.Ltext0
	.long	.LCFI7-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI7-.Ltext0
	.long	.LCFI8-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI8-.Ltext0
	.long	.LFE7-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST3:
	.long	.LFB8-.Ltext0
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
	.long	.LFE8-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST4:
	.long	.LFB9-.Ltext0
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
	.long	.LFE9-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST5:
	.long	.LFB10-.Ltext0
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
	.long	.LFE10-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST6:
	.long	.LFB11-.Ltext0
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
	.long	.LFE11-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST7:
	.long	.LFB12-.Ltext0
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
	.long	.LFE12-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST8:
	.long	.LFB13-.Ltext0
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
	.long	.LFE13-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST9:
	.long	.LFB14-.Ltext0
	.long	.LCFI37-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI37-.Ltext0
	.long	.LCFI38-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI38-.Ltext0
	.long	.LFE14-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST10:
	.long	.LFB15-.Ltext0
	.long	.LCFI41-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI41-.Ltext0
	.long	.LCFI42-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI42-.Ltext0
	.long	.LFE15-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST11:
	.long	.LFB16-.Ltext0
	.long	.LCFI45-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI45-.Ltext0
	.long	.LCFI46-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI46-.Ltext0
	.long	.LFE16-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST12:
	.long	.LFB17-.Ltext0
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
	.long	.LFE17-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST13:
	.long	.LFB18-.Ltext0
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
	.long	.LFE18-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST14:
	.long	.LFB19-.Ltext0
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
	.long	.LFE19-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST15:
	.long	.LFB20-.Ltext0
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
	.long	.LFE20-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST16:
	.long	.LFB21-.Ltext0
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
	.long	.LFE21-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST17:
	.long	.LFB22-.Ltext0
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
	.long	.LFE22-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST18:
	.long	.LFB23-.Ltext0
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
	.long	.LFE23-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST19:
	.long	.LFB24-.Ltext0
	.long	.LCFI80-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI80-.Ltext0
	.long	.LCFI81-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI81-.Ltext0
	.long	.LFE24-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST20:
	.long	.LFB25-.Ltext0
	.long	.LCFI85-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI85-.Ltext0
	.long	.LCFI86-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI86-.Ltext0
	.long	.LFE25-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST21:
	.long	.LFB26-.Ltext0
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
	.long	.LFE26-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST22:
	.long	.LFB27-.Ltext0
	.long	.LCFI95-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI95-.Ltext0
	.long	.LCFI96-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI96-.Ltext0
	.long	.LFE27-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST23:
	.long	.LFB28-.Ltext0
	.long	.LCFI99-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI99-.Ltext0
	.long	.LCFI100-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI100-.Ltext0
	.long	.LFE28-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST24:
	.long	.LFB29-.Ltext0
	.long	.LCFI103-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI103-.Ltext0
	.long	.LCFI104-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI104-.Ltext0
	.long	.LFE29-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST25:
	.long	.LFB30-.Ltext0
	.long	.LCFI107-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI107-.Ltext0
	.long	.LCFI108-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI108-.Ltext0
	.long	.LFE30-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST26:
	.long	.LFB31-.Ltext0
	.long	.LCFI113-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI113-.Ltext0
	.long	.LCFI114-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI114-.Ltext0
	.long	.LFE31-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST27:
	.long	.LFB32-.Ltext0
	.long	.LCFI117-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI117-.Ltext0
	.long	.LCFI118-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI118-.Ltext0
	.long	.LFE32-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST28:
	.long	.LFB33-.Ltext0
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
	.long	.LFE33-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST29:
	.long	.LFB34-.Ltext0
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
	.long	.LFE34-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST30:
	.long	.LFB35-.Ltext0
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
	.long	.LFE35-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST31:
	.long	.LFB36-.Ltext0
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
	.long	.LFE36-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST32:
	.long	.LFB37-.Ltext0
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
	.long	.LFE37-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST33:
	.long	.LFB38-.Ltext0
	.long	.LCFI147-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI147-.Ltext0
	.long	.LCFI148-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI148-.Ltext0
	.long	.LFE38-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST34:
	.long	.LFB39-.Ltext0
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
	.long	.LFE39-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST35:
	.long	.LFB40-.Ltext0
	.long	.LCFI159-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI159-.Ltext0
	.long	.LCFI160-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI160-.Ltext0
	.long	.LFE40-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST36:
	.long	.LFB41-.Ltext0
	.long	.LCFI163-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI163-.Ltext0
	.long	.LCFI164-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI164-.Ltext0
	.long	.LFE41-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST37:
	.long	.LFB42-.Ltext0
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
	.long	.LFE42-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST38:
	.long	.LFB43-.Ltext0
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
	.long	.LFE43-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST39:
	.long	.LFB44-.Ltext0
	.long	.LCFI176-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI176-.Ltext0
	.long	.LCFI177-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI177-.Ltext0
	.long	.LFE44-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST40:
	.long	.LFB45-.Ltext0
	.long	.LCFI180-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI180-.Ltext0
	.long	.LCFI181-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI181-.Ltext0
	.long	.LFE45-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST41:
	.long	.LFB46-.Ltext0
	.long	.LCFI186-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI186-.Ltext0
	.long	.LCFI187-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI187-.Ltext0
	.long	.LFE46-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST42:
	.long	.LFB47-.Ltext0
	.long	.LCFI190-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI190-.Ltext0
	.long	.LCFI191-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI191-.Ltext0
	.long	.LFE47-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST43:
	.long	.LFB48-.Ltext0
	.long	.LCFI194-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI194-.Ltext0
	.long	.LCFI195-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI195-.Ltext0
	.long	.LFE48-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST44:
	.long	.LFB49-.Ltext0
	.long	.LCFI200-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI200-.Ltext0
	.long	.LCFI201-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI201-.Ltext0
	.long	.LFE49-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST45:
	.long	.LFB50-.Ltext0
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
	.long	.LFE50-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST46:
	.long	.LFB51-.Ltext0
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
	.long	.LFE51-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST47:
	.long	.LFB52-.Ltext0
	.long	.LCFI216-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI216-.Ltext0
	.long	.LCFI217-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI217-.Ltext0
	.long	.LFE52-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST48:
	.long	.LFB53-.Ltext0
	.long	.LCFI220-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI220-.Ltext0
	.long	.LCFI221-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI221-.Ltext0
	.long	.LFE53-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST49:
	.long	.LFB54-.Ltext0
	.long	.LCFI224-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI224-.Ltext0
	.long	.LCFI225-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI225-.Ltext0
	.long	.LFE54-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST50:
	.long	.LFB55-.Ltext0
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
	.long	.LFE55-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST51:
	.long	.LFB56-.Ltext0
	.long	.LCFI231-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI231-.Ltext0
	.long	.LCFI232-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI232-.Ltext0
	.long	.LFE56-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST52:
	.long	.LFB57-.Ltext0
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
	.long	.LFE57-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST53:
	.long	.LFB58-.Ltext0
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
	.long	.LFE58-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST54:
	.long	.LFB59-.Ltext0
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
	.long	.LFE59-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST55:
	.long	.LFB60-.Ltext0
	.long	.LCFI247-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI247-.Ltext0
	.long	.LCFI248-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI248-.Ltext0
	.long	.LFE60-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST56:
	.long	.LFB61-.Ltext0
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
	.long	.LFE61-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST57:
	.long	.LFB62-.Ltext0
	.long	.LCFI254-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI254-.Ltext0
	.long	.LCFI255-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI255-.Ltext0
	.long	.LFE62-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST58:
	.long	.LFB63-.Ltext0
	.long	.LCFI259-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI259-.Ltext0
	.long	.LCFI260-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI260-.Ltext0
	.long	.LFE63-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST59:
	.long	.LFB64-.Ltext0
	.long	.LCFI264-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI264-.Ltext0
	.long	.LCFI265-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI265-.Ltext0
	.long	.LFE64-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST60:
	.long	.LFB65-.Ltext0
	.long	.LCFI268-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI268-.Ltext0
	.long	.LCFI269-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI269-.Ltext0
	.long	.LFE65-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST61:
	.long	.LFB66-.Ltext0
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
	.long	.LFE66-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST62:
	.long	.LFB67-.Ltext0
	.long	.LCFI276-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI276-.Ltext0
	.long	.LCFI277-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI277-.Ltext0
	.long	.LFE67-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
	.section	.debug_info
	.long	0x292c
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.Ldebug_line0
	.long	.Letext0
	.long	.Ltext0
	.string	"GNU C 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.byte	0x1
	.string	"../../libiberty/cplus-dem.c"
	.string	"/usa/handong/simplnano/cmplr-open64-merge/targia32_sl1/libiberty"
	.uleb128 0x2
	.string	"size_t"
	.byte	0x2
	.byte	0xd6
	.long	0xa8
	.uleb128 0x3
	.long	.LASF0
	.byte	0x4
	.byte	0x7
	.uleb128 0x4
	.string	"unsigned char"
	.byte	0x1
	.byte	0x8
	.uleb128 0x4
	.string	"short unsigned int"
	.byte	0x2
	.byte	0x7
	.uleb128 0x4
	.string	"long unsigned int"
	.byte	0x4
	.byte	0x7
	.uleb128 0x4
	.string	"signed char"
	.byte	0x1
	.byte	0x6
	.uleb128 0x4
	.string	"short int"
	.byte	0x2
	.byte	0x5
	.uleb128 0x4
	.string	"int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x4
	.string	"long long int"
	.byte	0x8
	.byte	0x5
	.uleb128 0x4
	.string	"long long unsigned int"
	.byte	0x8
	.byte	0x7
	.uleb128 0x4
	.string	"long int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x3
	.long	.LASF0
	.byte	0x4
	.byte	0x7
	.uleb128 0x5
	.byte	0x4
	.long	0x152
	.uleb128 0x4
	.string	"char"
	.byte	0x1
	.byte	0x8
	.uleb128 0x6
	.long	0x16a
	.long	0x152
	.uleb128 0x7
	.long	0x145
	.byte	0x1f
	.byte	0x0
	.uleb128 0x8
	.long	0x107
	.uleb128 0x5
	.byte	0x4
	.long	0x175
	.uleb128 0x8
	.long	0x152
	.uleb128 0x5
	.byte	0x4
	.long	0x9a
	.uleb128 0x5
	.byte	0x4
	.long	0x16f
	.uleb128 0x5
	.byte	0x4
	.long	0x107
	.uleb128 0x9
	.long	0x277
	.string	"demangling_styles"
	.byte	0x4
	.byte	0x3
	.byte	0x42
	.uleb128 0xa
	.string	"no_demangling"
	.sleb128 -1
	.uleb128 0xa
	.string	"unknown_demangling"
	.sleb128 0
	.uleb128 0xa
	.string	"auto_demangling"
	.sleb128 256
	.uleb128 0xa
	.string	"gnu_demangling"
	.sleb128 512
	.uleb128 0xa
	.string	"lucid_demangling"
	.sleb128 1024
	.uleb128 0xa
	.string	"arm_demangling"
	.sleb128 2048
	.uleb128 0xa
	.string	"hp_demangling"
	.sleb128 4096
	.uleb128 0xa
	.string	"edg_demangling"
	.sleb128 8192
	.uleb128 0xa
	.string	"gnu_v3_demangling"
	.sleb128 16384
	.uleb128 0xa
	.string	"java_demangling"
	.sleb128 4
	.uleb128 0xa
	.string	"gnat_demangling"
	.sleb128 32768
	.byte	0x0
	.uleb128 0xb
	.long	0x2eb
	.string	"demangler_engine"
	.byte	0xc
	.byte	0x3
	.byte	0x6e
	.uleb128 0xc
	.string	"demangling_style_name"
	.byte	0x3
	.byte	0x6f
	.long	0x2eb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.string	"demangling_style"
	.byte	0x3
	.byte	0x70
	.long	0x2f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.string	"demangling_style_doc"
	.byte	0x3
	.byte	0x71
	.long	0x2eb
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x8
	.long	0x16f
	.uleb128 0x8
	.long	0x18c
	.uleb128 0xd
	.long	0x338
	.byte	0x1
	.string	"set_cplus_marker_for_demangling"
	.byte	0x1
	.byte	0x6c
	.byte	0x1
	.long	.LFB5
	.long	.LFE5
	.long	.LLST0
	.uleb128 0xe
	.string	"ch"
	.byte	0x1
	.byte	0x6b
	.long	0x107
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0xb
	.long	0x36c
	.string	"string"
	.byte	0xc
	.byte	0x1
	.byte	0x71
	.uleb128 0xc
	.string	"b"
	.byte	0x1
	.byte	0x72
	.long	0x14c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.string	"p"
	.byte	0x1
	.byte	0x73
	.long	0x14c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.string	"e"
	.byte	0x1
	.byte	0x74
	.long	0x14c
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x2
	.string	"string"
	.byte	0x1
	.byte	0x75
	.long	0x338
	.uleb128 0xb
	.long	0x529
	.string	"work_stuff"
	.byte	0x54
	.byte	0x1
	.byte	0x7b
	.uleb128 0xf
	.long	.LASF1
	.byte	0x1
	.byte	0x7c
	.long	0x107
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.string	"typevec"
	.byte	0x1
	.byte	0x7d
	.long	0x529
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.string	"ktypevec"
	.byte	0x1
	.byte	0x7e
	.long	0x529
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.string	"btypevec"
	.byte	0x1
	.byte	0x7f
	.long	0x529
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xc
	.string	"numk"
	.byte	0x1
	.byte	0x80
	.long	0x107
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xc
	.string	"numb"
	.byte	0x1
	.byte	0x81
	.long	0x107
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xc
	.string	"ksize"
	.byte	0x1
	.byte	0x82
	.long	0x107
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xc
	.string	"bsize"
	.byte	0x1
	.byte	0x83
	.long	0x107
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xc
	.string	"ntypes"
	.byte	0x1
	.byte	0x84
	.long	0x107
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xc
	.string	"typevec_size"
	.byte	0x1
	.byte	0x85
	.long	0x107
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xc
	.string	"constructor"
	.byte	0x1
	.byte	0x86
	.long	0x107
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xc
	.string	"destructor"
	.byte	0x1
	.byte	0x87
	.long	0x107
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xc
	.string	"static_type"
	.byte	0x1
	.byte	0x88
	.long	0x107
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xc
	.string	"temp_start"
	.byte	0x1
	.byte	0x89
	.long	0x107
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xf
	.long	.LASF2
	.byte	0x1
	.byte	0x8a
	.long	0x107
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xc
	.string	"dllimported"
	.byte	0x1
	.byte	0x8b
	.long	0x107
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xc
	.string	"tmpl_argvec"
	.byte	0x1
	.byte	0x8c
	.long	0x529
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xc
	.string	"ntmpl_args"
	.byte	0x1
	.byte	0x8d
	.long	0x107
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xc
	.string	"forgetting_types"
	.byte	0x1
	.byte	0x8e
	.long	0x107
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xc
	.string	"previous_argument"
	.byte	0x1
	.byte	0x90
	.long	0x52f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xc
	.string	"nrepeats"
	.byte	0x1
	.byte	0x91
	.long	0x107
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.long	0x14c
	.uleb128 0x5
	.byte	0x4
	.long	0x36c
	.uleb128 0xb
	.long	0x571
	.string	"optable"
	.byte	0xc
	.byte	0x1
	.byte	0x99
	.uleb128 0xc
	.string	"in"
	.byte	0x1
	.byte	0x9a
	.long	0x2eb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.string	"out"
	.byte	0x1
	.byte	0x9b
	.long	0x2eb
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.string	"flags"
	.byte	0x1
	.byte	0x9c
	.long	0x16a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x10
	.long	0x5d0
	.long	.LASF3
	.byte	0x4
	.byte	0x1
	.byte	0xf3
	.uleb128 0xa
	.string	"tk_none"
	.sleb128 0
	.uleb128 0xa
	.string	"tk_pointer"
	.sleb128 1
	.uleb128 0xa
	.string	"tk_reference"
	.sleb128 2
	.uleb128 0xa
	.string	"tk_integral"
	.sleb128 3
	.uleb128 0xa
	.string	"tk_bool"
	.sleb128 4
	.uleb128 0xa
	.string	"tk_char"
	.sleb128 5
	.uleb128 0xa
	.string	"tk_real"
	.sleb128 6
	.byte	0x0
	.uleb128 0x11
	.long	.LASF3
	.byte	0x1
	.byte	0xfb
	.long	0x571
	.uleb128 0x12
	.long	0x624
	.string	"consume_count"
	.byte	0x1
	.value	0x21f
	.byte	0x1
	.long	0x107
	.long	.LFB6
	.long	.LFE6
	.long	.LLST1
	.uleb128 0x13
	.string	"type"
	.byte	0x1
	.value	0x21e
	.long	0x180
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x14
	.string	"count"
	.byte	0x1
	.value	0x220
	.long	0x107
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x12
	.long	0x67b
	.string	"consume_count_with_underscores"
	.byte	0x1
	.value	0x247
	.byte	0x1
	.long	0x107
	.long	.LFB7
	.long	.LFE7
	.long	.LLST2
	.uleb128 0x15
	.long	.LASF4
	.byte	0x1
	.value	0x246
	.long	0x180
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x14
	.string	"idx"
	.byte	0x1
	.value	0x248
	.long	0x107
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x12
	.long	0x6b5
	.string	"code_for_qualifier"
	.byte	0x1
	.value	0x269
	.byte	0x1
	.long	0x107
	.long	.LFB8
	.long	.LFE8
	.long	.LLST3
	.uleb128 0x13
	.string	"c"
	.byte	0x1
	.value	0x268
	.long	0x107
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x12
	.long	0x6ef
	.string	"qualifier_string"
	.byte	0x1
	.value	0x283
	.byte	0x1
	.long	0x16f
	.long	.LFB9
	.long	.LFE9
	.long	.LLST4
	.uleb128 0x15
	.long	.LASF2
	.byte	0x1
	.value	0x282
	.long	0x107
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x12
	.long	0x729
	.string	"demangle_qualifier"
	.byte	0x1
	.value	0x2ad
	.byte	0x1
	.long	0x16f
	.long	.LFB10
	.long	.LFE10
	.long	.LLST5
	.uleb128 0x13
	.string	"c"
	.byte	0x1
	.value	0x2ac
	.long	0x107
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x16
	.long	0x84f
	.byte	0x1
	.string	"cplus_demangle_opname"
	.byte	0x1
	.value	0x2b6
	.byte	0x1
	.long	0x107
	.long	.LFB11
	.long	.LFE11
	.long	.LLST6
	.uleb128 0x13
	.string	"opname"
	.byte	0x1
	.value	0x2b3
	.long	0x16f
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x15
	.long	.LASF5
	.byte	0x1
	.value	0x2b4
	.long	0x14c
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x15
	.long	.LASF1
	.byte	0x1
	.value	0x2b5
	.long	0x107
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x14
	.string	"len"
	.byte	0x1
	.value	0x2b7
	.long	0x107
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x14
	.string	"len1"
	.byte	0x1
	.value	0x2b7
	.long	0x107
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x14
	.string	"ret"
	.byte	0x1
	.value	0x2b7
	.long	0x107
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x14
	.string	"type"
	.byte	0x1
	.value	0x2b8
	.long	0x36c
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x17
	.long	.LASF6
	.byte	0x1
	.value	0x2b9
	.long	0x84f
	.byte	0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0x14
	.string	"tem"
	.byte	0x1
	.value	0x2ba
	.long	0x16f
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x18
	.long	0x801
	.long	.LBB2
	.long	.LBE2
	.uleb128 0x14
	.string	"i"
	.byte	0x1
	.value	0x2d7
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.uleb128 0x18
	.long	0x81c
	.long	.LBB3
	.long	.LBE3
	.uleb128 0x14
	.string	"i"
	.byte	0x1
	.value	0x2e9
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x18
	.long	0x837
	.long	.LBB4
	.long	.LBE4
	.uleb128 0x14
	.string	"i"
	.byte	0x1
	.value	0x301
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x19
	.long	.LBB5
	.long	.LBE5
	.uleb128 0x14
	.string	"i"
	.byte	0x1
	.value	0x312
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.long	0x85f
	.long	0x37a
	.uleb128 0x7
	.long	0x145
	.byte	0x0
	.byte	0x0
	.uleb128 0x16
	.long	0x8cb
	.byte	0x1
	.string	"cplus_mangle_opname"
	.byte	0x1
	.value	0x33d
	.byte	0x1
	.long	0x16f
	.long	.LFB12
	.long	.LFE12
	.long	.LLST7
	.uleb128 0x13
	.string	"opname"
	.byte	0x1
	.value	0x33b
	.long	0x16f
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x15
	.long	.LASF1
	.byte	0x1
	.value	0x33c
	.long	0x107
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x14
	.string	"i"
	.byte	0x1
	.value	0x33e
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x14
	.string	"len"
	.byte	0x1
	.value	0x33f
	.long	0x107
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x16
	.long	0x91f
	.byte	0x1
	.string	"cplus_demangle_set_style"
	.byte	0x1
	.value	0x352
	.byte	0x1
	.long	0x18c
	.long	.LFB13
	.long	.LFE13
	.long	.LLST8
	.uleb128 0x13
	.string	"style"
	.byte	0x1
	.value	0x351
	.long	0x18c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x17
	.long	.LASF7
	.byte	0x1
	.value	0x353
	.long	0x91f
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.long	0x925
	.uleb128 0x8
	.long	0x277
	.uleb128 0x16
	.long	0x981
	.byte	0x1
	.string	"cplus_demangle_name_to_style"
	.byte	0x1
	.value	0x364
	.byte	0x1
	.long	0x18c
	.long	.LFB14
	.long	.LFE14
	.long	.LLST9
	.uleb128 0x13
	.string	"name"
	.byte	0x1
	.value	0x363
	.long	0x16f
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x17
	.long	.LASF7
	.byte	0x1
	.value	0x365
	.long	0x91f
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x16
	.long	0x9e8
	.byte	0x1
	.string	"cplus_demangle"
	.byte	0x1
	.value	0x38e
	.byte	0x1
	.long	0x14c
	.long	.LFB15
	.long	.LFE15
	.long	.LLST10
	.uleb128 0x15
	.long	.LASF4
	.byte	0x1
	.value	0x38c
	.long	0x16f
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x15
	.long	.LASF1
	.byte	0x1
	.value	0x38d
	.long	0x107
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x14
	.string	"ret"
	.byte	0x1
	.value	0x38f
	.long	0x14c
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x17
	.long	.LASF6
	.byte	0x1
	.value	0x390
	.long	0x84f
	.byte	0x3
	.byte	0x91
	.sleb128 -100
	.byte	0x0
	.uleb128 0x1a
	.long	0xa58
	.string	"grow_vect"
	.byte	0x1
	.value	0x3bc
	.byte	0x1
	.long	.LFB16
	.long	.LFE16
	.long	.LLST11
	.uleb128 0x13
	.string	"old_vect"
	.byte	0x1
	.value	0x3b8
	.long	0x529
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x13
	.string	"size"
	.byte	0x1
	.value	0x3b9
	.long	0x17a
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x13
	.string	"min_size"
	.byte	0x1
	.value	0x3ba
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x13
	.string	"element_size"
	.byte	0x1
	.value	0x3bb
	.long	0x107
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.byte	0x0
	.uleb128 0x12
	.long	0xb3d
	.string	"ada_demangle"
	.byte	0x1
	.value	0x3d2
	.byte	0x1
	.long	0x14c
	.long	.LFB17
	.long	.LFE17
	.long	.LLST12
	.uleb128 0x15
	.long	.LASF4
	.byte	0x1
	.value	0x3d0
	.long	0x16f
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x13
	.string	"option"
	.byte	0x1
	.value	0x3d1
	.long	0x107
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x14
	.string	"i"
	.byte	0x1
	.value	0x3d3
	.long	0x107
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x14
	.string	"j"
	.byte	0x1
	.value	0x3d3
	.long	0x107
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x14
	.string	"len0"
	.byte	0x1
	.value	0x3d4
	.long	0x107
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x14
	.string	"p"
	.byte	0x1
	.value	0x3d5
	.long	0x16f
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x17
	.long	.LASF8
	.byte	0x1
	.value	0x3d6
	.long	0x14c
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x14
	.string	"at_start_name"
	.byte	0x1
	.value	0x3d7
	.long	0x107
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x14
	.string	"changed"
	.byte	0x1
	.value	0x3d8
	.long	0x107
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x14
	.string	"demangled_size"
	.byte	0x1
	.value	0x3d9
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1b
	.string	"Suppress"
	.byte	0x1
	.value	0x428
	.long	.L160
	.byte	0x0
	.uleb128 0x12
	.long	0xbf3
	.string	"internal_cplus_demangle"
	.byte	0x1
	.value	0x43f
	.byte	0x1
	.long	0x14c
	.long	.LFB18
	.long	.LFE18
	.long	.LLST13
	.uleb128 0x15
	.long	.LASF6
	.byte	0x1
	.value	0x43d
	.long	0xbf3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x15
	.long	.LASF4
	.byte	0x1
	.value	0x43e
	.long	0x16f
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x14
	.string	"decl"
	.byte	0x1
	.value	0x441
	.long	0x36c
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x17
	.long	.LASF9
	.byte	0x1
	.value	0x442
	.long	0x107
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x17
	.long	.LASF8
	.byte	0x1
	.value	0x443
	.long	0x14c
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x14
	.string	"s1"
	.byte	0x1
	.value	0x444
	.long	0x107
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x14
	.string	"s2"
	.byte	0x1
	.value	0x444
	.long	0x107
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x14
	.string	"s3"
	.byte	0x1
	.value	0x444
	.long	0x107
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x14
	.string	"s4"
	.byte	0x1
	.value	0x444
	.long	0x107
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.long	0x37a
	.uleb128 0x1a
	.long	0xc2e
	.string	"squangle_mop_up"
	.byte	0x1
	.value	0x481
	.byte	0x1
	.long	.LFB19
	.long	.LFE19
	.long	.LLST14
	.uleb128 0x15
	.long	.LASF6
	.byte	0x1
	.value	0x480
	.long	0xbf3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x1a
	.long	0xcf7
	.string	"work_stuff_copy_to_from"
	.byte	0x1
	.value	0x495
	.byte	0x1
	.long	.LFB20
	.long	.LFE20
	.long	.LLST15
	.uleb128 0x13
	.string	"to"
	.byte	0x1
	.value	0x493
	.long	0xbf3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x13
	.string	"from"
	.byte	0x1
	.value	0x494
	.long	0xbf3
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x14
	.string	"i"
	.byte	0x1
	.value	0x496
	.long	0x107
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x18
	.long	0xca3
	.long	.LBB6
	.long	.LBE6
	.uleb128 0x14
	.string	"len"
	.byte	0x1
	.value	0x4a4
	.long	0x107
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.uleb128 0x18
	.long	0xcc0
	.long	.LBB7
	.long	.LBE7
	.uleb128 0x14
	.string	"len"
	.byte	0x1
	.value	0x4b0
	.long	0x107
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x18
	.long	0xcdd
	.long	.LBB8
	.long	.LBE8
	.uleb128 0x14
	.string	"len"
	.byte	0x1
	.value	0x4bc
	.long	0x107
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x19
	.long	.LBB9
	.long	.LBE9
	.uleb128 0x14
	.string	"len"
	.byte	0x1
	.value	0x4c8
	.long	0x107
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.uleb128 0x1a
	.long	0xd4d
	.string	"delete_non_B_K_work_stuff"
	.byte	0x1
	.value	0x4dc
	.byte	0x1
	.long	.LFB21
	.long	.LFE21
	.long	.LLST16
	.uleb128 0x15
	.long	.LASF6
	.byte	0x1
	.value	0x4db
	.long	0xbf3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x19
	.long	.LBB10
	.long	.LBE10
	.uleb128 0x14
	.string	"i"
	.byte	0x1
	.value	0x4e8
	.long	0x107
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x1a
	.long	0xd84
	.string	"delete_work_stuff"
	.byte	0x1
	.value	0x4fe
	.byte	0x1
	.long	.LFB22
	.long	.LFE22
	.long	.LLST17
	.uleb128 0x15
	.long	.LASF6
	.byte	0x1
	.value	0x4fd
	.long	0xbf3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x12
	.long	0xde1
	.string	"mop_up"
	.byte	0x1
	.value	0x50b
	.byte	0x1
	.long	0x14c
	.long	.LFB23
	.long	.LFE23
	.long	.LLST18
	.uleb128 0x15
	.long	.LASF6
	.byte	0x1
	.value	0x508
	.long	0xbf3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x15
	.long	.LASF10
	.byte	0x1
	.value	0x509
	.long	0x52f
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x15
	.long	.LASF9
	.byte	0x1
	.value	0x50a
	.long	0x107
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x17
	.long	.LASF8
	.byte	0x1
	.value	0x50c
	.long	0x14c
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x12
	.long	0xf08
	.string	"demangle_signature"
	.byte	0x1
	.value	0x542
	.byte	0x1
	.long	0x107
	.long	.LFB24
	.long	.LFE24
	.long	.LLST19
	.uleb128 0x15
	.long	.LASF6
	.byte	0x1
	.value	0x53f
	.long	0xbf3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x15
	.long	.LASF4
	.byte	0x1
	.value	0x540
	.long	0x180
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x15
	.long	.LASF10
	.byte	0x1
	.value	0x541
	.long	0x52f
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x17
	.long	.LASF9
	.byte	0x1
	.value	0x543
	.long	0x107
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x14
	.string	"func_done"
	.byte	0x1
	.value	0x544
	.long	0x107
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x14
	.string	"expect_func"
	.byte	0x1
	.value	0x545
	.long	0x107
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x14
	.string	"expect_return_type"
	.byte	0x1
	.value	0x546
	.long	0x107
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x14
	.string	"oldmangled"
	.byte	0x1
	.value	0x547
	.long	0x16f
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x17
	.long	.LASF11
	.byte	0x1
	.value	0x548
	.long	0x36c
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x14
	.string	"tname"
	.byte	0x1
	.value	0x549
	.long	0x36c
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x18
	.long	0xee5
	.long	.LBB11
	.long	.LBE11
	.uleb128 0x14
	.string	"s"
	.byte	0x1
	.value	0x59f
	.long	0x36c
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.byte	0x0
	.uleb128 0x19
	.long	.LBB12
	.long	.LBE12
	.uleb128 0x14
	.string	"return_type"
	.byte	0x1
	.value	0x5f3
	.long	0x36c
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.byte	0x0
	.byte	0x0
	.uleb128 0x12
	.long	0xfb9
	.string	"demangle_template_template_parm"
	.byte	0x1
	.value	0x67e
	.byte	0x1
	.long	0x107
	.long	.LFB25
	.long	.LFE25
	.long	.LLST20
	.uleb128 0x15
	.long	.LASF6
	.byte	0x1
	.value	0x67b
	.long	0xbf3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x15
	.long	.LASF4
	.byte	0x1
	.value	0x67c
	.long	0x180
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x13
	.string	"tname"
	.byte	0x1
	.value	0x67d
	.long	0x52f
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x14
	.string	"i"
	.byte	0x1
	.value	0x67f
	.long	0x107
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x14
	.string	"r"
	.byte	0x1
	.value	0x680
	.long	0x107
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x17
	.long	.LASF12
	.byte	0x1
	.value	0x681
	.long	0x107
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x17
	.long	.LASF9
	.byte	0x1
	.value	0x682
	.long	0x107
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x14
	.string	"temp"
	.byte	0x1
	.value	0x683
	.long	0x36c
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0x0
	.uleb128 0x12
	.long	0x1085
	.string	"demangle_expression"
	.byte	0x1
	.value	0x6bf
	.byte	0x1
	.long	0x107
	.long	.LFB26
	.long	.LFE26
	.long	.LLST21
	.uleb128 0x15
	.long	.LASF6
	.byte	0x1
	.value	0x6bb
	.long	0xbf3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x15
	.long	.LASF4
	.byte	0x1
	.value	0x6bc
	.long	0x180
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x13
	.string	"s"
	.byte	0x1
	.value	0x6bd
	.long	0x52f
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x13
	.string	"tk"
	.byte	0x1
	.value	0x6be
	.long	0x5d0
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x14
	.string	"need_operator"
	.byte	0x1
	.value	0x6c0
	.long	0x107
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x17
	.long	.LASF9
	.byte	0x1
	.value	0x6c1
	.long	0x107
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x19
	.long	.LBB13
	.long	.LBE13
	.uleb128 0x14
	.string	"i"
	.byte	0x1
	.value	0x6ca
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x14
	.string	"len"
	.byte	0x1
	.value	0x6cb
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x19
	.long	.LBB14
	.long	.LBE14
	.uleb128 0x14
	.string	"l"
	.byte	0x1
	.value	0x6d3
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x12
	.long	0x117f
	.string	"demangle_integral_value"
	.byte	0x1
	.value	0x6fa
	.byte	0x1
	.long	0x107
	.long	.LFB27
	.long	.LFE27
	.long	.LLST22
	.uleb128 0x15
	.long	.LASF6
	.byte	0x1
	.value	0x6f7
	.long	0xbf3
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x15
	.long	.LASF4
	.byte	0x1
	.value	0x6f8
	.long	0x180
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x13
	.string	"s"
	.byte	0x1
	.value	0x6f9
	.long	0x52f
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x17
	.long	.LASF9
	.byte	0x1
	.value	0x6fb
	.long	0x107
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x19
	.long	.LBB15
	.long	.LBE15
	.uleb128 0x14
	.string	"value"
	.byte	0x1
	.value	0x703
	.long	0x107
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x14
	.string	"multidigit_without_leading_underscore"
	.byte	0x1
	.value	0x707
	.long	0x107
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x14
	.string	"leave_following_underscore"
	.byte	0x1
	.value	0x708
	.long	0x107
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x19
	.long	.LBB16
	.long	.LBE16
	.uleb128 0x14
	.string	"buf"
	.byte	0x1
	.value	0x73a
	.long	0x15a
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x12
	.long	0x11d8
	.string	"demangle_real_value"
	.byte	0x1
	.value	0x759
	.byte	0x1
	.long	0x107
	.long	.LFB28
	.long	.LFE28
	.long	.LLST23
	.uleb128 0x15
	.long	.LASF6
	.byte	0x1
	.value	0x756
	.long	0xbf3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x15
	.long	.LASF4
	.byte	0x1
	.value	0x757
	.long	0x180
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x13
	.string	"s"
	.byte	0x1
	.value	0x758
	.long	0x52f
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.byte	0x0
	.uleb128 0x12
	.long	0x1301
	.string	"demangle_template_value_parm"
	.byte	0x1
	.value	0x785
	.byte	0x1
	.long	0x107
	.long	.LFB29
	.long	.LFE29
	.long	.LLST24
	.uleb128 0x15
	.long	.LASF6
	.byte	0x1
	.value	0x781
	.long	0xbf3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x15
	.long	.LASF4
	.byte	0x1
	.value	0x782
	.long	0x180
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x13
	.string	"s"
	.byte	0x1
	.value	0x783
	.long	0x52f
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x13
	.string	"tk"
	.byte	0x1
	.value	0x784
	.long	0x5d0
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x17
	.long	.LASF9
	.byte	0x1
	.value	0x786
	.long	0x107
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x18
	.long	0x1273
	.long	.LBB17
	.long	.LBE17
	.uleb128 0x14
	.string	"idx"
	.byte	0x1
	.value	0x78b
	.long	0x107
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0x0
	.uleb128 0x18
	.long	0x129f
	.long	.LBB18
	.long	.LBE18
	.uleb128 0x14
	.string	"tmp"
	.byte	0x1
	.value	0x79c
	.long	0x1301
	.byte	0x2
	.byte	0x91
	.sleb128 -14
	.uleb128 0x14
	.string	"val"
	.byte	0x1
	.value	0x79d
	.long	0x107
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.uleb128 0x18
	.long	0x12bc
	.long	.LBB19
	.long	.LBE19
	.uleb128 0x14
	.string	"val"
	.byte	0x1
	.value	0x7b1
	.long	0x107
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x19
	.long	.LBB20
	.long	.LBE20
	.uleb128 0x14
	.string	"symbol_len"
	.byte	0x1
	.value	0x7c3
	.long	0x107
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x19
	.long	.LBB21
	.long	.LBE21
	.uleb128 0x14
	.string	"p"
	.byte	0x1
	.value	0x7ca
	.long	0x14c
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x14
	.string	"q"
	.byte	0x1
	.value	0x7ca
	.long	0x14c
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.long	0x1311
	.long	0x152
	.uleb128 0x7
	.long	0x145
	.byte	0x1
	.byte	0x0
	.uleb128 0x12
	.long	0x14d5
	.string	"demangle_template"
	.byte	0x1
	.value	0x7f7
	.byte	0x1
	.long	0x107
	.long	.LFB30
	.long	.LFE30
	.long	.LLST25
	.uleb128 0x15
	.long	.LASF6
	.byte	0x1
	.value	0x7f1
	.long	0xbf3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x15
	.long	.LASF4
	.byte	0x1
	.value	0x7f2
	.long	0x180
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x13
	.string	"tname"
	.byte	0x1
	.value	0x7f3
	.long	0x52f
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x15
	.long	.LASF11
	.byte	0x1
	.value	0x7f4
	.long	0x52f
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x13
	.string	"is_type"
	.byte	0x1
	.value	0x7f5
	.long	0x107
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x13
	.string	"remember"
	.byte	0x1
	.value	0x7f6
	.long	0x107
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x14
	.string	"i"
	.byte	0x1
	.value	0x7f8
	.long	0x107
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x14
	.string	"r"
	.byte	0x1
	.value	0x7f9
	.long	0x107
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x17
	.long	.LASF12
	.byte	0x1
	.value	0x7fa
	.long	0x107
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x17
	.long	.LASF9
	.byte	0x1
	.value	0x7fb
	.long	0x107
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x17
	.long	.LASF13
	.byte	0x1
	.value	0x7fc
	.long	0x16f
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x14
	.string	"is_java_array"
	.byte	0x1
	.value	0x7fd
	.long	0x107
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x14
	.string	"temp"
	.byte	0x1
	.value	0x7fe
	.long	0x36c
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x17
	.long	.LASF14
	.byte	0x1
	.value	0x7ff
	.long	0x107
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x18
	.long	0x1440
	.long	.LBB22
	.long	.LBE22
	.uleb128 0x14
	.string	"idx"
	.byte	0x1
	.value	0x80a
	.long	0x107
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.byte	0x0
	.uleb128 0x18
	.long	0x145d
	.long	.LBB23
	.long	.LBE23
	.uleb128 0x14
	.string	"len"
	.byte	0x1
	.value	0x855
	.long	0x107
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0x0
	.uleb128 0x18
	.long	0x1492
	.long	.LBB24
	.long	.LBE24
	.uleb128 0x14
	.string	"r2"
	.byte	0x1
	.value	0x864
	.long	0x107
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x19
	.long	.LBB25
	.long	.LBE25
	.uleb128 0x14
	.string	"len"
	.byte	0x1
	.value	0x871
	.long	0x107
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.byte	0x0
	.uleb128 0x19
	.long	.LBB26
	.long	.LBE26
	.uleb128 0x14
	.string	"param"
	.byte	0x1
	.value	0x87f
	.long	0x36c
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x14
	.string	"s"
	.byte	0x1
	.value	0x880
	.long	0x52f
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x19
	.long	.LBB27
	.long	.LBE27
	.uleb128 0x14
	.string	"len"
	.byte	0x1
	.value	0x89f
	.long	0x107
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x12
	.long	0x1596
	.string	"arm_pt"
	.byte	0x1
	.value	0x8ce
	.byte	0x1
	.long	0x107
	.long	.LFB31
	.long	.LFE31
	.long	.LLST26
	.uleb128 0x15
	.long	.LASF6
	.byte	0x1
	.value	0x8ca
	.long	0xbf3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x15
	.long	.LASF4
	.byte	0x1
	.value	0x8cb
	.long	0x16f
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x13
	.string	"n"
	.byte	0x1
	.value	0x8cc
	.long	0x107
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x13
	.string	"anchor"
	.byte	0x1
	.value	0x8cd
	.long	0x180
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x13
	.string	"args"
	.byte	0x1
	.value	0x8cd
	.long	0x180
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x18
	.long	0x155f
	.long	.LBB28
	.long	.LBE28
	.uleb128 0x14
	.string	"len"
	.byte	0x1
	.value	0x8d3
	.long	0x107
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x18
	.long	0x157c
	.long	.LBB29
	.long	.LBE29
	.uleb128 0x14
	.string	"len"
	.byte	0x1
	.value	0x8e4
	.long	0x107
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x19
	.long	.LBB30
	.long	.LBE30
	.uleb128 0x14
	.string	"len"
	.byte	0x1
	.value	0x8f1
	.long	0x107
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x1a
	.long	0x16e0
	.string	"demangle_arm_hp_template"
	.byte	0x1
	.value	0x907
	.byte	0x1
	.long	.LFB32
	.long	.LFE32
	.long	.LLST27
	.uleb128 0x15
	.long	.LASF6
	.byte	0x1
	.value	0x903
	.long	0xbf3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x15
	.long	.LASF4
	.byte	0x1
	.value	0x904
	.long	0x180
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x13
	.string	"n"
	.byte	0x1
	.value	0x905
	.long	0x107
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x15
	.long	.LASF10
	.byte	0x1
	.value	0x906
	.long	0x52f
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x14
	.string	"p"
	.byte	0x1
	.value	0x908
	.long	0x16f
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x14
	.string	"args"
	.byte	0x1
	.value	0x909
	.long	0x16f
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x14
	.string	"e"
	.byte	0x1
	.value	0x90a
	.long	0x16f
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x14
	.string	"arg"
	.byte	0x1
	.value	0x90b
	.long	0x36c
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1b
	.string	"hpacc_template_args_done"
	.byte	0x1
	.value	0x947
	.long	.L641
	.uleb128 0x1b
	.string	"cfront_template_args_done"
	.byte	0x1
	.value	0x987
	.long	.L660
	.uleb128 0x18
	.long	0x16a3
	.long	.LBB31
	.long	.LBE31
	.uleb128 0x14
	.string	"start_spec_args"
	.byte	0x1
	.value	0x911
	.long	0x14c
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x19
	.long	.LBB32
	.long	.LBE32
	.uleb128 0x14
	.string	"type_str"
	.byte	0x1
	.value	0x951
	.long	0x36c
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x19
	.long	.LBB33
	.long	.LBE33
	.uleb128 0x14
	.string	"old_args"
	.byte	0x1
	.value	0x97b
	.long	0x16f
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x12
	.long	0x1757
	.string	"demangle_class_name"
	.byte	0x1
	.value	0x9a7
	.byte	0x1
	.long	0x107
	.long	.LFB33
	.long	.LFE33
	.long	.LLST28
	.uleb128 0x15
	.long	.LASF6
	.byte	0x1
	.value	0x9a4
	.long	0xbf3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x15
	.long	.LASF4
	.byte	0x1
	.value	0x9a5
	.long	0x180
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x15
	.long	.LASF10
	.byte	0x1
	.value	0x9a6
	.long	0x52f
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x14
	.string	"n"
	.byte	0x1
	.value	0x9a8
	.long	0x107
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x17
	.long	.LASF9
	.byte	0x1
	.value	0x9a9
	.long	0x107
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x12
	.long	0x1800
	.string	"demangle_class"
	.byte	0x1
	.value	0x9df
	.byte	0x1
	.long	0x107
	.long	.LFB34
	.long	.LFE34
	.long	.LLST29
	.uleb128 0x15
	.long	.LASF6
	.byte	0x1
	.value	0x9dc
	.long	0xbf3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x15
	.long	.LASF4
	.byte	0x1
	.value	0x9dd
	.long	0x180
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x15
	.long	.LASF10
	.byte	0x1
	.value	0x9de
	.long	0x52f
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x17
	.long	.LASF9
	.byte	0x1
	.value	0x9e0
	.long	0x107
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x17
	.long	.LASF15
	.byte	0x1
	.value	0x9e1
	.long	0x107
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x14
	.string	"class_name"
	.byte	0x1
	.value	0x9e2
	.long	0x36c
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x14
	.string	"save_class_name_end"
	.byte	0x1
	.value	0x9e3
	.long	0x14c
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x12
	.long	0x18c2
	.string	"iterate_demangle_function"
	.byte	0x1
	.value	0xa17
	.byte	0x1
	.long	0x107
	.long	.LFB35
	.long	.LFE35
	.long	.LLST30
	.uleb128 0x15
	.long	.LASF6
	.byte	0x1
	.value	0xa13
	.long	0xbf3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x15
	.long	.LASF4
	.byte	0x1
	.value	0xa14
	.long	0x180
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x15
	.long	.LASF10
	.byte	0x1
	.value	0xa15
	.long	0x52f
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x13
	.string	"scan"
	.byte	0x1
	.value	0xa16
	.long	0x16f
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x14
	.string	"mangle_init"
	.byte	0x1
	.value	0xa18
	.long	0x16f
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x17
	.long	.LASF9
	.byte	0x1
	.value	0xa19
	.long	0x107
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x14
	.string	"decl_init"
	.byte	0x1
	.value	0xa1a
	.long	0x36c
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x14
	.string	"work_init"
	.byte	0x1
	.value	0xa1b
	.long	0x37a
	.byte	0x3
	.byte	0x91
	.sleb128 -116
	.byte	0x0
	.uleb128 0x12
	.long	0x1961
	.string	"demangle_prefix"
	.byte	0x1
	.value	0xa7d
	.byte	0x1
	.long	0x107
	.long	.LFB36
	.long	.LFE36
	.long	.LLST31
	.uleb128 0x15
	.long	.LASF6
	.byte	0x1
	.value	0xa7a
	.long	0xbf3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x15
	.long	.LASF4
	.byte	0x1
	.value	0xa7b
	.long	0x180
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x15
	.long	.LASF10
	.byte	0x1
	.value	0xa7c
	.long	0x52f
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x17
	.long	.LASF9
	.byte	0x1
	.value	0xa7e
	.long	0x107
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x14
	.string	"scan"
	.byte	0x1
	.value	0xa7f
	.long	0x16f
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x14
	.string	"i"
	.byte	0x1
	.value	0xa80
	.long	0x107
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x19
	.long	.LBB34
	.long	.LBE34
	.uleb128 0x14
	.string	"marker"
	.byte	0x1
	.value	0xa8e
	.long	0x14c
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.uleb128 0x12
	.long	0x1a36
	.string	"gnu_special"
	.byte	0x1
	.value	0xb50
	.byte	0x1
	.long	0x107
	.long	.LFB37
	.long	.LFE37
	.long	.LLST32
	.uleb128 0x15
	.long	.LASF6
	.byte	0x1
	.value	0xb4d
	.long	0xbf3
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x15
	.long	.LASF4
	.byte	0x1
	.value	0xb4e
	.long	0x180
	.byte	0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x15
	.long	.LASF10
	.byte	0x1
	.value	0xb4f
	.long	0x52f
	.byte	0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x14
	.string	"n"
	.byte	0x1
	.value	0xb51
	.long	0x107
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x17
	.long	.LASF9
	.byte	0x1
	.value	0xb52
	.long	0x107
	.byte	0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x14
	.string	"p"
	.byte	0x1
	.value	0xb53
	.long	0x16f
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x19
	.long	.LBB35
	.long	.LBE35
	.uleb128 0x14
	.string	"delta"
	.byte	0x1
	.value	0xbdf
	.long	0x107
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x19
	.long	.LBB36
	.long	.LBE36
	.uleb128 0x14
	.string	"method"
	.byte	0x1
	.value	0xbe7
	.long	0x14c
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x19
	.long	.LBB37
	.long	.LBE37
	.uleb128 0x14
	.string	"buf"
	.byte	0x1
	.value	0xbeb
	.long	0x1a36
	.byte	0x3
	.byte	0x91
	.sleb128 -74
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.long	0x1a46
	.long	0x152
	.uleb128 0x7
	.long	0x145
	.byte	0x31
	.byte	0x0
	.uleb128 0x1a
	.long	0x1acf
	.string	"recursively_demangle"
	.byte	0x1
	.value	0xc1d
	.byte	0x1
	.long	.LFB38
	.long	.LFE38
	.long	.LLST33
	.uleb128 0x15
	.long	.LASF6
	.byte	0x1
	.value	0xc19
	.long	0xbf3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x15
	.long	.LASF4
	.byte	0x1
	.value	0xc1a
	.long	0x180
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x15
	.long	.LASF5
	.byte	0x1
	.value	0xc1b
	.long	0x52f
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x15
	.long	.LASF16
	.byte	0x1
	.value	0xc1c
	.long	0x107
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x14
	.string	"recurse"
	.byte	0x1
	.value	0xc1e
	.long	0x14c
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x17
	.long	.LASF17
	.byte	0x1
	.value	0xc1f
	.long	0x14c
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x12
	.long	0x1b3f
	.string	"arm_special"
	.byte	0x1
	.value	0xc4f
	.byte	0x1
	.long	0x107
	.long	.LFB39
	.long	.LFE39
	.long	.LLST34
	.uleb128 0x15
	.long	.LASF4
	.byte	0x1
	.value	0xc4d
	.long	0x180
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x15
	.long	.LASF10
	.byte	0x1
	.value	0xc4e
	.long	0x52f
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x14
	.string	"n"
	.byte	0x1
	.value	0xc50
	.long	0x107
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x17
	.long	.LASF9
	.byte	0x1
	.value	0xc51
	.long	0x107
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x14
	.string	"scan"
	.byte	0x1
	.value	0xc52
	.long	0x16f
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x12
	.long	0x1c9d
	.string	"demangle_qualified"
	.byte	0x1
	.value	0xca7
	.byte	0x1
	.long	0x107
	.long	.LFB40
	.long	.LFE40
	.long	.LLST35
	.uleb128 0x15
	.long	.LASF6
	.byte	0x1
	.value	0xca2
	.long	0xbf3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x15
	.long	.LASF4
	.byte	0x1
	.value	0xca3
	.long	0x180
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x15
	.long	.LASF5
	.byte	0x1
	.value	0xca4
	.long	0x52f
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x13
	.string	"isfuncname"
	.byte	0x1
	.value	0xca5
	.long	0x107
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x13
	.string	"append"
	.byte	0x1
	.value	0xca6
	.long	0x107
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x14
	.string	"qualifiers"
	.byte	0x1
	.value	0xca8
	.long	0x107
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x17
	.long	.LASF9
	.byte	0x1
	.value	0xca9
	.long	0x107
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x14
	.string	"num"
	.byte	0x1
	.value	0xcaa
	.long	0x1301
	.byte	0x2
	.byte	0x91
	.sleb128 -14
	.uleb128 0x14
	.string	"temp"
	.byte	0x1
	.value	0xcab
	.long	0x36c
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x14
	.string	"last_name"
	.byte	0x1
	.value	0xcac
	.long	0x36c
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x17
	.long	.LASF14
	.byte	0x1
	.value	0xcad
	.long	0x107
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x18
	.long	0x1c46
	.long	.LBB38
	.long	.LBE38
	.uleb128 0x14
	.string	"idx"
	.byte	0x1
	.value	0xcba
	.long	0x107
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x19
	.long	.LBB39
	.long	.LBE39
	.uleb128 0x14
	.string	"remember_K"
	.byte	0x1
	.value	0xcf4
	.long	0x107
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x18
	.long	0x1c82
	.long	.LBB40
	.long	.LBE40
	.uleb128 0x14
	.string	"idx"
	.byte	0x1
	.value	0xd09
	.long	0x107
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x19
	.long	.LBB41
	.long	.LBE41
	.uleb128 0x17
	.long	.LASF16
	.byte	0x1
	.value	0xd18
	.long	0x107
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x12
	.long	0x1cfc
	.string	"get_count"
	.byte	0x1
	.value	0xd86
	.byte	0x1
	.long	0x107
	.long	.LFB41
	.long	.LFE41
	.long	.LLST36
	.uleb128 0x13
	.string	"type"
	.byte	0x1
	.value	0xd84
	.long	0x180
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x13
	.string	"count"
	.byte	0x1
	.value	0xd85
	.long	0x186
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x14
	.string	"p"
	.byte	0x1
	.value	0xd87
	.long	0x16f
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x14
	.string	"n"
	.byte	0x1
	.value	0xd88
	.long	0x107
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x12
	.long	0x1e42
	.string	"do_type"
	.byte	0x1
	.value	0xdad
	.byte	0x1
	.long	0x107
	.long	.LFB42
	.long	.LFE42
	.long	.LLST37
	.uleb128 0x15
	.long	.LASF6
	.byte	0x1
	.value	0xdaa
	.long	0xbf3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x15
	.long	.LASF4
	.byte	0x1
	.value	0xdab
	.long	0x180
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x15
	.long	.LASF5
	.byte	0x1
	.value	0xdac
	.long	0x52f
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x14
	.string	"n"
	.byte	0x1
	.value	0xdae
	.long	0x107
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x14
	.string	"done"
	.byte	0x1
	.value	0xdaf
	.long	0x107
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x17
	.long	.LASF9
	.byte	0x1
	.value	0xdb0
	.long	0x107
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x14
	.string	"decl"
	.byte	0x1
	.value	0xdb1
	.long	0x36c
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x14
	.string	"remembered_type"
	.byte	0x1
	.value	0xdb2
	.long	0x16f
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x17
	.long	.LASF2
	.byte	0x1
	.value	0xdb3
	.long	0x107
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x17
	.long	.LASF15
	.byte	0x1
	.value	0xdb4
	.long	0x36c
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x14
	.string	"tk"
	.byte	0x1
	.value	0xdb5
	.long	0x5d0
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x18
	.long	0x1e28
	.long	.LBB42
	.long	.LBE42
	.uleb128 0x14
	.string	"member"
	.byte	0x1
	.value	0xdbf
	.long	0x107
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x18
	.long	0x1e0c
	.long	.LBB43
	.long	.LBE43
	.uleb128 0x14
	.string	"temp"
	.byte	0x1
	.value	0xe2a
	.long	0x36c
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.byte	0x0
	.uleb128 0x19
	.long	.LBB44
	.long	.LBE44
	.uleb128 0x14
	.string	"temp"
	.byte	0x1
	.value	0xe30
	.long	0x36c
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.byte	0x0
	.byte	0x0
	.uleb128 0x19
	.long	.LBB45
	.long	.LBE45
	.uleb128 0x14
	.string	"idx"
	.byte	0x1
	.value	0xea4
	.long	0x107
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x12
	.long	0x1f3e
	.string	"demangle_fund_type"
	.byte	0x1
	.value	0xee6
	.byte	0x1
	.long	0x107
	.long	.LFB43
	.long	.LFE43
	.long	.LLST38
	.uleb128 0x15
	.long	.LASF6
	.byte	0x1
	.value	0xee3
	.long	0xbf3
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x15
	.long	.LASF4
	.byte	0x1
	.value	0xee4
	.long	0x180
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x15
	.long	.LASF5
	.byte	0x1
	.value	0xee5
	.long	0x52f
	.byte	0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x14
	.string	"done"
	.byte	0x1
	.value	0xee7
	.long	0x107
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x17
	.long	.LASF9
	.byte	0x1
	.value	0xee8
	.long	0x107
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x14
	.string	"buf"
	.byte	0x1
	.value	0xee9
	.long	0x1f3e
	.byte	0x2
	.byte	0x91
	.sleb128 -30
	.uleb128 0x14
	.string	"dec"
	.byte	0x1
	.value	0xeea
	.long	0xa8
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x17
	.long	.LASF15
	.byte	0x1
	.value	0xeeb
	.long	0x36c
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x14
	.string	"tk"
	.byte	0x1
	.value	0xeec
	.long	0x5d0
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x18
	.long	0x1f14
	.long	.LBB46
	.long	.LBE46
	.uleb128 0x14
	.string	"i"
	.byte	0x1
	.value	0xf65
	.long	0x107
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0x0
	.uleb128 0x19
	.long	.LBB47
	.long	.LBE47
	.uleb128 0x17
	.long	.LASF14
	.byte	0x1
	.value	0xf8c
	.long	0x107
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x17
	.long	.LASF15
	.byte	0x1
	.value	0xf8d
	.long	0x36c
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.long	0x1f4e
	.long	0x152
	.uleb128 0x7
	.long	0x145
	.byte	0x9
	.byte	0x0
	.uleb128 0x12
	.long	0x1fcd
	.string	"do_hpacc_template_const_value"
	.byte	0x1
	.value	0xfb0
	.byte	0x1
	.long	0x107
	.long	.LFB44
	.long	.LFE44
	.long	.LLST39
	.uleb128 0x15
	.long	.LASF6
	.byte	0x1
	.value	0xfad
	.long	0xbf3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x15
	.long	.LASF4
	.byte	0x1
	.value	0xfae
	.long	0x180
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x15
	.long	.LASF5
	.byte	0x1
	.value	0xfaf
	.long	0x52f
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x14
	.string	"unsigned_const"
	.byte	0x1
	.value	0xfb1
	.long	0x107
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x12
	.long	0x2067
	.string	"do_hpacc_template_literal"
	.byte	0x1
	.value	0xfe9
	.byte	0x1
	.long	0x107
	.long	.LFB45
	.long	.LFE45
	.long	.LLST40
	.uleb128 0x15
	.long	.LASF6
	.byte	0x1
	.value	0xfe6
	.long	0xbf3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x15
	.long	.LASF4
	.byte	0x1
	.value	0xfe7
	.long	0x180
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x15
	.long	.LASF5
	.byte	0x1
	.value	0xfe8
	.long	0x52f
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x14
	.string	"literal_len"
	.byte	0x1
	.value	0xfea
	.long	0x107
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x14
	.string	"recurse"
	.byte	0x1
	.value	0xfeb
	.long	0x14c
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x17
	.long	.LASF17
	.byte	0x1
	.value	0xfec
	.long	0x14c
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x12
	.long	0x20b6
	.string	"snarf_numeric_literal"
	.byte	0x1
	.value	0x1016
	.byte	0x1
	.long	0x107
	.long	.LFB46
	.long	.LFE46
	.long	.LLST41
	.uleb128 0x13
	.string	"args"
	.byte	0x1
	.value	0x1014
	.long	0x180
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x13
	.string	"arg"
	.byte	0x1
	.value	0x1015
	.long	0x52f
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x12
	.long	0x2113
	.string	"do_arg"
	.byte	0x1
	.value	0x1036
	.byte	0x1
	.long	0x107
	.long	.LFB47
	.long	.LFE47
	.long	.LLST42
	.uleb128 0x15
	.long	.LASF6
	.byte	0x1
	.value	0x1033
	.long	0xbf3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x15
	.long	.LASF4
	.byte	0x1
	.value	0x1034
	.long	0x180
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x15
	.long	.LASF5
	.byte	0x1
	.value	0x1035
	.long	0x52f
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x17
	.long	.LASF13
	.byte	0x1
	.value	0x1039
	.long	0x16f
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x1a
	.long	0x2173
	.string	"remember_type"
	.byte	0x1
	.value	0x107b
	.byte	0x1
	.long	.LFB48
	.long	.LFE48
	.long	.LLST43
	.uleb128 0x15
	.long	.LASF6
	.byte	0x1
	.value	0x1078
	.long	0xbf3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x15
	.long	.LASF13
	.byte	0x1
	.value	0x1079
	.long	0x16f
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x13
	.string	"len"
	.byte	0x1
	.value	0x107a
	.long	0x107
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x14
	.string	"tem"
	.byte	0x1
	.value	0x107c
	.long	0x14c
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x1a
	.long	0x21d4
	.string	"remember_Ktype"
	.byte	0x1
	.value	0x109e
	.byte	0x1
	.long	.LFB49
	.long	.LFE49
	.long	.LLST44
	.uleb128 0x15
	.long	.LASF6
	.byte	0x1
	.value	0x109b
	.long	0xbf3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x15
	.long	.LASF13
	.byte	0x1
	.value	0x109c
	.long	0x16f
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x13
	.string	"len"
	.byte	0x1
	.value	0x109d
	.long	0x107
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x14
	.string	"tem"
	.byte	0x1
	.value	0x109f
	.long	0x14c
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x12
	.long	0x221b
	.string	"register_Btype"
	.byte	0x1
	.value	0x10be
	.byte	0x1
	.long	0x107
	.long	.LFB50
	.long	.LFE50
	.long	.LLST45
	.uleb128 0x15
	.long	.LASF6
	.byte	0x1
	.value	0x10bd
	.long	0xbf3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x14
	.string	"ret"
	.byte	0x1
	.value	0x10bf
	.long	0x107
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x1a
	.long	0x228d
	.string	"remember_Btype"
	.byte	0x1
	.value	0x10dd
	.byte	0x1
	.long	.LFB51
	.long	.LFE51
	.long	.LLST46
	.uleb128 0x15
	.long	.LASF6
	.byte	0x1
	.value	0x10da
	.long	0xbf3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x15
	.long	.LASF13
	.byte	0x1
	.value	0x10db
	.long	0x16f
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x13
	.string	"len"
	.byte	0x1
	.value	0x10dc
	.long	0x107
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x13
	.string	"index"
	.byte	0x1
	.value	0x10dc
	.long	0x107
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x14
	.string	"tem"
	.byte	0x1
	.value	0x10de
	.long	0x14c
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x1a
	.long	0x22d4
	.string	"forget_B_and_K_types"
	.byte	0x1
	.value	0x10ea
	.byte	0x1
	.long	.LFB52
	.long	.LFE52
	.long	.LLST47
	.uleb128 0x15
	.long	.LASF6
	.byte	0x1
	.value	0x10e9
	.long	0xbf3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x14
	.string	"i"
	.byte	0x1
	.value	0x10eb
	.long	0x107
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x1a
	.long	0x2313
	.string	"forget_types"
	.byte	0x1
	.value	0x1106
	.byte	0x1
	.long	.LFB53
	.long	.LFE53
	.long	.LLST48
	.uleb128 0x15
	.long	.LASF6
	.byte	0x1
	.value	0x1105
	.long	0xbf3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x14
	.string	"i"
	.byte	0x1
	.value	0x1107
	.long	0x107
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x12
	.long	0x23c3
	.string	"demangle_args"
	.byte	0x1
	.value	0x1143
	.byte	0x1
	.long	0x107
	.long	.LFB54
	.long	.LFE54
	.long	.LLST49
	.uleb128 0x15
	.long	.LASF6
	.byte	0x1
	.value	0x1140
	.long	0xbf3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x15
	.long	.LASF4
	.byte	0x1
	.value	0x1141
	.long	0x180
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x15
	.long	.LASF10
	.byte	0x1
	.value	0x1142
	.long	0x52f
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x14
	.string	"arg"
	.byte	0x1
	.value	0x1144
	.long	0x36c
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x17
	.long	.LASF12
	.byte	0x1
	.value	0x1145
	.long	0x107
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x14
	.string	"r"
	.byte	0x1
	.value	0x1146
	.long	0x107
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x14
	.string	"t"
	.byte	0x1
	.value	0x1147
	.long	0x107
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x14
	.string	"tem"
	.byte	0x1
	.value	0x1148
	.long	0x16f
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x14
	.string	"temptype"
	.byte	0x1
	.value	0x1149
	.long	0x152
	.byte	0x2
	.byte	0x91
	.sleb128 -13
	.byte	0x0
	.uleb128 0x12
	.long	0x246b
	.string	"demangle_nested_args"
	.byte	0x1
	.value	0x11c0
	.byte	0x1
	.long	0x107
	.long	.LFB55
	.long	.LFE55
	.long	.LLST50
	.uleb128 0x15
	.long	.LASF6
	.byte	0x1
	.value	0x11bd
	.long	0xbf3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x15
	.long	.LASF4
	.byte	0x1
	.value	0x11be
	.long	0x180
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x15
	.long	.LASF10
	.byte	0x1
	.value	0x11bf
	.long	0x52f
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x14
	.string	"saved_previous_argument"
	.byte	0x1
	.value	0x11c1
	.long	0x52f
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x17
	.long	.LASF5
	.byte	0x1
	.value	0x11c2
	.long	0x107
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x14
	.string	"saved_nrepeats"
	.byte	0x1
	.value	0x11c3
	.long	0x107
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x1a
	.long	0x2537
	.string	"demangle_function_name"
	.byte	0x1
	.value	0x11e5
	.byte	0x1
	.long	.LFB56
	.long	.LFE56
	.long	.LLST51
	.uleb128 0x15
	.long	.LASF6
	.byte	0x1
	.value	0x11e1
	.long	0xbf3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x15
	.long	.LASF4
	.byte	0x1
	.value	0x11e2
	.long	0x180
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x15
	.long	.LASF10
	.byte	0x1
	.value	0x11e3
	.long	0x52f
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x13
	.string	"scan"
	.byte	0x1
	.value	0x11e4
	.long	0x16f
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x14
	.string	"i"
	.byte	0x1
	.value	0x11e6
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x14
	.string	"type"
	.byte	0x1
	.value	0x11e7
	.long	0x36c
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x14
	.string	"tem"
	.byte	0x1
	.value	0x11e8
	.long	0x16f
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x18
	.long	0x251d
	.long	.LBB48
	.long	.LBE48
	.uleb128 0x14
	.string	"len"
	.byte	0x1
	.value	0x121f
	.long	0x107
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x19
	.long	.LBB49
	.long	.LBE49
	.uleb128 0x14
	.string	"len"
	.byte	0x1
	.value	0x122f
	.long	0x107
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.uleb128 0x1a
	.long	0x2582
	.string	"string_need"
	.byte	0x1
	.value	0x1284
	.byte	0x1
	.long	.LFB57
	.long	.LFE57
	.long	.LLST52
	.uleb128 0x13
	.string	"s"
	.byte	0x1
	.value	0x1282
	.long	0x52f
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x13
	.string	"n"
	.byte	0x1
	.value	0x1283
	.long	0x107
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x14
	.string	"tem"
	.byte	0x1
	.value	0x1285
	.long	0x107
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x1a
	.long	0x25b3
	.string	"string_delete"
	.byte	0x1
	.value	0x129e
	.byte	0x1
	.long	.LFB58
	.long	.LFE58
	.long	.LLST53
	.uleb128 0x13
	.string	"s"
	.byte	0x1
	.value	0x129d
	.long	0x52f
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x1a
	.long	0x25e2
	.string	"string_init"
	.byte	0x1
	.value	0x12a9
	.byte	0x1
	.long	.LFB59
	.long	.LFE59
	.long	.LLST54
	.uleb128 0x13
	.string	"s"
	.byte	0x1
	.value	0x12a8
	.long	0x52f
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x1a
	.long	0x2612
	.string	"string_clear"
	.byte	0x1
	.value	0x12b0
	.byte	0x1
	.long	.LFB60
	.long	.LFE60
	.long	.LLST55
	.uleb128 0x13
	.string	"s"
	.byte	0x1
	.value	0x12af
	.long	0x52f
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x1a
	.long	0x265d
	.string	"string_append"
	.byte	0x1
	.value	0x12c3
	.byte	0x1
	.long	.LFB61
	.long	.LFE61
	.long	.LLST56
	.uleb128 0x13
	.string	"p"
	.byte	0x1
	.value	0x12c1
	.long	0x52f
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x13
	.string	"s"
	.byte	0x1
	.value	0x12c2
	.long	0x16f
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x14
	.string	"n"
	.byte	0x1
	.value	0x12c4
	.long	0x107
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x1a
	.long	0x26a9
	.string	"string_appends"
	.byte	0x1
	.value	0x12d0
	.byte	0x1
	.long	.LFB62
	.long	.LFE62
	.long	.LLST57
	.uleb128 0x13
	.string	"p"
	.byte	0x1
	.value	0x12cf
	.long	0x52f
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x13
	.string	"s"
	.byte	0x1
	.value	0x12cf
	.long	0x52f
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x14
	.string	"n"
	.byte	0x1
	.value	0x12d1
	.long	0x107
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x1a
	.long	0x26f5
	.string	"string_appendn"
	.byte	0x1
	.value	0x12e1
	.byte	0x1
	.long	.LFB63
	.long	.LFE63
	.long	.LLST58
	.uleb128 0x13
	.string	"p"
	.byte	0x1
	.value	0x12de
	.long	0x52f
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x13
	.string	"s"
	.byte	0x1
	.value	0x12df
	.long	0x16f
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x13
	.string	"n"
	.byte	0x1
	.value	0x12e0
	.long	0x107
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.byte	0x0
	.uleb128 0x1a
	.long	0x2734
	.string	"string_prepend"
	.byte	0x1
	.value	0x12ee
	.byte	0x1
	.long	.LFB64
	.long	.LFE64
	.long	.LLST59
	.uleb128 0x13
	.string	"p"
	.byte	0x1
	.value	0x12ec
	.long	0x52f
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x13
	.string	"s"
	.byte	0x1
	.value	0x12ed
	.long	0x16f
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x1a
	.long	0x2774
	.string	"string_prepends"
	.byte	0x1
	.value	0x12f8
	.byte	0x1
	.long	.LFB65
	.long	.LFE65
	.long	.LLST60
	.uleb128 0x13
	.string	"p"
	.byte	0x1
	.value	0x12f7
	.long	0x52f
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x13
	.string	"s"
	.byte	0x1
	.value	0x12f7
	.long	0x52f
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x1a
	.long	0x27ce
	.string	"string_prependn"
	.byte	0x1
	.value	0x1304
	.byte	0x1
	.long	.LFB66
	.long	.LFE66
	.long	.LLST61
	.uleb128 0x13
	.string	"p"
	.byte	0x1
	.value	0x1301
	.long	0x52f
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x13
	.string	"s"
	.byte	0x1
	.value	0x1302
	.long	0x16f
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x13
	.string	"n"
	.byte	0x1
	.value	0x1303
	.long	0x107
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x14
	.string	"q"
	.byte	0x1
	.value	0x1305
	.long	0x14c
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x1a
	.long	0x282a
	.string	"string_append_template_idx"
	.byte	0x1
	.value	0x1317
	.byte	0x1
	.long	.LFB67
	.long	.LFE67
	.long	.LLST62
	.uleb128 0x13
	.string	"s"
	.byte	0x1
	.value	0x1315
	.long	0x52f
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x13
	.string	"idx"
	.byte	0x1
	.value	0x1316
	.long	0x107
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x14
	.string	"buf"
	.byte	0x1
	.value	0x1318
	.long	0x282a
	.byte	0x2
	.byte	0x91
	.sleb128 -49
	.byte	0x0
	.uleb128 0x6
	.long	0x283a
	.long	0x152
	.uleb128 0x7
	.long	0x145
	.byte	0x20
	.byte	0x0
	.uleb128 0x6
	.long	0x284a
	.long	0x152
	.uleb128 0x7
	.long	0x145
	.byte	0x3
	.byte	0x0
	.uleb128 0x1c
	.string	"cplus_markers"
	.byte	0x1
	.byte	0x65
	.long	0x283a
	.byte	0x5
	.byte	0x3
	.long	cplus_markers
	.uleb128 0x1c
	.string	"char_str"
	.byte	0x1
	.byte	0x67
	.long	0x1301
	.byte	0x5
	.byte	0x3
	.long	char_str
	.uleb128 0x6
	.long	0x288b
	.long	0x535
	.uleb128 0x7
	.long	0x145
	.byte	0x4e
	.byte	0x0
	.uleb128 0x1c
	.string	"optable"
	.byte	0x1
	.byte	0x9d
	.long	0x28a0
	.byte	0x5
	.byte	0x3
	.long	optable
	.uleb128 0x8
	.long	0x287b
	.uleb128 0x6
	.long	0x28b5
	.long	0xc0
	.uleb128 0x7
	.long	0x145
	.byte	0xff
	.byte	0x0
	.uleb128 0x1d
	.string	"_sch_istable"
	.byte	0x4
	.byte	0x48
	.long	0x28cb
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.long	0x28a5
	.uleb128 0x1e
	.string	"current_demangling_style"
	.byte	0x1
	.byte	0x63
	.long	0x18c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	current_demangling_style
	.uleb128 0x6
	.long	0x2907
	.long	0x277
	.uleb128 0x7
	.long	0x145
	.byte	0xa
	.byte	0x0
	.uleb128 0x1e
	.string	"libiberty_demanglers"
	.byte	0x1
	.byte	0xfd
	.long	0x292a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	libiberty_demanglers
	.uleb128 0x8
	.long	0x28f7
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
	.uleb128 0x4
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
	.uleb128 0x5
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x7
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0xa
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0x0
	.byte	0x0
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.long	0xeb
	.value	0x2
	.long	.Ldebug_info0
	.long	0x2930
	.long	0x2f5
	.string	"set_cplus_marker_for_demangling"
	.long	0x729
	.string	"cplus_demangle_opname"
	.long	0x85f
	.string	"cplus_mangle_opname"
	.long	0x8cb
	.string	"cplus_demangle_set_style"
	.long	0x92a
	.string	"cplus_demangle_name_to_style"
	.long	0x981
	.string	"cplus_demangle"
	.long	0x28d0
	.string	"current_demangling_style"
	.long	0x2907
	.string	"libiberty_demanglers"
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
.LASF17:
	.string	"recurse_dem"
.LASF15:
	.string	"btype"
.LASF5:
	.string	"result"
.LASF12:
	.string	"need_comma"
.LASF14:
	.string	"bindex"
.LASF13:
	.string	"start"
.LASF7:
	.string	"demangler"
.LASF11:
	.string	"trawname"
.LASF4:
	.string	"mangled"
.LASF1:
	.string	"options"
.LASF8:
	.string	"demangled"
.LASF2:
	.string	"type_quals"
.LASF6:
	.string	"work"
.LASF9:
	.string	"success"
.LASF16:
	.string	"namelength"
.LASF10:
	.string	"declp"
.LASF3:
	.string	"type_kind_t"
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
