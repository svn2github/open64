	.file	"genopinit.c"
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
	.string	"extendtab[$B][$A][0] = CODE_FOR_$(extend$a$b2$)"
	.align 4
.LC1:
	.string	"extendtab[$B][$A][1] = CODE_FOR_$(zero_extend$a$b2$)"
	.align 4
.LC2:
	.string	"fixtab[$A][$B][0] = CODE_FOR_$(fix$F$a$I$b2$)"
	.align 4
.LC3:
	.string	"fixtab[$A][$B][1] = CODE_FOR_$(fixuns$F$a$b2$)"
	.align 4
.LC4:
	.string	"fixtrunctab[$A][$B][0] = CODE_FOR_$(fix_trunc$F$a$I$b2$)"
	.align 4
.LC5:
	.string	"fixtrunctab[$A][$B][1] = CODE_FOR_$(fixuns_trunc$F$a$I$b2$)"
	.align 4
.LC6:
	.string	"floattab[$B][$A][0] = CODE_FOR_$(float$I$a$F$b2$)"
	.align 4
.LC7:
	.string	"floattab[$B][$A][1] = CODE_FOR_$(floatuns$I$a$F$b2$)"
	.align 4
.LC8:
	.string	"add_optab->handlers[$A].insn_code = CODE_FOR_$(add$P$a3$)"
	.align 4
.LC9:
	.string	"addv_optab->handlers[(int) $A].insn_code =\n    add_optab->handlers[(int) $A].insn_code = CODE_FOR_$(add$F$a3$)"
	.align 4
.LC10:
	.string	"addv_optab->handlers[(int) $A].insn_code = CODE_FOR_$(addv$I$a3$)"
	.align 4
.LC11:
	.string	"sub_optab->handlers[$A].insn_code = CODE_FOR_$(sub$P$a3$)"
	.align 4
.LC12:
	.string	"subv_optab->handlers[(int) $A].insn_code =\n    sub_optab->handlers[(int) $A].insn_code = CODE_FOR_$(sub$F$a3$)"
	.align 4
.LC13:
	.string	"subv_optab->handlers[(int) $A].insn_code = CODE_FOR_$(subv$I$a3$)"
	.align 4
.LC14:
	.string	"smul_optab->handlers[$A].insn_code = CODE_FOR_$(mul$P$a3$)"
	.align 4
.LC15:
	.string	"smulv_optab->handlers[(int) $A].insn_code =\n    smul_optab->handlers[(int) $A].insn_code = CODE_FOR_$(mul$F$a3$)"
	.align 4
.LC16:
	.string	"smulv_optab->handlers[(int) $A].insn_code = CODE_FOR_$(mulv$I$a3$)"
	.align 4
.LC17:
	.string	"umul_highpart_optab->handlers[$A].insn_code = CODE_FOR_$(umul$a3_highpart$)"
	.align 4
.LC18:
	.string	"smul_highpart_optab->handlers[$A].insn_code = CODE_FOR_$(smul$a3_highpart$)"
	.align 4
.LC19:
	.string	"smul_widen_optab->handlers[$B].insn_code = CODE_FOR_$(mul$a$b3$)$N"
	.align 4
.LC20:
	.string	"umul_widen_optab->handlers[$B].insn_code = CODE_FOR_$(umul$a$b3$)$N"
	.align 4
.LC21:
	.string	"sdiv_optab->handlers[$A].insn_code = CODE_FOR_$(div$a3$)"
	.align 4
.LC22:
	.string	"sdivv_optab->handlers[(int) $A].insn_code = CODE_FOR_$(div$V$I$a3$)"
	.align 4
.LC23:
	.string	"udiv_optab->handlers[$A].insn_code = CODE_FOR_$(udiv$I$a3$)"
	.align 4
.LC24:
	.string	"sdivmod_optab->handlers[$A].insn_code = CODE_FOR_$(divmod$a4$)"
	.align 4
.LC25:
	.string	"udivmod_optab->handlers[$A].insn_code = CODE_FOR_$(udivmod$a4$)"
	.align 4
.LC26:
	.string	"smod_optab->handlers[$A].insn_code = CODE_FOR_$(mod$a3$)"
	.align 4
.LC27:
	.string	"umod_optab->handlers[$A].insn_code = CODE_FOR_$(umod$a3$)"
	.align 4
.LC28:
	.string	"ftrunc_optab->handlers[$A].insn_code = CODE_FOR_$(ftrunc$F$a2$)"
	.align 4
.LC29:
	.string	"and_optab->handlers[$A].insn_code = CODE_FOR_$(and$a3$)"
	.align 4
.LC30:
	.string	"ior_optab->handlers[$A].insn_code = CODE_FOR_$(ior$a3$)"
	.align 4
.LC31:
	.string	"xor_optab->handlers[$A].insn_code = CODE_FOR_$(xor$a3$)"
	.align 4
.LC32:
	.string	"ashl_optab->handlers[$A].insn_code = CODE_FOR_$(ashl$a3$)"
	.align 4
.LC33:
	.string	"ashr_optab->handlers[$A].insn_code = CODE_FOR_$(ashr$a3$)"
	.align 4
.LC34:
	.string	"lshr_optab->handlers[$A].insn_code = CODE_FOR_$(lshr$a3$)"
	.align 4
.LC35:
	.string	"rotl_optab->handlers[$A].insn_code = CODE_FOR_$(rotl$a3$)"
	.align 4
.LC36:
	.string	"rotr_optab->handlers[$A].insn_code = CODE_FOR_$(rotr$a3$)"
	.align 4
.LC37:
	.string	"smin_optab->handlers[$A].insn_code = CODE_FOR_$(smin$I$a3$)"
	.align 4
.LC38:
	.string	"smin_optab->handlers[$A].insn_code = CODE_FOR_$(min$F$a3$)"
	.align 4
.LC39:
	.string	"smax_optab->handlers[$A].insn_code = CODE_FOR_$(smax$I$a3$)"
	.align 4
.LC40:
	.string	"smax_optab->handlers[$A].insn_code = CODE_FOR_$(max$F$a3$)"
	.align 4
.LC41:
	.string	"umin_optab->handlers[$A].insn_code = CODE_FOR_$(umin$I$a3$)"
	.align 4
.LC42:
	.string	"umax_optab->handlers[$A].insn_code = CODE_FOR_$(umax$I$a3$)"
	.align 4
.LC43:
	.string	"neg_optab->handlers[$A].insn_code = CODE_FOR_$(neg$P$a2$)"
	.align 4
.LC44:
	.string	"negv_optab->handlers[(int) $A].insn_code =\n    neg_optab->handlers[(int) $A].insn_code = CODE_FOR_$(neg$F$a2$)"
	.align 4
.LC45:
	.string	"negv_optab->handlers[(int) $A].insn_code = CODE_FOR_$(negv$I$a2$)"
	.align 4
.LC46:
	.string	"abs_optab->handlers[$A].insn_code = CODE_FOR_$(abs$P$a2$)"
	.align 4
.LC47:
	.string	"absv_optab->handlers[(int) $A].insn_code =\n    abs_optab->handlers[(int) $A].insn_code = CODE_FOR_$(abs$F$a2$)"
	.align 4
.LC48:
	.string	"absv_optab->handlers[(int) $A].insn_code = CODE_FOR_$(absv$I$a2$)"
	.align 4
.LC49:
	.string	"sqrt_optab->handlers[$A].insn_code = CODE_FOR_$(sqrt$a2$)"
	.align 4
.LC50:
	.string	"sin_optab->handlers[$A].insn_code = CODE_FOR_$(sin$a2$)"
	.align 4
.LC51:
	.string	"cos_optab->handlers[$A].insn_code = CODE_FOR_$(cos$a2$)"
	.align 4
.LC52:
	.string	"exp_optab->handlers[$A].insn_code = CODE_FOR_$(exp$a2$)"
	.align 4
.LC53:
	.string	"log_optab->handlers[$A].insn_code = CODE_FOR_$(log$a2$)"
	.align 4
.LC54:
	.string	"strlen_optab->handlers[$A].insn_code = CODE_FOR_$(strlen$a$)"
	.align 4
.LC55:
	.string	"one_cmpl_optab->handlers[$A].insn_code = CODE_FOR_$(one_cmpl$a2$)"
	.align 4
.LC56:
	.string	"ffs_optab->handlers[$A].insn_code = CODE_FOR_$(ffs$a2$)"
	.align 4
.LC57:
	.string	"mov_optab->handlers[$A].insn_code = CODE_FOR_$(mov$a$)"
	.align 4
.LC58:
	.string	"movstrict_optab->handlers[$A].insn_code = CODE_FOR_$(movstrict$a$)"
	.align 4
.LC59:
	.string	"cmp_optab->handlers[$A].insn_code = CODE_FOR_$(cmp$a$)"
	.align 4
.LC60:
	.string	"tst_optab->handlers[$A].insn_code = CODE_FOR_$(tst$a$)"
	.align 4
.LC61:
	.string	"bcc_gen_fctn[$C] = gen_$(b$c$)"
	.align 4
.LC62:
	.string	"setcc_gen_code[$C] = CODE_FOR_$(s$c$)"
	.align 4
.LC63:
	.string	"movcc_gen_code[$A] = CODE_FOR_$(mov$acc$)"
	.align 4
.LC64:
	.string	"cbranch_optab->handlers[$A].insn_code = CODE_FOR_$(cbranch$a4$)"
	.align 4
.LC65:
	.string	"cmov_optab->handlers[$A].insn_code = CODE_FOR_$(cmov$a6$)"
	.align 4
.LC66:
	.string	"cstore_optab->handlers[$A].insn_code = CODE_FOR_$(cstore$a4$)"
	.align 4
.LC67:
	.string	"push_optab->handlers[$A].insn_code = CODE_FOR_$(push$a1$)"
	.align 4
.LC68:
	.string	"reload_in_optab[$A] = CODE_FOR_$(reload_in$a$)"
	.align 4
.LC69:
	.string	"reload_out_optab[$A] = CODE_FOR_$(reload_out$a$)"
	.align 4
.LC70:
	.string	"movstr_optab[$A] = CODE_FOR_$(movstr$a$)"
	.align 4
.LC71:
	.string	"clrstr_optab[$A] = CODE_FOR_$(clrstr$a$)"
	.section	.data.rel.ro.local,"aw",@progbits
	.align 32
	.type	optabs, @object
	.size	optabs, 288
optabs:
	.long	.LC0
	.long	.LC1
	.long	.LC2
	.long	.LC3
	.long	.LC4
	.long	.LC5
	.long	.LC6
	.long	.LC7
	.long	.LC8
	.long	.LC9
	.long	.LC10
	.long	.LC11
	.long	.LC12
	.long	.LC13
	.long	.LC14
	.long	.LC15
	.long	.LC16
	.long	.LC17
	.long	.LC18
	.long	.LC19
	.long	.LC20
	.long	.LC21
	.long	.LC22
	.long	.LC23
	.long	.LC24
	.long	.LC25
	.long	.LC26
	.long	.LC27
	.long	.LC28
	.long	.LC29
	.long	.LC30
	.long	.LC31
	.long	.LC32
	.long	.LC33
	.long	.LC34
	.long	.LC35
	.long	.LC36
	.long	.LC37
	.long	.LC38
	.long	.LC39
	.long	.LC40
	.long	.LC41
	.long	.LC42
	.long	.LC43
	.long	.LC44
	.long	.LC45
	.long	.LC46
	.long	.LC47
	.long	.LC48
	.long	.LC49
	.long	.LC50
	.long	.LC51
	.long	.LC52
	.long	.LC53
	.long	.LC54
	.long	.LC55
	.long	.LC56
	.long	.LC57
	.long	.LC58
	.long	.LC59
	.long	.LC60
	.long	.LC61
	.long	.LC62
	.long	.LC63
	.long	.LC64
	.long	.LC65
	.long	.LC66
	.long	.LC67
	.long	.LC68
	.long	.LC69
	.long	.LC70
	.long	.LC71
	.section	.rodata
	.type	__FUNCTION__.6686, @object
	.size	__FUNCTION__.6686, 9
__FUNCTION__.6686:
	.string	"gen_insn"
	.align 4
.LC72:
	.string	"../../../kgccfe/gnu/genopinit.c"
.LC73:
	.string	"  if (HAVE_%s)\n  "
.LC74:
	.string	"  "
.LC75:
	.string	"(int) %smode"
.LC76:
	.string	"%s"
.LC77:
	.string	"(int) "
.LC78:
	.string	";"
	.text
	.type	gen_insn, @function
gen_insn:
.LFB15:
	.file 1 "../../../kgccfe/gnu/genopinit.c"
	.loc 1 149 0
	pushl	%ebp
.LCFI0:
	movl	%esp, %ebp
.LCFI1:
	pushl	%edi
.LCFI2:
	pushl	%ebx
.LCFI3:
	subl	$96, %esp
.LCFI4:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 150 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -68(%ebp)
	.loc 1 151 0
	movl	$0, -64(%ebp)
	movl	$0, -60(%ebp)
	movl	$0, -56(%ebp)
	.loc 1 158 0
	movl	-68(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L99
	.loc 1 164 0
	movl	$0, -52(%ebp)
	jmp	.L4
.L5:
.LBB2:
	.loc 1 166 0
	movl	$0, -28(%ebp)
	movl	$0, -24(%ebp)
	movl	$0, -20(%ebp)
	.loc 1 167 0
	movl	$0, -16(%ebp)
	.loc 1 168 0
	movl	$1, -12(%ebp)
	.loc 1 170 0
	movl	-52(%ebp), %eax
	movl	optabs@GOTOFF(%ebx,%eax,4), %eax
	movl	%eax, -40(%ebp)
	jmp	.L6
.L7:
	addl	$1, -40(%ebp)
.L6:
	movl	-40(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$36, %al
	jne	.L7
	movl	-40(%ebp), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	cmpb	$40, %al
	jne	.L7
	.loc 1 173 0
	addl	$2, -40(%ebp)
	movl	-68(%ebp), %eax
	movl	%eax, -44(%ebp)
	jmp	.L10
.L11:
	.loc 1 176 0
	movl	-40(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$36, %al
	je	.L12
	.loc 1 178 0
	movl	-40(%ebp), %eax
	movzbl	(%eax), %edx
	movl	-44(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	%al, %dl
	setne	%al
	addl	$1, -44(%ebp)
	testb	%al, %al
	jne	.L14
	.loc 1 179 0
	jmp	.L16
.L12:
	.loc 1 182 0
	addl	$1, -40(%ebp)
	movl	-40(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	subl	$70, %eax
	movl	%eax, -76(%ebp)
	cmpl	$29, -76(%ebp)
	ja	.L17
	movl	-76(%ebp), %eax
	sall	$2, %eax
	movl	.L25@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L25:
	.long	.L18@GOTOFF
	.long	.L17@GOTOFF
	.long	.L17@GOTOFF
	.long	.L19@GOTOFF
	.long	.L17@GOTOFF
	.long	.L17@GOTOFF
	.long	.L17@GOTOFF
	.long	.L17@GOTOFF
	.long	.L20@GOTOFF
	.long	.L17@GOTOFF
	.long	.L21@GOTOFF
	.long	.L17@GOTOFF
	.long	.L17@GOTOFF
	.long	.L17@GOTOFF
	.long	.L17@GOTOFF
	.long	.L17@GOTOFF
	.long	.L16@GOTOFF
	.long	.L17@GOTOFF
	.long	.L17@GOTOFF
	.long	.L17@GOTOFF
	.long	.L17@GOTOFF
	.long	.L17@GOTOFF
	.long	.L17@GOTOFF
	.long	.L17@GOTOFF
	.long	.L17@GOTOFF
	.long	.L17@GOTOFF
	.long	.L17@GOTOFF
	.long	.L23@GOTOFF
	.long	.L23@GOTOFF
	.long	.L24@GOTOFF
	.text
.L20:
	.loc 1 185 0
	movl	$1, -16(%ebp)
	.loc 1 186 0
	jmp	.L16
.L19:
	.loc 1 188 0
	movl	$1, -24(%ebp)
	.loc 1 189 0
	jmp	.L16
.L21:
	.loc 1 191 0
	movl	$1, -20(%ebp)
	.loc 1 192 0
	jmp	.L16
.L18:
	.loc 1 194 0
	movl	$1, -28(%ebp)
	.loc 1 195 0
	jmp	.L16
.L24:
	.loc 1 199 0
	movl	$0, -56(%ebp)
	jmp	.L26
.L27:
	.loc 1 201 0
	movl	-56(%ebp), %edx
	movl	rtx_name@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -36(%ebp)
	movl	-44(%ebp), %eax
	movl	%eax, -32(%ebp)
	jmp	.L28
.L29:
	.loc 1 202 0
	movl	-36(%ebp), %eax
	movzbl	(%eax), %edx
	movl	-32(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	%al, %dl
	jne	.L30
	.loc 1 201 0
	addl	$1, -36(%ebp)
	addl	$1, -32(%ebp)
.L28:
	movl	-36(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L29
.L30:
	.loc 1 208 0
	movl	-36(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L32
	movl	-32(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L32
	movl	-56(%ebp), %eax
	movl	rtx_class@GOT(%ebx), %edx
	movzbl	(%edx,%eax), %eax
	cmpb	$60, %al
	je	.L35
.L32:
	.loc 1 199 0
	addl	$1, -56(%ebp)
.L26:
	cmpl	$162, -56(%ebp)
	jle	.L27
.L35:
	.loc 1 212 0
	cmpl	$163, -56(%ebp)
	jne	.L36
	.loc 1 213 0
	movl	$0, -12(%ebp)
	jmp	.L16
.L36:
	.loc 1 215 0
	movl	-56(%ebp), %edx
	movl	rtx_name@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
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
	addl	%eax, -44(%ebp)
	.loc 1 216 0
	jmp	.L16
.L23:
	.loc 1 223 0
	movl	$53, -48(%ebp)
	jmp	.L39
.L40:
	.loc 1 225 0
	movl	-48(%ebp), %edx
	movl	mode_name@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -36(%ebp)
	movl	-44(%ebp), %eax
	movl	%eax, -32(%ebp)
	jmp	.L41
.L42:
	.loc 1 226 0
	movl	-36(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edx
	movl	_sch_tolower@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %edx
	movl	-32(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	%al, %dl
	jne	.L43
	.loc 1 225 0
	addl	$1, -36(%ebp)
	addl	$1, -32(%ebp)
.L41:
	movl	-36(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L42
.L43:
	.loc 1 229 0
	movl	-36(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L45
	cmpl	$0, -24(%ebp)
	je	.L47
	movl	-48(%ebp), %eax
	movl	mode_class@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$1, %eax
	je	.L47
	movl	-48(%ebp), %eax
	movl	mode_class@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$7, %eax
	jne	.L45
.L47:
	cmpl	$0, -20(%ebp)
	je	.L50
	movl	-48(%ebp), %eax
	movl	mode_class@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$1, %eax
	je	.L50
	movl	-48(%ebp), %eax
	movl	mode_class@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$3, %eax
	je	.L50
	movl	-48(%ebp), %eax
	movl	mode_class@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$7, %eax
	jne	.L45
.L50:
	cmpl	$0, -28(%ebp)
	je	.L54
	movl	-48(%ebp), %eax
	movl	mode_class@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$2, %eax
	je	.L54
	movl	-48(%ebp), %eax
	movl	mode_class@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$8, %eax
	je	.L54
.L45:
	.loc 1 223 0
	subl	$1, -48(%ebp)
.L39:
	cmpl	$0, -48(%ebp)
	jns	.L40
.L54:
	.loc 1 241 0
	cmpl	$0, -48(%ebp)
	jns	.L57
	.loc 1 242 0
	movl	$0, -12(%ebp)
	jmp	.L59
.L57:
	.loc 1 243 0
	movl	-40(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$97, %al
	jne	.L60
	.loc 1 244 0
	movl	-48(%ebp), %eax
	movl	%eax, -64(%ebp)
	movl	-48(%ebp), %edx
	movl	mode_name@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
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
	addl	%eax, -44(%ebp)
	jmp	.L59
.L60:
	.loc 1 246 0
	movl	-48(%ebp), %eax
	movl	%eax, -60(%ebp)
	movl	-48(%ebp), %edx
	movl	mode_name@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	$-1, %ecx
	movl	%eax, -88(%ebp)
	movl	$0, %eax
	cld
	movl	-88(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	addl	%eax, -44(%ebp)
.L59:
	.loc 1 248 0
	movl	$0, -28(%ebp)
	movl	-28(%ebp), %eax
	movl	%eax, -20(%ebp)
	movl	-20(%ebp), %eax
	movl	%eax, -24(%ebp)
	.loc 1 249 0
	jmp	.L16
.L17:
	.loc 1 252 0
	leal	__FUNCTION__.6686@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$252, 4(%esp)
	leal	.LC72@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L16:
	.loc 1 174 0
	addl	$1, -40(%ebp)
.L10:
	.loc 1 173 0
	cmpl	$0, -12(%ebp)
	je	.L14
	movl	-40(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$36, %al
	jne	.L11
	movl	-40(%ebp), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	cmpb	$41, %al
	jne	.L11
.L14:
	.loc 1 256 0
	cmpl	$0, -12(%ebp)
	je	.L64
	movl	-40(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$36, %al
	jne	.L64
	movl	-40(%ebp), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	cmpb	$41, %al
	jne	.L64
	movl	-44(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L64
	cmpl	$0, -16(%ebp)
	je	.L69
	movl	-64(%ebp), %edx
	movl	mode_wider_mode@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	cmpl	-60(%ebp), %eax
	je	.L69
.L64:
.LBE2:
	.loc 1 164 0
	addl	$1, -52(%ebp)
.L4:
	cmpl	$71, -52(%ebp)
	jbe	.L5
.L69:
	.loc 1 262 0
	cmpl	$72, -52(%ebp)
	je	.L99
	.loc 1 268 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L72
	.loc 1 269 0
	movl	-68(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC73@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
.L72:
	.loc 1 271 0
	leal	.LC74@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 274 0
	movl	-52(%ebp), %eax
	movl	optabs@GOTOFF(%ebx,%eax,4), %eax
	movl	%eax, -40(%ebp)
	jmp	.L74
.L75:
	.loc 1 276 0
	movl	-40(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$36, %al
	je	.L76
	.loc 1 277 0
	movl	-40(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, (%esp)
	call	putchar@PLT
	jmp	.L78
.L76:
	.loc 1 279 0
	addl	$1, -40(%ebp)
	movl	-40(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	subl	$40, %eax
	movl	%eax, -92(%ebp)
	cmpl	$59, -92(%ebp)
	ja	.L78
	movl	-92(%ebp), %eax
	sall	$2, %eax
	movl	.L87@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L87:
	.long	.L78@GOTOFF
	.long	.L78@GOTOFF
	.long	.L78@GOTOFF
	.long	.L78@GOTOFF
	.long	.L78@GOTOFF
	.long	.L78@GOTOFF
	.long	.L78@GOTOFF
	.long	.L78@GOTOFF
	.long	.L78@GOTOFF
	.long	.L78@GOTOFF
	.long	.L78@GOTOFF
	.long	.L78@GOTOFF
	.long	.L78@GOTOFF
	.long	.L78@GOTOFF
	.long	.L78@GOTOFF
	.long	.L78@GOTOFF
	.long	.L78@GOTOFF
	.long	.L78@GOTOFF
	.long	.L78@GOTOFF
	.long	.L78@GOTOFF
	.long	.L78@GOTOFF
	.long	.L78@GOTOFF
	.long	.L78@GOTOFF
	.long	.L78@GOTOFF
	.long	.L78@GOTOFF
	.long	.L80@GOTOFF
	.long	.L81@GOTOFF
	.long	.L82@GOTOFF
	.long	.L78@GOTOFF
	.long	.L78@GOTOFF
	.long	.L78@GOTOFF
	.long	.L78@GOTOFF
	.long	.L78@GOTOFF
	.long	.L78@GOTOFF
	.long	.L78@GOTOFF
	.long	.L78@GOTOFF
	.long	.L78@GOTOFF
	.long	.L78@GOTOFF
	.long	.L78@GOTOFF
	.long	.L78@GOTOFF
	.long	.L78@GOTOFF
	.long	.L78@GOTOFF
	.long	.L78@GOTOFF
	.long	.L78@GOTOFF
	.long	.L78@GOTOFF
	.long	.L78@GOTOFF
	.long	.L83@GOTOFF
	.long	.L78@GOTOFF
	.long	.L78@GOTOFF
	.long	.L78@GOTOFF
	.long	.L78@GOTOFF
	.long	.L78@GOTOFF
	.long	.L78@GOTOFF
	.long	.L78@GOTOFF
	.long	.L78@GOTOFF
	.long	.L78@GOTOFF
	.long	.L78@GOTOFF
	.long	.L84@GOTOFF
	.long	.L85@GOTOFF
	.long	.L86@GOTOFF
	.text
.L83:
	.loc 1 285 0
	movl	-64(%ebp), %eax
	movl	mode_class@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$2, %eax
	jne	.L78
	.loc 1 286 0
	movl	$118, (%esp)
	call	putchar@PLT
	.loc 1 287 0
	jmp	.L78
.L84:
	.loc 1 289 0
	movl	-64(%ebp), %eax
	movl	mode_name@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	movl	%eax, -44(%ebp)
	jmp	.L90
.L91:
	.loc 1 290 0
	movl	-44(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edx
	movl	_sch_tolower@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, (%esp)
	call	putchar@PLT
	.loc 1 289 0
	addl	$1, -44(%ebp)
.L90:
	movl	-44(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L91
	.loc 1 291 0
	jmp	.L78
.L85:
	.loc 1 293 0
	movl	-60(%ebp), %eax
	movl	mode_name@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	movl	%eax, -44(%ebp)
	jmp	.L93
.L94:
	.loc 1 294 0
	movl	-44(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edx
	movl	_sch_tolower@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, (%esp)
	call	putchar@PLT
	.loc 1 293 0
	addl	$1, -44(%ebp)
.L93:
	movl	-44(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L94
	.loc 1 295 0
	jmp	.L78
.L80:
	.loc 1 297 0
	movl	-64(%ebp), %edx
	movl	mode_name@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, 4(%esp)
	leal	.LC75@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 298 0
	jmp	.L78
.L81:
	.loc 1 300 0
	movl	-60(%ebp), %edx
	movl	mode_name@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, 4(%esp)
	leal	.LC75@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 301 0
	jmp	.L78
.L86:
	.loc 1 303 0
	movl	-56(%ebp), %edx
	movl	rtx_name@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, 4(%esp)
	leal	.LC76@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 304 0
	jmp	.L78
.L82:
	.loc 1 306 0
	leal	.LC77@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 307 0
	movl	-56(%ebp), %edx
	movl	rtx_name@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -44(%ebp)
	jmp	.L96
.L97:
	.loc 1 308 0
	movl	-44(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edx
	movl	_sch_toupper@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, (%esp)
	call	putchar@PLT
	.loc 1 307 0
	addl	$1, -44(%ebp)
.L96:
	movl	-44(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L97
.L78:
	.loc 1 274 0
	addl	$1, -40(%ebp)
.L74:
	movl	-40(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L75
	.loc 1 313 0
	leal	.LC78@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
.L99:
	.loc 1 314 0
	addl	$96, %esp
	popl	%ebx
	popl	%edi
	popl	%ebp
	ret
.LFE15:
	.size	gen_insn, .-gen_insn
	.section	.rodata
.LC79:
	.string	"genopinit"
.LC80:
	.string	"no input file name"
	.align 4
.LC81:
	.string	"/* Generated automatically by the program `genopinit'\nfrom the machine description file `md'.  */\n"
.LC82:
	.string	"#include \"config.h\""
.LC83:
	.string	"#include \"system.h\""
.LC84:
	.string	"#include \"rtl.h\""
.LC85:
	.string	"#include \"flags.h\""
.LC86:
	.string	"#include \"insn-flags.h\""
.LC87:
	.string	"#include \"insn-codes.h\""
.LC88:
	.string	"#include \"insn-config.h\""
.LC89:
	.string	"#include \"recog.h\""
.LC90:
	.string	"#include \"expr.h\""
.LC91:
	.string	"#include \"optabs.h\""
.LC92:
	.string	"#include \"reload.h\"\n"
.LC93:
	.string	"void\ninit_all_optabs ()\n{"
.LC94:
	.string	"}"
	.text
.globl main
	.type	main, @function
main:
.LFB16:
	.loc 1 322 0
	leal	4(%esp), %ecx
.LCFI5:
	andl	$-16, %esp
	pushl	-4(%ecx)
.LCFI6:
	pushl	%ebp
.LCFI7:
	movl	%esp, %ebp
.LCFI8:
	pushl	%ebx
.LCFI9:
	pushl	%ecx
.LCFI10:
	subl	$32, %esp
.LCFI11:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	%ecx, -32(%ebp)
	.loc 1 325 0
	movl	progname@GOT(%ebx), %edx
	leal	.LC79@GOTOFF(%ebx), %eax
	movl	%eax, (%edx)
	.loc 1 327 0
	movl	-32(%ebp), %eax
	cmpl	$1, (%eax)
	jg	.L101
	.loc 1 328 0
	leal	.LC80@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fatal@PLT
.L101:
	.loc 1 330 0
	movl	-32(%ebp), %edx
	movl	4(%edx), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %edx
	movl	(%edx), %eax
	movl	%eax, (%esp)
	call	init_md_reader_args@PLT
	testl	%eax, %eax
	je	.L103
	.loc 1 331 0
	movl	$1, -28(%ebp)
	jmp	.L105
.L103:
	.loc 1 333 0
	leal	.LC81@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 336 0
	leal	.LC82@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 337 0
	leal	.LC83@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 338 0
	leal	.LC84@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 339 0
	leal	.LC85@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 341 0
	leal	.LC86@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 342 0
	leal	.LC87@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 344 0
	leal	.LC88@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 345 0
	leal	.LC89@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 346 0
	leal	.LC90@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 347 0
	leal	.LC91@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 348 0
	leal	.LC92@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 350 0
	leal	.LC93@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	jmp	.L113
.L106:
.L113:
.LBB3:
	.loc 1 356 0
	movl	$0, -20(%ebp)
	.loc 1 358 0
	leal	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	read_md_rtx@PLT
	movl	%eax, -12(%ebp)
	.loc 1 359 0
	cmpl	$0, -12(%ebp)
	je	.L107
	.loc 1 362 0
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$13, %ax
	je	.L109
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$19, %ax
	jne	.L106
.L109:
	.loc 1 363 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_insn
	.loc 1 364 0
	jmp	.L106
.L107:
.LBE3:
	.loc 1 366 0
	leal	.LC94@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 368 0
	movl	stdout@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	fflush@PLT
	.loc 1 369 0
	movl	stdout@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	ferror@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -28(%ebp)
.L105:
	movl	-28(%ebp), %eax
	.loc 1 370 0
	addl	$32, %esp
	popl	%ecx
	popl	%ebx
	popl	%ebp
	leal	-4(%ecx), %esp
	ret
.LFE16:
	.size	main, .-main
.globl get_insn_name
	.type	get_insn_name, @function
get_insn_name:
.LFB17:
	.loc 1 376 0
	pushl	%ebp
.LCFI12:
	movl	%esp, %ebp
.LCFI13:
	.loc 1 377 0
	movl	$0, %eax
	.loc 1 378 0
	popl	%ebp
	ret
.LFE17:
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
	.byte	0x4
	.long	.LCFI4-.LCFI1
	.byte	0x83
	.uleb128 0x4
	.byte	0x87
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
	.byte	0xc
	.uleb128 0x1
	.uleb128 0x0
	.byte	0x9
	.uleb128 0x4
	.uleb128 0x1
	.byte	0x4
	.long	.LCFI6-.LCFI5
	.byte	0xc
	.uleb128 0x4
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI7-.LCFI6
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
	.byte	0x84
	.uleb128 0x4
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
	.long	.LCFI12-.LFB17
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI13-.LCFI12
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE4:
	.file 2 "../../../kgccfe/gnu/MIPS/hconfig.h"
	.file 3 "../../../kgccfe/gnu/rtl.h"
	.file 4 "../../../kgccfe/gnu/machmode.h"
	.file 5 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h"
	.file 6 "/usr/include/stdio.h"
	.file 7 "/usr/include/libio.h"
	.file 8 "/usr/include/bits/types.h"
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
	.long	.LCFI5-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI5-.Ltext0
	.long	.LCFI6-.Ltext0
	.value	0x1
	.byte	0x51
	.long	.LCFI6-.Ltext0
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
	.long	.LFE16-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST2:
	.long	.LFB17-.Ltext0
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
	.long	.LFE17-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
	.section	.debug_info
	.long	0x16f5
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.Ldebug_line0
	.long	.Letext0
	.long	.Ltext0
	.string	"GNU C 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.byte	0x1
	.string	"../../../kgccfe/gnu/genopinit.c"
	.string	"/usa/handong/simplnano/cmplr-open64-merge/targia32_sl1/gccfe/gnu"
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
	.byte	0x8a
	.long	0x8f8
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
	.long	0x600
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
	.long	0x21f
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
	.long	0x21f
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
	.long	0x21f
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
	.long	0x21f
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
	.long	0x21f
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
	.long	0x21f
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
	.long	0x21f
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
	.long	0x21f
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
	.long	0x1354
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
	.byte	0xf8
	.long	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"elem"
	.byte	0x3
	.byte	0xf9
	.long	0x1364
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
	.byte	0x5
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
	.byte	0x8
	.byte	0x3b
	.long	0x293
	.uleb128 0x2
	.string	"__off_t"
	.byte	0x8
	.byte	0x90
	.long	0x2dd
	.uleb128 0x9
	.string	"long int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x2
	.string	"__off64_t"
	.byte	0x8
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
	.byte	0x6
	.byte	0x2e
	.uleb128 0xd
	.string	"_flags"
	.byte	0x7
	.value	0x10c
	.long	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"_IO_read_ptr"
	.byte	0x7
	.value	0x111
	.long	0x2fc
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"_IO_read_end"
	.byte	0x7
	.value	0x112
	.long	0x2fc
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"_IO_read_base"
	.byte	0x7
	.value	0x113
	.long	0x2fc
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.string	"_IO_write_base"
	.byte	0x7
	.value	0x114
	.long	0x2fc
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"_IO_write_ptr"
	.byte	0x7
	.value	0x115
	.long	0x2fc
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.string	"_IO_write_end"
	.byte	0x7
	.value	0x116
	.long	0x2fc
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.string	"_IO_buf_base"
	.byte	0x7
	.value	0x117
	.long	0x2fc
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xd
	.string	"_IO_buf_end"
	.byte	0x7
	.value	0x118
	.long	0x2fc
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.string	"_IO_save_base"
	.byte	0x7
	.value	0x11a
	.long	0x2fc
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xd
	.string	"_IO_backup_base"
	.byte	0x7
	.value	0x11b
	.long	0x2fc
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xd
	.string	"_IO_save_end"
	.byte	0x7
	.value	0x11c
	.long	0x2fc
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xd
	.string	"_markers"
	.byte	0x7
	.value	0x11e
	.long	0x5ce
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.string	"_chain"
	.byte	0x7
	.value	0x120
	.long	0x5d4
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xd
	.string	"_fileno"
	.byte	0x7
	.value	0x122
	.long	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.string	"_flags2"
	.byte	0x7
	.value	0x126
	.long	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xd
	.string	"_old_offset"
	.byte	0x7
	.value	0x128
	.long	0x2ce
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.string	"_cur_column"
	.byte	0x7
	.value	0x12c
	.long	0x24c
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xd
	.string	"_vtable_offset"
	.byte	0x7
	.value	0x12d
	.long	0x277
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0xd
	.string	"_shortbuf"
	.byte	0x7
	.value	0x12e
	.long	0x5da
	.byte	0x2
	.byte	0x23
	.uleb128 0x47
	.uleb128 0xd
	.string	"_lock"
	.byte	0x7
	.value	0x132
	.long	0x5ea
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xd
	.string	"_offset"
	.byte	0x7
	.value	0x13b
	.long	0x2e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xd
	.string	"__pad1"
	.byte	0x7
	.value	0x144
	.long	0x2fa
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xd
	.string	"__pad2"
	.byte	0x7
	.value	0x145
	.long	0x2fa
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xd
	.string	"__pad3"
	.byte	0x7
	.value	0x146
	.long	0x2fa
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xd
	.string	"__pad4"
	.byte	0x7
	.value	0x147
	.long	0x2fa
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xd
	.string	"__pad5"
	.byte	0x7
	.value	0x148
	.long	0x22d
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xd
	.string	"_mode"
	.byte	0x7
	.value	0x14a
	.long	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xd
	.string	"_unused2"
	.byte	0x7
	.value	0x14c
	.long	0x5f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.byte	0x0
	.uleb128 0xe
	.string	"_IO_lock_t"
	.byte	0x7
	.byte	0xb0
	.uleb128 0x4
	.long	0x5ce
	.string	"_IO_marker"
	.byte	0xc
	.byte	0x7
	.byte	0xb6
	.uleb128 0x6
	.string	"_next"
	.byte	0x7
	.byte	0xb7
	.long	0x5ce
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"_sbuf"
	.byte	0x7
	.byte	0xb8
	.long	0x5d4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"_pos"
	.byte	0x7
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
	.uleb128 0x13
	.long	0x8f8
	.long	.LASF2
	.byte	0x4
	.byte	0x4
	.byte	0x2c
	.uleb128 0x12
	.string	"MODE_RANDOM"
	.sleb128 0
	.uleb128 0x12
	.string	"MODE_INT"
	.sleb128 1
	.uleb128 0x12
	.string	"MODE_FLOAT"
	.sleb128 2
	.uleb128 0x12
	.string	"MODE_PARTIAL_INT"
	.sleb128 3
	.uleb128 0x12
	.string	"MODE_CC"
	.sleb128 4
	.uleb128 0x12
	.string	"MODE_COMPLEX_INT"
	.sleb128 5
	.uleb128 0x12
	.string	"MODE_COMPLEX_FLOAT"
	.sleb128 6
	.uleb128 0x12
	.string	"MODE_VECTOR_INT"
	.sleb128 7
	.uleb128 0x12
	.string	"MODE_VECTOR_FLOAT"
	.sleb128 8
	.uleb128 0x12
	.string	"MAX_MODE_CLASS"
	.sleb128 9
	.byte	0x0
	.uleb128 0x11
	.long	0x10c7
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
	.uleb128 0x14
	.long	0x11a1
	.byte	0x4
	.byte	0x3
	.byte	0x4d
	.uleb128 0x5
	.string	"min_align"
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
	.byte	0x5e
	.long	0x10c7
	.uleb128 0xc
	.long	0x1218
	.long	.LASF3
	.byte	0x18
	.byte	0x3
	.byte	0x68
	.uleb128 0x6
	.string	"alias"
	.byte	0x3
	.byte	0x69
	.long	0x293
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"expr"
	.byte	0x3
	.byte	0x6a
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"offset"
	.byte	0x3
	.byte	0x6b
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"size"
	.byte	0x3
	.byte	0x6c
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"align"
	.byte	0x3
	.byte	0x6d
	.long	0x21f
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x15
	.long	.LASF3
	.byte	0x3
	.byte	0x6e
	.long	0x11bc
	.uleb128 0x16
	.long	0x12f5
	.string	"rtunion_def"
	.byte	0x8
	.byte	0x3
	.byte	0x73
	.uleb128 0x17
	.string	"rtwint"
	.byte	0x3
	.byte	0x74
	.long	0x293
	.uleb128 0x17
	.string	"rtint"
	.byte	0x3
	.byte	0x75
	.long	0x218
	.uleb128 0x17
	.string	"rtuint"
	.byte	0x3
	.byte	0x76
	.long	0x21f
	.uleb128 0x17
	.string	"rtstr"
	.byte	0x3
	.byte	0x77
	.long	0x205
	.uleb128 0x17
	.string	"rtx"
	.byte	0x3
	.byte	0x78
	.long	0x9e
	.uleb128 0x17
	.string	"rtvec"
	.byte	0x3
	.byte	0x79
	.long	0x19f
	.uleb128 0x17
	.string	"rttype"
	.byte	0x3
	.byte	0x7a
	.long	0x600
	.uleb128 0x17
	.string	"rt_addr_diff_vec_flags"
	.byte	0x3
	.byte	0x7b
	.long	0x11a1
	.uleb128 0x17
	.string	"rt_cselib"
	.byte	0x3
	.byte	0x7c
	.long	0x1309
	.uleb128 0x17
	.string	"rtbit"
	.byte	0x3
	.byte	0x7d
	.long	0x1321
	.uleb128 0x17
	.string	"rttree"
	.byte	0x3
	.byte	0x7e
	.long	0x1e7
	.uleb128 0x17
	.string	"bb"
	.byte	0x3
	.byte	0x7f
	.long	0x1339
	.uleb128 0x17
	.string	"rtmem"
	.byte	0x3
	.byte	0x80
	.long	0x133f
	.byte	0x0
	.uleb128 0x18
	.string	"cselib_val_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x12f5
	.uleb128 0x18
	.string	"bitmap_head_def"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x130f
	.uleb128 0x18
	.string	"basic_block_def"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x1327
	.uleb128 0x3
	.byte	0x4
	.long	0x1218
	.uleb128 0x2
	.string	"rtunion"
	.byte	0x3
	.byte	0x82
	.long	0x1223
	.uleb128 0xf
	.long	0x1364
	.long	0x1345
	.uleb128 0x10
	.long	0x226
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x1374
	.long	0x9e
	.uleb128 0x10
	.long	0x226
	.byte	0x0
	.byte	0x0
	.uleb128 0x19
	.long	0x14bf
	.string	"gen_insn"
	.byte	0x1
	.byte	0x95
	.byte	0x1
	.long	.LFB15
	.long	.LFE15
	.long	.LLST0
	.uleb128 0x1a
	.string	"insn"
	.byte	0x1
	.byte	0x94
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1b
	.string	"name"
	.byte	0x1
	.byte	0x96
	.long	0x205
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x1b
	.string	"m1"
	.byte	0x1
	.byte	0x97
	.long	0x218
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1b
	.string	"m2"
	.byte	0x1
	.byte	0x97
	.long	0x218
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x1b
	.string	"op"
	.byte	0x1
	.byte	0x97
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1b
	.string	"pindex"
	.byte	0x1
	.byte	0x98
	.long	0x22d
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1b
	.string	"i"
	.byte	0x1
	.byte	0x99
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1b
	.string	"np"
	.byte	0x1
	.byte	0x9a
	.long	0x205
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1b
	.string	"pp"
	.byte	0x1
	.byte	0x9a
	.long	0x205
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1b
	.string	"p"
	.byte	0x1
	.byte	0x9a
	.long	0x205
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1b
	.string	"q"
	.byte	0x1
	.byte	0x9a
	.long	0x205
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1c
	.long	0x14a5
	.long	.LBB2
	.long	.LBE2
	.uleb128 0x1b
	.string	"force_float"
	.byte	0x1
	.byte	0xa6
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1b
	.string	"force_int"
	.byte	0x1
	.byte	0xa6
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1b
	.string	"force_partial_int"
	.byte	0x1
	.byte	0xa6
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1b
	.string	"force_consec"
	.byte	0x1
	.byte	0xa7
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1b
	.string	"matches"
	.byte	0x1
	.byte	0xa8
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x1d
	.string	"__FUNCTION__"
	.long	0x159b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.6686
	.byte	0x0
	.uleb128 0x1e
	.long	0x154c
	.byte	0x1
	.string	"main"
	.byte	0x1
	.value	0x142
	.byte	0x1
	.long	0x218
	.long	.LFB16
	.long	.LFE16
	.long	.LLST1
	.uleb128 0x1f
	.string	"argc"
	.byte	0x1
	.value	0x140
	.long	0x218
	.byte	0x3
	.byte	0x75
	.sleb128 -32
	.byte	0x6
	.uleb128 0x1f
	.string	"argv"
	.byte	0x1
	.value	0x141
	.long	0x154c
	.byte	0x5
	.byte	0x75
	.sleb128 -32
	.byte	0x6
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x20
	.string	"desc"
	.byte	0x1
	.value	0x143
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x21
	.long	.LBB3
	.long	.LBE3
	.uleb128 0x20
	.string	"line_no"
	.byte	0x1
	.value	0x164
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x20
	.string	"insn_code_number"
	.byte	0x1
	.value	0x164
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x2fc
	.uleb128 0x1e
	.long	0x158b
	.byte	0x1
	.string	"get_insn_name"
	.byte	0x1
	.value	0x178
	.byte	0x1
	.long	0x205
	.long	.LFB17
	.long	.LFE17
	.long	.LLST2
	.uleb128 0x1f
	.string	"code"
	.byte	0x1
	.value	0x177
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0xf
	.long	0x159b
	.long	0x210
	.uleb128 0x10
	.long	0x226
	.byte	0x8
	.byte	0x0
	.uleb128 0x8
	.long	0x158b
	.uleb128 0xf
	.long	0x15b0
	.long	0x205
	.uleb128 0x10
	.long	0x226
	.byte	0x47
	.byte	0x0
	.uleb128 0x1b
	.string	"optabs"
	.byte	0x1
	.byte	0x41
	.long	0x15c4
	.byte	0x5
	.byte	0x3
	.long	optabs
	.uleb128 0x8
	.long	0x15a0
	.uleb128 0x22
	.string	"stdout"
	.byte	0x6
	.byte	0x8f
	.long	0x5d4
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.long	0x15e9
	.long	0x23b
	.uleb128 0x10
	.long	0x226
	.byte	0xff
	.byte	0x0
	.uleb128 0x22
	.string	"_sch_toupper"
	.byte	0x9
	.byte	0x61
	.long	0x15ff
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.long	0x15d9
	.uleb128 0x22
	.string	"_sch_tolower"
	.byte	0x9
	.byte	0x62
	.long	0x161a
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.long	0x15d9
	.uleb128 0xf
	.long	0x162f
	.long	0x205
	.uleb128 0x10
	.long	0x226
	.byte	0x35
	.byte	0x0
	.uleb128 0x22
	.string	"mode_name"
	.byte	0x4
	.byte	0x29
	.long	0x1642
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.long	0x161f
	.uleb128 0xf
	.long	0x1657
	.long	0x849
	.uleb128 0x10
	.long	0x226
	.byte	0x35
	.byte	0x0
	.uleb128 0x23
	.long	.LASF2
	.byte	0x4
	.byte	0x34
	.long	0x1664
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.long	0x1647
	.uleb128 0xf
	.long	0x1679
	.long	0x23b
	.uleb128 0x10
	.long	0x226
	.byte	0x35
	.byte	0x0
	.uleb128 0x22
	.string	"mode_wider_mode"
	.byte	0x4
	.byte	0x84
	.long	0x1692
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.long	0x1669
	.uleb128 0xf
	.long	0x16a7
	.long	0x205
	.uleb128 0x10
	.long	0x226
	.byte	0xa2
	.byte	0x0
	.uleb128 0x22
	.string	"rtx_name"
	.byte	0x3
	.byte	0x3f
	.long	0x16b9
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.long	0x1697
	.uleb128 0xf
	.long	0x16ce
	.long	0x210
	.uleb128 0x10
	.long	0x226
	.byte	0xa2
	.byte	0x0
	.uleb128 0x22
	.string	"rtx_class"
	.byte	0x3
	.byte	0x45
	.long	0x16e1
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.long	0x16be
	.uleb128 0x22
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x18
	.uleb128 0x13
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3c
	.uleb128 0xc
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x22
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
	.uleb128 0x23
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
	.long	0x16f9
	.long	0x14bf
	.string	"main"
	.long	0x1552
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
	.string	"mode_class"
.LASF3:
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
