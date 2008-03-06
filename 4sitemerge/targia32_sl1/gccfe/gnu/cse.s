	.file	"cse.c"
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
	.string	"Equivalence chain for "
.LC1:
	.string	": \n"
	.text
.globl dump_class
	.type	dump_class, @function
dump_class:
.LFB15:
	.file 1 "../../../kgccfe/gnu/cse.c"
	.loc 1 710 0
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
	.loc 1 713 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$22, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 714 0
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	print_rtl@PLT
	.loc 1 715 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$3, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 717 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L2
.L3:
	.loc 1 719 0
	movl	-8(%ebp), %eax
	movl	(%eax), %edx
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	print_rtl@PLT
	.loc 1 720 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	fputc@PLT
	.loc 1 717 0
	movl	-8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -8(%ebp)
.L2:
	cmpl	$0, -8(%ebp)
	jne	.L3
	.loc 1 722 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE15:
	.size	dump_class, .-dump_class
	.type	approx_reg_cost_1, @function
approx_reg_cost_1:
.LFB16:
	.loc 1 730 0
	pushl	%ebp
.LCFI4:
	movl	%esp, %ebp
.LCFI5:
	subl	$28, %esp
.LCFI6:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 731 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 732 0
	movl	12(%ebp), %eax
	movl	%eax, -8(%ebp)
	.loc 1 734 0
	cmpl	$0, -12(%ebp)
	je	.L7
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L7
.LBB2:
	.loc 1 736 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -4(%ebp)
	.loc 1 738 0
	cmpl	$1, -4(%ebp)
	je	.L7
	movl	target_flags@GOT(%ecx), %eax
	movl	(%eax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	je	.L11
	movl	$17, -28(%ebp)
	jmp	.L13
.L11:
	movl	$30, -28(%ebp)
.L13:
	movl	-28(%ebp), %eax
	cmpl	-4(%ebp), %eax
	je	.L7
	cmpl	$29, -4(%ebp)
	je	.L7
	cmpl	$0, -4(%ebp)
	je	.L7
	cmpl	$175, -4(%ebp)
	jbe	.L17
	cmpl	$180, -4(%ebp)
	jbe	.L7
.L17:
	cmpl	$175, -4(%ebp)
	ja	.L19
	cmpl	$1, -4(%ebp)
	je	.L21
	movl	target_flags@GOT(%ecx), %eax
	movl	(%eax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	je	.L23
	movl	$17, -24(%ebp)
	jmp	.L25
.L23:
	movl	$30, -24(%ebp)
.L25:
	movl	-24(%ebp), %eax
	cmpl	-4(%ebp), %eax
	je	.L21
	movl	-4(%ebp), %eax
	movl	fixed_regs@GOT(%ecx), %edx
	movzbl	(%edx,%eax), %eax
	testb	%al, %al
	jne	.L21
	movl	-4(%ebp), %eax
	movl	global_regs@GOT(%ecx), %edx
	movzbl	(%edx,%eax), %eax
	testb	%al, %al
	je	.L19
.L21:
	movl	-4(%ebp), %eax
	movl	mips_regno_to_class@GOT(%ecx), %edx
	movl	(%edx,%eax,4), %eax
	testl	%eax, %eax
	jne	.L7
.L19:
	.loc 1 740 0
	cmpl	$175, -4(%ebp)
	ja	.L28
	.loc 1 742 0
	movl	target_flags@GOT(%ecx), %eax
	movl	(%eax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	je	.L30
	.loc 1 743 0
	movl	$1, -20(%ebp)
	jmp	.L32
.L30:
	.loc 1 744 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	leal	2(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%edx, (%eax)
	jmp	.L7
.L28:
	.loc 1 747 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%edx, (%eax)
.L7:
.LBE2:
	.loc 1 751 0
	movl	$0, -20(%ebp)
.L32:
	movl	-20(%ebp), %eax
	.loc 1 752 0
	leave
	ret
.LFE16:
	.size	approx_reg_cost_1, .-approx_reg_cost_1
	.type	approx_reg_cost, @function
approx_reg_cost:
.LFB17:
	.loc 1 762 0
	pushl	%ebp
.LCFI7:
	movl	%esp, %ebp
.LCFI8:
	pushl	%ebx
.LCFI9:
	subl	$36, %esp
.LCFI10:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 763 0
	movl	$0, -8(%ebp)
	.loc 1 765 0
	leal	-8(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	approx_reg_cost_1@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	8(%ebp), %eax
	movl	%eax, (%esp)
	call	for_each_rtx@PLT
	testl	%eax, %eax
	je	.L35
	.loc 1 766 0
	movl	$2147483647, -24(%ebp)
	jmp	.L37
.L35:
	.loc 1 768 0
	movl	-8(%ebp), %eax
	movl	%eax, -24(%ebp)
.L37:
	movl	-24(%ebp), %eax
	.loc 1 769 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE17:
	.size	approx_reg_cost, .-approx_reg_cost
	.type	preferrable, @function
preferrable:
.LFB18:
	.loc 1 778 0
	pushl	%ebp
.LCFI11:
	movl	%esp, %ebp
.LCFI12:
	subl	$4, %esp
.LCFI13:
	.loc 1 781 0
	movl	8(%ebp), %eax
	cmpl	16(%ebp), %eax
	je	.L40
	.loc 1 783 0
	cmpl	$2147483647, 8(%ebp)
	jne	.L42
	.loc 1 784 0
	movl	$1, -4(%ebp)
	jmp	.L44
.L42:
	.loc 1 785 0
	cmpl	$2147483647, 16(%ebp)
	jne	.L40
	.loc 1 786 0
	movl	$-1, -4(%ebp)
	jmp	.L44
.L40:
	.loc 1 790 0
	movl	12(%ebp), %eax
	cmpl	20(%ebp), %eax
	je	.L46
	.loc 1 792 0
	cmpl	$2147483647, 12(%ebp)
	jne	.L48
	.loc 1 793 0
	movl	$1, -4(%ebp)
	jmp	.L44
.L48:
	.loc 1 794 0
	cmpl	$2147483647, 20(%ebp)
	jne	.L46
	.loc 1 795 0
	movl	$-1, -4(%ebp)
	jmp	.L44
.L46:
	.loc 1 799 0
	movl	8(%ebp), %eax
	cmpl	16(%ebp), %eax
	je	.L51
	.loc 1 800 0
	movl	16(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, %ecx
	subl	%edx, %ecx
	movl	%ecx, -4(%ebp)
	jmp	.L44
.L51:
	.loc 1 802 0
	movl	12(%ebp), %eax
	cmpl	20(%ebp), %eax
	je	.L53
	.loc 1 803 0
	movl	20(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, %ecx
	subl	%edx, %ecx
	movl	%ecx, -4(%ebp)
	jmp	.L44
.L53:
	.loc 1 804 0
	movl	$0, -4(%ebp)
.L44:
	movl	-4(%ebp), %eax
	.loc 1 805 0
	leave
	ret
.LFE18:
	.size	preferrable, .-preferrable
	.type	notreg_cost, @function
notreg_cost:
.LFB19:
	.loc 1 814 0
	pushl	%ebp
.LCFI14:
	movl	%esp, %ebp
.LCFI15:
	pushl	%ebx
.LCFI16:
	subl	$20, %esp
.LCFI17:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 815 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L57
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L57
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$1, %eax
	jne	.L57
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$1, %eax
	jne	.L57
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %ecx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	%al, %cl
	jae	.L57
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	subreg_lowpart_p@PLT
	testl	%eax, %eax
	je	.L57
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L64
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_bitsize@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	cmpw	$32, %ax
	jbe	.L64
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_bitsize@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	cmpw	$32, %ax
	ja	.L64
.L57:
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	rtx_cost@PLT
	addl	%eax, %eax
	movl	%eax, -8(%ebp)
	jmp	.L67
.L64:
	movl	$0, -8(%ebp)
.L67:
	movl	-8(%ebp), %eax
	.loc 1 826 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE19:
	.size	notreg_cost, .-notreg_cost
.globl rtx_cost
	.type	rtx_cost, @function
rtx_cost:
.LFB20:
	.loc 1 837 0
	pushl	%ebp
.LCFI18:
	movl	%esp, %ebp
.LCFI19:
	pushl	%ebx
.LCFI20:
	subl	$292, %esp
.LCFI21:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 843 0
	cmpl	$0, 8(%ebp)
	jne	.L70
	.loc 1 844 0
	movl	$0, -260(%ebp)
	jmp	.L72
.L70:
	.loc 1 849 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -44(%ebp)
	.loc 1 850 0
	movl	-44(%ebp), %eax
	movl	%eax, -264(%ebp)
	cmpl	$88, -264(%ebp)
	je	.L75
	cmpl	$88, -264(%ebp)
	ja	.L77
	cmpl	$58, -264(%ebp)
	je	.L74
	jmp	.L73
.L77:
	cmpl	$92, -264(%ebp)
	ja	.L73
	jmp	.L76
.L75:
	.loc 1 853 0
	movl	$20, -36(%ebp)
	.loc 1 854 0
	jmp	.L78
.L76:
	.loc 1 859 0
	movl	$28, -36(%ebp)
	.loc 1 860 0
	jmp	.L78
.L74:
	.loc 1 863 0
	movl	$0, -36(%ebp)
	.loc 1 864 0
	jmp	.L78
.L73:
	.loc 1 866 0
	movl	$4, -36(%ebp)
.L78:
	.loc 1 869 0
	movl	-44(%ebp), %edx
	subl	$64, %edx
	movl	%edx, -268(%ebp)
	cmpl	$77, -268(%ebp)
	ja	.L79
	movl	-268(%ebp), %eax
	sall	$2, %eax
	movl	.L100@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L100:
	.long	.L80@GOTOFF
	.long	.L81@GOTOFF
	.long	.L79@GOTOFF
	.long	.L79@GOTOFF
	.long	.L82@GOTOFF
	.long	.L79@GOTOFF
	.long	.L79@GOTOFF
	.long	.L83@GOTOFF
	.long	.L79@GOTOFF
	.long	.L84@GOTOFF
	.long	.L79@GOTOFF
	.long	.L79@GOTOFF
	.long	.L85@GOTOFF
	.long	.L86@GOTOFF
	.long	.L87@GOTOFF
	.long	.L79@GOTOFF
	.long	.L79@GOTOFF
	.long	.L79@GOTOFF
	.long	.L79@GOTOFF
	.long	.L79@GOTOFF
	.long	.L79@GOTOFF
	.long	.L88@GOTOFF
	.long	.L88@GOTOFF
	.long	.L89@GOTOFF
	.long	.L90@GOTOFF
	.long	.L91@GOTOFF
	.long	.L91@GOTOFF
	.long	.L92@GOTOFF
	.long	.L92@GOTOFF
	.long	.L93@GOTOFF
	.long	.L93@GOTOFF
	.long	.L93@GOTOFF
	.long	.L94@GOTOFF
	.long	.L95@GOTOFF
	.long	.L79@GOTOFF
	.long	.L95@GOTOFF
	.long	.L95@GOTOFF
	.long	.L79@GOTOFF
	.long	.L79@GOTOFF
	.long	.L79@GOTOFF
	.long	.L79@GOTOFF
	.long	.L79@GOTOFF
	.long	.L79@GOTOFF
	.long	.L79@GOTOFF
	.long	.L79@GOTOFF
	.long	.L79@GOTOFF
	.long	.L79@GOTOFF
	.long	.L79@GOTOFF
	.long	.L79@GOTOFF
	.long	.L79@GOTOFF
	.long	.L79@GOTOFF
	.long	.L79@GOTOFF
	.long	.L79@GOTOFF
	.long	.L79@GOTOFF
	.long	.L79@GOTOFF
	.long	.L79@GOTOFF
	.long	.L79@GOTOFF
	.long	.L79@GOTOFF
	.long	.L79@GOTOFF
	.long	.L79@GOTOFF
	.long	.L79@GOTOFF
	.long	.L79@GOTOFF
	.long	.L79@GOTOFF
	.long	.L79@GOTOFF
	.long	.L79@GOTOFF
	.long	.L79@GOTOFF
	.long	.L96@GOTOFF
	.long	.L97@GOTOFF
	.long	.L79@GOTOFF
	.long	.L79@GOTOFF
	.long	.L79@GOTOFF
	.long	.L79@GOTOFF
	.long	.L79@GOTOFF
	.long	.L79@GOTOFF
	.long	.L79@GOTOFF
	.long	.L98@GOTOFF
	.long	.L79@GOTOFF
	.long	.L99@GOTOFF
	.text
.L83:
	.loc 1 872 0
	movl	$0, -260(%ebp)
	jmp	.L72
.L84:
	.loc 1 877 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$2, %eax
	je	.L101
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$6, %eax
	jne	.L103
.L101:
	movl	$1, -256(%ebp)
	jmp	.L104
.L103:
	movl	$0, -256(%ebp)
.L104:
	movzbl	-256(%ebp), %ecx
	movb	%cl, -249(%ebp)
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$2, %eax
	je	.L105
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$6, %eax
	jne	.L107
.L105:
	movl	$1, -248(%ebp)
	jmp	.L108
.L107:
	movl	$0, -248(%ebp)
.L108:
	movzbl	-248(%ebp), %eax
	xorb	-249(%ebp), %al
	testb	%al, %al
	je	.L79
	.loc 1 878 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -244(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L111
	movl	$8, -240(%ebp)
	jmp	.L113
.L111:
	movl	$4, -240(%ebp)
.L113:
	movl	-244(%ebp), %edx
	movl	%edx, %eax
	sarl	$31, %edx
	idivl	-240(%ebp)
	sall	$2, %eax
	addl	$8, %eax
	movl	%eax, -260(%ebp)
	jmp	.L72
.L85:
.LBB3:
	.loc 1 883 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -232(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L114
	movl	$8, -228(%ebp)
	jmp	.L116
.L114:
	movl	$4, -228(%ebp)
.L116:
	movl	-228(%ebp), %eax
	cmpl	%eax, -232(%ebp)
	jle	.L117
	movl	$2, -236(%ebp)
	jmp	.L119
.L117:
	movl	$1, -236(%ebp)
.L119:
	movl	-236(%ebp), %edx
	movl	%edx, -32(%ebp)
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	simple_memory_operand@PLT
	testl	%eax, %eax
	je	.L120
	movl	-32(%ebp), %eax
	sall	$2, %eax
	movl	%eax, -260(%ebp)
	jmp	.L72
.L120:
	movl	-32(%ebp), %eax
	sall	$3, %eax
	movl	%eax, -260(%ebp)
	jmp	.L72
.L99:
.LBE3:
	movl	$24, -260(%ebp)
	jmp	.L72
.L94:
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	$5, %al
	jne	.L122
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	jne	.L122
	movl	$8, -224(%ebp)
	jmp	.L125
.L122:
	movl	$4, -224(%ebp)
.L125:
	movl	-224(%ebp), %ecx
	movl	%ecx, -260(%ebp)
	jmp	.L72
.L93:
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	$5, %al
	jne	.L79
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	jne	.L79
	movl	$8, -260(%ebp)
	jmp	.L72
.L95:
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	$5, %al
	jne	.L79
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	jne	.L79
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L132
	movl	$16, -220(%ebp)
	jmp	.L134
.L132:
	movl	$48, -220(%ebp)
.L134:
	movl	-220(%ebp), %eax
	movl	%eax, -260(%ebp)
	jmp	.L72
.L98:
.LBB4:
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -28(%ebp)
	cmpl	$15, -28(%ebp)
	je	.L135
	cmpl	$16, -28(%ebp)
	jne	.L137
.L135:
	movl	$4, -260(%ebp)
	jmp	.L72
.L137:
	movl	$16, -260(%ebp)
	jmp	.L72
.L88:
.LBE4:
.LBB5:
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -24(%ebp)
	cmpl	$15, -24(%ebp)
	je	.L138
	cmpl	$16, -24(%ebp)
	jne	.L140
.L138:
	movl	mips_tune@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L141
	movl	mips_tune@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	jne	.L143
.L141:
	movl	$8, -260(%ebp)
	jmp	.L72
.L143:
	movl	mips_tune@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$3, %eax
	jne	.L144
	movl	$12, -260(%ebp)
	jmp	.L72
.L144:
	movl	$24, -260(%ebp)
	jmp	.L72
.L140:
	cmpl	$5, -24(%ebp)
	jne	.L79
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	jne	.L79
	movl	$16, -260(%ebp)
	jmp	.L72
.L89:
.LBE5:
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	$5, %al
	jne	.L79
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	jne	.L79
	movl	$4, -260(%ebp)
	jmp	.L72
.L90:
.LBB6:
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -20(%ebp)
	cmpl	$15, -20(%ebp)
	jne	.L152
	movl	mips_tune@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L154
	movl	mips_tune@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	je	.L154
	movl	mips_tune@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$11, %eax
	jne	.L157
.L154:
	movl	$16, -260(%ebp)
	jmp	.L72
.L157:
	movl	mips_tune@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$3, %eax
	je	.L158
	movl	mips_tune@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$12, %eax
	je	.L158
	movl	mips_tune@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$13, %eax
	jne	.L161
.L158:
	movl	$20, -260(%ebp)
	jmp	.L72
.L161:
	movl	$28, -260(%ebp)
	jmp	.L72
.L152:
	cmpl	$16, -20(%ebp)
	jne	.L162
	movl	mips_tune@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L164
	movl	mips_tune@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	je	.L164
	movl	mips_tune@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$11, %eax
	jne	.L167
.L164:
	movl	$20, -260(%ebp)
	jmp	.L72
.L167:
	movl	mips_tune@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$3, %eax
	je	.L168
	movl	mips_tune@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$12, %eax
	je	.L168
	movl	mips_tune@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$13, %eax
	jne	.L171
.L168:
	movl	$24, -260(%ebp)
	jmp	.L72
.L171:
	movl	$32, -260(%ebp)
	jmp	.L72
.L162:
	movl	mips_tune@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	jne	.L172
	movl	$48, -260(%ebp)
	jmp	.L72
.L172:
	movl	mips_tune@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	jne	.L174
	movl	$8, -260(%ebp)
	jmp	.L72
.L174:
	movl	mips_tune@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$12, %eax
	je	.L176
	movl	mips_tune@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$13, %eax
	jne	.L178
.L176:
	cmpl	$5, -20(%ebp)
	jne	.L179
	movl	$16, -216(%ebp)
	jmp	.L181
.L179:
	movl	$12, -216(%ebp)
.L181:
	movl	-216(%ebp), %edx
	movl	%edx, -260(%ebp)
	jmp	.L72
.L178:
	movl	mips_tune@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$3, %eax
	jne	.L182
	movl	$68, -260(%ebp)
	jmp	.L72
.L182:
	movl	mips_tune@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$11, %eax
	jne	.L184
	movl	$20, -260(%ebp)
	jmp	.L72
.L184:
	movl	$40, -260(%ebp)
	jmp	.L72
.L91:
.LBE6:
.LBB7:
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -16(%ebp)
	cmpl	$15, -16(%ebp)
	jne	.L186
	movl	mips_tune@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L188
	movl	mips_tune@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	jne	.L190
.L188:
	movl	$48, -260(%ebp)
	jmp	.L72
.L190:
	movl	mips_tune@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$3, %eax
	jne	.L191
	movl	$60, -260(%ebp)
	jmp	.L72
.L191:
	movl	mips_tune@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$12, %eax
	je	.L193
	movl	mips_tune@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$13, %eax
	jne	.L195
.L193:
	movl	$120, -260(%ebp)
	jmp	.L72
.L195:
	movl	$92, -260(%ebp)
	jmp	.L72
.L186:
	cmpl	$16, -16(%ebp)
	jne	.L92
	movl	mips_tune@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L197
	movl	mips_tune@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	jne	.L199
.L197:
	movl	$76, -260(%ebp)
	jmp	.L72
.L199:
	movl	mips_tune@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$12, %eax
	je	.L200
	movl	mips_tune@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$13, %eax
	jne	.L202
.L200:
	movl	$236, -260(%ebp)
	jmp	.L72
.L202:
	movl	mips_tune@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$3, %eax
	jne	.L203
	movl	$64, -260(%ebp)
	jmp	.L72
.L203:
	movl	$144, -260(%ebp)
	jmp	.L72
.L92:
.LBE7:
	movl	mips_tune@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L205
	movl	mips_tune@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	jne	.L207
.L205:
	movl	$140, -260(%ebp)
	jmp	.L72
.L207:
	movl	mips_tune@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$3, %eax
	jne	.L208
	movl	$152, -260(%ebp)
	jmp	.L72
.L208:
	movl	mips_tune@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$11, %eax
	jne	.L210
	movl	$144, -260(%ebp)
	jmp	.L72
.L210:
	movl	mips_tune@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$12, %eax
	je	.L212
	movl	mips_tune@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$13, %eax
	jne	.L214
.L212:
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	$4, %al
	jne	.L215
	movl	$168, -212(%ebp)
	jmp	.L217
.L215:
	movl	$296, -212(%ebp)
.L217:
	movl	-212(%ebp), %ecx
	movl	%ecx, -260(%ebp)
	jmp	.L72
.L214:
	movl	$276, -260(%ebp)
	jmp	.L72
.L96:
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L218
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	$5, %al
	jne	.L218
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	cmpb	$4, %al
	jne	.L218
	movl	$4, -260(%ebp)
	jmp	.L72
.L218:
	movl	$8, -260(%ebp)
	jmp	.L72
.L97:
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L222
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	$5, %al
	jne	.L222
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	cmpb	$4, %al
	jne	.L222
	movl	$8, -260(%ebp)
	jmp	.L72
.L222:
	movl	$4, -260(%ebp)
	jmp	.L72
.L80:
	.loc 1 886 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	jne	.L226
	movl	$0, -260(%ebp)
	jmp	.L72
.L226:
	cmpl	$57, 12(%ebp)
	jne	.L228
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	testl	%edx, %edx
	js	.L230
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%eax), %ecx
	movl	%edx, -208(%ebp)
	movl	%ecx, -204(%ebp)
	cmpl	$0, -204(%ebp)
	jg	.L230
	cmpl	$0, -204(%ebp)
	js	.L233
	cmpl	$255, -208(%ebp)
	ja	.L230
.L233:
	movl	$0, -260(%ebp)
	jmp	.L72
.L230:
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	testl	%edx, %edx
	js	.L234
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%eax), %ecx
	movl	%edx, -200(%ebp)
	movl	%ecx, -196(%ebp)
	cmpl	$0, -196(%ebp)
	js	.L236
	cmpl	$0, -196(%ebp)
	jg	.L234
	cmpl	$65535, -200(%ebp)
	jbe	.L236
.L234:
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	testl	%edx, %edx
	jns	.L238
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%eax), %ecx
	movl	%edx, -192(%ebp)
	movl	%ecx, -188(%ebp)
	cmpl	$-1, -188(%ebp)
	jl	.L238
	cmpl	$-1, -188(%ebp)
	jg	.L236
	cmpl	$-256, -192(%ebp)
	jbe	.L238
.L236:
	movl	$4, -260(%ebp)
	jmp	.L72
.L238:
	movl	$8, -260(%ebp)
	jmp	.L72
.L228:
	cmpl	$85, 12(%ebp)
	jne	.L241
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%eax), %ecx
	movl	%edx, -184(%ebp)
	movl	%ecx, -180(%ebp)
	cmpl	$-1, -180(%ebp)
	jl	.L241
	cmpl	$-1, -180(%ebp)
	jg	.L244
	cmpl	$-32768, -184(%ebp)
	jb	.L241
.L244:
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%eax), %ecx
	movl	%edx, -176(%ebp)
	movl	%ecx, -172(%ebp)
	cmpl	$0, -172(%ebp)
	jg	.L241
	cmpl	$0, -172(%ebp)
	js	.L246
	cmpl	$32767, -176(%ebp)
	ja	.L241
.L246:
	movl	$0, -260(%ebp)
	jmp	.L72
.L241:
	cmpl	$97, 12(%ebp)
	je	.L247
	cmpl	$99, 12(%ebp)
	je	.L247
	cmpl	$100, 12(%ebp)
	jne	.L250
.L247:
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%eax), %ecx
	movl	%edx, -168(%ebp)
	movl	%ecx, -164(%ebp)
	cmpl	$0, -164(%ebp)
	js	.L251
	cmpl	$0, -164(%ebp)
	jg	.L253
	cmpl	$0, -168(%ebp)
	jbe	.L251
.L253:
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%eax), %ecx
	movl	%edx, -160(%ebp)
	movl	%ecx, -156(%ebp)
	cmpl	$0, -156(%ebp)
	jg	.L251
	cmpl	$0, -156(%ebp)
	js	.L255
	cmpl	$8, -160(%ebp)
	ja	.L251
.L255:
	movl	$0, -260(%ebp)
	jmp	.L72
.L251:
	movl	$4, -260(%ebp)
	jmp	.L72
.L250:
	cmpl	$95, 12(%ebp)
	jne	.L256
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	testl	%edx, %edx
	js	.L256
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%eax), %ecx
	movl	%edx, -152(%ebp)
	movl	%ecx, -148(%ebp)
	cmpl	$0, -148(%ebp)
	jg	.L256
	cmpl	$0, -148(%ebp)
	js	.L260
	cmpl	$65535, -152(%ebp)
	ja	.L256
.L260:
	movl	$0, -260(%ebp)
	jmp	.L72
.L256:
	cmpl	$117, 12(%ebp)
	je	.L261
	cmpl	$116, 12(%ebp)
	je	.L261
	cmpl	$114, 12(%ebp)
	je	.L261
	cmpl	$115, 12(%ebp)
	je	.L261
	cmpl	$121, 12(%ebp)
	je	.L261
	cmpl	$120, 12(%ebp)
	je	.L261
	cmpl	$118, 12(%ebp)
	je	.L261
	cmpl	$119, 12(%ebp)
	jne	.L269
.L261:
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%eax), %ecx
	movl	%edx, -144(%ebp)
	movl	%ecx, -140(%ebp)
	cmpl	$-1, -140(%ebp)
	jl	.L269
	cmpl	$-1, -140(%ebp)
	jg	.L271
	cmpl	$-32768, -144(%ebp)
	jb	.L269
.L271:
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%eax), %ecx
	movl	%edx, -136(%ebp)
	movl	%ecx, -132(%ebp)
	cmpl	$0, -132(%ebp)
	jg	.L269
	cmpl	$0, -132(%ebp)
	js	.L273
	cmpl	$32767, -136(%ebp)
	ja	.L269
.L273:
	movl	$0, -260(%ebp)
	jmp	.L72
.L269:
	cmpl	$113, 12(%ebp)
	je	.L274
	cmpl	$112, 12(%ebp)
	jne	.L276
.L274:
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L276
	movl	$0, -260(%ebp)
	jmp	.L72
.L276:
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	testl	%edx, %edx
	js	.L278
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%eax), %ecx
	movl	%edx, -128(%ebp)
	movl	%ecx, -124(%ebp)
	cmpl	$0, -124(%ebp)
	jg	.L278
	cmpl	$0, -124(%ebp)
	js	.L281
	cmpl	$255, -128(%ebp)
	ja	.L278
.L281:
	movl	$4, -260(%ebp)
	jmp	.L72
.L278:
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	testl	%edx, %edx
	js	.L282
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%eax), %ecx
	movl	%edx, -120(%ebp)
	movl	%ecx, -116(%ebp)
	cmpl	$0, -116(%ebp)
	js	.L284
	cmpl	$0, -116(%ebp)
	jg	.L282
	cmpl	$65535, -120(%ebp)
	jbe	.L284
.L282:
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	testl	%edx, %edx
	jns	.L286
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%eax), %ecx
	movl	%edx, -112(%ebp)
	movl	%ecx, -108(%ebp)
	cmpl	$-1, -108(%ebp)
	jl	.L286
	cmpl	$-1, -108(%ebp)
	jg	.L284
	cmpl	$-256, -112(%ebp)
	jbe	.L286
.L284:
	movl	$8, -260(%ebp)
	jmp	.L72
.L286:
	movl	$12, -260(%ebp)
	jmp	.L72
.L86:
	movl	$8, -260(%ebp)
	jmp	.L72
.L82:
.LBB8:
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	%eax, -56(%ebp)
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	leal	-56(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	eliminate_constant_term@PLT
	movl	%eax, -12(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	je	.L289
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	mips16_gp_offset_p@PLT
	testl	%eax, %eax
	je	.L289
	cmpl	$85, 12(%ebp)
	jne	.L292
	movl	$0, -260(%ebp)
	jmp	.L72
.L292:
	cmpl	$57, 12(%ebp)
	jne	.L294
	movl	$4, -260(%ebp)
	jmp	.L72
.L294:
	movl	$8, -260(%ebp)
	jmp	.L72
.L289:
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	jne	.L296
	movl	$8, -260(%ebp)
	jmp	.L72
.L296:
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	je	.L298
	movl	$16, -260(%ebp)
	jmp	.L72
.L298:
	movl	-56(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%eax), %ecx
	movl	%edx, -104(%ebp)
	movl	%ecx, -100(%ebp)
	cmpl	$-1, -100(%ebp)
	jl	.L300
	cmpl	$-1, -100(%ebp)
	jg	.L302
	cmpl	$-32768, -104(%ebp)
	jb	.L300
.L302:
	movl	-56(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%eax), %ecx
	movl	%edx, -96(%ebp)
	movl	%ecx, -92(%ebp)
	cmpl	$0, -92(%ebp)
	js	.L303
	cmpl	$0, -92(%ebp)
	jg	.L300
	cmpl	$32767, -96(%ebp)
	jbe	.L303
.L300:
	movl	$8, -260(%ebp)
	jmp	.L72
.L303:
	movl	-12(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L305
	movl	$4, -84(%ebp)
	jmp	.L307
.L305:
	movl	$8, -84(%ebp)
.L307:
	movl	-84(%ebp), %ecx
	movl	%ecx, -260(%ebp)
	jmp	.L72
.L87:
.LBE8:
	movl	8(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L308
	movl	$4, -80(%ebp)
	jmp	.L310
.L308:
	movl	$8, -80(%ebp)
.L310:
	movl	-80(%ebp), %eax
	movl	%eax, -260(%ebp)
	jmp	.L72
.L81:
.LBB9:
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	je	.L311
	movl	$16, -260(%ebp)
	jmp	.L72
.L311:
	leal	-60(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-56(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	split_double@PLT
	movl	-56(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	const_tiny_rtx@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %edx
	movl	-56(%ebp), %eax
	cmpl	%eax, %edx
	je	.L313
	movl	-60(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	const_tiny_rtx@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %edx
	movl	-60(%ebp), %eax
	cmpl	%eax, %edx
	jne	.L315
.L313:
	movl	$8, -76(%ebp)
	jmp	.L316
.L315:
	movl	$16, -76(%ebp)
.L316:
	movl	-76(%ebp), %edx
	movl	%edx, -260(%ebp)
	jmp	.L72
.L79:
.LBE9:
	.loc 1 899 0
	movl	-44(%ebp), %edx
	movl	rtx_format@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -40(%ebp)
	.loc 1 900 0
	movl	-44(%ebp), %edx
	movl	rtx_length@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	subl	$1, %eax
	movl	%eax, -52(%ebp)
	jmp	.L317
.L318:
	.loc 1 901 0
	movl	-52(%ebp), %eax
	addl	-40(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$101, %al
	jne	.L319
	.loc 1 902 0
	movl	-52(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %edx
	movl	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	rtx_cost@PLT
	addl	%eax, -36(%ebp)
	jmp	.L321
.L319:
	.loc 1 903 0
	movl	-52(%ebp), %eax
	addl	-40(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$69, %al
	jne	.L321
	.loc 1 904 0
	movl	$0, -48(%ebp)
	jmp	.L323
.L324:
	.loc 1 905 0
	movl	-52(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %edx
	movl	-48(%ebp), %eax
	movl	4(%edx,%eax,4), %edx
	movl	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	rtx_cost@PLT
	addl	%eax, -36(%ebp)
	.loc 1 904 0
	addl	$1, -48(%ebp)
.L323:
	movl	-52(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	(%eax), %eax
	cmpl	-48(%ebp), %eax
	jg	.L324
.L321:
	.loc 1 900 0
	subl	$1, -52(%ebp)
.L317:
	cmpl	$0, -52(%ebp)
	jns	.L318
	.loc 1 907 0
	movl	-36(%ebp), %ecx
	movl	%ecx, -260(%ebp)
.L72:
	movl	-260(%ebp), %eax
	.loc 1 908 0
	addl	$292, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE20:
	.size	rtx_cost, .-rtx_cost
.globl address_cost
	.type	address_cost, @function
address_cost:
.LFB21:
	.loc 1 917 0
	pushl	%ebp
.LCFI22:
	movl	%esp, %ebp
.LCFI23:
	pushl	%ebx
.LCFI24:
	subl	$20, %esp
.LCFI25:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 923 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$80, %ax
	jne	.L328
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L328
	.loc 1 924 0
	movl	$-1, -12(%ebp)
	jmp	.L331
.L328:
	.loc 1 930 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	memory_address_p@PLT
	testl	%eax, %eax
	jne	.L332
	.loc 1 931 0
	movl	$1000, -12(%ebp)
	jmp	.L331
.L332:
	.loc 1 933 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	je	.L334
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	mips_address_cost@PLT
	movl	%eax, -8(%ebp)
	jmp	.L336
.L334:
	movl	$1, -8(%ebp)
.L336:
	movl	-8(%ebp), %eax
	movl	%eax, -12(%ebp)
.L331:
	movl	-12(%ebp), %eax
	.loc 1 937 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE21:
	.size	address_cost, .-address_cost
	.type	get_cse_reg_info, @function
get_cse_reg_info:
.LFB22:
	.loc 1 943 0
	pushl	%ebp
.LCFI26:
	movl	%esp, %ebp
.LCFI27:
	pushl	%ebx
.LCFI28:
	subl	$20, %esp
.LCFI29:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 944 0
	movl	8(%ebp), %eax
	shrl	$7, %eax
	xorl	8(%ebp), %eax
	andl	$127, %eax
	sall	$2, %eax
	movl	%eax, %edx
	leal	reg_hash@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 947 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L339
.L340:
	.loc 1 948 0
	movl	-8(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	8(%ebp), %eax
	je	.L341
	.loc 1 947 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
.L339:
	cmpl	$0, -8(%ebp)
	jne	.L340
.L341:
	.loc 1 951 0
	cmpl	$0, -8(%ebp)
	jne	.L343
	.loc 1 954 0
	movl	cse_reg_info_free_list@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L345
	.loc 1 956 0
	movl	cse_reg_info_free_list@GOTOFF(%ebx), %eax
	movl	%eax, -8(%ebp)
	.loc 1 957 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, cse_reg_info_free_list@GOTOFF(%ebx)
	jmp	.L347
.L345:
	.loc 1 960 0
	movl	$28, (%esp)
	call	xmalloc@PLT
	movl	%eax, -8(%ebp)
.L347:
	.loc 1 963 0
	movl	-12(%ebp), %eax
	movl	(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 964 0
	movl	-12(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 967 0
	movl	-8(%ebp), %eax
	movl	$1, 16(%eax)
	.loc 1 968 0
	movl	-8(%ebp), %eax
	movl	$-1, 20(%eax)
	.loc 1 969 0
	movl	-8(%ebp), %eax
	movl	$-1, 24(%eax)
	.loc 1 970 0
	movl	8(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	%edx, 12(%eax)
	.loc 1 971 0
	movl	-8(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, 8(%edx)
	.loc 1 972 0
	movl	cse_reg_info_used_list@GOTOFF(%ebx), %edx
	movl	-8(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 973 0
	movl	-8(%ebp), %eax
	movl	%eax, cse_reg_info_used_list@GOTOFF(%ebx)
	.loc 1 974 0
	movl	cse_reg_info_used_list_end@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L343
	.loc 1 975 0
	movl	-8(%ebp), %eax
	movl	%eax, cse_reg_info_used_list_end@GOTOFF(%ebx)
.L343:
	.loc 1 980 0
	movl	8(%ebp), %eax
	movl	%eax, cached_regno@GOTOFF(%ebx)
	.loc 1 981 0
	movl	-8(%ebp), %eax
	movl	%eax, cached_cse_reg_info@GOTOFF(%ebx)
	.loc 1 983 0
	movl	-8(%ebp), %eax
	.loc 1 984 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE22:
	.size	get_cse_reg_info, .-get_cse_reg_info
	.type	new_basic_block, @function
new_basic_block:
.LFB23:
	.loc 1 991 0
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
	.loc 1 994 0
	movl	max_reg@GOTOFF(%ebx), %eax
	movl	%eax, next_qty@GOTOFF(%ebx)
	.loc 1 998 0
	leal	reg_hash@GOTOFF(%ebx), %eax
	movl	%eax, %edx
	movl	$512, %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	%edx, (%esp)
	call	memset@PLT
	.loc 1 1000 0
	movl	cse_reg_info_used_list@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L351
	.loc 1 1002 0
	movl	cse_reg_info_used_list_end@GOTOFF(%ebx), %edx
	movl	cse_reg_info_free_list@GOTOFF(%ebx), %eax
	movl	%eax, 4(%edx)
	.loc 1 1003 0
	movl	cse_reg_info_used_list@GOTOFF(%ebx), %eax
	movl	%eax, cse_reg_info_free_list@GOTOFF(%ebx)
	.loc 1 1004 0
	movl	$0, cse_reg_info_used_list_end@GOTOFF(%ebx)
	movl	cse_reg_info_used_list_end@GOTOFF(%ebx), %eax
	movl	%eax, cse_reg_info_used_list@GOTOFF(%ebx)
.L351:
	.loc 1 1006 0
	movl	$0, cached_cse_reg_info@GOTOFF(%ebx)
.LBB10:
	.loc 1 1008 0
	leal	hard_regs_in_table@GOTOFF(%ebx), %eax
	movl	%eax, -16(%ebp)
	movl	-16(%ebp), %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	-16(%ebp), %eax
	addl	$8, %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	-16(%ebp), %eax
	addl	$16, %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
.LBE10:
	.loc 1 1013 0
	movl	$0, -20(%ebp)
	jmp	.L353
.L354:
.LBB11:
	.loc 1 1017 0
	movl	-20(%ebp), %eax
	movl	table@GOTOFF(%ebx,%eax,4), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1018 0
	cmpl	$0, -12(%ebp)
	je	.L355
.LBB12:
	.loc 1 1020 0
	movl	-12(%ebp), %eax
	movl	%eax, -8(%ebp)
	.loc 1 1022 0
	movl	-20(%ebp), %eax
	movl	$0, table@GOTOFF(%ebx,%eax,4)
	.loc 1 1024 0
	jmp	.L357
.L358:
	.loc 1 1025 0
	movl	-8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -8(%ebp)
.L357:
	.loc 1 1024 0
	movl	-8(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	jne	.L358
	.loc 1 1030 0
	movl	free_element_chain@GOTOFF(%ebx), %eax
	movl	-8(%ebp), %edx
	movl	%eax, 8(%edx)
	.loc 1 1031 0
	movl	-12(%ebp), %eax
	movl	%eax, free_element_chain@GOTOFF(%ebx)
.L355:
.LBE12:
.LBE11:
	.loc 1 1013 0
	addl	$1, -20(%ebp)
.L353:
	cmpl	$31, -20(%ebp)
	jle	.L354
	.loc 1 1035 0
	movl	$0, prev_insn@GOTOFF(%ebx)
	.loc 1 1040 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE23:
	.size	new_basic_block, .-new_basic_block
	.section	.rodata
	.type	__FUNCTION__.12192, @object
	.size	__FUNCTION__.12192, 13
__FUNCTION__.12192:
	.string	"make_new_qty"
.LC2:
	.string	"../../../kgccfe/gnu/cse.c"
	.text
	.type	make_new_qty, @function
make_new_qty:
.LFB24:
	.loc 1 1049 0
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
	.loc 1 1054 0
	movl	next_qty@GOTOFF(%ebx), %edx
	movl	max_qty@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	jl	.L363
	.loc 1 1055 0
	leal	__FUNCTION__.12192@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1055, 4(%esp)
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L363:
	.loc 1 1057 0
	movl	cached_regno@GOTOFF(%ebx), %eax
	cmpl	%eax, 8(%ebp)
	jne	.L365
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L367
.L365:
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	get_cse_reg_info
	movl	%eax, -24(%ebp)
	jmp	.L368
.L367:
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	movl	%eax, -24(%ebp)
.L368:
	movl	next_qty@GOTOFF(%ebx), %edx
	movl	-24(%ebp), %ecx
	movl	%edx, 12(%ecx)
	movl	-24(%ebp), %ecx
	movl	12(%ecx), %eax
	movl	%eax, -16(%ebp)
	leal	1(%edx), %eax
	movl	%eax, next_qty@GOTOFF(%ebx)
	.loc 1 1058 0
	movl	-16(%ebp), %eax
	sall	$5, %eax
	movl	%eax, %edx
	movl	qty_table@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1059 0
	movl	-12(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, 16(%edx)
	.loc 1 1060 0
	movl	-12(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, 20(%edx)
	.loc 1 1061 0
	movl	-12(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, 24(%edx)
	.loc 1 1062 0
	movl	-12(%ebp), %eax
	movl	$0, 4(%eax)
	movl	-12(%ebp), %eax
	movl	4(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 1063 0
	movl	-12(%ebp), %eax
	movl	$0, 28(%eax)
	.loc 1 1065 0
	movl	8(%ebp), %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	reg_eqv_table@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 1066 0
	movl	-8(%ebp), %eax
	movl	$-1, 4(%eax)
	movl	-8(%ebp), %eax
	movl	4(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 1067 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE24:
	.size	make_new_qty, .-make_new_qty
	.section	.rodata
	.type	__FUNCTION__.12224, @object
	.size	__FUNCTION__.12224, 14
__FUNCTION__.12224:
	.string	"make_regs_eqv"
	.text
	.type	make_regs_eqv, @function
make_regs_eqv:
.LFB25:
	.loc 1 1075 0
	pushl	%ebp
.LCFI38:
	movl	%esp, %ebp
.LCFI39:
	pushl	%ebx
.LCFI40:
	subl	$52, %esp
.LCFI41:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1077 0
	movl	cached_regno@GOTOFF(%ebx), %eax
	cmpl	%eax, 12(%ebp)
	jne	.L371
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L373
.L371:
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_cse_reg_info
	movl	%eax, -44(%ebp)
	jmp	.L374
.L373:
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	movl	%eax, -44(%ebp)
.L374:
	movl	-44(%ebp), %edx
	movl	12(%edx), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1080 0
	movl	-12(%ebp), %eax
	sall	$5, %eax
	movl	%eax, %edx
	movl	qty_table@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 1083 0
	movl	cached_regno@GOTOFF(%ebx), %eax
	cmpl	%eax, 12(%ebp)
	jne	.L375
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L377
.L375:
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_cse_reg_info
	movl	%eax, -40(%ebp)
	jmp	.L378
.L377:
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	movl	%eax, -40(%ebp)
.L378:
	movl	-40(%ebp), %eax
	movl	12(%eax), %edx
	movl	12(%ebp), %eax
	cmpl	%eax, %edx
	jne	.L379
	.loc 1 1084 0
	leal	__FUNCTION__.12224@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1084, 4(%esp)
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L379:
	.loc 1 1086 0
	movl	cached_regno@GOTOFF(%ebx), %eax
	cmpl	%eax, 8(%ebp)
	jne	.L381
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L383
.L381:
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	get_cse_reg_info
	movl	%eax, -36(%ebp)
	jmp	.L384
.L383:
	movl	cached_cse_reg_info@GOTOFF(%ebx), %edx
	movl	%edx, -36(%ebp)
.L384:
	movl	-12(%ebp), %eax
	movl	-36(%ebp), %edx
	movl	%eax, 12(%edx)
	.loc 1 1087 0
	movl	-8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 1088 0
	movl	-8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 1094 0
	cmpl	$175, -16(%ebp)
	ja	.L385
	cmpl	$1, -16(%ebp)
	je	.L410
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	je	.L389
	movl	$17, -32(%ebp)
	jmp	.L391
.L389:
	movl	$30, -32(%ebp)
.L391:
	movl	-32(%ebp), %eax
	cmpl	-16(%ebp), %eax
	je	.L410
	movl	-16(%ebp), %eax
	movl	fixed_regs@GOT(%ebx), %edx
	movzbl	(%edx,%eax), %eax
	testb	%al, %al
	jne	.L410
	movl	-16(%ebp), %eax
	movl	global_regs@GOT(%ebx), %edx
	movzbl	(%edx,%eax), %eax
	testb	%al, %al
	jne	.L410
.L385:
	cmpl	$175, 8(%ebp)
	ja	.L394
	movl	8(%ebp), %eax
	movl	mips_regno_to_class@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	testl	%eax, %eax
	je	.L410
.L394:
	cmpl	$175, 8(%ebp)
	ja	.L396
	cmpl	$1, 8(%ebp)
	je	.L398
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	je	.L400
	movl	$17, -28(%ebp)
	jmp	.L402
.L400:
	movl	$30, -28(%ebp)
.L402:
	movl	-28(%ebp), %edx
	cmpl	8(%ebp), %edx
	je	.L398
	movl	8(%ebp), %eax
	movl	fixed_regs@GOT(%ebx), %edx
	movzbl	(%edx,%eax), %eax
	testb	%al, %al
	jne	.L398
	movl	8(%ebp), %eax
	movl	global_regs@GOT(%ebx), %edx
	movzbl	(%edx,%eax), %eax
	testb	%al, %al
	jne	.L398
.L396:
	cmpl	$175, 8(%ebp)
	jbe	.L410
	cmpl	$175, -16(%ebp)
	jbe	.L398
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	uid_cuid@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	movl	cse_basic_block_end@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	jg	.L407
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	uid_cuid@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	movl	cse_basic_block_start@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	jge	.L410
.L407:
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	uid_cuid@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %ecx
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-16(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	uid_cuid@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	cmpl	%eax, %ecx
	jle	.L410
.L398:
	.loc 1 1109 0
	movl	-16(%ebp), %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	reg_eqv_table@GOTOFF(%ebx), %eax
	addl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 1110 0
	movl	8(%ebp), %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	reg_eqv_table@GOTOFF(%ebx), %eax
	addl	%eax, %edx
	movl	-16(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 1111 0
	movl	8(%ebp), %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	reg_eqv_table@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	$-1, 4(%eax)
	.loc 1 1112 0
	movl	-8(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, 16(%edx)
	.loc 1 1094 0
	jmp	.L426
.L411:
	.loc 1 1123 0
	movl	-20(%ebp), %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	reg_eqv_table@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
.L410:
	.loc 1 1120 0
	cmpl	$175, -20(%ebp)
	ja	.L412
	movl	-20(%ebp), %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	reg_eqv_table@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	js	.L412
	movl	-20(%ebp), %eax
	movl	mips_regno_to_class@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	testl	%eax, %eax
	je	.L415
	cmpl	$1, -20(%ebp)
	je	.L412
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	je	.L418
	movl	$17, -24(%ebp)
	jmp	.L420
.L418:
	movl	$30, -24(%ebp)
.L420:
	movl	-24(%ebp), %eax
	cmpl	-20(%ebp), %eax
	je	.L412
	movl	-20(%ebp), %eax
	movl	fixed_regs@GOT(%ebx), %edx
	movzbl	(%edx,%eax), %eax
	testb	%al, %al
	jne	.L412
	movl	-20(%ebp), %eax
	movl	global_regs@GOT(%ebx), %edx
	movzbl	(%edx,%eax), %eax
	testb	%al, %al
	jne	.L412
.L415:
	cmpl	$175, 8(%ebp)
	ja	.L411
.L412:
	.loc 1 1124 0
	movl	8(%ebp), %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	reg_eqv_table@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %ecx
	movl	-20(%ebp), %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	reg_eqv_table@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, (%ecx)
	.loc 1 1125 0
	movl	-20(%ebp), %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	reg_eqv_table@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	js	.L423
	.loc 1 1126 0
	movl	-20(%ebp), %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	reg_eqv_table@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	reg_eqv_table@GOTOFF(%ebx), %eax
	addl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%edx)
	jmp	.L425
.L423:
	.loc 1 1128 0
	movl	-12(%ebp), %eax
	sall	$5, %eax
	movl	%eax, %edx
	movl	qty_table@GOTOFF(%ebx), %eax
	addl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%eax, 20(%edx)
.L425:
	.loc 1 1129 0
	movl	-20(%ebp), %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	reg_eqv_table@GOTOFF(%ebx), %eax
	addl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 1130 0
	movl	8(%ebp), %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	reg_eqv_table@GOTOFF(%ebx), %eax
	addl	%eax, %edx
	movl	-20(%ebp), %eax
	movl	%eax, 4(%edx)
.L426:
	.loc 1 1132 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE25:
	.size	make_regs_eqv, .-make_regs_eqv
	.type	delete_reg_equiv, @function
delete_reg_equiv:
.LFB26:
	.loc 1 1139 0
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
	.loc 1 1141 0
	movl	cached_regno@GOTOFF(%ebx), %eax
	cmpl	%eax, 8(%ebp)
	jne	.L428
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L430
.L428:
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	get_cse_reg_info
	movl	%eax, -28(%ebp)
	jmp	.L431
.L430:
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	movl	%eax, -28(%ebp)
.L431:
	movl	-28(%ebp), %edx
	movl	12(%edx), %eax
	movl	%eax, -16(%ebp)
	.loc 1 1145 0
	movl	8(%ebp), %eax
	cmpl	-16(%ebp), %eax
	je	.L444
	.loc 1 1148 0
	movl	-16(%ebp), %eax
	sall	$5, %eax
	movl	%eax, %edx
	movl	qty_table@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 1150 0
	movl	8(%ebp), %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	reg_eqv_table@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1151 0
	movl	8(%ebp), %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	reg_eqv_table@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 1153 0
	cmpl	$-1, -8(%ebp)
	je	.L434
	.loc 1 1154 0
	movl	-8(%ebp), %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	reg_eqv_table@GOTOFF(%ebx), %eax
	addl	%eax, %edx
	movl	-12(%ebp), %eax
	movl	%eax, 4(%edx)
	jmp	.L436
.L434:
	.loc 1 1156 0
	movl	-12(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	%edx, 20(%eax)
.L436:
	.loc 1 1157 0
	cmpl	$-1, -12(%ebp)
	je	.L437
	.loc 1 1158 0
	movl	-12(%ebp), %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	reg_eqv_table@GOTOFF(%ebx), %eax
	addl	%eax, %edx
	movl	-8(%ebp), %eax
	movl	%eax, (%edx)
	jmp	.L439
.L437:
	.loc 1 1160 0
	movl	-8(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	%edx, 16(%eax)
.L439:
	.loc 1 1162 0
	movl	cached_regno@GOTOFF(%ebx), %eax
	cmpl	%eax, 8(%ebp)
	jne	.L440
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L442
.L440:
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	get_cse_reg_info
	movl	%eax, -24(%ebp)
	jmp	.L443
.L442:
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	movl	%eax, -24(%ebp)
.L443:
	movl	8(%ebp), %eax
	movl	-24(%ebp), %edx
	movl	%eax, 12(%edx)
.L444:
	.loc 1 1163 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE26:
	.size	delete_reg_equiv, .-delete_reg_equiv
	.type	mention_regs, @function
mention_regs:
.LFB27:
	.loc 1 1180 0
	pushl	%ebp
.LCFI46:
	movl	%esp, %ebp
.LCFI47:
	pushl	%ebx
.LCFI48:
	subl	$148, %esp
.LCFI49:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1184 0
	movl	$0, -24(%ebp)
	.loc 1 1186 0
	cmpl	$0, 8(%ebp)
	jne	.L446
	.loc 1 1187 0
	movl	$0, -140(%ebp)
	jmp	.L448
.L446:
	.loc 1 1189 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -40(%ebp)
	.loc 1 1190 0
	cmpl	$71, -40(%ebp)
	jne	.L449
.LBB13:
	.loc 1 1192 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 1195 0
	cmpl	$175, -20(%ebp)
	ja	.L451
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	-20(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	mips_hard_regno_nregs@PLT
	movl	%eax, -136(%ebp)
	jmp	.L453
.L451:
	movl	$1, -136(%ebp)
.L453:
	movl	-136(%ebp), %eax
	addl	-20(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 1198 0
	movl	-20(%ebp), %eax
	movl	%eax, -12(%ebp)
	jmp	.L454
.L455:
	.loc 1 1200 0
	movl	cached_regno@GOTOFF(%ebx), %eax
	cmpl	%eax, -12(%ebp)
	jne	.L456
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L458
.L456:
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_cse_reg_info
	movl	%eax, -132(%ebp)
	jmp	.L459
.L458:
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	movl	%eax, -132(%ebp)
.L459:
	movl	-132(%ebp), %edx
	movl	20(%edx), %eax
	testl	%eax, %eax
	js	.L460
	movl	cached_regno@GOTOFF(%ebx), %eax
	cmpl	%eax, -12(%ebp)
	jne	.L462
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L464
.L462:
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_cse_reg_info
	movl	%eax, -128(%ebp)
	jmp	.L465
.L464:
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	movl	%eax, -128(%ebp)
.L465:
	movl	-128(%ebp), %edx
	movl	20(%edx), %edx
	movl	%edx, -124(%ebp)
	movl	cached_regno@GOTOFF(%ebx), %eax
	cmpl	%eax, -12(%ebp)
	jne	.L466
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L468
.L466:
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_cse_reg_info
	movl	%eax, -120(%ebp)
	jmp	.L469
.L468:
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	movl	%eax, -120(%ebp)
.L469:
	movl	-120(%ebp), %edx
	movl	16(%edx), %eax
	cmpl	%eax, -124(%ebp)
	je	.L460
	.loc 1 1201 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	remove_invalid_refs
.L460:
	.loc 1 1203 0
	movl	cached_regno@GOTOFF(%ebx), %eax
	cmpl	%eax, -12(%ebp)
	jne	.L471
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L473
.L471:
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_cse_reg_info
	movl	%eax, -116(%ebp)
	jmp	.L474
.L473:
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	movl	%eax, -116(%ebp)
.L474:
	movl	cached_regno@GOTOFF(%ebx), %eax
	cmpl	%eax, -12(%ebp)
	jne	.L475
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L477
.L475:
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_cse_reg_info
	movl	%eax, -112(%ebp)
	jmp	.L478
.L477:
	movl	cached_cse_reg_info@GOTOFF(%ebx), %edx
	movl	%edx, -112(%ebp)
.L478:
	movl	-112(%ebp), %edx
	movl	16(%edx), %eax
	movl	-116(%ebp), %edx
	movl	%eax, 20(%edx)
	.loc 1 1204 0
	movl	cached_regno@GOTOFF(%ebx), %eax
	cmpl	%eax, -12(%ebp)
	jne	.L479
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L481
.L479:
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_cse_reg_info
	movl	%eax, -108(%ebp)
	jmp	.L482
.L481:
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	movl	%eax, -108(%ebp)
.L482:
	movl	-108(%ebp), %edx
	movl	$-1, 24(%edx)
	.loc 1 1198 0
	addl	$1, -12(%ebp)
.L454:
	movl	-12(%ebp), %eax
	cmpl	-16(%ebp), %eax
	jb	.L455
	.loc 1 1207 0
	movl	$0, -140(%ebp)
	jmp	.L448
.L449:
.LBE13:
	.loc 1 1213 0
	cmpl	$73, -40(%ebp)
	jne	.L484
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L484
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	jbe	.L484
.LBB14:
	.loc 1 1216 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 1218 0
	movl	cached_regno@GOTOFF(%ebx), %eax
	cmpl	%eax, -8(%ebp)
	jne	.L488
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L490
.L488:
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	get_cse_reg_info
	movl	%eax, -104(%ebp)
	jmp	.L491
.L490:
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	movl	%eax, -104(%ebp)
.L491:
	movl	-104(%ebp), %edx
	movl	20(%edx), %eax
	testl	%eax, %eax
	js	.L492
	movl	cached_regno@GOTOFF(%ebx), %eax
	cmpl	%eax, -8(%ebp)
	jne	.L494
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L496
.L494:
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	get_cse_reg_info
	movl	%eax, -100(%ebp)
	jmp	.L497
.L496:
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	movl	%eax, -100(%ebp)
.L497:
	movl	-100(%ebp), %edx
	movl	20(%edx), %edx
	movl	%edx, -96(%ebp)
	movl	cached_regno@GOTOFF(%ebx), %eax
	cmpl	%eax, -8(%ebp)
	jne	.L498
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L500
.L498:
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	get_cse_reg_info
	movl	%eax, -92(%ebp)
	jmp	.L501
.L500:
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	movl	%eax, -92(%ebp)
.L501:
	movl	-92(%ebp), %edx
	movl	16(%edx), %eax
	cmpl	%eax, -96(%ebp)
	je	.L492
	.loc 1 1225 0
	movl	cached_regno@GOTOFF(%ebx), %eax
	cmpl	%eax, -8(%ebp)
	jne	.L503
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L505
.L503:
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	get_cse_reg_info
	movl	%eax, -88(%ebp)
	jmp	.L506
.L505:
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	movl	%eax, -88(%ebp)
.L506:
	movl	-88(%ebp), %edx
	movl	16(%edx), %edx
	movl	%edx, -84(%ebp)
	movl	cached_regno@GOTOFF(%ebx), %eax
	cmpl	%eax, -8(%ebp)
	jne	.L507
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L509
.L507:
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	get_cse_reg_info
	movl	%eax, -80(%ebp)
	jmp	.L510
.L509:
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	movl	%eax, -80(%ebp)
.L510:
	movl	-80(%ebp), %edx
	movl	20(%edx), %eax
	movl	-84(%ebp), %edx
	subl	%eax, %edx
	movl	%edx, %eax
	cmpl	$1, %eax
	jg	.L511
	movl	cached_regno@GOTOFF(%ebx), %eax
	cmpl	%eax, -8(%ebp)
	jne	.L513
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L515
.L513:
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	get_cse_reg_info
	movl	%eax, -76(%ebp)
	jmp	.L516
.L515:
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	movl	%eax, -76(%ebp)
.L516:
	movl	-76(%ebp), %eax
	movl	24(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	je	.L517
.L511:
	.loc 1 1227 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	remove_invalid_refs
	.loc 1 1225 0
	jmp	.L492
.L517:
	.loc 1 1229 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	remove_invalid_subreg_refs
.L492:
	.loc 1 1232 0
	movl	cached_regno@GOTOFF(%ebx), %eax
	cmpl	%eax, -8(%ebp)
	jne	.L518
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L520
.L518:
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	get_cse_reg_info
	movl	%eax, -72(%ebp)
	jmp	.L521
.L520:
	movl	cached_cse_reg_info@GOTOFF(%ebx), %edx
	movl	%edx, -72(%ebp)
.L521:
	movl	cached_regno@GOTOFF(%ebx), %eax
	cmpl	%eax, -8(%ebp)
	jne	.L522
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L524
.L522:
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	get_cse_reg_info
	movl	%eax, -68(%ebp)
	jmp	.L525
.L524:
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	movl	%eax, -68(%ebp)
.L525:
	movl	-68(%ebp), %edx
	movl	16(%edx), %eax
	movl	-72(%ebp), %edx
	movl	%eax, 20(%edx)
	.loc 1 1233 0
	movl	cached_regno@GOTOFF(%ebx), %eax
	cmpl	%eax, -8(%ebp)
	jne	.L526
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L528
.L526:
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	get_cse_reg_info
	movl	%eax, -64(%ebp)
	jmp	.L529
.L528:
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	movl	%eax, -64(%ebp)
.L529:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	-64(%ebp), %edx
	movl	%eax, 24(%edx)
	.loc 1 1234 0
	movl	$0, -140(%ebp)
	jmp	.L448
.L484:
.LBE14:
	.loc 1 1247 0
	cmpl	$84, -40(%ebp)
	je	.L530
	movl	-40(%ebp), %eax
	movl	rtx_class@GOT(%ebx), %edx
	movzbl	(%edx,%eax), %eax
	cmpb	$60, %al
	jne	.L532
.L530:
	.loc 1 1249 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L533
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %edx
	movl	cached_regno@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	jne	.L535
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L537
.L535:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	get_cse_reg_info
	movl	%eax, -60(%ebp)
	jmp	.L538
.L537:
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	movl	%eax, -60(%ebp)
.L538:
	movl	-60(%ebp), %eax
	movl	12(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	jne	.L533
	.loc 1 1251 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	insert_regs
	testl	%eax, %eax
	je	.L533
	.loc 1 1253 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	rehash_using_reg
	.loc 1 1254 0
	movl	$1, -24(%ebp)
.L533:
	.loc 1 1257 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L532
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	4(%eax), %edx
	movl	cached_regno@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	jne	.L542
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L544
.L542:
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	get_cse_reg_info
	movl	%eax, -56(%ebp)
	jmp	.L545
.L544:
	movl	cached_cse_reg_info@GOTOFF(%ebx), %edx
	movl	%edx, -56(%ebp)
.L545:
	movl	-56(%ebp), %eax
	movl	12(%eax), %edx
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	jne	.L532
	.loc 1 1259 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	insert_regs
	testl	%eax, %eax
	je	.L532
	.loc 1 1261 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, (%esp)
	call	rehash_using_reg
	.loc 1 1262 0
	movl	$1, -24(%ebp)
.L532:
	.loc 1 1266 0
	movl	-40(%ebp), %edx
	movl	rtx_format@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -28(%ebp)
	.loc 1 1267 0
	movl	-40(%ebp), %edx
	movl	rtx_length@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	subl	$1, %eax
	movl	%eax, -36(%ebp)
	jmp	.L548
.L549:
	.loc 1 1268 0
	movl	-36(%ebp), %eax
	addl	-28(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$101, %al
	jne	.L550
	.loc 1 1269 0
	movl	-36(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	%eax, (%esp)
	call	mention_regs
	orl	%eax, -24(%ebp)
	jmp	.L552
.L550:
	.loc 1 1270 0
	movl	-36(%ebp), %eax
	addl	-28(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$69, %al
	jne	.L552
	.loc 1 1271 0
	movl	$0, -32(%ebp)
	jmp	.L554
.L555:
	.loc 1 1272 0
	movl	-36(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %edx
	movl	-32(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	%eax, (%esp)
	call	mention_regs
	orl	%eax, -24(%ebp)
	.loc 1 1271 0
	addl	$1, -32(%ebp)
.L554:
	movl	-36(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	(%eax), %eax
	cmpl	-32(%ebp), %eax
	jg	.L555
.L552:
	.loc 1 1267 0
	subl	$1, -36(%ebp)
.L548:
	cmpl	$0, -36(%ebp)
	jns	.L549
	.loc 1 1274 0
	movl	-24(%ebp), %edx
	movl	%edx, -140(%ebp)
.L448:
	movl	-140(%ebp), %eax
	.loc 1 1275 0
	addl	$148, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE27:
	.size	mention_regs, .-mention_regs
	.type	insert_regs, @function
insert_regs:
.LFB28:
	.loc 1 1292 0
	pushl	%ebp
.LCFI50:
	movl	%esp, %ebp
.LCFI51:
	pushl	%ebx
.LCFI52:
	subl	$68, %esp
.LCFI53:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1293 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L559
.LBB15:
	.loc 1 1295 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 1301 0
	movl	cached_regno@GOTOFF(%ebx), %eax
	cmpl	%eax, -16(%ebp)
	jne	.L561
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L563
.L561:
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	get_cse_reg_info
	movl	%eax, -56(%ebp)
	jmp	.L564
.L563:
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	movl	%eax, -56(%ebp)
.L564:
	movl	-56(%ebp), %eax
	movl	12(%eax), %edx
	movl	-16(%ebp), %eax
	cmpl	%eax, %edx
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -12(%ebp)
	.loc 1 1302 0
	cmpl	$0, -12(%ebp)
	je	.L565
.LBB16:
	.loc 1 1304 0
	movl	cached_regno@GOTOFF(%ebx), %eax
	cmpl	%eax, -16(%ebp)
	jne	.L567
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L569
.L567:
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	get_cse_reg_info
	movl	%eax, -52(%ebp)
	jmp	.L570
.L569:
	movl	cached_cse_reg_info@GOTOFF(%ebx), %edx
	movl	%edx, -52(%ebp)
.L570:
	movl	-52(%ebp), %edx
	movl	12(%edx), %eax
	sall	$5, %eax
	movl	%eax, %edx
	movl	qty_table@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 1306 0
	movl	-8(%ebp), %eax
	movl	24(%eax), %edx
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	cmpl	%eax, %edx
	je	.L565
	.loc 1 1307 0
	movl	$0, -48(%ebp)
	jmp	.L572
.L565:
.LBE16:
	.loc 1 1310 0
	cmpl	$0, 16(%ebp)
	jne	.L573
	cmpl	$0, -12(%ebp)
	jne	.L575
.L573:
	.loc 1 1312 0
	cmpl	$0, 12(%ebp)
	je	.L576
	.loc 1 1313 0
	movl	12(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, 12(%ebp)
	.loc 1 1314 0
	jmp	.L578
.L579:
	.loc 1 1316 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L580
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movzbl	2(%eax), %edx
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	%al, %dl
	jne	.L580
	.loc 1 1319 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	make_regs_eqv
	.loc 1 1320 0
	movl	$1, -48(%ebp)
	jmp	.L572
.L580:
	.loc 1 1315 0
	movl	12(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, 12(%ebp)
.L578:
	.loc 1 1314 0
	cmpl	$0, 12(%ebp)
	jne	.L579
.L576:
	.loc 1 1332 0
	cmpl	$0, 16(%ebp)
	jne	.L583
	movl	cached_regno@GOTOFF(%ebx), %eax
	cmpl	%eax, -16(%ebp)
	jne	.L585
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L587
.L585:
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	get_cse_reg_info
	movl	%eax, -44(%ebp)
	jmp	.L588
.L587:
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	movl	%eax, -44(%ebp)
.L588:
	movl	-44(%ebp), %edx
	movl	20(%edx), %eax
	testl	%eax, %eax
	js	.L583
	movl	cached_regno@GOTOFF(%ebx), %eax
	cmpl	%eax, -16(%ebp)
	jne	.L590
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L592
.L590:
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	get_cse_reg_info
	movl	%eax, -40(%ebp)
	jmp	.L593
.L592:
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	movl	%eax, -40(%ebp)
.L593:
	movl	-40(%ebp), %edx
	movl	16(%edx), %edx
	movl	%edx, -36(%ebp)
	movl	cached_regno@GOTOFF(%ebx), %eax
	cmpl	%eax, -16(%ebp)
	jne	.L594
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L596
.L594:
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	get_cse_reg_info
	movl	%eax, -32(%ebp)
	jmp	.L597
.L596:
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	movl	%eax, -32(%ebp)
.L597:
	movl	-32(%ebp), %edx
	movl	20(%edx), %eax
	addl	$1, %eax
	cmpl	%eax, -36(%ebp)
	jne	.L583
	.loc 1 1335 0
	movl	cached_regno@GOTOFF(%ebx), %eax
	cmpl	%eax, -16(%ebp)
	jne	.L599
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L601
.L599:
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	get_cse_reg_info
	movl	%eax, -28(%ebp)
	jmp	.L602
.L601:
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	movl	%eax, -28(%ebp)
.L602:
	movl	-28(%ebp), %edx
	movl	16(%edx), %eax
	addl	$1, %eax
	movl	-28(%ebp), %edx
	movl	%eax, 16(%edx)
.L583:
	.loc 1 1336 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	make_new_qty
	.loc 1 1337 0
	movl	$1, -48(%ebp)
	jmp	.L572
.L575:
	.loc 1 1340 0
	movl	$0, -48(%ebp)
	jmp	.L572
.L559:
.LBE15:
	.loc 1 1349 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L603
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L603
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %edx
	movl	cached_regno@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	jne	.L606
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L608
.L606:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	get_cse_reg_info
	movl	%eax, -24(%ebp)
	jmp	.L609
.L608:
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	movl	%eax, -24(%ebp)
.L609:
	movl	-24(%ebp), %eax
	movl	12(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	jne	.L603
	.loc 1 1352 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	insert_regs
	.loc 1 1353 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	mention_regs
	.loc 1 1354 0
	movl	$1, -48(%ebp)
	jmp	.L572
.L603:
	.loc 1 1357 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	mention_regs
	movl	%eax, -48(%ebp)
.L572:
	movl	-48(%ebp), %eax
	.loc 1 1358 0
	addl	$68, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE28:
	.size	insert_regs, .-insert_regs
	.type	remove_from_table, @function
remove_from_table:
.LFB29:
	.loc 1 1371 0
	pushl	%ebp
.LCFI54:
	movl	%esp, %ebp
.LCFI55:
	subl	$32, %esp
.LCFI56:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 1372 0
	cmpl	$0, 8(%ebp)
	je	.L640
	.loc 1 1376 0
	movl	8(%ebp), %eax
	movl	$0, 24(%eax)
.LBB17:
	.loc 1 1381 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 1382 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 1384 0
	cmpl	$0, -20(%ebp)
	je	.L615
	.loc 1 1385 0
	movl	-20(%ebp), %edx
	movl	-24(%ebp), %eax
	movl	%eax, 20(%edx)
.L615:
	.loc 1 1387 0
	cmpl	$0, -24(%ebp)
	je	.L617
	.loc 1 1388 0
	movl	-24(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	%eax, 16(%edx)
	jmp	.L619
.L617:
.LBB18:
	.loc 1 1391 0
	movl	-20(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 1392 0
	jmp	.L620
.L621:
	.loc 1 1394 0
	movl	-20(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 24(%edx)
	.loc 1 1395 0
	movl	-20(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -20(%ebp)
.L620:
	.loc 1 1392 0
	cmpl	$0, -20(%ebp)
	jne	.L621
.L619:
.LBE18:
.LBE17:
.LBB19:
	.loc 1 1403 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1404 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 1406 0
	cmpl	$0, -8(%ebp)
	je	.L622
	.loc 1 1407 0
	movl	-8(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 12(%edx)
.L622:
	.loc 1 1409 0
	cmpl	$0, -12(%ebp)
	je	.L624
	.loc 1 1410 0
	movl	-12(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	%eax, 8(%edx)
	jmp	.L626
.L624:
	.loc 1 1411 0
	movl	12(%ebp), %eax
	movl	table@GOTOFF(%ecx,%eax,4), %eax
	cmpl	8(%ebp), %eax
	jne	.L627
	.loc 1 1412 0
	movl	12(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	%eax, table@GOTOFF(%ecx,%edx,4)
	jmp	.L626
.L627:
	.loc 1 1419 0
	movl	$0, 12(%ebp)
	jmp	.L629
.L630:
	.loc 1 1420 0
	movl	12(%ebp), %eax
	movl	table@GOTOFF(%ecx,%eax,4), %eax
	cmpl	8(%ebp), %eax
	jne	.L631
	.loc 1 1421 0
	movl	12(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	%eax, table@GOTOFF(%ecx,%edx,4)
.L631:
	.loc 1 1419 0
	addl	$1, 12(%ebp)
.L629:
	cmpl	$31, 12(%ebp)
	jbe	.L630
.L626:
.LBE19:
	.loc 1 1427 0
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	testl	%eax, %eax
	je	.L633
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	cmpl	8(%ebp), %eax
	je	.L633
.LBB20:
	.loc 1 1429 0
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, -4(%ebp)
	.loc 1 1431 0
	jmp	.L636
.L637:
	.loc 1 1432 0
	movl	-4(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, -4(%ebp)
.L636:
	.loc 1 1431 0
	movl	-4(%ebp), %eax
	movl	28(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L637
	.loc 1 1433 0
	movl	8(%ebp), %eax
	movl	28(%eax), %edx
	movl	-4(%ebp), %eax
	movl	%edx, 28(%eax)
	.loc 1 1434 0
	movl	-4(%ebp), %eax
	movl	28(%eax), %eax
	cmpl	-4(%ebp), %eax
	jne	.L633
	.loc 1 1435 0
	movl	-4(%ebp), %eax
	movl	$0, 28(%eax)
.L633:
.LBE20:
	.loc 1 1439 0
	movl	free_element_chain@GOTOFF(%ecx), %eax
	movl	8(%ebp), %edx
	movl	%eax, 8(%edx)
	.loc 1 1440 0
	movl	8(%ebp), %eax
	movl	%eax, free_element_chain@GOTOFF(%ecx)
.L640:
	.loc 1 1441 0
	leave
	ret
.LFE29:
	.size	remove_from_table, .-remove_from_table
	.type	lookup, @function
lookup:
.LFB30:
	.loc 1 1457 0
	pushl	%ebp
.LCFI57:
	movl	%esp, %ebp
.LCFI58:
	pushl	%ebx
.LCFI59:
	subl	$36, %esp
.LCFI60:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1460 0
	movl	12(%ebp), %eax
	movl	table@GOTOFF(%ebx,%eax,4), %eax
	movl	%eax, -8(%ebp)
	jmp	.L642
.L643:
	.loc 1 1461 0
	movl	-8(%ebp), %eax
	movl	40(%eax), %eax
	cmpl	16(%ebp), %eax
	jne	.L644
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L646
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	je	.L648
.L646:
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	setne	%al
	movzbl	%al, %edx
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	$0, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	exp_equiv_p
	testl	%eax, %eax
	je	.L644
.L648:
	.loc 1 1463 0
	movl	-8(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L649
.L644:
	.loc 1 1460 0
	movl	-8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -8(%ebp)
.L642:
	cmpl	$0, -8(%ebp)
	jne	.L643
	.loc 1 1465 0
	movl	$0, -24(%ebp)
.L649:
	movl	-24(%ebp), %eax
	.loc 1 1466 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE30:
	.size	lookup, .-lookup
	.type	lookup_for_remove, @function
lookup_for_remove:
.LFB31:
	.loc 1 1476 0
	pushl	%ebp
.LCFI61:
	movl	%esp, %ebp
.LCFI62:
	pushl	%ebx
.LCFI63:
	subl	$36, %esp
.LCFI64:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1479 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L653
.LBB21:
	.loc 1 1481 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 1485 0
	movl	12(%ebp), %eax
	movl	table@GOTOFF(%ebx,%eax,4), %eax
	movl	%eax, -12(%ebp)
	jmp	.L655
.L656:
	.loc 1 1486 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L657
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	cmpl	-8(%ebp), %eax
	jne	.L657
	.loc 1 1488 0
	movl	-12(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L660
.L657:
	.loc 1 1485 0
	movl	-12(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -12(%ebp)
.L655:
	cmpl	$0, -12(%ebp)
	jne	.L656
	jmp	.L662
.L653:
.LBE21:
	.loc 1 1492 0
	movl	12(%ebp), %eax
	movl	table@GOTOFF(%ebx,%eax,4), %eax
	movl	%eax, -12(%ebp)
	jmp	.L663
.L664:
	.loc 1 1493 0
	movl	-12(%ebp), %eax
	movl	40(%eax), %eax
	cmpl	16(%ebp), %eax
	jne	.L665
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	cmpl	8(%ebp), %eax
	je	.L667
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	exp_equiv_p
	testl	%eax, %eax
	je	.L665
.L667:
	.loc 1 1494 0
	movl	-12(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L660
.L665:
	.loc 1 1492 0
	movl	-12(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -12(%ebp)
.L663:
	cmpl	$0, -12(%ebp)
	jne	.L664
.L662:
	.loc 1 1497 0
	movl	$0, -24(%ebp)
.L660:
	movl	-24(%ebp), %eax
	.loc 1 1498 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE31:
	.size	lookup_for_remove, .-lookup_for_remove
	.type	lookup_as_function, @function
lookup_as_function:
.LFB32:
	.loc 1 1507 0
	pushl	%ebp
.LCFI65:
	movl	%esp, %ebp
.LCFI66:
	pushl	%esi
.LCFI67:
	pushl	%ebx
.LCFI68:
	subl	$48, %esp
.LCFI69:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1509 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %esi
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	safe_hash
	andl	$31, %eax
	movl	%esi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	lookup
	movl	%eax, -12(%ebp)
	.loc 1 1514 0
	cmpl	$0, -12(%ebp)
	jne	.L671
	cmpl	$64, 12(%ebp)
	jne	.L671
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %ecx
	movl	word_mode@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	%al, %cl
	jae	.L671
	.loc 1 1517 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_rtx@PLT
	movl	%eax, 8(%ebp)
	.loc 1 1518 0
	movl	word_mode@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movb	%dl, 2(%eax)
	.loc 1 1519 0
	movl	word_mode@GOT(%ebx), %eax
	movl	(%eax), %esi
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	safe_hash
	andl	$31, %eax
	movl	%esi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	lookup
	movl	%eax, -12(%ebp)
.L671:
	.loc 1 1522 0
	cmpl	$0, -12(%ebp)
	jne	.L675
	.loc 1 1523 0
	movl	$0, -28(%ebp)
	jmp	.L677
.L675:
	.loc 1 1525 0
	movl	-12(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L678
.L679:
	.loc 1 1526 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	cmpl	12(%ebp), %eax
	jne	.L680
	movl	-12(%ebp), %eax
	movl	(%eax), %edx
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	$0, 12(%esp)
	movl	$1, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	exp_equiv_p
	testl	%eax, %eax
	je	.L680
	.loc 1 1529 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L677
.L680:
	.loc 1 1525 0
	movl	-12(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -12(%ebp)
.L678:
	cmpl	$0, -12(%ebp)
	jne	.L679
	.loc 1 1531 0
	movl	$0, -28(%ebp)
.L677:
	movl	-28(%ebp), %eax
	.loc 1 1532 0
	addl	$48, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE32:
	.size	lookup_as_function, .-lookup_as_function
	.section	.rodata
	.type	__FUNCTION__.13074, @object
	.size	__FUNCTION__.13074, 7
__FUNCTION__.13074:
	.string	"insert"
	.text
	.type	insert, @function
insert:
.LFB33:
	.loc 1 1567 0
	pushl	%ebp
.LCFI70:
	movl	%esp, %ebp
.LCFI71:
	pushl	%edi
.LCFI72:
	pushl	%esi
.LCFI73:
	pushl	%ebx
.LCFI74:
	subl	$140, %esp
.LCFI75:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1572 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L686
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	cached_regno@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	jne	.L688
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L690
.L688:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	get_cse_reg_info
	movl	%eax, -136(%ebp)
	jmp	.L691
.L690:
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	movl	%eax, -136(%ebp)
.L691:
	movl	-136(%ebp), %ecx
	movl	12(%ecx), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	jne	.L686
	.loc 1 1573 0
	leal	__FUNCTION__.13074@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1573, 4(%esp)
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L686:
	.loc 1 1576 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L693
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	ja	.L693
.LBB22:
	.loc 1 1578 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -76(%ebp)
	.loc 1 1579 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	-76(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	mips_hard_regno_nregs@PLT
	addl	-76(%ebp), %eax
	movl	%eax, -72(%ebp)
	.loc 1 1582 0
	movl	-76(%ebp), %eax
	movl	%eax, -68(%ebp)
	jmp	.L696
.L697:
	.loc 1 1583 0
	movl	-68(%ebp), %eax
	shrl	$6, %eax
	movl	%eax, -132(%ebp)
	movl	hard_regs_in_table@GOTOFF(%ebx,%eax,8), %edx
	movl	4+hard_regs_in_table@GOTOFF(%ebx,%eax,8), %ecx
	movl	%edx, -128(%ebp)
	movl	%ecx, -124(%ebp)
	movl	-68(%ebp), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L804
	movl	%esi, %edi
	xorl	%esi, %esi
.L804:
	movl	-128(%ebp), %eax
	orl	%esi, %eax
	movl	-124(%ebp), %edx
	orl	%edi, %edx
	movl	-132(%ebp), %ecx
	movl	%eax, hard_regs_in_table@GOTOFF(%ebx,%ecx,8)
	movl	%edx, 4+hard_regs_in_table@GOTOFF(%ebx,%ecx,8)
	.loc 1 1582 0
	addl	$1, -68(%ebp)
.L696:
	movl	-68(%ebp), %eax
	cmpl	-72(%ebp), %eax
	jb	.L697
.L693:
.LBE22:
	.loc 1 1588 0
	movl	free_element_chain@GOTOFF(%ebx), %eax
	movl	%eax, -80(%ebp)
	.loc 1 1589 0
	cmpl	$0, -80(%ebp)
	je	.L698
	.loc 1 1590 0
	movl	-80(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, free_element_chain@GOTOFF(%ebx)
	jmp	.L700
.L698:
	.loc 1 1593 0
	movl	n_elements_made@GOTOFF(%ebx), %eax
	addl	$1, %eax
	movl	%eax, n_elements_made@GOTOFF(%ebx)
	.loc 1 1594 0
	movl	$48, (%esp)
	call	xmalloc@PLT
	movl	%eax, -80(%ebp)
.L700:
	.loc 1 1597 0
	movl	-80(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 1598 0
	movl	-80(%ebp), %eax
	movl	$0, 4(%eax)
	.loc 1 1599 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	je	.L701
	movl	$57, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	notreg_cost
	movl	%eax, -116(%ebp)
	jmp	.L703
.L701:
	movl	$0, -116(%ebp)
.L703:
	movl	-80(%ebp), %eax
	movl	-116(%ebp), %edx
	movl	%edx, 32(%eax)
	.loc 1 1600 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	approx_reg_cost
	movl	%eax, %edx
	movl	-80(%ebp), %eax
	movl	%edx, 36(%eax)
	.loc 1 1601 0
	movl	-80(%ebp), %eax
	movl	$0, 16(%eax)
	.loc 1 1602 0
	movl	-80(%ebp), %eax
	movl	$0, 20(%eax)
	.loc 1 1603 0
	movl	16(%ebp), %eax
	movl	table@GOTOFF(%ebx,%eax,4), %edx
	movl	-80(%ebp), %eax
	movl	%edx, 8(%eax)
	.loc 1 1604 0
	movl	-80(%ebp), %eax
	movl	$0, 12(%eax)
	.loc 1 1605 0
	movl	-80(%ebp), %eax
	movl	$0, 28(%eax)
	.loc 1 1606 0
	movl	-80(%ebp), %eax
	movb	$0, 44(%eax)
	.loc 1 1607 0
	movl	-80(%ebp), %edx
	movl	20(%ebp), %eax
	movl	%eax, 40(%edx)
	.loc 1 1608 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	je	.L704
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	je	.L704
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L704
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	je	.L704
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	je	.L704
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$144, %ax
	je	.L704
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$66, %ax
	je	.L704
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$150, %ax
	je	.L704
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L713
	movl	8(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L713
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	ja	.L704
.L713:
	movl	global_rtl@GOT(%ebx), %eax
	movl	12(%eax), %eax
	cmpl	8(%ebp), %eax
	je	.L704
	movl	global_rtl@GOT(%ebx), %eax
	movl	16(%eax), %eax
	cmpl	8(%ebp), %eax
	je	.L704
	movl	global_rtl@GOT(%ebx), %eax
	movl	20(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L718
	movl	fixed_regs@GOT(%ebx), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L704
.L718:
	movl	global_rtl@GOT(%ebx), %eax
	movl	28(%eax), %eax
	cmpl	8(%ebp), %eax
	je	.L704
	movl	global_rtl@GOT(%ebx), %eax
	movl	24(%eax), %eax
	cmpl	8(%ebp), %eax
	je	.L704
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$85, %ax
	jne	.L722
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L722
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	global_rtl@GOT(%ebx), %eax
	movl	12(%eax), %eax
	cmpl	%eax, %edx
	je	.L704
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	global_rtl@GOT(%ebx), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	je	.L704
	movl	global_rtl@GOT(%ebx), %eax
	movl	20(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L727
	movl	fixed_regs@GOT(%ebx), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L704
.L727:
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	global_rtl@GOT(%ebx), %eax
	movl	28(%eax), %eax
	cmpl	%eax, %edx
	je	.L704
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	global_rtl@GOT(%ebx), %eax
	movl	24(%eax), %eax
	cmpl	%eax, %edx
	je	.L704
.L722:
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$80, %ax
	jne	.L730
.L704:
	movl	$1, -112(%ebp)
	jmp	.L731
.L730:
	movl	$0, -112(%ebp)
.L731:
	movzbl	-112(%ebp), %edx
	movl	-80(%ebp), %eax
	movb	%dl, 45(%eax)
	.loc 1 1616 0
	movl	16(%ebp), %eax
	movl	table@GOTOFF(%ebx,%eax,4), %eax
	testl	%eax, %eax
	je	.L732
	.loc 1 1617 0
	movl	16(%ebp), %eax
	movl	table@GOTOFF(%ebx,%eax,4), %edx
	movl	-80(%ebp), %eax
	movl	%eax, 12(%edx)
.L732:
	.loc 1 1618 0
	movl	16(%ebp), %edx
	movl	-80(%ebp), %eax
	movl	%eax, table@GOTOFF(%ebx,%edx,4)
	.loc 1 1621 0
	cmpl	$0, 12(%ebp)
	je	.L734
	.loc 1 1623 0
	movl	12(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, 12(%ebp)
	.loc 1 1624 0
	movl	12(%ebp), %eax
	movl	36(%eax), %ecx
	movl	12(%ebp), %eax
	movl	32(%eax), %esi
	movl	-80(%ebp), %eax
	movl	36(%eax), %edx
	movl	-80(%ebp), %eax
	movl	32(%eax), %eax
	movl	%ecx, 12(%esp)
	movl	%esi, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	preferrable
	testl	%eax, %eax
	jns	.L736
.LBB23:
	.loc 1 1628 0
	movl	-80(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, 16(%edx)
	.loc 1 1629 0
	movl	12(%ebp), %edx
	movl	-80(%ebp), %eax
	movl	%eax, 20(%edx)
	.loc 1 1630 0
	movl	-80(%ebp), %edx
	movl	-80(%ebp), %eax
	movl	%eax, 24(%edx)
	.loc 1 1632 0
	movl	12(%ebp), %eax
	movl	%eax, -64(%ebp)
	jmp	.L738
.L739:
	.loc 1 1633 0
	movl	-64(%ebp), %edx
	movl	-80(%ebp), %eax
	movl	%eax, 24(%edx)
	.loc 1 1632 0
	movl	-64(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -64(%ebp)
.L738:
	cmpl	$0, -64(%ebp)
	jne	.L739
	jmp	.L748
.L736:
.LBE23:
.LBB24:
	.loc 1 1641 0
	movl	12(%ebp), %eax
	movl	%eax, -60(%ebp)
	jmp	.L742
.L743:
	.loc 1 1642 0
	movl	-56(%ebp), %eax
	movl	%eax, -60(%ebp)
.L742:
	.loc 1 1641 0
	movl	-60(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -56(%ebp)
	cmpl	$0, -56(%ebp)
	je	.L744
	movl	-80(%ebp), %eax
	movl	36(%eax), %ecx
	movl	-80(%ebp), %eax
	movl	32(%eax), %esi
	movl	-56(%ebp), %eax
	movl	36(%eax), %edx
	movl	-56(%ebp), %eax
	movl	32(%eax), %eax
	movl	%ecx, 12(%esp)
	movl	%esi, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	preferrable
	testl	%eax, %eax
	js	.L743
.L744:
	.loc 1 1645 0
	movl	-80(%ebp), %edx
	movl	-56(%ebp), %eax
	movl	%eax, 16(%edx)
	.loc 1 1646 0
	cmpl	$0, -56(%ebp)
	je	.L746
	.loc 1 1647 0
	movl	-56(%ebp), %edx
	movl	-80(%ebp), %eax
	movl	%eax, 20(%edx)
.L746:
	.loc 1 1649 0
	movl	-80(%ebp), %edx
	movl	-60(%ebp), %eax
	movl	%eax, 20(%edx)
	.loc 1 1650 0
	movl	-60(%ebp), %edx
	movl	-80(%ebp), %eax
	movl	%eax, 16(%edx)
	.loc 1 1651 0
	movl	-80(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, 24(%edx)
	jmp	.L748
.L734:
.LBE24:
	.loc 1 1655 0
	movl	-80(%ebp), %edx
	movl	-80(%ebp), %eax
	movl	%eax, 24(%edx)
.L748:
	.loc 1 1672 0
	movl	-80(%ebp), %eax
	movzbl	45(%eax), %eax
	testb	%al, %al
	je	.L749
	cmpl	$0, 12(%ebp)
	je	.L749
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L749
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	je	.L749
.LBB25:
	.loc 1 1675 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %edx
	movl	cached_regno@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	jne	.L754
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L756
.L754:
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	get_cse_reg_info
	movl	%eax, -108(%ebp)
	jmp	.L757
.L756:
	movl	cached_cse_reg_info@GOTOFF(%ebx), %ecx
	movl	%ecx, -108(%ebp)
.L757:
	movl	-108(%ebp), %edx
	movl	12(%edx), %eax
	movl	%eax, -52(%ebp)
	.loc 1 1676 0
	movl	-52(%ebp), %eax
	sall	$5, %eax
	movl	%eax, %edx
	movl	qty_table@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -48(%ebp)
	.loc 1 1678 0
	movl	-48(%ebp), %eax
	movl	24(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	gen_lowpart_if_possible@PLT
	movl	%eax, %edx
	movl	-48(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 1679 0
	movl	this_insn@GOTOFF(%ebx), %edx
	movl	-48(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 1672 0
	jmp	.L758
.L749:
.LBE25:
	.loc 1 1682 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L759
	cmpl	$0, 12(%ebp)
	je	.L759
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	cached_regno@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	jne	.L762
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L764
.L762:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	get_cse_reg_info
	movl	%eax, -104(%ebp)
	jmp	.L765
.L764:
	movl	cached_cse_reg_info@GOTOFF(%ebx), %ecx
	movl	%ecx, -104(%ebp)
.L765:
	movl	-104(%ebp), %edx
	movl	12(%edx), %eax
	sall	$5, %eax
	movl	%eax, %edx
	movl	qty_table@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L759
	movl	-80(%ebp), %eax
	movzbl	45(%eax), %eax
	testb	%al, %al
	jne	.L759
.LBB26:
	.loc 1 1689 0
	movl	12(%ebp), %eax
	movl	%eax, -44(%ebp)
	jmp	.L768
.L769:
	.loc 1 1691 0
	movl	-44(%ebp), %eax
	movzbl	45(%eax), %eax
	testb	%al, %al
	je	.L770
	movl	-44(%ebp), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	je	.L770
.LBB27:
	.loc 1 1693 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	cached_regno@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	jne	.L773
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L775
.L773:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	get_cse_reg_info
	movl	%eax, -100(%ebp)
	jmp	.L776
.L775:
	movl	cached_cse_reg_info@GOTOFF(%ebx), %ecx
	movl	%ecx, -100(%ebp)
.L776:
	movl	-100(%ebp), %edx
	movl	12(%edx), %eax
	movl	%eax, -40(%ebp)
	.loc 1 1694 0
	movl	-40(%ebp), %eax
	sall	$5, %eax
	movl	%eax, %edx
	movl	qty_table@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -36(%ebp)
	.loc 1 1696 0
	movl	-44(%ebp), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	gen_lowpart_if_possible@PLT
	movl	%eax, %edx
	movl	-36(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 1698 0
	movl	this_insn@GOTOFF(%ebx), %edx
	movl	-36(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 1699 0
	jmp	.L758
.L770:
.LBE27:
	.loc 1 1689 0
	movl	-44(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -44(%ebp)
.L768:
	cmpl	$0, -44(%ebp)
	jne	.L769
	.loc 1 1682 0
	jmp	.L758
.L759:
.LBE26:
	.loc 1 1704 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L758
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	cached_regno@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	jne	.L779
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L781
.L779:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	get_cse_reg_info
	movl	%eax, -96(%ebp)
	jmp	.L782
.L781:
	movl	cached_cse_reg_info@GOTOFF(%ebx), %ecx
	movl	%ecx, -96(%ebp)
.L782:
	movl	-96(%ebp), %edx
	movl	12(%edx), %eax
	sall	$5, %eax
	movl	%eax, %edx
	movl	qty_table@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L758
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -92(%ebp)
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	cached_regno@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	jne	.L784
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L786
.L784:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	get_cse_reg_info
	movl	%eax, -88(%ebp)
	jmp	.L787
.L786:
	movl	cached_cse_reg_info@GOTOFF(%ebx), %ecx
	movl	%ecx, -88(%ebp)
.L787:
	movl	-88(%ebp), %edx
	movl	12(%edx), %eax
	sall	$5, %eax
	movl	%eax, %edx
	movl	qty_table@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	24(%eax), %eax
	cmpl	%eax, -92(%ebp)
	jne	.L758
	.loc 1 1707 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	cached_regno@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	jne	.L789
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L791
.L789:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	get_cse_reg_info
	movl	%eax, -84(%ebp)
	jmp	.L792
.L791:
	movl	cached_cse_reg_info@GOTOFF(%ebx), %ecx
	movl	%ecx, -84(%ebp)
.L792:
	movl	-84(%ebp), %edx
	movl	12(%edx), %eax
	sall	$5, %eax
	movl	%eax, %edx
	movl	qty_table@GOTOFF(%ebx), %eax
	addl	%eax, %edx
	movl	this_insn@GOTOFF(%ebx), %eax
	movl	%eax, 4(%edx)
.L758:
	.loc 1 1712 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	jne	.L793
.LBB28:
	.loc 1 1714 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	get_related_value@PLT
	movl	%eax, -32(%ebp)
	.loc 1 1718 0
	cmpl	$0, -32(%ebp)
	je	.L793
	.loc 1 1721 0
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	safe_hash
	andl	$31, %eax
	movl	%eax, -28(%ebp)
	.loc 1 1722 0
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	lookup
	movl	%eax, -24(%ebp)
	.loc 1 1723 0
	cmpl	$0, -24(%ebp)
	jne	.L796
	.loc 1 1724 0
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	insert
	movl	%eax, -24(%ebp)
.L796:
	.loc 1 1726 0
	movl	-24(%ebp), %eax
	movl	28(%eax), %eax
	testl	%eax, %eax
	jne	.L798
	.loc 1 1727 0
	movl	-24(%ebp), %edx
	movl	-24(%ebp), %eax
	movl	%eax, 28(%edx)
.L798:
	.loc 1 1729 0
	movl	-24(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 1730 0
	jmp	.L800
.L801:
	.loc 1 1731 0
	movl	-20(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, -20(%ebp)
.L800:
	.loc 1 1730 0
	movl	-20(%ebp), %eax
	movl	28(%eax), %eax
	cmpl	-24(%ebp), %eax
	jne	.L801
	.loc 1 1734 0
	movl	-20(%ebp), %eax
	movl	28(%eax), %edx
	movl	-80(%ebp), %eax
	movl	%edx, 28(%eax)
	.loc 1 1735 0
	movl	-20(%ebp), %edx
	movl	-80(%ebp), %eax
	movl	%eax, 28(%edx)
.L793:
.LBE28:
	.loc 1 1739 0
	movl	-80(%ebp), %eax
	.loc 1 1740 0
	addl	$140, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE33:
	.size	insert, .-insert
	.type	merge_equiv_classes, @function
merge_equiv_classes:
.LFB34:
	.loc 1 1754 0
	pushl	%ebp
.LCFI76:
	movl	%esp, %ebp
.LCFI77:
	pushl	%ebx
.LCFI78:
	subl	$68, %esp
.LCFI79:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1758 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, 8(%ebp)
	.loc 1 1759 0
	movl	12(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, 12(%ebp)
	.loc 1 1762 0
	movl	8(%ebp), %eax
	cmpl	12(%ebp), %eax
	je	.L833
	.loc 1 1765 0
	movl	12(%ebp), %eax
	movl	%eax, -28(%ebp)
	jmp	.L808
.L809:
.LBB29:
	.loc 1 1768 0
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1769 0
	movl	-28(%ebp), %eax
	movl	40(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 1771 0
	movl	-28(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 1776 0
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	je	.L810
	movl	$0, 12(%esp)
	movl	$1, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	exp_equiv_p
	testl	%eax, %eax
	je	.L812
.L810:
	.loc 1 1778 0
	movl	$0, hash_arg_in_memory@GOTOFF(%ebx)
	.loc 1 1779 0
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L813
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	jbe	.L813
	movl	-12(%ebp), %eax
	movl	4(%eax), %edx
	movl	cached_regno@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	jne	.L816
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L818
.L816:
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	get_cse_reg_info
	movl	%eax, -48(%ebp)
	jmp	.L819
.L818:
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	movl	%eax, -48(%ebp)
.L819:
	movl	-48(%ebp), %edx
	movl	12(%edx), %eax
	addl	$9088, %eax
	movl	%eax, %edx
	andl	$31, %edx
	movl	%edx, -52(%ebp)
	jmp	.L820
.L813:
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	canon_hash
	movl	%eax, %edx
	andl	$31, %edx
	movl	%edx, -52(%ebp)
.L820:
	movl	-52(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 1781 0
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L821
	.loc 1 1782 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	delete_reg_equiv
.L821:
	.loc 1 1784 0
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	remove_from_table
	.loc 1 1786 0
	movl	$0, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	insert_regs
	testl	%eax, %eax
	je	.L823
	.loc 1 1788 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	rehash_using_reg
	.loc 1 1789 0
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L825
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	jbe	.L825
	movl	-12(%ebp), %eax
	movl	4(%eax), %edx
	movl	cached_regno@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	jne	.L828
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L830
.L828:
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	get_cse_reg_info
	movl	%eax, -40(%ebp)
	jmp	.L831
.L830:
	movl	cached_cse_reg_info@GOTOFF(%ebx), %edx
	movl	%edx, -40(%ebp)
.L831:
	movl	-40(%ebp), %edx
	movl	12(%edx), %eax
	addl	$9088, %eax
	movl	%eax, %edx
	andl	$31, %edx
	movl	%edx, -44(%ebp)
	jmp	.L832
.L825:
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	canon_hash
	movl	%eax, %edx
	andl	$31, %edx
	movl	%edx, -44(%ebp)
.L832:
	movl	-44(%ebp), %eax
	movl	%eax, -16(%ebp)
.L823:
	.loc 1 1791 0
	movl	-8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	insert
	movl	%eax, -20(%ebp)
	.loc 1 1792 0
	movl	hash_arg_in_memory@GOTOFF(%ebx), %eax
	movl	%eax, %edx
	movl	-20(%ebp), %eax
	movb	%dl, 44(%eax)
.L812:
.LBE29:
	.loc 1 1765 0
	movl	-24(%ebp), %eax
	movl	%eax, -28(%ebp)
.L808:
	cmpl	$0, -28(%ebp)
	jne	.L809
.L833:
	.loc 1 1795 0
	addl	$68, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE34:
	.size	merge_equiv_classes, .-merge_equiv_classes
	.type	flush_hash_table, @function
flush_hash_table:
.LFB35:
	.loc 1 1801 0
	pushl	%ebp
.LCFI80:
	movl	%esp, %ebp
.LCFI81:
	pushl	%ebx
.LCFI82:
	subl	$36, %esp
.LCFI83:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1805 0
	movl	$0, -12(%ebp)
	jmp	.L835
.L836:
	.loc 1 1806 0
	movl	-12(%ebp), %eax
	movl	table@GOTOFF(%ebx,%eax,4), %eax
	movl	%eax, -8(%ebp)
	jmp	.L837
.L838:
	.loc 1 1810 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L839
	.loc 1 1811 0
	movl	-8(%ebp), %eax
	movl	40(%eax), %edx
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	invalidate
	jmp	.L841
.L839:
	.loc 1 1813 0
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	remove_from_table
.L841:
	.loc 1 1806 0
	movl	-12(%ebp), %eax
	movl	table@GOTOFF(%ebx,%eax,4), %eax
	movl	%eax, -8(%ebp)
.L837:
	cmpl	$0, -8(%ebp)
	jne	.L838
	.loc 1 1805 0
	addl	$1, -12(%ebp)
.L835:
	cmpl	$31, -12(%ebp)
	jle	.L836
	.loc 1 1815 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE35:
	.size	flush_hash_table, .-flush_hash_table
	.type	check_dependence, @function
check_dependence:
.LFB36:
	.loc 1 1828 0
	pushl	%ebp
.LCFI84:
	movl	%esp, %ebp
.LCFI85:
	pushl	%esi
.LCFI86:
	pushl	%ebx
.LCFI87:
	subl	$48, %esp
.LCFI88:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1829 0
	movl	12(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1830 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L846
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L846
	.loc 1 1831 0
	movl	8(%ebp), %eax
	movl	(%eax), %ecx
	movl	-12(%ebp), %eax
	movl	(%eax), %esi
	movl	-12(%ebp), %eax
	movl	4(%eax), %edx
	leal	cse_rtx_varies_p@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	%esi, 4(%esp)
	movl	%edx, (%esp)
	call	true_dependence@PLT
	movl	%eax, -28(%ebp)
	jmp	.L849
.L846:
	.loc 1 1833 0
	movl	$0, -28(%ebp)
.L849:
	movl	-28(%ebp), %eax
	.loc 1 1834 0
	addl	$48, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE36:
	.size	check_dependence, .-check_dependence
	.section	.rodata
	.type	__FUNCTION__.13561, @object
	.size	__FUNCTION__.13561, 11
__FUNCTION__.13561:
	.string	"invalidate"
	.text
	.type	invalidate, @function
invalidate:
.LFB37:
	.loc 1 1852 0
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
	subl	$140, %esp
.LCFI94:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1856 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -136(%ebp)
	cmpl	$71, -136(%ebp)
	je	.L855
	cmpl	$71, -136(%ebp)
	ja	.L858
	cmpl	$3, -136(%ebp)
	je	.L853
	cmpl	$49, -136(%ebp)
	je	.L854
	jmp	.L852
.L858:
	cmpl	$73, -136(%ebp)
	je	.L856
	cmpl	$76, -136(%ebp)
	je	.L857
	jmp	.L852
.L855:
.LBB30:
	.loc 1 1864 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -56(%ebp)
	.loc 1 1865 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L859
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	jbe	.L859
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	cached_regno@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	jne	.L862
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L864
.L862:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	get_cse_reg_info
	movl	%eax, -128(%ebp)
	jmp	.L865
.L864:
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	movl	%eax, -128(%ebp)
.L865:
	movl	-128(%ebp), %edx
	movl	12(%edx), %eax
	addl	$9088, %eax
	movl	%eax, %ecx
	andl	$31, %ecx
	movl	%ecx, -132(%ebp)
	jmp	.L866
.L859:
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	canon_hash
	movl	%eax, %edx
	andl	$31, %edx
	movl	%edx, -132(%ebp)
.L866:
	movl	-132(%ebp), %ecx
	movl	%ecx, -52(%ebp)
	.loc 1 1876 0
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_reg_equiv
	.loc 1 1877 0
	movl	cached_regno@GOTOFF(%ebx), %eax
	cmpl	%eax, -56(%ebp)
	jne	.L867
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L869
.L867:
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	get_cse_reg_info
	movl	%eax, -124(%ebp)
	jmp	.L870
.L869:
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	movl	%eax, -124(%ebp)
.L870:
	movl	-124(%ebp), %edx
	movl	16(%edx), %eax
	addl	$1, %eax
	movl	-124(%ebp), %ecx
	movl	%eax, 16(%ecx)
	.loc 1 1878 0
	movl	cached_regno@GOTOFF(%ebx), %eax
	cmpl	%eax, -56(%ebp)
	jne	.L871
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L873
.L871:
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	get_cse_reg_info
	movl	%eax, -120(%ebp)
	jmp	.L874
.L873:
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	movl	%eax, -120(%ebp)
.L874:
	movl	-120(%ebp), %edx
	movl	$-1, 24(%edx)
	.loc 1 1880 0
	cmpl	$175, -56(%ebp)
	jbe	.L875
	.loc 1 1886 0
	jmp	.L877
.L878:
.LBB31:
	.loc 1 1887 0
	movl	-52(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	remove_from_table
.L877:
	.loc 1 1886 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, 8(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	lookup_for_remove
	movl	%eax, -48(%ebp)
	cmpl	$0, -48(%ebp)
	jne	.L878
	jmp	.L920
.L875:
.LBE31:
.LBB32:
	.loc 1 1892 0
	movl	-56(%ebp), %eax
	shrl	$6, %eax
	movl	hard_regs_in_table@GOTOFF(%ebx,%eax,8), %esi
	movl	4+hard_regs_in_table@GOTOFF(%ebx,%eax,8), %edi
	movl	-56(%ebp), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	%esi, %eax
	movl	%edi, %edx
	shrdl	%edx, %eax
	shrl	%cl, %edx
	testb	$32, %cl
	je	.L923
	movl	%edx, %eax
	xorl	%edx, %edx
.L923:
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, %ecx
	andl	$1, %ecx
	movl	%ecx, -72(%ebp)
	movl	%edx, %eax
	andl	$0, %eax
	movl	%eax, -68(%ebp)
	.loc 1 1894 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	-56(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	mips_hard_regno_nregs@PLT
	addl	-56(%ebp), %eax
	movl	%eax, -44(%ebp)
	.loc 1 1898 0
	movl	-56(%ebp), %eax
	shrl	$6, %eax
	movl	%eax, -116(%ebp)
	movl	hard_regs_in_table@GOTOFF(%ebx,%eax,8), %edx
	movl	4+hard_regs_in_table@GOTOFF(%ebx,%eax,8), %ecx
	movl	%edx, -112(%ebp)
	movl	%ecx, -108(%ebp)
	movl	-56(%ebp), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	shldl	%eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	je	.L924
	movl	%eax, %edx
	xorl	%eax, %eax
.L924:
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-112(%ebp), %eax
	andl	%esi, %eax
	movl	-108(%ebp), %edx
	andl	%edi, %edx
	movl	-116(%ebp), %ecx
	movl	%eax, hard_regs_in_table@GOTOFF(%ebx,%ecx,8)
	movl	%edx, 4+hard_regs_in_table@GOTOFF(%ebx,%ecx,8)
	.loc 1 1900 0
	movl	-56(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -32(%ebp)
	jmp	.L881
.L882:
	.loc 1 1902 0
	movl	-32(%ebp), %eax
	shrl	$6, %eax
	movl	hard_regs_in_table@GOTOFF(%ebx,%eax,8), %esi
	movl	4+hard_regs_in_table@GOTOFF(%ebx,%eax,8), %edi
	movl	-32(%ebp), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	%esi, %eax
	movl	%edi, %edx
	shrdl	%edx, %eax
	shrl	%cl, %edx
	testb	$32, %cl
	je	.L921
	movl	%edx, %eax
	xorl	%edx, %edx
.L921:
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, %esi
	andl	$1, %esi
	movl	%edx, %edi
	andl	$0, %edi
	movl	-72(%ebp), %eax
	orl	%esi, %eax
	movl	-68(%ebp), %edx
	orl	%edi, %edx
	movl	%eax, -72(%ebp)
	movl	%edx, -68(%ebp)
	.loc 1 1903 0
	movl	-32(%ebp), %eax
	shrl	$6, %eax
	movl	%eax, -100(%ebp)
	movl	hard_regs_in_table@GOTOFF(%ebx,%eax,8), %edx
	movl	4+hard_regs_in_table@GOTOFF(%ebx,%eax,8), %ecx
	movl	%edx, -96(%ebp)
	movl	%ecx, -92(%ebp)
	movl	-32(%ebp), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	shldl	%eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	je	.L922
	movl	%eax, %edx
	xorl	%eax, %eax
.L922:
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-96(%ebp), %eax
	andl	%esi, %eax
	movl	-92(%ebp), %edx
	andl	%edi, %edx
	movl	-100(%ebp), %ecx
	movl	%eax, hard_regs_in_table@GOTOFF(%ebx,%ecx,8)
	movl	%edx, 4+hard_regs_in_table@GOTOFF(%ebx,%ecx,8)
	.loc 1 1904 0
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_reg_equiv
	.loc 1 1905 0
	movl	cached_regno@GOTOFF(%ebx), %eax
	cmpl	%eax, -32(%ebp)
	jne	.L883
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L885
.L883:
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	get_cse_reg_info
	movl	%eax, -88(%ebp)
	jmp	.L886
.L885:
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	movl	%eax, -88(%ebp)
.L886:
	movl	-88(%ebp), %edx
	movl	16(%edx), %eax
	addl	$1, %eax
	movl	-88(%ebp), %ecx
	movl	%eax, 16(%ecx)
	.loc 1 1906 0
	movl	cached_regno@GOTOFF(%ebx), %eax
	cmpl	%eax, -32(%ebp)
	jne	.L887
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L889
.L887:
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	get_cse_reg_info
	movl	%eax, -84(%ebp)
	jmp	.L890
.L889:
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	movl	%eax, -84(%ebp)
.L890:
	movl	-84(%ebp), %edx
	movl	$-1, 24(%edx)
	.loc 1 1900 0
	addl	$1, -32(%ebp)
.L881:
	movl	-32(%ebp), %eax
	cmpl	-44(%ebp), %eax
	jb	.L882
	.loc 1 1909 0
	movl	-72(%ebp), %eax
	orl	-68(%ebp), %eax
	testl	%eax, %eax
	je	.L920
	.loc 1 1910 0
	movl	$0, -52(%ebp)
	jmp	.L893
.L894:
	.loc 1 1911 0
	movl	-52(%ebp), %eax
	movl	table@GOTOFF(%ebx,%eax,4), %eax
	movl	%eax, -28(%ebp)
	jmp	.L895
.L896:
	.loc 1 1913 0
	movl	-28(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 1915 0
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L897
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	ja	.L897
	.loc 1 1919 0
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 1920 0
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	-40(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	mips_hard_regno_nregs@PLT
	addl	-40(%ebp), %eax
	movl	%eax, -36(%ebp)
	.loc 1 1922 0
	movl	-36(%ebp), %eax
	cmpl	-56(%ebp), %eax
	jbe	.L897
	movl	-40(%ebp), %eax
	cmpl	-44(%ebp), %eax
	jae	.L897
	.loc 1 1923 0
	movl	-52(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	remove_from_table
.L897:
	.loc 1 1911 0
	movl	-24(%ebp), %eax
	movl	%eax, -28(%ebp)
.L895:
	cmpl	$0, -28(%ebp)
	jne	.L896
	.loc 1 1910 0
	addl	$1, -52(%ebp)
.L893:
	cmpl	$31, -52(%ebp)
	jbe	.L894
	.loc 1 1927 0
	jmp	.L920
.L856:
.LBE32:
.LBE30:
	.loc 1 1930 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	invalidate
	.loc 1 1931 0
	jmp	.L920
.L854:
	.loc 1 1934 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	subl	$1, %eax
	movl	%eax, -64(%ebp)
	jmp	.L904
.L905:
	.loc 1 1935 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	-64(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	invalidate
	.loc 1 1934 0
	subl	$1, -64(%ebp)
.L904:
	cmpl	$0, -64(%ebp)
	jns	.L905
	.loc 1 1936 0
	jmp	.L920
.L853:
	.loc 1 1941 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	invalidate
	.loc 1 1942 0
	jmp	.L920
.L857:
	.loc 1 1947 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	canon_rtx@PLT
	movl	%eax, 8(%ebp)
	.loc 1 1951 0
	cmpl	$0, 12(%ebp)
	jne	.L907
	.loc 1 1952 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, 12(%ebp)
.L907:
	.loc 1 1954 0
	movl	$0, -64(%ebp)
	jmp	.L909
.L910:
.LBB33:
	.loc 1 1958 0
	movl	-64(%ebp), %eax
	movl	table@GOTOFF(%ebx,%eax,4), %eax
	movl	%eax, -60(%ebp)
	jmp	.L911
.L912:
	.loc 1 1960 0
	movl	-60(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 1961 0
	movl	-60(%ebp), %eax
	movzbl	44(%eax), %eax
	testb	%al, %al
	je	.L913
.LBB34:
	.loc 1 1969 0
	movl	-60(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	jne	.L915
	.loc 1 1970 0
	movl	-60(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	canon_rtx@PLT
	movl	%eax, %edx
	movl	-60(%ebp), %eax
	movl	%edx, 4(%eax)
.L915:
	.loc 1 1971 0
	movl	8(%ebp), %eax
	movl	%eax, -76(%ebp)
	.loc 1 1972 0
	movl	12(%ebp), %eax
	movl	%eax, -80(%ebp)
	.loc 1 1973 0
	movl	-60(%ebp), %edx
	addl	$4, %edx
	leal	-80(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	check_dependence@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	for_each_rtx@PLT
	testl	%eax, %eax
	je	.L913
	.loc 1 1974 0
	movl	-64(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	remove_from_table
.L913:
.LBE34:
	.loc 1 1958 0
	movl	-20(%ebp), %eax
	movl	%eax, -60(%ebp)
.L911:
	cmpl	$0, -60(%ebp)
	jne	.L912
.LBE33:
	.loc 1 1954 0
	addl	$1, -64(%ebp)
.L909:
	cmpl	$31, -64(%ebp)
	jle	.L910
	.loc 1 1978 0
	jmp	.L920
.L852:
	.loc 1 1981 0
	leal	__FUNCTION__.13561@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1981, 4(%esp)
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L920:
	.loc 1 1983 0
	addl	$140, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE37:
	.size	invalidate, .-invalidate
	.type	remove_invalid_refs, @function
remove_invalid_refs:
.LFB38:
	.loc 1 1993 0
	pushl	%ebp
.LCFI95:
	movl	%esp, %ebp
.LCFI96:
	pushl	%ebx
.LCFI97:
	subl	$36, %esp
.LCFI98:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1997 0
	movl	$0, -16(%ebp)
	jmp	.L926
.L927:
	.loc 1 1998 0
	movl	-16(%ebp), %eax
	movl	table@GOTOFF(%ebx,%eax,4), %eax
	movl	%eax, -12(%ebp)
	jmp	.L928
.L929:
	.loc 1 2000 0
	movl	-12(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 2001 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	je	.L930
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	8(%ebp), %edx
	addl	$1, %edx
	movl	$0, 12(%esp)
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	refers_to_regno_p@PLT
	testl	%eax, %eax
	je	.L930
	.loc 1 2003 0
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	remove_from_table
.L930:
	.loc 1 1998 0
	movl	-8(%ebp), %eax
	movl	%eax, -12(%ebp)
.L928:
	cmpl	$0, -12(%ebp)
	jne	.L929
	.loc 1 1997 0
	addl	$1, -16(%ebp)
.L926:
	cmpl	$31, -16(%ebp)
	jbe	.L927
	.loc 1 2005 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE38:
	.size	remove_invalid_refs, .-remove_invalid_refs
	.type	remove_invalid_subreg_refs, @function
remove_invalid_subreg_refs:
.LFB39:
	.loc 1 2014 0
	pushl	%ebp
.LCFI99:
	movl	%esp, %ebp
.LCFI100:
	pushl	%ebx
.LCFI101:
	subl	$52, %esp
.LCFI102:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2017 0
	movl	16(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	addl	12(%ebp), %eax
	subl	$1, %eax
	movl	%eax, -12(%ebp)
	.loc 1 2019 0
	movl	$0, -24(%ebp)
	jmp	.L937
.L938:
	.loc 1 2020 0
	movl	-24(%ebp), %eax
	movl	table@GOTOFF(%ebx,%eax,4), %eax
	movl	%eax, -20(%ebp)
	jmp	.L939
.L940:
.LBB35:
	.loc 1 2022 0
	movl	-20(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 2023 0
	movl	-20(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 2025 0
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	je	.L941
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L943
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L943
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L943
	movl	-8(%ebp), %eax
	movl	12(%eax), %ecx
	movl	-8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	leal	(%ecx,%eax), %eax
	subl	$1, %eax
	cmpl	12(%ebp), %eax
	jb	.L941
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	-12(%ebp), %eax
	ja	.L941
.L943:
	movl	-20(%ebp), %eax
	movl	(%eax), %eax
	movl	8(%ebp), %edx
	addl	$1, %edx
	movl	$0, 12(%esp)
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	refers_to_regno_p@PLT
	testl	%eax, %eax
	je	.L941
	.loc 1 2033 0
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	remove_from_table
.L941:
.LBE35:
	.loc 1 2020 0
	movl	-16(%ebp), %eax
	movl	%eax, -20(%ebp)
.L939:
	cmpl	$0, -20(%ebp)
	jne	.L940
	.loc 1 2019 0
	addl	$1, -24(%ebp)
.L937:
	cmpl	$31, -24(%ebp)
	jbe	.L938
	.loc 1 2035 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE39:
	.size	remove_invalid_subreg_refs, .-remove_invalid_subreg_refs
	.type	rehash_using_reg, @function
rehash_using_reg:
.LFB40:
	.loc 1 2045 0
	pushl	%ebp
.LCFI103:
	movl	%esp, %ebp
.LCFI104:
	pushl	%ebx
.LCFI105:
	subl	$52, %esp
.LCFI106:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2050 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L953
	.loc 1 2051 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 8(%ebp)
.L953:
	.loc 1 2056 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L989
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	cached_regno@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	jne	.L957
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L959
.L957:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	get_cse_reg_info
	movl	%eax, -36(%ebp)
	jmp	.L960
.L959:
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	movl	%eax, -36(%ebp)
.L960:
	movl	-36(%ebp), %edx
	movl	20(%edx), %eax
	testl	%eax, %eax
	js	.L989
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	cached_regno@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	jne	.L962
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L964
.L962:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	get_cse_reg_info
	movl	%eax, -32(%ebp)
	jmp	.L965
.L964:
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	movl	%eax, -32(%ebp)
.L965:
	movl	-32(%ebp), %edx
	movl	20(%edx), %edx
	movl	%edx, -28(%ebp)
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	cached_regno@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	jne	.L966
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L968
.L966:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	get_cse_reg_info
	movl	%eax, -24(%ebp)
	jmp	.L969
.L968:
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	movl	%eax, -24(%ebp)
.L969:
	movl	-24(%ebp), %edx
	movl	16(%edx), %eax
	cmpl	%eax, -28(%ebp)
	je	.L970
	.loc 1 2059 0
	jmp	.L989
.L970:
	.loc 1 2065 0
	movl	$0, -20(%ebp)
	jmp	.L972
.L973:
	.loc 1 2066 0
	movl	-20(%ebp), %eax
	movl	table@GOTOFF(%ebx,%eax,4), %eax
	movl	%eax, -16(%ebp)
	jmp	.L974
.L975:
	.loc 1 2068 0
	movl	-16(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 2069 0
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	je	.L976
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	reg_mentioned_p@PLT
	testl	%eax, %eax
	je	.L976
	movl	-16(%ebp), %eax
	movl	(%eax), %edx
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	$0, 12(%esp)
	movl	$1, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	exp_equiv_p
	testl	%eax, %eax
	je	.L976
	movl	-16(%ebp), %eax
	movl	40(%eax), %edx
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	safe_hash
	andl	$31, %eax
	movl	%eax, -8(%ebp)
	movl	-8(%ebp), %eax
	cmpl	-20(%ebp), %eax
	je	.L976
	.loc 1 2073 0
	movl	-16(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	je	.L981
	.loc 1 2074 0
	movl	-16(%ebp), %eax
	movl	8(%eax), %edx
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, 12(%edx)
.L981:
	.loc 1 2076 0
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	.L983
	.loc 1 2077 0
	movl	-16(%ebp), %eax
	movl	12(%eax), %edx
	movl	-16(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, 8(%edx)
	jmp	.L985
.L983:
	.loc 1 2079 0
	movl	-20(%ebp), %eax
	movl	-16(%ebp), %edx
	movl	8(%edx), %edx
	movl	%edx, table@GOTOFF(%ebx,%eax,4)
.L985:
	.loc 1 2081 0
	movl	-8(%ebp), %eax
	movl	table@GOTOFF(%ebx,%eax,4), %edx
	movl	-16(%ebp), %eax
	movl	%edx, 8(%eax)
	.loc 1 2082 0
	movl	-16(%ebp), %eax
	movl	$0, 12(%eax)
	.loc 1 2083 0
	movl	-8(%ebp), %eax
	movl	table@GOTOFF(%ebx,%eax,4), %eax
	testl	%eax, %eax
	je	.L986
	.loc 1 2084 0
	movl	-8(%ebp), %eax
	movl	table@GOTOFF(%ebx,%eax,4), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 12(%edx)
.L986:
	.loc 1 2085 0
	movl	-8(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	%eax, table@GOTOFF(%ebx,%edx,4)
.L976:
	.loc 1 2066 0
	movl	-12(%ebp), %eax
	movl	%eax, -16(%ebp)
.L974:
	cmpl	$0, -16(%ebp)
	jne	.L975
	.loc 1 2065 0
	addl	$1, -20(%ebp)
.L972:
	cmpl	$31, -20(%ebp)
	jbe	.L973
.L989:
	.loc 1 2088 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE40:
	.size	rehash_using_reg, .-rehash_using_reg
	.type	invalidate_for_call, @function
invalidate_for_call:
.LFB41:
	.loc 1 2095 0
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
	subl	$60, %esp
.LCFI112:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2100 0
	movl	$0, -16(%ebp)
	.loc 1 2107 0
	movl	$0, -40(%ebp)
	jmp	.L991
.L992:
	.loc 1 2108 0
	movl	-40(%ebp), %eax
	movl	%eax, %edx
	shrl	$6, %edx
	movl	regs_invalidated_by_call@GOT(%ebx), %eax
	movl	(%eax,%edx,8), %esi
	movl	4(%eax,%edx,8), %edi
	movl	-40(%ebp), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	%esi, %eax
	movl	%edi, %edx
	shrdl	%edx, %eax
	shrl	%cl, %edx
	testb	$32, %cl
	je	.L1027
	movl	%edx, %eax
	xorl	%edx, %edx
.L1027:
	andl	$1, %eax
	testl	%eax, %eax
	je	.L993
	.loc 1 2110 0
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_reg_equiv
	.loc 1 2111 0
	movl	cached_regno@GOTOFF(%ebx), %eax
	cmpl	%eax, -40(%ebp)
	jne	.L995
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L997
.L995:
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	get_cse_reg_info
	movl	%eax, -56(%ebp)
	jmp	.L998
.L997:
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	movl	%eax, -56(%ebp)
.L998:
	movl	-56(%ebp), %edx
	movl	16(%edx), %eax
	testl	%eax, %eax
	js	.L999
	.loc 1 2113 0
	movl	cached_regno@GOTOFF(%ebx), %eax
	cmpl	%eax, -40(%ebp)
	jne	.L1001
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L1003
.L1001:
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	get_cse_reg_info
	movl	%eax, -52(%ebp)
	jmp	.L1004
.L1003:
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	movl	%eax, -52(%ebp)
.L1004:
	movl	-52(%ebp), %edx
	movl	16(%edx), %eax
	addl	$1, %eax
	movl	-52(%ebp), %edx
	movl	%eax, 16(%edx)
	.loc 1 2114 0
	movl	cached_regno@GOTOFF(%ebx), %eax
	cmpl	%eax, -40(%ebp)
	jne	.L1005
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L1007
.L1005:
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	get_cse_reg_info
	movl	%eax, -48(%ebp)
	jmp	.L1008
.L1007:
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	movl	%eax, -48(%ebp)
.L1008:
	movl	-48(%ebp), %edx
	movl	$-1, 24(%edx)
.L999:
	.loc 1 2117 0
	movl	-40(%ebp), %eax
	shrl	$6, %eax
	movl	hard_regs_in_table@GOTOFF(%ebx,%eax,8), %esi
	movl	4+hard_regs_in_table@GOTOFF(%ebx,%eax,8), %edi
	movl	-40(%ebp), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	%esi, %eax
	movl	%edi, %edx
	shrdl	%edx, %eax
	shrl	%cl, %edx
	testb	$32, %cl
	je	.L1026
	movl	%edx, %eax
	xorl	%edx, %edx
.L1026:
	andl	$1, %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	orl	%eax, -16(%ebp)
.L993:
	.loc 1 2107 0
	addl	$1, -40(%ebp)
.L991:
	cmpl	$175, -40(%ebp)
	jbe	.L992
	.loc 1 2124 0
	cmpl	$0, -16(%ebp)
	je	.L1024
	.loc 1 2125 0
	movl	$0, -28(%ebp)
	jmp	.L1012
.L1013:
	.loc 1 2126 0
	movl	-28(%ebp), %eax
	movl	table@GOTOFF(%ebx,%eax,4), %eax
	movl	%eax, -24(%ebp)
	jmp	.L1014
.L1015:
	.loc 1 2128 0
	movl	-24(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 2130 0
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L1016
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	ja	.L1016
	.loc 1 2134 0
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 2135 0
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	-40(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	mips_hard_regno_nregs@PLT
	addl	-40(%ebp), %eax
	movl	%eax, -36(%ebp)
	.loc 1 2137 0
	movl	-40(%ebp), %eax
	movl	%eax, -32(%ebp)
	jmp	.L1019
.L1020:
	.loc 1 2138 0
	movl	-32(%ebp), %eax
	movl	%eax, %edx
	shrl	$6, %edx
	movl	regs_invalidated_by_call@GOT(%ebx), %eax
	movl	(%eax,%edx,8), %esi
	movl	4(%eax,%edx,8), %edi
	movl	-32(%ebp), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	%esi, %eax
	movl	%edi, %edx
	shrdl	%edx, %eax
	shrl	%cl, %edx
	testb	$32, %cl
	je	.L1025
	movl	%edx, %eax
	xorl	%edx, %edx
.L1025:
	andl	$1, %eax
	testl	%eax, %eax
	je	.L1021
	.loc 1 2140 0
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	remove_from_table
	.loc 1 2141 0
	jmp	.L1016
.L1021:
	.loc 1 2137 0
	addl	$1, -32(%ebp)
.L1019:
	movl	-32(%ebp), %eax
	cmpl	-36(%ebp), %eax
	jb	.L1020
.L1016:
	.loc 1 2126 0
	movl	-20(%ebp), %eax
	movl	%eax, -24(%ebp)
.L1014:
	cmpl	$0, -24(%ebp)
	jne	.L1015
	.loc 1 2125 0
	addl	$1, -28(%ebp)
.L1012:
	cmpl	$31, -28(%ebp)
	jbe	.L1013
.L1024:
	.loc 1 2144 0
	addl	$60, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE41:
	.size	invalidate_for_call, .-invalidate_for_call
	.type	use_related_value, @function
use_related_value:
.LFB42:
	.loc 1 2156 0
	pushl	%ebp
.LCFI113:
	movl	%esp, %ebp
.LCFI114:
	pushl	%edi
.LCFI115:
	pushl	%esi
.LCFI116:
	pushl	%ebx
.LCFI117:
	subl	$76, %esp
.LCFI118:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2157 0
	movl	$0, -32(%ebp)
	.loc 1 2165 0
	cmpl	$0, 12(%ebp)
	je	.L1029
	movl	12(%ebp), %eax
	movl	28(%eax), %eax
	testl	%eax, %eax
	je	.L1029
	.loc 1 2166 0
	movl	12(%ebp), %eax
	movl	%eax, -32(%ebp)
	.loc 1 2165 0
	jmp	.L1032
.L1029:
	.loc 1 2167 0
	cmpl	$0, 12(%ebp)
	jne	.L1032
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	jne	.L1032
.LBB36:
	.loc 1 2169 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	get_related_value@PLT
	movl	%eax, -20(%ebp)
	.loc 1 2170 0
	cmpl	$0, -20(%ebp)
	je	.L1032
	.loc 1 2171 0
	movl	-20(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %esi
	movl	-20(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	safe_hash
	andl	$31, %eax
	movl	%esi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	lookup
	movl	%eax, -32(%ebp)
.L1032:
.LBE36:
	.loc 1 2176 0
	cmpl	$0, -32(%ebp)
	jne	.L1036
	.loc 1 2177 0
	movl	$0, -52(%ebp)
	jmp	.L1038
.L1036:
	.loc 1 2182 0
	movl	-32(%ebp), %eax
	movl	%eax, -28(%ebp)
.L1039:
	.loc 1 2194 0
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	je	.L1040
	.loc 1 2195 0
	movl	$0, -24(%ebp)
	jmp	.L1042
.L1040:
	.loc 1 2197 0
	movl	-28(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L1043
.L1044:
	.loc 1 2198 0
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	je	.L1042
	.loc 1 2197 0
	movl	-24(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -24(%ebp)
.L1043:
	cmpl	$0, -24(%ebp)
	jne	.L1044
.L1042:
	.loc 1 2201 0
	cmpl	$0, -24(%ebp)
	jne	.L1046
	.loc 1 2204 0
	movl	-28(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 2209 0
	movl	-28(%ebp), %eax
	cmpl	-32(%ebp), %eax
	je	.L1046
	cmpl	$0, -28(%ebp)
	je	.L1046
	.loc 1 2211 0
	jmp	.L1039
.L1046:
	.loc 1 2213 0
	cmpl	$0, -24(%ebp)
	jne	.L1050
	.loc 1 2214 0
	movl	$0, -52(%ebp)
	jmp	.L1038
.L1050:
	.loc 1 2216 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	get_integer_term@PLT
	movl	%eax, -64(%ebp)
	movl	%edx, -60(%ebp)
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	get_integer_term@PLT
	movl	-64(%ebp), %esi
	movl	-60(%ebp), %edi
	subl	%eax, %esi
	sbbl	%edx, %edi
	movl	%esi, %eax
	movl	%edi, %edx
	movl	%eax, -40(%ebp)
	movl	%edx, -36(%ebp)
	.loc 1 2218 0
	movl	-24(%ebp), %eax
	movl	(%eax), %ecx
	movl	-40(%ebp), %eax
	movl	-36(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	%ecx, (%esp)
	call	plus_constant_wide@PLT
	movl	%eax, -52(%ebp)
.L1038:
	movl	-52(%ebp), %eax
	.loc 1 2219 0
	addl	$76, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE42:
	.size	use_related_value, .-use_related_value
	.section	.rodata
	.type	__FUNCTION__.14089, @object
	.size	__FUNCTION__.14089, 11
__FUNCTION__.14089:
	.string	"canon_hash"
	.text
	.type	canon_hash, @function
canon_hash:
.LFB44:
	.loc 1 2253 0
	pushl	%ebp
.LCFI119:
	movl	%esp, %ebp
.LCFI120:
	pushl	%esi
.LCFI121:
	pushl	%ebx
.LCFI122:
	subl	$112, %esp
.LCFI123:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2255 0
	movl	$0, -44(%ebp)
	jmp	.L1174
.L1054:
.L1174:
	.loc 1 2261 0
	cmpl	$0, 8(%ebp)
	jne	.L1055
	.loc 1 2262 0
	movl	-44(%ebp), %eax
	movl	%eax, -92(%ebp)
	jmp	.L1057
.L1055:
	.loc 1 2264 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -40(%ebp)
	.loc 1 2265 0
	movl	-40(%ebp), %edx
	subl	$51, %edx
	movl	%edx, -96(%ebp)
	cmpl	$60, -96(%ebp)
	ja	.L1058
	movl	-96(%ebp), %eax
	sall	$2, %eax
	movl	.L1070@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L1070:
	.long	.L1059@GOTOFF
	.long	.L1058@GOTOFF
	.long	.L1060@GOTOFF
	.long	.L1058@GOTOFF
	.long	.L1058@GOTOFF
	.long	.L1058@GOTOFF
	.long	.L1058@GOTOFF
	.long	.L1061@GOTOFF
	.long	.L1058@GOTOFF
	.long	.L1060@GOTOFF
	.long	.L1058@GOTOFF
	.long	.L1058@GOTOFF
	.long	.L1058@GOTOFF
	.long	.L1062@GOTOFF
	.long	.L1063@GOTOFF
	.long	.L1064@GOTOFF
	.long	.L1058@GOTOFF
	.long	.L1058@GOTOFF
	.long	.L1060@GOTOFF
	.long	.L1058@GOTOFF
	.long	.L1065@GOTOFF
	.long	.L1058@GOTOFF
	.long	.L1066@GOTOFF
	.long	.L1058@GOTOFF
	.long	.L1058@GOTOFF
	.long	.L1067@GOTOFF
	.long	.L1068@GOTOFF
	.long	.L1069@GOTOFF
	.long	.L1060@GOTOFF
	.long	.L1058@GOTOFF
	.long	.L1058@GOTOFF
	.long	.L1058@GOTOFF
	.long	.L1058@GOTOFF
	.long	.L1058@GOTOFF
	.long	.L1058@GOTOFF
	.long	.L1058@GOTOFF
	.long	.L1058@GOTOFF
	.long	.L1058@GOTOFF
	.long	.L1058@GOTOFF
	.long	.L1058@GOTOFF
	.long	.L1058@GOTOFF
	.long	.L1058@GOTOFF
	.long	.L1058@GOTOFF
	.long	.L1058@GOTOFF
	.long	.L1058@GOTOFF
	.long	.L1058@GOTOFF
	.long	.L1058@GOTOFF
	.long	.L1058@GOTOFF
	.long	.L1058@GOTOFF
	.long	.L1058@GOTOFF
	.long	.L1058@GOTOFF
	.long	.L1058@GOTOFF
	.long	.L1058@GOTOFF
	.long	.L1058@GOTOFF
	.long	.L1058@GOTOFF
	.long	.L1060@GOTOFF
	.long	.L1060@GOTOFF
	.long	.L1060@GOTOFF
	.long	.L1060@GOTOFF
	.long	.L1060@GOTOFF
	.long	.L1060@GOTOFF
	.text
.L1065:
.LBB37:
	.loc 1 2269 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 2284 0
	cmpl	$175, -32(%ebp)
	jbe	.L1071
	.loc 1 2285 0
	movb	$1, -9(%ebp)
	jmp	.L1073
.L1071:
	.loc 1 2286 0
	movl	global_rtl@GOT(%ebx), %eax
	movl	12(%eax), %eax
	cmpl	8(%ebp), %eax
	je	.L1074
	movl	global_rtl@GOT(%ebx), %eax
	movl	16(%eax), %eax
	cmpl	8(%ebp), %eax
	je	.L1074
	movl	global_rtl@GOT(%ebx), %eax
	movl	20(%eax), %eax
	cmpl	8(%ebp), %eax
	je	.L1074
	movl	global_rtl@GOT(%ebx), %eax
	movl	8(%eax), %eax
	cmpl	8(%ebp), %eax
	je	.L1074
	movl	pic_offset_table_rtx@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, 8(%ebp)
	jne	.L1079
.L1074:
	.loc 1 2291 0
	movb	$1, -9(%ebp)
	.loc 1 2286 0
	jmp	.L1073
.L1079:
	.loc 1 2292 0
	movl	-32(%ebp), %eax
	movl	global_regs@GOT(%ebx), %edx
	movzbl	(%edx,%eax), %eax
	testb	%al, %al
	je	.L1080
	.loc 1 2293 0
	movb	$0, -9(%ebp)
	jmp	.L1073
.L1080:
	.loc 1 2294 0
	movl	-32(%ebp), %eax
	movl	fixed_regs@GOT(%ebx), %edx
	movzbl	(%edx,%eax), %eax
	testb	%al, %al
	je	.L1082
	.loc 1 2295 0
	movb	$1, -9(%ebp)
	jmp	.L1073
.L1082:
	.loc 1 2296 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$4, %eax
	jne	.L1084
	.loc 1 2297 0
	movb	$1, -9(%ebp)
	jmp	.L1073
.L1084:
	.loc 1 2298 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	je	.L1086
	.loc 1 2299 0
	movb	$0, -9(%ebp)
	jmp	.L1073
.L1086:
	.loc 1 2300 0
	movl	-32(%ebp), %edx
	movl	mips_regno_to_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, %edx
	movl	reg_class_size@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$1, %eax
	jne	.L1088
	.loc 1 2301 0
	movb	$0, -9(%ebp)
	jmp	.L1073
.L1088:
	.loc 1 2303 0
	movb	$1, -9(%ebp)
.L1073:
	.loc 1 2305 0
	movzbl	-9(%ebp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L1090
	.loc 1 2307 0
	movl	$1, do_not_record@GOTOFF(%ebx)
	.loc 1 2308 0
	movl	$0, -92(%ebp)
	jmp	.L1057
.L1090:
	.loc 1 2311 0
	movl	cached_regno@GOTOFF(%ebx), %eax
	cmpl	%eax, -32(%ebp)
	jne	.L1092
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L1094
.L1092:
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	get_cse_reg_info
	movl	%eax, -88(%ebp)
	jmp	.L1095
.L1094:
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	movl	%eax, -88(%ebp)
.L1095:
	movl	-88(%ebp), %edx
	movl	12(%edx), %eax
	addl	-44(%ebp), %eax
	addl	$9088, %eax
	movl	%eax, -44(%ebp)
	.loc 1 2312 0
	movl	-44(%ebp), %eax
	movl	%eax, -92(%ebp)
	jmp	.L1057
.L1066:
.LBE37:
	.loc 1 2320 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L1058
	.loc 1 2322 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -84(%ebp)
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -80(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L1098
	movl	$8, -76(%ebp)
	jmp	.L1100
.L1098:
	movl	$4, -76(%ebp)
.L1100:
	movl	-80(%ebp), %eax
	movl	$0, %edx
	divl	-76(%ebp)
	addl	-84(%ebp), %eax
	addl	-44(%ebp), %eax
	addl	$9344, %eax
	movl	%eax, -44(%ebp)
	.loc 1 2325 0
	movl	-44(%ebp), %edx
	movl	%edx, -92(%ebp)
	jmp	.L1057
.L1062:
.LBB38:
	.loc 1 2332 0
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, -64(%ebp)
	movl	%edx, -60(%ebp)
	.loc 1 2333 0
	movl	-64(%ebp), %eax
	addl	12(%ebp), %eax
	addl	-44(%ebp), %eax
	addl	$8192, %eax
	movl	%eax, -44(%ebp)
	.loc 1 2334 0
	movl	-44(%ebp), %eax
	movl	%eax, -92(%ebp)
	jmp	.L1057
.L1063:
.LBE38:
	.loc 1 2340 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	addl	-40(%ebp), %eax
	addl	%eax, -44(%ebp)
	.loc 1 2341 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	testb	%al, %al
	je	.L1101
	.loc 1 2342 0
	movl	8(%ebp), %eax
	addl	$4, %eax
	movl	%eax, (%esp)
	call	real_hash@PLT
	addl	%eax, -44(%ebp)
	jmp	.L1103
.L1101:
	.loc 1 2344 0
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, %ecx
	movl	8(%ebp), %eax
	movl	16(%eax), %edx
	movl	12(%eax), %eax
	leal	(%ecx,%eax), %eax
	addl	%eax, -44(%ebp)
.L1103:
	.loc 1 2346 0
	movl	-44(%ebp), %edx
	movl	%edx, -92(%ebp)
	jmp	.L1057
.L1064:
.LBB39:
	.loc 1 2353 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 2355 0
	movl	$0, -52(%ebp)
	jmp	.L1104
.L1105:
	.loc 1 2357 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	-52(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	%eax, -24(%ebp)
	.loc 1 2358 0
	movl	-24(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	canon_hash
	addl	%eax, -44(%ebp)
	.loc 1 2355 0
	addl	$1, -52(%ebp)
.L1104:
	movl	-52(%ebp), %eax
	cmpl	-28(%ebp), %eax
	jl	.L1105
	.loc 1 2361 0
	movl	-44(%ebp), %eax
	movl	%eax, -92(%ebp)
	jmp	.L1057
.L1068:
.LBE39:
	.loc 1 2366 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	addl	-44(%ebp), %eax
	addl	$9856, %eax
	movl	%eax, -44(%ebp)
	.loc 1 2367 0
	movl	-44(%ebp), %edx
	movl	%edx, -92(%ebp)
	jmp	.L1057
.L1069:
	.loc 1 2370 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	addl	-44(%ebp), %eax
	addl	$9984, %eax
	movl	%eax, -44(%ebp)
	.loc 1 2371 0
	movl	-44(%ebp), %eax
	movl	%eax, -92(%ebp)
	jmp	.L1057
.L1067:
	.loc 1 2376 0
	movl	8(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L1107
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	$52, %al
	jne	.L1109
.L1107:
	.loc 1 2378 0
	movl	$1, do_not_record@GOTOFF(%ebx)
	.loc 1 2379 0
	movl	$0, -92(%ebp)
	jmp	.L1057
.L1109:
	.loc 1 2381 0
	movl	8(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L1110
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	global_rtl@GOT(%ebx), %eax
	movl	12(%eax), %eax
	cmpl	%eax, %edx
	je	.L1110
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	global_rtl@GOT(%ebx), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	je	.L1110
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	global_rtl@GOT(%ebx), %eax
	movl	20(%eax), %eax
	cmpl	%eax, %edx
	jne	.L1114
	movl	fixed_regs@GOT(%ebx), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L1110
.L1114:
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	global_rtl@GOT(%ebx), %eax
	movl	28(%eax), %eax
	cmpl	%eax, %edx
	je	.L1110
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	global_rtl@GOT(%ebx), %eax
	movl	24(%eax), %eax
	cmpl	%eax, %edx
	je	.L1110
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$85, %ax
	jne	.L1118
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L1118
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %edx
	movl	global_rtl@GOT(%ebx), %eax
	movl	12(%eax), %eax
	cmpl	%eax, %edx
	je	.L1110
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %edx
	movl	global_rtl@GOT(%ebx), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	je	.L1110
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	global_rtl@GOT(%ebx), %eax
	movl	20(%eax), %eax
	cmpl	%eax, %edx
	jne	.L1123
	movl	fixed_regs@GOT(%ebx), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L1110
.L1123:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %edx
	movl	global_rtl@GOT(%ebx), %eax
	movl	28(%eax), %eax
	cmpl	%eax, %edx
	je	.L1110
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %edx
	movl	global_rtl@GOT(%ebx), %eax
	movl	24(%eax), %eax
	cmpl	%eax, %edx
	je	.L1110
.L1118:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$80, %ax
	jne	.L1126
.L1110:
	.loc 1 2383 0
	movl	$1, hash_arg_in_memory@GOTOFF(%ebx)
.L1126:
	.loc 1 2387 0
	addl	$76, -44(%ebp)
	.loc 1 2388 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 8(%ebp)
	.loc 1 2389 0
	jmp	.L1054
.L1061:
	.loc 1 2396 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L1058
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	3(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L1058
	.loc 1 2399 0
	addl	$58, -44(%ebp)
	.loc 1 2400 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 8(%ebp)
	.loc 1 2402 0
	movl	8(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L1130
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	global_rtl@GOT(%ebx), %eax
	movl	12(%eax), %eax
	cmpl	%eax, %edx
	je	.L1130
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	global_rtl@GOT(%ebx), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	je	.L1130
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	global_rtl@GOT(%ebx), %eax
	movl	20(%eax), %eax
	cmpl	%eax, %edx
	jne	.L1134
	movl	fixed_regs@GOT(%ebx), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L1130
.L1134:
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	global_rtl@GOT(%ebx), %eax
	movl	28(%eax), %eax
	cmpl	%eax, %edx
	je	.L1130
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	global_rtl@GOT(%ebx), %eax
	movl	24(%eax), %eax
	cmpl	%eax, %edx
	je	.L1130
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$85, %ax
	jne	.L1138
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L1138
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %edx
	movl	global_rtl@GOT(%ebx), %eax
	movl	12(%eax), %eax
	cmpl	%eax, %edx
	je	.L1130
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %edx
	movl	global_rtl@GOT(%ebx), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	je	.L1130
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	global_rtl@GOT(%ebx), %eax
	movl	20(%eax), %eax
	cmpl	%eax, %edx
	jne	.L1143
	movl	fixed_regs@GOT(%ebx), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L1130
.L1143:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %edx
	movl	global_rtl@GOT(%ebx), %eax
	movl	28(%eax), %eax
	cmpl	%eax, %edx
	je	.L1130
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %edx
	movl	global_rtl@GOT(%ebx), %eax
	movl	24(%eax), %eax
	cmpl	%eax, %edx
	je	.L1130
.L1138:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$80, %ax
	jne	.L1146
.L1130:
	.loc 1 2403 0
	movl	$1, hash_arg_in_memory@GOTOFF(%ebx)
.L1146:
	.loc 1 2407 0
	addl	$76, -44(%ebp)
	.loc 1 2408 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 8(%ebp)
	.loc 1 2409 0
	jmp	.L1054
.L1060:
	.loc 1 2423 0
	movl	$1, do_not_record@GOTOFF(%ebx)
	.loc 1 2424 0
	movl	$0, -92(%ebp)
	jmp	.L1057
.L1059:
	.loc 1 2427 0
	movl	8(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L1147
	.loc 1 2429 0
	movl	$1, do_not_record@GOTOFF(%ebx)
	.loc 1 2430 0
	movl	$0, -92(%ebp)
	jmp	.L1057
.L1147:
	.loc 1 2435 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, %esi
	addl	-40(%ebp), %esi
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	canon_hash_string
	addl	%eax, %esi
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, (%esp)
	call	canon_hash_string
	leal	(%esi,%eax), %edx
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	leal	(%edx,%eax), %eax
	addl	%eax, -44(%ebp)
	.loc 1 2440 0
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1149
	.loc 1 2442 0
	movl	$1, -52(%ebp)
	jmp	.L1151
.L1152:
	.loc 1 2444 0
	movl	8(%ebp), %eax
	movl	28(%eax), %edx
	movl	-52(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %ecx
	movl	8(%ebp), %eax
	movl	28(%eax), %edx
	movl	-52(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	canon_hash
	movl	%eax, %esi
	movl	8(%ebp), %eax
	movl	36(%eax), %edx
	movl	-52(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	canon_hash_string
	leal	(%esi,%eax), %eax
	addl	%eax, -44(%ebp)
	.loc 1 2442 0
	addl	$1, -52(%ebp)
.L1151:
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	(%eax), %eax
	cmpl	-52(%ebp), %eax
	jg	.L1152
	.loc 1 2450 0
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	canon_hash_string
	addl	%eax, -44(%ebp)
	.loc 1 2451 0
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, 8(%ebp)
	.loc 1 2452 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, 12(%ebp)
	.loc 1 2453 0
	jmp	.L1054
.L1149:
	.loc 1 2456 0
	movl	-44(%ebp), %edx
	movl	%edx, -92(%ebp)
	jmp	.L1057
.L1058:
	.loc 1 2464 0
	movl	-40(%ebp), %edx
	movl	rtx_length@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	subl	$1, %eax
	movl	%eax, -52(%ebp)
	.loc 1 2465 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	addl	-40(%ebp), %eax
	addl	%eax, -44(%ebp)
	.loc 1 2466 0
	movl	-40(%ebp), %edx
	movl	rtx_format@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -36(%ebp)
	.loc 1 2467 0
	jmp	.L1154
.L1155:
	.loc 1 2469 0
	movl	-52(%ebp), %eax
	addl	-36(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$101, %al
	jne	.L1156
.LBB40:
	.loc 1 2471 0
	movl	-52(%ebp), %eax
	movl	8(%ebp), %edx
	movl	4(%edx,%eax,8), %eax
	movl	%eax, -20(%ebp)
	.loc 1 2476 0
	cmpl	$0, -52(%ebp)
	jne	.L1158
	.loc 1 2478 0
	movl	-20(%ebp), %eax
	movl	%eax, 8(%ebp)
	.loc 1 2479 0
	jmp	.L1054
.L1158:
	.loc 1 2481 0
	movl	$0, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	canon_hash
	addl	%eax, -44(%ebp)
	jmp	.L1160
.L1156:
.LBE40:
	.loc 1 2483 0
	movl	-52(%ebp), %eax
	addl	-36(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$69, %al
	jne	.L1161
	.loc 1 2484 0
	movl	$0, -48(%ebp)
	jmp	.L1163
.L1164:
	.loc 1 2485 0
	movl	-52(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %edx
	movl	-48(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	canon_hash
	addl	%eax, -44(%ebp)
	.loc 1 2484 0
	addl	$1, -48(%ebp)
.L1163:
	movl	-52(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	(%eax), %eax
	cmpl	-48(%ebp), %eax
	jg	.L1164
	jmp	.L1160
.L1161:
	.loc 1 2486 0
	movl	-52(%ebp), %eax
	addl	-36(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$115, %al
	jne	.L1166
	.loc 1 2487 0
	movl	-52(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	%eax, (%esp)
	call	canon_hash_string
	addl	%eax, -44(%ebp)
	jmp	.L1160
.L1166:
	.loc 1 2488 0
	movl	-52(%ebp), %eax
	addl	-36(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$105, %al
	jne	.L1168
.LBB41:
	.loc 1 2490 0
	movl	-52(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	%eax, -16(%ebp)
	.loc 1 2491 0
	movl	-16(%ebp), %eax
	addl	%eax, -44(%ebp)
	jmp	.L1160
.L1168:
.LBE41:
	.loc 1 2493 0
	movl	-52(%ebp), %eax
	addl	-36(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$48, %al
	je	.L1160
	movl	-52(%ebp), %eax
	addl	-36(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$116, %al
	je	.L1160
	.loc 1 2497 0
	leal	__FUNCTION__.14089@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2497, 4(%esp)
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1160:
	.loc 1 2467 0
	subl	$1, -52(%ebp)
.L1154:
	cmpl	$0, -52(%ebp)
	jns	.L1155
	.loc 1 2499 0
	movl	-44(%ebp), %eax
	movl	%eax, -92(%ebp)
.L1057:
	movl	-92(%ebp), %eax
	.loc 1 2500 0
	addl	$112, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE44:
	.size	canon_hash, .-canon_hash
	.type	canon_hash_string, @function
canon_hash_string:
.LFB43:
	.loc 1 2225 0
	pushl	%ebp
.LCFI124:
	movl	%esp, %ebp
.LCFI125:
	subl	$16, %esp
.LCFI126:
	.loc 1 2226 0
	movl	$0, -8(%ebp)
	.loc 1 2227 0
	movl	8(%ebp), %eax
	movl	%eax, -4(%ebp)
	.loc 1 2229 0
	cmpl	$0, -4(%ebp)
	je	.L1176
	.loc 1 2230 0
	jmp	.L1178
.L1179:
	.loc 1 2231 0
	movl	-4(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	addl	%eax, -8(%ebp)
	addl	$1, -4(%ebp)
.L1178:
	.loc 1 2230 0
	movl	-4(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L1179
.L1176:
	.loc 1 2233 0
	movl	-8(%ebp), %eax
	.loc 1 2234 0
	leave
	ret
.LFE43:
	.size	canon_hash_string, .-canon_hash_string
	.type	safe_hash, @function
safe_hash:
.LFB45:
	.loc 1 2508 0
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
	.loc 1 2509 0
	movl	do_not_record@GOTOFF(%ebx), %eax
	movl	%eax, -16(%ebp)
	.loc 1 2510 0
	movl	hash_arg_in_memory@GOTOFF(%ebx), %eax
	movl	%eax, -12(%ebp)
	.loc 1 2511 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	canon_hash
	movl	%eax, -8(%ebp)
	.loc 1 2512 0
	movl	-12(%ebp), %eax
	movl	%eax, hash_arg_in_memory@GOTOFF(%ebx)
	.loc 1 2513 0
	movl	-16(%ebp), %eax
	movl	%eax, do_not_record@GOTOFF(%ebx)
	.loc 1 2514 0
	movl	-8(%ebp), %eax
	.loc 1 2515 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE45:
	.size	safe_hash, .-safe_hash
	.section	.rodata
	.type	__FUNCTION__.14491, @object
	.size	__FUNCTION__.14491, 12
__FUNCTION__.14491:
	.string	"exp_equiv_p"
	.text
	.type	exp_equiv_p, @function
exp_equiv_p:
.LFB46:
	.loc 1 2537 0
	pushl	%ebp
.LCFI131:
	movl	%esp, %ebp
.LCFI132:
	pushl	%edi
.LCFI133:
	pushl	%esi
.LCFI134:
	pushl	%ebx
.LCFI135:
	subl	$140, %esp
.LCFI136:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2544 0
	movl	8(%ebp), %eax
	cmpl	12(%ebp), %eax
	jne	.L1184
	cmpl	$0, 16(%ebp)
	jne	.L1184
	.loc 1 2545 0
	movl	$1, -128(%ebp)
	jmp	.L1187
.L1184:
	.loc 1 2546 0
	cmpl	$0, 8(%ebp)
	je	.L1188
	cmpl	$0, 12(%ebp)
	jne	.L1190
.L1188:
	.loc 1 2547 0
	movl	8(%ebp), %eax
	cmpl	12(%ebp), %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -128(%ebp)
	jmp	.L1187
.L1190:
	.loc 1 2549 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -48(%ebp)
	.loc 1 2550 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	cmpl	-48(%ebp), %eax
	je	.L1191
	.loc 1 2552 0
	cmpl	$0, 20(%ebp)
	jne	.L1193
	.loc 1 2553 0
	movl	$0, -128(%ebp)
	jmp	.L1187
.L1193:
	.loc 1 2557 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	je	.L1195
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	je	.L1195
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L1195
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	je	.L1195
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	je	.L1195
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$144, %ax
	je	.L1195
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$66, %ax
	je	.L1195
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$150, %ax
	jne	.L1203
.L1195:
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L1203
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	cached_regno@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	jne	.L1205
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L1207
.L1205:
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	get_cse_reg_info
	movl	%eax, -124(%ebp)
	jmp	.L1208
.L1207:
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	movl	%eax, -124(%ebp)
.L1208:
	movl	-124(%ebp), %eax
	movl	12(%eax), %edx
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	je	.L1203
.LBB42:
	.loc 1 2560 0
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	cached_regno@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	jne	.L1210
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L1212
.L1210:
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	get_cse_reg_info
	movl	%eax, -120(%ebp)
	jmp	.L1213
.L1212:
	movl	cached_cse_reg_info@GOTOFF(%ebx), %edx
	movl	%edx, -120(%ebp)
.L1213:
	movl	-120(%ebp), %edx
	movl	12(%edx), %eax
	movl	%eax, -40(%ebp)
	.loc 1 2561 0
	movl	-40(%ebp), %eax
	sall	$5, %eax
	movl	%eax, %edx
	movl	qty_table@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -36(%ebp)
	.loc 1 2563 0
	movl	12(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	-36(%ebp), %eax
	movl	24(%eax), %eax
	cmpl	%eax, %edx
	jne	.L1203
	movl	-36(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	je	.L1203
	cmpl	$0, 16(%ebp)
	je	.L1216
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	cached_regno@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	jne	.L1218
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L1220
.L1218:
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	get_cse_reg_info
	movl	%eax, -116(%ebp)
	jmp	.L1221
.L1220:
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	movl	%eax, -116(%ebp)
.L1221:
	movl	-116(%ebp), %edx
	movl	20(%edx), %edx
	movl	%edx, -112(%ebp)
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	cached_regno@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	jne	.L1222
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L1224
.L1222:
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	get_cse_reg_info
	movl	%eax, -108(%ebp)
	jmp	.L1225
.L1224:
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	movl	%eax, -108(%ebp)
.L1225:
	movl	-108(%ebp), %edx
	movl	16(%edx), %eax
	cmpl	%eax, -112(%ebp)
	jne	.L1203
.L1216:
	.loc 1 2566 0
	movl	$1, -128(%ebp)
	jmp	.L1187
.L1203:
.LBE42:
	.loc 1 2569 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	je	.L1226
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	je	.L1226
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L1226
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	je	.L1226
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	je	.L1226
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$144, %ax
	je	.L1226
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$66, %ax
	je	.L1226
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$150, %ax
	jne	.L1234
.L1226:
	cmpl	$71, -48(%ebp)
	jne	.L1234
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	cached_regno@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	jne	.L1236
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L1238
.L1236:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	get_cse_reg_info
	movl	%eax, -104(%ebp)
	jmp	.L1239
.L1238:
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	movl	%eax, -104(%ebp)
.L1239:
	movl	-104(%ebp), %eax
	movl	12(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	je	.L1234
.LBB43:
	.loc 1 2572 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	cached_regno@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	jne	.L1241
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L1243
.L1241:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	get_cse_reg_info
	movl	%eax, -100(%ebp)
	jmp	.L1244
.L1243:
	movl	cached_cse_reg_info@GOTOFF(%ebx), %edx
	movl	%edx, -100(%ebp)
.L1244:
	movl	-100(%ebp), %edx
	movl	12(%edx), %eax
	movl	%eax, -32(%ebp)
	.loc 1 2573 0
	movl	-32(%ebp), %eax
	sall	$5, %eax
	movl	%eax, %edx
	movl	qty_table@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 2575 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	-28(%ebp), %eax
	movl	24(%eax), %eax
	cmpl	%eax, %edx
	jne	.L1234
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	je	.L1234
	.loc 1 2577 0
	movl	$1, -128(%ebp)
	jmp	.L1187
.L1234:
.LBE43:
	.loc 1 2580 0
	movl	$0, -128(%ebp)
	jmp	.L1187
.L1191:
	.loc 1 2584 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %edx
	movl	12(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	%al, %dl
	je	.L1247
	.loc 1 2585 0
	movl	$0, -128(%ebp)
	jmp	.L1187
.L1247:
	.loc 1 2587 0
	movl	-48(%ebp), %eax
	subl	$51, %eax
	movl	%eax, -132(%ebp)
	cmpl	$62, -132(%ebp)
	ja	.L1249
	movl	-132(%ebp), %eax
	sall	$2, %eax
	movl	.L1256@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L1256:
	.long	.L1250@GOTOFF
	.long	.L1249@GOTOFF
	.long	.L1249@GOTOFF
	.long	.L1249@GOTOFF
	.long	.L1249@GOTOFF
	.long	.L1249@GOTOFF
	.long	.L1249@GOTOFF
	.long	.L1249@GOTOFF
	.long	.L1249@GOTOFF
	.long	.L1249@GOTOFF
	.long	.L1249@GOTOFF
	.long	.L1249@GOTOFF
	.long	.L1249@GOTOFF
	.long	.L1251@GOTOFF
	.long	.L1249@GOTOFF
	.long	.L1249@GOTOFF
	.long	.L1249@GOTOFF
	.long	.L1249@GOTOFF
	.long	.L1251@GOTOFF
	.long	.L1249@GOTOFF
	.long	.L1252@GOTOFF
	.long	.L1249@GOTOFF
	.long	.L1249@GOTOFF
	.long	.L1249@GOTOFF
	.long	.L1249@GOTOFF
	.long	.L1249@GOTOFF
	.long	.L1253@GOTOFF
	.long	.L1254@GOTOFF
	.long	.L1251@GOTOFF
	.long	.L1249@GOTOFF
	.long	.L1249@GOTOFF
	.long	.L1249@GOTOFF
	.long	.L1249@GOTOFF
	.long	.L1249@GOTOFF
	.long	.L1255@GOTOFF
	.long	.L1249@GOTOFF
	.long	.L1249@GOTOFF
	.long	.L1255@GOTOFF
	.long	.L1249@GOTOFF
	.long	.L1249@GOTOFF
	.long	.L1249@GOTOFF
	.long	.L1249@GOTOFF
	.long	.L1255@GOTOFF
	.long	.L1255@GOTOFF
	.long	.L1255@GOTOFF
	.long	.L1249@GOTOFF
	.long	.L1249@GOTOFF
	.long	.L1249@GOTOFF
	.long	.L1249@GOTOFF
	.long	.L1249@GOTOFF
	.long	.L1249@GOTOFF
	.long	.L1249@GOTOFF
	.long	.L1249@GOTOFF
	.long	.L1249@GOTOFF
	.long	.L1249@GOTOFF
	.long	.L1249@GOTOFF
	.long	.L1249@GOTOFF
	.long	.L1249@GOTOFF
	.long	.L1249@GOTOFF
	.long	.L1249@GOTOFF
	.long	.L1249@GOTOFF
	.long	.L1255@GOTOFF
	.long	.L1255@GOTOFF
	.text
.L1251:
	.loc 1 2592 0
	movl	8(%ebp), %eax
	cmpl	12(%ebp), %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -128(%ebp)
	jmp	.L1187
.L1253:
	.loc 1 2595 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -128(%ebp)
	jmp	.L1187
.L1254:
	.loc 1 2598 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -128(%ebp)
	jmp	.L1187
.L1252:
.LBB44:
	.loc 1 2602 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 2605 0
	cmpl	$175, -24(%ebp)
	ja	.L1257
	movl	12(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	-24(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	mips_hard_regno_nregs@PLT
	movl	%eax, -96(%ebp)
	jmp	.L1259
.L1257:
	movl	$1, -96(%ebp)
.L1259:
	movl	-96(%ebp), %eax
	addl	-24(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 2612 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	cached_regno@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	jne	.L1260
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L1262
.L1260:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	get_cse_reg_info
	movl	%eax, -92(%ebp)
	jmp	.L1263
.L1262:
	movl	cached_cse_reg_info@GOTOFF(%ebx), %edx
	movl	%edx, -92(%ebp)
.L1263:
	movl	-92(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -88(%ebp)
	movl	cached_regno@GOTOFF(%ebx), %eax
	cmpl	%eax, -24(%ebp)
	jne	.L1264
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L1266
.L1264:
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	get_cse_reg_info
	movl	%eax, -84(%ebp)
	jmp	.L1267
.L1266:
	movl	cached_cse_reg_info@GOTOFF(%ebx), %edx
	movl	%edx, -84(%ebp)
.L1267:
	movl	-84(%ebp), %edx
	movl	12(%edx), %eax
	cmpl	%eax, -88(%ebp)
	je	.L1268
	.loc 1 2613 0
	movl	$0, -128(%ebp)
	jmp	.L1187
.L1268:
	.loc 1 2615 0
	cmpl	$0, 16(%ebp)
	jne	.L1270
	.loc 1 2616 0
	movl	$1, -128(%ebp)
	jmp	.L1187
.L1270:
	.loc 1 2618 0
	movl	-24(%ebp), %eax
	movl	%eax, -16(%ebp)
	jmp	.L1272
.L1273:
	.loc 1 2619 0
	movl	cached_regno@GOTOFF(%ebx), %eax
	cmpl	%eax, -16(%ebp)
	jne	.L1274
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L1276
.L1274:
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	get_cse_reg_info
	movl	%eax, -80(%ebp)
	jmp	.L1277
.L1276:
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	movl	%eax, -80(%ebp)
.L1277:
	movl	-80(%ebp), %edx
	movl	20(%edx), %edx
	movl	%edx, -76(%ebp)
	movl	cached_regno@GOTOFF(%ebx), %eax
	cmpl	%eax, -16(%ebp)
	jne	.L1278
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L1280
.L1278:
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	get_cse_reg_info
	movl	%eax, -72(%ebp)
	jmp	.L1281
.L1280:
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	movl	%eax, -72(%ebp)
.L1281:
	movl	-72(%ebp), %edx
	movl	16(%edx), %eax
	cmpl	%eax, -76(%ebp)
	je	.L1282
	.loc 1 2620 0
	movl	$0, -128(%ebp)
	jmp	.L1187
.L1282:
	.loc 1 2618 0
	addl	$1, -16(%ebp)
.L1272:
	movl	-16(%ebp), %eax
	cmpl	-20(%ebp), %eax
	jb	.L1273
	.loc 1 2622 0
	movl	$1, -128(%ebp)
	jmp	.L1187
.L1255:
.LBE44:
	.loc 1 2633 0
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %ecx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	exp_equiv_p
	testl	%eax, %eax
	je	.L1285
	movl	12(%ebp), %eax
	movl	12(%eax), %edx
	movl	8(%ebp), %eax
	movl	12(%eax), %ecx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	exp_equiv_p
	testl	%eax, %eax
	jne	.L1287
.L1285:
	movl	12(%ebp), %eax
	movl	12(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %ecx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	exp_equiv_p
	testl	%eax, %eax
	je	.L1288
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	12(%eax), %ecx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	exp_equiv_p
	testl	%eax, %eax
	je	.L1288
.L1287:
	movl	$1, -68(%ebp)
	jmp	.L1290
.L1288:
	movl	$0, -68(%ebp)
.L1290:
	movl	-68(%ebp), %eax
	movl	%eax, -128(%ebp)
	jmp	.L1187
.L1250:
	.loc 1 2646 0
	movl	8(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L1291
	movl	12(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L1293
.L1291:
	.loc 1 2647 0
	movl	$0, -128(%ebp)
	jmp	.L1187
.L1293:
	.loc 1 2649 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %edx
	movl	12(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	%al, %dl
	jne	.L1294
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L1294
	movl	12(%ebp), %eax
	movl	12(%eax), %edx
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L1294
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	cmpl	%eax, %edx
	jne	.L1294
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	(%eax), %edx
	movl	12(%ebp), %eax
	movl	28(%eax), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	je	.L1299
.L1294:
	.loc 1 2655 0
	movl	$0, -128(%ebp)
	jmp	.L1187
.L1299:
	.loc 1 2657 0
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1300
	.loc 1 2659 0
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	(%eax), %eax
	subl	$1, %eax
	movl	%eax, -56(%ebp)
	jmp	.L1302
.L1303:
	.loc 1 2660 0
	movl	12(%ebp), %eax
	movl	28(%eax), %edx
	movl	-56(%ebp), %eax
	movl	4(%edx,%eax,4), %ecx
	movl	8(%ebp), %eax
	movl	28(%eax), %edx
	movl	-56(%ebp), %eax
	movl	4(%edx,%eax,4), %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	exp_equiv_p
	testl	%eax, %eax
	je	.L1304
	movl	12(%ebp), %eax
	movl	36(%eax), %edx
	movl	-56(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	4(%eax), %ecx
	movl	8(%ebp), %eax
	movl	36(%eax), %edx
	movl	-56(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	4(%eax), %eax
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L1306
.L1304:
	.loc 1 2665 0
	movl	$0, -128(%ebp)
	jmp	.L1187
.L1306:
	.loc 1 2659 0
	subl	$1, -56(%ebp)
.L1302:
	cmpl	$0, -56(%ebp)
	jns	.L1303
.L1300:
	.loc 1 2668 0
	movl	$1, -128(%ebp)
	jmp	.L1187
.L1249:
	.loc 1 2677 0
	movl	-48(%ebp), %edx
	movl	rtx_format@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -44(%ebp)
	.loc 1 2678 0
	movl	-48(%ebp), %edx
	movl	rtx_length@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	subl	$1, %eax
	movl	%eax, -56(%ebp)
	jmp	.L1307
.L1308:
	.loc 1 2680 0
	movl	-56(%ebp), %eax
	addl	-44(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -64(%ebp)
	cmpl	$105, -64(%ebp)
	je	.L1313
	cmpl	$105, -64(%ebp)
	jg	.L1316
	cmpl	$69, -64(%ebp)
	je	.L1311
	cmpl	$101, -64(%ebp)
	je	.L1312
	cmpl	$48, -64(%ebp)
	je	.L1319
	jmp	.L1309
.L1316:
	cmpl	$116, -64(%ebp)
	je	.L1319
	cmpl	$119, -64(%ebp)
	je	.L1315
	cmpl	$115, -64(%ebp)
	je	.L1314
	jmp	.L1309
.L1312:
	.loc 1 2683 0
	movl	-56(%ebp), %edx
	movl	12(%ebp), %eax
	movl	4(%eax,%edx,8), %ecx
	movl	-56(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	exp_equiv_p
	testl	%eax, %eax
	jne	.L1319
	.loc 1 2684 0
	movl	$0, -128(%ebp)
	jmp	.L1187
.L1311:
	.loc 1 2688 0
	movl	-56(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	(%eax), %ecx
	movl	-56(%ebp), %edx
	movl	12(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	(%eax), %eax
	cmpl	%eax, %ecx
	je	.L1320
	.loc 1 2689 0
	movl	$0, -128(%ebp)
	jmp	.L1187
.L1320:
	.loc 1 2690 0
	movl	$0, -52(%ebp)
	jmp	.L1322
.L1323:
	.loc 1 2691 0
	movl	-56(%ebp), %edx
	movl	12(%ebp), %eax
	movl	4(%eax,%edx,8), %edx
	movl	-52(%ebp), %eax
	movl	4(%edx,%eax,4), %ecx
	movl	-56(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %edx
	movl	-52(%ebp), %eax
	movl	4(%edx,%eax,4), %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	exp_equiv_p
	testl	%eax, %eax
	jne	.L1324
	.loc 1 2693 0
	movl	$0, -128(%ebp)
	jmp	.L1187
.L1324:
	.loc 1 2690 0
	addl	$1, -52(%ebp)
.L1322:
	movl	-56(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	(%eax), %eax
	cmpl	-52(%ebp), %eax
	jg	.L1323
	.loc 1 2694 0
	jmp	.L1319
.L1314:
	.loc 1 2697 0
	movl	-56(%ebp), %edx
	movl	12(%ebp), %eax
	movl	4(%eax,%edx,8), %ecx
	movl	-56(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L1319
	.loc 1 2698 0
	movl	$0, -128(%ebp)
	jmp	.L1187
.L1313:
	.loc 1 2702 0
	movl	-56(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %ecx
	movl	-56(%ebp), %edx
	movl	12(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	cmpl	%eax, %ecx
	je	.L1319
	.loc 1 2703 0
	movl	$0, -128(%ebp)
	jmp	.L1187
.L1315:
	.loc 1 2707 0
	movl	-56(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %esi
	movl	8(%eax,%edx,8), %edi
	movl	-56(%ebp), %edx
	movl	12(%ebp), %eax
	leal	4(%eax,%edx,8), %edx
	movl	(%edx), %eax
	movl	4(%edx), %edx
	movl	%edi, %ecx
	xorl	%edx, %ecx
	xorl	%esi, %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	je	.L1319
	.loc 1 2708 0
	movl	$0, -128(%ebp)
	jmp	.L1187
.L1309:
	.loc 1 2716 0
	leal	__FUNCTION__.14491@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2716, 4(%esp)
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1319:
	.loc 1 2678 0
	subl	$1, -56(%ebp)
.L1307:
	cmpl	$0, -56(%ebp)
	jns	.L1308
	.loc 1 2720 0
	movl	$1, -128(%ebp)
.L1187:
	movl	-128(%ebp), %eax
	.loc 1 2721 0
	addl	$140, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE46:
	.size	exp_equiv_p, .-exp_equiv_p
	.type	cse_rtx_varies_p, @function
cse_rtx_varies_p:
.LFB47:
	.loc 1 2731 0
	pushl	%ebp
.LCFI137:
	movl	%esp, %ebp
.LCFI138:
	pushl	%ebx
.LCFI139:
	subl	$84, %esp
.LCFI140:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2736 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L1336
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	cached_regno@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	jne	.L1338
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L1340
.L1338:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	get_cse_reg_info
	movl	%eax, -72(%ebp)
	jmp	.L1341
.L1340:
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	movl	%eax, -72(%ebp)
.L1341:
	movl	-72(%ebp), %eax
	movl	12(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	je	.L1336
.LBB45:
	.loc 1 2739 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	cached_regno@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	jne	.L1343
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L1345
.L1343:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	get_cse_reg_info
	movl	%eax, -68(%ebp)
	jmp	.L1346
.L1345:
	movl	cached_cse_reg_info@GOTOFF(%ebx), %edx
	movl	%edx, -68(%ebp)
.L1346:
	movl	-68(%ebp), %edx
	movl	12(%edx), %eax
	movl	%eax, -36(%ebp)
	.loc 1 2740 0
	movl	-36(%ebp), %eax
	sall	$5, %eax
	movl	%eax, %edx
	movl	qty_table@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 2742 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	-32(%ebp), %eax
	movl	24(%eax), %eax
	cmpl	%eax, %edx
	jne	.L1336
	movl	-32(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1336
	.loc 1 2744 0
	movl	$0, -64(%ebp)
	jmp	.L1349
.L1336:
.LBE45:
	.loc 1 2747 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$85, %ax
	jne	.L1350
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L1350
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L1350
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %edx
	movl	cached_regno@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	jne	.L1354
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L1356
.L1354:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	get_cse_reg_info
	movl	%eax, -60(%ebp)
	jmp	.L1357
.L1356:
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	movl	%eax, -60(%ebp)
.L1357:
	movl	-60(%ebp), %eax
	movl	12(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	je	.L1350
.LBB46:
	.loc 1 2752 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %edx
	movl	cached_regno@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	jne	.L1359
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L1361
.L1359:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	get_cse_reg_info
	movl	%eax, -56(%ebp)
	jmp	.L1362
.L1361:
	movl	cached_cse_reg_info@GOTOFF(%ebx), %edx
	movl	%edx, -56(%ebp)
.L1362:
	movl	-56(%ebp), %edx
	movl	12(%edx), %eax
	movl	%eax, -28(%ebp)
	.loc 1 2753 0
	movl	-28(%ebp), %eax
	sall	$5, %eax
	movl	%eax, %edx
	movl	qty_table@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 2755 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	-24(%ebp), %eax
	movl	24(%eax), %eax
	cmpl	%eax, %edx
	jne	.L1350
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1350
	.loc 1 2757 0
	movl	$0, -64(%ebp)
	jmp	.L1349
.L1350:
.LBE46:
	.loc 1 2765 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$85, %ax
	jne	.L1365
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L1365
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L1365
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %edx
	movl	cached_regno@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	jne	.L1369
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L1371
.L1369:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	get_cse_reg_info
	movl	%eax, -52(%ebp)
	jmp	.L1372
.L1371:
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	movl	%eax, -52(%ebp)
.L1372:
	movl	-52(%ebp), %eax
	movl	12(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	je	.L1365
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	4(%eax), %edx
	movl	cached_regno@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	jne	.L1374
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L1376
.L1374:
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	get_cse_reg_info
	movl	%eax, -48(%ebp)
	jmp	.L1377
.L1376:
	movl	cached_cse_reg_info@GOTOFF(%ebx), %edx
	movl	%edx, -48(%ebp)
.L1377:
	movl	-48(%ebp), %eax
	movl	12(%eax), %edx
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	je	.L1365
.LBB47:
	.loc 1 2771 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %edx
	movl	cached_regno@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	jne	.L1379
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L1381
.L1379:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	get_cse_reg_info
	movl	%eax, -44(%ebp)
	jmp	.L1382
.L1381:
	movl	cached_cse_reg_info@GOTOFF(%ebx), %edx
	movl	%edx, -44(%ebp)
.L1382:
	movl	-44(%ebp), %edx
	movl	12(%edx), %eax
	movl	%eax, -20(%ebp)
	.loc 1 2772 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	4(%eax), %edx
	movl	cached_regno@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	jne	.L1383
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L1385
.L1383:
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	get_cse_reg_info
	movl	%eax, -40(%ebp)
	jmp	.L1386
.L1385:
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	movl	%eax, -40(%ebp)
.L1386:
	movl	-40(%ebp), %edx
	movl	12(%edx), %eax
	movl	%eax, -16(%ebp)
	.loc 1 2773 0
	movl	-20(%ebp), %eax
	sall	$5, %eax
	movl	%eax, %edx
	movl	qty_table@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 2774 0
	movl	-16(%ebp), %eax
	sall	$5, %eax
	movl	%eax, %edx
	movl	qty_table@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 2776 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	-12(%ebp), %eax
	movl	24(%eax), %eax
	cmpl	%eax, %edx
	jne	.L1365
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1365
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	-8(%ebp), %eax
	movl	24(%eax), %eax
	cmpl	%eax, %edx
	jne	.L1365
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1365
	.loc 1 2780 0
	movl	$0, -64(%ebp)
	jmp	.L1349
.L1365:
.LBE47:
	.loc 1 2783 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	rtx_varies_p@PLT
	movl	%eax, -64(%ebp)
.L1349:
	movl	-64(%ebp), %eax
	.loc 1 2784 0
	addl	$84, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE47:
	.size	cse_rtx_varies_p, .-cse_rtx_varies_p
	.type	canon_reg, @function
canon_reg:
.LFB48:
	.loc 1 2801 0
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
	subl	$108, %esp
.LCFI146:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2806 0
	cmpl	$0, 8(%ebp)
	jne	.L1393
	.loc 1 2807 0
	movl	8(%ebp), %eax
	movl	%eax, -84(%ebp)
	jmp	.L1395
.L1393:
	.loc 1 2809 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -44(%ebp)
	.loc 1 2810 0
	movl	-44(%ebp), %edx
	subl	$54, %edx
	movl	%edx, -88(%ebp)
	cmpl	$25, -88(%ebp)
	ja	.L1396
	movl	$1, %eax
	movl	%eax, %edx
	movzbl	-88(%ebp), %ecx
	sall	%cl, %edx
	movl	%edx, -92(%ebp)
	movl	-92(%ebp), %eax
	andl	$58776579, %eax
	testl	%eax, %eax
	jne	.L1397
	movl	-92(%ebp), %eax
	andl	$131072, %eax
	testl	%eax, %eax
	jne	.L1398
	jmp	.L1396
.L1397:
	.loc 1 2822 0
	movl	8(%ebp), %ecx
	movl	%ecx, -84(%ebp)
	jmp	.L1395
.L1398:
.LBB48:
	.loc 1 2835 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	jbe	.L1399
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	cached_regno@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	jne	.L1401
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L1403
.L1401:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	get_cse_reg_info
	movl	%eax, -80(%ebp)
	jmp	.L1404
.L1403:
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	movl	%eax, -80(%ebp)
.L1404:
	movl	-80(%ebp), %ecx
	movl	12(%ecx), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	jne	.L1405
.L1399:
	.loc 1 2837 0
	movl	8(%ebp), %eax
	movl	%eax, -84(%ebp)
	jmp	.L1395
.L1405:
	.loc 1 2839 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	cached_regno@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	jne	.L1406
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L1408
.L1406:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	get_cse_reg_info
	movl	%eax, -76(%ebp)
	jmp	.L1409
.L1408:
	movl	cached_cse_reg_info@GOTOFF(%ebx), %edx
	movl	%edx, -76(%ebp)
.L1409:
	movl	-76(%ebp), %ecx
	movl	12(%ecx), %eax
	movl	%eax, -32(%ebp)
	.loc 1 2840 0
	movl	-32(%ebp), %eax
	sall	$5, %eax
	movl	%eax, %edx
	movl	qty_table@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 2841 0
	movl	-28(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -36(%ebp)
	.loc 1 2842 0
	cmpl	$175, -36(%ebp)
	jle	.L1410
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movl	48(%eax), %edx
	movl	-36(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -72(%ebp)
	jmp	.L1412
.L1410:
	movl	-36(%ebp), %eax
	movl	mips_regno_to_class@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	testl	%eax, %eax
	je	.L1413
	movl	-36(%ebp), %edx
	movl	-28(%ebp), %eax
	movl	24(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	gen_rtx_REG@PLT
	movl	%eax, -68(%ebp)
	jmp	.L1415
.L1413:
	movl	8(%ebp), %eax
	movl	%eax, -68(%ebp)
.L1415:
	movl	-68(%ebp), %edx
	movl	%edx, -72(%ebp)
.L1412:
	movl	-72(%ebp), %ecx
	movl	%ecx, -84(%ebp)
	jmp	.L1395
.L1396:
.LBE48:
	.loc 1 2851 0
	movl	-44(%ebp), %edx
	movl	rtx_format@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -40(%ebp)
	.loc 1 2852 0
	movl	-44(%ebp), %edx
	movl	rtx_length@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	subl	$1, %eax
	movl	%eax, -48(%ebp)
	jmp	.L1416
.L1417:
.LBB49:
	.loc 1 2856 0
	movl	-48(%ebp), %eax
	addl	-40(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$101, %al
	jne	.L1418
.LBB50:
	.loc 1 2858 0
	movl	-48(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	canon_reg
	movl	%eax, -20(%ebp)
	.loc 1 2863 0
	cmpl	$0, 12(%ebp)
	je	.L1420
	cmpl	$0, -20(%ebp)
	je	.L1420
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L1420
	movl	-48(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L1420
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	setbe	%cl
	movl	-48(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	setbe	%al
	xorl	%ecx, %eax
	testb	%al, %al
	jne	.L1425
	movl	12(%ebp), %eax
	movl	52(%eax), %eax
	testl	%eax, %eax
	js	.L1427
	movl	12(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -64(%ebp)
	jmp	.L1429
.L1427:
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	recog_memoized_1@PLT
	movl	%eax, -64(%ebp)
.L1429:
	movl	-64(%ebp), %eax
	movl	%eax, -16(%ebp)
	cmpl	$0, -16(%ebp)
	js	.L1425
	movl	-16(%ebp), %edx
	movl	insn_data@GOT(%ebx), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$16, %eax
	movzbl	1(%eax), %eax
	testb	%al, %al
	je	.L1420
.L1425:
	.loc 1 2869 0
	movl	-48(%ebp), %eax
	sall	$3, %eax
	addl	8(%ebp), %eax
	leal	4(%eax), %edx
	movl	$1, 12(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	validate_change@PLT
	.loc 1 2863 0
	jmp	.L1432
.L1420:
	.loc 1 2871 0
	movl	-48(%ebp), %ecx
	movl	8(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	%eax, 4(%edx,%ecx,8)
	jmp	.L1432
.L1418:
.LBE50:
	.loc 1 2873 0
	movl	-48(%ebp), %eax
	addl	-40(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$69, %al
	jne	.L1432
	.loc 1 2874 0
	movl	$0, -24(%ebp)
	jmp	.L1434
.L1435:
	.loc 1 2875 0
	movl	-48(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %esi
	movl	-24(%ebp), %edi
	movl	-48(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %edx
	movl	-24(%ebp), %eax
	movl	4(%edx,%eax,4), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	canon_reg
	movl	%eax, 4(%esi,%edi,4)
	.loc 1 2874 0
	addl	$1, -24(%ebp)
.L1434:
	movl	-48(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	(%eax), %eax
	cmpl	-24(%ebp), %eax
	jg	.L1435
.L1432:
.LBE49:
	.loc 1 2852 0
	subl	$1, -48(%ebp)
.L1416:
	cmpl	$0, -48(%ebp)
	jns	.L1417
	.loc 1 2878 0
	movl	8(%ebp), %edx
	movl	%edx, -84(%ebp)
.L1395:
	movl	-84(%ebp), %eax
	.loc 1 2879 0
	addl	$108, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE48:
	.size	canon_reg, .-canon_reg
	.type	find_best_addr, @function
find_best_addr:
.LFB49:
	.loc 1 2902 0
	pushl	%ebp
.LCFI147:
	movl	%esp, %ebp
.LCFI148:
	pushl	%esi
.LCFI149:
	pushl	%ebx
.LCFI150:
	subl	$192, %esp
.LCFI151:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2904 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -100(%ebp)
	.loc 1 2907 0
	movl	$1, -92(%ebp)
	.loc 1 2909 0
	movl	do_not_record@GOTOFF(%ebx), %eax
	movl	%eax, -88(%ebp)
	.loc 1 2910 0
	movl	hash_arg_in_memory@GOTOFF(%ebx), %eax
	movl	%eax, -84(%ebp)
	.loc 1 2924 0
	movl	-100(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$85, %ax
	jne	.L1439
	movl	-100(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L1439
	movl	-100(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L1439
	movl	-100(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -76(%ebp)
	cmpl	$1, -76(%ebp)
	je	.L1443
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	je	.L1445
	movl	$17, -168(%ebp)
	jmp	.L1447
.L1445:
	movl	$30, -168(%ebp)
.L1447:
	movl	-168(%ebp), %eax
	cmpl	-76(%ebp), %eax
	je	.L1443
	cmpl	$0, -76(%ebp)
	jne	.L1449
.L1443:
	movl	$1, -172(%ebp)
	jmp	.L1450
.L1449:
	movl	$0, -172(%ebp)
.L1450:
	cmpl	$0, -172(%ebp)
	jne	.L1568
.L1439:
	movl	-100(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L1452
	movl	-100(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -76(%ebp)
	cmpl	$1, -76(%ebp)
	je	.L1454
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	je	.L1456
	movl	$17, -160(%ebp)
	jmp	.L1458
.L1456:
	movl	$30, -160(%ebp)
.L1458:
	movl	-160(%ebp), %edx
	cmpl	-76(%ebp), %edx
	je	.L1454
	cmpl	$0, -76(%ebp)
	jne	.L1460
.L1454:
	movl	$1, -164(%ebp)
	jmp	.L1461
.L1460:
	movl	$0, -164(%ebp)
.L1461:
	cmpl	$0, -164(%ebp)
	jne	.L1568
.L1452:
	movl	-100(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$80, %ax
	je	.L1568
	movl	-100(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	je	.L1568
	movl	-100(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	je	.L1568
	movl	-100(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L1568
	movl	-100(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$144, %ax
	je	.L1568
	movl	-100(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	jne	.L1467
	movl	flag_pic@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1469
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	call	pic_address_needs_scratch@PLT
	testl	%eax, %eax
	jne	.L1467
.L1469:
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$16, %eax
	testl	%eax, %eax
	jne	.L1568
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L1467
	.loc 1 2936 0
	jmp	.L1568
.L1467:
	.loc 1 2942 0
	movl	-100(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	je	.L1473
.LBB51:
	.loc 1 2944 0
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_rtx@PLT
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	fold_rtx
	movl	%eax, -68(%ebp)
	.loc 1 2945 0
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-68(%ebp), %eax
	movl	%eax, (%esp)
	call	address_cost@PLT
	movl	%eax, -64(%ebp)
	.loc 1 2946 0
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	call	address_cost@PLT
	movl	%eax, -60(%ebp)
	.loc 1 2948 0
	movl	-64(%ebp), %eax
	cmpl	-60(%ebp), %eax
	jl	.L1475
	movl	-64(%ebp), %eax
	cmpl	-60(%ebp), %eax
	jne	.L1473
	movl	$76, 4(%esp)
	movl	-68(%ebp), %eax
	movl	%eax, (%esp)
	call	rtx_cost@PLT
	movl	%eax, %esi
	movl	$76, 4(%esp)
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	call	rtx_cost@PLT
	cmpl	%eax, %esi
	jg	.L1475
	movl	-68(%ebp), %eax
	movl	%eax, (%esp)
	call	approx_reg_cost
	movl	%eax, %esi
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	call	approx_reg_cost
	cmpl	%eax, %esi
	jge	.L1473
.L1475:
	movl	$0, 12(%esp)
	movl	-68(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	validate_change@PLT
	testl	%eax, %eax
	je	.L1473
	.loc 1 2955 0
	movl	-68(%ebp), %eax
	movl	%eax, -100(%ebp)
.L1473:
.LBE51:
	.loc 1 2961 0
	movl	$0, do_not_record@GOTOFF(%ebx)
	.loc 1 2962 0
	movl	-100(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L1480
	movl	-100(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	jbe	.L1480
	movl	-100(%ebp), %eax
	movl	4(%eax), %edx
	movl	cached_regno@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	jne	.L1483
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L1485
.L1483:
	movl	-100(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	get_cse_reg_info
	movl	%eax, -152(%ebp)
	jmp	.L1486
.L1485:
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	movl	%eax, -152(%ebp)
.L1486:
	movl	-152(%ebp), %edx
	movl	12(%edx), %eax
	addl	$9088, %eax
	movl	%eax, %edx
	andl	$31, %edx
	movl	%edx, -156(%ebp)
	jmp	.L1487
.L1480:
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L1488
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L1488
	movl	$5, -148(%ebp)
	jmp	.L1491
.L1488:
	movl	$4, -148(%ebp)
.L1491:
	movl	-148(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	call	canon_hash
	movl	%eax, %edx
	andl	$31, %edx
	movl	%edx, -156(%ebp)
.L1487:
	movl	-156(%ebp), %eax
	movl	%eax, -72(%ebp)
	.loc 1 2963 0
	movl	do_not_record@GOTOFF(%ebx), %eax
	movl	%eax, -80(%ebp)
	.loc 1 2964 0
	movl	-88(%ebp), %eax
	movl	%eax, do_not_record@GOTOFF(%ebx)
	.loc 1 2965 0
	movl	-84(%ebp), %eax
	movl	%eax, hash_arg_in_memory@GOTOFF(%ebx)
	.loc 1 2967 0
	cmpl	$0, -80(%ebp)
	jne	.L1568
	.loc 1 2970 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L1493
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L1493
	movl	$5, -144(%ebp)
	jmp	.L1496
.L1493:
	movl	$4, -144(%ebp)
.L1496:
	movl	-144(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	-72(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	call	lookup
	movl	%eax, -104(%ebp)
	.loc 1 2988 0
	cmpl	$0, -104(%ebp)
	je	.L1497
	.loc 1 2995 0
	movl	-104(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -96(%ebp)
	jmp	.L1499
.L1500:
	.loc 1 2996 0
	movl	-96(%ebp), %eax
	movb	$0, 46(%eax)
	.loc 1 2995 0
	movl	-96(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -96(%ebp)
.L1499:
	cmpl	$0, -96(%ebp)
	jne	.L1500
	.loc 1 2998 0
	jmp	.L1569
.L1503:
.LBB52:
	.loc 1 3000 0
	movl	12(%ebp), %eax
	movl	(%eax), %edx
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	address_cost@PLT
	movl	%eax, -56(%ebp)
	.loc 1 3001 0
	movl	-104(%ebp), %eax
	movl	32(%eax), %eax
	addl	$1, %eax
	sarl	%eax
	movl	%eax, -52(%ebp)
	.loc 1 3003 0
	movl	-104(%ebp), %eax
	movl	%eax, -44(%ebp)
	.loc 1 3005 0
	movl	$0, -92(%ebp)
	.loc 1 3006 0
	movl	-104(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -96(%ebp)
	jmp	.L1504
.L1505:
	.loc 1 3007 0
	movl	-96(%ebp), %eax
	movzbl	46(%eax), %eax
	testb	%al, %al
	jne	.L1506
	.loc 1 3009 0
	movl	-96(%ebp), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	je	.L1508
	movl	-96(%ebp), %eax
	movl	(%eax), %edx
	movl	-96(%ebp), %eax
	movl	(%eax), %eax
	movl	$0, 12(%esp)
	movl	$1, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	exp_equiv_p
	testl	%eax, %eax
	je	.L1506
.L1508:
	movl	-96(%ebp), %eax
	movl	(%eax), %edx
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	address_cost@PLT
	movl	%eax, -48(%ebp)
	movl	-48(%ebp), %eax
	cmpl	-56(%ebp), %eax
	jl	.L1510
	movl	-48(%ebp), %eax
	cmpl	-56(%ebp), %eax
	jne	.L1506
	movl	-96(%ebp), %eax
	movl	32(%eax), %eax
	addl	$1, %eax
	sarl	%eax
	cmpl	-52(%ebp), %eax
	jle	.L1506
.L1510:
	.loc 1 3015 0
	movl	$1, -92(%ebp)
	.loc 1 3016 0
	movl	-48(%ebp), %eax
	movl	%eax, -56(%ebp)
	.loc 1 3017 0
	movl	-96(%ebp), %eax
	movl	32(%eax), %eax
	addl	$1, %eax
	sarl	%eax
	movl	%eax, -52(%ebp)
	.loc 1 3018 0
	movl	-96(%ebp), %eax
	movl	%eax, -44(%ebp)
.L1506:
	.loc 1 3006 0
	movl	-96(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -96(%ebp)
.L1504:
	cmpl	$0, -96(%ebp)
	jne	.L1505
	.loc 1 3022 0
	cmpl	$0, -92(%ebp)
	je	.L1502
	.loc 1 3024 0
	movl	-44(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	copy_rtx@PLT
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	canon_reg
	movl	$0, 12(%esp)
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	validate_change@PLT
	testl	%eax, %eax
	jne	.L1568
	.loc 1 3029 0
	movl	-44(%ebp), %eax
	movb	$1, 46(%eax)
.L1502:
.L1569:
.LBE52:
	.loc 1 2998 0
	cmpl	$0, -92(%ebp)
	jne	.L1503
.L1497:
	.loc 1 3043 0
	movl	flag_expensive_optimizations@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1568
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$50, %al
	je	.L1517
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$99, %al
	jne	.L1568
.L1517:
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L1568
.LBB53:
	.loc 1 3048 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 3050 0
	movl	$0, do_not_record@GOTOFF(%ebx)
	.loc 1 3051 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L1520
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	jbe	.L1520
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %edx
	movl	cached_regno@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	jne	.L1523
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L1525
.L1523:
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	get_cse_reg_info
	movl	%eax, -136(%ebp)
	jmp	.L1526
.L1525:
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	movl	%eax, -136(%ebp)
.L1526:
	movl	-136(%ebp), %edx
	movl	12(%edx), %eax
	addl	$9088, %eax
	movl	%eax, %edx
	andl	$31, %edx
	movl	%edx, -140(%ebp)
	jmp	.L1527
.L1520:
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L1528
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L1528
	movl	$5, -132(%ebp)
	jmp	.L1531
.L1528:
	movl	$4, -132(%ebp)
.L1531:
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	-132(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	canon_hash
	movl	%eax, %edx
	andl	$31, %edx
	movl	%edx, -140(%ebp)
.L1527:
	movl	-140(%ebp), %eax
	movl	%eax, -72(%ebp)
	.loc 1 3052 0
	movl	-88(%ebp), %eax
	movl	%eax, do_not_record@GOTOFF(%ebx)
	.loc 1 3053 0
	movl	-84(%ebp), %eax
	movl	%eax, hash_arg_in_memory@GOTOFF(%ebx)
	.loc 1 3055 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L1532
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L1532
	movl	$5, -128(%ebp)
	jmp	.L1535
.L1532:
	movl	$4, -128(%ebp)
.L1535:
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %edx
	movl	-128(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-72(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	lookup
	movl	%eax, -104(%ebp)
	.loc 1 3056 0
	cmpl	$0, -104(%ebp)
	je	.L1568
	.loc 1 3064 0
	movl	-104(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -96(%ebp)
	jmp	.L1537
.L1538:
	.loc 1 3065 0
	movl	-96(%ebp), %eax
	movb	$0, 46(%eax)
	.loc 1 3064 0
	movl	-96(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -96(%ebp)
.L1537:
	cmpl	$0, -96(%ebp)
	jne	.L1538
	.loc 1 3067 0
	jmp	.L1570
.L1541:
.LBB54:
	.loc 1 3069 0
	movl	12(%ebp), %eax
	movl	(%eax), %edx
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	address_cost@PLT
	movl	%eax, -36(%ebp)
	.loc 1 3070 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	je	.L1542
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	$57, 4(%esp)
	movl	%eax, (%esp)
	call	notreg_cost
	addl	$1, %eax
	movl	%eax, %edx
	sarl	%edx
	movl	%edx, -124(%ebp)
	jmp	.L1544
.L1542:
	movl	$0, -124(%ebp)
.L1544:
	movl	-124(%ebp), %eax
	movl	%eax, -32(%ebp)
	.loc 1 3071 0
	movl	-104(%ebp), %eax
	movl	%eax, -28(%ebp)
	.loc 1 3072 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 3081 0
	movl	$0, -92(%ebp)
	.loc 1 3082 0
	movl	-104(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -96(%ebp)
	movl	$0, -20(%ebp)
	.loc 1 3083 0
	jmp	.L1545
.L1546:
	.loc 1 3085 0
	movl	-96(%ebp), %eax
	movzbl	46(%eax), %eax
	testb	%al, %al
	jne	.L1547
	movl	-96(%ebp), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	je	.L1549
	movl	-96(%ebp), %eax
	movl	(%eax), %edx
	movl	-96(%ebp), %eax
	movl	(%eax), %eax
	movl	$0, 12(%esp)
	movl	$1, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	exp_equiv_p
	testl	%eax, %eax
	je	.L1547
.L1549:
.LBB55:
	.loc 1 3090 0
	movl	-96(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -120(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L1551
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L1551
	movl	$5, -116(%ebp)
	jmp	.L1554
.L1551:
	movl	$4, -116(%ebp)
.L1554:
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	-40(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-120(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-116(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	simplify_gen_binary@PLT
	movl	%eax, -16(%ebp)
	.loc 1 3092 0
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	address_cost@PLT
	movl	%eax, -12(%ebp)
	.loc 1 3094 0
	movl	-12(%ebp), %eax
	cmpl	-36(%ebp), %eax
	jl	.L1555
	movl	-12(%ebp), %eax
	cmpl	-36(%ebp), %eax
	jne	.L1547
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	je	.L1558
	movl	$57, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	notreg_cost
	addl	$1, %eax
	movl	%eax, %edx
	sarl	%edx
	movl	%edx, -112(%ebp)
	jmp	.L1560
.L1558:
	movl	$0, -112(%ebp)
.L1560:
	movl	-112(%ebp), %eax
	cmpl	-32(%ebp), %eax
	jle	.L1547
.L1555:
	.loc 1 3098 0
	movl	$1, -92(%ebp)
	.loc 1 3099 0
	movl	-12(%ebp), %eax
	movl	%eax, -36(%ebp)
	.loc 1 3100 0
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	je	.L1561
	movl	$57, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	notreg_cost
	addl	$1, %eax
	movl	%eax, %edx
	sarl	%edx
	movl	%edx, -108(%ebp)
	jmp	.L1563
.L1561:
	movl	$0, -108(%ebp)
.L1563:
	movl	-108(%ebp), %eax
	movl	%eax, -32(%ebp)
	.loc 1 3101 0
	movl	-96(%ebp), %eax
	movl	%eax, -28(%ebp)
	.loc 1 3102 0
	movl	-16(%ebp), %eax
	movl	%eax, -24(%ebp)
.L1547:
.LBE55:
	.loc 1 3084 0
	movl	-96(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -96(%ebp)
	addl	$1, -20(%ebp)
.L1545:
	.loc 1 3083 0
	cmpl	$0, -96(%ebp)
	je	.L1564
	cmpl	$31, -20(%ebp)
	jle	.L1546
.L1564:
	.loc 1 3106 0
	cmpl	$0, -92(%ebp)
	je	.L1540
	.loc 1 3108 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_rtx@PLT
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	canon_reg
	movl	$0, 12(%esp)
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	validate_change@PLT
	testl	%eax, %eax
	jne	.L1568
	.loc 1 3113 0
	movl	-28(%ebp), %eax
	movb	$1, 46(%eax)
.L1540:
.L1570:
.LBE54:
	.loc 1 3067 0
	cmpl	$0, -92(%ebp)
	jne	.L1541
.L1568:
.LBE53:
	.loc 1 3118 0
	addl	$192, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE49:
	.size	find_best_addr, .-find_best_addr
	.type	find_comparison_args, @function
find_comparison_args:
.LFB50:
	.loc 1 3137 0
	pushl	%ebp
.LCFI152:
	movl	%esp, %ebp
.LCFI153:
	pushl	%edi
.LCFI154:
	pushl	%esi
.LCFI155:
	pushl	%ebx
.LCFI156:
	subl	$60, %esp
.LCFI157:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3140 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -40(%ebp)
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -36(%ebp)
	.loc 1 3144 0
	jmp	.L1572
.L1573:
.LBB56:
	.loc 1 3147 0
	movl	$0, -32(%ebp)
	.loc 1 3148 0
	movl	$0, -28(%ebp)
	.loc 1 3149 0
	movl	$0, -24(%ebp)
	.loc 1 3156 0
	movl	-40(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$84, %ax
	jne	.L1574
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	cmpl	-36(%ebp), %eax
	jne	.L1574
	.loc 1 3157 0
	movl	-40(%ebp), %eax
	movl	%eax, -32(%ebp)
	.loc 1 3156 0
	jmp	.L1577
.L1574:
	.loc 1 3162 0
	movl	-40(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$60, %al
	jne	.L1577
	.loc 1 3168 0
	cmpl	$112, 8(%ebp)
	jne	.L1579
	.loc 1 3177 0
	movl	-40(%ebp), %eax
	movl	%eax, -32(%ebp)
	jmp	.L1577
.L1579:
	.loc 1 3178 0
	cmpl	$113, 8(%ebp)
	jne	.L1577
	.loc 1 3187 0
	movl	-40(%ebp), %eax
	movl	%eax, -32(%ebp)
	movl	$1, -28(%ebp)
.L1577:
	.loc 1 3196 0
	cmpl	$0, -32(%ebp)
	jne	.L1582
	.loc 1 3199 0
	movl	-40(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %esi
	movl	-40(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	safe_hash
	andl	$31, %eax
	movl	%esi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	lookup
	movl	%eax, -24(%ebp)
.L1582:
	.loc 1 3201 0
	cmpl	$0, -24(%ebp)
	je	.L1587
	.loc 1 3203 0
	movl	-24(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 3213 0
	movl	-24(%ebp), %eax
	movzbl	45(%eax), %eax
	testb	%al, %al
	jne	.L1586
	.loc 1 3217 0
	jmp	.L1587
.L1588:
.LBB57:
	.loc 1 3219 0
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -20(%ebp)
	.loc 1 3225 0
	movl	-24(%ebp), %eax
	movl	(%eax), %edx
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	movl	$0, 12(%esp)
	movl	$1, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	exp_equiv_p
	testl	%eax, %eax
	je	.L1589
	.loc 1 3228 0
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$84, %ax
	je	.L1591
	cmpl	$112, 8(%ebp)
	je	.L1593
	cmpl	$117, 8(%ebp)
	jne	.L1595
	movl	-20(%ebp), %eax
	movl	mode_class@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$1, %eax
	jne	.L1595
	movl	-20(%ebp), %eax
	movl	mode_bitsize@GOT(%ebx), %edx
	movzwl	(%edx,%eax,2), %eax
	cmpw	$64, %ax
	ja	.L1595
	movl	-20(%ebp), %edx
	movl	mode_bitsize@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	leal	-1(%eax), %ecx
	movl	$1, %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L1636
	movl	%esi, %edi
	xorl	%esi, %esi
.L1636:
	movl	%esi, %eax
	andl	$1, %eax
	movl	%edi, %edx
	andl	$0, %edx
	testl	%eax, %eax
	je	.L1595
.L1593:
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$60, %al
	jne	.L1595
.L1591:
	.loc 1 3253 0
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 3254 0
	jmp	.L1599
.L1595:
	.loc 1 3256 0
	cmpl	$113, 8(%ebp)
	je	.L1600
	cmpl	$114, 8(%ebp)
	jne	.L1602
	movl	-20(%ebp), %eax
	movl	mode_class@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$1, %eax
	jne	.L1602
	movl	-20(%ebp), %eax
	movl	mode_bitsize@GOT(%ebx), %edx
	movzwl	(%edx,%eax,2), %eax
	cmpw	$64, %ax
	ja	.L1602
	movl	-20(%ebp), %edx
	movl	mode_bitsize@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	leal	-1(%eax), %ecx
	movl	$1, %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L1635
	movl	%esi, %edi
	xorl	%esi, %esi
.L1635:
	movl	%esi, %eax
	andl	$1, %eax
	movl	%edi, %edx
	andl	$0, %edx
	testl	%eax, %eax
	je	.L1602
.L1600:
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$60, %al
	jne	.L1602
	.loc 1 3273 0
	movl	$1, -28(%ebp)
	.loc 1 3274 0
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 3275 0
	jmp	.L1599
.L1602:
	.loc 1 3280 0
	movl	-24(%ebp), %eax
	movl	(%eax), %edx
	movl	global_rtl@GOT(%ebx), %eax
	movl	12(%eax), %eax
	cmpl	%eax, %edx
	je	.L1607
	movl	-24(%ebp), %eax
	movl	(%eax), %edx
	movl	global_rtl@GOT(%ebx), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	je	.L1607
	movl	-24(%ebp), %eax
	movl	(%eax), %edx
	movl	global_rtl@GOT(%ebx), %eax
	movl	28(%eax), %eax
	cmpl	%eax, %edx
	je	.L1607
	movl	-24(%ebp), %eax
	movl	(%eax), %edx
	movl	global_rtl@GOT(%ebx), %eax
	movl	24(%eax), %eax
	cmpl	%eax, %edx
	je	.L1607
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$85, %ax
	jne	.L1612
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L1612
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %edx
	movl	global_rtl@GOT(%ebx), %eax
	movl	12(%eax), %eax
	cmpl	%eax, %edx
	je	.L1607
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %edx
	movl	global_rtl@GOT(%ebx), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	je	.L1607
	movl	-24(%ebp), %eax
	movl	(%eax), %edx
	movl	global_rtl@GOT(%ebx), %eax
	movl	20(%eax), %eax
	cmpl	%eax, %edx
	jne	.L1617
	movl	fixed_regs@GOT(%ebx), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L1607
.L1617:
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %edx
	movl	global_rtl@GOT(%ebx), %eax
	movl	28(%eax), %eax
	cmpl	%eax, %edx
	je	.L1607
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %edx
	movl	global_rtl@GOT(%ebx), %eax
	movl	24(%eax), %eax
	cmpl	%eax, %edx
	je	.L1607
.L1612:
	movl	-24(%ebp), %eax
	movl	(%eax), %edx
	movl	global_rtl@GOT(%ebx), %eax
	movl	8(%eax), %eax
	cmpl	%eax, %edx
	je	.L1607
	movl	-24(%ebp), %eax
	movl	(%eax), %edx
	movl	global_rtl@GOT(%ebx), %eax
	movl	32(%eax), %eax
	cmpl	%eax, %edx
	je	.L1607
	movl	-24(%ebp), %eax
	movl	(%eax), %edx
	movl	global_rtl@GOT(%ebx), %eax
	movl	36(%eax), %eax
	cmpl	%eax, %edx
	je	.L1607
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$85, %ax
	jne	.L1623
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L1623
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %edx
	movl	global_rtl@GOT(%ebx), %eax
	movl	8(%eax), %eax
	cmpl	%eax, %edx
	je	.L1607
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %edx
	movl	global_rtl@GOT(%ebx), %eax
	movl	32(%eax), %eax
	cmpl	%eax, %edx
	je	.L1607
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %edx
	movl	global_rtl@GOT(%ebx), %eax
	movl	36(%eax), %eax
	cmpl	%eax, %edx
	je	.L1607
.L1623:
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$80, %ax
	jne	.L1589
.L1607:
	.loc 1 3282 0
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -40(%ebp)
.L1589:
.LBE57:
	.loc 1 3217 0
	movl	-24(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -24(%ebp)
.L1587:
	cmpl	$0, -24(%ebp)
	jne	.L1588
.L1599:
	.loc 1 3289 0
	cmpl	$0, -32(%ebp)
	je	.L1586
	.loc 1 3295 0
	cmpl	$0, -28(%ebp)
	je	.L1629
.LBB58:
	.loc 1 3297 0
	movl	$0, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	reversed_comparison_code@PLT
	movl	%eax, -16(%ebp)
	.loc 1 3298 0
	cmpl	$0, -16(%ebp)
	je	.L1586
	.loc 1 3301 0
	movl	-16(%ebp), %eax
	movl	%eax, 8(%ebp)
	jmp	.L1632
.L1629:
.LBE58:
	.loc 1 3303 0
	movl	-32(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$60, %al
	jne	.L1632
	.loc 1 3304 0
	movl	-32(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, 8(%ebp)
.L1632:
	.loc 1 3305 0
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -40(%ebp)
	movl	-32(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -36(%ebp)
.L1572:
.LBE56:
	.loc 1 3144 0
	movl	-40(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	const_tiny_rtx@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	-36(%ebp), %eax
	je	.L1573
.L1586:
	.loc 1 3310 0
	movl	-40(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	20(%ebp), %eax
	movl	%edx, (%eax)
	movl	-36(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	24(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 3311 0
	movl	$0, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	fold_rtx
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	movl	$0, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	fold_rtx
	movl	%eax, %edx
	movl	16(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 3313 0
	movl	8(%ebp), %eax
	.loc 1 3314 0
	addl	$60, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE50:
	.size	find_comparison_args, .-find_comparison_args
.globl __moddi3
.globl __divdi3
	.type	fold_rtx, @function
fold_rtx:
.LFB51:
	.loc 1 3333 0
	pushl	%ebp
.LCFI158:
	movl	%esp, %ebp
.LCFI159:
	pushl	%edi
.LCFI160:
	pushl	%esi
.LCFI161:
	pushl	%ebx
.LCFI162:
	subl	$716, %esp
.LCFI163:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3338 0
	movl	$0, -260(%ebp)
	.loc 1 3339 0
	movl	$0, -256(%ebp)
	.loc 1 3340 0
	movl	$0, -252(%ebp)
	.loc 1 3356 0
	cmpl	$0, 8(%ebp)
	jne	.L1638
	.loc 1 3357 0
	movl	8(%ebp), %eax
	movl	%eax, -668(%ebp)
	jmp	.L1640
.L1638:
	.loc 1 3359 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -272(%ebp)
	.loc 1 3360 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -276(%ebp)
	.loc 1 3361 0
	movl	-276(%ebp), %edx
	subl	$3, %edx
	movl	%edx, -672(%ebp)
	cmpl	$93, -672(%ebp)
	ja	.L1641
	movl	-672(%ebp), %eax
	sall	$2, %eax
	movl	.L1649@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L1649:
	.long	.L1642@GOTOFF
	.long	.L1641@GOTOFF
	.long	.L1641@GOTOFF
	.long	.L1641@GOTOFF
	.long	.L1641@GOTOFF
	.long	.L1641@GOTOFF
	.long	.L1641@GOTOFF
	.long	.L1641@GOTOFF
	.long	.L1641@GOTOFF
	.long	.L1641@GOTOFF
	.long	.L1641@GOTOFF
	.long	.L1641@GOTOFF
	.long	.L1641@GOTOFF
	.long	.L1641@GOTOFF
	.long	.L1641@GOTOFF
	.long	.L1641@GOTOFF
	.long	.L1641@GOTOFF
	.long	.L1641@GOTOFF
	.long	.L1641@GOTOFF
	.long	.L1641@GOTOFF
	.long	.L1641@GOTOFF
	.long	.L1641@GOTOFF
	.long	.L1641@GOTOFF
	.long	.L1641@GOTOFF
	.long	.L1641@GOTOFF
	.long	.L1641@GOTOFF
	.long	.L1641@GOTOFF
	.long	.L1641@GOTOFF
	.long	.L1641@GOTOFF
	.long	.L1641@GOTOFF
	.long	.L1641@GOTOFF
	.long	.L1641@GOTOFF
	.long	.L1641@GOTOFF
	.long	.L1641@GOTOFF
	.long	.L1641@GOTOFF
	.long	.L1641@GOTOFF
	.long	.L1641@GOTOFF
	.long	.L1641@GOTOFF
	.long	.L1641@GOTOFF
	.long	.L1641@GOTOFF
	.long	.L1641@GOTOFF
	.long	.L1641@GOTOFF
	.long	.L1641@GOTOFF
	.long	.L1641@GOTOFF
	.long	.L1641@GOTOFF
	.long	.L1641@GOTOFF
	.long	.L1641@GOTOFF
	.long	.L1641@GOTOFF
	.long	.L1643@GOTOFF
	.long	.L1641@GOTOFF
	.long	.L1641@GOTOFF
	.long	.L1641@GOTOFF
	.long	.L1641@GOTOFF
	.long	.L1641@GOTOFF
	.long	.L1641@GOTOFF
	.long	.L1641@GOTOFF
	.long	.L1641@GOTOFF
	.long	.L1644@GOTOFF
	.long	.L1641@GOTOFF
	.long	.L1641@GOTOFF
	.long	.L1641@GOTOFF
	.long	.L1642@GOTOFF
	.long	.L1642@GOTOFF
	.long	.L1642@GOTOFF
	.long	.L1641@GOTOFF
	.long	.L1642@GOTOFF
	.long	.L1645@GOTOFF
	.long	.L1641@GOTOFF
	.long	.L1642@GOTOFF
	.long	.L1641@GOTOFF
	.long	.L1646@GOTOFF
	.long	.L1641@GOTOFF
	.long	.L1641@GOTOFF
	.long	.L1647@GOTOFF
	.long	.L1642@GOTOFF
	.long	.L1642@GOTOFF
	.long	.L1641@GOTOFF
	.long	.L1642@GOTOFF
	.long	.L1641@GOTOFF
	.long	.L1641@GOTOFF
	.long	.L1641@GOTOFF
	.long	.L1641@GOTOFF
	.long	.L1641@GOTOFF
	.long	.L1641@GOTOFF
	.long	.L1648@GOTOFF
	.long	.L1641@GOTOFF
	.long	.L1641@GOTOFF
	.long	.L1641@GOTOFF
	.long	.L1641@GOTOFF
	.long	.L1641@GOTOFF
	.long	.L1641@GOTOFF
	.long	.L1641@GOTOFF
	.long	.L1641@GOTOFF
	.long	.L1648@GOTOFF
	.text
.L1642:
	.loc 1 3378 0
	movl	8(%ebp), %ecx
	movl	%ecx, -668(%ebp)
	jmp	.L1640
.L1645:
	.loc 1 3389 0
	cmpl	$0, 12(%ebp)
	je	.L1641
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L1641
.LBB59:
	.loc 1 3391 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	next_nonnote_insn@PLT
	movl	%eax, -236(%ebp)
	.loc 1 3393 0
	cmpl	$0, -236(%ebp)
	je	.L1641
	movl	-236(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$46, %ax
	jne	.L1641
	movl	-236(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L1641
	movl	-236(%ebp), %eax
	movl	20(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L1641
	movl	-236(%ebp), %eax
	movl	20(%eax), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$54, %ax
	je	.L1657
	movl	-236(%ebp), %eax
	movl	20(%eax), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$55, %ax
	jne	.L1641
.L1657:
	.loc 1 3398 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L1659
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L1659
	movl	$5, -664(%ebp)
	jmp	.L1662
.L1659:
	movl	$4, -664(%ebp)
.L1662:
	movl	-236(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-664(%ebp), %esi
	movl	%esi, 4(%esp)
	movl	$77, (%esp)
	call	gen_rtx_fmt_u00@PLT
	movl	%eax, -668(%ebp)
	jmp	.L1640
.L1646:
.LBE59:
	.loc 1 3404 0
	movl	$64, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	lookup_as_function
	movl	%eax, -260(%ebp)
	cmpl	$0, -260(%ebp)
	jne	.L1663
	movl	$65, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	lookup_as_function
	movl	%eax, -260(%ebp)
	cmpl	$0, -260(%ebp)
	je	.L1665
.L1663:
	.loc 1 3406 0
	movl	-260(%ebp), %edi
	movl	%edi, -668(%ebp)
	jmp	.L1640
.L1665:
	.loc 1 3416 0
	movl	-272(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %ecx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	%al, %cl
	jbe	.L1666
.LBB60:
	.loc 1 3418 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -232(%ebp)
	.loc 1 3421 0
	movl	-272(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -660(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L1668
	movl	$8, -656(%ebp)
	jmp	.L1670
.L1668:
	movl	$4, -656(%ebp)
.L1670:
	movl	-656(%ebp), %eax
	cmpl	%eax, -660(%ebp)
	jg	.L1671
	movl	-232(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -652(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L1673
	movl	$8, -648(%ebp)
	jmp	.L1675
.L1673:
	movl	$4, -648(%ebp)
.L1675:
	movl	-648(%ebp), %edx
	cmpl	%edx, -652(%ebp)
	jg	.L1671
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L1677
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	jbe	.L1677
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %edx
	movl	cached_regno@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	jne	.L1680
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L1682
.L1680:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	get_cse_reg_info
	movl	%eax, -640(%ebp)
	jmp	.L1683
.L1682:
	movl	cached_cse_reg_info@GOTOFF(%ebx), %ecx
	movl	%ecx, -640(%ebp)
.L1683:
	movl	-640(%ebp), %esi
	movl	12(%esi), %eax
	addl	$9088, %eax
	movl	%eax, %edi
	andl	$31, %edi
	movl	%edi, -644(%ebp)
	jmp	.L1684
.L1677:
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	-232(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	canon_hash
	movl	%eax, %edx
	andl	$31, %edx
	movl	%edx, -644(%ebp)
.L1684:
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	-232(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-644(%ebp), %ecx
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	lookup
	movl	%eax, -228(%ebp)
	cmpl	$0, -228(%ebp)
	je	.L1671
	.loc 1 3425 0
	movl	-228(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -228(%ebp)
	jmp	.L1686
.L1687:
	.loc 1 3427 0
	movl	-228(%ebp), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	je	.L1688
	movl	-228(%ebp), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	je	.L1688
	movl	-228(%ebp), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L1688
	movl	-228(%ebp), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	je	.L1688
	movl	-228(%ebp), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	je	.L1688
	movl	-228(%ebp), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$144, %ax
	je	.L1688
	movl	-228(%ebp), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$66, %ax
	je	.L1688
	movl	-228(%ebp), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$150, %ax
	jne	.L1696
.L1688:
	movl	-228(%ebp), %eax
	movl	(%eax), %eax
	movzbl	2(%eax), %eax
	testb	%al, %al
	jne	.L1696
	.loc 1 3429 0
	movl	-228(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -668(%ebp)
	jmp	.L1640
.L1696:
	.loc 1 3431 0
	movl	-228(%ebp), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L1698
	movl	-228(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	cmpl	-272(%ebp), %eax
	jne	.L1698
	movl	-228(%ebp), %eax
	movl	(%eax), %edx
	movl	-228(%ebp), %eax
	movl	(%eax), %eax
	movl	$0, 12(%esp)
	movl	$1, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	exp_equiv_p
	testl	%eax, %eax
	je	.L1698
	.loc 1 3434 0
	movl	-228(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	copy_rtx@PLT
	movl	%eax, -668(%ebp)
	jmp	.L1640
.L1698:
	.loc 1 3425 0
	movl	-228(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -228(%ebp)
.L1686:
	cmpl	$0, -228(%ebp)
	jne	.L1687
.L1671:
	.loc 1 3437 0
	movl	8(%ebp), %esi
	movl	%esi, -668(%ebp)
	jmp	.L1640
.L1666:
.LBE60:
	.loc 1 3444 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fold_rtx
	movl	%eax, -280(%ebp)
	.loc 1 3445 0
	movl	-280(%ebp), %eax
	movl	%eax, (%esp)
	call	equiv_constant
	movl	%eax, -248(%ebp)
	.loc 1 3446 0
	cmpl	$0, -248(%ebp)
	je	.L1702
	.loc 1 3447 0
	movl	-248(%ebp), %eax
	movl	%eax, -280(%ebp)
.L1702:
	.loc 1 3449 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	-280(%ebp), %eax
	cmpl	%eax, %edx
	je	.L1704
	.loc 1 3451 0
	movl	8(%ebp), %eax
	movl	12(%eax), %ecx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	-280(%ebp), %edx
	movl	%ecx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-272(%ebp), %eax
	movl	%eax, (%esp)
	call	simplify_subreg@PLT
	movl	%eax, -260(%ebp)
	.loc 1 3453 0
	cmpl	$0, -260(%ebp)
	je	.L1704
	.loc 1 3454 0
	movl	-260(%ebp), %edi
	movl	%edi, -668(%ebp)
	jmp	.L1640
.L1704:
	.loc 1 3472 0
	movl	-280(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L1707
	movl	-272(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %ecx
	movl	-280(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	%al, %cl
	jae	.L1707
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	subreg_lowpart_p@PLT
	testl	%eax, %eax
	je	.L1707
.LBB61:
	.loc 1 3480 0
	movl	-280(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -636(%ebp)
	movl	-280(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L1711
	movl	-280(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	jbe	.L1711
	movl	-280(%ebp), %eax
	movl	4(%eax), %edx
	movl	cached_regno@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	jne	.L1714
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L1716
.L1714:
	movl	-280(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	get_cse_reg_info
	movl	%eax, -628(%ebp)
	jmp	.L1717
.L1716:
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	movl	%eax, -628(%ebp)
.L1717:
	movl	-628(%ebp), %edx
	movl	12(%edx), %eax
	addl	$9088, %eax
	movl	%eax, %ecx
	andl	$31, %ecx
	movl	%ecx, -632(%ebp)
	jmp	.L1718
.L1711:
	movl	-280(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	-280(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	canon_hash
	movl	%eax, %esi
	andl	$31, %esi
	movl	%esi, -632(%ebp)
.L1718:
	movl	-280(%ebp), %eax
	movl	-636(%ebp), %edi
	movl	%edi, 8(%esp)
	movl	-632(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	lookup
	movl	%eax, -224(%ebp)
	.loc 1 3484 0
	cmpl	$0, -224(%ebp)
	je	.L1721
	.loc 1 3485 0
	movl	-224(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -224(%ebp)
	.loc 1 3487 0
	jmp	.L1721
.L1722:
.LBB62:
	.loc 1 3489 0
	movl	-224(%ebp), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -220(%ebp)
	.loc 1 3492 0
	movl	-224(%ebp), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$49, %al
	jne	.L1723
	movl	-224(%ebp), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$130, %ax
	je	.L1723
	movl	-224(%ebp), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$131, %ax
	je	.L1723
	movl	-224(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L1723
	movl	-224(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	cmpl	-272(%ebp), %eax
	jne	.L1723
	movl	-272(%ebp), %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %ecx
	movl	-224(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	%eax, %ecx
	jne	.L1723
.LBB63:
	.loc 1 3500 0
	movl	-224(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -216(%ebp)
	.loc 1 3502 0
	movl	-216(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	je	.L1730
	movl	-216(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	je	.L1730
	movl	-216(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	je	.L1730
	movl	-216(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L1730
	movl	-216(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	je	.L1730
	movl	-216(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	je	.L1730
	movl	-216(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$144, %ax
	je	.L1730
	movl	-216(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$66, %ax
	je	.L1730
	movl	-216(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$150, %ax
	je	.L1730
	.loc 1 3503 0
	movl	$0, 4(%esp)
	movl	-216(%ebp), %eax
	movl	%eax, (%esp)
	call	fold_rtx
	movl	%eax, -216(%ebp)
.L1730:
	.loc 1 3505 0
	movl	-216(%ebp), %eax
	movl	%eax, (%esp)
	call	equiv_constant
	movl	%eax, -216(%ebp)
	.loc 1 3506 0
	cmpl	$0, -216(%ebp)
	je	.L1742
	.loc 1 3507 0
	movl	-224(%ebp), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	-272(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-216(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-272(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	simplify_unary_operation@PLT
	movl	%eax, -260(%ebp)
	.loc 1 3492 0
	jmp	.L1742
.L1723:
.LBE63:
	.loc 1 3510 0
	movl	-224(%ebp), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$50, %al
	je	.L1743
	movl	-224(%ebp), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$99, %al
	jne	.L1745
.L1743:
	cmpl	$89, -220(%ebp)
	je	.L1745
	cmpl	$90, -220(%ebp)
	je	.L1745
	cmpl	$91, -220(%ebp)
	je	.L1745
	cmpl	$92, -220(%ebp)
	je	.L1745
	cmpl	$99, -220(%ebp)
	je	.L1745
	cmpl	$100, -220(%ebp)
	je	.L1745
	cmpl	$98, -220(%ebp)
	je	.L1745
	cmpl	$101, -220(%ebp)
	je	.L1745
	movl	-224(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L1754
	movl	-224(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	cmpl	-272(%ebp), %eax
	je	.L1756
.L1754:
	movl	-224(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	je	.L1756
	movl	-224(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	je	.L1756
	movl	-224(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L1756
	movl	-224(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	je	.L1756
	movl	-224(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	je	.L1756
	movl	-224(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$144, %ax
	je	.L1756
	movl	-224(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$66, %ax
	je	.L1756
	movl	-224(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$150, %ax
	jne	.L1745
.L1756:
	movl	-224(%ebp), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L1764
	movl	-224(%ebp), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	cmpl	-272(%ebp), %eax
	je	.L1766
.L1764:
	movl	-224(%ebp), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	je	.L1766
	movl	-224(%ebp), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	je	.L1766
	movl	-224(%ebp), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L1766
	movl	-224(%ebp), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	je	.L1766
	movl	-224(%ebp), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	je	.L1766
	movl	-224(%ebp), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$144, %ax
	je	.L1766
	movl	-224(%ebp), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$66, %ax
	je	.L1766
	movl	-224(%ebp), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$150, %ax
	jne	.L1745
.L1766:
.LBB64:
	.loc 1 3525 0
	movl	-224(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-272(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_lowpart_common@PLT
	movl	%eax, -212(%ebp)
	.loc 1 3526 0
	movl	-224(%ebp), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-272(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_lowpart_common@PLT
	movl	%eax, -208(%ebp)
	.loc 1 3528 0
	cmpl	$0, -212(%ebp)
	je	.L1774
	movl	-212(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	je	.L1774
	movl	-212(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	je	.L1774
	movl	-212(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	je	.L1774
	movl	-212(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L1774
	movl	-212(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	je	.L1774
	movl	-212(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	je	.L1774
	movl	-212(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$144, %ax
	je	.L1774
	movl	-212(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$66, %ax
	je	.L1774
	movl	-212(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$150, %ax
	je	.L1774
	.loc 1 3529 0
	movl	$0, 4(%esp)
	movl	-212(%ebp), %eax
	movl	%eax, (%esp)
	call	fold_rtx
	movl	%eax, -212(%ebp)
.L1774:
	.loc 1 3531 0
	cmpl	$0, -212(%ebp)
	je	.L1785
	.loc 1 3532 0
	movl	-212(%ebp), %eax
	movl	%eax, (%esp)
	call	equiv_constant
	movl	%eax, -212(%ebp)
.L1785:
	.loc 1 3534 0
	cmpl	$0, -208(%ebp)
	je	.L1787
	movl	-208(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	je	.L1787
	movl	-208(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	je	.L1787
	movl	-208(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	je	.L1787
	movl	-208(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L1787
	movl	-208(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	je	.L1787
	movl	-208(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	je	.L1787
	movl	-208(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$144, %ax
	je	.L1787
	movl	-208(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$66, %ax
	je	.L1787
	movl	-208(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$150, %ax
	je	.L1787
	.loc 1 3535 0
	movl	$0, 4(%esp)
	movl	-208(%ebp), %eax
	movl	%eax, (%esp)
	call	fold_rtx
	movl	%eax, -208(%ebp)
.L1787:
	.loc 1 3537 0
	cmpl	$0, -208(%ebp)
	je	.L1798
	.loc 1 3538 0
	movl	-208(%ebp), %eax
	movl	%eax, (%esp)
	call	equiv_constant
	movl	%eax, -208(%ebp)
.L1798:
	.loc 1 3544 0
	cmpl	$0, -212(%ebp)
	je	.L1800
	cmpl	$0, -208(%ebp)
	je	.L1800
	movl	-224(%ebp), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$97, %ax
	jne	.L1800
	movl	-208(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L1800
	movl	-208(%ebp), %eax
	movl	4(%eax), %esi
	movl	8(%eax), %edi
	movl	%esi, -624(%ebp)
	movl	%edi, -620(%ebp)
	movl	-272(%ebp), %edx
	movl	mode_bitsize@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	movl	%eax, -616(%ebp)
	movl	-616(%ebp), %edi
	movl	%edi, -616(%ebp)
	movl	$0, -612(%ebp)
	movl	-612(%ebp), %eax
	cmpl	%eax, -620(%ebp)
	jl	.L1800
	movl	-612(%ebp), %edx
	cmpl	%edx, -620(%ebp)
	jg	.L1806
	movl	-616(%ebp), %ecx
	cmpl	%ecx, -624(%ebp)
	jb	.L1800
.L1806:
	.loc 1 3549 0
	movl	-208(%ebp), %eax
	movl	4(%eax), %esi
	movl	8(%eax), %edi
	movl	%esi, -608(%ebp)
	movl	%edi, -604(%ebp)
	movl	-224(%ebp), %eax
	movl	(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_bitsize@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	movl	%eax, -600(%ebp)
	movl	-600(%ebp), %edi
	movl	%edi, -600(%ebp)
	movl	$0, -596(%ebp)
	movl	-596(%ebp), %eax
	cmpl	%eax, -604(%ebp)
	jg	.L1807
	movl	-596(%ebp), %edx
	cmpl	%edx, -604(%ebp)
	jl	.L1809
	movl	-600(%ebp), %ecx
	cmpl	%ecx, -608(%ebp)
	jae	.L1807
.L1809:
	.loc 1 3555 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	%eax, -260(%ebp)
	jmp	.L1742
.L1807:
	.loc 1 3559 0
	movl	$0, -260(%ebp)
	.loc 1 3544 0
	jmp	.L1742
.L1800:
	.loc 1 3561 0
	cmpl	$0, -212(%ebp)
	je	.L1742
	cmpl	$0, -208(%ebp)
	je	.L1742
	.loc 1 3562 0
	movl	-224(%ebp), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	-208(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-212(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-272(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	simplify_binary_operation@PLT
	movl	%eax, -260(%ebp)
	.loc 1 3510 0
	jmp	.L1742
.L1745:
.LBE64:
	.loc 1 3566 0
	movl	-224(%ebp), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L1742
	movl	-224(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	cmpl	-272(%ebp), %eax
	jne	.L1742
	movl	-280(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -588(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L1816
	movl	$8, -584(%ebp)
	jmp	.L1818
.L1816:
	movl	$4, -584(%ebp)
.L1818:
	movl	-584(%ebp), %esi
	cmpl	%esi, -588(%ebp)
	jg	.L1742
	movl	-224(%ebp), %eax
	movl	(%eax), %edx
	movl	-224(%ebp), %eax
	movl	(%eax), %eax
	movl	$0, 12(%esp)
	movl	$1, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	exp_equiv_p
	testl	%eax, %eax
	je	.L1742
	.loc 1 3571 0
	movl	-224(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	copy_rtx@PLT
	movl	%eax, -260(%ebp)
.L1742:
	.loc 1 3573 0
	cmpl	$0, -260(%ebp)
	je	.L1821
	.loc 1 3574 0
	movl	-260(%ebp), %edi
	movl	%edi, -668(%ebp)
	jmp	.L1640
.L1821:
.LBE62:
	.loc 1 3487 0
	movl	-224(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -224(%ebp)
.L1721:
	cmpl	$0, -224(%ebp)
	jne	.L1722
.L1707:
.LBE61:
	.loc 1 3578 0
	movl	8(%ebp), %eax
	movl	%eax, -668(%ebp)
	jmp	.L1640
.L1648:
	.loc 1 3584 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	-276(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	lookup_as_function
	movl	%eax, -260(%ebp)
	.loc 1 3585 0
	cmpl	$0, -260(%ebp)
	je	.L1641
	.loc 1 3586 0
	movl	-260(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	copy_rtx@PLT
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fold_rtx
	movl	%eax, -668(%ebp)
	jmp	.L1640
.L1647:
	.loc 1 3593 0
	cmpl	$0, 12(%ebp)
	je	.L1825
	.loc 1 3594 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	8(%ebp), %edx
	addl	$4, %edx
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	find_best_addr
.L1825:
.LBB65:
	.loc 1 3599 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	fold_rtx
	movl	%eax, -204(%ebp)
	.loc 1 3600 0
	movl	$0, -200(%ebp)
	.loc 1 3601 0
	movl	$0, -304(%ebp)
	movl	$0, -300(%ebp)
	.loc 1 3603 0
	movl	-204(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L1827
	movl	-204(%ebp), %eax
	movl	4(%eax), %edx
	movl	cached_regno@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	jne	.L1829
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L1831
.L1829:
	movl	-204(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	get_cse_reg_info
	movl	%eax, -580(%ebp)
	jmp	.L1832
.L1831:
	movl	cached_cse_reg_info@GOTOFF(%ebx), %edx
	movl	%edx, -580(%ebp)
.L1832:
	movl	-580(%ebp), %ecx
	movl	12(%ecx), %edx
	movl	-204(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	je	.L1827
.LBB66:
	.loc 1 3606 0
	movl	-204(%ebp), %eax
	movl	4(%eax), %edx
	movl	cached_regno@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	jne	.L1834
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L1836
.L1834:
	movl	-204(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	get_cse_reg_info
	movl	%eax, -576(%ebp)
	jmp	.L1837
.L1836:
	movl	cached_cse_reg_info@GOTOFF(%ebx), %esi
	movl	%esi, -576(%ebp)
.L1837:
	movl	-576(%ebp), %edi
	movl	12(%edi), %eax
	movl	%eax, -196(%ebp)
	.loc 1 3607 0
	movl	-196(%ebp), %eax
	sall	$5, %eax
	movl	%eax, %edx
	movl	qty_table@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -192(%ebp)
	.loc 1 3609 0
	movl	-204(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	-192(%ebp), %eax
	movl	24(%eax), %eax
	cmpl	%eax, %edx
	jne	.L1827
	movl	-192(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1827
	.loc 1 3611 0
	movl	-192(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -204(%ebp)
.L1827:
.LBE66:
	.loc 1 3615 0
	movl	-204(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	je	.L1840
	movl	-204(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	jne	.L1842
.L1840:
	.loc 1 3616 0
	movl	-204(%ebp), %eax
	movl	%eax, -200(%ebp)
	.loc 1 3615 0
	jmp	.L1843
.L1842:
	.loc 1 3617 0
	movl	-204(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	jne	.L1844
	movl	-204(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$85, %ax
	jne	.L1844
	movl	-204(%ebp), %eax
	movl	4(%eax), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L1844
	.loc 1 3620 0
	movl	-204(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -200(%ebp)
	.loc 1 3621 0
	movl	-204(%ebp), %eax
	movl	4(%eax), %eax
	movl	12(%eax), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, -304(%ebp)
	movl	%edx, -300(%ebp)
	.loc 1 3617 0
	jmp	.L1843
.L1844:
	.loc 1 3623 0
	movl	-204(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$145, %ax
	jne	.L1848
	movl	-204(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	jne	.L1848
	.loc 1 3625 0
	movl	-204(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -200(%ebp)
	.loc 1 3623 0
	jmp	.L1843
.L1848:
	.loc 1 3626 0
	movl	-204(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$80, %ax
	jne	.L1843
	.loc 1 3627 0
	movl	-204(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	change_address@PLT
	movl	%eax, -668(%ebp)
	jmp	.L1640
.L1843:
	.loc 1 3631 0
	cmpl	$0, -200(%ebp)
	je	.L1852
	movl	-200(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	jne	.L1852
	movl	-200(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L1852
.LBB67:
	.loc 1 3634 0
	movl	-200(%ebp), %eax
	movl	%eax, (%esp)
	call	get_pool_constant@PLT
	movl	%eax, -188(%ebp)
	.loc 1 3635 0
	movl	-200(%ebp), %eax
	movl	%eax, (%esp)
	call	get_pool_mode@PLT
	movl	%eax, -184(%ebp)
	.loc 1 3638 0
	movl	-188(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	je	.L1856
	movl	-188(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	je	.L1856
	movl	-188(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L1856
	movl	-188(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	je	.L1856
	movl	-188(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	je	.L1856
	movl	-188(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$144, %ax
	je	.L1856
	movl	-188(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$66, %ax
	je	.L1856
	movl	-188(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$150, %ax
	jne	.L1864
.L1856:
	movl	-188(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L1864
	.loc 1 3639 0
	movl	-188(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	je	.L1866
	movl	$57, 4(%esp)
	movl	-188(%ebp), %eax
	movl	%eax, (%esp)
	call	notreg_cost
	movl	%eax, -572(%ebp)
	jmp	.L1868
.L1866:
	movl	$0, -572(%ebp)
.L1868:
	movl	-572(%ebp), %eax
	movl	%eax, constant_pool_entries_cost@GOTOFF(%ebx)
.L1864:
	.loc 1 3642 0
	movl	-304(%ebp), %eax
	orl	-300(%ebp), %eax
	testl	%eax, %eax
	jne	.L1869
	movl	-272(%ebp), %eax
	cmpl	-184(%ebp), %eax
	jne	.L1869
	.loc 1 3643 0
	movl	-188(%ebp), %edx
	movl	%edx, -668(%ebp)
	jmp	.L1640
.L1869:
	.loc 1 3650 0
	movl	-188(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	je	.L1872
	movl	-188(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	je	.L1872
	movl	-188(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L1872
	movl	-188(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	je	.L1872
	movl	-188(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	je	.L1872
	movl	-188(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$144, %ax
	je	.L1872
	movl	-188(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$66, %ax
	je	.L1872
	movl	-188(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$150, %ax
	je	.L1872
	.loc 1 3651 0
	movl	8(%ebp), %ecx
	movl	%ecx, -668(%ebp)
	jmp	.L1640
.L1872:
	.loc 1 3653 0
	movl	-272(%ebp), %eax
	movl	mode_class@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$1, %eax
	jne	.L1881
	movl	-272(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -568(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L1883
	movl	$8, -564(%ebp)
	jmp	.L1885
.L1883:
	movl	$4, -564(%ebp)
.L1885:
	movl	-564(%ebp), %esi
	cmpl	%esi, -568(%ebp)
	jne	.L1881
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L1887
	movl	$8, -560(%ebp)
	movl	$0, -556(%ebp)
	jmp	.L1889
.L1887:
	movl	$4, -560(%ebp)
	movl	$0, -556(%ebp)
.L1889:
	movl	-304(%ebp), %eax
	movl	-300(%ebp), %edx
	movl	-560(%ebp), %esi
	movl	-556(%ebp), %edi
	movl	%esi, 8(%esp)
	movl	%edi, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	__moddi3@PLT
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L1881
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L1891
	movl	$8, -552(%ebp)
	movl	$0, -548(%ebp)
	jmp	.L1893
.L1891:
	movl	$4, -552(%ebp)
	movl	$0, -548(%ebp)
.L1893:
	movl	-552(%ebp), %eax
	movl	-548(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	-304(%ebp), %eax
	movl	-300(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	__divdi3@PLT
	movl	%eax, %edx
	movl	-184(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-188(%ebp), %eax
	movl	%eax, (%esp)
	call	operand_subword@PLT
	movl	%eax, -180(%ebp)
	cmpl	$0, -180(%ebp)
	je	.L1881
	.loc 1 3659 0
	movl	-180(%ebp), %edx
	movl	%edx, -668(%ebp)
	jmp	.L1640
.L1881:
	.loc 1 3661 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$65536, %eax
	testl	%eax, %eax
	je	.L1895
	movl	-188(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	subl	$1, %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%edx, %ecx
	xorl	-300(%ebp), %ecx
	xorl	-304(%ebp), %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	je	.L1897
.L1895:
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$65536, %eax
	testl	%eax, %eax
	jne	.L1852
	movl	-304(%ebp), %eax
	orl	-300(%ebp), %eax
	testl	%eax, %eax
	jne	.L1852
.L1897:
	movl	-188(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-272(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_lowpart_if_possible@PLT
	movl	%eax, -180(%ebp)
	cmpl	$0, -180(%ebp)
	je	.L1852
	.loc 1 3665 0
	movl	-180(%ebp), %ecx
	movl	%ecx, -668(%ebp)
	jmp	.L1640
.L1852:
.LBE67:
	.loc 1 3670 0
	cmpl	$0, -200(%ebp)
	je	.L1900
	movl	-200(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	jne	.L1900
.LBB68:
	.loc 1 3672 0
	movl	-200(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -176(%ebp)
	.loc 1 3673 0
	movl	-176(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -172(%ebp)
	.loc 1 3675 0
	cmpl	$0, -172(%ebp)
	je	.L1903
	movl	-172(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L1903
	movl	-172(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$54, %ax
	jne	.L1903
.LBB69:
	.loc 1 3678 0
	movl	-172(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -168(%ebp)
	.loc 1 3680 0
	cmpl	$0, -300(%ebp)
	js	.L1903
	movl	-168(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %ecx
	movzbl	%cl, %eax
	movl	$0, %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	-304(%ebp), %eax
	movl	-300(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	__divdi3@PLT
	movl	%eax, -544(%ebp)
	movl	%edx, -540(%ebp)
	movl	-168(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -536(%ebp)
	movl	%eax, %esi
	sarl	$31, %esi
	movl	%esi, -532(%ebp)
	movl	-532(%ebp), %edi
	cmpl	%edi, -540(%ebp)
	jg	.L1903
	movl	-532(%ebp), %eax
	cmpl	%eax, -540(%ebp)
	jl	.L1909
	movl	-536(%ebp), %edx
	cmpl	%edx, -544(%ebp)
	jae	.L1903
.L1909:
	.loc 1 3683 0
	movl	-168(%ebp), %eax
	movl	4(%eax), %esi
	movl	-168(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %ecx
	movzbl	%cl, %eax
	movl	$0, %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	-304(%ebp), %eax
	movl	-300(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	__divdi3@PLT
	movl	4(%esi,%eax,4), %eax
	movl	%eax, -668(%ebp)
	jmp	.L1640
.L1903:
.LBE69:
	.loc 1 3686 0
	cmpl	$0, -172(%ebp)
	je	.L1900
	movl	-172(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L1900
	movl	-172(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$55, %ax
	jne	.L1900
.LBB70:
	.loc 1 3689 0
	movl	-172(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -164(%ebp)
	.loc 1 3691 0
	cmpl	$0, -300(%ebp)
	js	.L1900
	movl	-164(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %ecx
	movzbl	%cl, %eax
	movl	$0, %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	-304(%ebp), %eax
	movl	-300(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	__divdi3@PLT
	movl	%eax, -528(%ebp)
	movl	%edx, -524(%ebp)
	movl	-164(%ebp), %eax
	movl	12(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -520(%ebp)
	movl	%eax, %ecx
	sarl	$31, %ecx
	movl	%ecx, -516(%ebp)
	movl	-516(%ebp), %esi
	cmpl	%esi, -524(%ebp)
	jg	.L1900
	movl	-516(%ebp), %edi
	cmpl	%edi, -524(%ebp)
	jl	.L1915
	movl	-520(%ebp), %eax
	cmpl	%eax, -528(%ebp)
	jae	.L1900
.L1915:
	.loc 1 3695 0
	movl	-164(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %ecx
	movzbl	%cl, %eax
	movl	$0, %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	-304(%ebp), %eax
	movl	-300(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	__divdi3@PLT
	movl	%eax, -304(%ebp)
	movl	%edx, -300(%ebp)
	.loc 1 3696 0
	movl	-164(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -508(%ebp)
	movl	-164(%ebp), %eax
	movl	12(%eax), %ecx
	movl	-304(%ebp), %eax
	movl	-300(%ebp), %edx
	movl	4(%ecx,%eax,4), %eax
	movl	%eax, -504(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L1916
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L1916
	movl	$5, -500(%ebp)
	jmp	.L1919
.L1916:
	movl	$4, -500(%ebp)
.L1919:
	movl	-508(%ebp), %edx
	movl	%edx, 12(%esp)
	movl	-504(%ebp), %ecx
	movl	%ecx, 8(%esp)
	movl	-500(%ebp), %esi
	movl	%esi, 4(%esp)
	movl	$86, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, -260(%ebp)
	.loc 1 3699 0
	movl	-164(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -496(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L1920
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L1920
	movl	$5, -492(%ebp)
	jmp	.L1923
.L1920:
	movl	$4, -492(%ebp)
.L1923:
	movl	-492(%ebp), %edi
	cmpl	%edi, -496(%ebp)
	je	.L1924
	.loc 1 3700 0
	movl	-164(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	-260(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$132, (%esp)
	call	gen_rtx_fmt_e@PLT
	movl	%eax, -260(%ebp)
.L1924:
	.loc 1 3710 0
	movl	-260(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	-260(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$68, (%esp)
	call	gen_rtx_fmt_e@PLT
	movl	%eax, -668(%ebp)
	jmp	.L1640
.L1900:
.LBE70:
.LBE68:
	.loc 1 3715 0
	movl	8(%ebp), %eax
	movl	%eax, -668(%ebp)
	jmp	.L1640
.L1644:
.LBE65:
	.loc 1 3720 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	je	.L1926
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	je	.L1926
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L1926
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	je	.L1926
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	je	.L1926
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$144, %ax
	je	.L1926
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$66, %ax
	je	.L1926
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$150, %ax
	jne	.L1641
.L1926:
	.loc 1 3721 0
	movl	8(%ebp), %edx
	movl	%edx, -668(%ebp)
	jmp	.L1640
.L1643:
	.loc 1 3726 0
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	(%eax), %eax
	subl	$1, %eax
	movl	%eax, -264(%ebp)
	jmp	.L1935
.L1936:
	.loc 1 3727 0
	movl	8(%ebp), %eax
	movl	28(%eax), %edx
	movl	-264(%ebp), %eax
	movl	4(%edx,%eax,4), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fold_rtx
	movl	%eax, %ecx
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	leal	4(%eax), %edx
	movl	-264(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	$0, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	validate_change@PLT
	.loc 1 3726 0
	subl	$1, -264(%ebp)
.L1935:
	cmpl	$0, -264(%ebp)
	jns	.L1936
.L1641:
	.loc 1 3735 0
	movl	$0, -248(%ebp)
	.loc 1 3736 0
	movl	$0, -244(%ebp)
	.loc 1 3737 0
	movl	$0, -240(%ebp)
	.loc 1 3738 0
	movl	$0, -288(%ebp)
	.loc 1 3743 0
	movl	-276(%ebp), %edx
	movl	rtx_format@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -268(%ebp)
	.loc 1 3744 0
	movl	-276(%ebp), %edx
	movl	rtx_length@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	subl	$1, %eax
	movl	%eax, -264(%ebp)
	jmp	.L1937
.L1938:
	.loc 1 3745 0
	movl	-264(%ebp), %eax
	addl	-268(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$101, %al
	jne	.L1976
.LBB71:
	.loc 1 3747 0
	movl	-264(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	%eax, -160(%ebp)
	.loc 1 3748 0
	movl	-160(%ebp), %eax
	movl	%eax, -156(%ebp)
	movl	$0, -152(%ebp)
	.loc 1 3749 0
	movl	-160(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -148(%ebp)
	.loc 1 3753 0
	movl	-264(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	je	.L1941
	movl	-264(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %edx
	movl	-276(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	notreg_cost
	movl	%eax, -488(%ebp)
	jmp	.L1943
.L1941:
	movl	$0, -488(%ebp)
.L1943:
	movl	-488(%ebp), %ecx
	movl	%ecx, -132(%ebp)
	.loc 1 3756 0
	movl	-160(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	subl	$64, %eax
	movl	%eax, -676(%ebp)
	cmpl	$14, -676(%ebp)
	ja	.L1944
	movl	$1, %eax
	movl	%eax, %esi
	movzbl	-676(%ebp), %ecx
	sall	%cl, %esi
	movl	%esi, -680(%ebp)
	movl	-680(%ebp), %eax
	andl	$24599, %eax
	testl	%eax, %eax
	jne	.L1945
	movl	-680(%ebp), %eax
	andl	$128, %eax
	testl	%eax, %eax
	jne	.L1946
	jmp	.L1944
.L1946:
	.loc 1 3761 0
	movl	-160(%ebp), %eax
	movl	4(%eax), %edx
	movl	cached_regno@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	jne	.L1947
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L1949
.L1947:
	movl	-160(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	get_cse_reg_info
	movl	%eax, -484(%ebp)
	jmp	.L1950
.L1949:
	movl	cached_cse_reg_info@GOTOFF(%ebx), %edi
	movl	%edi, -484(%ebp)
.L1950:
	movl	-484(%ebp), %eax
	movl	12(%eax), %edx
	movl	-160(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	je	.L1960
.LBB72:
	.loc 1 3763 0
	movl	-160(%ebp), %eax
	movl	4(%eax), %edx
	movl	cached_regno@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	jne	.L1953
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L1955
.L1953:
	movl	-160(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	get_cse_reg_info
	movl	%eax, -480(%ebp)
	jmp	.L1956
.L1955:
	movl	cached_cse_reg_info@GOTOFF(%ebx), %edx
	movl	%edx, -480(%ebp)
.L1956:
	movl	-480(%ebp), %ecx
	movl	12(%ecx), %eax
	movl	%eax, -128(%ebp)
	.loc 1 3764 0
	movl	-128(%ebp), %eax
	sall	$5, %eax
	movl	%eax, %edx
	movl	qty_table@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -124(%ebp)
	.loc 1 3766 0
	movl	-124(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1960
	movl	-124(%ebp), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	je	.L1960
	movl	-124(%ebp), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$85, %ax
	je	.L1960
	.loc 1 3769 0
	movl	-124(%ebp), %eax
	movl	(%eax), %edx
	movl	-160(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	gen_lowpart_if_possible@PLT
	movl	%eax, -152(%ebp)
	.loc 1 3773 0
	jmp	.L1960
.L1945:
.LBE72:
	.loc 1 3781 0
	movl	-160(%ebp), %eax
	movl	%eax, -152(%ebp)
	.loc 1 3782 0
	jmp	.L1960
.L1944:
	.loc 1 3793 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-160(%ebp), %eax
	movl	%eax, (%esp)
	call	fold_rtx
	movl	%eax, -156(%ebp)
	.loc 1 3794 0
	movl	-156(%ebp), %eax
	movl	%eax, (%esp)
	call	equiv_constant
	movl	%eax, -152(%ebp)
.L1960:
	.loc 1 3799 0
	movl	-264(%ebp), %esi
	movl	%esi, -684(%ebp)
	cmpl	$1, -684(%ebp)
	je	.L1963
	cmpl	$2, -684(%ebp)
	je	.L1964
	cmpl	$0, -684(%ebp)
	je	.L1962
	jmp	.L1961
.L1962:
	.loc 1 3802 0
	movl	-156(%ebp), %eax
	movl	%eax, -280(%ebp)
	.loc 1 3803 0
	movl	-152(%ebp), %eax
	movl	%eax, -248(%ebp)
	.loc 1 3804 0
	movl	-148(%ebp), %eax
	movl	%eax, -288(%ebp)
	.loc 1 3805 0
	jmp	.L1961
.L1963:
	.loc 1 3807 0
	movl	-156(%ebp), %eax
	movl	%eax, -284(%ebp)
	.loc 1 3808 0
	movl	-152(%ebp), %eax
	movl	%eax, -244(%ebp)
	.loc 1 3809 0
	jmp	.L1961
.L1964:
	.loc 1 3811 0
	movl	-152(%ebp), %eax
	movl	%eax, -240(%ebp)
.L1961:
	.loc 1 3817 0
	cmpl	$0, -152(%ebp)
	je	.L1965
	movl	-152(%ebp), %eax
	cmpl	-156(%ebp), %eax
	je	.L1965
	movl	-152(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	je	.L1968
	movl	-276(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-152(%ebp), %eax
	movl	%eax, (%esp)
	call	notreg_cost
	movl	%eax, -476(%ebp)
	jmp	.L1970
.L1968:
	movl	$0, -476(%ebp)
.L1970:
	movl	-156(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	je	.L1971
	movl	-276(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-156(%ebp), %eax
	movl	%eax, (%esp)
	call	notreg_cost
	movl	%eax, -472(%ebp)
	jmp	.L1973
.L1971:
	movl	$0, -472(%ebp)
.L1973:
	movl	-472(%ebp), %edi
	cmpl	%edi, -476(%ebp)
	jle	.L1974
.L1965:
	.loc 1 3819 0
	movl	-156(%ebp), %eax
	movl	%eax, -144(%ebp)
	movl	-152(%ebp), %eax
	movl	%eax, -140(%ebp)
	.loc 1 3817 0
	jmp	.L1975
.L1974:
	.loc 1 3821 0
	movl	-152(%ebp), %eax
	movl	%eax, -144(%ebp)
	movl	-156(%ebp), %eax
	movl	%eax, -140(%ebp)
.L1975:
	.loc 1 3829 0
	movl	-264(%ebp), %eax
	movl	8(%ebp), %edx
	movl	4(%edx,%eax,8), %eax
	cmpl	-144(%ebp), %eax
	je	.L1976
	.loc 1 3832 0
	cmpl	$0, 12(%ebp)
	jne	.L1978
	cmpl	$0, -256(%ebp)
	jne	.L1978
	.loc 1 3834 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_rtx@PLT
	movl	%eax, 8(%ebp)
	.loc 1 3835 0
	movl	$1, -256(%ebp)
.L1978:
	.loc 1 3839 0
	movl	-144(%ebp), %eax
	movl	%eax, -312(%ebp)
	.loc 1 3840 0
	movl	-140(%ebp), %eax
	movl	%eax, -308(%ebp)
	.loc 1 3842 0
	movl	$0, -136(%ebp)
	jmp	.L1981
.L1982:
.LBB73:
	.loc 1 3844 0
	movl	-136(%ebp), %eax
	movl	-312(%ebp,%eax,4), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	je	.L1983
	movl	-136(%ebp), %eax
	movl	-312(%ebp,%eax,4), %edx
	movl	-276(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	notreg_cost
	movl	%eax, -468(%ebp)
	jmp	.L1985
.L1983:
	movl	$0, -468(%ebp)
.L1985:
	movl	-468(%ebp), %eax
	movl	%eax, -120(%ebp)
	.loc 1 3848 0
	movl	-120(%ebp), %eax
	cmpl	-132(%ebp), %eax
	jg	.L1976
	movl	-120(%ebp), %eax
	cmpl	-132(%ebp), %eax
	jne	.L1988
	movl	-264(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	je	.L1976
	movl	-264(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	je	.L1976
	movl	-264(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L1976
	movl	-264(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	je	.L1976
	movl	-264(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	je	.L1976
	movl	-264(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movzwl	(%eax), %eax
	cmpw	$144, %ax
	je	.L1976
	movl	-264(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movzwl	(%eax), %eax
	cmpw	$66, %ax
	je	.L1976
	movl	-264(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movzwl	(%eax), %eax
	cmpw	$150, %ax
	je	.L1976
.L1988:
	.loc 1 3852 0
	movl	-136(%ebp), %eax
	movl	-312(%ebp,%eax,4), %edx
	movl	-264(%ebp), %eax
	sall	$3, %eax
	addl	8(%ebp), %eax
	addl	$4, %eax
	movl	$0, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	validate_change@PLT
	testl	%eax, %eax
	jne	.L1976
	.loc 1 3855 0
	cmpl	$112, -276(%ebp)
	je	.L1998
	cmpl	$113, -276(%ebp)
	je	.L1998
	movl	-276(%ebp), %eax
	movl	rtx_class@GOT(%ebx), %edx
	movzbl	(%edx,%eax), %eax
	cmpb	$99, %al
	je	.L1998
	cmpl	$129, -276(%ebp)
	je	.L1998
	cmpl	$124, -276(%ebp)
	je	.L1998
	cmpl	$123, -276(%ebp)
	je	.L1998
	cmpl	$122, -276(%ebp)
	jne	.L2005
.L1998:
	.loc 1 3859 0
	movl	$1, %eax
	movl	%eax, %edx
	subl	-264(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %edx
	movl	-264(%ebp), %eax
	sall	$3, %eax
	addl	8(%ebp), %eax
	addl	$4, %eax
	movl	$1, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	validate_change@PLT
	.loc 1 3860 0
	movl	-136(%ebp), %eax
	movl	-312(%ebp,%eax,4), %edx
	movl	$1, %eax
	subl	-264(%ebp), %eax
	sall	$3, %eax
	addl	8(%ebp), %eax
	addl	$4, %eax
	movl	$1, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	validate_change@PLT
	.loc 1 3862 0
	call	apply_change_group@PLT
	testl	%eax, %eax
	je	.L2005
.LBB74:
	.loc 1 3868 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -116(%ebp)
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 3869 0
	movl	8(%ebp), %edx
	movl	-116(%ebp), %eax
	movl	%eax, 12(%edx)
	.loc 1 3870 0
	movl	$1, -252(%ebp)
	.loc 1 3871 0
	jmp	.L1976
.L2005:
.LBE74:
.LBE73:
	.loc 1 3842 0
	addl	$1, -136(%ebp)
.L1981:
	cmpl	$1, -136(%ebp)
	jg	.L1976
	movl	-136(%ebp), %eax
	movl	-312(%ebp,%eax,4), %eax
	testl	%eax, %eax
	jne	.L1982
.L1976:
.LBE71:
	.loc 1 3744 0
	subl	$1, -264(%ebp)
.L1937:
	cmpl	$0, -264(%ebp)
	jns	.L1938
	.loc 1 3889 0
	cmpl	$113, -276(%ebp)
	je	.L2009
	cmpl	$112, -276(%ebp)
	je	.L2009
	movl	-276(%ebp), %eax
	movl	rtx_class@GOT(%ebx), %edx
	movzbl	(%edx,%eax), %eax
	cmpb	$99, %al
	je	.L2009
	cmpl	$129, -276(%ebp)
	je	.L2009
	cmpl	$124, -276(%ebp)
	je	.L2009
	cmpl	$123, -276(%ebp)
	je	.L2009
	cmpl	$122, -276(%ebp)
	jne	.L2016
.L2009:
	.loc 1 3893 0
	cmpl	$0, -252(%ebp)
	jne	.L2017
	cmpl	$0, -248(%ebp)
	je	.L2016
	cmpl	$0, -244(%ebp)
	je	.L2017
	movl	-248(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L2016
	movl	-244(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L2016
.L2017:
.LBB75:
	.loc 1 3898 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -112(%ebp)
	.loc 1 3900 0
	cmpl	$0, 12(%ebp)
	jne	.L2022
	cmpl	$0, -256(%ebp)
	jne	.L2022
	.loc 1 3902 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_rtx@PLT
	movl	%eax, 8(%ebp)
	.loc 1 3903 0
	movl	$1, -256(%ebp)
.L2022:
	.loc 1 3906 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	8(%ebp), %edx
	addl	$4, %edx
	movl	$1, 12(%esp)
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	validate_change@PLT
	.loc 1 3907 0
	movl	8(%ebp), %edx
	addl	$12, %edx
	movl	$1, 12(%esp)
	movl	-112(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	validate_change@PLT
	.loc 1 3908 0
	call	apply_change_group@PLT
	testl	%eax, %eax
	je	.L2016
	.loc 1 3910 0
	movl	-248(%ebp), %eax
	movl	%eax, -112(%ebp)
	movl	-244(%ebp), %eax
	movl	%eax, -248(%ebp)
	movl	-112(%ebp), %eax
	movl	%eax, -244(%ebp)
	.loc 1 3911 0
	movl	-280(%ebp), %eax
	movl	%eax, -112(%ebp)
	movl	-284(%ebp), %eax
	movl	%eax, -280(%ebp)
	movl	-112(%ebp), %eax
	movl	%eax, -284(%ebp)
.L2016:
.LBE75:
	.loc 1 3918 0
	movl	-276(%ebp), %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	subl	$49, %eax
	movl	%eax, -688(%ebp)
	cmpl	$71, -688(%ebp)
	ja	.L2026
	movl	-688(%ebp), %eax
	sall	$2, %eax
	movl	.L2033@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L2033:
	.long	.L2027@GOTOFF
	.long	.L2028@GOTOFF
	.long	.L2029@GOTOFF
	.long	.L2026@GOTOFF
	.long	.L2026@GOTOFF
	.long	.L2026@GOTOFF
	.long	.L2026@GOTOFF
	.long	.L2026@GOTOFF
	.long	.L2026@GOTOFF
	.long	.L2026@GOTOFF
	.long	.L2026@GOTOFF
	.long	.L2030@GOTOFF
	.long	.L2026@GOTOFF
	.long	.L2026@GOTOFF
	.long	.L2026@GOTOFF
	.long	.L2026@GOTOFF
	.long	.L2026@GOTOFF
	.long	.L2026@GOTOFF
	.long	.L2026@GOTOFF
	.long	.L2026@GOTOFF
	.long	.L2026@GOTOFF
	.long	.L2026@GOTOFF
	.long	.L2026@GOTOFF
	.long	.L2026@GOTOFF
	.long	.L2026@GOTOFF
	.long	.L2026@GOTOFF
	.long	.L2026@GOTOFF
	.long	.L2026@GOTOFF
	.long	.L2026@GOTOFF
	.long	.L2026@GOTOFF
	.long	.L2026@GOTOFF
	.long	.L2026@GOTOFF
	.long	.L2026@GOTOFF
	.long	.L2026@GOTOFF
	.long	.L2026@GOTOFF
	.long	.L2026@GOTOFF
	.long	.L2026@GOTOFF
	.long	.L2026@GOTOFF
	.long	.L2026@GOTOFF
	.long	.L2026@GOTOFF
	.long	.L2026@GOTOFF
	.long	.L2026@GOTOFF
	.long	.L2026@GOTOFF
	.long	.L2026@GOTOFF
	.long	.L2026@GOTOFF
	.long	.L2026@GOTOFF
	.long	.L2026@GOTOFF
	.long	.L2026@GOTOFF
	.long	.L2026@GOTOFF
	.long	.L2029@GOTOFF
	.long	.L2028@GOTOFF
	.long	.L2026@GOTOFF
	.long	.L2026@GOTOFF
	.long	.L2026@GOTOFF
	.long	.L2026@GOTOFF
	.long	.L2026@GOTOFF
	.long	.L2026@GOTOFF
	.long	.L2026@GOTOFF
	.long	.L2026@GOTOFF
	.long	.L2026@GOTOFF
	.long	.L2026@GOTOFF
	.long	.L2026@GOTOFF
	.long	.L2031@GOTOFF
	.long	.L2026@GOTOFF
	.long	.L2026@GOTOFF
	.long	.L2026@GOTOFF
	.long	.L2026@GOTOFF
	.long	.L2026@GOTOFF
	.long	.L2026@GOTOFF
	.long	.L2026@GOTOFF
	.long	.L2026@GOTOFF
	.long	.L2032@GOTOFF
	.text
.L2027:
.LBB76:
	.loc 1 3922 0
	movl	$0, -108(%ebp)
	.loc 1 3926 0
	cmpl	$131, -276(%ebp)
	je	.L2034
	cmpl	$130, -276(%ebp)
	jne	.L2036
.L2034:
	movl	-288(%ebp), %eax
	testl	%eax, %eax
	je	.L2026
.L2036:
	.loc 1 3932 0
	cmpl	$0, -248(%ebp)
	je	.L2037
	movl	-248(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	jne	.L2037
	.loc 1 3933 0
	movl	$1, -108(%ebp)
	movl	-248(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -248(%ebp)
.L2037:
	.loc 1 3935 0
	movl	-288(%ebp), %edx
	movl	%edx, -464(%ebp)
	cmpl	$0, -248(%ebp)
	je	.L2040
	movl	-248(%ebp), %ecx
	movl	%ecx, -460(%ebp)
	jmp	.L2042
.L2040:
	movl	-280(%ebp), %esi
	movl	%esi, -460(%ebp)
.L2042:
	movl	-464(%ebp), %edi
	movl	%edi, 12(%esp)
	movl	-460(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-272(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-276(%ebp), %eax
	movl	%eax, (%esp)
	call	simplify_unary_operation@PLT
	movl	%eax, -260(%ebp)
	.loc 1 3938 0
	cmpl	$0, -260(%ebp)
	je	.L2026
	cmpl	$0, -108(%ebp)
	je	.L2026
	.loc 1 3939 0
	movl	-260(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-272(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$68, (%esp)
	call	gen_rtx_fmt_e@PLT
	movl	%eax, -260(%ebp)
	.loc 1 3941 0
	jmp	.L2026
.L2030:
.LBE76:
	.loc 1 3949 0
	cmpl	$0, -248(%ebp)
	je	.L2046
	cmpl	$0, -244(%ebp)
	jne	.L2048
.L2046:
.LBB77:
	.loc 1 3952 0
	movl	const_true_rtx@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -96(%ebp)
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	%eax, -92(%ebp)
	.loc 1 3964 0
	leal	-292(%ebp), %eax
	movl	%eax, 16(%esp)
	leal	-288(%ebp), %eax
	movl	%eax, 12(%esp)
	leal	-284(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-280(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-276(%ebp), %eax
	movl	%eax, (%esp)
	call	find_comparison_args
	movl	%eax, -276(%ebp)
	.loc 1 3966 0
	movl	-280(%ebp), %eax
	movl	%eax, (%esp)
	call	equiv_constant
	movl	%eax, -248(%ebp)
	.loc 1 3967 0
	movl	-284(%ebp), %eax
	movl	%eax, (%esp)
	call	equiv_constant
	movl	%eax, -244(%ebp)
	.loc 1 3973 0
	movl	-288(%ebp), %eax
	testl	%eax, %eax
	je	.L2026
	movl	-288(%ebp), %eax
	movl	%eax, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$4, %eax
	je	.L2026
	.loc 1 3979 0
	cmpl	$0, -248(%ebp)
	je	.L2051
	cmpl	$0, -244(%ebp)
	jne	.L2048
.L2051:
	.loc 1 3984 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	cmpl	-244(%ebp), %eax
	jne	.L2053
	movl	global_rtl@GOT(%ebx), %eax
	movl	12(%eax), %edx
	movl	-280(%ebp), %eax
	cmpl	%eax, %edx
	je	.L2055
	movl	global_rtl@GOT(%ebx), %eax
	movl	16(%eax), %edx
	movl	-280(%ebp), %eax
	cmpl	%eax, %edx
	je	.L2055
	movl	global_rtl@GOT(%ebx), %eax
	movl	28(%eax), %edx
	movl	-280(%ebp), %eax
	cmpl	%eax, %edx
	je	.L2055
	movl	global_rtl@GOT(%ebx), %eax
	movl	24(%eax), %edx
	movl	-280(%ebp), %eax
	cmpl	%eax, %edx
	je	.L2055
	movl	-280(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$85, %ax
	jne	.L2060
	movl	-280(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L2060
	movl	-280(%ebp), %eax
	movl	4(%eax), %edx
	movl	global_rtl@GOT(%ebx), %eax
	movl	12(%eax), %eax
	cmpl	%eax, %edx
	je	.L2055
	movl	-280(%ebp), %eax
	movl	4(%eax), %edx
	movl	global_rtl@GOT(%ebx), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	je	.L2055
	movl	global_rtl@GOT(%ebx), %eax
	movl	20(%eax), %edx
	movl	-280(%ebp), %eax
	cmpl	%eax, %edx
	jne	.L2065
	movl	fixed_regs@GOT(%ebx), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L2055
.L2065:
	movl	-280(%ebp), %eax
	movl	4(%eax), %edx
	movl	global_rtl@GOT(%ebx), %eax
	movl	28(%eax), %eax
	cmpl	%eax, %edx
	je	.L2055
	movl	-280(%ebp), %eax
	movl	4(%eax), %edx
	movl	global_rtl@GOT(%ebx), %eax
	movl	24(%eax), %eax
	cmpl	%eax, %edx
	je	.L2055
.L2060:
	movl	global_rtl@GOT(%ebx), %eax
	movl	8(%eax), %edx
	movl	-280(%ebp), %eax
	cmpl	%eax, %edx
	je	.L2055
	movl	global_rtl@GOT(%ebx), %eax
	movl	32(%eax), %edx
	movl	-280(%ebp), %eax
	cmpl	%eax, %edx
	je	.L2055
	movl	global_rtl@GOT(%ebx), %eax
	movl	36(%eax), %edx
	movl	-280(%ebp), %eax
	cmpl	%eax, %edx
	je	.L2055
	movl	-280(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$85, %ax
	jne	.L2071
	movl	-280(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L2071
	movl	-280(%ebp), %eax
	movl	4(%eax), %edx
	movl	global_rtl@GOT(%ebx), %eax
	movl	8(%eax), %eax
	cmpl	%eax, %edx
	je	.L2055
	movl	-280(%ebp), %eax
	movl	4(%eax), %edx
	movl	global_rtl@GOT(%ebx), %eax
	movl	32(%eax), %eax
	cmpl	%eax, %edx
	je	.L2055
	movl	-280(%ebp), %eax
	movl	4(%eax), %edx
	movl	global_rtl@GOT(%ebx), %eax
	movl	36(%eax), %eax
	cmpl	%eax, %edx
	je	.L2055
.L2071:
	movl	-280(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$80, %ax
	je	.L2055
	movl	-280(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	je	.L2055
	movl	-280(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	jne	.L2053
.L2055:
	.loc 1 3993 0
	cmpl	$113, -276(%ebp)
	jne	.L2078
	.loc 1 3994 0
	movl	-92(%ebp), %edx
	movl	%edx, -668(%ebp)
	jmp	.L1640
.L2078:
	.loc 1 3995 0
	cmpl	$112, -276(%ebp)
	jne	.L2053
	.loc 1 3996 0
	movl	-96(%ebp), %ecx
	movl	%ecx, -668(%ebp)
	jmp	.L1640
.L2053:
	.loc 1 4001 0
	movl	-280(%ebp), %edx
	movl	-284(%ebp), %eax
	cmpl	%eax, %edx
	je	.L2081
	movl	-280(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L2083
	movl	-284(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L2083
	movl	-280(%ebp), %eax
	movl	4(%eax), %edx
	movl	cached_regno@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	jne	.L2086
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L2088
.L2086:
	movl	-280(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	get_cse_reg_info
	movl	%eax, -456(%ebp)
	jmp	.L2089
.L2088:
	movl	cached_cse_reg_info@GOTOFF(%ebx), %esi
	movl	%esi, -456(%ebp)
.L2089:
	movl	-456(%ebp), %edi
	movl	12(%edi), %edi
	movl	%edi, -452(%ebp)
	movl	-284(%ebp), %eax
	movl	4(%eax), %edx
	movl	cached_regno@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	jne	.L2090
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L2092
.L2090:
	movl	-284(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	get_cse_reg_info
	movl	%eax, -448(%ebp)
	jmp	.L2093
.L2092:
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	movl	%eax, -448(%ebp)
.L2093:
	movl	-448(%ebp), %edx
	movl	12(%edx), %eax
	cmpl	%eax, -452(%ebp)
	je	.L2081
.L2083:
	movl	-288(%ebp), %esi
	movl	-288(%ebp), %eax
	movl	-280(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	safe_hash
	andl	$31, %eax
	movl	-280(%ebp), %edx
	movl	%esi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	lookup
	movl	%eax, -104(%ebp)
	cmpl	$0, -104(%ebp)
	je	.L2094
	movl	-288(%ebp), %esi
	movl	-288(%ebp), %eax
	movl	-284(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	safe_hash
	andl	$31, %eax
	movl	-284(%ebp), %edx
	movl	%esi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	lookup
	movl	%eax, -100(%ebp)
	cmpl	$0, -100(%ebp)
	je	.L2094
	movl	-104(%ebp), %eax
	movl	24(%eax), %edx
	movl	-100(%ebp), %eax
	movl	24(%eax), %eax
	cmpl	%eax, %edx
	jne	.L2094
.L2081:
	.loc 1 4015 0
	movl	-288(%ebp), %eax
	movl	%eax, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$2, %eax
	je	.L2097
	movl	-288(%ebp), %eax
	movl	%eax, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$6, %eax
	je	.L2097
	movl	-288(%ebp), %eax
	movl	%eax, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$8, %eax
	jne	.L2100
.L2097:
	movl	flag_finite_math_only@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2101
.L2100:
	.loc 1 4016 0
	cmpl	$113, -276(%ebp)
	je	.L2102
	cmpl	$116, -276(%ebp)
	je	.L2102
	cmpl	$114, -276(%ebp)
	je	.L2102
	cmpl	$120, -276(%ebp)
	je	.L2102
	cmpl	$118, -276(%ebp)
	je	.L2102
	cmpl	$124, -276(%ebp)
	je	.L2102
	cmpl	$127, -276(%ebp)
	je	.L2102
	cmpl	$125, -276(%ebp)
	je	.L2102
	cmpl	$123, -276(%ebp)
	jne	.L2111
.L2102:
	movl	-96(%ebp), %ecx
	movl	%ecx, -444(%ebp)
	jmp	.L2112
.L2111:
	movl	-92(%ebp), %esi
	movl	%esi, -444(%ebp)
.L2112:
	movl	-444(%ebp), %edi
	movl	%edi, -668(%ebp)
	jmp	.L1640
.L2101:
	.loc 1 4022 0
	cmpl	$124, -276(%ebp)
	je	.L2113
	cmpl	$127, -276(%ebp)
	je	.L2113
	cmpl	$125, -276(%ebp)
	jne	.L2116
.L2113:
	.loc 1 4023 0
	movl	-96(%ebp), %eax
	movl	%eax, -668(%ebp)
	jmp	.L1640
.L2116:
	.loc 1 4024 0
	cmpl	$129, -276(%ebp)
	je	.L2117
	cmpl	$117, -276(%ebp)
	je	.L2117
	cmpl	$115, -276(%ebp)
	jne	.L2048
.L2117:
	.loc 1 4025 0
	movl	-92(%ebp), %edx
	movl	%edx, -668(%ebp)
	jmp	.L1640
.L2094:
	.loc 1 4031 0
	movl	-280(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L2048
.LBB78:
	.loc 1 4033 0
	movl	-280(%ebp), %eax
	movl	4(%eax), %edx
	movl	cached_regno@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	jne	.L2122
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L2124
.L2122:
	movl	-280(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	get_cse_reg_info
	movl	%eax, -440(%ebp)
	jmp	.L2125
.L2124:
	movl	cached_cse_reg_info@GOTOFF(%ebx), %ecx
	movl	%ecx, -440(%ebp)
.L2125:
	movl	-440(%ebp), %esi
	movl	12(%esi), %eax
	movl	%eax, -88(%ebp)
	.loc 1 4035 0
	movl	-280(%ebp), %eax
	movl	4(%eax), %edx
	movl	cached_regno@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	jne	.L2126
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L2128
.L2126:
	movl	-280(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	get_cse_reg_info
	movl	%eax, -436(%ebp)
	jmp	.L2129
.L2128:
	movl	cached_cse_reg_info@GOTOFF(%ebx), %edi
	movl	%edi, -436(%ebp)
.L2129:
	movl	-436(%ebp), %eax
	movl	12(%eax), %edx
	movl	-280(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	je	.L2048
.LBB79:
	.loc 1 4037 0
	movl	-88(%ebp), %eax
	sall	$5, %eax
	movl	%eax, %edx
	movl	qty_table@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -84(%ebp)
	.loc 1 4039 0
	movl	-84(%ebp), %eax
	movl	28(%eax), %edx
	movl	-276(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	comparison_dominates_p@PLT
	testl	%eax, %eax
	jne	.L2131
	movl	-288(%ebp), %eax
	movl	%eax, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$2, %eax
	je	.L2048
	movl	-288(%ebp), %eax
	movl	%eax, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$6, %eax
	je	.L2048
	movl	-288(%ebp), %eax
	movl	%eax, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$8, %eax
	je	.L2048
	movl	-276(%ebp), %eax
	movl	%eax, (%esp)
	call	reverse_condition@PLT
	movl	%eax, %edx
	movl	-84(%ebp), %eax
	movl	28(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	comparison_dominates_p@PLT
	testl	%eax, %eax
	je	.L2048
.L2131:
	movl	-284(%ebp), %edx
	movl	-84(%ebp), %eax
	movl	8(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	jne	.L2136
	cmpl	$0, -244(%ebp)
	je	.L2138
	movl	-84(%ebp), %eax
	movl	8(%eax), %edx
	movl	-244(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	jne	.L2136
.L2138:
	movl	-284(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L2048
	movl	-284(%ebp), %eax
	movl	4(%eax), %edx
	movl	cached_regno@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	jne	.L2141
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L2143
.L2141:
	movl	-284(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	get_cse_reg_info
	movl	%eax, -432(%ebp)
	jmp	.L2144
.L2143:
	movl	cached_cse_reg_info@GOTOFF(%ebx), %edx
	movl	%edx, -432(%ebp)
.L2144:
	movl	-432(%ebp), %ecx
	movl	12(%ecx), %eax
	movl	-84(%ebp), %edx
	movl	12(%edx), %edx
	cmpl	%edx, %eax
	jne	.L2048
.L2136:
	.loc 1 4049 0
	movl	-84(%ebp), %eax
	movl	28(%eax), %edx
	movl	-276(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	comparison_dominates_p@PLT
	testl	%eax, %eax
	je	.L2145
	movl	-96(%ebp), %esi
	movl	%esi, -428(%ebp)
	jmp	.L2147
.L2145:
	movl	-92(%ebp), %edi
	movl	%edi, -428(%ebp)
.L2147:
	movl	-428(%ebp), %eax
	movl	%eax, -668(%ebp)
	jmp	.L1640
.L2048:
.LBE79:
.LBE78:
.LBE77:
	.loc 1 4060 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	cmpl	-244(%ebp), %eax
	jne	.L2148
.LBB80:
	.loc 1 4062 0
	movl	-280(%ebp), %eax
	movl	$94, 4(%esp)
	movl	%eax, (%esp)
	call	lookup_as_function
	movl	%eax, -80(%ebp)
	.loc 1 4065 0
	cmpl	$0, -80(%ebp)
	je	.L2148
	movl	-80(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, (%esp)
	call	equiv_constant
	movl	%eax, -76(%ebp)
	cmpl	$0, -76(%ebp)
	je	.L2148
	movl	-76(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L2148
	movl	-76(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L2148
.LBB81:
	.loc 1 4070 0
	movl	-288(%ebp), %eax
	movl	%eax, %edx
	movl	mode_bitsize@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	subl	$1, %eax
	movl	%eax, -72(%ebp)
	.loc 1 4073 0
	cmpl	$64, -72(%ebp)
	jg	.L2154
	movl	-76(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	-72(%ebp), %ecx
	shrdl	%edx, %eax
	sarl	%cl, %edx
	testb	$32, %cl
	je	.L2293
	movl	%edx, %eax
	sarl	$31, %edx
.L2293:
	andl	$1, %eax
	xorl	$1, %eax
	testb	%al, %al
	jne	.L2154
	movl	$1, -424(%ebp)
	jmp	.L2157
.L2154:
	movl	$0, -424(%ebp)
.L2157:
	movl	-424(%ebp), %edx
	movl	%edx, -68(%ebp)
	.loc 1 4074 0
	movl	const_true_rtx@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -64(%ebp)
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	%eax, -60(%ebp)
	.loc 1 4085 0
	movl	-276(%ebp), %ecx
	subl	$112, %ecx
	movl	%ecx, -692(%ebp)
	cmpl	$5, -692(%ebp)
	ja	.L2148
	movl	-692(%ebp), %eax
	sall	$2, %eax
	movl	.L2162@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L2162:
	.long	.L2158@GOTOFF
	.long	.L2159@GOTOFF
	.long	.L2160@GOTOFF
	.long	.L2160@GOTOFF
	.long	.L2161@GOTOFF
	.long	.L2161@GOTOFF
	.text
.L2159:
	.loc 1 4088 0
	movl	-60(%ebp), %esi
	movl	%esi, -668(%ebp)
	jmp	.L1640
.L2158:
	.loc 1 4090 0
	movl	-64(%ebp), %edi
	movl	%edi, -668(%ebp)
	jmp	.L1640
.L2161:
	.loc 1 4092 0
	cmpl	$0, -68(%ebp)
	je	.L2148
	.loc 1 4093 0
	movl	-64(%ebp), %eax
	movl	%eax, -668(%ebp)
	jmp	.L1640
.L2160:
	.loc 1 4096 0
	cmpl	$0, -68(%ebp)
	je	.L2148
	.loc 1 4097 0
	movl	-60(%ebp), %edx
	movl	%edx, -668(%ebp)
	jmp	.L1640
.L2148:
.LBE81:
.LBE80:
	.loc 1 4105 0
	cmpl	$0, -244(%ebp)
	je	.L2166
	movl	-244(%ebp), %ecx
	movl	%ecx, -420(%ebp)
	jmp	.L2168
.L2166:
	movl	-284(%ebp), %esi
	movl	%esi, -420(%ebp)
.L2168:
	cmpl	$0, -248(%ebp)
	je	.L2169
	movl	-248(%ebp), %edi
	movl	%edi, -416(%ebp)
	jmp	.L2171
.L2169:
	movl	-280(%ebp), %eax
	movl	%eax, -416(%ebp)
.L2171:
	movl	-288(%ebp), %eax
	testl	%eax, %eax
	jne	.L2172
	cmpl	$0, -248(%ebp)
	je	.L2174
	movl	-248(%ebp), %edx
	movl	%edx, -404(%ebp)
	jmp	.L2176
.L2174:
	movl	-280(%ebp), %ecx
	movl	%ecx, -404(%ebp)
.L2176:
	movl	-404(%ebp), %esi
	movzbl	2(%esi), %eax
	testb	%al, %al
	je	.L2177
	cmpl	$0, -248(%ebp)
	je	.L2179
	movl	-248(%ebp), %edi
	movl	%edi, -400(%ebp)
	jmp	.L2181
.L2179:
	movl	-280(%ebp), %eax
	movl	%eax, -400(%ebp)
.L2181:
	movl	-400(%ebp), %edx
	movzbl	2(%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -408(%ebp)
	jmp	.L2182
.L2177:
	cmpl	$0, -244(%ebp)
	je	.L2183
	movl	-244(%ebp), %ecx
	movl	%ecx, -396(%ebp)
	jmp	.L2185
.L2183:
	movl	-284(%ebp), %esi
	movl	%esi, -396(%ebp)
.L2185:
	movl	-396(%ebp), %edi
	movzbl	2(%edi), %eax
	movzbl	%al, %eax
	movl	%eax, -408(%ebp)
.L2182:
	movl	-408(%ebp), %eax
	movl	%eax, -412(%ebp)
	jmp	.L2186
.L2172:
	movl	-288(%ebp), %edx
	movl	%edx, -412(%ebp)
.L2186:
	movl	-420(%ebp), %ecx
	movl	%ecx, 12(%esp)
	movl	-416(%ebp), %esi
	movl	%esi, 8(%esp)
	movl	-412(%ebp), %edi
	movl	%edi, 4(%esp)
	movl	-276(%ebp), %eax
	movl	%eax, (%esp)
	call	simplify_relational_operation@PLT
	movl	%eax, -260(%ebp)
	.loc 1 4130 0
	jmp	.L2026
.L2028:
	.loc 1 4134 0
	movl	-276(%ebp), %eax
	subl	$85, %eax
	movl	%eax, -696(%ebp)
	cmpl	$20, -696(%ebp)
	ja	.L2187
	movl	$1, %eax
	movl	%eax, %esi
	movzbl	-696(%ebp), %ecx
	sall	%cl, %esi
	movl	%esi, -700(%ebp)
	movl	-700(%ebp), %eax
	andl	$2021128, %eax
	testl	%eax, %eax
	jne	.L2190
	movl	-700(%ebp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L2188
	movl	-700(%ebp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	jne	.L2189
	jmp	.L2187
.L2188:
	.loc 1 4141 0
	cmpl	$0, -244(%ebp)
	je	.L2191
	movl	-244(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	jne	.L2191
.LBB82:
	.loc 1 4145 0
	movl	-280(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$86, %ax
	je	.L2194
	movl	-280(%ebp), %eax
	movl	$86, 4(%esp)
	movl	%eax, (%esp)
	call	lookup_as_function
	movl	%eax, -392(%ebp)
	jmp	.L2196
.L2194:
	movl	-280(%ebp), %edi
	movl	%edi, -392(%ebp)
.L2196:
	movl	-392(%ebp), %eax
	movl	%eax, -56(%ebp)
	.loc 1 4147 0
	cmpl	$0, -56(%ebp)
	je	.L2197
	movl	-56(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	jne	.L2197
	movl	-56(%ebp), %eax
	movl	12(%eax), %eax
	movl	4(%eax), %edx
	movl	-244(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	jne	.L2197
	.loc 1 4149 0
	movl	-56(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -668(%ebp)
	jmp	.L1640
.L2197:
	.loc 1 4152 0
	movl	-280(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	je	.L2201
	movl	-280(%ebp), %eax
	movl	$68, 4(%esp)
	movl	%eax, (%esp)
	call	lookup_as_function
	movl	%eax, -388(%ebp)
	jmp	.L2203
.L2201:
	movl	-280(%ebp), %edx
	movl	%edx, -388(%ebp)
.L2203:
	movl	-388(%ebp), %ecx
	movl	%ecx, -56(%ebp)
	cmpl	$0, -56(%ebp)
	je	.L2191
	movl	-56(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$86, %ax
	jne	.L2191
	movl	-56(%ebp), %eax
	movl	4(%eax), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	jne	.L2191
	movl	-56(%ebp), %eax
	movl	4(%eax), %eax
	movl	12(%eax), %eax
	movl	4(%eax), %edx
	movl	-244(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	jne	.L2191
	.loc 1 4157 0
	movl	-56(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -668(%ebp)
	jmp	.L1640
.L2191:
.LBE82:
	.loc 1 4161 0
	cmpl	$0, -248(%ebp)
	je	.L2208
	movl	-248(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	jne	.L2208
.LBB83:
	.loc 1 4165 0
	movl	-284(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$86, %ax
	je	.L2211
	movl	-284(%ebp), %eax
	movl	$86, 4(%esp)
	movl	%eax, (%esp)
	call	lookup_as_function
	movl	%eax, -384(%ebp)
	jmp	.L2213
.L2211:
	movl	-284(%ebp), %esi
	movl	%esi, -384(%ebp)
.L2213:
	movl	-384(%ebp), %edi
	movl	%edi, -52(%ebp)
	.loc 1 4167 0
	cmpl	$0, -52(%ebp)
	je	.L2214
	movl	-52(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	jne	.L2214
	movl	-52(%ebp), %eax
	movl	12(%eax), %eax
	movl	4(%eax), %edx
	movl	-248(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	jne	.L2214
	.loc 1 4169 0
	movl	-52(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -668(%ebp)
	jmp	.L1640
.L2214:
	.loc 1 4172 0
	movl	-284(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	je	.L2218
	movl	-284(%ebp), %eax
	movl	$68, 4(%esp)
	movl	%eax, (%esp)
	call	lookup_as_function
	movl	%eax, -380(%ebp)
	jmp	.L2220
.L2218:
	movl	-284(%ebp), %eax
	movl	%eax, -380(%ebp)
.L2220:
	movl	-380(%ebp), %edx
	movl	%edx, -52(%ebp)
	cmpl	$0, -52(%ebp)
	je	.L2208
	movl	-52(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$86, %ax
	jne	.L2208
	movl	-52(%ebp), %eax
	movl	4(%eax), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	jne	.L2208
	movl	-52(%ebp), %eax
	movl	4(%eax), %eax
	movl	12(%eax), %eax
	movl	4(%eax), %edx
	movl	-248(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	jne	.L2208
	.loc 1 4177 0
	movl	-52(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -668(%ebp)
	jmp	.L1640
.L2208:
.LBE83:
	.loc 1 4190 0
	cmpl	$0, -244(%ebp)
	je	.L2190
	movl	-244(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L2190
	movl	-244(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	testl	%edx, %edx
	jns	.L2190
	movl	-244(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%edx, %ecx
	xorl	$-2147483648, %ecx
	orl	%ecx, %eax
	testl	%eax, %eax
	je	.L2190
	movl	-284(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L2190
.LBB84:
	.loc 1 4203 0
	movl	-244(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	negl	%eax
	adcl	$0, %edx
	negl	%edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$0, (%esp)
	call	gen_rtx_CONST_INT@PLT
	movl	%eax, -48(%ebp)
	.loc 1 4206 0
	movl	-272(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	safe_hash
	movl	%eax, %edx
	andl	$31, %edx
	movl	-272(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	lookup
	movl	%eax, -44(%ebp)
	.loc 1 4208 0
	cmpl	$0, -44(%ebp)
	je	.L2190
	.loc 1 4209 0
	movl	-44(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -44(%ebp)
	jmp	.L2232
.L2233:
	.loc 1 4210 0
	movl	-44(%ebp), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L2234
	.loc 1 4211 0
	movl	-44(%ebp), %eax
	movl	(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	canon_reg
	movl	-280(%ebp), %edx
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	-272(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$86, (%esp)
	call	simplify_gen_binary@PLT
	movl	%eax, -668(%ebp)
	jmp	.L1640
.L2234:
	.loc 1 4209 0
	movl	-44(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -44(%ebp)
.L2232:
	cmpl	$0, -44(%ebp)
	jne	.L2233
	.loc 1 4214 0
	jmp	.L2190
.L2189:
.LBE84:
	.loc 1 4219 0
	cmpl	$0, -244(%ebp)
	je	.L2190
	movl	-244(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L2190
.LBB85:
	.loc 1 4221 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	$85, 4(%esp)
	movl	%eax, (%esp)
	call	lookup_as_function
	movl	%eax, -40(%ebp)
	.loc 1 4222 0
	cmpl	$0, -40(%ebp)
	je	.L2190
	movl	-40(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L2190
	.loc 1 4223 0
	movl	-244(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, %esi
	movl	%edx, %edi
	negl	%esi
	adcl	$0, %edi
	negl	%edi
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_rtx@PLT
	movl	%esi, 4(%esp)
	movl	%edi, 8(%esp)
	movl	%eax, (%esp)
	call	plus_constant_wide@PLT
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	fold_rtx
	movl	%eax, -668(%ebp)
	jmp	.L1640
.L2190:
.LBE85:
	.loc 1 4242 0
	movl	-280(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L2187
	cmpl	$0, -244(%ebp)
	je	.L2187
	movl	-244(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L2187
.LBB86:
	.loc 1 4246 0
	cmpl	$97, -276(%ebp)
	je	.L2243
	cmpl	$99, -276(%ebp)
	je	.L2243
	cmpl	$100, -276(%ebp)
	jne	.L2246
.L2243:
	movl	$1, -376(%ebp)
	jmp	.L2247
.L2246:
	movl	$0, -376(%ebp)
.L2247:
	movl	-376(%ebp), %ecx
	movl	%ecx, -36(%ebp)
	.loc 1 4247 0
	movl	-280(%ebp), %eax
	movl	-276(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	lookup_as_function
	movl	%eax, -32(%ebp)
	.loc 1 4252 0
	cmpl	$0, -32(%ebp)
	je	.L2187
	movl	-32(%ebp), %eax
	movl	12(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	fold_rtx
	movl	%eax, (%esp)
	call	equiv_constant
	movl	%eax, -28(%ebp)
	cmpl	$0, -28(%ebp)
	je	.L2187
	movl	-28(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L2187
	movl	-32(%ebp), %eax
	movl	4(%eax), %edx
	movl	-280(%ebp), %eax
	cmpl	%eax, %edx
	je	.L2187
	.loc 1 4283 0
	cmpl	$0, -36(%ebp)
	jne	.L2252
	cmpl	$86, -276(%ebp)
	je	.L2252
	movl	-276(%ebp), %esi
	movl	%esi, -372(%ebp)
	jmp	.L2255
.L2252:
	movl	$85, -372(%ebp)
.L2255:
	movl	-372(%ebp), %edi
	movl	%edi, -24(%ebp)
	.loc 1 4285 0
	movl	-28(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-244(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-272(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	simplify_binary_operation@PLT
	movl	%eax, -20(%ebp)
	.loc 1 4288 0
	cmpl	$0, -20(%ebp)
	je	.L2187
	.loc 1 4297 0
	cmpl	$0, -36(%ebp)
	je	.L2257
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L2257
	movl	-20(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%eax), %ecx
	movl	%edx, -368(%ebp)
	movl	%ecx, -364(%ebp)
	movl	-272(%ebp), %edx
	movl	mode_bitsize@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	movl	%eax, -360(%ebp)
	movl	-360(%ebp), %ecx
	movl	%ecx, -360(%ebp)
	movl	$0, -356(%ebp)
	movl	-356(%ebp), %esi
	cmpl	%esi, -364(%ebp)
	jl	.L2257
	movl	-356(%ebp), %edi
	cmpl	%edi, -364(%ebp)
	jg	.L2261
	movl	-360(%ebp), %eax
	cmpl	%eax, -368(%ebp)
	jb	.L2257
.L2261:
	.loc 1 4302 0
	cmpl	$99, -276(%ebp)
	jne	.L2187
	.loc 1 4303 0
	movl	-272(%ebp), %edx
	movl	mode_bitsize@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	subl	$1, %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$0, (%esp)
	call	gen_rtx_CONST_INT@PLT
	movl	%eax, -20(%ebp)
.L2257:
	.loc 1 4308 0
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	copy_rtx@PLT
	movl	%eax, -32(%ebp)
	.loc 1 4314 0
	movl	-280(%ebp), %edx
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	reg_mentioned_p@PLT
	testl	%eax, %eax
	jne	.L2263
	.loc 1 4315 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	fold_rtx
	movl	%eax, -32(%ebp)
.L2263:
	.loc 1 4317 0
	movl	-20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-272(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-276(%ebp), %eax
	movl	%eax, (%esp)
	call	simplify_gen_binary@PLT
	movl	%eax, -668(%ebp)
	jmp	.L1640
.L2187:
.LBE86:
	.loc 1 4333 0
	cmpl	$0, -244(%ebp)
	je	.L2265
	movl	-244(%ebp), %edx
	movl	%edx, -348(%ebp)
	jmp	.L2267
.L2265:
	movl	-284(%ebp), %ecx
	movl	%ecx, -348(%ebp)
.L2267:
	cmpl	$0, -248(%ebp)
	je	.L2268
	movl	-248(%ebp), %esi
	movl	%esi, -344(%ebp)
	jmp	.L2270
.L2268:
	movl	-280(%ebp), %edi
	movl	%edi, -344(%ebp)
.L2270:
	movl	-348(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-344(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	-272(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-276(%ebp), %eax
	movl	%eax, (%esp)
	call	simplify_binary_operation@PLT
	movl	%eax, -260(%ebp)
	.loc 1 4336 0
	jmp	.L2026
.L2031:
	.loc 1 4340 0
	cmpl	$145, -276(%ebp)
	jne	.L2026
	cmpl	$0, -248(%ebp)
	je	.L2026
	movl	-248(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$144, %ax
	jne	.L2026
	movl	-248(%ebp), %eax
	movl	4(%eax), %edx
	movl	-244(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	je	.L2026
	.loc 1 4343 0
	movl	-244(%ebp), %ecx
	movl	%ecx, -668(%ebp)
	jmp	.L1640
.L2029:
	.loc 1 4348 0
	cmpl	$0, -240(%ebp)
	jne	.L2276
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -340(%ebp)
	jmp	.L2278
.L2276:
	movl	-240(%ebp), %esi
	movl	%esi, -340(%ebp)
.L2278:
	cmpl	$0, -244(%ebp)
	je	.L2279
	movl	-244(%ebp), %edi
	movl	%edi, -336(%ebp)
	jmp	.L2281
.L2279:
	movl	-284(%ebp), %eax
	movl	%eax, -336(%ebp)
.L2281:
	cmpl	$0, -248(%ebp)
	je	.L2282
	movl	-248(%ebp), %edx
	movl	%edx, -332(%ebp)
	jmp	.L2284
.L2282:
	movl	-280(%ebp), %ecx
	movl	%ecx, -332(%ebp)
.L2284:
	movl	-288(%ebp), %eax
	movl	-340(%ebp), %esi
	movl	%esi, 20(%esp)
	movl	-336(%ebp), %edi
	movl	%edi, 16(%esp)
	movl	-332(%ebp), %edx
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-272(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-276(%ebp), %eax
	movl	%eax, (%esp)
	call	simplify_ternary_operation@PLT
	movl	%eax, -260(%ebp)
	.loc 1 4352 0
	jmp	.L2026
.L2032:
	.loc 1 4356 0
	cmpl	$150, -276(%ebp)
	jne	.L2026
	.loc 1 4357 0
	cmpl	$0, -248(%ebp)
	je	.L2286
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	260(%eax), %eax
	movl	%eax, -328(%ebp)
	jmp	.L2288
.L2286:
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	%eax, -328(%ebp)
.L2288:
	movl	-328(%ebp), %ecx
	movl	%ecx, -668(%ebp)
	jmp	.L1640
.L2026:
	.loc 1 4361 0
	cmpl	$0, -260(%ebp)
	je	.L2289
	movl	-260(%ebp), %esi
	movl	%esi, -324(%ebp)
	jmp	.L2291
.L2289:
	movl	8(%ebp), %edi
	movl	%edi, -324(%ebp)
.L2291:
	movl	-324(%ebp), %eax
	movl	%eax, -668(%ebp)
.L1640:
	movl	-668(%ebp), %eax
	.loc 1 4362 0
	addl	$716, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE51:
	.size	fold_rtx, .-fold_rtx
	.type	equiv_constant, @function
equiv_constant:
.LFB52:
	.loc 1 4370 0
	pushl	%ebp
.LCFI164:
	movl	%esp, %ebp
.LCFI165:
	pushl	%esi
.LCFI166:
	pushl	%ebx
.LCFI167:
	subl	$48, %esp
.LCFI168:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4371 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L2295
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	cached_regno@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	jne	.L2297
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L2299
.L2297:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	get_cse_reg_info
	movl	%eax, -36(%ebp)
	jmp	.L2300
.L2299:
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	movl	%eax, -36(%ebp)
.L2300:
	movl	-36(%ebp), %eax
	movl	12(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	je	.L2295
.LBB87:
	.loc 1 4374 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	cached_regno@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	jne	.L2302
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L2304
.L2302:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	get_cse_reg_info
	movl	%eax, -32(%ebp)
	jmp	.L2305
.L2304:
	movl	cached_cse_reg_info@GOTOFF(%ebx), %edx
	movl	%edx, -32(%ebp)
.L2305:
	movl	-32(%ebp), %edx
	movl	12(%edx), %eax
	movl	%eax, -20(%ebp)
	.loc 1 4375 0
	movl	-20(%ebp), %eax
	sall	$5, %eax
	movl	%eax, %edx
	movl	qty_table@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 4377 0
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2295
	.loc 1 4378 0
	movl	-16(%ebp), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	gen_lowpart_if_possible@PLT
	movl	%eax, 8(%ebp)
.L2295:
.LBE87:
	.loc 1 4381 0
	cmpl	$0, 8(%ebp)
	je	.L2307
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	je	.L2307
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	je	.L2307
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L2307
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	je	.L2307
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	je	.L2307
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$144, %ax
	je	.L2307
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$66, %ax
	je	.L2307
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$150, %ax
	jne	.L2316
.L2307:
	.loc 1 4382 0
	movl	8(%ebp), %eax
	movl	%eax, -28(%ebp)
	jmp	.L2317
.L2316:
	.loc 1 4389 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L2318
.LBB88:
	.loc 1 4393 0
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fold_rtx
	movl	%eax, 8(%ebp)
	.loc 1 4394 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	je	.L2320
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	je	.L2320
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L2320
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	je	.L2320
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	je	.L2320
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$144, %ax
	je	.L2320
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$66, %ax
	je	.L2320
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$150, %ax
	jne	.L2328
.L2320:
	.loc 1 4395 0
	movl	8(%ebp), %edx
	movl	%edx, -28(%ebp)
	jmp	.L2317
.L2328:
	.loc 1 4397 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %esi
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	safe_hash
	andl	$31, %eax
	movl	%esi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	lookup
	movl	%eax, -12(%ebp)
	.loc 1 4398 0
	cmpl	$0, -12(%ebp)
	jne	.L2329
	.loc 1 4399 0
	movl	$0, -28(%ebp)
	jmp	.L2317
.L2329:
	.loc 1 4401 0
	movl	-12(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L2331
.L2332:
	.loc 1 4402 0
	movl	-12(%ebp), %eax
	movzbl	45(%eax), %eax
	testb	%al, %al
	je	.L2333
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	je	.L2335
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	je	.L2335
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L2335
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	je	.L2335
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	je	.L2335
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$144, %ax
	je	.L2335
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$66, %ax
	je	.L2335
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$150, %ax
	jne	.L2333
.L2335:
	.loc 1 4403 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L2317
.L2333:
	.loc 1 4401 0
	movl	-12(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -12(%ebp)
.L2331:
	cmpl	$0, -12(%ebp)
	jne	.L2332
.L2318:
.LBE88:
	.loc 1 4406 0
	movl	$0, -28(%ebp)
.L2317:
	movl	-28(%ebp), %eax
	.loc 1 4407 0
	addl	$48, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE52:
	.size	equiv_constant, .-equiv_constant
.globl gen_lowpart_if_possible
	.type	gen_lowpart_if_possible, @function
gen_lowpart_if_possible:
.LFB53:
	.loc 1 4422 0
	pushl	%ebp
.LCFI169:
	movl	%esp, %ebp
.LCFI170:
	pushl	%ebx
.LCFI171:
	subl	$100, %esp
.LCFI172:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4423 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_lowpart_common@PLT
	movl	%eax, -16(%ebp)
	.loc 1 4425 0
	cmpl	$0, -16(%ebp)
	je	.L2345
	.loc 1 4426 0
	movl	-16(%ebp), %eax
	movl	%eax, -80(%ebp)
	jmp	.L2347
.L2345:
	.loc 1 4427 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L2348
.LBB89:
	.loc 1 4430 0
	movl	$0, -12(%ebp)
	.loc 1 4433 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$65536, %eax
	testl	%eax, %eax
	je	.L2350
	.loc 1 4434 0
	movl	12(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -72(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L2352
	movl	$8, -68(%ebp)
	jmp	.L2354
.L2352:
	movl	$4, -68(%ebp)
.L2354:
	movl	-68(%ebp), %eax
	cmpl	%eax, -72(%ebp)
	jle	.L2355
	movl	12(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -76(%ebp)
	jmp	.L2357
.L2355:
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L2358
	movl	$8, -64(%ebp)
	jmp	.L2360
.L2358:
	movl	$4, -64(%ebp)
.L2360:
	movl	-64(%ebp), %eax
	movl	%eax, -76(%ebp)
.L2357:
	movl	8(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -56(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L2361
	movl	$8, -52(%ebp)
	jmp	.L2363
.L2361:
	movl	$4, -52(%ebp)
.L2363:
	movl	-52(%ebp), %eax
	cmpl	%eax, -56(%ebp)
	jle	.L2364
	movl	8(%ebp), %eax
	movl	mode_size@GOT(%ebx), %edx
	movzbl	(%edx,%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -60(%ebp)
	jmp	.L2366
.L2364:
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L2367
	movl	$8, -48(%ebp)
	jmp	.L2369
.L2367:
	movl	$4, -48(%ebp)
.L2369:
	movl	-48(%ebp), %eax
	movl	%eax, -60(%ebp)
.L2366:
	movl	-76(%ebp), %eax
	subl	-60(%ebp), %eax
	movl	%eax, -12(%ebp)
.L2350:
	.loc 1 4436 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$65536, %eax
	testl	%eax, %eax
	je	.L2370
	.loc 1 4439 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L2372
	movl	$8, -40(%ebp)
	jmp	.L2374
.L2372:
	movl	$4, -40(%ebp)
.L2374:
	movl	8(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	cmpl	%eax, -40(%ebp)
	jge	.L2375
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L2377
	movl	$8, -36(%ebp)
	jmp	.L2379
.L2377:
	movl	$4, -36(%ebp)
.L2379:
	movl	-36(%ebp), %eax
	movl	%eax, -44(%ebp)
	jmp	.L2380
.L2375:
	movl	8(%ebp), %eax
	movl	mode_size@GOT(%ebx), %edx
	movzbl	(%edx,%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -44(%ebp)
.L2380:
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L2381
	movl	$8, -28(%ebp)
	jmp	.L2383
.L2381:
	movl	$4, -28(%ebp)
.L2383:
	movl	12(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	cmpl	%eax, -28(%ebp)
	jge	.L2384
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L2386
	movl	$8, -24(%ebp)
	jmp	.L2388
.L2386:
	movl	$4, -24(%ebp)
.L2388:
	movl	-24(%ebp), %eax
	movl	%eax, -32(%ebp)
	jmp	.L2389
.L2384:
	movl	12(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -32(%ebp)
.L2389:
	movl	-44(%ebp), %eax
	subl	-32(%ebp), %eax
	subl	%eax, -12(%ebp)
.L2370:
	.loc 1 4442 0
	movl	-12(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	$1, 20(%esp)
	movl	$0, 16(%esp)
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	adjust_address_1@PLT
	movl	%eax, -8(%ebp)
	.loc 1 4443 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	memory_address_p@PLT
	testl	%eax, %eax
	jne	.L2390
	.loc 1 4444 0
	movl	$0, -80(%ebp)
	jmp	.L2347
.L2390:
	.loc 1 4446 0
	movl	-8(%ebp), %eax
	movl	%eax, -80(%ebp)
	jmp	.L2347
.L2348:
.LBE89:
	.loc 1 4449 0
	movl	$0, -80(%ebp)
.L2347:
	movl	-80(%ebp), %eax
	.loc 1 4450 0
	addl	$100, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE53:
	.size	gen_lowpart_if_possible, .-gen_lowpart_if_possible
	.type	record_jump_equiv, @function
record_jump_equiv:
.LFB54:
	.loc 1 4467 0
	pushl	%ebp
.LCFI173:
	movl	%esp, %ebp
.LCFI174:
	pushl	%ebx
.LCFI175:
	subl	$68, %esp
.LCFI176:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4472 0
	movl	$0, -12(%ebp)
	.loc 1 4476 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	any_condjump_p@PLT
	testl	%eax, %eax
	je	.L2403
	.loc 1 4478 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	pc_set@PLT
	movl	%eax, -20(%ebp)
	.loc 1 4481 0
	cmpl	$0, 12(%ebp)
	je	.L2396
	.loc 1 4482 0
	movl	-20(%ebp), %eax
	movl	12(%eax), %eax
	movl	20(%eax), %edx
	movl	global_rtl@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -24(%ebp)
	jmp	.L2398
.L2396:
	.loc 1 4484 0
	movl	-20(%ebp), %eax
	movl	12(%eax), %eax
	movl	12(%eax), %edx
	movl	global_rtl@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -24(%ebp)
.L2398:
	.loc 1 4489 0
	movl	-20(%ebp), %eax
	movl	12(%eax), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -8(%ebp)
	.loc 1 4490 0
	movl	-20(%ebp), %eax
	movl	12(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fold_rtx
	movl	%eax, -28(%ebp)
	.loc 1 4491 0
	movl	-20(%ebp), %eax
	movl	12(%eax), %eax
	movl	4(%eax), %eax
	movl	12(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fold_rtx
	movl	%eax, -32(%ebp)
	.loc 1 4493 0
	leal	-40(%ebp), %eax
	movl	%eax, 16(%esp)
	leal	-36(%ebp), %eax
	movl	%eax, 12(%esp)
	leal	-32(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	find_comparison_args
	movl	%eax, -8(%ebp)
	.loc 1 4494 0
	cmpl	$0, -24(%ebp)
	jne	.L2399
	.loc 1 4496 0
	movl	-32(%ebp), %edx
	movl	-28(%ebp), %ecx
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	reversed_comparison_code_parts@PLT
	movl	%eax, -8(%ebp)
	.loc 1 4499 0
	cmpl	$0, -8(%ebp)
	je	.L2403
.L2399:
	.loc 1 4504 0
	movl	-36(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 4505 0
	movl	-40(%ebp), %eax
	testl	%eax, %eax
	je	.L2401
	.loc 1 4506 0
	movl	-40(%ebp), %eax
	movl	%eax, -16(%ebp)
.L2401:
	.loc 1 4508 0
	movl	-32(%ebp), %edx
	movl	-28(%ebp), %ecx
	movl	-12(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	%edx, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	record_jump_cond
.L2403:
	.loc 1 4509 0
	addl	$68, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE54:
	.size	record_jump_equiv, .-record_jump_equiv
	.type	record_jump_cond, @function
record_jump_cond:
.LFB55:
	.loc 1 4522 0
	pushl	%ebp
.LCFI177:
	movl	%esp, %ebp
.LCFI178:
	pushl	%ebx
.LCFI179:
	subl	$164, %esp
.LCFI180:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4533 0
	cmpl	$113, 8(%ebp)
	jne	.L2405
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L2405
	movl	16(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %ecx
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	%al, %cl
	jbe	.L2405
.LBB90:
	.loc 1 4537 0
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -44(%ebp)
	.loc 1 4538 0
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_lowpart_if_possible@PLT
	movl	%eax, -40(%ebp)
	.loc 1 4540 0
	cmpl	$0, -40(%ebp)
	jne	.L2409
	movl	$0, 8(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_rtx_SUBREG@PLT
	movl	%eax, -148(%ebp)
	jmp	.L2411
.L2409:
	movl	-40(%ebp), %eax
	movl	%eax, -148(%ebp)
.L2411:
	movl	16(%ebp), %eax
	movl	4(%eax), %edx
	movl	24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-148(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	record_jump_cond
.L2405:
.LBE90:
	.loc 1 4545 0
	cmpl	$113, 8(%ebp)
	jne	.L2412
	movl	20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L2412
	movl	20(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %ecx
	movl	20(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	%al, %cl
	jbe	.L2412
.LBB91:
	.loc 1 4549 0
	movl	20(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -36(%ebp)
	.loc 1 4550 0
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_lowpart_if_possible@PLT
	movl	%eax, -32(%ebp)
	.loc 1 4552 0
	cmpl	$0, -32(%ebp)
	jne	.L2416
	movl	$0, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_rtx_SUBREG@PLT
	movl	%eax, -144(%ebp)
	jmp	.L2418
.L2416:
	movl	-32(%ebp), %edx
	movl	%edx, -144(%ebp)
.L2418:
	movl	20(%ebp), %eax
	movl	4(%eax), %edx
	movl	24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-144(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	record_jump_cond
.L2412:
.LBE91:
	.loc 1 4564 0
	cmpl	$112, 8(%ebp)
	jne	.L2419
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L2419
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	subreg_lowpart_p@PLT
	testl	%eax, %eax
	je	.L2419
	movl	16(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %ecx
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	%al, %cl
	jae	.L2419
.LBB92:
	.loc 1 4569 0
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -28(%ebp)
	.loc 1 4570 0
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_lowpart_if_possible@PLT
	movl	%eax, -24(%ebp)
	.loc 1 4572 0
	cmpl	$0, -24(%ebp)
	jne	.L2424
	movl	$0, 8(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_rtx_SUBREG@PLT
	movl	%eax, -140(%ebp)
	jmp	.L2426
.L2424:
	movl	-24(%ebp), %edx
	movl	%edx, -140(%ebp)
.L2426:
	movl	16(%ebp), %eax
	movl	4(%eax), %edx
	movl	24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-140(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	record_jump_cond
.L2419:
.LBE92:
	.loc 1 4577 0
	cmpl	$112, 8(%ebp)
	jne	.L2427
	movl	20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L2427
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	subreg_lowpart_p@PLT
	testl	%eax, %eax
	je	.L2427
	movl	20(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %ecx
	movl	20(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	%al, %cl
	jae	.L2427
.LBB93:
	.loc 1 4582 0
	movl	20(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -20(%ebp)
	.loc 1 4583 0
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_lowpart_if_possible@PLT
	movl	%eax, -16(%ebp)
	.loc 1 4585 0
	cmpl	$0, -16(%ebp)
	jne	.L2432
	movl	$0, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_rtx_SUBREG@PLT
	movl	%eax, -136(%ebp)
	jmp	.L2434
.L2432:
	movl	-16(%ebp), %edx
	movl	%edx, -136(%ebp)
.L2434:
	movl	20(%ebp), %eax
	movl	4(%eax), %edx
	movl	24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-136(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	record_jump_cond
.L2427:
.LBE93:
	.loc 1 4592 0
	movl	$0, do_not_record@GOTOFF(%ebx)
	.loc 1 4593 0
	movl	$0, hash_arg_in_memory@GOTOFF(%ebx)
	.loc 1 4594 0
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L2435
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	jbe	.L2435
	movl	16(%ebp), %eax
	movl	4(%eax), %edx
	movl	cached_regno@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	jne	.L2438
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L2440
.L2438:
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	get_cse_reg_info
	movl	%eax, -128(%ebp)
	jmp	.L2441
.L2440:
	movl	cached_cse_reg_info@GOTOFF(%ebx), %edx
	movl	%edx, -128(%ebp)
.L2441:
	movl	-128(%ebp), %edx
	movl	12(%edx), %eax
	addl	$9088, %eax
	movl	%eax, %edx
	andl	$31, %edx
	movl	%edx, -132(%ebp)
	jmp	.L2442
.L2435:
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	canon_hash
	movl	%eax, %edx
	andl	$31, %edx
	movl	%edx, -132(%ebp)
.L2442:
	movl	-132(%ebp), %eax
	movl	%eax, -68(%ebp)
	.loc 1 4595 0
	movl	hash_arg_in_memory@GOTOFF(%ebx), %eax
	movl	%eax, -60(%ebp)
	.loc 1 4597 0
	movl	do_not_record@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L2549
	.loc 1 4600 0
	movl	$0, do_not_record@GOTOFF(%ebx)
	.loc 1 4601 0
	movl	$0, hash_arg_in_memory@GOTOFF(%ebx)
	.loc 1 4602 0
	movl	20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L2445
	movl	20(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	jbe	.L2445
	movl	20(%ebp), %eax
	movl	4(%eax), %edx
	movl	cached_regno@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	jne	.L2448
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L2450
.L2448:
	movl	20(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	get_cse_reg_info
	movl	%eax, -120(%ebp)
	jmp	.L2451
.L2450:
	movl	cached_cse_reg_info@GOTOFF(%ebx), %edx
	movl	%edx, -120(%ebp)
.L2451:
	movl	-120(%ebp), %edx
	movl	12(%edx), %eax
	addl	$9088, %eax
	movl	%eax, %edx
	andl	$31, %edx
	movl	%edx, -124(%ebp)
	jmp	.L2452
.L2445:
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	canon_hash
	movl	%eax, %edx
	andl	$31, %edx
	movl	%edx, -124(%ebp)
.L2452:
	movl	-124(%ebp), %eax
	movl	%eax, -64(%ebp)
	.loc 1 4603 0
	movl	hash_arg_in_memory@GOTOFF(%ebx), %eax
	movl	%eax, -56(%ebp)
	.loc 1 4605 0
	movl	do_not_record@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L2549
	.loc 1 4609 0
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-68(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	lookup
	movl	%eax, -52(%ebp)
	.loc 1 4610 0
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	lookup
	movl	%eax, -48(%ebp)
	.loc 1 4614 0
	cmpl	$0, -52(%ebp)
	je	.L2454
	cmpl	$0, -48(%ebp)
	je	.L2454
	movl	-52(%ebp), %eax
	movl	24(%eax), %edx
	movl	-48(%ebp), %eax
	movl	24(%eax), %eax
	cmpl	%eax, %edx
	je	.L2549
.L2454:
	movl	16(%ebp), %eax
	cmpl	20(%ebp), %eax
	je	.L2549
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	je	.L2459
	.loc 1 4617 0
	jmp	.L2549
.L2459:
	.loc 1 4625 0
	cmpl	$113, 8(%ebp)
	jne	.L2460
	movl	16(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$2, %eax
	je	.L2460
	movl	16(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$6, %eax
	je	.L2460
	movl	16(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$8, %eax
	jne	.L2464
.L2460:
.LBB94:
	.loc 1 4634 0
	movl	20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	je	.L2465
	.loc 1 4635 0
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	equiv_constant
	movl	%eax, 20(%ebp)
.L2465:
	.loc 1 4637 0
	cmpl	$0, 24(%ebp)
	je	.L2467
	movl	12(%ebp), %eax
	movl	mode_class@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$2, %eax
	je	.L2549
	movl	12(%ebp), %eax
	movl	mode_class@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$6, %eax
	je	.L2549
	movl	12(%ebp), %eax
	movl	mode_class@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$8, %eax
	je	.L2549
.L2467:
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L2549
	cmpl	$0, 20(%ebp)
	jne	.L2473
	.loc 1 4639 0
	jmp	.L2549
.L2473:
	.loc 1 4643 0
	cmpl	$0, -52(%ebp)
	jne	.L2474
	.loc 1 4645 0
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	insert_regs
	testl	%eax, %eax
	je	.L2476
	.loc 1 4647 0
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	rehash_using_reg
	.loc 1 4648 0
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L2478
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	jbe	.L2478
	movl	16(%ebp), %eax
	movl	4(%eax), %edx
	movl	cached_regno@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	jne	.L2481
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L2483
.L2481:
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	get_cse_reg_info
	movl	%eax, -112(%ebp)
	jmp	.L2484
.L2483:
	movl	cached_cse_reg_info@GOTOFF(%ebx), %edx
	movl	%edx, -112(%ebp)
.L2484:
	movl	-112(%ebp), %edx
	movl	12(%edx), %eax
	addl	$9088, %eax
	movl	%eax, %edx
	andl	$31, %edx
	movl	%edx, -116(%ebp)
	jmp	.L2485
.L2478:
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	canon_hash
	movl	%eax, %edx
	andl	$31, %edx
	movl	%edx, -116(%ebp)
.L2485:
	movl	-116(%ebp), %eax
	movl	%eax, -68(%ebp)
	.loc 1 4653 0
	movl	20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	je	.L2476
	movl	20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	je	.L2476
	movl	20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L2476
	movl	20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	je	.L2476
	movl	20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	je	.L2476
	movl	20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$144, %ax
	je	.L2476
	movl	20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$66, %ax
	je	.L2476
	movl	20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$150, %ax
	je	.L2476
	.loc 1 4654 0
	movl	20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L2494
	movl	20(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	jbe	.L2494
	movl	20(%ebp), %eax
	movl	4(%eax), %edx
	movl	cached_regno@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	jne	.L2497
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L2499
.L2497:
	movl	20(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	get_cse_reg_info
	movl	%eax, -104(%ebp)
	jmp	.L2500
.L2499:
	movl	cached_cse_reg_info@GOTOFF(%ebx), %edx
	movl	%edx, -104(%ebp)
.L2500:
	movl	-104(%ebp), %edx
	movl	12(%edx), %eax
	addl	$9088, %eax
	movl	%eax, %edx
	andl	$31, %edx
	movl	%edx, -108(%ebp)
	jmp	.L2501
.L2494:
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	canon_hash
	movl	%eax, %edx
	andl	$31, %edx
	movl	%edx, -108(%ebp)
.L2501:
	movl	-108(%ebp), %eax
	movl	%eax, -64(%ebp)
.L2476:
	.loc 1 4657 0
	movl	12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-68(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	insert
	movl	%eax, -52(%ebp)
	.loc 1 4658 0
	movl	-60(%ebp), %eax
	movl	%eax, %edx
	movl	-52(%ebp), %eax
	movb	%dl, 44(%eax)
.L2474:
	.loc 1 4661 0
	movl	16(%ebp), %eax
	movl	4(%eax), %edx
	movl	cached_regno@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	jne	.L2502
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L2504
.L2502:
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	get_cse_reg_info
	movl	%eax, -100(%ebp)
	jmp	.L2505
.L2504:
	movl	cached_cse_reg_info@GOTOFF(%ebx), %edx
	movl	%edx, -100(%ebp)
.L2505:
	movl	-100(%ebp), %edx
	movl	12(%edx), %eax
	movl	%eax, -8(%ebp)
	.loc 1 4662 0
	movl	-8(%ebp), %eax
	sall	$5, %eax
	movl	%eax, %edx
	movl	qty_table@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 4664 0
	movl	-12(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, 28(%edx)
	.loc 1 4665 0
	movl	20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L2506
	.loc 1 4668 0
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	lookup
	movl	%eax, -48(%ebp)
	.loc 1 4671 0
	cmpl	$0, -48(%ebp)
	jne	.L2508
	.loc 1 4673 0
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	insert_regs
	testl	%eax, %eax
	je	.L2510
	.loc 1 4675 0
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	rehash_using_reg
	.loc 1 4676 0
	movl	20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L2512
	movl	20(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	jbe	.L2512
	movl	20(%ebp), %eax
	movl	4(%eax), %edx
	movl	cached_regno@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	jne	.L2515
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L2517
.L2515:
	movl	20(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	get_cse_reg_info
	movl	%eax, -92(%ebp)
	jmp	.L2518
.L2517:
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	movl	%eax, -92(%ebp)
.L2518:
	movl	-92(%ebp), %edx
	movl	12(%edx), %eax
	addl	$9088, %eax
	movl	%eax, %edx
	andl	$31, %edx
	movl	%edx, -96(%ebp)
	jmp	.L2519
.L2512:
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	canon_hash
	movl	%eax, %edx
	andl	$31, %edx
	movl	%edx, -96(%ebp)
.L2519:
	movl	-96(%ebp), %eax
	movl	%eax, -64(%ebp)
.L2510:
	.loc 1 4679 0
	movl	12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	insert
	movl	%eax, -48(%ebp)
	.loc 1 4680 0
	movl	-56(%ebp), %eax
	movl	%eax, %edx
	movl	-48(%ebp), %eax
	movb	%dl, 44(%eax)
.L2508:
	.loc 1 4683 0
	movl	-12(%ebp), %eax
	movl	$0, 8(%eax)
	.loc 1 4684 0
	movl	20(%ebp), %eax
	movl	4(%eax), %edx
	movl	cached_regno@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	jne	.L2520
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L2522
.L2520:
	movl	20(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	get_cse_reg_info
	movl	%eax, -88(%ebp)
	jmp	.L2523
.L2522:
	movl	cached_cse_reg_info@GOTOFF(%ebx), %edx
	movl	%edx, -88(%ebp)
.L2523:
	movl	-88(%ebp), %eax
	movl	12(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%edx, 12(%eax)
	jmp	.L2549
.L2506:
	.loc 1 4688 0
	movl	-12(%ebp), %eax
	movl	20(%ebp), %edx
	movl	%edx, 8(%eax)
	.loc 1 4689 0
	movl	-12(%ebp), %eax
	movl	$-1, 12(%eax)
	.loc 1 4692 0
	jmp	.L2549
.L2464:
.LBE94:
	.loc 1 4698 0
	cmpl	$0, -52(%ebp)
	jne	.L2525
	.loc 1 4700 0
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	insert_regs
	testl	%eax, %eax
	je	.L2527
	.loc 1 4702 0
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	rehash_using_reg
	.loc 1 4703 0
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L2529
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	jbe	.L2529
	movl	16(%ebp), %eax
	movl	4(%eax), %edx
	movl	cached_regno@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	jne	.L2532
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L2534
.L2532:
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	get_cse_reg_info
	movl	%eax, -80(%ebp)
	jmp	.L2535
.L2534:
	movl	cached_cse_reg_info@GOTOFF(%ebx), %edx
	movl	%edx, -80(%ebp)
.L2535:
	movl	-80(%ebp), %edx
	movl	12(%edx), %eax
	addl	$9088, %eax
	movl	%eax, %edx
	andl	$31, %edx
	movl	%edx, -84(%ebp)
	jmp	.L2536
.L2529:
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	canon_hash
	movl	%eax, %edx
	andl	$31, %edx
	movl	%edx, -84(%ebp)
.L2536:
	movl	-84(%ebp), %eax
	movl	%eax, -68(%ebp)
.L2527:
	.loc 1 4706 0
	movl	12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-68(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	insert
	movl	%eax, -52(%ebp)
	.loc 1 4707 0
	movl	-60(%ebp), %eax
	movl	%eax, %edx
	movl	-52(%ebp), %eax
	movb	%dl, 44(%eax)
.L2525:
	.loc 1 4710 0
	cmpl	$0, -48(%ebp)
	jne	.L2537
	.loc 1 4712 0
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	insert_regs
	testl	%eax, %eax
	je	.L2539
	.loc 1 4714 0
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	rehash_using_reg
	.loc 1 4715 0
	movl	20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L2541
	movl	20(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	jbe	.L2541
	movl	20(%ebp), %eax
	movl	4(%eax), %edx
	movl	cached_regno@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	jne	.L2544
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L2546
.L2544:
	movl	20(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	get_cse_reg_info
	movl	%eax, -72(%ebp)
	jmp	.L2547
.L2546:
	movl	cached_cse_reg_info@GOTOFF(%ebx), %edx
	movl	%edx, -72(%ebp)
.L2547:
	movl	-72(%ebp), %edx
	movl	12(%edx), %eax
	addl	$9088, %eax
	movl	%eax, %edx
	andl	$31, %edx
	movl	%edx, -76(%ebp)
	jmp	.L2548
.L2541:
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	canon_hash
	movl	%eax, %edx
	andl	$31, %edx
	movl	%edx, -76(%ebp)
.L2548:
	movl	-76(%ebp), %eax
	movl	%eax, -64(%ebp)
.L2539:
	.loc 1 4718 0
	movl	12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	insert
	movl	%eax, -48(%ebp)
	.loc 1 4719 0
	movl	-56(%ebp), %eax
	movl	%eax, %edx
	movl	-48(%ebp), %eax
	movb	%dl, 44(%eax)
.L2537:
	.loc 1 4722 0
	movl	-48(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	merge_equiv_classes
	.loc 1 4723 0
	movl	-52(%ebp), %eax
	movl	%eax, last_jump_equiv_class@GOTOFF(%ebx)
.L2549:
	.loc 1 4724 0
	addl	$164, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE55:
	.size	record_jump_cond, .-record_jump_cond
	.type	cse_insn, @function
cse_insn:
.LFB56:
	.loc 1 4773 0
	pushl	%ebp
.LCFI181:
	movl	%esp, %ebp
.LCFI182:
	pushl	%edi
.LCFI183:
	pushl	%esi
.LCFI184:
	pushl	%ebx
.LCFI185:
	subl	$780, %esp
.LCFI186:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	movl	%eax, -404(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -408(%ebp)
	.loc 1 4773 0
	movl	%gs:20, %eax
	movl	%eax, -20(%ebp)
	xorl	%eax, %eax
	.loc 1 4774 0
	movl	-404(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -396(%ebp)
	.loc 1 4777 0
	movl	$0, -384(%ebp)
	.loc 1 4785 0
	movl	$0, -380(%ebp)
	.loc 1 4786 0
	movl	$0, -376(%ebp)
	.loc 1 4787 0
	movl	$0, -372(%ebp)
	.loc 1 4788 0
	movl	$0, -368(%ebp)
	.loc 1 4789 0
	movl	$0, -364(%ebp)
	.loc 1 4791 0
	movl	$0, -360(%ebp)
	.loc 1 4793 0
	movl	-404(%ebp), %eax
	movl	%eax, this_insn@GOTOFF(%ebx)
	.loc 1 4800 0
	movl	-404(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$44, %ax
	jne	.L2551
	.loc 1 4802 0
	movl	-404(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, -388(%ebp)
	jmp	.L2553
.L2554:
	.loc 1 4804 0
	movl	-388(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$59, %ax
	jne	.L2555
	.loc 1 4805 0
	movl	-388(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	invalidate
.L2555:
	.loc 1 4806 0
	movl	-388(%ebp), %eax
	movl	4(%eax), %edx
	movl	-404(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	canon_reg
	movl	%eax, %edx
	movl	-388(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 4802 0
	movl	-388(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -388(%ebp)
.L2553:
	cmpl	$0, -388(%ebp)
	jne	.L2554
.L2551:
	.loc 1 4810 0
	movl	-396(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L2557
	.loc 1 4812 0
	subl	$64, %esp
	leal	16(%esp), %edx
	movl	%edx, -768(%ebp)
	movl	-768(%ebp), %eax
	addl	$15, %eax
	shrl	$4, %eax
	sall	$4, %eax
	movl	%eax, -768(%ebp)
	movl	-768(%ebp), %ecx
	movl	%ecx, -360(%ebp)
	.loc 1 4813 0
	movl	-360(%ebp), %edx
	movl	-396(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 4822 0
	movl	-396(%ebp), %eax
	movl	4(%eax), %edx
	movl	global_rtl@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jne	.L2559
	movl	-396(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	jne	.L2559
	jmp	.L2565
.L2559:
	.loc 1 4833 0
	movl	-396(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$60, %ax
	jne	.L2563
	.loc 1 4835 0
	movl	-396(%ebp), %eax
	movl	12(%eax), %edx
	movl	-404(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	canon_reg
	.loc 1 4836 0
	call	apply_change_group@PLT
	.loc 1 4837 0
	movl	-396(%ebp), %eax
	movl	12(%eax), %edx
	movl	-404(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fold_rtx
	.loc 1 4838 0
	movl	-396(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	invalidate
	jmp	.L2565
.L2563:
	.loc 1 4841 0
	movl	$1, -384(%ebp)
	jmp	.L2565
.L2557:
	.loc 1 4843 0
	movl	-396(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$49, %ax
	jne	.L2566
.LBB95:
	.loc 1 4845 0
	movl	-396(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -356(%ebp)
	.loc 1 4847 0
	movl	-356(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	addl	$15, %eax
	addl	$15, %eax
	shrl	$4, %eax
	sall	$4, %eax
	subl	%eax, %esp
	leal	16(%esp), %eax
	movl	%eax, -764(%ebp)
	movl	-764(%ebp), %eax
	addl	$15, %eax
	shrl	$4, %eax
	sall	$4, %eax
	movl	%eax, -764(%ebp)
	movl	-764(%ebp), %edx
	movl	%edx, -360(%ebp)
	.loc 1 4860 0
	movl	$0, -392(%ebp)
	jmp	.L2568
.L2569:
.LBB96:
	.loc 1 4862 0
	movl	-396(%ebp), %eax
	movl	4(%eax), %edx
	movl	-392(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	%eax, -352(%ebp)
	.loc 1 4863 0
	movl	-352(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$59, %ax
	jne	.L2570
.LBB97:
	.loc 1 4865 0
	movl	-352(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -348(%ebp)
	.loc 1 4867 0
	movl	-348(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	je	.L2572
	movl	-348(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L2574
.L2572:
	.loc 1 4869 0
	movl	$0, 4(%esp)
	movl	-348(%ebp), %eax
	movl	%eax, (%esp)
	call	invalidate
	.loc 1 4867 0
	jmp	.L2570
.L2574:
	.loc 1 4870 0
	movl	-348(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$74, %ax
	je	.L2575
	movl	-348(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$143, %ax
	jne	.L2570
.L2575:
	.loc 1 4872 0
	movl	-348(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	-348(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	invalidate
.L2570:
.LBE97:
.LBE96:
	.loc 1 4860 0
	addl	$1, -392(%ebp)
.L2568:
	movl	-392(%ebp), %eax
	cmpl	-356(%ebp), %eax
	jl	.L2569
	.loc 1 4876 0
	movl	$0, -392(%ebp)
	jmp	.L2578
.L2579:
.LBB98:
	.loc 1 4878 0
	movl	-396(%ebp), %eax
	movl	4(%eax), %edx
	movl	-392(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	%eax, -344(%ebp)
	.loc 1 4879 0
	movl	-344(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L2580
	.loc 1 4883 0
	movl	-344(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$60, %ax
	jne	.L2582
	.loc 1 4885 0
	movl	-344(%ebp), %eax
	movl	12(%eax), %edx
	movl	-404(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	canon_reg
	.loc 1 4886 0
	call	apply_change_group@PLT
	.loc 1 4887 0
	movl	-344(%ebp), %eax
	movl	12(%eax), %edx
	movl	-404(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fold_rtx
	.loc 1 4888 0
	movl	-344(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	invalidate
	jmp	.L2588
.L2582:
	.loc 1 4890 0
	movl	-344(%ebp), %eax
	movl	4(%eax), %edx
	movl	global_rtl@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jne	.L2585
	movl	-344(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	jne	.L2585
	jmp	.L2588
.L2585:
	.loc 1 4894 0
	movl	-384(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	movl	%eax, %edx
	addl	-360(%ebp), %edx
	movl	-344(%ebp), %eax
	movl	%eax, (%edx)
	addl	$1, -384(%ebp)
	jmp	.L2588
.L2580:
	.loc 1 4896 0
	movl	-344(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$59, %ax
	jne	.L2589
	.loc 1 4901 0
	movl	-344(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L2588
	.loc 1 4902 0
	movl	-344(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	canon_reg
	jmp	.L2588
.L2589:
	.loc 1 4904 0
	movl	-344(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$58, %ax
	jne	.L2593
	movl	-344(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L2595
	movl	-344(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	jbe	.L2593
.L2595:
	.loc 1 4907 0
	movl	$0, 4(%esp)
	movl	-344(%ebp), %eax
	movl	%eax, (%esp)
	call	canon_reg
	.loc 1 4904 0
	jmp	.L2588
.L2593:
	.loc 1 4908 0
	movl	-344(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$60, %ax
	jne	.L2588
	.loc 1 4912 0
	movl	-404(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-344(%ebp), %eax
	movl	%eax, (%esp)
	call	canon_reg
	.loc 1 4913 0
	call	apply_change_group@PLT
	.loc 1 4914 0
	movl	-404(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-344(%ebp), %eax
	movl	%eax, (%esp)
	call	fold_rtx
.L2588:
.LBE98:
	.loc 1 4876 0
	addl	$1, -392(%ebp)
.L2578:
	movl	-392(%ebp), %eax
	cmpl	-356(%ebp), %eax
	jl	.L2579
	jmp	.L2565
.L2566:
.LBE95:
	.loc 1 4918 0
	movl	-396(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$59, %ax
	jne	.L2599
	.loc 1 4920 0
	movl	-396(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L2565
	.loc 1 4921 0
	movl	-396(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	canon_reg
	jmp	.L2565
.L2599:
	.loc 1 4925 0
	movl	-396(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$58, %ax
	jne	.L2603
	movl	-396(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L2605
	movl	-396(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	jbe	.L2603
.L2605:
	.loc 1 4928 0
	movl	-396(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	canon_reg
	.loc 1 4925 0
	jmp	.L2565
.L2603:
	.loc 1 4929 0
	movl	-396(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$60, %ax
	jne	.L2565
	.loc 1 4932 0
	movl	-404(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-396(%ebp), %eax
	movl	%eax, (%esp)
	call	canon_reg
	.loc 1 4933 0
	call	apply_change_group@PLT
	.loc 1 4934 0
	movl	-404(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-396(%ebp), %eax
	movl	%eax, (%esp)
	call	fold_rtx
.L2565:
	.loc 1 4941 0
	cmpl	$1, -384(%ebp)
	jne	.L2608
	movl	-404(%ebp), %eax
	movl	68(%eax), %eax
	testl	%eax, %eax
	je	.L2608
	movl	$0, 8(%esp)
	movl	$4, 4(%esp)
	movl	-404(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	movl	%eax, -388(%ebp)
	cmpl	$0, -388(%ebp)
	je	.L2608
	movl	-360(%ebp), %eax
	movl	(%eax), %eax
	movl	12(%eax), %edx
	movl	-388(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	je	.L2612
	movl	-360(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$74, %ax
	jne	.L2608
.L2612:
	.loc 1 4946 0
	movl	-388(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	canon_reg
	movl	%eax, %edx
	movl	-404(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fold_rtx
	movl	%eax, -380(%ebp)
	.loc 1 4947 0
	movl	-388(%ebp), %edx
	movl	-380(%ebp), %eax
	movl	%eax, 4(%edx)
.L2608:
	.loc 1 4960 0
	movl	$0, -392(%ebp)
	jmp	.L2614
.L2615:
.LBB99:
	.loc 1 4962 0
	movl	-392(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	addl	-360(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -340(%ebp)
	.loc 1 4963 0
	movl	-392(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	addl	-360(%ebp), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movl	%eax, -336(%ebp)
	.loc 1 4964 0
	movl	-404(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-336(%ebp), %eax
	movl	%eax, (%esp)
	call	canon_reg
	movl	%eax, -332(%ebp)
	.loc 1 4967 0
	movl	-392(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	movl	%eax, %edx
	addl	-360(%ebp), %edx
	movl	-336(%ebp), %eax
	movl	%eax, 36(%edx)
	.loc 1 4968 0
	movl	-332(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L2616
	movl	-336(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L2616
	movl	-332(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	setbe	%dl
	movl	-336(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	setbe	%al
	xorl	%edx, %eax
	testb	%al, %al
	jne	.L2619
.L2616:
	movl	-404(%ebp), %eax
	movl	52(%eax), %eax
	testl	%eax, %eax
	js	.L2620
	movl	-404(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -760(%ebp)
	jmp	.L2622
.L2620:
	movl	-404(%ebp), %eax
	movl	%eax, (%esp)
	call	recog_memoized_1@PLT
	movl	%eax, -760(%ebp)
.L2622:
	movl	-760(%ebp), %ecx
	movl	%ecx, -328(%ebp)
	cmpl	$0, -328(%ebp)
	js	.L2619
	movl	-328(%ebp), %edx
	movl	insn_data@GOT(%ebx), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$16, %eax
	movzbl	1(%eax), %eax
	testb	%al, %al
	je	.L2624
.L2619:
	.loc 1 4973 0
	movl	-392(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	addl	-360(%ebp), %eax
	movl	(%eax), %eax
	leal	12(%eax), %edx
	movl	$1, 12(%esp)
	movl	-332(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-404(%ebp), %eax
	movl	%eax, (%esp)
	call	validate_change@PLT
	.loc 1 4968 0
	jmp	.L2625
.L2624:
	.loc 1 4975 0
	movl	-392(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	addl	-360(%ebp), %eax
	movl	(%eax), %edx
	movl	-332(%ebp), %eax
	movl	%eax, 12(%edx)
.L2625:
	.loc 1 4977 0
	movl	-340(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$143, %ax
	je	.L2626
	movl	-340(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$142, %ax
	jne	.L2629
.L2626:
	.loc 1 4979 0
	movl	-340(%ebp), %eax
	movl	12(%eax), %edx
	movl	-404(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	canon_reg
	movl	-340(%ebp), %edx
	addl	$12, %edx
	movl	$1, 12(%esp)
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-404(%ebp), %eax
	movl	%eax, (%esp)
	call	validate_change@PLT
	.loc 1 4981 0
	movl	-340(%ebp), %eax
	movl	20(%eax), %edx
	movl	-404(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	canon_reg
	movl	-340(%ebp), %edx
	addl	$20, %edx
	movl	$1, 12(%esp)
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-404(%ebp), %eax
	movl	%eax, (%esp)
	call	validate_change@PLT
	.loc 1 4985 0
	jmp	.L2629
.L2630:
	.loc 1 4988 0
	movl	-340(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -340(%ebp)
.L2629:
	.loc 1 4985 0
	movl	-340(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	je	.L2630
	movl	-340(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$74, %ax
	je	.L2630
	movl	-340(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$143, %ax
	je	.L2630
	movl	-340(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$142, %ax
	je	.L2630
	.loc 1 4990 0
	movl	-340(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L2635
	.loc 1 4991 0
	movl	-404(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-340(%ebp), %eax
	movl	%eax, (%esp)
	call	canon_reg
.L2635:
.LBE99:
	.loc 1 4960 0
	addl	$1, -392(%ebp)
.L2614:
	movl	-392(%ebp), %eax
	cmpl	-384(%ebp), %eax
	jl	.L2615
	.loc 1 5002 0
	call	apply_change_group@PLT
	.loc 1 5011 0
	movl	$0, -392(%ebp)
	jmp	.L2638
.L2639:
.LBB100:
	.loc 1 5015 0
	movl	$0, -312(%ebp)
	.loc 1 5018 0
	movl	$0, -296(%ebp)
	.loc 1 5019 0
	movl	$0, -292(%ebp)
	.loc 1 5020 0
	movl	$0, -288(%ebp)
	.loc 1 5021 0
	movl	$2147483647, -284(%ebp)
	.loc 1 5022 0
	movl	$2147483647, -280(%ebp)
	.loc 1 5023 0
	movl	$2147483647, -276(%ebp)
	.loc 1 5024 0
	movl	$2147483647, -272(%ebp)
	.loc 1 5025 0
	movl	$2147483647, -268(%ebp)
	.loc 1 5026 0
	movl	$2147483647, -264(%ebp)
	.loc 1 5027 0
	movl	$2147483647, -260(%ebp)
	.loc 1 5028 0
	movl	$2147483647, -256(%ebp)
	.loc 1 5029 0
	movl	$2147483647, -252(%ebp)
	.loc 1 5030 0
	movl	$2147483647, -248(%ebp)
	.loc 1 5033 0
	movl	$0, -244(%ebp)
	.loc 1 5035 0
	movl	-392(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	addl	-360(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -320(%ebp)
	.loc 1 5036 0
	movl	-392(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	addl	-360(%ebp), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movl	%eax, -324(%ebp)
	.loc 1 5042 0
	movl	-324(%ebp), %eax
	movzbl	2(%eax), %eax
	testb	%al, %al
	jne	.L2640
	movl	-320(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -756(%ebp)
	jmp	.L2642
.L2640:
	movl	-324(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -756(%ebp)
.L2642:
	movl	-756(%ebp), %eax
	movl	%eax, -304(%ebp)
	.loc 1 5043 0
	movl	-392(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	movl	%eax, %edx
	addl	-360(%ebp), %edx
	movl	-304(%ebp), %eax
	movl	%eax, 28(%edx)
	.loc 1 5045 0
	cmpl	$0, -380(%ebp)
	je	.L2643
.LBB101:
	.loc 1 5047 0
	movl	-304(%ebp), %eax
	movl	%eax, -240(%ebp)
	.loc 1 5048 0
	movl	-320(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$74, %ax
	jne	.L2645
	.loc 1 5049 0
	movl	-320(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -240(%ebp)
.L2645:
	.loc 1 5050 0
	movl	$0, do_not_record@GOTOFF(%ebx)
	.loc 1 5051 0
	movl	$0, hash_arg_in_memory@GOTOFF(%ebx)
	.loc 1 5052 0
	movl	-380(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L2647
	movl	-380(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	jbe	.L2647
	movl	-380(%ebp), %eax
	movl	4(%eax), %edx
	movl	cached_regno@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	jne	.L2650
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L2652
.L2650:
	movl	-380(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	get_cse_reg_info
	movl	%eax, -748(%ebp)
	jmp	.L2653
.L2652:
	movl	cached_cse_reg_info@GOTOFF(%ebx), %edx
	movl	%edx, -748(%ebp)
.L2653:
	movl	-748(%ebp), %ecx
	movl	12(%ecx), %eax
	addl	$9088, %eax
	movl	%eax, %edx
	andl	$31, %edx
	movl	%edx, -752(%ebp)
	jmp	.L2654
.L2647:
	movl	-240(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-380(%ebp), %eax
	movl	%eax, (%esp)
	call	canon_hash
	movl	%eax, %ecx
	andl	$31, %ecx
	movl	%ecx, -752(%ebp)
.L2654:
	movl	-752(%ebp), %eax
	movl	%eax, -364(%ebp)
	.loc 1 5056 0
	movl	do_not_record@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L2655
	.loc 1 5057 0
	movl	-240(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-364(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-380(%ebp), %eax
	movl	%eax, (%esp)
	call	lookup
	movl	%eax, -376(%ebp)
.L2655:
	.loc 1 5059 0
	movl	do_not_record@GOTOFF(%ebx), %eax
	movl	%eax, -372(%ebp)
	.loc 1 5060 0
	movl	hash_arg_in_memory@GOTOFF(%ebx), %eax
	movl	%eax, -368(%ebp)
.L2643:
.LBE101:
	.loc 1 5066 0
	movl	-320(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$74, %ax
	jne	.L2657
	.loc 1 5067 0
	movl	$0, -300(%ebp)
	jmp	.L2659
.L2657:
	.loc 1 5069 0
	movl	-380(%ebp), %eax
	movl	%eax, -300(%ebp)
.L2659:
	.loc 1 5073 0
	movl	-404(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-324(%ebp), %eax
	movl	%eax, (%esp)
	call	fold_rtx
	movl	%eax, -316(%ebp)
	.loc 1 5102 0
	movl	$0, do_not_record@GOTOFF(%ebx)
	.loc 1 5103 0
	movl	$0, hash_arg_in_memory@GOTOFF(%ebx)
	.loc 1 5105 0
	movl	-392(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	movl	%eax, %edx
	addl	-360(%ebp), %edx
	movl	-324(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 5106 0
	movl	-392(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	movl	-360(%ebp), %edx
	addl	%eax, %edx
	movl	%edx, -744(%ebp)
	movl	-324(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L2660
	movl	-324(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	jbe	.L2660
	movl	-324(%ebp), %eax
	movl	4(%eax), %edx
	movl	cached_regno@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	jne	.L2663
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L2665
.L2663:
	movl	-324(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	get_cse_reg_info
	movl	%eax, -736(%ebp)
	jmp	.L2666
.L2665:
	movl	cached_cse_reg_info@GOTOFF(%ebx), %ecx
	movl	%ecx, -736(%ebp)
.L2666:
	movl	-736(%ebp), %edx
	movl	12(%edx), %eax
	addl	$9088, %eax
	movl	%eax, %ecx
	andl	$31, %ecx
	movl	%ecx, -740(%ebp)
	jmp	.L2667
.L2660:
	movl	-304(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-324(%ebp), %eax
	movl	%eax, (%esp)
	call	canon_hash
	movl	%eax, %edx
	andl	$31, %edx
	movl	%edx, -740(%ebp)
.L2667:
	movl	-740(%ebp), %eax
	movl	-744(%ebp), %ecx
	movl	%eax, 12(%ecx)
	.loc 1 5107 0
	movl	-392(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	movl	%eax, %edx
	addl	-360(%ebp), %edx
	movl	do_not_record@GOTOFF(%ebx), %eax
	movb	%al, 25(%edx)
	.loc 1 5108 0
	movl	-392(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	movl	%eax, %edx
	addl	-360(%ebp), %edx
	movl	hash_arg_in_memory@GOTOFF(%ebx), %eax
	movb	%al, 24(%edx)
	.loc 1 5117 0
	movl	-324(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L2668
	movl	$0, 8(%esp)
	movl	$3, 4(%esp)
	movl	-404(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	testl	%eax, %eax
	je	.L2668
	movl	-320(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L2668
	movl	-320(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	jbe	.L2668
	.loc 1 5121 0
	movl	-392(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	addl	-360(%ebp), %eax
	movb	$1, 25(%eax)
.L2668:
	.loc 1 5153 0
	movl	-392(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	addl	-360(%ebp), %eax
	movzbl	25(%eax), %eax
	testb	%al, %al
	jne	.L2673
	.loc 1 5154 0
	movl	-392(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	addl	-360(%ebp), %eax
	movl	12(%eax), %edx
	movl	-304(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-324(%ebp), %eax
	movl	%eax, (%esp)
	call	lookup
	movl	%eax, -312(%ebp)
.L2673:
	.loc 1 5156 0
	movl	-392(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	movl	%eax, %edx
	addl	-360(%ebp), %edx
	movl	-312(%ebp), %eax
	movl	%eax, 8(%edx)
	.loc 1 5158 0
	cmpl	$0, -312(%ebp)
	je	.L2675
	cmpl	$0, -300(%ebp)
	je	.L2675
	cmpl	$0, -376(%ebp)
	je	.L2675
	.loc 1 5160 0
	movl	-312(%ebp), %eax
	movl	24(%eax), %edx
	movl	-376(%ebp), %eax
	movl	24(%eax), %eax
	cmpl	%eax, %edx
	je	.L2679
	.loc 1 5164 0
	movl	-376(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-312(%ebp), %eax
	movl	%eax, (%esp)
	call	merge_equiv_classes
	.loc 1 5165 0
	movl	-380(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L2681
	movl	-380(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	jbe	.L2681
	movl	-380(%ebp), %eax
	movl	4(%eax), %edx
	movl	cached_regno@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	jne	.L2684
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L2686
.L2684:
	movl	-380(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	get_cse_reg_info
	movl	%eax, -728(%ebp)
	jmp	.L2687
.L2686:
	movl	cached_cse_reg_info@GOTOFF(%ebx), %edx
	movl	%edx, -728(%ebp)
.L2687:
	movl	-728(%ebp), %ecx
	movl	12(%ecx), %eax
	addl	$9088, %eax
	movl	%eax, %edx
	andl	$31, %edx
	movl	%edx, -732(%ebp)
	jmp	.L2688
.L2681:
	movl	-312(%ebp), %eax
	movl	40(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-380(%ebp), %eax
	movl	%eax, (%esp)
	call	canon_hash
	movl	%eax, %ecx
	andl	$31, %ecx
	movl	%ecx, -732(%ebp)
.L2688:
	movl	-732(%ebp), %eax
	movl	%eax, -364(%ebp)
	.loc 1 5166 0
	movl	-312(%ebp), %eax
	movl	40(%eax), %eax
	movl	%eax, 8(%esp)
	movl	-364(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-380(%ebp), %eax
	movl	%eax, (%esp)
	call	lookup
	movl	%eax, -376(%ebp)
.L2679:
	.loc 1 5169 0
	movl	$0, -300(%ebp)
	.loc 1 5158 0
	jmp	.L2689
.L2675:
	.loc 1 5172 0
	cmpl	$0, -376(%ebp)
	je	.L2689
	.loc 1 5173 0
	movl	-376(%ebp), %eax
	movl	%eax, -312(%ebp)
.L2689:
	.loc 1 5179 0
	cmpl	$0, -312(%ebp)
	je	.L2691
	.loc 1 5180 0
	movl	-312(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -308(%ebp)
	jmp	.L2693
.L2694:
	.loc 1 5181 0
	movl	-308(%ebp), %eax
	movzbl	45(%eax), %eax
	testb	%al, %al
	je	.L2695
	.loc 1 5183 0
	movl	-308(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -296(%ebp)
	.loc 1 5184 0
	movl	-312(%ebp), %eax
	movl	%eax, -288(%ebp)
	.loc 1 5185 0
	jmp	.L2691
.L2695:
	.loc 1 5180 0
	movl	-308(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -308(%ebp)
.L2693:
	cmpl	$0, -308(%ebp)
	jne	.L2694
.L2691:
	.loc 1 5188 0
	cmpl	$0, -296(%ebp)
	jne	.L2697
	movl	-316(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	je	.L2699
	movl	-316(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	je	.L2699
	movl	-316(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L2699
	movl	-316(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	je	.L2699
	movl	-316(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	je	.L2699
	movl	-316(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$144, %ax
	je	.L2699
	movl	-316(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$66, %ax
	je	.L2699
	movl	-316(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$150, %ax
	je	.L2699
	movl	-316(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$86, %ax
	jne	.L2697
	movl	-316(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	jne	.L2697
	movl	-316(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	jne	.L2697
.L2699:
	.loc 1 5196 0
	movl	-316(%ebp), %eax
	movl	%eax, -296(%ebp)
	movl	-312(%ebp), %eax
	movl	%eax, -288(%ebp)
	.loc 1 5188 0
	jmp	.L2710
.L2697:
	.loc 1 5197 0
	cmpl	$0, -296(%ebp)
	jne	.L2710
	cmpl	$0, -300(%ebp)
	je	.L2710
	movl	-300(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	je	.L2713
	movl	-300(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	je	.L2713
	movl	-300(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L2713
	movl	-300(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	je	.L2713
	movl	-300(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	je	.L2713
	movl	-300(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$144, %ax
	je	.L2713
	movl	-300(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$66, %ax
	je	.L2713
	movl	-300(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$150, %ax
	jne	.L2710
.L2713:
	.loc 1 5198 0
	movl	-300(%ebp), %eax
	movl	%eax, -296(%ebp)
	movl	-376(%ebp), %eax
	movl	%eax, -288(%ebp)
.L2710:
	.loc 1 5202 0
	cmpl	$0, -296(%ebp)
	je	.L2721
	cmpl	$0, -288(%ebp)
	jne	.L2721
	.loc 1 5204 0
	movl	-392(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	movl	-360(%ebp), %edx
	addl	%eax, %edx
	movl	%edx, -724(%ebp)
	movl	-296(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L2724
	movl	-296(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	jbe	.L2724
	movl	-296(%ebp), %eax
	movl	4(%eax), %edx
	movl	cached_regno@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	jne	.L2727
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L2729
.L2727:
	movl	-296(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	get_cse_reg_info
	movl	%eax, -716(%ebp)
	jmp	.L2730
.L2729:
	movl	cached_cse_reg_info@GOTOFF(%ebx), %ecx
	movl	%ecx, -716(%ebp)
.L2730:
	movl	-716(%ebp), %edx
	movl	12(%edx), %eax
	addl	$9088, %eax
	movl	%eax, %ecx
	andl	$31, %ecx
	movl	%ecx, -720(%ebp)
	jmp	.L2731
.L2724:
	movl	-304(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-296(%ebp), %eax
	movl	%eax, (%esp)
	call	canon_hash
	movl	%eax, %edx
	andl	$31, %edx
	movl	%edx, -720(%ebp)
.L2731:
	movl	-720(%ebp), %eax
	movl	-724(%ebp), %ecx
	movl	%eax, 40(%ecx)
	.loc 1 5205 0
	movl	-392(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	addl	-360(%ebp), %eax
	movl	40(%eax), %edx
	movl	-304(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-296(%ebp), %eax
	movl	%eax, (%esp)
	call	lookup
	movl	%eax, -288(%ebp)
.L2721:
	.loc 1 5208 0
	movl	-392(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	movl	%eax, %edx
	addl	-360(%ebp), %edx
	movl	-296(%ebp), %eax
	movl	%eax, 32(%edx)
	.loc 1 5209 0
	movl	-392(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	movl	%eax, %edx
	addl	-360(%ebp), %edx
	movl	-288(%ebp), %eax
	movl	%eax, 44(%edx)
	.loc 1 5214 0
	cmpl	$0, -288(%ebp)
	je	.L2732
	cmpl	$0, -312(%ebp)
	je	.L2732
	movl	-288(%ebp), %eax
	movl	24(%eax), %edx
	movl	-312(%ebp), %eax
	movl	24(%eax), %eax
	cmpl	%eax, %edx
	je	.L2732
	.loc 1 5216 0
	movl	-288(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-312(%ebp), %eax
	movl	%eax, (%esp)
	call	merge_equiv_classes
	.loc 1 5214 0
	jmp	.L2736
.L2732:
	.loc 1 5217 0
	cmpl	$0, -288(%ebp)
	je	.L2736
	cmpl	$0, -312(%ebp)
	jne	.L2736
	.loc 1 5218 0
	movl	-288(%ebp), %eax
	movl	%eax, -312(%ebp)
.L2736:
	.loc 1 5222 0
	cmpl	$0, -296(%ebp)
	je	.L2739
	movl	-296(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	je	.L2741
	cmpl	$0, -288(%ebp)
	je	.L2739
	movl	-288(%ebp), %eax
	movl	28(%eax), %eax
	testl	%eax, %eax
	je	.L2739
.L2741:
	.loc 1 5226 0
	movl	-288(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-296(%ebp), %eax
	movl	%eax, (%esp)
	call	use_related_value
	movl	%eax, -292(%ebp)
	.loc 1 5227 0
	cmpl	$0, -292(%ebp)
	je	.L2739
.LBB102:
	.loc 1 5230 0
	movl	-292(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L2745
	movl	-292(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	jbe	.L2745
	movl	-292(%ebp), %eax
	movl	4(%eax), %edx
	movl	cached_regno@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	jne	.L2748
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L2750
.L2748:
	movl	-292(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	get_cse_reg_info
	movl	%eax, -708(%ebp)
	jmp	.L2751
.L2750:
	movl	cached_cse_reg_info@GOTOFF(%ebx), %edx
	movl	%edx, -708(%ebp)
.L2751:
	movl	-708(%ebp), %ecx
	movl	12(%ecx), %eax
	addl	$9088, %eax
	movl	%eax, %edx
	andl	$31, %edx
	movl	%edx, -712(%ebp)
	jmp	.L2752
.L2745:
	movl	-304(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-292(%ebp), %eax
	movl	%eax, (%esp)
	call	canon_hash
	movl	%eax, %ecx
	andl	$31, %ecx
	movl	%ecx, -712(%ebp)
.L2752:
	movl	-304(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-712(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-292(%ebp), %eax
	movl	%eax, (%esp)
	call	lookup
	movl	%eax, -236(%ebp)
	.loc 1 5231 0
	cmpl	$0, -236(%ebp)
	je	.L2753
	cmpl	$0, -312(%ebp)
	je	.L2753
	.loc 1 5233 0
	movl	-312(%ebp), %eax
	movl	24(%eax), %edx
	movl	-236(%ebp), %eax
	movl	24(%eax), %eax
	cmpl	%eax, %edx
	je	.L2756
	.loc 1 5238 0
	movl	-236(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-312(%ebp), %eax
	movl	%eax, (%esp)
	call	merge_equiv_classes
.L2756:
	.loc 1 5240 0
	movl	$0, -292(%ebp)
	.loc 1 5241 0
	movl	$0, -236(%ebp)
	.loc 1 5231 0
	jmp	.L2739
.L2753:
	.loc 1 5243 0
	cmpl	$0, -236(%ebp)
	je	.L2739
	cmpl	$0, -312(%ebp)
	jne	.L2739
	.loc 1 5244 0
	movl	-236(%ebp), %eax
	movl	%eax, -312(%ebp)
.L2739:
.LBE102:
	.loc 1 5251 0
	cmpl	$0, -296(%ebp)
	je	.L2760
	cmpl	$0, -292(%ebp)
	jne	.L2760
	movl	-296(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L2760
	movl	-304(%ebp), %eax
	movl	mode_class@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$1, %eax
	jne	.L2760
	movl	-304(%ebp), %edx
	movl	mode_bitsize@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	movl	%eax, -704(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L2765
	movl	$64, -700(%ebp)
	jmp	.L2767
.L2765:
	movl	$32, -700(%ebp)
.L2767:
	movl	-700(%ebp), %edx
	cmpl	%edx, -704(%ebp)
	jge	.L2760
.LBB103:
	.loc 1 5257 0
	movl	-304(%ebp), %edx
	movl	mode_wider_mode@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -232(%ebp)
	.loc 1 5258 0
	jmp	.L2769
.L2770:
.LBB104:
	.loc 1 5263 0
	movl	-296(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L2771
	movl	-296(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	jbe	.L2771
	movl	-296(%ebp), %eax
	movl	4(%eax), %edx
	movl	cached_regno@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	jne	.L2774
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L2776
.L2774:
	movl	-296(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	get_cse_reg_info
	movl	%eax, -692(%ebp)
	jmp	.L2777
.L2776:
	movl	cached_cse_reg_info@GOTOFF(%ebx), %ecx
	movl	%ecx, -692(%ebp)
.L2777:
	movl	-692(%ebp), %edx
	movl	12(%edx), %eax
	addl	$9088, %eax
	movl	%eax, %ecx
	andl	$31, %ecx
	movl	%ecx, -696(%ebp)
	jmp	.L2778
.L2771:
	movl	-232(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-296(%ebp), %eax
	movl	%eax, (%esp)
	call	canon_hash
	movl	%eax, %edx
	andl	$31, %edx
	movl	%edx, -696(%ebp)
.L2778:
	movl	-232(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-696(%ebp), %ecx
	movl	%ecx, 4(%esp)
	movl	-296(%ebp), %eax
	movl	%eax, (%esp)
	call	lookup
	movl	%eax, -228(%ebp)
	.loc 1 5265 0
	cmpl	$0, -228(%ebp)
	je	.L2779
	.loc 1 5268 0
	movl	-228(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -228(%ebp)
	.loc 1 5269 0
	jmp	.L2781
.L2782:
	.loc 1 5270 0
	movl	-228(%ebp), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L2783
	.loc 1 5272 0
	movl	-228(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-304(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_lowpart_if_possible@PLT
	movl	%eax, -292(%ebp)
	.loc 1 5274 0
	jmp	.L2779
.L2783:
	.loc 1 5269 0
	movl	-228(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -228(%ebp)
.L2781:
	cmpl	$0, -228(%ebp)
	jne	.L2782
.L2779:
.LBE104:
	.loc 1 5260 0
	movl	-232(%ebp), %edx
	movl	mode_wider_mode@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -232(%ebp)
.L2769:
	.loc 1 5258 0
	movl	-232(%ebp), %edx
	movl	mode_bitsize@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	movl	%eax, -688(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L2785
	movl	$64, -684(%ebp)
	jmp	.L2787
.L2785:
	movl	$32, -684(%ebp)
.L2787:
	movl	-684(%ebp), %eax
	cmpl	%eax, -688(%ebp)
	jg	.L2760
	cmpl	$0, -292(%ebp)
	je	.L2770
.L2760:
.LBE103:
	.loc 1 5285 0
	movl	flag_expensive_optimizations@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2789
	cmpl	$0, -292(%ebp)
	jne	.L2789
	movl	-324(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$93, %ax
	jne	.L2789
	movl	-324(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L2789
	movl	-304(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -680(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L2794
	movl	$8, -676(%ebp)
	jmp	.L2796
.L2794:
	movl	$4, -676(%ebp)
.L2796:
	movl	-676(%ebp), %edx
	cmpl	%edx, -680(%ebp)
	jge	.L2789
.LBB105:
	.loc 1 5290 0
	movl	-324(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	$93, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, -220(%ebp)
	.loc 1 5292 0
	movl	-304(%ebp), %edx
	movl	mode_wider_mode@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -224(%ebp)
	.loc 1 5293 0
	jmp	.L2798
.L2799:
.LBB106:
	.loc 1 5296 0
	movl	-324(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-224(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_lowpart_if_possible@PLT
	movl	%eax, -216(%ebp)
	.loc 1 5299 0
	cmpl	$0, -216(%ebp)
	je	.L2800
	.loc 1 5301 0
	movl	-224(%ebp), %eax
	movl	%eax, %edx
	movl	-220(%ebp), %eax
	movb	%dl, 2(%eax)
	.loc 1 5302 0
	movl	-220(%ebp), %edx
	movl	-216(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 5303 0
	movl	-220(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L2802
	movl	-220(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	jbe	.L2802
	movl	-220(%ebp), %eax
	movl	4(%eax), %edx
	movl	cached_regno@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	jne	.L2805
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L2807
.L2805:
	movl	-220(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	get_cse_reg_info
	movl	%eax, -668(%ebp)
	jmp	.L2808
.L2807:
	movl	cached_cse_reg_info@GOTOFF(%ebx), %ecx
	movl	%ecx, -668(%ebp)
.L2808:
	movl	-668(%ebp), %edx
	movl	12(%edx), %eax
	addl	$9088, %eax
	movl	%eax, %ecx
	andl	$31, %ecx
	movl	%ecx, -672(%ebp)
	jmp	.L2809
.L2802:
	movl	-224(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-220(%ebp), %eax
	movl	%eax, (%esp)
	call	canon_hash
	movl	%eax, %edx
	andl	$31, %edx
	movl	%edx, -672(%ebp)
.L2809:
	movl	-224(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-672(%ebp), %ecx
	movl	%ecx, 4(%esp)
	movl	-220(%ebp), %eax
	movl	%eax, (%esp)
	call	lookup
	movl	%eax, -212(%ebp)
	.loc 1 5304 0
	cmpl	$0, -212(%ebp)
	je	.L2800
	.loc 1 5307 0
	movl	-212(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -212(%ebp)
	.loc 1 5308 0
	jmp	.L2811
.L2812:
	.loc 1 5309 0
	movl	-212(%ebp), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L2813
	.loc 1 5311 0
	movl	-212(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-304(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_lowpart_if_possible@PLT
	movl	%eax, -292(%ebp)
	.loc 1 5313 0
	jmp	.L2815
.L2813:
	.loc 1 5308 0
	movl	-212(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -212(%ebp)
.L2811:
	cmpl	$0, -212(%ebp)
	jne	.L2812
.L2815:
	.loc 1 5316 0
	cmpl	$0, -292(%ebp)
	jne	.L2789
.L2800:
.LBE106:
	.loc 1 5294 0
	movl	-224(%ebp), %edx
	movl	mode_wider_mode@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -224(%ebp)
.L2798:
	.loc 1 5293 0
	movl	-224(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -664(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L2816
	movl	$8, -660(%ebp)
	jmp	.L2818
.L2816:
	movl	$4, -660(%ebp)
.L2818:
	movl	-660(%ebp), %eax
	cmpl	%eax, -664(%ebp)
	jle	.L2799
.L2789:
.LBE105:
	.loc 1 5328 0
	movl	flag_expensive_optimizations@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2819
	cmpl	$0, -292(%ebp)
	jne	.L2819
	movl	-304(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -656(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L2822
	movl	$8, -652(%ebp)
	jmp	.L2824
.L2822:
	movl	$4, -652(%ebp)
.L2824:
	movl	-652(%ebp), %edx
	cmpl	%edx, -656(%ebp)
	jge	.L2819
	movl	-304(%ebp), %eax
	movl	mode_class@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$1, %eax
	jne	.L2819
	movl	-324(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L2819
	movl	do_not_record@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L2819
.LBB107:
	.loc 1 5338 0
	movl	memory_extend_rtx@GOTOFF(%ebx), %ecx
	movl	%ecx, -648(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L2829
	cmpl	$4, -304(%ebp)
	je	.L2831
	cmpl	$53, -304(%ebp)
	jne	.L2829
.L2831:
	movw	$130, -642(%ebp)
	jmp	.L2833
.L2829:
	movw	$131, -642(%ebp)
.L2833:
	movzwl	-642(%ebp), %edx
	movl	-648(%ebp), %eax
	movw	%dx, (%eax)
	.loc 1 5339 0
	movl	memory_extend_rtx@GOTOFF(%ebx), %edx
	movl	-324(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 5341 0
	movl	-304(%ebp), %edx
	movl	mode_wider_mode@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -208(%ebp)
	.loc 1 5342 0
	jmp	.L2834
.L2835:
.LBB108:
	.loc 1 5347 0
	movl	memory_extend_rtx@GOTOFF(%ebx), %edx
	movl	-208(%ebp), %eax
	movb	%al, 2(%edx)
	.loc 1 5348 0
	movl	memory_extend_rtx@GOTOFF(%ebx), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L2836
	movl	memory_extend_rtx@GOTOFF(%ebx), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	jbe	.L2836
	movl	memory_extend_rtx@GOTOFF(%ebx), %eax
	movl	4(%eax), %edx
	movl	cached_regno@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	jne	.L2839
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L2841
.L2839:
	movl	memory_extend_rtx@GOTOFF(%ebx), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	get_cse_reg_info
	movl	%eax, -636(%ebp)
	jmp	.L2842
.L2841:
	movl	cached_cse_reg_info@GOTOFF(%ebx), %ecx
	movl	%ecx, -636(%ebp)
.L2842:
	movl	-636(%ebp), %edx
	movl	12(%edx), %eax
	addl	$9088, %eax
	movl	%eax, %ecx
	andl	$31, %ecx
	movl	%ecx, -640(%ebp)
	jmp	.L2843
.L2836:
	movl	memory_extend_rtx@GOTOFF(%ebx), %eax
	movl	-208(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	canon_hash
	movl	%eax, %edx
	andl	$31, %edx
	movl	%edx, -640(%ebp)
.L2843:
	movl	memory_extend_rtx@GOTOFF(%ebx), %eax
	movl	-208(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	-640(%ebp), %ecx
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	lookup
	movl	%eax, -204(%ebp)
	.loc 1 5350 0
	cmpl	$0, -204(%ebp)
	je	.L2844
	.loc 1 5353 0
	movl	-204(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -204(%ebp)
	.loc 1 5354 0
	jmp	.L2846
.L2847:
	.loc 1 5355 0
	movl	-204(%ebp), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L2848
	.loc 1 5357 0
	movl	-204(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-304(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_lowpart_if_possible@PLT
	movl	%eax, -292(%ebp)
	.loc 1 5359 0
	jmp	.L2850
.L2848:
	.loc 1 5354 0
	movl	-204(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -204(%ebp)
.L2846:
	cmpl	$0, -204(%ebp)
	jne	.L2847
.L2850:
	.loc 1 5362 0
	cmpl	$0, -292(%ebp)
	jne	.L2819
.L2844:
.LBE108:
	.loc 1 5343 0
	movl	-208(%ebp), %edx
	movl	mode_wider_mode@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -208(%ebp)
.L2834:
	.loc 1 5342 0
	movl	-208(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -632(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L2851
	movl	$8, -628(%ebp)
	jmp	.L2853
.L2851:
	movl	$4, -628(%ebp)
.L2853:
	movl	-628(%ebp), %eax
	cmpl	%eax, -632(%ebp)
	jle	.L2835
.L2819:
.LBE107:
	.loc 1 5368 0
	movl	-324(%ebp), %eax
	cmpl	-316(%ebp), %eax
	jne	.L2854
	.loc 1 5369 0
	movl	$0, -316(%ebp)
.L2854:
	.loc 1 5382 0
	cmpl	$0, -312(%ebp)
	je	.L2856
	.loc 1 5383 0
	movl	-312(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -312(%ebp)
.L2856:
	.loc 1 5384 0
	movl	-312(%ebp), %eax
	movl	%eax, -308(%ebp)
	jmp	.L2858
.L2859:
.LBB109:
	.loc 1 5386 0
	movl	-308(%ebp), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -200(%ebp)
	.loc 1 5391 0
	cmpl	$71, -200(%ebp)
	je	.L2860
	movl	-308(%ebp), %eax
	movl	(%eax), %edx
	movl	-308(%ebp), %eax
	movl	(%eax), %eax
	movl	$0, 12(%esp)
	movl	$1, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	exp_equiv_p
	testl	%eax, %eax
	je	.L2862
.L2860:
	.loc 1 5396 0
	cmpl	$73, -200(%ebp)
	jne	.L2863
	movl	-308(%ebp), %eax
	movl	(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %ecx
	movl	-308(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	%al, %cl
	jbe	.L2863
	cmpl	$0, -324(%ebp)
	je	.L2862
	movl	-324(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L2862
	movl	-324(%ebp), %eax
	movzbl	2(%eax), %edx
	movl	-308(%ebp), %eax
	movl	(%eax), %eax
	movzbl	2(%eax), %eax
	cmpb	%al, %dl
	jne	.L2862
	movl	-324(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %ecx
	movl	-308(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	%al, %cl
	jae	.L2862
.L2863:
	.loc 1 5406 0
	cmpl	$0, -324(%ebp)
	je	.L2869
	movl	-324(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	cmpl	-200(%ebp), %eax
	jne	.L2869
	movl	-308(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-324(%ebp), %eax
	movl	%eax, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	je	.L2869
	.loc 1 5407 0
	movl	$0, -324(%ebp)
	.loc 1 5406 0
	jmp	.L2873
.L2869:
	.loc 1 5408 0
	cmpl	$0, -316(%ebp)
	je	.L2874
	movl	-316(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	cmpl	-200(%ebp), %eax
	jne	.L2874
	movl	-308(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-316(%ebp), %eax
	movl	%eax, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	je	.L2874
	.loc 1 5410 0
	movl	$0, -316(%ebp)
	.loc 1 5408 0
	jmp	.L2873
.L2874:
	.loc 1 5411 0
	cmpl	$0, -300(%ebp)
	je	.L2878
	movl	-300(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	cmpl	-200(%ebp), %eax
	jne	.L2878
	movl	-308(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-300(%ebp), %eax
	movl	%eax, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	je	.L2878
	.loc 1 5413 0
	movl	$0, -300(%ebp)
	.loc 1 5411 0
	jmp	.L2873
.L2878:
	.loc 1 5414 0
	cmpl	$0, -292(%ebp)
	je	.L2873
	movl	-292(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	cmpl	-200(%ebp), %eax
	jne	.L2873
	movl	-308(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-292(%ebp), %eax
	movl	%eax, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	je	.L2873
	.loc 1 5416 0
	movl	$0, -292(%ebp)
.L2873:
	.loc 1 5421 0
	movl	-320(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	cmpl	-200(%ebp), %eax
	jne	.L2862
	movl	-308(%ebp), %eax
	movl	(%eax), %edx
	movl	-320(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	je	.L2862
	.loc 1 5422 0
	movl	-320(%ebp), %eax
	movl	%eax, -292(%ebp)
.L2862:
.LBE109:
	.loc 1 5384 0
	movl	-308(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -308(%ebp)
.L2858:
	cmpl	$0, -308(%ebp)
	jne	.L2859
	.loc 1 5431 0
	cmpl	$0, -324(%ebp)
	je	.L2888
	.loc 1 5433 0
	movl	-320(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-324(%ebp), %eax
	movl	%eax, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	je	.L2890
	.loc 1 5434 0
	movl	$-1, -264(%ebp)
	movl	-264(%ebp), %eax
	movl	%eax, -284(%ebp)
	jmp	.L2888
.L2890:
	.loc 1 5437 0
	movl	-324(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	je	.L2892
	movl	$57, 4(%esp)
	movl	-324(%ebp), %eax
	movl	%eax, (%esp)
	call	notreg_cost
	movl	%eax, -624(%ebp)
	jmp	.L2894
.L2892:
	movl	$0, -624(%ebp)
.L2894:
	movl	-624(%ebp), %edx
	movl	%edx, -284(%ebp)
	.loc 1 5438 0
	movl	-324(%ebp), %eax
	movl	%eax, (%esp)
	call	approx_reg_cost
	movl	%eax, -264(%ebp)
.L2888:
	.loc 1 5442 0
	cmpl	$0, -300(%ebp)
	je	.L2895
	.loc 1 5444 0
	movl	-320(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-300(%ebp), %eax
	movl	%eax, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	je	.L2897
	.loc 1 5445 0
	movl	$-1, -260(%ebp)
	movl	-260(%ebp), %eax
	movl	%eax, -280(%ebp)
	jmp	.L2895
.L2897:
	.loc 1 5448 0
	movl	-300(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	je	.L2899
	movl	$57, 4(%esp)
	movl	-300(%ebp), %eax
	movl	%eax, (%esp)
	call	notreg_cost
	movl	%eax, -620(%ebp)
	jmp	.L2901
.L2899:
	movl	$0, -620(%ebp)
.L2901:
	movl	-620(%ebp), %ecx
	movl	%ecx, -280(%ebp)
	.loc 1 5449 0
	movl	-300(%ebp), %eax
	movl	%eax, (%esp)
	call	approx_reg_cost
	movl	%eax, -260(%ebp)
.L2895:
	.loc 1 5453 0
	cmpl	$0, -316(%ebp)
	je	.L2902
	.loc 1 5455 0
	movl	-320(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-316(%ebp), %eax
	movl	%eax, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	je	.L2904
	.loc 1 5456 0
	movl	$-1, -256(%ebp)
	movl	-256(%ebp), %eax
	movl	%eax, -276(%ebp)
	jmp	.L2902
.L2904:
	.loc 1 5459 0
	movl	-316(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	je	.L2906
	movl	$57, 4(%esp)
	movl	-316(%ebp), %eax
	movl	%eax, (%esp)
	call	notreg_cost
	movl	%eax, -616(%ebp)
	jmp	.L2908
.L2906:
	movl	$0, -616(%ebp)
.L2908:
	movl	-616(%ebp), %eax
	movl	%eax, -276(%ebp)
	.loc 1 5460 0
	movl	-316(%ebp), %eax
	movl	%eax, (%esp)
	call	approx_reg_cost
	movl	%eax, -256(%ebp)
.L2902:
	.loc 1 5464 0
	cmpl	$0, -292(%ebp)
	je	.L2909
	.loc 1 5466 0
	movl	-320(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-292(%ebp), %eax
	movl	%eax, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	je	.L2911
	.loc 1 5467 0
	movl	$-1, -252(%ebp)
	movl	-252(%ebp), %eax
	movl	%eax, -272(%ebp)
	jmp	.L2909
.L2911:
	.loc 1 5470 0
	movl	-292(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	je	.L2913
	movl	$57, 4(%esp)
	movl	-292(%ebp), %eax
	movl	%eax, (%esp)
	call	notreg_cost
	movl	%eax, -612(%ebp)
	jmp	.L2915
.L2913:
	movl	$0, -612(%ebp)
.L2915:
	movl	-612(%ebp), %edx
	movl	%edx, -272(%ebp)
	.loc 1 5471 0
	movl	-292(%ebp), %eax
	movl	%eax, (%esp)
	call	approx_reg_cost
	movl	%eax, -252(%ebp)
.L2909:
	.loc 1 5477 0
	movl	global_rtl@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-320(%ebp), %eax
	jne	.L3397
	cmpl	$0, -296(%ebp)
	je	.L3397
	movl	-296(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	jne	.L3397
	.loc 1 5478 0
	movl	-296(%ebp), %eax
	movl	%eax, -316(%ebp)
	movl	$-1, -256(%ebp)
	movl	-256(%ebp), %eax
	movl	%eax, -276(%ebp)
	.loc 1 5487 0
	jmp	.L3397
.L2921:
.LBB110:
	.loc 1 5489 0
	movl	-312(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -312(%ebp)
.L2920:
.L3397:
	.loc 1 5487 0
	cmpl	$0, -312(%ebp)
	je	.L2922
	movl	-312(%ebp), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	je	.L2922
	movl	-312(%ebp), %eax
	movl	(%eax), %edx
	movl	-312(%ebp), %eax
	movl	(%eax), %eax
	movl	$0, 12(%esp)
	movl	$1, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	exp_equiv_p
	testl	%eax, %eax
	je	.L2921
.L2922:
	.loc 1 5494 0
	cmpl	$0, -312(%ebp)
	je	.L2925
	movl	-312(%ebp), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L2925
	movl	-312(%ebp), %eax
	movl	(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %ecx
	movl	-312(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	%al, %cl
	jbe	.L2925
	cmpl	$0, -324(%ebp)
	je	.L2929
	movl	-324(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L2929
	movl	-324(%ebp), %eax
	movzbl	2(%eax), %edx
	movl	-312(%ebp), %eax
	movl	(%eax), %eax
	movzbl	2(%eax), %eax
	cmpb	%al, %dl
	jne	.L2929
	movl	-324(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %ecx
	movl	-312(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	%al, %cl
	jb	.L2925
.L2929:
	.loc 1 5506 0
	movl	-312(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -312(%ebp)
	.loc 1 5507 0
	jmp	.L2920
.L2925:
	.loc 1 5510 0
	cmpl	$0, -312(%ebp)
	je	.L2934
	.loc 1 5512 0
	movl	-312(%ebp), %eax
	movl	32(%eax), %eax
	movl	%eax, -268(%ebp)
	.loc 1 5513 0
	movl	-312(%ebp), %eax
	movl	36(%eax), %eax
	movl	%eax, -248(%ebp)
.L2934:
	.loc 1 5519 0
	cmpl	$0, -316(%ebp)
	je	.L2936
	movl	-264(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-284(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-256(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-276(%ebp), %eax
	movl	%eax, (%esp)
	call	preferrable
	testl	%eax, %eax
	jg	.L2936
	movl	-260(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-280(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-256(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-276(%ebp), %eax
	movl	%eax, (%esp)
	call	preferrable
	testl	%eax, %eax
	jg	.L2936
	movl	-252(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-272(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-256(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-276(%ebp), %eax
	movl	%eax, (%esp)
	call	preferrable
	testl	%eax, %eax
	jg	.L2936
	movl	-248(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-268(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-256(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-276(%ebp), %eax
	movl	%eax, (%esp)
	call	preferrable
	testl	%eax, %eax
	jg	.L2936
	.loc 1 5529 0
	movl	-316(%ebp), %eax
	movl	%eax, -196(%ebp)
	movl	$2147483647, -276(%ebp)
	.loc 1 5530 0
	cmpl	$0, -244(%ebp)
	je	.L2944
	.loc 1 5531 0
	movl	-196(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-304(%ebp), %eax
	movl	%eax, (%esp)
	call	force_const_mem@PLT
	movl	%eax, -196(%ebp)
	.loc 1 5519 0
	jmp	.L2944
.L2936:
	.loc 1 5533 0
	cmpl	$0, -324(%ebp)
	je	.L2945
	movl	-260(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-280(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-264(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-284(%ebp), %eax
	movl	%eax, (%esp)
	call	preferrable
	testl	%eax, %eax
	jg	.L2945
	movl	-252(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-272(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-264(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-284(%ebp), %eax
	movl	%eax, (%esp)
	call	preferrable
	testl	%eax, %eax
	jg	.L2945
	movl	-248(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-268(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-264(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-284(%ebp), %eax
	movl	%eax, (%esp)
	call	preferrable
	testl	%eax, %eax
	jg	.L2945
	.loc 1 5540 0
	movl	-324(%ebp), %eax
	movl	%eax, -196(%ebp)
	movl	$2147483647, -284(%ebp)
	.loc 1 5533 0
	jmp	.L2944
.L2945:
	.loc 1 5541 0
	cmpl	$0, -300(%ebp)
	je	.L2950
	movl	-252(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-272(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-260(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-280(%ebp), %eax
	movl	%eax, (%esp)
	call	preferrable
	testl	%eax, %eax
	jg	.L2950
	movl	-248(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-268(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-260(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-280(%ebp), %eax
	movl	%eax, (%esp)
	call	preferrable
	testl	%eax, %eax
	jg	.L2950
	.loc 1 5546 0
	movl	-300(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_rtx@PLT
	movl	%eax, -196(%ebp)
	movl	$2147483647, -280(%ebp)
	.loc 1 5541 0
	jmp	.L2944
.L2950:
	.loc 1 5547 0
	cmpl	$0, -292(%ebp)
	je	.L2954
	movl	-248(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-268(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-252(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-272(%ebp), %eax
	movl	%eax, (%esp)
	call	preferrable
	testl	%eax, %eax
	jg	.L2954
	.loc 1 5550 0
	movl	-292(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_rtx@PLT
	movl	%eax, -196(%ebp)
	movl	$2147483647, -272(%ebp)
	.loc 1 5547 0
	jmp	.L2944
.L2954:
	.loc 1 5553 0
	movl	-312(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	copy_rtx@PLT
	movl	%eax, -196(%ebp)
	.loc 1 5554 0
	movl	-312(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -312(%ebp)
	.loc 1 5555 0
	movl	$2147483647, -268(%ebp)
.L2944:
	.loc 1 5567 0
	cmpl	$1, -384(%ebp)
	jne	.L2957
	movl	global_rtl@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-320(%ebp), %eax
	jne	.L2957
	movl	global_rtl@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-196(%ebp), %eax
	je	.L2960
	movl	-196(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	jne	.L2957
	movl	-404(%ebp), %eax
	movl	%eax, (%esp)
	call	condjump_p@PLT
	testl	%eax, %eax
	jne	.L2957
.L2960:
	.loc 1 5572 0
	movl	-392(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	addl	-360(%ebp), %eax
	movl	(%eax), %edx
	movl	-196(%ebp), %eax
	movl	%eax, 12(%edx)
	.loc 1 5573 0
	movl	$1, cse_jumps_altered@GOTOFF(%ebx)
	.loc 1 5574 0
	jmp	.L2963
.L2957:
	.loc 1 5578 0
	movl	-392(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	addl	-360(%ebp), %eax
	movl	(%eax), %eax
	leal	12(%eax), %edx
	movl	$0, 12(%esp)
	movl	-196(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-404(%ebp), %eax
	movl	%eax, (%esp)
	call	validate_change@PLT
	testl	%eax, %eax
	je	.L2964
	.loc 1 5583 0
	cmpl	$0, -408(%ebp)
	je	.L2966
	movl	-392(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	addl	-360(%ebp), %eax
	movl	36(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	je	.L2968
	movl	-392(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	addl	-360(%ebp), %eax
	movl	36(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	je	.L2968
	movl	-392(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	addl	-360(%ebp), %eax
	movl	36(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L2966
.L2968:
	.loc 1 5587 0
	movl	-392(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	addl	-360(%ebp), %eax
	movl	(%eax), %eax
	movl	12(%eax), %edx
	movl	-404(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	canon_reg
	movl	%eax, %ecx
	movl	-392(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	addl	-360(%ebp), %eax
	movl	36(%eax), %edx
	movl	-408(%ebp), %eax
	movl	68(%eax), %eax
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	replace_rtx@PLT
.L2966:
	.loc 1 5593 0
	movl	-392(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	addl	-360(%ebp), %eax
	movl	(%eax), %eax
	movl	12(%eax), %edx
	movl	-404(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	canon_reg
	movl	%eax, %ecx
	movl	-392(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	addl	-360(%ebp), %eax
	movl	(%eax), %eax
	addl	$12, %eax
	movl	$1, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-404(%ebp), %eax
	movl	%eax, (%esp)
	call	validate_change@PLT
	.loc 1 5596 0
	call	apply_change_group@PLT
	.loc 1 5597 0
	jmp	.L2963
.L2964:
	.loc 1 5605 0
	movl	constant_pool_entries_cost@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L2920
	movl	-196(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	je	.L2972
	movl	-196(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	je	.L2972
	movl	-196(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L2972
	movl	-196(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	je	.L2972
	movl	-196(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	je	.L2972
	movl	-196(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$144, %ax
	je	.L2972
	movl	-196(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$66, %ax
	je	.L2972
	movl	-196(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$150, %ax
	jne	.L2920
.L2972:
	movl	-196(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	jne	.L2980
	movl	-196(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$132, %ax
	je	.L2920
.L2980:
	movl	-196(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	jne	.L2982
	movl	-196(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$86, %ax
	jne	.L2982
	movl	-196(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	jne	.L2982
	movl	-196(%ebp), %eax
	movl	4(%eax), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	je	.L2920
.L2982:
	cmpl	$0, -316(%ebp)
	je	.L2986
	movl	-316(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	je	.L2920
	cmpl	$0, -244(%ebp)
	jne	.L2920
.L2986:
	movl	-304(%ebp), %eax
	movl	mode_class@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$4, %eax
	je	.L2920
	cmpl	$0, -304(%ebp)
	je	.L2920
	.loc 1 5623 0
	movl	$1, -244(%ebp)
	.loc 1 5624 0
	movl	-196(%ebp), %eax
	movl	%eax, -316(%ebp)
	.loc 1 5625 0
	movl	constant_pool_entries_cost@GOTOFF(%ebx), %eax
	movl	%eax, -276(%ebp)
	.loc 1 5627 0
	jmp	.L2920
.L2963:
.LBE110:
	.loc 1 5629 0
	movl	-392(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	addl	-360(%ebp), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movl	%eax, -324(%ebp)
	.loc 1 5637 0
	movl	-320(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L2991
	movl	-320(%ebp), %eax
	movl	4(%eax), %edx
	movl	cached_regno@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	jne	.L2993
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L2995
.L2993:
	movl	-320(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	get_cse_reg_info
	movl	%eax, -608(%ebp)
	jmp	.L2996
.L2995:
	movl	cached_cse_reg_info@GOTOFF(%ebx), %ecx
	movl	%ecx, -608(%ebp)
.L2996:
	movl	-608(%ebp), %eax
	movl	12(%eax), %edx
	movl	-320(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	je	.L2991
.LBB111:
	.loc 1 5640 0
	movl	-320(%ebp), %eax
	movl	4(%eax), %edx
	movl	cached_regno@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	jne	.L2998
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L3000
.L2998:
	movl	-320(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	get_cse_reg_info
	movl	%eax, -604(%ebp)
	jmp	.L3001
.L3000:
	movl	cached_cse_reg_info@GOTOFF(%ebx), %edx
	movl	%edx, -604(%ebp)
.L3001:
	movl	-604(%ebp), %ecx
	movl	12(%ecx), %eax
	movl	%eax, -192(%ebp)
	.loc 1 5641 0
	movl	-192(%ebp), %eax
	sall	$5, %eax
	movl	%eax, %edx
	movl	qty_table@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -188(%ebp)
	.loc 1 5643 0
	movl	-188(%ebp), %eax
	movl	24(%eax), %edx
	movl	-320(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	cmpl	%eax, %edx
	jne	.L2991
	movl	-188(%ebp), %eax
	movl	16(%eax), %edx
	movl	-320(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	je	.L2991
	movl	-324(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L2991
	movl	-324(%ebp), %eax
	movl	4(%eax), %edx
	movl	-320(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	jne	.L2991
	movl	-392(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	addl	-360(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L3006
	movl	-392(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	addl	-360(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	jbe	.L2991
.L3006:
	movl	-320(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L3008
	movl	-320(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	jbe	.L2991
.L3008:
.LBB112:
	.loc 1 5654 0
	movl	-324(%ebp), %eax
	movl	4(%eax), %edx
	movl	cached_regno@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	jne	.L3010
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L3012
.L3010:
	movl	-324(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	get_cse_reg_info
	movl	%eax, -600(%ebp)
	jmp	.L3013
.L3012:
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	movl	%eax, -600(%ebp)
.L3013:
	movl	-600(%ebp), %edx
	movl	12(%edx), %eax
	movl	%eax, -184(%ebp)
	.loc 1 5655 0
	movl	-184(%ebp), %eax
	sall	$5, %eax
	movl	%eax, %edx
	movl	qty_table@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -180(%ebp)
	.loc 1 5656 0
	movl	-180(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -176(%ebp)
	.loc 1 5659 0
	cmpl	$175, -176(%ebp)
	jle	.L3014
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movl	48(%eax), %edx
	movl	-176(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -596(%ebp)
	jmp	.L3016
.L3014:
	movl	-176(%ebp), %edx
	movl	-324(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	gen_rtx_REG@PLT
	movl	%eax, -596(%ebp)
.L3016:
	movl	-596(%ebp), %ecx
	movl	%ecx, -172(%ebp)
	.loc 1 5664 0
	movl	-392(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	addl	-360(%ebp), %eax
	movl	(%eax), %eax
	leal	12(%eax), %edx
	movl	$0, 12(%esp)
	movl	-172(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-404(%ebp), %eax
	movl	%eax, (%esp)
	call	validate_change@PLT
	testl	%eax, %eax
	je	.L2991
	.loc 1 5666 0
	movl	-172(%ebp), %eax
	movl	%eax, -324(%ebp)
	.loc 1 5670 0
	cmpl	$0, -296(%ebp)
	je	.L2991
	movl	-296(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	je	.L3019
	movl	$57, 4(%esp)
	movl	-296(%ebp), %eax
	movl	%eax, (%esp)
	call	notreg_cost
	movl	%eax, -592(%ebp)
	jmp	.L3021
.L3019:
	movl	$0, -592(%ebp)
.L3021:
	movl	-324(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	je	.L3022
	movl	$57, 4(%esp)
	movl	-324(%ebp), %eax
	movl	%eax, (%esp)
	call	notreg_cost
	movl	%eax, -588(%ebp)
	jmp	.L3024
.L3022:
	movl	$0, -588(%ebp)
.L3024:
	movl	-588(%ebp), %eax
	cmpl	%eax, -592(%ebp)
	jge	.L2991
	movl	-392(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	addl	-360(%ebp), %eax
	movl	(%eax), %eax
	leal	12(%eax), %edx
	movl	$0, 12(%esp)
	movl	-296(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-404(%ebp), %eax
	movl	%eax, (%esp)
	call	validate_change@PLT
	testl	%eax, %eax
	je	.L2991
	.loc 1 5673 0
	movl	-296(%ebp), %eax
	movl	%eax, -324(%ebp)
.L2991:
.LBE112:
.LBE111:
	.loc 1 5679 0
	movl	-392(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	addl	-360(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-324(%ebp), %eax
	je	.L3027
	.loc 1 5681 0
	movl	$1, cse_altered@GOTOFF(%ebx)
	.loc 1 5682 0
	movl	$0, do_not_record@GOTOFF(%ebx)
	.loc 1 5683 0
	movl	$0, hash_arg_in_memory@GOTOFF(%ebx)
	.loc 1 5684 0
	movl	-392(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	movl	%eax, %edx
	addl	-360(%ebp), %edx
	movl	-324(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 5685 0
	movl	-392(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	movl	-360(%ebp), %edx
	addl	%eax, %edx
	movl	%edx, -584(%ebp)
	movl	-324(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L3029
	movl	-324(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	jbe	.L3029
	movl	-324(%ebp), %eax
	movl	4(%eax), %edx
	movl	cached_regno@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	jne	.L3032
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L3034
.L3032:
	movl	-324(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	get_cse_reg_info
	movl	%eax, -576(%ebp)
	jmp	.L3035
.L3034:
	movl	cached_cse_reg_info@GOTOFF(%ebx), %ecx
	movl	%ecx, -576(%ebp)
.L3035:
	movl	-576(%ebp), %edx
	movl	12(%edx), %eax
	addl	$9088, %eax
	movl	%eax, %ecx
	andl	$31, %ecx
	movl	%ecx, -580(%ebp)
	jmp	.L3036
.L3029:
	movl	-304(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-324(%ebp), %eax
	movl	%eax, (%esp)
	call	canon_hash
	movl	%eax, %edx
	andl	$31, %edx
	movl	%edx, -580(%ebp)
.L3036:
	movl	-580(%ebp), %eax
	movl	-584(%ebp), %ecx
	movl	%eax, 12(%ecx)
	.loc 1 5686 0
	movl	-392(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	movl	%eax, %edx
	addl	-360(%ebp), %edx
	movl	do_not_record@GOTOFF(%ebx), %eax
	movb	%al, 25(%edx)
	.loc 1 5687 0
	movl	-392(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	movl	%eax, %edx
	addl	-360(%ebp), %edx
	movl	hash_arg_in_memory@GOTOFF(%ebx), %eax
	movb	%al, 24(%edx)
	.loc 1 5688 0
	movl	-392(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	movl	%eax, %esi
	addl	-360(%ebp), %esi
	movl	-392(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	addl	-360(%ebp), %eax
	movl	12(%eax), %edx
	movl	-304(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-324(%ebp), %eax
	movl	%eax, (%esp)
	call	lookup
	movl	%eax, 8(%esi)
.L3027:
	.loc 1 5701 0
	cmpl	$1, -384(%ebp)
	jne	.L3037
	cmpl	$0, -296(%ebp)
	je	.L3037
	movl	-320(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L3037
	movl	-296(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	je	.L3037
	movl	-296(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	jne	.L3042
	movl	-296(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$86, %ax
	jne	.L3042
	movl	-296(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	jne	.L3042
	movl	-296(%ebp), %eax
	movl	4(%eax), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	je	.L3037
.L3042:
	.loc 1 5709 0
	movl	-296(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_rtx@PLT
	movl	%eax, -296(%ebp)
	.loc 1 5713 0
	movl	-296(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$4, 4(%esp)
	movl	-404(%ebp), %eax
	movl	%eax, (%esp)
	call	set_unique_reg_note@PLT
	.loc 1 5726 0
	movl	-320(%ebp), %eax
	movl	4(%eax), %edx
	movl	cached_regno@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	jne	.L3046
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L3048
.L3046:
	movl	-320(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	get_cse_reg_info
	movl	%eax, -572(%ebp)
	jmp	.L3049
.L3048:
	movl	cached_cse_reg_info@GOTOFF(%ebx), %edx
	movl	%edx, -572(%ebp)
.L3049:
	movl	-572(%ebp), %ecx
	movl	12(%ecx), %edx
	movl	-320(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	je	.L3037
.LBB113:
	.loc 1 5728 0
	movl	-320(%ebp), %eax
	movl	4(%eax), %edx
	movl	cached_regno@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	jne	.L3051
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L3053
.L3051:
	movl	-320(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	get_cse_reg_info
	movl	%eax, -568(%ebp)
	jmp	.L3054
.L3053:
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	movl	%eax, -568(%ebp)
.L3054:
	movl	-568(%ebp), %edx
	movl	12(%edx), %eax
	movl	%eax, -168(%ebp)
	.loc 1 5729 0
	movl	-168(%ebp), %eax
	sall	$5, %eax
	movl	%eax, %edx
	movl	qty_table@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -164(%ebp)
	.loc 1 5731 0
	movl	-164(%ebp), %eax
	movl	(%eax), %edx
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	cmpl	%eax, %edx
	jne	.L3037
.LBB114:
	.loc 1 5734 0
	movl	$0, 8(%esp)
	movl	$5, 4(%esp)
	movl	-404(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	movl	%eax, -160(%ebp)
	.loc 1 5735 0
	movl	-164(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -156(%ebp)
	.loc 1 5737 0
	movl	-156(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L3056
	movl	-156(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L3058
	movl	-156(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -560(%ebp)
	jmp	.L3060
.L3058:
	movl	-156(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-156(%ebp), %eax
	movl	%eax, (%esp)
	call	single_set_2@PLT
	movl	%eax, -560(%ebp)
.L3060:
	movl	-560(%ebp), %ecx
	movl	%ecx, -564(%ebp)
	jmp	.L3061
.L3056:
	movl	$0, -564(%ebp)
.L3061:
	movl	-564(%ebp), %eax
	movl	%eax, -388(%ebp)
	cmpl	$0, -388(%ebp)
	je	.L3037
	movl	-388(%ebp), %eax
	movl	4(%eax), %edx
	movl	-320(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	je	.L3037
	.loc 1 5740 0
	cmpl	$0, -160(%ebp)
	je	.L3064
	.loc 1 5741 0
	movl	-160(%ebp), %edx
	movl	-156(%ebp), %eax
	movl	%eax, 4(%edx)
	jmp	.L3037
.L3064:
	.loc 1 5743 0
	movl	-404(%ebp), %eax
	movl	68(%eax), %eax
	movl	%eax, 12(%esp)
	movl	-156(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$5, 4(%esp)
	movl	$4, (%esp)
	call	gen_rtx_fmt_ue@PLT
	movl	%eax, %edx
	movl	-404(%ebp), %eax
	movl	%edx, 68(%eax)
.L3037:
.LBE114:
.LBE113:
	.loc 1 5752 0
	movl	$0, do_not_record@GOTOFF(%ebx)
	.loc 1 5756 0
	jmp	.L3066
.L3067:
	.loc 1 5760 0
	movl	-320(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -320(%ebp)
.L3066:
	.loc 1 5756 0
	movl	-320(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$142, %ax
	je	.L3067
	movl	-320(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$143, %ax
	je	.L3067
	movl	-320(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	je	.L3067
	movl	-320(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$74, %ax
	je	.L3067
	.loc 1 5762 0
	movl	-392(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	movl	%eax, %edx
	addl	-360(%ebp), %edx
	movl	-320(%ebp), %eax
	movl	%eax, 20(%edx)
	.loc 1 5764 0
	movl	-320(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L3072
	.loc 1 5773 0
	movl	-404(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-320(%ebp), %eax
	movl	%eax, (%esp)
	call	fold_rtx
	movl	%eax, -320(%ebp)
.L3072:
	.loc 1 5780 0
	movl	-392(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	movl	-360(%ebp), %edx
	addl	%eax, %edx
	movl	%edx, -556(%ebp)
	movl	-320(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L3074
	movl	-320(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	jbe	.L3074
	movl	-320(%ebp), %eax
	movl	4(%eax), %edx
	movl	cached_regno@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	jne	.L3077
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L3079
.L3077:
	movl	-320(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	get_cse_reg_info
	movl	%eax, -548(%ebp)
	jmp	.L3080
.L3079:
	movl	cached_cse_reg_info@GOTOFF(%ebx), %ecx
	movl	%ecx, -548(%ebp)
.L3080:
	movl	-548(%ebp), %edx
	movl	12(%edx), %eax
	addl	$9088, %eax
	movl	%eax, %ecx
	andl	$31, %ecx
	movl	%ecx, -552(%ebp)
	jmp	.L3081
.L3074:
	movl	-304(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-320(%ebp), %eax
	movl	%eax, (%esp)
	call	canon_hash
	movl	%eax, %edx
	andl	$31, %edx
	movl	%edx, -552(%ebp)
.L3081:
	movl	-552(%ebp), %eax
	movl	-556(%ebp), %ecx
	movl	%eax, 16(%ecx)
	.loc 1 5786 0
	movl	-392(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	addl	-360(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$143, %ax
	je	.L3082
	movl	-392(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	addl	-360(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$142, %ax
	jne	.L3084
.L3082:
.LBB115:
	.loc 1 5789 0
	movl	-392(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	addl	-360(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	12(%eax), %eax
	movl	%eax, -152(%ebp)
	.loc 1 5791 0
	cmpl	$0, -296(%ebp)
	je	.L3085
	movl	-296(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L3085
	movl	-152(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L3085
	movl	-152(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%eax), %ecx
	movl	%edx, -544(%ebp)
	movl	%ecx, -540(%ebp)
	cmpl	$0, -540(%ebp)
	jg	.L3085
	cmpl	$0, -540(%ebp)
	js	.L3090
	cmpl	$63, -544(%ebp)
	ja	.L3085
.L3090:
	movl	-296(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%eax), %ecx
	movl	%edx, -536(%ebp)
	movl	%ecx, -532(%ebp)
	movl	-152(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, %ecx
	movl	$-1, %eax
	movl	$-1, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L3398
	movl	%esi, %edi
	xorl	%esi, %esi
.L3398:
	movl	-536(%ebp), %eax
	andl	%esi, %eax
	movl	-532(%ebp), %edx
	andl	%edi, %edx
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L3085
	jmp	.L3093
.L3085:
	.loc 1 5805 0
	movl	-392(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	addl	-360(%ebp), %eax
	movl	$0, 8(%eax)
	.loc 1 5806 0
	movl	-392(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	addl	-360(%ebp), %eax
	movb	$1, 25(%eax)
	.loc 1 5807 0
	movl	$0, -380(%ebp)
	.loc 1 5808 0
	movl	$0, -376(%ebp)
	.loc 1 5786 0
	jmp	.L3093
.L3084:
.LBE115:
	.loc 1 5814 0
	cmpl	$1, -384(%ebp)
	jne	.L3094
	movl	global_rtl@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-320(%ebp), %eax
	jne	.L3094
	movl	global_rtl@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-324(%ebp), %eax
	jne	.L3094
	.loc 1 5817 0
	movl	-404(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_insn@PLT
	.loc 1 5818 0
	movl	$1, cse_jumps_altered@GOTOFF(%ebx)
	.loc 1 5820 0
	movl	-392(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	addl	-360(%ebp), %eax
	movl	$0, (%eax)
	.loc 1 5814 0
	jmp	.L3093
.L3094:
	.loc 1 5825 0
	movl	global_rtl@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-320(%ebp), %eax
	jne	.L3098
	movl	-324(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	jne	.L3098
	.loc 1 5828 0
	movl	-404(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L3101
	movl	-404(%ebp), %eax
	movl	20(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$45, %ax
	je	.L3103
.L3101:
	.loc 1 5830 0
	movl	-404(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_barrier_after@PLT
.L3103:
	.loc 1 5839 0
	cmpl	$1, -384(%ebp)
	jne	.L3104
.LBB116:
	.loc 1 5841 0
	movl	-324(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	gen_jump@PLT
	movl	%eax, %edx
	movl	-404(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	emit_jump_insn_after@PLT
	movl	%eax, -148(%ebp)
	.loc 1 5843 0
	movl	-324(%ebp), %eax
	movl	4(%eax), %edx
	movl	-148(%ebp), %eax
	movl	%edx, 76(%eax)
	.loc 1 5844 0
	movl	-324(%ebp), %eax
	movl	4(%eax), %edx
	movl	36(%edx), %eax
	addl	$1, %eax
	movl	%eax, 36(%edx)
	.loc 1 5845 0
	movl	-404(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_insn@PLT
	.loc 1 5846 0
	movl	-148(%ebp), %eax
	movl	%eax, -404(%ebp)
	.loc 1 5849 0
	movl	-404(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L3106
	movl	-404(%ebp), %eax
	movl	20(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$45, %ax
	je	.L3109
.L3106:
	.loc 1 5851 0
	movl	-404(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_barrier_after@PLT
	jmp	.L3109
.L3104:
.LBE116:
	.loc 1 5854 0
	movl	-404(%ebp), %eax
	movl	$-1, 52(%eax)
.L3109:
	.loc 1 5856 0
	movl	$0, 4(%esp)
	movl	-404(%ebp), %eax
	movl	%eax, (%esp)
	call	never_reached_warning@PLT
	.loc 1 5861 0
	movl	$1, cse_jumps_altered@GOTOFF(%ebx)
	.loc 1 5862 0
	movl	-392(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	addl	-360(%ebp), %eax
	movl	$0, (%eax)
	.loc 1 5825 0
	jmp	.L3093
.L3098:
	.loc 1 5868 0
	movl	do_not_record@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L3093
	.loc 1 5870 0
	movl	-320(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	je	.L3111
	movl	-320(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L3113
.L3111:
	.loc 1 5871 0
	movl	$0, 4(%esp)
	movl	-320(%ebp), %eax
	movl	%eax, (%esp)
	call	invalidate
	.loc 1 5870 0
	jmp	.L3114
.L3113:
	.loc 1 5872 0
	movl	-320(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L3115
	.loc 1 5876 0
	cmpl	$0, -408(%ebp)
	je	.L3117
	movl	-404(%ebp), %eax
	cmpl	-408(%ebp), %eax
	jne	.L3114
.L3117:
	.loc 1 5877 0
	movl	$0, 4(%esp)
	movl	-320(%ebp), %eax
	movl	%eax, (%esp)
	call	invalidate
	jmp	.L3114
.L3115:
	.loc 1 5879 0
	movl	-320(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$74, %ax
	je	.L3120
	movl	-320(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$143, %ax
	jne	.L3114
.L3120:
	.loc 1 5881 0
	movl	-320(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	-320(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	invalidate
.L3114:
	.loc 1 5882 0
	movl	-392(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	addl	-360(%ebp), %eax
	movl	$0, (%eax)
.L3093:
	.loc 1 5885 0
	movl	-392(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	addl	-360(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L3122
	movl	-392(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	addl	-360(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	cmpl	-320(%ebp), %eax
	je	.L3122
	.loc 1 5886 0
	movl	-392(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	movl	-360(%ebp), %ecx
	addl	%eax, %ecx
	movl	%ecx, -524(%ebp)
	movl	-392(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	addl	-360(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L3125
	movl	-392(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	addl	-360(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	jbe	.L3125
	movl	-392(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	addl	-360(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %edx
	movl	cached_regno@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	jne	.L3128
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L3130
.L3128:
	movl	-392(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	addl	-360(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	get_cse_reg_info
	movl	%eax, -516(%ebp)
	jmp	.L3131
.L3130:
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	movl	%eax, -516(%ebp)
.L3131:
	movl	-516(%ebp), %edx
	movl	12(%edx), %eax
	addl	$9088, %eax
	movl	%eax, %ecx
	andl	$31, %ecx
	movl	%ecx, -520(%ebp)
	jmp	.L3132
.L3125:
	movl	-392(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	addl	-360(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %edx
	movl	-304(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	canon_hash
	movl	%eax, %edx
	andl	$31, %edx
	movl	%edx, -520(%ebp)
.L3132:
	movl	-520(%ebp), %eax
	movl	-524(%ebp), %ecx
	movl	%eax, 16(%ecx)
.L3122:
.LBE100:
	.loc 1 5011 0
	addl	$1, -392(%ebp)
.L2638:
	movl	-392(%ebp), %eax
	cmpl	-384(%ebp), %eax
	jl	.L2639
	.loc 1 5913 0
	cmpl	$0, -380(%ebp)
	je	.L3134
	cmpl	$0, -376(%ebp)
	jne	.L3134
	movl	-360(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L3134
	cmpl	$0, -372(%ebp)
	jne	.L3134
	movl	-360(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-380(%ebp), %eax
	movl	%eax, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	jne	.L3134
.LBB117:
	.loc 1 5917 0
	movl	-360(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -140(%ebp)
	.loc 1 5918 0
	movl	-360(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -136(%ebp)
	.loc 1 5919 0
	movl	-136(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -132(%ebp)
	.loc 1 5921 0
	movl	-136(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$74, %ax
	jne	.L3140
	.loc 1 5923 0
	movl	-136(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -132(%ebp)
	.loc 1 5924 0
	movl	$0, -140(%ebp)
.L3140:
	.loc 1 5926 0
	movl	$0, 8(%esp)
	movl	-140(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-380(%ebp), %eax
	movl	%eax, (%esp)
	call	insert_regs
	testl	%eax, %eax
	je	.L3142
	.loc 1 5928 0
	movl	-380(%ebp), %eax
	movl	%eax, (%esp)
	call	rehash_using_reg
	.loc 1 5929 0
	movl	-380(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L3144
	movl	-380(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	jbe	.L3144
	movl	-380(%ebp), %eax
	movl	4(%eax), %edx
	movl	cached_regno@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	jne	.L3147
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L3149
.L3147:
	movl	-380(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	get_cse_reg_info
	movl	%eax, -508(%ebp)
	jmp	.L3150
.L3149:
	movl	cached_cse_reg_info@GOTOFF(%ebx), %edx
	movl	%edx, -508(%ebp)
.L3150:
	movl	-508(%ebp), %ecx
	movl	12(%ecx), %eax
	addl	$9088, %eax
	movl	%eax, %edx
	andl	$31, %edx
	movl	%edx, -512(%ebp)
	jmp	.L3151
.L3144:
	movl	-132(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-380(%ebp), %eax
	movl	%eax, (%esp)
	call	canon_hash
	movl	%eax, %ecx
	andl	$31, %ecx
	movl	%ecx, -512(%ebp)
.L3151:
	movl	-512(%ebp), %eax
	movl	%eax, -364(%ebp)
.L3142:
	.loc 1 5931 0
	movl	-132(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-364(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-140(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-380(%ebp), %eax
	movl	%eax, (%esp)
	call	insert
	movl	%eax, -144(%ebp)
	.loc 1 5932 0
	movl	-368(%ebp), %eax
	movl	%eax, %edx
	movl	-144(%ebp), %eax
	movb	%dl, 44(%eax)
	.loc 1 5933 0
	movl	-144(%ebp), %eax
	movl	%eax, -376(%ebp)
	.loc 1 5938 0
	movl	$0, -392(%ebp)
	jmp	.L3152
.L3153:
	.loc 1 5939 0
	movl	-392(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	addl	-360(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L3154
	movl	-392(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	addl	-360(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	jne	.L3154
	movl	-392(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	addl	-360(%ebp), %eax
	movl	(%eax), %eax
	movl	12(%eax), %edx
	movl	-380(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	je	.L3154
	.loc 1 5941 0
	movl	-392(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	movl	%eax, %edx
	addl	-360(%ebp), %edx
	movl	-376(%ebp), %eax
	movl	%eax, 8(%edx)
.L3154:
	.loc 1 5938 0
	addl	$1, -392(%ebp)
.L3152:
	movl	-392(%ebp), %eax
	cmpl	-384(%ebp), %eax
	jl	.L3153
.L3134:
.LBE117:
	.loc 1 5944 0
	movl	$0, -392(%ebp)
	jmp	.L3158
.L3159:
	.loc 1 5945 0
	movl	-392(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	addl	-360(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L3160
	movl	-392(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	addl	-360(%ebp), %eax
	movzbl	25(%eax), %eax
	testb	%al, %al
	jne	.L3160
	movl	-392(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	addl	-360(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %ecx
	movl	-392(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	addl	-360(%ebp), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	jne	.L3160
	.loc 1 5948 0
	movl	-392(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	addl	-360(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$74, %ax
	jne	.L3164
	.loc 1 5955 0
	movl	-392(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	movl	%eax, %edx
	addl	-360(%ebp), %edx
	movl	-376(%ebp), %eax
	movl	%eax, 8(%edx)
	.loc 1 5956 0
	movl	-392(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	movl	%eax, %edx
	addl	-360(%ebp), %edx
	movl	-364(%ebp), %eax
	movl	%eax, 12(%edx)
	jmp	.L3188
.L3164:
.LBB118:
	.loc 1 5962 0
	movl	-376(%ebp), %eax
	movl	%eax, -128(%ebp)
	.loc 1 5963 0
	movl	-392(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	addl	-360(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -124(%ebp)
	.loc 1 5964 0
	movl	-392(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	addl	-360(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -120(%ebp)
	.loc 1 5966 0
	movl	-124(%ebp), %eax
	movzbl	2(%eax), %eax
	testb	%al, %al
	jne	.L3167
	movl	-120(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -504(%ebp)
	jmp	.L3169
.L3167:
	movl	-124(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -504(%ebp)
.L3169:
	movl	-504(%ebp), %edx
	movl	%edx, -116(%ebp)
	.loc 1 5968 0
	movl	-392(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	addl	-360(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	jne	.L3170
	.loc 1 5973 0
	movl	$0, 8(%esp)
	movl	$6, 4(%esp)
	movl	-404(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	testl	%eax, %eax
	jne	.L3172
.LBB119:
	.loc 1 5980 0
	movl	$0, 8(%esp)
	movl	-128(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-124(%ebp), %eax
	movl	%eax, (%esp)
	call	insert_regs
	testl	%eax, %eax
	je	.L3174
	.loc 1 5982 0
	movl	-124(%ebp), %eax
	movl	%eax, (%esp)
	call	rehash_using_reg
	.loc 1 5983 0
	movl	-392(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	movl	-360(%ebp), %ecx
	addl	%eax, %ecx
	movl	%ecx, -500(%ebp)
	movl	-124(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L3176
	movl	-124(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	jbe	.L3176
	movl	-124(%ebp), %eax
	movl	4(%eax), %edx
	movl	cached_regno@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	jne	.L3179
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L3181
.L3179:
	movl	-124(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	get_cse_reg_info
	movl	%eax, -492(%ebp)
	jmp	.L3182
.L3181:
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	movl	%eax, -492(%ebp)
.L3182:
	movl	-492(%ebp), %edx
	movl	12(%edx), %eax
	addl	$9088, %eax
	movl	%eax, %ecx
	andl	$31, %ecx
	movl	%ecx, -496(%ebp)
	jmp	.L3183
.L3176:
	movl	-116(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-124(%ebp), %eax
	movl	%eax, (%esp)
	call	canon_hash
	movl	%eax, %edx
	andl	$31, %edx
	movl	%edx, -496(%ebp)
.L3183:
	movl	-496(%ebp), %eax
	movl	-500(%ebp), %ecx
	movl	%eax, 12(%ecx)
.L3174:
	.loc 1 5985 0
	movl	-392(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	addl	-360(%ebp), %eax
	movl	12(%eax), %edx
	movl	-116(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	-128(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-124(%ebp), %eax
	movl	%eax, (%esp)
	call	insert
	movl	%eax, -112(%ebp)
	.loc 1 5986 0
	movl	-392(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	addl	-360(%ebp), %eax
	movzbl	24(%eax), %edx
	movl	-112(%ebp), %eax
	movb	%dl, 44(%eax)
	.loc 1 5987 0
	movl	-392(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	movl	%eax, %edx
	addl	-360(%ebp), %edx
	movl	-112(%ebp), %eax
	movl	%eax, -128(%ebp)
	movl	-128(%ebp), %eax
	movl	%eax, 8(%edx)
	jmp	.L3170
.L3172:
.LBE119:
	.loc 1 5990 0
	movl	-392(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	movl	%eax, %edx
	addl	-360(%ebp), %edx
	movl	-128(%ebp), %eax
	movl	%eax, 8(%edx)
.L3170:
	.loc 1 5992 0
	movl	-392(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	addl	-360(%ebp), %eax
	movl	32(%eax), %eax
	testl	%eax, %eax
	je	.L3188
	movl	-392(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	addl	-360(%ebp), %eax
	movl	44(%eax), %eax
	testl	%eax, %eax
	jne	.L3188
	movl	-392(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	addl	-360(%ebp), %eax
	movl	32(%eax), %eax
	cmpl	-124(%ebp), %eax
	je	.L3188
	movl	-392(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	addl	-360(%ebp), %eax
	movl	32(%eax), %edx
	movl	-124(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	jne	.L3188
	.loc 1 5995 0
	movl	-392(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	movl	%eax, %esi
	addl	-360(%ebp), %esi
	movl	-392(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	addl	-360(%ebp), %eax
	movl	40(%eax), %ecx
	movl	-392(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	addl	-360(%ebp), %eax
	movl	32(%eax), %edx
	movl	-116(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	-128(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	insert
	movl	%eax, 8(%esi)
	.loc 1 5945 0
	jmp	.L3188
.L3160:
.LBE118:
	.loc 1 5999 0
	movl	-392(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	addl	-360(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	jne	.L3188
	.loc 1 6003 0
	movl	-392(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	movl	%eax, %edx
	addl	-360(%ebp), %edx
	movl	-376(%ebp), %eax
	movl	%eax, 8(%edx)
.L3188:
	.loc 1 5944 0
	addl	$1, -392(%ebp)
.L3158:
	movl	-392(%ebp), %eax
	cmpl	-384(%ebp), %eax
	jl	.L3159
	.loc 1 6005 0
	movl	-396(%ebp), %eax
	movl	%eax, (%esp)
	call	invalidate_from_clobbers
	.loc 1 6010 0
	movl	-404(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$44, %ax
	jne	.L3191
	.loc 1 6012 0
	movl	-404(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L3193
	.loc 1 6013 0
	call	invalidate_memory
.L3193:
	.loc 1 6014 0
	call	invalidate_for_call
.L3191:
	.loc 1 6022 0
	movl	$0, -392(%ebp)
	jmp	.L3195
.L3196:
	.loc 1 6023 0
	movl	-392(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	addl	-360(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L3197
.LBB120:
	.loc 1 6027 0
	movl	-392(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	addl	-360(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -108(%ebp)
	.loc 1 6033 0
	movl	-108(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	je	.L3199
	movl	-108(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L3201
.L3199:
	.loc 1 6034 0
	movl	$0, 4(%esp)
	movl	-108(%ebp), %eax
	movl	%eax, (%esp)
	call	invalidate
	.loc 1 6033 0
	jmp	.L3197
.L3201:
	.loc 1 6035 0
	movl	-108(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L3202
	.loc 1 6039 0
	cmpl	$0, -408(%ebp)
	je	.L3204
	movl	-404(%ebp), %eax
	cmpl	-408(%ebp), %eax
	jne	.L3197
.L3204:
	.loc 1 6040 0
	movl	$0, 4(%esp)
	movl	-108(%ebp), %eax
	movl	%eax, (%esp)
	call	invalidate
	jmp	.L3197
.L3202:
	.loc 1 6042 0
	movl	-108(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$74, %ax
	je	.L3207
	movl	-108(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$143, %ax
	jne	.L3197
.L3207:
	.loc 1 6044 0
	movl	-108(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	-108(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	invalidate
.L3197:
.LBE120:
	.loc 1 6022 0
	addl	$1, -392(%ebp)
.L3195:
	movl	-392(%ebp), %eax
	cmpl	-384(%ebp), %eax
	jl	.L3196
	.loc 1 6048 0
	movl	-404(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$42, %ax
	jne	.L3210
	movl	-404(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$51, %ax
	jne	.L3210
	movl	-404(%ebp), %eax
	movl	44(%eax), %eax
	movzbl	3(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L3210
	.loc 1 6051 0
	call	flush_hash_table
.L3210:
	.loc 1 6061 0
	movl	$0, -392(%ebp)
	jmp	.L3214
.L3215:
	.loc 1 6063 0
	movl	-392(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	addl	-360(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L3216
.LBB121:
	.loc 1 6065 0
	movl	-392(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	addl	-360(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -104(%ebp)
	.loc 1 6067 0
	movl	-104(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	je	.L3218
	.loc 1 6068 0
	movl	-104(%ebp), %eax
	movl	%eax, (%esp)
	call	mention_regs
	jmp	.L3216
.L3218:
.LBB122:
	.loc 1 6083 0
	movl	-104(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -100(%ebp)
	.loc 1 6086 0
	cmpl	$175, -100(%ebp)
	ja	.L3220
	movl	-104(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	-100(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	mips_hard_regno_nregs@PLT
	movl	%eax, -488(%ebp)
	jmp	.L3222
.L3220:
	movl	$1, -488(%ebp)
.L3222:
	movl	-488(%ebp), %eax
	addl	-100(%ebp), %eax
	movl	%eax, -96(%ebp)
	.loc 1 6089 0
	movl	-100(%ebp), %eax
	movl	%eax, -92(%ebp)
	jmp	.L3223
.L3224:
	.loc 1 6091 0
	movl	cached_regno@GOTOFF(%ebx), %eax
	cmpl	%eax, -92(%ebp)
	jne	.L3225
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L3227
.L3225:
	movl	-92(%ebp), %eax
	movl	%eax, (%esp)
	call	get_cse_reg_info
	movl	%eax, -484(%ebp)
	jmp	.L3228
.L3227:
	movl	cached_cse_reg_info@GOTOFF(%ebx), %edx
	movl	%edx, -484(%ebp)
.L3228:
	movl	-484(%ebp), %ecx
	movl	20(%ecx), %eax
	testl	%eax, %eax
	js	.L3229
	.loc 1 6093 0
	movl	-92(%ebp), %eax
	movl	%eax, (%esp)
	call	remove_invalid_refs
	.loc 1 6094 0
	movl	cached_regno@GOTOFF(%ebx), %eax
	cmpl	%eax, -92(%ebp)
	jne	.L3231
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L3233
.L3231:
	movl	-92(%ebp), %eax
	movl	%eax, (%esp)
	call	get_cse_reg_info
	movl	%eax, -480(%ebp)
	jmp	.L3234
.L3233:
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	movl	%eax, -480(%ebp)
.L3234:
	movl	-480(%ebp), %edx
	movl	$-1, 20(%edx)
.L3229:
	.loc 1 6089 0
	addl	$1, -92(%ebp)
.L3223:
	movl	-92(%ebp), %eax
	cmpl	-96(%ebp), %eax
	jb	.L3224
.L3216:
.LBE122:
.LBE121:
	.loc 1 6061 0
	addl	$1, -392(%ebp)
.L3214:
	movl	-392(%ebp), %eax
	cmpl	-384(%ebp), %eax
	jl	.L3215
	.loc 1 6104 0
	movl	$0, -392(%ebp)
	jmp	.L3236
.L3237:
	.loc 1 6105 0
	movl	-392(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	addl	-360(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L3238
	.loc 1 6107 0
	movl	-392(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	addl	-360(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	je	.L3238
	movl	-392(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	addl	-360(%ebp), %eax
	movl	8(%eax), %eax
	movl	24(%eax), %eax
	testl	%eax, %eax
	jne	.L3238
.LBB123:
	.loc 1 6111 0
	movl	-392(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	addl	-360(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -88(%ebp)
	.loc 1 6113 0
	jmp	.L3242
.L3243:
	.loc 1 6114 0
	movl	-88(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -88(%ebp)
.L3242:
	.loc 1 6113 0
	cmpl	$0, -88(%ebp)
	je	.L3246
	movl	-88(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	jne	.L3243
	.loc 1 6116 0
	jmp	.L3246
.L3247:
	.loc 1 6117 0
	movl	-88(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -88(%ebp)
.L3246:
	.loc 1 6116 0
	cmpl	$0, -88(%ebp)
	je	.L3248
	movl	-88(%ebp), %eax
	movl	24(%eax), %eax
	testl	%eax, %eax
	je	.L3247
.L3248:
	.loc 1 6118 0
	movl	-392(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	movl	-360(%ebp), %ecx
	addl	%eax, %ecx
	movl	%ecx, -476(%ebp)
	cmpl	$0, -88(%ebp)
	je	.L3250
	movl	-88(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -472(%ebp)
	jmp	.L3252
.L3250:
	movl	$0, -472(%ebp)
.L3252:
	movl	-472(%ebp), %edx
	movl	-476(%ebp), %eax
	movl	%edx, 8(%eax)
.L3238:
.LBE123:
	.loc 1 6104 0
	addl	$1, -392(%ebp)
.L3236:
	movl	-392(%ebp), %eax
	cmpl	-384(%ebp), %eax
	jl	.L3237
	.loc 1 6124 0
	movl	$0, -392(%ebp)
	jmp	.L3254
.L3255:
	.loc 1 6125 0
	movl	-392(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	addl	-360(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L3256
.LBB124:
	.loc 1 6127 0
	movl	-392(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	addl	-360(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -84(%ebp)
	.loc 1 6128 0
	movl	-392(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	addl	-360(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -80(%ebp)
	.loc 1 6134 0
	movl	flag_float_store@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L3258
	movl	-84(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L3258
	movl	-84(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$2, %eax
	je	.L3256
	movl	-84(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$6, %eax
	je	.L3256
	movl	-84(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$8, %eax
	je	.L3256
.L3258:
	movl	-84(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	$52, %al
	je	.L3256
	cmpl	$0, -408(%ebp)
	jne	.L3256
	movl	-392(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	addl	-360(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	je	.L3256
	movl	-84(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L3266
	movl	-84(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %ecx
	movl	-84(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	%al, %cl
	jbe	.L3266
	movl	-392(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	addl	-360(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$130, %ax
	je	.L3256
	movl	-392(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	addl	-360(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$131, %ax
	je	.L3256
.L3266:
	.loc 1 6164 0
	movl	-84(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$74, %ax
	jne	.L3270
	.loc 1 6165 0
	movl	-84(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -84(%ebp)
.L3270:
	.loc 1 6167 0
	movl	-84(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	je	.L3272
	movl	-84(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L3274
.L3272:
	.loc 1 6169 0
	movl	-392(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	addl	-360(%ebp), %eax
	movl	8(%eax), %eax
	movl	$1, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	insert_regs
	testl	%eax, %eax
	je	.L3274
	.loc 1 6173 0
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	rehash_using_reg
	.loc 1 6174 0
	movl	-392(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	movl	-360(%ebp), %ecx
	addl	%eax, %ecx
	movl	%ecx, -468(%ebp)
	movl	-84(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L3276
	movl	-84(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	jbe	.L3276
	movl	-84(%ebp), %eax
	movl	4(%eax), %edx
	movl	cached_regno@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	jne	.L3279
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L3281
.L3279:
	movl	-84(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	get_cse_reg_info
	movl	%eax, -460(%ebp)
	jmp	.L3282
.L3281:
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	movl	%eax, -460(%ebp)
.L3282:
	movl	-460(%ebp), %edx
	movl	12(%edx), %eax
	addl	$9088, %eax
	movl	%eax, %ecx
	andl	$31, %ecx
	movl	%ecx, -464(%ebp)
	jmp	.L3283
.L3276:
	movl	-84(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, 4(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	canon_hash
	movl	%eax, %edx
	andl	$31, %edx
	movl	%edx, -464(%ebp)
.L3283:
	movl	-464(%ebp), %eax
	movl	-468(%ebp), %ecx
	movl	%eax, 16(%ecx)
.L3274:
	.loc 1 6177 0
	movl	-80(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L3284
	movl	-80(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$80, %ax
	jne	.L3284
	.loc 1 6184 0
	movl	-84(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %ecx
	movl	-392(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	addl	-360(%ebp), %eax
	movl	16(%eax), %eax
	movl	%ecx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	insert
	movl	%eax, -76(%ebp)
	.loc 1 6177 0
	jmp	.L3287
.L3284:
	.loc 1 6186 0
	movl	-84(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %ecx
	movl	-392(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	addl	-360(%ebp), %eax
	movl	16(%eax), %esi
	movl	-392(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	addl	-360(%ebp), %eax
	movl	8(%eax), %eax
	movl	%ecx, 12(%esp)
	movl	%esi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	insert
	movl	%eax, -76(%ebp)
.L3287:
	.loc 1 6189 0
	movl	-392(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	addl	-360(%ebp), %eax
	movl	20(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L3288
	movl	-392(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	addl	-360(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	3(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L3290
	movl	-392(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	addl	-360(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %edx
	movl	global_rtl@GOT(%ebx), %eax
	movl	12(%eax), %eax
	cmpl	%eax, %edx
	je	.L3290
	movl	-392(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	addl	-360(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %edx
	movl	global_rtl@GOT(%ebx), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	je	.L3290
	movl	-392(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	addl	-360(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %edx
	movl	global_rtl@GOT(%ebx), %eax
	movl	20(%eax), %eax
	cmpl	%eax, %edx
	jne	.L3294
	movl	fixed_regs@GOT(%ebx), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L3290
.L3294:
	movl	-392(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	addl	-360(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %edx
	movl	global_rtl@GOT(%ebx), %eax
	movl	28(%eax), %eax
	cmpl	%eax, %edx
	je	.L3290
	movl	-392(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	addl	-360(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %edx
	movl	global_rtl@GOT(%ebx), %eax
	movl	24(%eax), %eax
	cmpl	%eax, %edx
	je	.L3290
	movl	-392(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	addl	-360(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$85, %ax
	jne	.L3298
	movl	-392(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	addl	-360(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L3298
	movl	-392(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	addl	-360(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %edx
	movl	global_rtl@GOT(%ebx), %eax
	movl	12(%eax), %eax
	cmpl	%eax, %edx
	je	.L3290
	movl	-392(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	addl	-360(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %edx
	movl	global_rtl@GOT(%ebx), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	je	.L3290
	movl	-392(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	addl	-360(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %edx
	movl	global_rtl@GOT(%ebx), %eax
	movl	20(%eax), %eax
	cmpl	%eax, %edx
	jne	.L3303
	movl	fixed_regs@GOT(%ebx), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L3290
.L3303:
	movl	-392(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	addl	-360(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %edx
	movl	global_rtl@GOT(%ebx), %eax
	movl	28(%eax), %eax
	cmpl	%eax, %edx
	je	.L3290
	movl	-392(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	addl	-360(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %edx
	movl	global_rtl@GOT(%ebx), %eax
	movl	24(%eax), %eax
	cmpl	%eax, %edx
	je	.L3290
.L3298:
	movl	-392(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	addl	-360(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$80, %ax
	jne	.L3288
.L3290:
	movl	$1, -456(%ebp)
	jmp	.L3306
.L3288:
	movl	$0, -456(%ebp)
.L3306:
	movzbl	-456(%ebp), %edx
	movl	-76(%ebp), %eax
	movb	%dl, 44(%eax)
	.loc 1 6209 0
	movl	-84(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L3256
	movl	-84(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	subl	$1, %eax
	movl	%eax, -452(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L3308
	movl	$8, -448(%ebp)
	jmp	.L3310
.L3308:
	movl	$4, -448(%ebp)
.L3310:
	movl	-452(%ebp), %edx
	movl	%edx, %eax
	sarl	$31, %edx
	idivl	-448(%ebp)
	movl	%eax, -444(%ebp)
	movl	-84(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	subl	$1, %eax
	movl	%eax, -440(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L3311
	movl	$8, -436(%ebp)
	jmp	.L3313
.L3311:
	movl	$4, -436(%ebp)
.L3313:
	movl	-440(%ebp), %edx
	movl	%edx, %eax
	sarl	$31, %edx
	idivl	-436(%ebp)
	cmpl	%eax, -444(%ebp)
	jne	.L3256
	movl	-84(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %ecx
	movl	-84(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	%al, %cl
	jb	.L3256
	movl	-392(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	addl	-360(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	je	.L3256
.LBB125:
	.loc 1 6217 0
	movl	-84(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -72(%ebp)
	.loc 1 6218 0
	movl	$0, -64(%ebp)
	.loc 1 6220 0
	movl	-392(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	addl	-360(%ebp), %eax
	movl	8(%eax), %eax
	movl	24(%eax), %eax
	movl	%eax, -68(%ebp)
	jmp	.L3317
.L3318:
.LBB126:
	.loc 1 6223 0
	movl	$0, -60(%ebp)
	.loc 1 6226 0
	movl	$0, -48(%ebp)
	.loc 1 6229 0
	movl	-68(%ebp), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	je	.L3319
	movl	-68(%ebp), %eax
	movl	(%eax), %edx
	movl	-68(%ebp), %eax
	movl	(%eax), %eax
	movl	$0, 12(%esp)
	movl	$1, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	exp_equiv_p
	testl	%eax, %eax
	je	.L3321
.L3319:
	.loc 1 6235 0
	movl	-68(%ebp), %eax
	movl	(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	cmpl	-72(%ebp), %eax
	jne	.L3322
	.loc 1 6236 0
	movl	-68(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -60(%ebp)
	jmp	.L3324
.L3322:
	.loc 1 6242 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$65536, %eax
	testl	%eax, %eax
	je	.L3325
	.loc 1 6243 0
	movl	-84(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %ecx
	movl	-72(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%ecx, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -48(%ebp)
.L3325:
	.loc 1 6246 0
	movl	-48(%ebp), %ecx
	movl	-84(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	-68(%ebp), %eax
	movl	(%eax), %eax
	movl	%ecx, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	simplify_gen_subreg@PLT
	movl	%eax, -60(%ebp)
.L3324:
	.loc 1 6256 0
	cmpl	$0, -60(%ebp)
	je	.L3321
	.loc 1 6259 0
	movl	-60(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L3328
	movl	-60(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	jbe	.L3328
	movl	-60(%ebp), %eax
	movl	4(%eax), %edx
	movl	cached_regno@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	jne	.L3331
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L3333
.L3331:
	movl	-60(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	get_cse_reg_info
	movl	%eax, -428(%ebp)
	jmp	.L3334
.L3333:
	movl	cached_cse_reg_info@GOTOFF(%ebx), %ecx
	movl	%ecx, -428(%ebp)
.L3334:
	movl	-428(%ebp), %edx
	movl	12(%edx), %eax
	addl	$9088, %eax
	movl	%eax, %ecx
	andl	$31, %ecx
	movl	%ecx, -432(%ebp)
	jmp	.L3335
.L3328:
	movl	-72(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	canon_hash
	movl	%eax, %edx
	andl	$31, %edx
	movl	%edx, -432(%ebp)
.L3335:
	movl	-432(%ebp), %ecx
	movl	%ecx, -56(%ebp)
	.loc 1 6260 0
	movl	-72(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	lookup
	movl	%eax, -52(%ebp)
	.loc 1 6264 0
	cmpl	$0, -52(%ebp)
	jne	.L3336
	.loc 1 6266 0
	movl	$0, 8(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	insert_regs
	testl	%eax, %eax
	je	.L3338
	.loc 1 6268 0
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	rehash_using_reg
	.loc 1 6269 0
	movl	-60(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L3340
	movl	-60(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	jbe	.L3340
	movl	-60(%ebp), %eax
	movl	4(%eax), %edx
	movl	cached_regno@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	jne	.L3343
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L3345
.L3343:
	movl	-60(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	get_cse_reg_info
	movl	%eax, -420(%ebp)
	jmp	.L3346
.L3345:
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	movl	%eax, -420(%ebp)
.L3346:
	movl	-420(%ebp), %edx
	movl	12(%edx), %eax
	addl	$9088, %eax
	movl	%eax, %ecx
	andl	$31, %ecx
	movl	%ecx, -424(%ebp)
	jmp	.L3347
.L3340:
	movl	-72(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	canon_hash
	movl	%eax, %edx
	andl	$31, %edx
	movl	%edx, -424(%ebp)
.L3347:
	movl	-424(%ebp), %ecx
	movl	%ecx, -56(%ebp)
.L3338:
	.loc 1 6271 0
	movl	-72(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	insert
	movl	%eax, -52(%ebp)
	.loc 1 6272 0
	movl	-68(%ebp), %eax
	movzbl	44(%eax), %edx
	movl	-52(%ebp), %eax
	movb	%dl, 44(%eax)
	jmp	.L3348
.L3336:
	.loc 1 6274 0
	cmpl	$0, -64(%ebp)
	je	.L3348
	movl	-52(%ebp), %eax
	movl	24(%eax), %eax
	cmpl	-64(%ebp), %eax
	je	.L3348
	.loc 1 6277 0
	movl	-64(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	merge_equiv_classes
.L3348:
	.loc 1 6279 0
	movl	-52(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -64(%ebp)
	.loc 1 6281 0
	jmp	.L3351
.L3352:
	.loc 1 6284 0
	movl	-64(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -64(%ebp)
.L3351:
	.loc 1 6281 0
	cmpl	$0, -64(%ebp)
	je	.L3321
	movl	-64(%ebp), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	je	.L3321
	movl	-64(%ebp), %eax
	movl	(%eax), %edx
	movl	-64(%ebp), %eax
	movl	(%eax), %eax
	movl	$0, 12(%esp)
	movl	$1, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	exp_equiv_p
	testl	%eax, %eax
	je	.L3352
.L3321:
.LBE126:
	.loc 1 6221 0
	movl	-68(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -68(%ebp)
.L3317:
	.loc 1 6220 0
	cmpl	$0, -68(%ebp)
	jne	.L3318
.L3256:
.LBE125:
.LBE124:
	.loc 1 6124 0
	addl	$1, -392(%ebp)
.L3254:
	movl	-392(%ebp), %eax
	cmpl	-384(%ebp), %eax
	jl	.L3255
	.loc 1 6306 0
	cmpl	$1, -384(%ebp)
	jne	.L3356
	movl	-360(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L3356
	movl	-360(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L3356
	movl	-404(%ebp), %eax
	movl	12(%eax), %eax
	movl	20(%eax), %eax
	cmpl	-404(%ebp), %eax
	jne	.L3356
	movl	-360(%ebp), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L3356
	movl	-360(%ebp), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	jbe	.L3356
	movl	-360(%ebp), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movl	4(%eax), %edx
	movl	cached_regno@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	jne	.L3363
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L3365
.L3363:
	movl	-360(%ebp), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	get_cse_reg_info
	movl	%eax, -416(%ebp)
	jmp	.L3366
.L3365:
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	movl	%eax, -416(%ebp)
.L3366:
	movl	-416(%ebp), %ecx
	movl	12(%ecx), %edx
	movl	-360(%ebp), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	je	.L3356
.LBB127:
	.loc 1 6312 0
	movl	-360(%ebp), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movl	4(%eax), %edx
	movl	cached_regno@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	jne	.L3368
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L3370
.L3368:
	movl	-360(%ebp), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	get_cse_reg_info
	movl	%eax, -412(%ebp)
	jmp	.L3371
.L3370:
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	movl	%eax, -412(%ebp)
.L3371:
	movl	-412(%ebp), %edx
	movl	12(%edx), %eax
	movl	%eax, -44(%ebp)
	.loc 1 6313 0
	movl	-44(%ebp), %eax
	sall	$5, %eax
	movl	%eax, %edx
	movl	qty_table@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 6315 0
	movl	-40(%ebp), %eax
	movl	16(%eax), %edx
	movl	-360(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	jne	.L3356
	movl	$0, 8(%esp)
	movl	$6, 4(%esp)
	movl	-404(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	testl	%eax, %eax
	jne	.L3356
.LBB128:
	.loc 1 6318 0
	movl	-404(%ebp), %eax
	movl	%eax, -36(%ebp)
.L3374:
	.loc 1 6323 0
	movl	-36(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -36(%ebp)
	.loc 1 6326 0
	cmpl	$0, -36(%ebp)
	je	.L3375
	movl	-36(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	jne	.L3375
	movl	-36(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	$-83, %eax
	jne	.L3374
.L3375:
	.loc 1 6340 0
	cmpl	$0, -36(%ebp)
	je	.L3356
	movl	-36(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$42, %ax
	jne	.L3356
	movl	-36(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L3356
	movl	-36(%ebp), %eax
	movl	44(%eax), %eax
	movl	4(%eax), %edx
	movl	-360(%ebp), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	cmpl	%eax, %edx
	jne	.L3356
	movl	$0, 8(%esp)
	movl	$3, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	testl	%eax, %eax
	jne	.L3356
.LBB129:
	.loc 1 6345 0
	movl	-360(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 6346 0
	movl	-360(%ebp), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 6349 0
	movl	-36(%ebp), %eax
	movl	44(%eax), %eax
	leal	4(%eax), %edx
	movl	$1, 12(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	validate_change@PLT
	.loc 1 6350 0
	movl	-360(%ebp), %eax
	movl	(%eax), %eax
	leal	4(%eax), %edx
	movl	$1, 12(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-404(%ebp), %eax
	movl	%eax, (%esp)
	call	validate_change@PLT
	.loc 1 6351 0
	movl	-360(%ebp), %eax
	movl	(%eax), %eax
	leal	12(%eax), %edx
	movl	$1, 12(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-404(%ebp), %eax
	movl	%eax, (%esp)
	call	validate_change@PLT
	.loc 1 6352 0
	call	apply_change_group@PLT
	.loc 1 6356 0
	movl	$0, 8(%esp)
	movl	$5, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	movl	%eax, -24(%ebp)
	.loc 1 6357 0
	cmpl	$0, -24(%ebp)
	je	.L3383
	.loc 1 6358 0
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	remove_note@PLT
.L3383:
	.loc 1 6360 0
	movl	$0, 8(%esp)
	movl	$5, 4(%esp)
	movl	-404(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	movl	%eax, -24(%ebp)
	.loc 1 6361 0
	cmpl	$0, -24(%ebp)
	je	.L3385
	.loc 1 6363 0
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-404(%ebp), %eax
	movl	%eax, (%esp)
	call	remove_note@PLT
	.loc 1 6364 0
	movl	-36(%ebp), %eax
	movl	68(%eax), %edx
	movl	-24(%ebp), %eax
	movl	%edx, 12(%eax)
	.loc 1 6365 0
	movl	-36(%ebp), %edx
	movl	-24(%ebp), %eax
	movl	%eax, 68(%edx)
.L3385:
	.loc 1 6372 0
	movl	$0, 8(%esp)
	movl	$4, 4(%esp)
	movl	-404(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	movl	%eax, -24(%ebp)
	.loc 1 6373 0
	cmpl	$0, -24(%ebp)
	je	.L3356
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	reg_mentioned_p@PLT
	testl	%eax, %eax
	jne	.L3388
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	je	.L3356
.L3388:
	.loc 1 6376 0
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-404(%ebp), %eax
	movl	%eax, (%esp)
	call	remove_note@PLT
.L3356:
.LBE129:
.LBE128:
.LBE127:
	.loc 1 6384 0
	movl	$0, last_jump_equiv_class@GOTOFF(%ebx)
	.loc 1 6385 0
	movl	-404(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L3390
	cmpl	$1, -384(%ebp)
	jne	.L3390
	movl	-396(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L3390
	movl	-396(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$82, %ax
	jne	.L3390
	.loc 1 6388 0
	movl	$0, 4(%esp)
	movl	-404(%ebp), %eax
	movl	%eax, (%esp)
	call	record_jump_equiv
.L3390:
	.loc 1 6404 0
	movl	-404(%ebp), %eax
	movl	%eax, prev_insn@GOTOFF(%ebx)
	.loc 1 6405 0
	movl	-20(%ebp), %ecx
	xorl	%gs:20, %ecx
	je	.L3396
	call	__stack_chk_fail_local
.L3396:
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE56:
	.size	cse_insn, .-cse_insn
	.type	invalidate_memory, @function
invalidate_memory:
.LFB57:
	.loc 1 6411 0
	pushl	%ebp
.LCFI187:
	movl	%esp, %ebp
.LCFI188:
	pushl	%ebx
.LCFI189:
	subl	$24, %esp
.LCFI190:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 6415 0
	movl	$0, -16(%ebp)
	jmp	.L3400
.L3401:
	.loc 1 6416 0
	movl	-16(%ebp), %eax
	movl	table@GOTOFF(%ebx,%eax,4), %eax
	movl	%eax, -12(%ebp)
	jmp	.L3402
.L3403:
	.loc 1 6418 0
	movl	-12(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 6419 0
	movl	-12(%ebp), %eax
	movzbl	44(%eax), %eax
	testb	%al, %al
	je	.L3404
	.loc 1 6420 0
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	remove_from_table
.L3404:
	.loc 1 6416 0
	movl	-8(%ebp), %eax
	movl	%eax, -12(%ebp)
.L3402:
	cmpl	$0, -12(%ebp)
	jne	.L3403
	.loc 1 6415 0
	addl	$1, -16(%ebp)
.L3400:
	cmpl	$31, -16(%ebp)
	jle	.L3401
	.loc 1 6422 0
	addl	$24, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE57:
	.size	invalidate_memory, .-invalidate_memory
	.type	addr_affects_sp_p, @function
addr_affects_sp_p:
.LFB58:
	.loc 1 6430 0
	pushl	%ebp
.LCFI191:
	movl	%esp, %ebp
.LCFI192:
	pushl	%edi
.LCFI193:
	pushl	%esi
.LCFI194:
	pushl	%ebx
.LCFI195:
	subl	$28, %esp
.LCFI196:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 6431 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$97, %al
	jne	.L3410
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L3410
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	cmpl	$29, %eax
	jne	.L3410
	.loc 1 6435 0
	movl	cached_regno@GOTOFF(%ebx), %eax
	cmpl	$29, %eax
	jne	.L3414
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L3416
.L3414:
	movl	$29, (%esp)
	call	get_cse_reg_info
	movl	%eax, -28(%ebp)
	jmp	.L3417
.L3416:
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	movl	%eax, -28(%ebp)
.L3417:
	movl	-28(%ebp), %edx
	movl	16(%edx), %eax
	testl	%eax, %eax
	js	.L3418
	.loc 1 6437 0
	movl	cached_regno@GOTOFF(%ebx), %eax
	cmpl	$29, %eax
	jne	.L3420
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L3422
.L3420:
	movl	$29, (%esp)
	call	get_cse_reg_info
	movl	%eax, -24(%ebp)
	jmp	.L3423
.L3422:
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	movl	%eax, -24(%ebp)
.L3423:
	movl	-24(%ebp), %edx
	movl	16(%edx), %eax
	addl	$1, %eax
	movl	-24(%ebp), %edx
	movl	%eax, 16(%edx)
	.loc 1 6439 0
	movl	cached_regno@GOTOFF(%ebx), %eax
	cmpl	$29, %eax
	jne	.L3424
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L3426
.L3424:
	movl	$29, (%esp)
	call	get_cse_reg_info
	movl	%eax, -20(%ebp)
	jmp	.L3427
.L3426:
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	movl	%eax, -20(%ebp)
.L3427:
	movl	-20(%ebp), %edx
	movl	$-1, 24(%edx)
.L3418:
	.loc 1 6443 0
	movl	hard_regs_in_table@GOTOFF(%ebx), %eax
	movl	4+hard_regs_in_table@GOTOFF(%ebx), %edx
	movl	%eax, %esi
	andl	$536870912, %esi
	movl	%edx, %edi
	andl	$0, %edi
	movl	%edi, %eax
	orl	%esi, %eax
	testl	%eax, %eax
	je	.L3428
	.loc 1 6444 0
	movl	global_rtl@GOT(%ebx), %eax
	movl	8(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	invalidate
.L3428:
	.loc 1 6446 0
	movl	$1, -16(%ebp)
	jmp	.L3430
.L3410:
	.loc 1 6449 0
	movl	$0, -16(%ebp)
.L3430:
	movl	-16(%ebp), %eax
	.loc 1 6450 0
	addl	$28, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE58:
	.size	addr_affects_sp_p, .-addr_affects_sp_p
	.type	invalidate_from_clobbers, @function
invalidate_from_clobbers:
.LFB59:
	.loc 1 6462 0
	pushl	%ebp
.LCFI197:
	movl	%esp, %ebp
.LCFI198:
	subl	$24, %esp
.LCFI199:
	.loc 1 6463 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$59, %ax
	jne	.L3433
.LBB130:
	.loc 1 6465 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 6466 0
	cmpl	$0, -16(%ebp)
	je	.L3455
	.loc 1 6468 0
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	je	.L3437
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	je	.L3437
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L3440
.L3437:
	.loc 1 6470 0
	movl	$0, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	invalidate
	.loc 1 6468 0
	jmp	.L3455
.L3440:
	.loc 1 6471 0
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$74, %ax
	je	.L3441
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$143, %ax
	jne	.L3455
.L3441:
	.loc 1 6473 0
	movl	-16(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	invalidate
	jmp	.L3455
.L3433:
.LBE130:
	.loc 1 6476 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$49, %ax
	jne	.L3455
.LBB131:
	.loc 1 6479 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	subl	$1, %eax
	movl	%eax, -12(%ebp)
	jmp	.L3445
.L3446:
.LBB132:
	.loc 1 6481 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	-12(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	%eax, -8(%ebp)
	.loc 1 6482 0
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$59, %ax
	jne	.L3447
.LBB133:
	.loc 1 6484 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -4(%ebp)
	.loc 1 6485 0
	movl	-4(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	je	.L3449
	movl	-4(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	je	.L3449
	movl	-4(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L3452
.L3449:
	.loc 1 6487 0
	movl	$0, 4(%esp)
	movl	-4(%ebp), %eax
	movl	%eax, (%esp)
	call	invalidate
	.loc 1 6485 0
	jmp	.L3447
.L3452:
	.loc 1 6488 0
	movl	-4(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$74, %ax
	je	.L3453
	movl	-4(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$143, %ax
	jne	.L3447
.L3453:
	.loc 1 6490 0
	movl	-4(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	-4(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	invalidate
.L3447:
.LBE133:
.LBE132:
	.loc 1 6479 0
	subl	$1, -12(%ebp)
.L3445:
	cmpl	$0, -12(%ebp)
	jns	.L3446
.L3455:
.LBE131:
	.loc 1 6494 0
	leave
	ret
.LFE59:
	.size	invalidate_from_clobbers, .-invalidate_from_clobbers
	.type	cse_process_notes, @function
cse_process_notes:
.LFB60:
	.loc 1 6509 0
	pushl	%ebp
.LCFI200:
	movl	%esp, %ebp
.LCFI201:
	pushl	%ebx
.LCFI202:
	subl	$68, %esp
.LCFI203:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 6510 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -28(%ebp)
	.loc 1 6511 0
	movl	-28(%ebp), %edx
	movl	rtx_format@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -24(%ebp)
	.loc 1 6514 0
	movl	-28(%ebp), %eax
	movl	%eax, -52(%ebp)
	cmpl	$71, -52(%ebp)
	je	.L3460
	cmpl	$71, -52(%ebp)
	ja	.L3463
	cmpl	$66, -52(%ebp)
	ja	.L3464
	cmpl	$64, -52(%ebp)
	jae	.L3459
	movl	-52(%ebp), %eax
	subl	$3, %eax
	cmpl	$1, %eax
	ja	.L3457
	jmp	.L3458
.L3464:
	movl	-52(%ebp), %eax
	subl	$68, %eax
	cmpl	$1, %eax
	ja	.L3457
	jmp	.L3459
.L3463:
	cmpl	$79, -52(%ebp)
	ja	.L3465
	cmpl	$77, -52(%ebp)
	jae	.L3459
	cmpl	$73, -52(%ebp)
	je	.L3461
	cmpl	$76, -52(%ebp)
	je	.L3462
	jmp	.L3457
.L3465:
	cmpl	$130, -52(%ebp)
	jb	.L3457
	cmpl	$131, -52(%ebp)
	jbe	.L3461
	cmpl	$145, -52(%ebp)
	je	.L3459
	jmp	.L3457
.L3459:
	.loc 1 6525 0
	movl	8(%ebp), %edx
	movl	%edx, -48(%ebp)
	jmp	.L3466
.L3462:
	.loc 1 6528 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	cse_process_notes
	movl	8(%ebp), %edx
	addl	$4, %edx
	movl	$0, 12(%esp)
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	validate_change@PLT
	.loc 1 6530 0
	movl	8(%ebp), %eax
	movl	%eax, -48(%ebp)
	jmp	.L3466
.L3458:
	.loc 1 6534 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	$4, %al
	jne	.L3467
	.loc 1 6535 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	cse_process_notes
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 4(%eax)
.L3467:
	.loc 1 6536 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	.L3469
	.loc 1 6537 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	cse_process_notes
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 12(%eax)
.L3469:
	.loc 1 6538 0
	movl	8(%ebp), %edx
	movl	%edx, -48(%ebp)
	jmp	.L3466
.L3461:
.LBB134:
	.loc 1 6544 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	cse_process_notes
	movl	%eax, -16(%ebp)
	.loc 1 6547 0
	movl	-16(%ebp), %eax
	movzbl	2(%eax), %eax
	testb	%al, %al
	je	.L3471
	.loc 1 6548 0
	movl	8(%ebp), %eax
	addl	$4, %eax
	movl	$0, 12(%esp)
	movl	-16(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	validate_change@PLT
.L3471:
	.loc 1 6549 0
	movl	8(%ebp), %eax
	movl	%eax, -48(%ebp)
	jmp	.L3466
.L3460:
.LBE134:
	.loc 1 6553 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	cached_regno@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	jne	.L3473
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L3475
.L3473:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	get_cse_reg_info
	movl	%eax, -44(%ebp)
	jmp	.L3476
.L3475:
	movl	cached_cse_reg_info@GOTOFF(%ebx), %edx
	movl	%edx, -44(%ebp)
.L3476:
	movl	-44(%ebp), %edx
	movl	12(%edx), %eax
	movl	%eax, -20(%ebp)
	.loc 1 6556 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	cached_regno@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	jne	.L3477
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L3479
.L3477:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	get_cse_reg_info
	movl	%eax, -40(%ebp)
	jmp	.L3480
.L3479:
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	movl	%eax, -40(%ebp)
.L3480:
	movl	-40(%ebp), %eax
	movl	12(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	je	.L3481
.LBB135:
	.loc 1 6558 0
	movl	-20(%ebp), %eax
	sall	$5, %eax
	movl	%eax, %edx
	movl	qty_table@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 6560 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L3481
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	je	.L3484
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	je	.L3484
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L3484
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	je	.L3484
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	je	.L3484
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$144, %ax
	je	.L3484
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$66, %ax
	je	.L3484
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$150, %ax
	je	.L3484
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L3481
.L3484:
.LBB136:
	.loc 1 6564 0
	movl	-12(%ebp), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	gen_lowpart_if_possible@PLT
	movl	%eax, -8(%ebp)
	.loc 1 6565 0
	cmpl	$0, -8(%ebp)
	je	.L3481
	.loc 1 6566 0
	movl	-8(%ebp), %edx
	movl	%edx, -48(%ebp)
	jmp	.L3466
.L3481:
.LBE136:
.LBE135:
	.loc 1 6571 0
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	canon_reg
	movl	%eax, -48(%ebp)
	jmp	.L3466
.L3457:
	.loc 1 6577 0
	movl	$0, -20(%ebp)
	jmp	.L3494
.L3495:
	.loc 1 6578 0
	movl	-20(%ebp), %eax
	addl	-24(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$101, %al
	jne	.L3496
	.loc 1 6579 0
	movl	-20(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	cse_process_notes
	movl	%eax, %edx
	movl	-20(%ebp), %eax
	sall	$3, %eax
	addl	8(%ebp), %eax
	addl	$4, %eax
	movl	$0, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	validate_change@PLT
.L3496:
	.loc 1 6577 0
	addl	$1, -20(%ebp)
.L3494:
	movl	-28(%ebp), %edx
	movl	rtx_length@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	cmpl	-20(%ebp), %eax
	jg	.L3495
	.loc 1 6582 0
	movl	8(%ebp), %eax
	movl	%eax, -48(%ebp)
.L3466:
	movl	-48(%ebp), %eax
	.loc 1 6583 0
	addl	$68, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE60:
	.size	cse_process_notes, .-cse_process_notes
	.type	cse_around_loop, @function
cse_around_loop:
.LFB61:
	.loc 1 6602 0
	pushl	%ebp
.LCFI204:
	movl	%esp, %ebp
.LCFI205:
	pushl	%ebx
.LCFI206:
	subl	$36, %esp
.LCFI207:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 6609 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 6610 0
	jmp	.L3501
.L3502:
	.loc 1 6611 0
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -16(%ebp)
.L3501:
	.loc 1 6610 0
	cmpl	$0, -16(%ebp)
	je	.L3503
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	jne	.L3503
	movl	-16(%ebp), %eax
	movl	44(%eax), %eax
	testl	%eax, %eax
	jns	.L3502
.L3503:
	.loc 1 6614 0
	cmpl	$0, -16(%ebp)
	je	.L3541
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	jne	.L3541
	movl	-16(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	$-96, %eax
	je	.L3509
	.loc 1 6617 0
	jmp	.L3541
.L3509:
	.loc 1 6623 0
	movl	last_jump_equiv_class@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L3511
	.loc 1 6624 0
	movl	last_jump_equiv_class@GOTOFF(%ebx), %eax
	movl	24(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L3513
.L3514:
	.loc 1 6627 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	je	.L3515
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	je	.L3515
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L3518
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L3518
.L3515:
	.loc 1 6630 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	invalidate
	.loc 1 6627 0
	jmp	.L3520
.L3518:
	.loc 1 6631 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$74, %ax
	je	.L3521
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$143, %ax
	jne	.L3520
.L3521:
	.loc 1 6633 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	invalidate
.L3520:
	.loc 1 6625 0
	movl	-8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -8(%ebp)
.L3513:
	.loc 1 6624 0
	cmpl	$0, -8(%ebp)
	jne	.L3514
.L3511:
	.loc 1 6648 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 6649 0
	jmp	.L3523
.L3524:
	.loc 1 6655 0
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L3525
	movl	-16(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	je	.L3527
	movl	-16(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$59, %ax
	jne	.L3525
.L3527:
	.loc 1 6658 0
	movl	-16(%ebp), %eax
	movl	44(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	cse_set_around_loop
	.loc 1 6655 0
	jmp	.L3529
.L3525:
	.loc 1 6659 0
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L3529
	movl	-16(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$49, %ax
	jne	.L3529
	.loc 1 6660 0
	movl	-16(%ebp), %eax
	movl	44(%eax), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	subl	$1, %eax
	movl	%eax, -12(%ebp)
	jmp	.L3532
.L3533:
	.loc 1 6661 0
	movl	-16(%ebp), %eax
	movl	44(%eax), %eax
	movl	4(%eax), %edx
	movl	-12(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	je	.L3534
	movl	-16(%ebp), %eax
	movl	44(%eax), %eax
	movl	4(%eax), %edx
	movl	-12(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movzwl	(%eax), %eax
	cmpw	$59, %ax
	jne	.L3536
.L3534:
	.loc 1 6663 0
	movl	-16(%ebp), %eax
	movl	44(%eax), %eax
	movl	4(%eax), %edx
	movl	-12(%ebp), %eax
	movl	4(%edx,%eax,4), %edx
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	cse_set_around_loop
.L3536:
	.loc 1 6660 0
	subl	$1, -12(%ebp)
.L3532:
	cmpl	$0, -12(%ebp)
	jns	.L3533
.L3529:
	.loc 1 6653 0
	movl	-16(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -16(%ebp)
.L3523:
	.loc 1 6649 0
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$44, %ax
	je	.L3541
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$46, %ax
	je	.L3541
	movl	-16(%ebp), %eax
	movl	4(%eax), %edx
	movl	max_insn_uid@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	jge	.L3541
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	jne	.L3524
	movl	-16(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	$-95, %eax
	jne	.L3524
.L3541:
	.loc 1 6666 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE61:
	.size	cse_around_loop, .-cse_around_loop
	.type	invalidate_skipped_set, @function
invalidate_skipped_set:
.LFB62:
	.loc 1 6676 0
	pushl	%ebp
.LCFI208:
	movl	%esp, %ebp
.LCFI209:
	pushl	%ebx
.LCFI210:
	subl	$36, %esp
.LCFI211:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 6677 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -8(%ebp)
	.loc 1 6679 0
	cmpl	$76, -8(%ebp)
	jne	.L3543
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	addr_affects_sp_p
	testl	%eax, %eax
	jne	.L3543
	movl	8(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	jne	.L3546
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	$52, %al
	je	.L3546
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	cse_rtx_varies_p
	testl	%eax, %eax
	je	.L3543
.L3546:
	.loc 1 6689 0
	call	invalidate_memory
	.loc 1 6690 0
	jmp	.L3559
.L3543:
	.loc 1 6693 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$59, %ax
	je	.L3559
	movl	global_rtl@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L3552
	.loc 1 6698 0
	jmp	.L3559
.L3552:
	.loc 1 6700 0
	cmpl	$74, -8(%ebp)
	je	.L3553
	cmpl	$143, -8(%ebp)
	jne	.L3555
.L3553:
	.loc 1 6701 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	invalidate
	.loc 1 6700 0
	jmp	.L3559
.L3555:
	.loc 1 6702 0
	cmpl	$71, -8(%ebp)
	je	.L3556
	cmpl	$73, -8(%ebp)
	je	.L3556
	cmpl	$76, -8(%ebp)
	jne	.L3559
.L3556:
	.loc 1 6703 0
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	invalidate
.L3559:
	.loc 1 6704 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE62:
	.size	invalidate_skipped_set, .-invalidate_skipped_set
	.type	invalidate_skipped_block, @function
invalidate_skipped_block:
.LFB63:
	.loc 1 6713 0
	pushl	%ebp
.LCFI212:
	movl	%esp, %ebp
.LCFI213:
	pushl	%ebx
.LCFI214:
	subl	$36, %esp
.LCFI215:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 6716 0
	movl	8(%ebp), %eax
	movl	%eax, -8(%ebp)
	jmp	.L3561
.L3562:
	.loc 1 6719 0
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L3563
	.loc 1 6722 0
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$44, %ax
	jne	.L3565
	.loc 1 6724 0
	movl	-8(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L3567
	.loc 1 6725 0
	call	invalidate_memory
.L3567:
	.loc 1 6726 0
	call	invalidate_for_call
.L3565:
	.loc 1 6729 0
	movl	-8(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, (%esp)
	call	invalidate_from_clobbers
	.loc 1 6730 0
	movl	-8(%ebp), %eax
	movl	44(%eax), %edx
	movl	$0, 8(%esp)
	leal	invalidate_skipped_set@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	note_stores@PLT
.L3563:
	.loc 1 6717 0
	movl	-8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -8(%ebp)
.L3561:
	.loc 1 6716 0
	cmpl	$0, -8(%ebp)
	je	.L3571
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$46, %ax
	jne	.L3562
.L3571:
	.loc 1 6732 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE63:
	.size	invalidate_skipped_block, .-invalidate_skipped_block
	.type	cse_check_loop_start, @function
cse_check_loop_start:
.LFB64:
	.loc 1 6743 0
	pushl	%ebp
.LCFI216:
	movl	%esp, %ebp
.LCFI217:
	pushl	%ebx
.LCFI218:
	subl	$36, %esp
.LCFI219:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 6744 0
	movl	16(%ebp), %eax
	movl	%eax, -8(%ebp)
	.loc 1 6746 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L3581
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$79, %ax
	je	.L3581
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$69, %ax
	jne	.L3576
	.loc 1 6748 0
	jmp	.L3581
.L3576:
	.loc 1 6750 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L3578
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	je	.L3580
.L3578:
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	reg_overlap_mentioned_p@PLT
	testl	%eax, %eax
	je	.L3581
.L3580:
	.loc 1 6752 0
	movl	-8(%ebp), %eax
	movl	$0, (%eax)
.L3581:
	.loc 1 6753 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE64:
	.size	cse_check_loop_start, .-cse_check_loop_start
	.section	.rodata
	.type	__FUNCTION__.21532, @object
	.size	__FUNCTION__.21532, 20
__FUNCTION__.21532:
	.string	"cse_set_around_loop"
	.text
	.type	cse_set_around_loop, @function
cse_set_around_loop:
.LFB65:
	.loc 1 6777 0
	pushl	%ebp
.LCFI220:
	movl	%esp, %ebp
.LCFI221:
	pushl	%ebx
.LCFI222:
	subl	$84, %esp
.LCFI223:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 6782 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L3583
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$69, %ax
	je	.L3583
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$79, %ax
	je	.L3583
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	je	.L3583
	.loc 1 6786 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -64(%ebp)
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L3588
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	jbe	.L3588
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	4(%eax), %edx
	movl	cached_regno@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	jne	.L3591
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L3593
.L3591:
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	get_cse_reg_info
	movl	%eax, -56(%ebp)
	jmp	.L3594
.L3593:
	movl	cached_cse_reg_info@GOTOFF(%ebx), %eax
	movl	%eax, -56(%ebp)
.L3594:
	movl	-56(%ebp), %edx
	movl	12(%edx), %eax
	addl	$9088, %eax
	movl	%eax, %edx
	andl	$31, %edx
	movl	%edx, -60(%ebp)
	jmp	.L3595
.L3588:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	canon_hash
	movl	%eax, %edx
	andl	$31, %edx
	movl	%edx, -60(%ebp)
.L3595:
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	-64(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	-60(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	lookup
	movl	%eax, -28(%ebp)
	.loc 1 6790 0
	cmpl	$0, -28(%ebp)
	je	.L3583
	.loc 1 6791 0
	movl	-28(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L3597
.L3598:
	.loc 1 6793 0
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L3599
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movzbl	3(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L3599
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	je	.L3602
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movl	$57, 4(%esp)
	movl	%eax, (%esp)
	call	notreg_cost
	movl	%eax, -52(%ebp)
	jmp	.L3604
.L3602:
	movl	$0, -52(%ebp)
.L3604:
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	je	.L3605
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	$57, 4(%esp)
	movl	%eax, (%esp)
	call	notreg_cost
	movl	%eax, -48(%ebp)
	jmp	.L3607
.L3605:
	movl	$0, -48(%ebp)
.L3607:
	movl	-48(%ebp), %eax
	cmpl	%eax, -52(%ebp)
	jge	.L3599
.LBB137:
	.loc 1 6802 0
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	prev_nonnote_insn@PLT
	movl	%eax, -24(%ebp)
	.loc 1 6803 0
	jmp	.L3609
.L3610:
	.loc 1 6806 0
	movl	-24(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L3611
	movl	-24(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L3613
	movl	-24(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -40(%ebp)
	jmp	.L3615
.L3613:
	movl	-24(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	single_set_2@PLT
	movl	%eax, -40(%ebp)
.L3615:
	movl	-40(%ebp), %edx
	movl	%edx, -44(%ebp)
	jmp	.L3616
.L3611:
	movl	$0, -44(%ebp)
.L3616:
	movl	-44(%ebp), %eax
	movl	%eax, -20(%ebp)
	cmpl	$0, -20(%ebp)
	je	.L3617
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L3617
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	-28(%ebp), %eax
	movl	40(%eax), %eax
	cmpl	%eax, %edx
	jne	.L3617
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	-20(%ebp), %eax
	movl	12(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	je	.L3617
.LBB138:
	.loc 1 6817 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 6818 0
	movl	-24(%ebp), %eax
	movl	%eax, -16(%ebp)
	jmp	.L3622
.L3623:
	.loc 1 6819 0
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L3624
	.loc 1 6820 0
	movl	-16(%ebp), %eax
	movl	44(%eax), %edx
	leal	-32(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	cse_check_loop_start@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	note_stores@PLT
.L3624:
	.loc 1 6818 0
	movl	-16(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -16(%ebp)
.L3622:
	movl	-16(%ebp), %eax
	cmpl	16(%ebp), %eax
	jne	.L3623
	.loc 1 6827 0
	movl	-32(%ebp), %eax
	testl	%eax, %eax
	je	.L3599
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movl	8(%ebp), %edx
	addl	$12, %edx
	movl	$0, 12(%esp)
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	validate_change@PLT
	testl	%eax, %eax
	je	.L3599
.LBB139:
	.loc 1 6836 0
	call	max_reg_num@PLT
	movl	%eax, -12(%ebp)
	.loc 1 6838 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %edx
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	gen_move_insn@PLT
	movl	%eax, -8(%ebp)
	.loc 1 6839 0
	call	max_reg_num@PLT
	cmpl	-12(%ebp), %eax
	je	.L3630
	.loc 1 6841 0
	movl	-20(%ebp), %eax
	movl	12(%eax), %eax
	movl	8(%ebp), %edx
	addl	$12, %edx
	movl	$0, 12(%esp)
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	validate_change@PLT
	testl	%eax, %eax
	jne	.L3599
	.loc 1 6843 0
	leal	__FUNCTION__.21532@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$6843, 4(%esp)
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L3630:
	.loc 1 6846 0
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_insn_after@PLT
	.loc 1 6848 0
	jmp	.L3599
.L3617:
.LBE139:
.LBE138:
	.loc 1 6805 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	prev_nonnote_insn@PLT
	movl	%eax, -24(%ebp)
.L3609:
	.loc 1 6803 0
	cmpl	$0, -24(%ebp)
	je	.L3599
	movl	-24(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$44, %ax
	je	.L3599
	movl	-24(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$46, %ax
	jne	.L3610
.L3599:
.LBE137:
	.loc 1 6792 0
	movl	-28(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -28(%ebp)
.L3597:
	.loc 1 6791 0
	cmpl	$0, -28(%ebp)
	jne	.L3598
.L3583:
	.loc 1 6854 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	addr_affects_sp_p
	.loc 1 6858 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	je	.L3636
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	je	.L3636
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L3639
.L3636:
	.loc 1 6860 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	invalidate
	.loc 1 6858 0
	jmp	.L3643
.L3639:
	.loc 1 6861 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$74, %ax
	je	.L3641
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$143, %ax
	jne	.L3643
.L3641:
	.loc 1 6863 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	invalidate
.L3643:
	.loc 1 6864 0
	addl	$84, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE65:
	.size	cse_set_around_loop, .-cse_set_around_loop
.globl cse_end_of_basic_block
	.type	cse_end_of_basic_block, @function
cse_end_of_basic_block:
.LFB66:
	.loc 1 6887 0
	pushl	%ebp
.LCFI224:
	movl	%esp, %ebp
.LCFI225:
	pushl	%ebx
.LCFI226:
	subl	$68, %esp
.LCFI227:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 6888 0
	movl	8(%ebp), %eax
	movl	%eax, -44(%ebp)
	.loc 1 6889 0
	movl	$0, -36(%ebp)
	.loc 1 6890 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	uid_cuid@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	uid_cuid@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 6891 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	je	.L3645
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	next_real_insn@PLT
	movl	%eax, -56(%ebp)
	jmp	.L3647
.L3645:
	movl	8(%ebp), %eax
	movl	%eax, -56(%ebp)
.L3647:
	movl	-56(%ebp), %eax
	movl	%eax, -24(%ebp)
	.loc 1 6892 0
	movl	12(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 6893 0
	movl	$0, -16(%ebp)
	.loc 1 6900 0
	jmp	.L3648
.L3649:
	.loc 1 6902 0
	movl	-20(%ebp), %eax
	subl	$1, %eax
	movl	12(%ebp), %edx
	movl	24(%edx,%eax,8), %eax
	cmpl	$1, %eax
	je	.L3650
	.loc 1 6904 0
	movl	-20(%ebp), %edx
	subl	$1, %edx
	movl	12(%ebp), %eax
	movl	$1, 24(%eax,%edx,8)
	.loc 1 6905 0
	jmp	.L3652
.L3650:
	.loc 1 6908 0
	subl	$1, -20(%ebp)
.L3648:
	.loc 1 6900 0
	cmpl	$0, -20(%ebp)
	jg	.L3649
.L3652:
	.loc 1 6917 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	$2, %al
	jne	.L3736
	.loc 1 6918 0
	movl	$0, 24(%ebp)
	movl	24(%ebp), %eax
	movl	%eax, 16(%ebp)
	.loc 1 6921 0
	jmp	.L3736
.L3656:
	.loc 1 6936 0
	cmpl	$0, 20(%ebp)
	jne	.L3657
	movl	-44(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	jne	.L3657
	movl	-44(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	$-95, %eax
	je	.L3660
.L3657:
	.loc 1 6943 0
	movl	-44(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	.L3661
	movl	-44(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$44, %ax
	jne	.L3661
	movl	-44(%ebp), %eax
	movl	12(%eax), %eax
	movl	$0, 8(%esp)
	movl	$27, 4(%esp)
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	testl	%eax, %eax
	jne	.L3660
.L3661:
	.loc 1 6949 0
	movl	-44(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L3664
	movl	-44(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$49, %ax
	jne	.L3664
	.loc 1 6950 0
	movl	-44(%ebp), %eax
	movl	44(%eax), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	addl	%eax, -36(%ebp)
	.loc 1 6949 0
	jmp	.L3667
.L3664:
	.loc 1 6951 0
	movl	-44(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	je	.L3667
	.loc 1 6952 0
	addl	$1, -36(%ebp)
.L3667:
	.loc 1 6957 0
	movl	-44(%ebp), %eax
	movl	4(%eax), %edx
	movl	max_uid@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	jg	.L3669
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	uid_cuid@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	cmpl	-28(%ebp), %eax
	jle	.L3669
	.loc 1 6958 0
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	uid_cuid@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
.L3669:
	.loc 1 6959 0
	movl	-44(%ebp), %eax
	movl	4(%eax), %edx
	movl	max_uid@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	jg	.L3672
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	uid_cuid@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	cmpl	-32(%ebp), %eax
	jge	.L3672
	.loc 1 6960 0
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	uid_cuid@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
.L3672:
	.loc 1 6964 0
	movl	-16(%ebp), %eax
	cmpl	-20(%ebp), %eax
	jge	.L3675
	movl	-16(%ebp), %eax
	movl	12(%ebp), %edx
	movl	20(%edx,%eax,8), %eax
	cmpl	-44(%ebp), %eax
	jne	.L3675
	.loc 1 6966 0
	movl	-16(%ebp), %eax
	movl	12(%ebp), %edx
	movl	24(%edx,%eax,8), %eax
	cmpl	$1, %eax
	je	.L3678
	.loc 1 6967 0
	movl	-44(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, -44(%ebp)
.L3678:
	.loc 1 6970 0
	addl	$1, -16(%ebp)
	.loc 1 6964 0
	jmp	.L3680
.L3675:
	.loc 1 6983 0
	cmpl	$0, 16(%ebp)
	jne	.L3681
	cmpl	$0, 24(%ebp)
	je	.L3680
.L3681:
	cmpl	$8, -20(%ebp)
	jg	.L3680
	movl	-44(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L3680
	movl	-44(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L3680
	movl	-44(%ebp), %eax
	movl	44(%eax), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$82, %ax
	jne	.L3680
	movl	-44(%ebp), %eax
	movl	76(%eax), %eax
	testl	%eax, %eax
	je	.L3680
	movl	-44(%ebp), %eax
	movl	76(%eax), %eax
	movl	36(%eax), %eax
	cmpl	$1, %eax
	jne	.L3680
	movl	-44(%ebp), %eax
	movl	76(%eax), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L3680
	.loc 1 6991 0
	movl	-44(%ebp), %eax
	movl	76(%eax), %eax
	movl	12(%eax), %eax
	movl	%eax, -40(%ebp)
	jmp	.L3690
.L3691:
	.loc 1 6992 0
	movl	-40(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	jne	.L3692
	movl	-40(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	$-95, %eax
	je	.L3692
	movl	-40(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	.L3695
	movl	-40(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$44, %ax
	jne	.L3695
	movl	-40(%ebp), %eax
	movl	12(%eax), %eax
	movl	$0, 8(%esp)
	movl	$27, 4(%esp)
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	testl	%eax, %eax
	je	.L3695
.L3692:
	movl	-40(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$46, %ax
	jne	.L3698
	movl	-40(%ebp), %eax
	movl	36(%eax), %eax
	testl	%eax, %eax
	jne	.L3698
.L3695:
	.loc 1 6991 0
	movl	-40(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -40(%ebp)
.L3690:
	cmpl	$0, -40(%ebp)
	jne	.L3691
.L3698:
	.loc 1 7001 0
	cmpl	$0, 16(%ebp)
	je	.L3700
	cmpl	$0, -40(%ebp)
	je	.L3700
	movl	-40(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$45, %ax
	jne	.L3700
	.loc 1 7005 0
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	next_real_insn@PLT
	cmpl	-24(%ebp), %eax
	jne	.L3704
	.loc 1 7007 0
	movl	-44(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -44(%ebp)
	.loc 1 7008 0
	jmp	.L3655
.L3704:
	.loc 1 7012 0
	movl	$0, -12(%ebp)
	jmp	.L3706
.L3707:
	.loc 1 7013 0
	movl	-12(%ebp), %eax
	movl	12(%ebp), %edx
	movl	20(%edx,%eax,8), %eax
	cmpl	-44(%ebp), %eax
	je	.L3708
	.loc 1 7012 0
	addl	$1, -12(%ebp)
.L3706:
	movl	-12(%ebp), %eax
	cmpl	-16(%ebp), %eax
	jl	.L3707
.L3708:
	.loc 1 7016 0
	movl	-12(%ebp), %eax
	cmpl	-16(%ebp), %eax
	jne	.L3660
	.loc 1 7019 0
	movl	-16(%ebp), %ecx
	movl	12(%ebp), %edx
	movl	-44(%ebp), %eax
	movl	%eax, 20(%edx,%ecx,8)
	.loc 1 7020 0
	movl	-16(%ebp), %edx
	movl	12(%ebp), %eax
	movl	$0, 24(%eax,%edx,8)
	addl	$1, -16(%ebp)
	.loc 1 7026 0
	movl	-16(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 7028 0
	movl	-44(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, -44(%ebp)
	.loc 1 7030 0
	movl	-44(%ebp), %eax
	movl	20(%eax), %eax
	movb	$2, 2(%eax)
	.loc 1 7001 0
	jmp	.L3680
.L3700:
	.loc 1 7033 0
	cmpl	$0, 24(%ebp)
	je	.L3680
	cmpl	$0, -40(%ebp)
	je	.L3680
	movl	-40(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$46, %ax
	je	.L3680
.LBB140:
	.loc 1 7037 0
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	next_real_insn@PLT
	cmpl	-24(%ebp), %eax
	jne	.L3714
	.loc 1 7039 0
	movl	-44(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -44(%ebp)
	.loc 1 7040 0
	jmp	.L3655
.L3714:
	.loc 1 7043 0
	movl	$0, -12(%ebp)
	jmp	.L3716
.L3717:
	.loc 1 7044 0
	movl	-12(%ebp), %eax
	movl	12(%ebp), %edx
	movl	20(%edx,%eax,8), %eax
	cmpl	-44(%ebp), %eax
	je	.L3718
	.loc 1 7043 0
	addl	$1, -12(%ebp)
.L3716:
	movl	-12(%ebp), %eax
	cmpl	-16(%ebp), %eax
	jl	.L3717
.L3718:
	.loc 1 7047 0
	movl	-12(%ebp), %eax
	cmpl	-16(%ebp), %eax
	jne	.L3660
	.loc 1 7052 0
	movl	-44(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L3721
.L3722:
	.loc 1 7053 0
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$46, %ax
	je	.L3723
	.loc 1 7052 0
	movl	-8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -8(%ebp)
.L3721:
	cmpl	$0, -8(%ebp)
	je	.L3723
	movl	-8(%ebp), %eax
	cmpl	-40(%ebp), %eax
	jne	.L3722
.L3723:
	.loc 1 7056 0
	movl	-8(%ebp), %eax
	cmpl	-40(%ebp), %eax
	jne	.L3680
	.loc 1 7058 0
	movl	-16(%ebp), %ecx
	movl	12(%ebp), %edx
	movl	-44(%ebp), %eax
	movl	%eax, 20(%edx,%ecx,8)
	.loc 1 7059 0
	movl	-16(%ebp), %edx
	movl	12(%ebp), %eax
	movl	$2, 24(%eax,%edx,8)
	addl	$1, -16(%ebp)
	.loc 1 7061 0
	movl	-16(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 7063 0
	movl	-44(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, -44(%ebp)
	.loc 1 7065 0
	movl	-44(%ebp), %eax
	movl	20(%eax), %eax
	movb	$2, 2(%eax)
.L3680:
.LBE140:
	.loc 1 7069 0
	movl	-44(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -44(%ebp)
.L3655:
.L3736:
	.loc 1 6921 0
	cmpl	$0, -44(%ebp)
	je	.L3660
	movl	-44(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$46, %ax
	jne	.L3656
.L3660:
	.loc 1 7072 0
	movl	12(%ebp), %edx
	movl	-32(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 7073 0
	movl	12(%ebp), %edx
	movl	-28(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 7074 0
	movl	12(%ebp), %edx
	movl	-36(%ebp), %eax
	movl	%eax, 8(%edx)
	.loc 1 7075 0
	movl	12(%ebp), %edx
	movl	-44(%ebp), %eax
	movl	%eax, 12(%edx)
	.loc 1 7079 0
	movl	-20(%ebp), %eax
	subl	$1, %eax
	movl	%eax, -12(%ebp)
	jmp	.L3728
.L3729:
	.loc 1 7080 0
	movl	-12(%ebp), %eax
	movl	12(%ebp), %edx
	movl	24(%edx,%eax,8), %eax
	cmpl	$1, %eax
	jne	.L3730
	.loc 1 7079 0
	subl	$1, -12(%ebp)
.L3728:
	cmpl	$0, -12(%ebp)
	jns	.L3729
.L3730:
	.loc 1 7083 0
	cmpl	$-1, -12(%ebp)
	jne	.L3732
	.loc 1 7084 0
	movl	12(%ebp), %eax
	movl	$0, 16(%eax)
	jmp	.L3734
.L3732:
	.loc 1 7086 0
	movl	12(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	%eax, 16(%edx)
.L3734:
	.loc 1 7089 0
	movl	-20(%ebp), %edx
	movl	12(%ebp), %eax
	movl	$0, 20(%eax,%edx,8)
	.loc 1 7090 0
	addl	$68, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE66:
	.size	cse_end_of_basic_block, .-cse_end_of_basic_block
	.section	.rodata
	.align 4
.LC3:
	.string	";; Processing block from %d to %d, %d sets.\n"
	.text
.globl cse_main
	.type	cse_main, @function
cse_main:
.LFB67:
	.loc 1 7108 0
	pushl	%ebp
.LCFI228:
	movl	%esp, %ebp
.LCFI229:
	pushl	%ebx
.LCFI230:
	subl	$164, %esp
.LCFI231:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 7110 0
	movl	8(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 7113 0
	movl	$0, cse_jumps_altered@GOTOFF(%ebx)
	.loc 1 7114 0
	movl	$0, recorded_label_ref@GOTOFF(%ebx)
	.loc 1 7115 0
	movl	$0, constant_pool_entries_cost@GOTOFF(%ebx)
	.loc 1 7116 0
	movl	$0, -104(%ebp)
	.loc 1 7118 0
	call	init_recog@PLT
	.loc 1 7119 0
	call	init_alias_analysis@PLT
	.loc 1 7121 0
	movl	12(%ebp), %eax
	movl	%eax, max_reg@GOTOFF(%ebx)
	.loc 1 7123 0
	call	get_max_uid@PLT
	movl	%eax, max_insn_uid@GOTOFF(%ebx)
	.loc 1 7125 0
	movl	12(%ebp), %eax
	sall	$3, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, reg_eqv_table@GOTOFF(%ebx)
	.loc 1 7132 0
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	$131, (%esp)
	call	gen_rtx_fmt_e@PLT
	movl	%eax, memory_extend_rtx@GOTOFF(%ebx)
	.loc 1 7137 0
	movl	$0, n_elements_made@GOTOFF(%ebx)
	.loc 1 7141 0
	call	get_max_uid@PLT
	movl	%eax, max_uid@GOTOFF(%ebx)
	.loc 1 7142 0
	movl	max_uid@GOTOFF(%ebx), %eax
	addl	$1, %eax
	movl	$4, 4(%esp)
	movl	%eax, (%esp)
	call	xcalloc@PLT
	movl	%eax, uid_cuid@GOTOFF(%ebx)
	.loc 1 7150 0
	movl	8(%ebp), %eax
	movl	%eax, -20(%ebp)
	movl	$0, -16(%ebp)
	jmp	.L3738
.L3739:
	.loc 1 7152 0
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	jne	.L3740
	movl	-20(%ebp), %eax
	movl	44(%eax), %eax
	testl	%eax, %eax
	jns	.L3742
.L3740:
	.loc 1 7154 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	uid_cuid@GOTOFF(%ebx), %eax
	addl	%eax, %edx
	addl	$1, -16(%ebp)
	movl	-16(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 7152 0
	jmp	.L3743
.L3742:
	.loc 1 7157 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	uid_cuid@GOTOFF(%ebx), %eax
	addl	%eax, %edx
	movl	-16(%ebp), %eax
	movl	%eax, (%edx)
.L3743:
	.loc 1 7150 0
	movl	-20(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -20(%ebp)
.L3738:
	cmpl	$0, -20(%ebp)
	jne	.L3739
	.loc 1 7160 0
	call	ggc_push_context@PLT
	.loc 1 7165 0
	movl	8(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 7166 0
	jmp	.L3776
.L3746:
	.loc 1 7168 0
	movl	$0, cse_altered@GOTOFF(%ebx)
	.loc 1 7169 0
	movl	flag_cse_skip_blocks@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	flag_cse_follow_jumps@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 16(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%ecx, 8(%esp)
	leal	-120(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	cse_end_of_basic_block@PLT
	.loc 1 7173 0
	movl	-112(%ebp), %eax
	testl	%eax, %eax
	je	.L3747
	movl	-20(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	$2, %al
	jne	.L3749
.L3747:
	.loc 1 7175 0
	movl	-20(%ebp), %eax
	movb	$0, 2(%eax)
	.loc 1 7176 0
	movl	-108(%ebp), %eax
	testl	%eax, %eax
	je	.L3750
	movl	-108(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -148(%ebp)
	jmp	.L3752
.L3750:
	movl	$0, -148(%ebp)
.L3752:
	movl	-148(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 7177 0
	movl	$0, -104(%ebp)
	.loc 1 7178 0
	jmp	.L3745
.L3749:
	.loc 1 7181 0
	movl	-120(%ebp), %eax
	movl	%eax, cse_basic_block_start@GOTOFF(%ebx)
	.loc 1 7182 0
	movl	-116(%ebp), %eax
	movl	%eax, cse_basic_block_end@GOTOFF(%ebx)
	.loc 1 7183 0
	movl	-112(%ebp), %eax
	addl	%eax, %eax
	movl	%eax, max_qty@GOTOFF(%ebx)
	.loc 1 7185 0
	cmpl	$0, 20(%ebp)
	je	.L3753
	.loc 1 7186 0
	movl	-112(%ebp), %edx
	movl	%edx, -144(%ebp)
	movl	-108(%ebp), %eax
	testl	%eax, %eax
	je	.L3755
	movl	-108(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -140(%ebp)
	jmp	.L3757
.L3755:
	movl	$0, -140(%ebp)
.L3757:
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	-144(%ebp), %edx
	movl	%edx, 16(%esp)
	movl	-140(%ebp), %edx
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	leal	.LC3@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	fnotice@PLT
.L3753:
	.loc 1 7192 0
	movl	max_qty@GOTOFF(%ebx), %eax
	cmpl	$499, %eax
	jg	.L3758
	.loc 1 7193 0
	movl	$500, max_qty@GOTOFF(%ebx)
.L3758:
	.loc 1 7195 0
	movl	max_qty@GOTOFF(%ebx), %edx
	movl	max_reg@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, max_qty@GOTOFF(%ebx)
	.loc 1 7200 0
	movl	-104(%ebp), %eax
	testl	%eax, %eax
	jle	.L3760
	.loc 1 7201 0
	movl	-108(%ebp), %edx
	movl	$0, 12(%esp)
	leal	-120(%ebp), %eax
	addl	$20, %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	cse_basic_block
	jmp	.L3762
.L3760:
.LBB141:
	.loc 1 7204 0
	movl	cse_jumps_altered@GOTOFF(%ebx), %eax
	movl	%eax, -12(%ebp)
	.loc 1 7210 0
	movl	$0, cse_jumps_altered@GOTOFF(%ebx)
	.loc 1 7211 0
	cmpl	$0, 16(%ebp)
	sete	%al
	movzbl	%al, %eax
	movl	-108(%ebp), %edx
	movl	%eax, 12(%esp)
	leal	-120(%ebp), %eax
	addl	$20, %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	cse_basic_block
	movl	%eax, -8(%ebp)
	.loc 1 7212 0
	movl	cse_jumps_altered@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L3763
	movl	flag_cse_follow_jumps@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L3765
	movl	flag_cse_skip_blocks@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L3765
.L3763:
	.loc 1 7214 0
	movl	-8(%ebp), %eax
	movl	%eax, -20(%ebp)
.L3765:
	.loc 1 7216 0
	movl	cse_jumps_altered@GOTOFF(%ebx), %eax
	orl	-12(%ebp), %eax
	movl	%eax, cse_jumps_altered@GOTOFF(%ebx)
.L3762:
.LBE141:
	.loc 1 7219 0
	movl	cse_altered@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L3745
	.loc 1 7220 0
	call	ggc_collect@PLT
.L3745:
.L3776:
	.loc 1 7166 0
	cmpl	$0, -20(%ebp)
	jne	.L3746
	.loc 1 7227 0
	call	ggc_pop_context@PLT
	.loc 1 7229 0
	movl	max_elements_made@GOTOFF(%ebx), %edx
	movl	n_elements_made@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	jge	.L3769
	.loc 1 7230 0
	movl	n_elements_made@GOTOFF(%ebx), %eax
	movl	%eax, max_elements_made@GOTOFF(%ebx)
.L3769:
	.loc 1 7233 0
	call	end_alias_analysis@PLT
	.loc 1 7234 0
	movl	uid_cuid@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 7235 0
	movl	reg_eqv_table@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 7237 0
	movl	cse_jumps_altered@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L3771
	movl	recorded_label_ref@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L3773
.L3771:
	movl	$1, -136(%ebp)
	jmp	.L3774
.L3773:
	movl	$0, -136(%ebp)
.L3774:
	movl	-136(%ebp), %eax
	.loc 1 7238 0
	addl	$164, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE67:
	.size	cse_main, .-cse_main
	.section	.rodata
	.type	__FUNCTION__.22082, @object
	.size	__FUNCTION__.22082, 16
__FUNCTION__.22082:
	.string	"cse_basic_block"
	.text
	.type	cse_basic_block, @function
cse_basic_block:
.LFB68:
	.loc 1 7253 0
	pushl	%ebp
.LCFI232:
	movl	%esp, %ebp
.LCFI233:
	pushl	%ebx
.LCFI234:
	subl	$180, %esp
.LCFI235:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 7255 0
	movl	$0, -32(%ebp)
	.loc 1 7256 0
	movl	$0, -28(%ebp)
	.loc 1 7257 0
	movl	$0, -24(%ebp)
	.loc 1 7262 0
	movl	max_qty@GOTOFF(%ebx), %edx
	movl	max_reg@GOTOFF(%ebx), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	sall	$5, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, qty_table@GOTOFF(%ebx)
	.loc 1 7265 0
	movl	qty_table@GOTOFF(%ebx), %edx
	movl	max_reg@GOTOFF(%ebx), %eax
	sall	$5, %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, qty_table@GOTOFF(%ebx)
	.loc 1 7267 0
	call	new_basic_block
	.loc 1 7270 0
	cmpl	$0, 12(%ebp)
	je	.L3778
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$46, %ax
	jne	.L3778
	.loc 1 7271 0
	movl	12(%ebp), %eax
	movl	36(%eax), %eax
	leal	1(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, 36(%eax)
.L3778:
	.loc 1 7273 0
	movl	8(%ebp), %eax
	movl	%eax, -36(%ebp)
	jmp	.L3781
.L3782:
.LBB142:
	.loc 1 7275 0
	movl	-36(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -20(%ebp)
	.loc 1 7286 0
	cmpl	$47, -20(%ebp)
	je	.L3783
	cmpl	$1000, -24(%ebp)
	setg	%al
	addl	$1, -24(%ebp)
	testb	%al, %al
	je	.L3783
	.loc 1 7288 0
	call	flush_hash_table
	.loc 1 7289 0
	movl	$0, -24(%ebp)
.L3783:
	.loc 1 7294 0
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	cmpl	-36(%ebp), %eax
	jne	.L3786
.LBB143:
	.loc 1 7296 0
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
	addl	$8, 16(%ebp)
	.loc 1 7297 0
	cmpl	$1, -16(%ebp)
	je	.L3786
	.loc 1 7299 0
	cmpl	$0, -16(%ebp)
	jne	.L3789
	.loc 1 7300 0
	movl	$1, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	record_jump_equiv
	jmp	.L3791
.L3789:
	.loc 1 7302 0
	movl	-36(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	invalidate_skipped_block
.L3791:
	.loc 1 7309 0
	movl	-36(%ebp), %eax
	movl	%eax, prev_insn@GOTOFF(%ebx)
	.loc 1 7310 0
	movl	-36(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, -36(%ebp)
	.loc 1 7311 0
	jmp	.L3792
.L3786:
.LBE143:
	.loc 1 7315 0
	movl	-36(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	$2, %al
	jne	.L3793
	.loc 1 7316 0
	movl	-36(%ebp), %eax
	movb	$0, 2(%eax)
.L3793:
	.loc 1 7318 0
	movl	-20(%ebp), %eax
	movl	rtx_class@GOT(%ebx), %edx
	movzbl	(%edx,%eax), %eax
	cmpb	$105, %al
	jne	.L3795
.LBB144:
	.loc 1 7325 0
	movl	-36(%ebp), %eax
	movl	68(%eax), %eax
	testl	%eax, %eax
	je	.L3797
	.loc 1 7326 0
	movl	-36(%ebp), %eax
	movl	68(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	cse_process_notes
	movl	%eax, %edx
	movl	-36(%ebp), %eax
	movl	%edx, 68(%eax)
.L3797:
	.loc 1 7334 0
	movl	-36(%ebp), %eax
	movl	68(%eax), %eax
	testl	%eax, %eax
	je	.L3799
	.loc 1 7336 0
	movl	$0, 8(%esp)
	movl	$7, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	je	.L3801
	.loc 1 7337 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L3799
.L3801:
	.loc 1 7338 0
	movl	$0, 8(%esp)
	movl	$6, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	testl	%eax, %eax
	je	.L3799
	.loc 1 7339 0
	movl	$0, -28(%ebp)
.L3799:
	.loc 1 7342 0
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	cse_insn
	.loc 1 7346 0
	movl	-36(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$42, %ax
	jne	.L3795
	movl	recorded_label_ref@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L3795
	movl	-36(%ebp), %edx
	addl	$44, %edx
	movl	-36(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	check_for_label_ref@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	for_each_rtx@PLT
	testl	%eax, %eax
	je	.L3795
	.loc 1 7349 0
	movl	$1, recorded_label_ref@GOTOFF(%ebx)
.L3795:
.LBE144:
	.loc 1 7357 0
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	any_uncondjump_p@PLT
	testl	%eax, %eax
	je	.L3807
	.loc 1 7359 0
	cmpl	$0, 12(%ebp)
	jne	.L3809
	.loc 1 7361 0
	movl	max_reg@GOTOFF(%ebx), %eax
	sall	$5, %eax
	movl	%eax, %edx
	movl	qty_table@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 7362 0
	movl	$0, -156(%ebp)
	jmp	.L3811
.L3809:
	.loc 1 7365 0
	movl	-36(%ebp), %eax
	movl	76(%eax), %eax
	cmpl	12(%ebp), %eax
	jne	.L3812
	.loc 1 7366 0
	movl	$1, -32(%ebp)
.L3812:
	.loc 1 7373 0
	movl	12(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L3814
	.loc 1 7376 0
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -36(%ebp)
.L3807:
	.loc 1 7385 0
	cmpl	$0, 12(%ebp)
	je	.L3792
	movl	-36(%ebp), %eax
	movl	20(%eax), %eax
	cmpl	12(%ebp), %eax
	jne	.L3792
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$46, %ax
	jne	.L3792
	movl	12(%ebp), %eax
	movl	36(%eax), %eax
	leal	-1(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, 36(%eax)
	movl	12(%ebp), %eax
	movl	36(%eax), %eax
	cmpl	-32(%ebp), %eax
	jne	.L3792
.LBB145:
	.loc 1 7391 0
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -36(%ebp)
	.loc 1 7394 0
	cmpl	$0, -36(%ebp)
	jne	.L3820
	.loc 1 7396 0
	movl	max_reg@GOTOFF(%ebx), %eax
	sall	$5, %eax
	movl	%eax, %edx
	movl	qty_table@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 7397 0
	movl	$0, -156(%ebp)
	jmp	.L3811
.L3820:
	.loc 1 7402 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	prev_nonnote_insn@PLT
	movl	%eax, -8(%ebp)
	.loc 1 7403 0
	cmpl	$0, -8(%ebp)
	je	.L3822
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$45, %ax
	jne	.L3822
	.loc 1 7405 0
	movl	max_reg@GOTOFF(%ebx), %eax
	sall	$5, %eax
	movl	%eax, %edx
	movl	qty_table@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 7406 0
	movl	-36(%ebp), %eax
	movl	%eax, -156(%ebp)
	jmp	.L3811
.L3822:
	.loc 1 7411 0
	movl	$0, -32(%ebp)
	.loc 1 7412 0
	movl	$0, -120(%ebp)
	.loc 1 7413 0
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	leal	-136(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	cse_end_of_basic_block@PLT
	.loc 1 7419 0
	movl	-128(%ebp), %eax
	leal	(%eax,%eax), %edx
	movl	next_qty@GOTOFF(%ebx), %eax
	addl	%eax, %edx
	movl	max_qty@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	jg	.L3814
	.loc 1 7422 0
	movl	-136(%ebp), %eax
	movl	%eax, cse_basic_block_start@GOTOFF(%ebx)
	.loc 1 7423 0
	movl	-132(%ebp), %eax
	movl	%eax, cse_basic_block_end@GOTOFF(%ebx)
	.loc 1 7424 0
	movl	-124(%ebp), %eax
	movl	%eax, 12(%ebp)
	.loc 1 7427 0
	cmpl	$0, 12(%ebp)
	je	.L3826
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$46, %ax
	jne	.L3826
	.loc 1 7428 0
	movl	12(%ebp), %eax
	movl	36(%eax), %eax
	leal	1(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, 36(%eax)
.L3826:
	.loc 1 7431 0
	movl	-36(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -36(%ebp)
.L3792:
.LBE145:
.LBE142:
	.loc 1 7273 0
	movl	-36(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -36(%ebp)
.L3781:
	movl	-36(%ebp), %eax
	cmpl	12(%ebp), %eax
	jne	.L3782
.L3814:
	.loc 1 7435 0
	movl	next_qty@GOTOFF(%ebx), %edx
	movl	max_qty@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	jle	.L3829
	.loc 1 7436 0
	leal	__FUNCTION__.22082@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$7436, 4(%esp)
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L3829:
	.loc 1 7443 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	prev_nonnote_insn@PLT
	movl	%eax, -36(%ebp)
	.loc 1 7444 0
	movl	cse_jumps_altered@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L3831
	movl	flag_cse_follow_jumps@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L3833
	movl	flag_cse_skip_blocks@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L3833
.L3831:
	cmpl	$0, 20(%ebp)
	je	.L3833
	cmpl	$0, 12(%ebp)
	je	.L3833
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	jne	.L3833
	movl	12(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	$-95, %eax
	jne	.L3833
	movl	-36(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L3833
	movl	-36(%ebp), %eax
	movl	76(%eax), %eax
	testl	%eax, %eax
	je	.L3833
	movl	-36(%ebp), %eax
	movl	76(%eax), %eax
	movl	36(%eax), %eax
	cmpl	$1, %eax
	jne	.L3833
	.loc 1 7451 0
	movl	-36(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, (%esp)
	call	cse_around_loop
.L3833:
	.loc 1 7453 0
	movl	max_reg@GOTOFF(%ebx), %eax
	sall	$5, %eax
	movl	%eax, %edx
	movl	qty_table@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 7455 0
	cmpl	$0, 12(%ebp)
	je	.L3842
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -152(%ebp)
	jmp	.L3844
.L3842:
	movl	$0, -152(%ebp)
.L3844:
	movl	-152(%ebp), %ecx
	movl	%ecx, -156(%ebp)
.L3811:
	movl	-156(%ebp), %eax
	.loc 1 7456 0
	addl	$180, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE68:
	.size	cse_basic_block, .-cse_basic_block
	.type	check_for_label_ref, @function
check_for_label_ref:
.LFB69:
	.loc 1 7465 0
	pushl	%ebp
.LCFI236:
	movl	%esp, %ebp
.LCFI237:
	pushl	%ebx
.LCFI238:
	subl	$36, %esp
.LCFI239:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 7466 0
	movl	12(%ebp), %eax
	movl	%eax, -8(%ebp)
	.loc 1 7472 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	jne	.L3847
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movzbl	3(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L3847
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$46, %ax
	jne	.L3847
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L3847
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, 8(%esp)
	movl	$13, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	testl	%eax, %eax
	jne	.L3847
	movl	$1, -24(%ebp)
	jmp	.L3853
.L3847:
	movl	$0, -24(%ebp)
.L3853:
	movl	-24(%ebp), %eax
	.loc 1 7477 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE69:
	.size	check_for_label_ref, .-check_for_label_ref
	.section	.rodata
	.type	__FUNCTION__.22315, @object
	.size	__FUNCTION__.22315, 16
__FUNCTION__.22315:
	.string	"count_reg_usage"
	.text
	.type	count_reg_usage, @function
count_reg_usage:
.LFB70:
	.loc 1 7493 0
	pushl	%ebp
.LCFI240:
	movl	%esp, %ebp
.LCFI241:
	pushl	%ebx
.LCFI242:
	subl	$68, %esp
.LCFI243:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 7499 0
	cmpl	$0, 8(%ebp)
	je	.L3886
	.loc 1 7502 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -24(%ebp)
	movl	-24(%ebp), %eax
	subl	$4, %eax
	movl	%eax, -44(%ebp)
	cmpl	$75, -44(%ebp)
	ja	.L3858
	movl	-44(%ebp), %eax
	sall	$2, %eax
	movl	.L3866@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L3866:
	.long	.L3859@GOTOFF
	.long	.L3858@GOTOFF
	.long	.L3858@GOTOFF
	.long	.L3858@GOTOFF
	.long	.L3858@GOTOFF
	.long	.L3858@GOTOFF
	.long	.L3858@GOTOFF
	.long	.L3858@GOTOFF
	.long	.L3858@GOTOFF
	.long	.L3858@GOTOFF
	.long	.L3858@GOTOFF
	.long	.L3858@GOTOFF
	.long	.L3858@GOTOFF
	.long	.L3858@GOTOFF
	.long	.L3858@GOTOFF
	.long	.L3858@GOTOFF
	.long	.L3858@GOTOFF
	.long	.L3858@GOTOFF
	.long	.L3858@GOTOFF
	.long	.L3858@GOTOFF
	.long	.L3858@GOTOFF
	.long	.L3858@GOTOFF
	.long	.L3858@GOTOFF
	.long	.L3858@GOTOFF
	.long	.L3858@GOTOFF
	.long	.L3858@GOTOFF
	.long	.L3858@GOTOFF
	.long	.L3858@GOTOFF
	.long	.L3858@GOTOFF
	.long	.L3858@GOTOFF
	.long	.L3858@GOTOFF
	.long	.L3858@GOTOFF
	.long	.L3858@GOTOFF
	.long	.L3858@GOTOFF
	.long	.L3858@GOTOFF
	.long	.L3858@GOTOFF
	.long	.L3858@GOTOFF
	.long	.L3858@GOTOFF
	.long	.L3860@GOTOFF
	.long	.L3860@GOTOFF
	.long	.L3861@GOTOFF
	.long	.L3858@GOTOFF
	.long	.L3858@GOTOFF
	.long	.L3858@GOTOFF
	.long	.L3858@GOTOFF
	.long	.L3858@GOTOFF
	.long	.L3858@GOTOFF
	.long	.L3858@GOTOFF
	.long	.L3858@GOTOFF
	.long	.L3858@GOTOFF
	.long	.L3858@GOTOFF
	.long	.L3858@GOTOFF
	.long	.L3858@GOTOFF
	.long	.L3862@GOTOFF
	.long	.L3858@GOTOFF
	.long	.L3863@GOTOFF
	.long	.L3858@GOTOFF
	.long	.L3858@GOTOFF
	.long	.L3858@GOTOFF
	.long	.L3858@GOTOFF
	.long	.L3886@GOTOFF
	.long	.L3886@GOTOFF
	.long	.L3886@GOTOFF
	.long	.L3858@GOTOFF
	.long	.L3886@GOTOFF
	.long	.L3886@GOTOFF
	.long	.L3858@GOTOFF
	.long	.L3865@GOTOFF
	.long	.L3858@GOTOFF
	.long	.L3858@GOTOFF
	.long	.L3858@GOTOFF
	.long	.L3858@GOTOFF
	.long	.L3858@GOTOFF
	.long	.L3886@GOTOFF
	.long	.L3886@GOTOFF
	.long	.L3886@GOTOFF
	.text
.L3865:
	.loc 1 7505 0
	movl	8(%ebp), %eax
	cmpl	16(%ebp), %eax
	je	.L3886
	.loc 1 7506 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	addl	12(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	addl	20(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 7507 0
	jmp	.L3886
.L3863:
	.loc 1 7522 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L3886
	.loc 1 7523 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$0, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	count_reg_usage
	.loc 1 7524 0
	jmp	.L3886
.L3862:
	.loc 1 7528 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	je	.L3871
	.loc 1 7529 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$0, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	count_reg_usage
.L3871:
	.loc 1 7537 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, (%esp)
	call	side_effects_p@PLT
	testl	%eax, %eax
	jne	.L3873
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -40(%ebp)
	jmp	.L3875
.L3873:
	movl	$0, -40(%ebp)
.L3875:
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	count_reg_usage
	.loc 1 7540 0
	jmp	.L3886
.L3861:
	.loc 1 7543 0
	movl	8(%ebp), %eax
	movl	76(%eax), %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$0, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	count_reg_usage
.L3860:
	.loc 1 7548 0
	movl	8(%ebp), %eax
	movl	44(%eax), %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$0, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	count_reg_usage
	.loc 1 7553 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_equal_equiv_note@PLT
	movl	%eax, -20(%ebp)
	.loc 1 7554 0
	cmpl	$0, -20(%ebp)
	je	.L3886
	.loc 1 7555 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$0, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	count_reg_usage
	.loc 1 7556 0
	jmp	.L3886
.L3859:
	.loc 1 7559 0
	leal	__FUNCTION__.22315@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$7559, 4(%esp)
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L3858:
	.loc 1 7565 0
	movl	-24(%ebp), %edx
	movl	rtx_format@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -16(%ebp)
	.loc 1 7566 0
	movl	-24(%ebp), %edx
	movl	rtx_length@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	subl	$1, %eax
	movl	%eax, -12(%ebp)
	jmp	.L3878
.L3879:
	.loc 1 7568 0
	movl	-12(%ebp), %eax
	addl	-16(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$101, %al
	jne	.L3880
	.loc 1 7569 0
	movl	-12(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	count_reg_usage
	jmp	.L3882
.L3880:
	.loc 1 7570 0
	movl	-12(%ebp), %eax
	addl	-16(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$69, %al
	jne	.L3882
	.loc 1 7571 0
	movl	-12(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	(%eax), %eax
	subl	$1, %eax
	movl	%eax, -8(%ebp)
	jmp	.L3884
.L3885:
	.loc 1 7572 0
	movl	-12(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %edx
	movl	-8(%ebp), %eax
	movl	4(%edx,%eax,4), %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	count_reg_usage
	.loc 1 7571 0
	subl	$1, -8(%ebp)
.L3884:
	cmpl	$0, -8(%ebp)
	jns	.L3885
.L3882:
	.loc 1 7566 0
	subl	$1, -12(%ebp)
.L3878:
	cmpl	$0, -12(%ebp)
	jns	.L3879
.L3886:
	.loc 1 7574 0
	addl	$68, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE70:
	.size	count_reg_usage, .-count_reg_usage
	.type	set_live_p, @function
set_live_p:
.LFB71:
	.loc 1 7582 0
	pushl	%ebp
.LCFI244:
	movl	%esp, %ebp
.LCFI245:
	pushl	%ebx
.LCFI246:
	subl	$20, %esp
.LCFI247:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 7587 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	set_noop_p@PLT
	testl	%eax, %eax
	jne	.L3888
	.loc 1 7598 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L3890
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	jbe	.L3890
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	addl	16(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L3890
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, (%esp)
	call	side_effects_p@PLT
	testl	%eax, %eax
	jne	.L3890
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	120(%eax), %eax
	cmpl	%eax, %edx
	jne	.L3888
.L3890:
	.loc 1 7607 0
	movl	$1, -8(%ebp)
	jmp	.L3895
.L3888:
	.loc 1 7608 0
	movl	$0, -8(%ebp)
.L3895:
	movl	-8(%ebp), %eax
	.loc 1 7609 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE71:
	.size	set_live_p, .-set_live_p
	.type	insn_live_p, @function
insn_live_p:
.LFB72:
	.loc 1 7617 0
	pushl	%ebp
.LCFI248:
	movl	%esp, %ebp
.LCFI249:
	pushl	%ebx
.LCFI250:
	subl	$36, %esp
.LCFI251:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 7619 0
	movl	flag_non_call_exceptions@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L3898
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, (%esp)
	call	may_trap_p@PLT
	testl	%eax, %eax
	je	.L3898
	.loc 1 7620 0
	movl	$1, -24(%ebp)
	jmp	.L3901
.L3898:
	.loc 1 7621 0
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L3902
	.loc 1 7622 0
	movl	8(%ebp), %eax
	movl	44(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	set_live_p
	movzbl	%al, %eax
	movl	%eax, -24(%ebp)
	jmp	.L3901
.L3902:
	.loc 1 7623 0
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$49, %ax
	jne	.L3904
	.loc 1 7625 0
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	subl	$1, %eax
	movl	%eax, -12(%ebp)
	jmp	.L3906
.L3907:
.LBB146:
	.loc 1 7627 0
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	4(%eax), %edx
	movl	-12(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	%eax, -8(%ebp)
	.loc 1 7629 0
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L3908
	.loc 1 7631 0
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	set_live_p
	testb	%al, %al
	je	.L3912
	.loc 1 7632 0
	movl	$1, -24(%ebp)
	jmp	.L3901
.L3908:
	.loc 1 7634 0
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$59, %ax
	je	.L3912
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$58, %ax
	je	.L3912
	.loc 1 7635 0
	movl	$1, -24(%ebp)
	jmp	.L3901
.L3912:
.LBE146:
	.loc 1 7625 0
	subl	$1, -12(%ebp)
.L3906:
	cmpl	$0, -12(%ebp)
	jns	.L3907
	.loc 1 7637 0
	movl	$0, -24(%ebp)
	jmp	.L3901
.L3904:
	.loc 1 7640 0
	movl	$1, -24(%ebp)
.L3901:
	movl	-24(%ebp), %eax
	.loc 1 7641 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE72:
	.size	insn_live_p, .-insn_live_p
	.type	dead_libcall_p, @function
dead_libcall_p:
.LFB73:
	.loc 1 7649 0
	pushl	%ebp
.LCFI252:
	movl	%esp, %ebp
.LCFI253:
	pushl	%ebx
.LCFI254:
	subl	$52, %esp
.LCFI255:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 7656 0
	movl	$0, 8(%esp)
	movl	$4, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	movl	%eax, -16(%ebp)
	.loc 1 7657 0
	cmpl	$0, -16(%ebp)
	je	.L3918
.LBB147:
	.loc 1 7659 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L3920
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L3922
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L3924
.L3922:
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	single_set_2@PLT
	movl	%eax, -28(%ebp)
.L3924:
	movl	-28(%ebp), %eax
	movl	%eax, -32(%ebp)
	jmp	.L3925
.L3920:
	movl	$0, -32(%ebp)
.L3925:
	movl	-32(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 7660 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	simplify_rtx@PLT
	movl	%eax, -8(%ebp)
	.loc 1 7662 0
	cmpl	$0, -8(%ebp)
	jne	.L3926
	.loc 1 7663 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
.L3926:
	.loc 1 7666 0
	movl	$-1, 12(%esp)
	movl	$0, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	count_reg_usage
	.loc 1 7668 0
	cmpl	$0, -12(%ebp)
	je	.L3928
	movl	-12(%ebp), %edx
	addl	$12, %edx
	movl	$0, 12(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	validate_change@PLT
	testl	%eax, %eax
	je	.L3928
	.loc 1 7670 0
	movl	$1, 12(%esp)
	movl	$0, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	count_reg_usage
	.loc 1 7671 0
	movl	$0, 8(%esp)
	movl	$6, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	remove_note@PLT
	.loc 1 7672 0
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	remove_note@PLT
	.loc 1 7673 0
	movl	$1, -24(%ebp)
	jmp	.L3931
.L3928:
	.loc 1 7675 0
	movl	$1, 12(%esp)
	movl	$0, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	count_reg_usage
.L3918:
.LBE147:
	.loc 1 7677 0
	movl	$0, -24(%ebp)
.L3931:
	movl	-24(%ebp), %eax
	.loc 1 7678 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE73:
	.size	dead_libcall_p, .-dead_libcall_p
	.section	.rodata
	.align 4
.LC4:
	.string	"Deleted %i trivially dead insns; %i iterations\n"
	.text
.globl delete_trivially_dead_insns
	.type	delete_trivially_dead_insns, @function
delete_trivially_dead_insns:
.LFB74:
	.loc 1 7692 0
	pushl	%ebp
.LCFI256:
	movl	%esp, %ebp
.LCFI257:
	pushl	%ebx
.LCFI258:
	subl	$68, %esp
.LCFI259:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 7695 0
	movl	$0, -28(%ebp)
	movl	$0, -24(%ebp)
	.loc 1 7696 0
	movl	$0, -20(%ebp)
	movl	$0, -12(%ebp)
	.loc 1 7698 0
	movl	$5, (%esp)
	call	timevar_push@PLT
	.loc 1 7700 0
	movl	12(%ebp), %eax
	movl	$4, 4(%esp)
	movl	%eax, (%esp)
	call	xcalloc@PLT
	movl	%eax, -40(%ebp)
	.loc 1 7701 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	next_real_insn@PLT
	movl	%eax, -36(%ebp)
	jmp	.L3934
.L3935:
	.loc 1 7702 0
	movl	$1, 12(%esp)
	movl	$0, 8(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	count_reg_usage
	.loc 1 7701 0
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	next_real_insn@PLT
	movl	%eax, -36(%ebp)
.L3934:
	cmpl	$0, -36(%ebp)
	jne	.L3935
.L3936:
	.loc 1 7706 0
	movl	-20(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 7707 0
	addl	$1, -12(%ebp)
	.loc 1 7715 0
	call	get_last_insn@PLT
	movl	%eax, -36(%ebp)
	.loc 1 7716 0
	movl	-36(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	je	.L3939
	.loc 1 7717 0
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	prev_real_insn@PLT
	movl	%eax, -36(%ebp)
	.loc 1 7719 0
	jmp	.L3939
.L3940:
.LBB148:
	.loc 1 7721 0
	movl	$0, -8(%ebp)
	.loc 1 7723 0
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	prev_real_insn@PLT
	movl	%eax, -32(%ebp)
	.loc 1 7730 0
	movl	$0, 8(%esp)
	movl	$6, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	testl	%eax, %eax
	je	.L3941
	.loc 1 7732 0
	movl	$1, -28(%ebp)
	.loc 1 7733 0
	movl	$1, -8(%ebp)
	.loc 1 7734 0
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	dead_libcall_p
	movzbl	%al, %eax
	movl	%eax, -24(%ebp)
	jmp	.L3943
.L3941:
	.loc 1 7736 0
	cmpl	$0, -28(%ebp)
	je	.L3944
	.loc 1 7737 0
	cmpl	$0, -24(%ebp)
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -8(%ebp)
	jmp	.L3943
.L3944:
	.loc 1 7739 0
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	insn_live_p
	movzbl	%al, %eax
	movl	%eax, -8(%ebp)
.L3943:
	.loc 1 7744 0
	cmpl	$0, -8(%ebp)
	jne	.L3946
	.loc 1 7746 0
	movl	$-1, 12(%esp)
	movl	$0, 8(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	count_reg_usage
	.loc 1 7747 0
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_insn_and_edges@PLT
	.loc 1 7748 0
	addl	$1, -20(%ebp)
.L3946:
	.loc 1 7751 0
	movl	$0, 8(%esp)
	movl	$7, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	testl	%eax, %eax
	je	.L3948
	.loc 1 7753 0
	movl	$0, -28(%ebp)
	.loc 1 7754 0
	movl	$0, -24(%ebp)
.L3948:
.LBE148:
	.loc 1 7719 0
	movl	-32(%ebp), %eax
	movl	%eax, -36(%ebp)
.L3939:
	cmpl	$0, -36(%ebp)
	jne	.L3940
	.loc 1 7758 0
	movl	-20(%ebp), %eax
	cmpl	-16(%ebp), %eax
	jne	.L3936
	.loc 1 7760 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L3952
	cmpl	$0, -20(%ebp)
	je	.L3952
	.loc 1 7761 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC4@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
.L3952:
	.loc 1 7764 0
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 7765 0
	movl	$5, (%esp)
	call	timevar_pop@PLT
	.loc 1 7766 0
	movl	-20(%ebp), %eax
	.loc 1 7767 0
	addl	$68, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE74:
	.size	delete_trivially_dead_insns, .-delete_trivially_dead_insns
	.local	max_reg
	.comm	max_reg,4,4
	.local	max_insn_uid
	.comm	max_insn_uid,4,4
	.local	max_qty
	.comm	max_qty,4,4
	.local	next_qty
	.comm	next_qty,4,4
	.local	qty_table
	.comm	qty_table,4,4
	.local	prev_insn
	.comm	prev_insn,4,4
	.local	this_insn
	.comm	this_insn,4,4
	.local	reg_eqv_table
	.comm	reg_eqv_table,4,4
	.local	cse_reg_info_free_list
	.comm	cse_reg_info_free_list,4,4
	.local	cse_reg_info_used_list
	.comm	cse_reg_info_used_list,4,4
	.local	cse_reg_info_used_list_end
	.comm	cse_reg_info_used_list_end,4,4
	.local	reg_hash
	.comm	reg_hash,512,32
	.local	cached_regno
	.comm	cached_regno,4,4
	.local	cached_cse_reg_info
	.comm	cached_cse_reg_info,4,4
	.local	hard_regs_in_table
	.comm	hard_regs_in_table,24,8
	.local	cse_basic_block_start
	.comm	cse_basic_block_start,4,4
	.local	cse_basic_block_end
	.comm	cse_basic_block_end,4,4
	.local	uid_cuid
	.comm	uid_cuid,4,4
	.local	max_uid
	.comm	max_uid,4,4
	.local	cse_altered
	.comm	cse_altered,4,4
	.local	cse_jumps_altered
	.comm	cse_jumps_altered,4,4
	.local	recorded_label_ref
	.comm	recorded_label_ref,4,4
	.local	do_not_record
	.comm	do_not_record,4,4
	.local	memory_extend_rtx
	.comm	memory_extend_rtx,4,4
	.local	hash_arg_in_memory
	.comm	hash_arg_in_memory,4,4
	.local	table
	.comm	table,128,32
	.local	free_element_chain
	.comm	free_element_chain,4,4
	.local	n_elements_made
	.comm	n_elements_made,4,4
	.local	max_elements_made
	.comm	max_elements_made,4,4
	.local	last_jump_equiv_class
	.comm	last_jump_equiv_class,4,4
	.local	constant_pool_entries_cost
	.comm	constant_pool_entries_cost,4,4
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
	.align 4
.LEFDE2:
.LSFDE4:
	.long	.LEFDE4-.LASFDE4
.LASFDE4:
	.long	.Lframe0
	.long	.LFB17
	.long	.LFE17-.LFB17
	.byte	0x4
	.long	.LCFI7-.LFB17
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
	.long	.LFB18
	.long	.LFE18-.LFB18
	.byte	0x4
	.long	.LCFI11-.LFB18
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI12-.LCFI11
	.byte	0xd
	.uleb128 0x5
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
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI19-.LCFI18
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI21-.LCFI19
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
	.long	.LCFI22-.LFB21
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI23-.LCFI22
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI25-.LCFI23
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
	.long	.LCFI26-.LFB22
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI27-.LCFI26
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI29-.LCFI27
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
	.long	.LCFI30-.LFB23
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
.LEFDE16:
.LSFDE18:
	.long	.LEFDE18-.LASFDE18
.LASFDE18:
	.long	.Lframe0
	.long	.LFB24
	.long	.LFE24-.LFB24
	.byte	0x4
	.long	.LCFI34-.LFB24
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
.LEFDE18:
.LSFDE20:
	.long	.LEFDE20-.LASFDE20
.LASFDE20:
	.long	.Lframe0
	.long	.LFB25
	.long	.LFE25-.LFB25
	.byte	0x4
	.long	.LCFI38-.LFB25
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
.LEFDE20:
.LSFDE22:
	.long	.LEFDE22-.LASFDE22
.LASFDE22:
	.long	.Lframe0
	.long	.LFB26
	.long	.LFE26-.LFB26
	.byte	0x4
	.long	.LCFI42-.LFB26
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
.LEFDE22:
.LSFDE24:
	.long	.LEFDE24-.LASFDE24
.LASFDE24:
	.long	.Lframe0
	.long	.LFB27
	.long	.LFE27-.LFB27
	.byte	0x4
	.long	.LCFI46-.LFB27
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
.LEFDE24:
.LSFDE26:
	.long	.LEFDE26-.LASFDE26
.LASFDE26:
	.long	.Lframe0
	.long	.LFB28
	.long	.LFE28-.LFB28
	.byte	0x4
	.long	.LCFI50-.LFB28
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
.LEFDE26:
.LSFDE28:
	.long	.LEFDE28-.LASFDE28
.LASFDE28:
	.long	.Lframe0
	.long	.LFB29
	.long	.LFE29-.LFB29
	.byte	0x4
	.long	.LCFI54-.LFB29
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI55-.LCFI54
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE28:
.LSFDE30:
	.long	.LEFDE30-.LASFDE30
.LASFDE30:
	.long	.Lframe0
	.long	.LFB30
	.long	.LFE30-.LFB30
	.byte	0x4
	.long	.LCFI57-.LFB30
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI58-.LCFI57
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI60-.LCFI58
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
	.long	.LCFI61-.LFB31
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI62-.LCFI61
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI64-.LCFI62
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
	.long	.LCFI65-.LFB32
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI66-.LCFI65
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI69-.LCFI66
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
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
	.long	.LCFI70-.LFB33
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI71-.LCFI70
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI75-.LCFI71
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
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
	.long	.LCFI76-.LFB34
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
.LEFDE38:
.LSFDE40:
	.long	.LEFDE40-.LASFDE40
.LASFDE40:
	.long	.Lframe0
	.long	.LFB35
	.long	.LFE35-.LFB35
	.byte	0x4
	.long	.LCFI80-.LFB35
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI81-.LCFI80
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI83-.LCFI81
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
	.long	.LCFI84-.LFB36
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI85-.LCFI84
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI88-.LCFI85
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
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
	.long	.LCFI89-.LFB37
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
.LEFDE44:
.LSFDE46:
	.long	.LEFDE46-.LASFDE46
.LASFDE46:
	.long	.Lframe0
	.long	.LFB38
	.long	.LFE38-.LFB38
	.byte	0x4
	.long	.LCFI95-.LFB38
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
.LEFDE46:
.LSFDE48:
	.long	.LEFDE48-.LASFDE48
.LASFDE48:
	.long	.Lframe0
	.long	.LFB39
	.long	.LFE39-.LFB39
	.byte	0x4
	.long	.LCFI99-.LFB39
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
.LEFDE48:
.LSFDE50:
	.long	.LEFDE50-.LASFDE50
.LASFDE50:
	.long	.Lframe0
	.long	.LFB40
	.long	.LFE40-.LFB40
	.byte	0x4
	.long	.LCFI103-.LFB40
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
.LEFDE50:
.LSFDE52:
	.long	.LEFDE52-.LASFDE52
.LASFDE52:
	.long	.Lframe0
	.long	.LFB41
	.long	.LFE41-.LFB41
	.byte	0x4
	.long	.LCFI107-.LFB41
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
.LEFDE52:
.LSFDE54:
	.long	.LEFDE54-.LASFDE54
.LASFDE54:
	.long	.Lframe0
	.long	.LFB42
	.long	.LFE42-.LFB42
	.byte	0x4
	.long	.LCFI113-.LFB42
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI114-.LCFI113
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI118-.LCFI114
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
	.long	.LCFI123-.LCFI120
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
	.long	.LFB43
	.long	.LFE43-.LFB43
	.byte	0x4
	.long	.LCFI124-.LFB43
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI125-.LCFI124
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE58:
.LSFDE60:
	.long	.LEFDE60-.LASFDE60
.LASFDE60:
	.long	.Lframe0
	.long	.LFB45
	.long	.LFE45-.LFB45
	.byte	0x4
	.long	.LCFI127-.LFB45
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
.LEFDE60:
.LSFDE62:
	.long	.LEFDE62-.LASFDE62
.LASFDE62:
	.long	.Lframe0
	.long	.LFB46
	.long	.LFE46-.LFB46
	.byte	0x4
	.long	.LCFI131-.LFB46
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI132-.LCFI131
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI136-.LCFI132
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
	.long	.LFB47
	.long	.LFE47-.LFB47
	.byte	0x4
	.long	.LCFI137-.LFB47
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI138-.LCFI137
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI140-.LCFI138
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
	.long	.LCFI141-.LFB48
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
.LEFDE66:
.LSFDE68:
	.long	.LEFDE68-.LASFDE68
.LASFDE68:
	.long	.Lframe0
	.long	.LFB49
	.long	.LFE49-.LFB49
	.byte	0x4
	.long	.LCFI147-.LFB49
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI148-.LCFI147
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI151-.LCFI148
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
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
	.long	.LCFI152-.LFB50
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI153-.LCFI152
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI157-.LCFI153
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
	.long	.LCFI158-.LFB51
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI159-.LCFI158
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI163-.LCFI159
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
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
	.long	.LCFI164-.LFB52
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI165-.LCFI164
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI168-.LCFI165
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
	.long	.LCFI169-.LFB53
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI170-.LCFI169
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI172-.LCFI170
	.byte	0x83
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
	.long	.LCFI173-.LFB54
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI174-.LCFI173
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI176-.LCFI174
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
	.long	.LCFI177-.LFB55
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI178-.LCFI177
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI180-.LCFI178
	.byte	0x83
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
	.long	.LCFI181-.LFB56
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI182-.LCFI181
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI186-.LCFI182
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
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
	.long	.LCFI187-.LFB57
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
.LEFDE84:
.LSFDE86:
	.long	.LEFDE86-.LASFDE86
.LASFDE86:
	.long	.Lframe0
	.long	.LFB58
	.long	.LFE58-.LFB58
	.byte	0x4
	.long	.LCFI191-.LFB58
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI192-.LCFI191
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI196-.LCFI192
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
	.long	.LFB59
	.long	.LFE59-.LFB59
	.byte	0x4
	.long	.LCFI197-.LFB59
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI198-.LCFI197
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE88:
.LSFDE90:
	.long	.LEFDE90-.LASFDE90
.LASFDE90:
	.long	.Lframe0
	.long	.LFB60
	.long	.LFE60-.LFB60
	.byte	0x4
	.long	.LCFI200-.LFB60
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI201-.LCFI200
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI203-.LCFI201
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
	.long	.LCFI204-.LFB61
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI205-.LCFI204
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI207-.LCFI205
	.byte	0x83
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
	.long	.LCFI208-.LFB62
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI209-.LCFI208
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI211-.LCFI209
	.byte	0x83
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
	.long	.LCFI212-.LFB63
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI213-.LCFI212
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI215-.LCFI213
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
	.long	.LCFI216-.LFB64
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
.LEFDE98:
.LSFDE100:
	.long	.LEFDE100-.LASFDE100
.LASFDE100:
	.long	.Lframe0
	.long	.LFB65
	.long	.LFE65-.LFB65
	.byte	0x4
	.long	.LCFI220-.LFB65
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
.LEFDE100:
.LSFDE102:
	.long	.LEFDE102-.LASFDE102
.LASFDE102:
	.long	.Lframe0
	.long	.LFB66
	.long	.LFE66-.LFB66
	.byte	0x4
	.long	.LCFI224-.LFB66
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
.LEFDE102:
.LSFDE104:
	.long	.LEFDE104-.LASFDE104
.LASFDE104:
	.long	.Lframe0
	.long	.LFB67
	.long	.LFE67-.LFB67
	.byte	0x4
	.long	.LCFI228-.LFB67
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI229-.LCFI228
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI231-.LCFI229
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
	.long	.LCFI232-.LFB68
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI233-.LCFI232
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI235-.LCFI233
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
	.long	.LCFI236-.LFB69
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI237-.LCFI236
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI239-.LCFI237
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
	.long	.LCFI240-.LFB70
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI241-.LCFI240
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI243-.LCFI241
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
	.long	.LCFI244-.LFB71
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI245-.LCFI244
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI247-.LCFI245
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
	.long	.LCFI248-.LFB72
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI249-.LCFI248
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI251-.LCFI249
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
	.long	.LCFI252-.LFB73
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI253-.LCFI252
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI255-.LCFI253
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
	.long	.LCFI256-.LFB74
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI257-.LCFI256
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI259-.LCFI257
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE118:
	.file 2 "../../../kgccfe/gnu/MIPS/config.h"
	.file 3 "../../../kgccfe/gnu/rtl.h"
	.file 4 "../../../kgccfe/gnu/machmode.h"
	.file 5 "../../../kgccfe/gnu/bitmap.h"
	.file 6 "../../../kgccfe/gnu/basic-block.h"
	.file 7 "../../../kgccfe/gnu/sbitmap.h"
	.file 8 "../../../kgccfe/gnu/hard-reg-set.h"
	.file 9 "/usr/include/stdio.h"
	.file 10 "/usr/include/libio.h"
	.file 11 "/usr/include/bits/types.h"
	.file 12 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h"
	.file 13 "../../../kgccfe/gnu/MIPS/mips.h"
	.file 14 "../../../kgccfe/gnu/regs.h"
	.file 15 "../../../kgccfe/gnu/varray.h"
	.file 16 "../../../kgccfe/gnu/flags.h"
	.file 17 "../../../kgccfe/gnu/recog.h"
	.file 18 "../../../kgccfe/gnu/function.h"
	.file 19 "../../../kgccfe/gnu/output.h"
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
	.long	.LFE17-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST3:
	.long	.LFB18-.Ltext0
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
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI19-.Ltext0
	.long	.LFE20-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST6:
	.long	.LFB21-.Ltext0
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
	.long	.LFE21-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST7:
	.long	.LFB22-.Ltext0
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
	.long	.LFE22-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST8:
	.long	.LFB23-.Ltext0
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
	.long	.LFE23-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST9:
	.long	.LFB24-.Ltext0
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
	.long	.LFE24-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST10:
	.long	.LFB25-.Ltext0
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
	.long	.LFE25-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST11:
	.long	.LFB26-.Ltext0
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
	.long	.LFE26-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST12:
	.long	.LFB27-.Ltext0
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
	.long	.LFE27-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST13:
	.long	.LFB28-.Ltext0
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
	.long	.LFE28-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST14:
	.long	.LFB29-.Ltext0
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
	.long	.LFE29-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST15:
	.long	.LFB30-.Ltext0
	.long	.LCFI57-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI57-.Ltext0
	.long	.LCFI58-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI58-.Ltext0
	.long	.LFE30-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST16:
	.long	.LFB31-.Ltext0
	.long	.LCFI61-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI61-.Ltext0
	.long	.LCFI62-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI62-.Ltext0
	.long	.LFE31-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST17:
	.long	.LFB32-.Ltext0
	.long	.LCFI65-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI65-.Ltext0
	.long	.LCFI66-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI66-.Ltext0
	.long	.LFE32-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST18:
	.long	.LFB33-.Ltext0
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
	.long	.LFE33-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST19:
	.long	.LFB34-.Ltext0
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
	.long	.LFE34-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST20:
	.long	.LFB35-.Ltext0
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
	.long	.LFE35-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST21:
	.long	.LFB36-.Ltext0
	.long	.LCFI84-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI84-.Ltext0
	.long	.LCFI85-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI85-.Ltext0
	.long	.LFE36-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST22:
	.long	.LFB37-.Ltext0
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
	.long	.LFE37-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST23:
	.long	.LFB38-.Ltext0
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
	.long	.LFE38-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST24:
	.long	.LFB39-.Ltext0
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
	.long	.LFE39-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST25:
	.long	.LFB40-.Ltext0
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
	.long	.LFE40-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST26:
	.long	.LFB41-.Ltext0
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
	.long	.LFE41-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST27:
	.long	.LFB42-.Ltext0
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
	.long	.LFE42-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST28:
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
.LLST29:
	.long	.LFB43-.Ltext0
	.long	.LCFI124-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI124-.Ltext0
	.long	.LCFI125-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI125-.Ltext0
	.long	.LFE43-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST30:
	.long	.LFB45-.Ltext0
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
	.long	.LFE45-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST31:
	.long	.LFB46-.Ltext0
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
	.long	.LFE46-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST32:
	.long	.LFB47-.Ltext0
	.long	.LCFI137-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI137-.Ltext0
	.long	.LCFI138-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI138-.Ltext0
	.long	.LFE47-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST33:
	.long	.LFB48-.Ltext0
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
	.long	.LFE48-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST34:
	.long	.LFB49-.Ltext0
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
	.long	.LFE49-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST35:
	.long	.LFB50-.Ltext0
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
	.long	.LFE50-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST36:
	.long	.LFB51-.Ltext0
	.long	.LCFI158-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI158-.Ltext0
	.long	.LCFI159-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI159-.Ltext0
	.long	.LFE51-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST37:
	.long	.LFB52-.Ltext0
	.long	.LCFI164-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI164-.Ltext0
	.long	.LCFI165-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI165-.Ltext0
	.long	.LFE52-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST38:
	.long	.LFB53-.Ltext0
	.long	.LCFI169-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI169-.Ltext0
	.long	.LCFI170-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI170-.Ltext0
	.long	.LFE53-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST39:
	.long	.LFB54-.Ltext0
	.long	.LCFI173-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI173-.Ltext0
	.long	.LCFI174-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI174-.Ltext0
	.long	.LFE54-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST40:
	.long	.LFB55-.Ltext0
	.long	.LCFI177-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI177-.Ltext0
	.long	.LCFI178-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI178-.Ltext0
	.long	.LFE55-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST41:
	.long	.LFB56-.Ltext0
	.long	.LCFI181-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI181-.Ltext0
	.long	.LCFI182-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI182-.Ltext0
	.long	.LFE56-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST42:
	.long	.LFB57-.Ltext0
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
	.long	.LFE57-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST43:
	.long	.LFB58-.Ltext0
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
	.long	.LFE58-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST44:
	.long	.LFB59-.Ltext0
	.long	.LCFI197-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI197-.Ltext0
	.long	.LCFI198-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI198-.Ltext0
	.long	.LFE59-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST45:
	.long	.LFB60-.Ltext0
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
	.long	.LFE60-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST46:
	.long	.LFB61-.Ltext0
	.long	.LCFI204-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI204-.Ltext0
	.long	.LCFI205-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI205-.Ltext0
	.long	.LFE61-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST47:
	.long	.LFB62-.Ltext0
	.long	.LCFI208-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI208-.Ltext0
	.long	.LCFI209-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI209-.Ltext0
	.long	.LFE62-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST48:
	.long	.LFB63-.Ltext0
	.long	.LCFI212-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI212-.Ltext0
	.long	.LCFI213-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI213-.Ltext0
	.long	.LFE63-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST49:
	.long	.LFB64-.Ltext0
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
	.long	.LFE64-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST50:
	.long	.LFB65-.Ltext0
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
	.long	.LFE65-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST51:
	.long	.LFB66-.Ltext0
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
	.long	.LFE66-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST52:
	.long	.LFB67-.Ltext0
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
	.long	.LFE67-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST53:
	.long	.LFB68-.Ltext0
	.long	.LCFI232-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI232-.Ltext0
	.long	.LCFI233-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI233-.Ltext0
	.long	.LFE68-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST54:
	.long	.LFB69-.Ltext0
	.long	.LCFI236-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI236-.Ltext0
	.long	.LCFI237-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI237-.Ltext0
	.long	.LFE69-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST55:
	.long	.LFB70-.Ltext0
	.long	.LCFI240-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI240-.Ltext0
	.long	.LCFI241-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI241-.Ltext0
	.long	.LFE70-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST56:
	.long	.LFB71-.Ltext0
	.long	.LCFI244-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI244-.Ltext0
	.long	.LCFI245-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI245-.Ltext0
	.long	.LFE71-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST57:
	.long	.LFB72-.Ltext0
	.long	.LCFI248-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI248-.Ltext0
	.long	.LCFI249-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI249-.Ltext0
	.long	.LFE72-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST58:
	.long	.LFB73-.Ltext0
	.long	.LCFI252-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI252-.Ltext0
	.long	.LCFI253-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI253-.Ltext0
	.long	.LFE73-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST59:
	.long	.LFB74-.Ltext0
	.long	.LCFI256-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI256-.Ltext0
	.long	.LCFI257-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI257-.Ltext0
	.long	.LFE74-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
	.section	.debug_info
	.long	0x7802
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.Ldebug_line0
	.long	.Letext0
	.long	.Ltext0
	.string	"GNU C 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.byte	0x1
	.string	"../../../kgccfe/gnu/cse.c"
	.string	"/usa/handong/simplnano/cmplr-open64-merge/targia32_sl1/gccfe/gnu"
	.uleb128 0x2
	.string	"rtx"
	.byte	0x2
	.byte	0xc
	.long	0xa3
	.uleb128 0x3
	.byte	0x4
	.long	0xa9
	.uleb128 0x4
	.long	0x197
	.string	"rtx_def"
	.byte	0xc
	.byte	0x2
	.byte	0xb
	.uleb128 0x5
	.long	.LASF0
	.byte	0x3
	.byte	0x8a
	.long	0xd1a
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.long	.LASF1
	.byte	0x3
	.byte	0x8d
	.long	0xa22
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"jump"
	.byte	0x3
	.byte	0x94
	.long	0x5df
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"call"
	.byte	0x3
	.byte	0x97
	.long	0x5df
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"unchanging"
	.byte	0x3
	.byte	0x9f
	.long	0x5df
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"volatil"
	.byte	0x3
	.byte	0xa8
	.long	0x5df
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"in_struct"
	.byte	0x3
	.byte	0xba
	.long	0x5df
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"used"
	.byte	0x3
	.byte	0xc1
	.long	0x5df
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"integrated"
	.byte	0x3
	.byte	0xc6
	.long	0x5df
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"frame_related"
	.byte	0x3
	.byte	0xcf
	.long	0x5df
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"fld"
	.byte	0x3
	.byte	0xd4
	.long	0x1934
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"rtvec"
	.byte	0x2
	.byte	0xe
	.long	0x1a4
	.uleb128 0x3
	.byte	0x4
	.long	0x1aa
	.uleb128 0x4
	.long	0x1df
	.string	"rtvec_def"
	.byte	0x8
	.byte	0x2
	.byte	0xd
	.uleb128 0x7
	.string	"num_elem"
	.byte	0x3
	.byte	0xf8
	.long	0x390
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"elem"
	.byte	0x3
	.byte	0xf9
	.long	0x1944
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"tree"
	.byte	0x2
	.byte	0x10
	.long	0x1eb
	.uleb128 0x3
	.byte	0x4
	.long	0x1f1
	.uleb128 0x8
	.string	"tree_node"
	.byte	0x1
	.uleb128 0x9
	.long	0x37d
	.string	"processor_type"
	.byte	0x4
	.byte	0xd
	.byte	0x3b
	.uleb128 0xa
	.string	"PROCESSOR_DEFAULT"
	.sleb128 0
	.uleb128 0xa
	.string	"PROCESSOR_R3000"
	.sleb128 1
	.uleb128 0xa
	.string	"PROCESSOR_R3900"
	.sleb128 2
	.uleb128 0xa
	.string	"PROCESSOR_R6000"
	.sleb128 3
	.uleb128 0xa
	.string	"PROCESSOR_R4000"
	.sleb128 4
	.uleb128 0xa
	.string	"PROCESSOR_R4100"
	.sleb128 5
	.uleb128 0xa
	.string	"PROCESSOR_R4111"
	.sleb128 6
	.uleb128 0xa
	.string	"PROCESSOR_R4120"
	.sleb128 7
	.uleb128 0xa
	.string	"PROCESSOR_R4300"
	.sleb128 8
	.uleb128 0xa
	.string	"PROCESSOR_R4600"
	.sleb128 9
	.uleb128 0xa
	.string	"PROCESSOR_R4650"
	.sleb128 10
	.uleb128 0xa
	.string	"PROCESSOR_R5000"
	.sleb128 11
	.uleb128 0xa
	.string	"PROCESSOR_R5400"
	.sleb128 12
	.uleb128 0xa
	.string	"PROCESSOR_R5500"
	.sleb128 13
	.uleb128 0xa
	.string	"PROCESSOR_R8000"
	.sleb128 14
	.uleb128 0xa
	.string	"PROCESSOR_R4KC"
	.sleb128 15
	.uleb128 0xa
	.string	"PROCESSOR_R5KC"
	.sleb128 16
	.uleb128 0xa
	.string	"PROCESSOR_R20KC"
	.sleb128 17
	.uleb128 0xa
	.string	"PROCESSOR_SR71000"
	.sleb128 18
	.uleb128 0xa
	.string	"PROCESSOR_SB1"
	.sleb128 19
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x383
	.uleb128 0xb
	.long	0x388
	.uleb128 0xc
	.string	"char"
	.byte	0x1
	.byte	0x8
	.uleb128 0xc
	.string	"int"
	.byte	0x4
	.byte	0x5
	.uleb128 0xd
	.long	0x50d
	.string	"reg_class"
	.byte	0x4
	.byte	0xd
	.value	0x7ec
	.uleb128 0xa
	.string	"NO_REGS"
	.sleb128 0
	.uleb128 0xa
	.string	"M16_NA_REGS"
	.sleb128 1
	.uleb128 0xa
	.string	"M16_REGS"
	.sleb128 2
	.uleb128 0xa
	.string	"T_REG"
	.sleb128 3
	.uleb128 0xa
	.string	"M16_T_REGS"
	.sleb128 4
	.uleb128 0xa
	.string	"GR_REGS"
	.sleb128 5
	.uleb128 0xa
	.string	"FP_REGS"
	.sleb128 6
	.uleb128 0xa
	.string	"HI_REG"
	.sleb128 7
	.uleb128 0xa
	.string	"LO_REG"
	.sleb128 8
	.uleb128 0xa
	.string	"HILO_REG"
	.sleb128 9
	.uleb128 0xa
	.string	"MD_REGS"
	.sleb128 10
	.uleb128 0xa
	.string	"COP0_REGS"
	.sleb128 11
	.uleb128 0xa
	.string	"COP2_REGS"
	.sleb128 12
	.uleb128 0xa
	.string	"COP3_REGS"
	.sleb128 13
	.uleb128 0xa
	.string	"HI_AND_GR_REGS"
	.sleb128 14
	.uleb128 0xa
	.string	"LO_AND_GR_REGS"
	.sleb128 15
	.uleb128 0xa
	.string	"HILO_AND_GR_REGS"
	.sleb128 16
	.uleb128 0xa
	.string	"HI_AND_FP_REGS"
	.sleb128 17
	.uleb128 0xa
	.string	"COP0_AND_GR_REGS"
	.sleb128 18
	.uleb128 0xa
	.string	"COP2_AND_GR_REGS"
	.sleb128 19
	.uleb128 0xa
	.string	"COP3_AND_GR_REGS"
	.sleb128 20
	.uleb128 0xa
	.string	"ALL_COP_REGS"
	.sleb128 21
	.uleb128 0xa
	.string	"ALL_COP_AND_GR_REGS"
	.sleb128 22
	.uleb128 0xa
	.string	"ST_REGS"
	.sleb128 23
	.uleb128 0xa
	.string	"ALL_REGS"
	.sleb128 24
	.uleb128 0xa
	.string	"LIM_REG_CLASSES"
	.sleb128 25
	.byte	0x0
	.uleb128 0xe
	.long	0x5df
	.string	"mips_args"
	.byte	0x40
	.byte	0xd
	.value	0xaaa
	.uleb128 0xf
	.string	"gp_reg_found"
	.byte	0xd
	.value	0xaad
	.long	0x390
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.string	"arg_number"
	.byte	0xd
	.value	0xab0
	.long	0x5df
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xf
	.string	"num_gprs"
	.byte	0xd
	.value	0xab5
	.long	0x5df
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xf
	.string	"num_fprs"
	.byte	0xd
	.value	0xab8
	.long	0x5df
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xf
	.string	"stack_words"
	.byte	0xd
	.value	0xabb
	.long	0x5df
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xf
	.string	"fp_code"
	.byte	0xd
	.value	0xac8
	.long	0x390
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xf
	.string	"prototype"
	.byte	0xd
	.value	0xacb
	.long	0x390
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xf
	.string	"num_adjusts"
	.byte	0xd
	.value	0xad3
	.long	0x5df
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xf
	.string	"adjust"
	.byte	0xd
	.value	0xad4
	.long	0x5e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0x10
	.long	.LASF2
	.byte	0x4
	.byte	0x7
	.uleb128 0x11
	.long	0x5f6
	.long	0x98
	.uleb128 0x12
	.long	0x5f6
	.byte	0x7
	.byte	0x0
	.uleb128 0x10
	.long	.LASF2
	.byte	0x4
	.byte	0x7
	.uleb128 0x13
	.string	"CUMULATIVE_ARGS"
	.byte	0xd
	.value	0xad5
	.long	0x50d
	.uleb128 0x2
	.string	"size_t"
	.byte	0xc
	.byte	0xd6
	.long	0x5df
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
	.byte	0xb
	.byte	0x3b
	.long	0x67b
	.uleb128 0x2
	.string	"__off_t"
	.byte	0xb
	.byte	0x90
	.long	0x6c5
	.uleb128 0xc
	.string	"long int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x2
	.string	"__off64_t"
	.byte	0xb
	.byte	0x91
	.long	0x6a6
	.uleb128 0x14
	.byte	0x4
	.uleb128 0x3
	.byte	0x4
	.long	0x388
	.uleb128 0x2
	.string	"FILE"
	.byte	0x9
	.byte	0x2e
	.long	0x6f6
	.uleb128 0x15
	.long	0x971
	.long	.LASF3
	.byte	0x94
	.byte	0x9
	.byte	0x2e
	.uleb128 0xf
	.string	"_flags"
	.byte	0xa
	.value	0x10c
	.long	0x390
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.string	"_IO_read_ptr"
	.byte	0xa
	.value	0x111
	.long	0x6e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xf
	.string	"_IO_read_end"
	.byte	0xa
	.value	0x112
	.long	0x6e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xf
	.string	"_IO_read_base"
	.byte	0xa
	.value	0x113
	.long	0x6e4
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xf
	.string	"_IO_write_base"
	.byte	0xa
	.value	0x114
	.long	0x6e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xf
	.string	"_IO_write_ptr"
	.byte	0xa
	.value	0x115
	.long	0x6e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xf
	.string	"_IO_write_end"
	.byte	0xa
	.value	0x116
	.long	0x6e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xf
	.string	"_IO_buf_base"
	.byte	0xa
	.value	0x117
	.long	0x6e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xf
	.string	"_IO_buf_end"
	.byte	0xa
	.value	0x118
	.long	0x6e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xf
	.string	"_IO_save_base"
	.byte	0xa
	.value	0x11a
	.long	0x6e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xf
	.string	"_IO_backup_base"
	.byte	0xa
	.value	0x11b
	.long	0x6e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xf
	.string	"_IO_save_end"
	.byte	0xa
	.value	0x11c
	.long	0x6e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xf
	.string	"_markers"
	.byte	0xa
	.value	0x11e
	.long	0x9d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xf
	.string	"_chain"
	.byte	0xa
	.value	0x120
	.long	0x9d9
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xf
	.string	"_fileno"
	.byte	0xa
	.value	0x122
	.long	0x390
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xf
	.string	"_flags2"
	.byte	0xa
	.value	0x126
	.long	0x390
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xf
	.string	"_old_offset"
	.byte	0xa
	.value	0x128
	.long	0x6b6
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xf
	.string	"_cur_column"
	.byte	0xa
	.value	0x12c
	.long	0x634
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xf
	.string	"_vtable_offset"
	.byte	0xa
	.value	0x12d
	.long	0x65f
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0xf
	.string	"_shortbuf"
	.byte	0xa
	.value	0x12e
	.long	0x9df
	.byte	0x2
	.byte	0x23
	.uleb128 0x47
	.uleb128 0xf
	.string	"_lock"
	.byte	0xa
	.value	0x132
	.long	0x9ef
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xf
	.string	"_offset"
	.byte	0xa
	.value	0x13b
	.long	0x6d1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xf
	.string	"__pad1"
	.byte	0xa
	.value	0x144
	.long	0x6e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xf
	.string	"__pad2"
	.byte	0xa
	.value	0x145
	.long	0x6e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xf
	.string	"__pad3"
	.byte	0xa
	.value	0x146
	.long	0x6e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xf
	.string	"__pad4"
	.byte	0xa
	.value	0x147
	.long	0x6e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xf
	.string	"__pad5"
	.byte	0xa
	.value	0x148
	.long	0x615
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xf
	.string	"_mode"
	.byte	0xa
	.value	0x14a
	.long	0x390
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xf
	.string	"_unused2"
	.byte	0xa
	.value	0x14c
	.long	0x9f5
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x977
	.uleb128 0xb
	.long	0x623
	.uleb128 0x3
	.byte	0x4
	.long	0x623
	.uleb128 0x16
	.string	"_IO_lock_t"
	.byte	0xa
	.byte	0xb0
	.uleb128 0x4
	.long	0x9d3
	.string	"_IO_marker"
	.byte	0xc
	.byte	0xa
	.byte	0xb6
	.uleb128 0x7
	.string	"_next"
	.byte	0xa
	.byte	0xb7
	.long	0x9d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"_sbuf"
	.byte	0xa
	.byte	0xb8
	.long	0x9d9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"_pos"
	.byte	0xa
	.byte	0xbc
	.long	0x390
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x990
	.uleb128 0x3
	.byte	0x4
	.long	0x6f6
	.uleb128 0x11
	.long	0x9ef
	.long	0x388
	.uleb128 0x12
	.long	0x5f6
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x982
	.uleb128 0x11
	.long	0xa05
	.long	0x388
	.uleb128 0x12
	.long	0x5f6
	.byte	0x27
	.byte	0x0
	.uleb128 0x11
	.long	0xa15
	.long	0x388
	.uleb128 0x12
	.long	0x5f6
	.byte	0x13
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x390
	.uleb128 0x3
	.byte	0x4
	.long	0xa21
	.uleb128 0x17
	.uleb128 0x9
	.long	0xc6b
	.string	"machine_mode"
	.byte	0x4
	.byte	0x4
	.byte	0x1d
	.uleb128 0xa
	.string	"VOIDmode"
	.sleb128 0
	.uleb128 0xa
	.string	"BImode"
	.sleb128 1
	.uleb128 0xa
	.string	"QImode"
	.sleb128 2
	.uleb128 0xa
	.string	"HImode"
	.sleb128 3
	.uleb128 0xa
	.string	"SImode"
	.sleb128 4
	.uleb128 0xa
	.string	"DImode"
	.sleb128 5
	.uleb128 0xa
	.string	"TImode"
	.sleb128 6
	.uleb128 0xa
	.string	"OImode"
	.sleb128 7
	.uleb128 0xa
	.string	"PQImode"
	.sleb128 8
	.uleb128 0xa
	.string	"PHImode"
	.sleb128 9
	.uleb128 0xa
	.string	"PSImode"
	.sleb128 10
	.uleb128 0xa
	.string	"PDImode"
	.sleb128 11
	.uleb128 0xa
	.string	"QFmode"
	.sleb128 12
	.uleb128 0xa
	.string	"HFmode"
	.sleb128 13
	.uleb128 0xa
	.string	"TQFmode"
	.sleb128 14
	.uleb128 0xa
	.string	"SFmode"
	.sleb128 15
	.uleb128 0xa
	.string	"DFmode"
	.sleb128 16
	.uleb128 0xa
	.string	"XFmode"
	.sleb128 17
	.uleb128 0xa
	.string	"TFmode"
	.sleb128 18
	.uleb128 0xa
	.string	"QCmode"
	.sleb128 19
	.uleb128 0xa
	.string	"HCmode"
	.sleb128 20
	.uleb128 0xa
	.string	"SCmode"
	.sleb128 21
	.uleb128 0xa
	.string	"DCmode"
	.sleb128 22
	.uleb128 0xa
	.string	"XCmode"
	.sleb128 23
	.uleb128 0xa
	.string	"TCmode"
	.sleb128 24
	.uleb128 0xa
	.string	"CQImode"
	.sleb128 25
	.uleb128 0xa
	.string	"CHImode"
	.sleb128 26
	.uleb128 0xa
	.string	"CSImode"
	.sleb128 27
	.uleb128 0xa
	.string	"CDImode"
	.sleb128 28
	.uleb128 0xa
	.string	"CTImode"
	.sleb128 29
	.uleb128 0xa
	.string	"COImode"
	.sleb128 30
	.uleb128 0xa
	.string	"V1DImode"
	.sleb128 31
	.uleb128 0xa
	.string	"V2QImode"
	.sleb128 32
	.uleb128 0xa
	.string	"V2HImode"
	.sleb128 33
	.uleb128 0xa
	.string	"V2SImode"
	.sleb128 34
	.uleb128 0xa
	.string	"V2DImode"
	.sleb128 35
	.uleb128 0xa
	.string	"V4QImode"
	.sleb128 36
	.uleb128 0xa
	.string	"V4HImode"
	.sleb128 37
	.uleb128 0xa
	.string	"V4SImode"
	.sleb128 38
	.uleb128 0xa
	.string	"V4DImode"
	.sleb128 39
	.uleb128 0xa
	.string	"V8QImode"
	.sleb128 40
	.uleb128 0xa
	.string	"V8HImode"
	.sleb128 41
	.uleb128 0xa
	.string	"V8SImode"
	.sleb128 42
	.uleb128 0xa
	.string	"V8DImode"
	.sleb128 43
	.uleb128 0xa
	.string	"V16QImode"
	.sleb128 44
	.uleb128 0xa
	.string	"V2SFmode"
	.sleb128 45
	.uleb128 0xa
	.string	"V2DFmode"
	.sleb128 46
	.uleb128 0xa
	.string	"V4SFmode"
	.sleb128 47
	.uleb128 0xa
	.string	"V4DFmode"
	.sleb128 48
	.uleb128 0xa
	.string	"V8SFmode"
	.sleb128 49
	.uleb128 0xa
	.string	"V8DFmode"
	.sleb128 50
	.uleb128 0xa
	.string	"V16SFmode"
	.sleb128 51
	.uleb128 0xa
	.string	"BLKmode"
	.sleb128 52
	.uleb128 0xa
	.string	"CCmode"
	.sleb128 53
	.uleb128 0xa
	.string	"MAX_MACHINE_MODE"
	.sleb128 54
	.byte	0x0
	.uleb128 0x18
	.long	0xd1a
	.long	.LASF4
	.byte	0x4
	.byte	0x4
	.byte	0x2c
	.uleb128 0xa
	.string	"MODE_RANDOM"
	.sleb128 0
	.uleb128 0xa
	.string	"MODE_INT"
	.sleb128 1
	.uleb128 0xa
	.string	"MODE_FLOAT"
	.sleb128 2
	.uleb128 0xa
	.string	"MODE_PARTIAL_INT"
	.sleb128 3
	.uleb128 0xa
	.string	"MODE_CC"
	.sleb128 4
	.uleb128 0xa
	.string	"MODE_COMPLEX_INT"
	.sleb128 5
	.uleb128 0xa
	.string	"MODE_COMPLEX_FLOAT"
	.sleb128 6
	.uleb128 0xa
	.string	"MODE_VECTOR_INT"
	.sleb128 7
	.uleb128 0xa
	.string	"MODE_VECTOR_FLOAT"
	.sleb128 8
	.uleb128 0xa
	.string	"MAX_MODE_CLASS"
	.sleb128 9
	.byte	0x0
	.uleb128 0x9
	.long	0x14e9
	.string	"rtx_code"
	.byte	0x4
	.byte	0x3
	.byte	0x2f
	.uleb128 0xa
	.string	"UNKNOWN"
	.sleb128 0
	.uleb128 0xa
	.string	"NIL"
	.sleb128 1
	.uleb128 0xa
	.string	"INCLUDE"
	.sleb128 2
	.uleb128 0xa
	.string	"EXPR_LIST"
	.sleb128 3
	.uleb128 0xa
	.string	"INSN_LIST"
	.sleb128 4
	.uleb128 0xa
	.string	"MATCH_OPERAND"
	.sleb128 5
	.uleb128 0xa
	.string	"MATCH_SCRATCH"
	.sleb128 6
	.uleb128 0xa
	.string	"MATCH_DUP"
	.sleb128 7
	.uleb128 0xa
	.string	"MATCH_OPERATOR"
	.sleb128 8
	.uleb128 0xa
	.string	"MATCH_PARALLEL"
	.sleb128 9
	.uleb128 0xa
	.string	"MATCH_OP_DUP"
	.sleb128 10
	.uleb128 0xa
	.string	"MATCH_PAR_DUP"
	.sleb128 11
	.uleb128 0xa
	.string	"MATCH_INSN"
	.sleb128 12
	.uleb128 0xa
	.string	"DEFINE_INSN"
	.sleb128 13
	.uleb128 0xa
	.string	"DEFINE_PEEPHOLE"
	.sleb128 14
	.uleb128 0xa
	.string	"DEFINE_SPLIT"
	.sleb128 15
	.uleb128 0xa
	.string	"DEFINE_INSN_AND_SPLIT"
	.sleb128 16
	.uleb128 0xa
	.string	"DEFINE_PEEPHOLE2"
	.sleb128 17
	.uleb128 0xa
	.string	"DEFINE_COMBINE"
	.sleb128 18
	.uleb128 0xa
	.string	"DEFINE_EXPAND"
	.sleb128 19
	.uleb128 0xa
	.string	"DEFINE_DELAY"
	.sleb128 20
	.uleb128 0xa
	.string	"DEFINE_FUNCTION_UNIT"
	.sleb128 21
	.uleb128 0xa
	.string	"DEFINE_ASM_ATTRIBUTES"
	.sleb128 22
	.uleb128 0xa
	.string	"DEFINE_COND_EXEC"
	.sleb128 23
	.uleb128 0xa
	.string	"SEQUENCE"
	.sleb128 24
	.uleb128 0xa
	.string	"ADDRESS"
	.sleb128 25
	.uleb128 0xa
	.string	"DEFINE_CPU_UNIT"
	.sleb128 26
	.uleb128 0xa
	.string	"DEFINE_QUERY_CPU_UNIT"
	.sleb128 27
	.uleb128 0xa
	.string	"EXCLUSION_SET"
	.sleb128 28
	.uleb128 0xa
	.string	"PRESENCE_SET"
	.sleb128 29
	.uleb128 0xa
	.string	"ABSENCE_SET"
	.sleb128 30
	.uleb128 0xa
	.string	"DEFINE_BYPASS"
	.sleb128 31
	.uleb128 0xa
	.string	"DEFINE_AUTOMATON"
	.sleb128 32
	.uleb128 0xa
	.string	"AUTOMATA_OPTION"
	.sleb128 33
	.uleb128 0xa
	.string	"DEFINE_RESERVATION"
	.sleb128 34
	.uleb128 0xa
	.string	"DEFINE_INSN_RESERVATION"
	.sleb128 35
	.uleb128 0xa
	.string	"DEFINE_ATTR"
	.sleb128 36
	.uleb128 0xa
	.string	"ATTR"
	.sleb128 37
	.uleb128 0xa
	.string	"SET_ATTR"
	.sleb128 38
	.uleb128 0xa
	.string	"SET_ATTR_ALTERNATIVE"
	.sleb128 39
	.uleb128 0xa
	.string	"EQ_ATTR"
	.sleb128 40
	.uleb128 0xa
	.string	"ATTR_FLAG"
	.sleb128 41
	.uleb128 0xa
	.string	"INSN"
	.sleb128 42
	.uleb128 0xa
	.string	"JUMP_INSN"
	.sleb128 43
	.uleb128 0xa
	.string	"CALL_INSN"
	.sleb128 44
	.uleb128 0xa
	.string	"BARRIER"
	.sleb128 45
	.uleb128 0xa
	.string	"CODE_LABEL"
	.sleb128 46
	.uleb128 0xa
	.string	"NOTE"
	.sleb128 47
	.uleb128 0xa
	.string	"COND_EXEC"
	.sleb128 48
	.uleb128 0xa
	.string	"PARALLEL"
	.sleb128 49
	.uleb128 0xa
	.string	"ASM_INPUT"
	.sleb128 50
	.uleb128 0xa
	.string	"ASM_OPERANDS"
	.sleb128 51
	.uleb128 0xa
	.string	"UNSPEC"
	.sleb128 52
	.uleb128 0xa
	.string	"UNSPEC_VOLATILE"
	.sleb128 53
	.uleb128 0xa
	.string	"ADDR_VEC"
	.sleb128 54
	.uleb128 0xa
	.string	"ADDR_DIFF_VEC"
	.sleb128 55
	.uleb128 0xa
	.string	"PREFETCH"
	.sleb128 56
	.uleb128 0xa
	.string	"SET"
	.sleb128 57
	.uleb128 0xa
	.string	"USE"
	.sleb128 58
	.uleb128 0xa
	.string	"CLOBBER"
	.sleb128 59
	.uleb128 0xa
	.string	"CALL"
	.sleb128 60
	.uleb128 0xa
	.string	"RETURN"
	.sleb128 61
	.uleb128 0xa
	.string	"TRAP_IF"
	.sleb128 62
	.uleb128 0xa
	.string	"RESX"
	.sleb128 63
	.uleb128 0xa
	.string	"CONST_INT"
	.sleb128 64
	.uleb128 0xa
	.string	"CONST_DOUBLE"
	.sleb128 65
	.uleb128 0xa
	.string	"CONST_VECTOR"
	.sleb128 66
	.uleb128 0xa
	.string	"CONST_STRING"
	.sleb128 67
	.uleb128 0xa
	.string	"CONST"
	.sleb128 68
	.uleb128 0xa
	.string	"PC"
	.sleb128 69
	.uleb128 0xa
	.string	"VALUE"
	.sleb128 70
	.uleb128 0xa
	.string	"REG"
	.sleb128 71
	.uleb128 0xa
	.string	"SCRATCH"
	.sleb128 72
	.uleb128 0xa
	.string	"SUBREG"
	.sleb128 73
	.uleb128 0xa
	.string	"STRICT_LOW_PART"
	.sleb128 74
	.uleb128 0xa
	.string	"CONCAT"
	.sleb128 75
	.uleb128 0xa
	.string	"MEM"
	.sleb128 76
	.uleb128 0xa
	.string	"LABEL_REF"
	.sleb128 77
	.uleb128 0xa
	.string	"SYMBOL_REF"
	.sleb128 78
	.uleb128 0xa
	.string	"CC0"
	.sleb128 79
	.uleb128 0xa
	.string	"ADDRESSOF"
	.sleb128 80
	.uleb128 0xa
	.string	"QUEUED"
	.sleb128 81
	.uleb128 0xa
	.string	"IF_THEN_ELSE"
	.sleb128 82
	.uleb128 0xa
	.string	"COND"
	.sleb128 83
	.uleb128 0xa
	.string	"COMPARE"
	.sleb128 84
	.uleb128 0xa
	.string	"PLUS"
	.sleb128 85
	.uleb128 0xa
	.string	"MINUS"
	.sleb128 86
	.uleb128 0xa
	.string	"NEG"
	.sleb128 87
	.uleb128 0xa
	.string	"MULT"
	.sleb128 88
	.uleb128 0xa
	.string	"DIV"
	.sleb128 89
	.uleb128 0xa
	.string	"MOD"
	.sleb128 90
	.uleb128 0xa
	.string	"UDIV"
	.sleb128 91
	.uleb128 0xa
	.string	"UMOD"
	.sleb128 92
	.uleb128 0xa
	.string	"AND"
	.sleb128 93
	.uleb128 0xa
	.string	"IOR"
	.sleb128 94
	.uleb128 0xa
	.string	"XOR"
	.sleb128 95
	.uleb128 0xa
	.string	"NOT"
	.sleb128 96
	.uleb128 0xa
	.string	"ASHIFT"
	.sleb128 97
	.uleb128 0xa
	.string	"ROTATE"
	.sleb128 98
	.uleb128 0xa
	.string	"ASHIFTRT"
	.sleb128 99
	.uleb128 0xa
	.string	"LSHIFTRT"
	.sleb128 100
	.uleb128 0xa
	.string	"ROTATERT"
	.sleb128 101
	.uleb128 0xa
	.string	"SMIN"
	.sleb128 102
	.uleb128 0xa
	.string	"SMAX"
	.sleb128 103
	.uleb128 0xa
	.string	"UMIN"
	.sleb128 104
	.uleb128 0xa
	.string	"UMAX"
	.sleb128 105
	.uleb128 0xa
	.string	"PRE_DEC"
	.sleb128 106
	.uleb128 0xa
	.string	"PRE_INC"
	.sleb128 107
	.uleb128 0xa
	.string	"POST_DEC"
	.sleb128 108
	.uleb128 0xa
	.string	"POST_INC"
	.sleb128 109
	.uleb128 0xa
	.string	"PRE_MODIFY"
	.sleb128 110
	.uleb128 0xa
	.string	"POST_MODIFY"
	.sleb128 111
	.uleb128 0xa
	.string	"NE"
	.sleb128 112
	.uleb128 0xa
	.string	"EQ"
	.sleb128 113
	.uleb128 0xa
	.string	"GE"
	.sleb128 114
	.uleb128 0xa
	.string	"GT"
	.sleb128 115
	.uleb128 0xa
	.string	"LE"
	.sleb128 116
	.uleb128 0xa
	.string	"LT"
	.sleb128 117
	.uleb128 0xa
	.string	"GEU"
	.sleb128 118
	.uleb128 0xa
	.string	"GTU"
	.sleb128 119
	.uleb128 0xa
	.string	"LEU"
	.sleb128 120
	.uleb128 0xa
	.string	"LTU"
	.sleb128 121
	.uleb128 0xa
	.string	"UNORDERED"
	.sleb128 122
	.uleb128 0xa
	.string	"ORDERED"
	.sleb128 123
	.uleb128 0xa
	.string	"UNEQ"
	.sleb128 124
	.uleb128 0xa
	.string	"UNGE"
	.sleb128 125
	.uleb128 0xa
	.string	"UNGT"
	.sleb128 126
	.uleb128 0xa
	.string	"UNLE"
	.sleb128 127
	.uleb128 0xa
	.string	"UNLT"
	.sleb128 128
	.uleb128 0xa
	.string	"LTGT"
	.sleb128 129
	.uleb128 0xa
	.string	"SIGN_EXTEND"
	.sleb128 130
	.uleb128 0xa
	.string	"ZERO_EXTEND"
	.sleb128 131
	.uleb128 0xa
	.string	"TRUNCATE"
	.sleb128 132
	.uleb128 0xa
	.string	"FLOAT_EXTEND"
	.sleb128 133
	.uleb128 0xa
	.string	"FLOAT_TRUNCATE"
	.sleb128 134
	.uleb128 0xa
	.string	"FLOAT"
	.sleb128 135
	.uleb128 0xa
	.string	"FIX"
	.sleb128 136
	.uleb128 0xa
	.string	"UNSIGNED_FLOAT"
	.sleb128 137
	.uleb128 0xa
	.string	"UNSIGNED_FIX"
	.sleb128 138
	.uleb128 0xa
	.string	"ABS"
	.sleb128 139
	.uleb128 0xa
	.string	"SQRT"
	.sleb128 140
	.uleb128 0xa
	.string	"FFS"
	.sleb128 141
	.uleb128 0xa
	.string	"SIGN_EXTRACT"
	.sleb128 142
	.uleb128 0xa
	.string	"ZERO_EXTRACT"
	.sleb128 143
	.uleb128 0xa
	.string	"HIGH"
	.sleb128 144
	.uleb128 0xa
	.string	"LO_SUM"
	.sleb128 145
	.uleb128 0xa
	.string	"RANGE_INFO"
	.sleb128 146
	.uleb128 0xa
	.string	"RANGE_REG"
	.sleb128 147
	.uleb128 0xa
	.string	"RANGE_VAR"
	.sleb128 148
	.uleb128 0xa
	.string	"RANGE_LIVE"
	.sleb128 149
	.uleb128 0xa
	.string	"CONSTANT_P_RTX"
	.sleb128 150
	.uleb128 0xa
	.string	"CALL_PLACEHOLDER"
	.sleb128 151
	.uleb128 0xa
	.string	"VEC_MERGE"
	.sleb128 152
	.uleb128 0xa
	.string	"VEC_SELECT"
	.sleb128 153
	.uleb128 0xa
	.string	"VEC_CONCAT"
	.sleb128 154
	.uleb128 0xa
	.string	"VEC_DUPLICATE"
	.sleb128 155
	.uleb128 0xa
	.string	"SS_PLUS"
	.sleb128 156
	.uleb128 0xa
	.string	"US_PLUS"
	.sleb128 157
	.uleb128 0xa
	.string	"SS_MINUS"
	.sleb128 158
	.uleb128 0xa
	.string	"US_MINUS"
	.sleb128 159
	.uleb128 0xa
	.string	"SS_TRUNCATE"
	.sleb128 160
	.uleb128 0xa
	.string	"US_TRUNCATE"
	.sleb128 161
	.uleb128 0xa
	.string	"PHI"
	.sleb128 162
	.uleb128 0xa
	.string	"LAST_AND_UNUSED_RTX_CODE"
	.sleb128 163
	.byte	0x0
	.uleb128 0x19
	.long	0x15c3
	.byte	0x4
	.byte	0x3
	.byte	0x4d
	.uleb128 0x6
	.string	"min_align"
	.byte	0x3
	.byte	0x4f
	.long	0x5df
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"base_after_vec"
	.byte	0x3
	.byte	0x51
	.long	0x5df
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"min_after_vec"
	.byte	0x3
	.byte	0x52
	.long	0x5df
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"max_after_vec"
	.byte	0x3
	.byte	0x54
	.long	0x5df
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"min_after_base"
	.byte	0x3
	.byte	0x56
	.long	0x5df
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"max_after_base"
	.byte	0x3
	.byte	0x58
	.long	0x5df
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"offset_unsigned"
	.byte	0x3
	.byte	0x5b
	.long	0x5df
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"scale"
	.byte	0x3
	.byte	0x5d
	.long	0x5df
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
	.long	0x14e9
	.uleb128 0x15
	.long	0x1637
	.long	.LASF5
	.byte	0x18
	.byte	0x3
	.byte	0x68
	.uleb128 0x7
	.string	"alias"
	.byte	0x3
	.byte	0x69
	.long	0x67b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"expr"
	.byte	0x3
	.byte	0x6a
	.long	0x1df
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1a
	.long	.LASF6
	.byte	0x3
	.byte	0x6b
	.long	0x98
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"size"
	.byte	0x3
	.byte	0x6c
	.long	0x98
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"align"
	.byte	0x3
	.byte	0x6d
	.long	0x5df
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x1b
	.long	.LASF5
	.byte	0x3
	.byte	0x6e
	.long	0x15de
	.uleb128 0x1c
	.long	0x1714
	.string	"rtunion_def"
	.byte	0x8
	.byte	0x3
	.byte	0x73
	.uleb128 0x1d
	.string	"rtwint"
	.byte	0x3
	.byte	0x74
	.long	0x67b
	.uleb128 0x1d
	.string	"rtint"
	.byte	0x3
	.byte	0x75
	.long	0x390
	.uleb128 0x1d
	.string	"rtuint"
	.byte	0x3
	.byte	0x76
	.long	0x5df
	.uleb128 0x1d
	.string	"rtstr"
	.byte	0x3
	.byte	0x77
	.long	0x37d
	.uleb128 0x1d
	.string	"rtx"
	.byte	0x3
	.byte	0x78
	.long	0x98
	.uleb128 0x1d
	.string	"rtvec"
	.byte	0x3
	.byte	0x79
	.long	0x197
	.uleb128 0x1d
	.string	"rttype"
	.byte	0x3
	.byte	0x7a
	.long	0xa22
	.uleb128 0x1d
	.string	"rt_addr_diff_vec_flags"
	.byte	0x3
	.byte	0x7b
	.long	0x15c3
	.uleb128 0x1d
	.string	"rt_cselib"
	.byte	0x3
	.byte	0x7c
	.long	0x1728
	.uleb128 0x1d
	.string	"rtbit"
	.byte	0x3
	.byte	0x7d
	.long	0x178e
	.uleb128 0x1d
	.string	"rttree"
	.byte	0x3
	.byte	0x7e
	.long	0x1df
	.uleb128 0x1d
	.string	"bb"
	.byte	0x3
	.byte	0x7f
	.long	0x1919
	.uleb128 0x1d
	.string	"rtmem"
	.byte	0x3
	.byte	0x80
	.long	0x191f
	.byte	0x0
	.uleb128 0x1e
	.string	"cselib_val_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x1714
	.uleb128 0x4
	.long	0x178e
	.string	"bitmap_head_def"
	.byte	0x10
	.byte	0x3
	.byte	0x7d
	.uleb128 0x1a
	.long	.LASF7
	.byte	0x5
	.byte	0x3d
	.long	0x1fc6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"current"
	.byte	0x5
	.byte	0x3e
	.long	0x1fc6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"indx"
	.byte	0x5
	.byte	0x3f
	.long	0x5df
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"using_obstack"
	.byte	0x5
	.byte	0x40
	.long	0x390
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x172e
	.uleb128 0x4
	.long	0x1919
	.string	"basic_block_def"
	.byte	0x50
	.byte	0x3
	.byte	0x7f
	.uleb128 0x7
	.string	"head"
	.byte	0x6
	.byte	0xb5
	.long	0x98
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"end"
	.byte	0x6
	.byte	0xb5
	.long	0x98
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"head_tree"
	.byte	0x6
	.byte	0xb8
	.long	0x1df
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"end_tree"
	.byte	0x6
	.byte	0xb9
	.long	0x1df
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"pred"
	.byte	0x6
	.byte	0xbc
	.long	0x2118
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"succ"
	.byte	0x6
	.byte	0xbc
	.long	0x2118
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"local_set"
	.byte	0x6
	.byte	0xc1
	.long	0x2049
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"cond_local_set"
	.byte	0x6
	.byte	0xc5
	.long	0x2049
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"global_live_at_start"
	.byte	0x6
	.byte	0xcb
	.long	0x2049
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x7
	.string	"global_live_at_end"
	.byte	0x6
	.byte	0xcd
	.long	0x2049
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x7
	.string	"aux"
	.byte	0x6
	.byte	0xd0
	.long	0x6e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x7
	.string	"index"
	.byte	0x6
	.byte	0xd3
	.long	0x390
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x7
	.string	"prev_bb"
	.byte	0x6
	.byte	0xd6
	.long	0x1919
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x7
	.string	"next_bb"
	.byte	0x6
	.byte	0xd6
	.long	0x1919
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x7
	.string	"loop_depth"
	.byte	0x6
	.byte	0xd9
	.long	0x390
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x7
	.string	"loop_father"
	.byte	0x6
	.byte	0xdc
	.long	0x2391
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x7
	.string	"count"
	.byte	0x6
	.byte	0xdf
	.long	0x2057
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x7
	.string	"frequency"
	.byte	0x6
	.byte	0xe2
	.long	0x390
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x7
	.string	"flags"
	.byte	0x6
	.byte	0xe5
	.long	0x390
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1794
	.uleb128 0x3
	.byte	0x4
	.long	0x1637
	.uleb128 0x2
	.string	"rtunion"
	.byte	0x3
	.byte	0x82
	.long	0x1642
	.uleb128 0x11
	.long	0x1944
	.long	0x1925
	.uleb128 0x12
	.long	0x5f6
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
	.long	0x1954
	.long	0x98
	.uleb128 0x12
	.long	0x5f6
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x98
	.uleb128 0x4
	.long	0x1990
	.string	"const_equiv_data"
	.byte	0x8
	.byte	0xf
	.byte	0x24
	.uleb128 0x7
	.string	"rtx"
	.byte	0xf
	.byte	0x32
	.long	0xa3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"age"
	.byte	0xf
	.byte	0x36
	.long	0x5df
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x9
	.long	0x1b2b
	.string	"varray_data_enum"
	.byte	0x4
	.byte	0xf
	.byte	0x3c
	.uleb128 0xa
	.string	"VARRAY_DATA_C"
	.sleb128 0
	.uleb128 0xa
	.string	"VARRAY_DATA_UC"
	.sleb128 1
	.uleb128 0xa
	.string	"VARRAY_DATA_S"
	.sleb128 2
	.uleb128 0xa
	.string	"VARRAY_DATA_US"
	.sleb128 3
	.uleb128 0xa
	.string	"VARRAY_DATA_I"
	.sleb128 4
	.uleb128 0xa
	.string	"VARRAY_DATA_U"
	.sleb128 5
	.uleb128 0xa
	.string	"VARRAY_DATA_L"
	.sleb128 6
	.uleb128 0xa
	.string	"VARRAY_DATA_UL"
	.sleb128 7
	.uleb128 0xa
	.string	"VARRAY_DATA_HINT"
	.sleb128 8
	.uleb128 0xa
	.string	"VARRAY_DATA_UHINT"
	.sleb128 9
	.uleb128 0xa
	.string	"VARRAY_DATA_GENERIC"
	.sleb128 10
	.uleb128 0xa
	.string	"VARRAY_DATA_CPTR"
	.sleb128 11
	.uleb128 0xa
	.string	"VARRAY_DATA_RTX"
	.sleb128 12
	.uleb128 0xa
	.string	"VARRAY_DATA_RTVEC"
	.sleb128 13
	.uleb128 0xa
	.string	"VARRAY_DATA_TREE"
	.sleb128 14
	.uleb128 0xa
	.string	"VARRAY_DATA_BITMAP"
	.sleb128 15
	.uleb128 0xa
	.string	"VARRAY_DATA_REG"
	.sleb128 16
	.uleb128 0xa
	.string	"VARRAY_DATA_CONST_EQUIV"
	.sleb128 17
	.uleb128 0xa
	.string	"VARRAY_DATA_BB"
	.sleb128 18
	.uleb128 0xa
	.string	"VARRAY_DATA_TE"
	.sleb128 19
	.uleb128 0xa
	.string	"NUM_VARRAY_DATA"
	.sleb128 20
	.byte	0x0
	.uleb128 0x1c
	.long	0x1c27
	.string	"varray_data_tag"
	.byte	0x8
	.byte	0xf
	.byte	0x55
	.uleb128 0x1d
	.string	"c"
	.byte	0xf
	.byte	0x56
	.long	0x9df
	.uleb128 0x1d
	.string	"uc"
	.byte	0xf
	.byte	0x58
	.long	0x1c27
	.uleb128 0x1d
	.string	"s"
	.byte	0xf
	.byte	0x5a
	.long	0x1c37
	.uleb128 0x1d
	.string	"us"
	.byte	0xf
	.byte	0x5c
	.long	0x1c47
	.uleb128 0x1d
	.string	"i"
	.byte	0xf
	.byte	0x5e
	.long	0x1c57
	.uleb128 0x1d
	.string	"u"
	.byte	0xf
	.byte	0x60
	.long	0x1c67
	.uleb128 0x1d
	.string	"l"
	.byte	0xf
	.byte	0x62
	.long	0x1c77
	.uleb128 0x1d
	.string	"ul"
	.byte	0xf
	.byte	0x64
	.long	0x1c87
	.uleb128 0x1d
	.string	"hint"
	.byte	0xf
	.byte	0x66
	.long	0x1c97
	.uleb128 0x1d
	.string	"uhint"
	.byte	0xf
	.byte	0x68
	.long	0x1ca7
	.uleb128 0x1d
	.string	"generic"
	.byte	0xf
	.byte	0x6a
	.long	0x1cb7
	.uleb128 0x1d
	.string	"cptr"
	.byte	0xf
	.byte	0x6c
	.long	0x1cc7
	.uleb128 0x1d
	.string	"rtx"
	.byte	0xf
	.byte	0x6e
	.long	0x1cd7
	.uleb128 0x1d
	.string	"rtvec"
	.byte	0xf
	.byte	0x70
	.long	0x1ce7
	.uleb128 0x1d
	.string	"tree"
	.byte	0xf
	.byte	0x72
	.long	0x1cf7
	.uleb128 0x1d
	.string	"bitmap"
	.byte	0xf
	.byte	0x74
	.long	0x1d07
	.uleb128 0x1d
	.string	"reg"
	.byte	0xf
	.byte	0x76
	.long	0x1d17
	.uleb128 0x1d
	.string	"const_equiv"
	.byte	0xf
	.byte	0x78
	.long	0x1e13
	.uleb128 0x1d
	.string	"bb"
	.byte	0xf
	.byte	0x7a
	.long	0x1e23
	.uleb128 0x1d
	.string	"te"
	.byte	0xf
	.byte	0x7c
	.long	0x1e33
	.byte	0x0
	.uleb128 0x11
	.long	0x1c37
	.long	0x623
	.uleb128 0x12
	.long	0x5f6
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
	.long	0x1c47
	.long	0x66e
	.uleb128 0x12
	.long	0x5f6
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
	.long	0x1c57
	.long	0x634
	.uleb128 0x12
	.long	0x5f6
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
	.long	0x1c67
	.long	0x390
	.uleb128 0x12
	.long	0x5f6
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
	.long	0x1c77
	.long	0x5df
	.uleb128 0x12
	.long	0x5f6
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
	.long	0x1c87
	.long	0x6c5
	.uleb128 0x12
	.long	0x5f6
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
	.long	0x1c97
	.long	0x64a
	.uleb128 0x12
	.long	0x5f6
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
	.long	0x1ca7
	.long	0x67b
	.uleb128 0x12
	.long	0x5f6
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
	.long	0x1cb7
	.long	0x68c
	.uleb128 0x12
	.long	0x5f6
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
	.long	0x1cc7
	.long	0x6e2
	.uleb128 0x12
	.long	0x5f6
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
	.long	0x1cd7
	.long	0x6e4
	.uleb128 0x12
	.long	0x5f6
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
	.long	0x1ce7
	.long	0xa3
	.uleb128 0x12
	.long	0x5f6
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
	.long	0x1cf7
	.long	0x1a4
	.uleb128 0x12
	.long	0x5f6
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
	.long	0x1d07
	.long	0x1eb
	.uleb128 0x12
	.long	0x5f6
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
	.long	0x1d17
	.long	0x178e
	.uleb128 0x12
	.long	0x5f6
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
	.long	0x1d27
	.long	0x1e0d
	.uleb128 0x12
	.long	0x5f6
	.byte	0x0
	.byte	0x0
	.uleb128 0x4
	.long	0x1e0d
	.string	"reg_info_def"
	.byte	0x2c
	.byte	0xf
	.byte	0x76
	.uleb128 0x7
	.string	"first_uid"
	.byte	0xe
	.byte	0x31
	.long	0x390
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"last_uid"
	.byte	0xe
	.byte	0x32
	.long	0x390
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"last_note_uid"
	.byte	0xe
	.byte	0x33
	.long	0x390
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"sets"
	.byte	0xe
	.byte	0x36
	.long	0x390
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"refs"
	.byte	0xe
	.byte	0x39
	.long	0x390
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"freq"
	.byte	0xe
	.byte	0x3a
	.long	0x390
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"deaths"
	.byte	0xe
	.byte	0x3b
	.long	0x390
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"live_length"
	.byte	0xe
	.byte	0x3c
	.long	0x390
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"calls_crossed"
	.byte	0xe
	.byte	0x3d
	.long	0x390
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1a
	.long	.LASF8
	.byte	0xe
	.byte	0x3e
	.long	0x390
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x7
	.string	"changes_mode"
	.byte	0xe
	.byte	0x3f
	.long	0x388
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1d27
	.uleb128 0x11
	.long	0x1e23
	.long	0x195a
	.uleb128 0x12
	.long	0x5f6
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
	.long	0x1e33
	.long	0x1919
	.uleb128 0x12
	.long	0x5f6
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
	.long	0x1e43
	.long	0x1e4e
	.uleb128 0x12
	.long	0x5f6
	.byte	0x0
	.byte	0x0
	.uleb128 0x1e
	.string	"elt_list"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x1e43
	.uleb128 0x2
	.string	"varray_data"
	.byte	0xf
	.byte	0x7e
	.long	0x1b2b
	.uleb128 0x4
	.long	0x1edb
	.string	"varray_head_tag"
	.byte	0x18
	.byte	0xf
	.byte	0x81
	.uleb128 0x7
	.string	"num_elements"
	.byte	0xf
	.byte	0x82
	.long	0x615
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"elements_used"
	.byte	0xf
	.byte	0x83
	.long	0x615
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"type"
	.byte	0xf
	.byte	0x85
	.long	0x1990
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"name"
	.byte	0xf
	.byte	0x86
	.long	0x37d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x1a
	.long	.LASF9
	.byte	0xf
	.byte	0x87
	.long	0x1e54
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x2
	.string	"varray_type"
	.byte	0xf
	.byte	0x8a
	.long	0x1eee
	.uleb128 0x3
	.byte	0x4
	.long	0x1e67
	.uleb128 0x2
	.string	"HARD_REG_ELT_TYPE"
	.byte	0x8
	.byte	0x29
	.long	0x68c
	.uleb128 0x2
	.string	"HARD_REG_SET"
	.byte	0x8
	.byte	0x34
	.long	0x1f21
	.uleb128 0x11
	.long	0x1f31
	.long	0x1ef4
	.uleb128 0x12
	.long	0x5f6
	.byte	0x2
	.byte	0x0
	.uleb128 0x2
	.string	"BITMAP_WORD"
	.byte	0x5
	.byte	0x1d
	.long	0x64a
	.uleb128 0x4
	.long	0x1f9a
	.string	"bitmap_element_def"
	.byte	0x1c
	.byte	0x5
	.byte	0x34
	.uleb128 0x1a
	.long	.LASF10
	.byte	0x5
	.byte	0x35
	.long	0x1f9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1a
	.long	.LASF11
	.byte	0x5
	.byte	0x36
	.long	0x1f9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"indx"
	.byte	0x5
	.byte	0x37
	.long	0x5df
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"bits"
	.byte	0x5
	.byte	0x38
	.long	0x1fa0
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1f44
	.uleb128 0x11
	.long	0x1fb0
	.long	0x1f31
	.uleb128 0x12
	.long	0x5f6
	.byte	0x3
	.byte	0x0
	.uleb128 0x2
	.string	"bitmap_element"
	.byte	0x5
	.byte	0x39
	.long	0x1f44
	.uleb128 0x3
	.byte	0x4
	.long	0x1fb0
	.uleb128 0x2
	.string	"bitmap"
	.byte	0x5
	.byte	0x43
	.long	0x178e
	.uleb128 0x4
	.long	0x2034
	.string	"simple_bitmap_def"
	.byte	0x14
	.byte	0x7
	.byte	0x20
	.uleb128 0x7
	.string	"n_bits"
	.byte	0x7
	.byte	0x21
	.long	0x5df
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"size"
	.byte	0x7
	.byte	0x22
	.long	0x5df
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"bytes"
	.byte	0x7
	.byte	0x23
	.long	0x5df
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"elms"
	.byte	0x7
	.byte	0x24
	.long	0x1ca7
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x2
	.string	"sbitmap"
	.byte	0x7
	.byte	0x25
	.long	0x2043
	.uleb128 0x3
	.byte	0x4
	.long	0x1fda
	.uleb128 0x2
	.string	"regset"
	.byte	0x6
	.byte	0x22
	.long	0x1fcc
	.uleb128 0x2
	.string	"gcov_type"
	.byte	0x6
	.byte	0x75
	.long	0x67b
	.uleb128 0x4
	.long	0x2112
	.string	"edge_def"
	.byte	0x28
	.byte	0x6
	.byte	0x78
	.uleb128 0x7
	.string	"pred_next"
	.byte	0x6
	.byte	0x7a
	.long	0x2112
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"succ_next"
	.byte	0x6
	.byte	0x7a
	.long	0x2112
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"src"
	.byte	0x6
	.byte	0x7d
	.long	0x1919
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1a
	.long	.LASF12
	.byte	0x6
	.byte	0x7d
	.long	0x1919
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"insns"
	.byte	0x6
	.byte	0x80
	.long	0x98
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"aux"
	.byte	0x6
	.byte	0x83
	.long	0x6e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"flags"
	.byte	0x6
	.byte	0x85
	.long	0x390
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"probability"
	.byte	0x6
	.byte	0x86
	.long	0x390
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"count"
	.byte	0x6
	.byte	0x87
	.long	0x2057
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x2068
	.uleb128 0x2
	.string	"edge"
	.byte	0x6
	.byte	0x89
	.long	0x2112
	.uleb128 0x4
	.long	0x2391
	.string	"loop"
	.byte	0x80
	.byte	0x6
	.byte	0xdc
	.uleb128 0xf
	.string	"num"
	.byte	0x6
	.value	0x176
	.long	0x390
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.string	"header"
	.byte	0x6
	.value	0x179
	.long	0x2397
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xf
	.string	"latch"
	.byte	0x6
	.value	0x17c
	.long	0x2397
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xf
	.string	"pre_header"
	.byte	0x6
	.value	0x17f
	.long	0x2397
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xf
	.string	"pre_header_edges"
	.byte	0x6
	.value	0x184
	.long	0x23a2
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xf
	.string	"num_pre_header_edges"
	.byte	0x6
	.value	0x187
	.long	0x390
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x1f
	.long	.LASF7
	.byte	0x6
	.value	0x18b
	.long	0x2397
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xf
	.string	"last"
	.byte	0x6
	.value	0x18f
	.long	0x2397
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xf
	.string	"nodes"
	.byte	0x6
	.value	0x192
	.long	0x2034
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xf
	.string	"num_nodes"
	.byte	0x6
	.value	0x195
	.long	0x390
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xf
	.string	"entry_edges"
	.byte	0x6
	.value	0x198
	.long	0x23a2
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xf
	.string	"num_entries"
	.byte	0x6
	.value	0x19b
	.long	0x390
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xf
	.string	"exit_edges"
	.byte	0x6
	.value	0x19e
	.long	0x23a2
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xf
	.string	"num_exits"
	.byte	0x6
	.value	0x1a1
	.long	0x390
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xf
	.string	"exits_doms"
	.byte	0x6
	.value	0x1a4
	.long	0x2034
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xf
	.string	"depth"
	.byte	0x6
	.value	0x1a7
	.long	0x390
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xf
	.string	"pred"
	.byte	0x6
	.value	0x1aa
	.long	0x23a8
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xf
	.string	"level"
	.byte	0x6
	.value	0x1ae
	.long	0x390
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xf
	.string	"outer"
	.byte	0x6
	.value	0x1b1
	.long	0x2391
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xf
	.string	"inner"
	.byte	0x6
	.value	0x1b4
	.long	0x2391
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x1f
	.long	.LASF10
	.byte	0x6
	.value	0x1b7
	.long	0x2391
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xf
	.string	"invalid"
	.byte	0x6
	.value	0x1ba
	.long	0x390
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xf
	.string	"aux"
	.byte	0x6
	.value	0x1bd
	.long	0x6e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xf
	.string	"vtop"
	.byte	0x6
	.value	0x1c3
	.long	0x98
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xf
	.string	"cont"
	.byte	0x6
	.value	0x1c7
	.long	0x98
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xf
	.string	"start"
	.byte	0x6
	.value	0x1ca
	.long	0x98
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xf
	.string	"end"
	.byte	0x6
	.value	0x1cd
	.long	0x98
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xf
	.string	"top"
	.byte	0x6
	.value	0x1d1
	.long	0x98
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0xf
	.string	"scan_start"
	.byte	0x6
	.value	0x1d4
	.long	0x98
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xf
	.string	"sink"
	.byte	0x6
	.value	0x1d7
	.long	0x98
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0xf
	.string	"exit_labels"
	.byte	0x6
	.value	0x1e2
	.long	0x98
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xf
	.string	"exit_count"
	.byte	0x6
	.value	0x1e6
	.long	0x390
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x2124
	.uleb128 0x1b
	.long	.LASF8
	.byte	0x6
	.byte	0xe6
	.long	0x1919
	.uleb128 0x3
	.byte	0x4
	.long	0x2118
	.uleb128 0x3
	.byte	0x4
	.long	0x2391
	.uleb128 0xc
	.string	"_Bool"
	.byte	0x1
	.byte	0x2
	.uleb128 0x2
	.string	"insn_operand_predicate_fn"
	.byte	0x11
	.byte	0xd9
	.long	0x23d8
	.uleb128 0x3
	.byte	0x4
	.long	0x23de
	.uleb128 0x20
	.long	0x23f3
	.byte	0x1
	.long	0x390
	.uleb128 0x21
	.long	0x98
	.uleb128 0x21
	.long	0xa22
	.byte	0x0
	.uleb128 0x2
	.string	"insn_gen_fn"
	.byte	0x11
	.byte	0xdb
	.long	0x2406
	.uleb128 0x3
	.byte	0x4
	.long	0x240c
	.uleb128 0x20
	.long	0x241d
	.byte	0x1
	.long	0x98
	.uleb128 0x21
	.long	0x98
	.uleb128 0x22
	.byte	0x0
	.uleb128 0x4
	.long	0x249c
	.string	"insn_operand_data"
	.byte	0xc
	.byte	0x11
	.byte	0xde
	.uleb128 0x7
	.string	"predicate"
	.byte	0x11
	.byte	0xdf
	.long	0x249c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"constraint"
	.byte	0x11
	.byte	0xe1
	.long	0x24a1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x5
	.long	.LASF1
	.byte	0x11
	.byte	0xe3
	.long	0x24a6
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"strict_low"
	.byte	0x11
	.byte	0xe5
	.long	0x383
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x7
	.string	"eliminable"
	.byte	0x11
	.byte	0xe7
	.long	0x383
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.byte	0x0
	.uleb128 0xb
	.long	0x23b7
	.uleb128 0xb
	.long	0x37d
	.uleb128 0xb
	.long	0xa22
	.uleb128 0x15
	.long	0x2552
	.long	.LASF13
	.byte	0x14
	.byte	0x11
	.byte	0xf2
	.uleb128 0x7
	.string	"name"
	.byte	0x11
	.byte	0xf3
	.long	0x24a1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"output"
	.byte	0x11
	.byte	0xf4
	.long	0xa1b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"genfun"
	.byte	0x11
	.byte	0xf5
	.long	0x2552
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"operand"
	.byte	0x11
	.byte	0xf6
	.long	0x2557
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"n_operands"
	.byte	0x11
	.byte	0xf8
	.long	0x383
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"n_dups"
	.byte	0x11
	.byte	0xf9
	.long	0x383
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.uleb128 0x7
	.string	"n_alternatives"
	.byte	0x11
	.byte	0xfa
	.long	0x383
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.uleb128 0x7
	.string	"output_format"
	.byte	0x11
	.byte	0xfb
	.long	0x383
	.byte	0x2
	.byte	0x23
	.uleb128 0x13
	.byte	0x0
	.uleb128 0xb
	.long	0x23f3
	.uleb128 0xb
	.long	0x255c
	.uleb128 0x3
	.byte	0x4
	.long	0x2562
	.uleb128 0xb
	.long	0x241d
	.uleb128 0x4
	.long	0x25c7
	.string	"var_refs_queue"
	.byte	0x10
	.byte	0x12
	.byte	0x17
	.uleb128 0x1a
	.long	.LASF14
	.byte	0x12
	.byte	0x18
	.long	0x98
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"promoted_mode"
	.byte	0x12
	.byte	0x19
	.long	0xa22
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"unsignedp"
	.byte	0x12
	.byte	0x1a
	.long	0x390
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1a
	.long	.LASF10
	.byte	0x12
	.byte	0x1b
	.long	0x25c7
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x2567
	.uleb128 0x15
	.long	0x2613
	.long	.LASF15
	.byte	0x10
	.byte	0x12
	.byte	0x24
	.uleb128 0x1a
	.long	.LASF7
	.byte	0x12
	.byte	0x26
	.long	0x98
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"last"
	.byte	0x12
	.byte	0x27
	.long	0x98
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1a
	.long	.LASF16
	.byte	0x12
	.byte	0x28
	.long	0x1df
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1a
	.long	.LASF10
	.byte	0x12
	.byte	0x29
	.long	0x2613
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x25cd
	.uleb128 0x4
	.long	0x2768
	.string	"emit_status"
	.byte	0x34
	.byte	0x12
	.byte	0x37
	.uleb128 0x7
	.string	"x_reg_rtx_no"
	.byte	0x12
	.byte	0x3a
	.long	0x390
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"x_first_label_num"
	.byte	0x12
	.byte	0x3d
	.long	0x390
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"x_first_insn"
	.byte	0x12
	.byte	0x44
	.long	0x98
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"x_last_insn"
	.byte	0x12
	.byte	0x45
	.long	0x98
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x1a
	.long	.LASF16
	.byte	0x12
	.byte	0x4a
	.long	0x1df
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x1a
	.long	.LASF15
	.byte	0x12
	.byte	0x50
	.long	0x2613
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"x_cur_insn_uid"
	.byte	0x12
	.byte	0x54
	.long	0x390
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"x_last_linenum"
	.byte	0x12
	.byte	0x58
	.long	0x390
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"x_last_filename"
	.byte	0x12
	.byte	0x59
	.long	0x37d
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x7
	.string	"regno_pointer_align_length"
	.byte	0x12
	.byte	0x5f
	.long	0x390
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x7
	.string	"regno_pointer_align"
	.byte	0x12
	.byte	0x65
	.long	0x97c
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x7
	.string	"regno_decl"
	.byte	0x12
	.byte	0x69
	.long	0x2768
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x7
	.string	"x_regno_reg_rtx"
	.byte	0x12
	.byte	0x70
	.long	0x1954
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1df
	.uleb128 0x4
	.long	0x284e
	.string	"expr_status"
	.byte	0x1c
	.byte	0x12
	.byte	0x7d
	.uleb128 0x7
	.string	"x_pending_stack_adjust"
	.byte	0x12
	.byte	0x80
	.long	0x390
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"x_inhibit_defer_pop"
	.byte	0x12
	.byte	0x91
	.long	0x390
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"x_stack_pointer_delta"
	.byte	0x12
	.byte	0x97
	.long	0x390
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"x_saveregs_value"
	.byte	0x12
	.byte	0x9c
	.long	0x98
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"x_apply_args_value"
	.byte	0x12
	.byte	0x9f
	.long	0x98
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"x_forced_labels"
	.byte	0x12
	.byte	0xa2
	.long	0x98
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"x_pending_chain"
	.byte	0x12
	.byte	0xa5
	.long	0x98
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x23
	.long	0x28b8
	.long	.LASF17
	.byte	0x4
	.byte	0x12
	.value	0x1f1
	.uleb128 0xa
	.string	"FUNCTION_FREQUENCY_UNLIKELY_EXECUTED"
	.sleb128 0
	.uleb128 0xa
	.string	"FUNCTION_FREQUENCY_NORMAL"
	.sleb128 1
	.uleb128 0xa
	.string	"FUNCTION_FREQUENCY_HOT"
	.sleb128 2
	.byte	0x0
	.uleb128 0x24
	.long	0x3277
	.string	"function"
	.value	0x134
	.byte	0x3
	.byte	0x1f
	.uleb128 0x7
	.string	"eh"
	.byte	0x12
	.byte	0xb5
	.long	0x3283
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"stmt"
	.byte	0x12
	.byte	0xb6
	.long	0x3297
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"expr"
	.byte	0x12
	.byte	0xb7
	.long	0x329d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"emit"
	.byte	0x12
	.byte	0xb8
	.long	0x32a3
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"varasm"
	.byte	0x12
	.byte	0xb9
	.long	0x32b9
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"name"
	.byte	0x12
	.byte	0xbe
	.long	0x37d
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"decl"
	.byte	0x12
	.byte	0xc1
	.long	0x1df
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"outer"
	.byte	0x12
	.byte	0xc4
	.long	0x32bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"pops_args"
	.byte	0x12
	.byte	0xc9
	.long	0x390
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x7
	.string	"args_size"
	.byte	0x12
	.byte	0xce
	.long	0x390
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x7
	.string	"pretend_args_size"
	.byte	0x12
	.byte	0xd3
	.long	0x390
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x7
	.string	"outgoing_args_size"
	.byte	0x12
	.byte	0xd7
	.long	0x390
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x7
	.string	"arg_offset_rtx"
	.byte	0x12
	.byte	0xdb
	.long	0x98
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x7
	.string	"args_info"
	.byte	0x12
	.byte	0xdf
	.long	0x5fd
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x7
	.string	"return_rtx"
	.byte	0x12
	.byte	0xe5
	.long	0x98
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x7
	.string	"internal_arg_pointer"
	.byte	0x12
	.byte	0xe8
	.long	0x98
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x7
	.string	"cannot_inline"
	.byte	0x12
	.byte	0xec
	.long	0x37d
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x7
	.string	"hard_reg_initial_vals"
	.byte	0x12
	.byte	0xf0
	.long	0x32dc
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x7
	.string	"x_function_call_count"
	.byte	0x12
	.byte	0xf3
	.long	0x390
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0x7
	.string	"x_nonlocal_labels"
	.byte	0x12
	.byte	0xf8
	.long	0x1df
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x7
	.string	"x_nonlocal_goto_handler_slots"
	.byte	0x12
	.byte	0xfe
	.long	0x98
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0xf
	.string	"x_nonlocal_goto_handler_labels"
	.byte	0x12
	.value	0x102
	.long	0x98
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xf
	.string	"x_nonlocal_goto_stack_level"
	.byte	0x12
	.value	0x107
	.long	0x98
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0xf
	.string	"x_cleanup_label"
	.byte	0x12
	.value	0x10d
	.long	0x98
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0xf
	.string	"x_return_label"
	.byte	0x12
	.value	0x112
	.long	0x98
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.uleb128 0xf
	.string	"computed_goto_common_label"
	.byte	0x12
	.value	0x115
	.long	0x98
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0xf
	.string	"computed_goto_common_reg"
	.byte	0x12
	.value	0x116
	.long	0x98
	.byte	0x3
	.byte	0x23
	.uleb128 0xa4
	.uleb128 0xf
	.string	"x_save_expr_regs"
	.byte	0x12
	.value	0x11a
	.long	0x98
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0xf
	.string	"x_stack_slot_list"
	.byte	0x12
	.value	0x11e
	.long	0x98
	.byte	0x3
	.byte	0x23
	.uleb128 0xac
	.uleb128 0xf
	.string	"x_rtl_expr_chain"
	.byte	0x12
	.value	0x121
	.long	0x1df
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0xf
	.string	"x_tail_recursion_label"
	.byte	0x12
	.value	0x125
	.long	0x98
	.byte	0x3
	.byte	0x23
	.uleb128 0xb4
	.uleb128 0xf
	.string	"x_tail_recursion_reentry"
	.byte	0x12
	.value	0x128
	.long	0x98
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0xf
	.string	"x_arg_pointer_save_area"
	.byte	0x12
	.value	0x12e
	.long	0x98
	.byte	0x3
	.byte	0x23
	.uleb128 0xbc
	.uleb128 0xf
	.string	"x_clobber_return_insn"
	.byte	0x12
	.value	0x133
	.long	0x98
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0xf
	.string	"x_frame_offset"
	.byte	0x12
	.value	0x138
	.long	0x67b
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.uleb128 0xf
	.string	"x_context_display"
	.byte	0x12
	.value	0x13d
	.long	0x1df
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.uleb128 0xf
	.string	"x_trampoline_list"
	.byte	0x12
	.value	0x146
	.long	0x1df
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0xf
	.string	"x_parm_birth_insn"
	.byte	0x12
	.value	0x149
	.long	0x98
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0xf
	.string	"x_last_parm_insn"
	.byte	0x12
	.value	0x14d
	.long	0x98
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0xf
	.string	"x_max_parm_reg"
	.byte	0x12
	.value	0x151
	.long	0x5df
	.byte	0x3
	.byte	0x23
	.uleb128 0xdc
	.uleb128 0xf
	.string	"x_parm_reg_stack_loc"
	.byte	0x12
	.value	0x157
	.long	0x1954
	.byte	0x3
	.byte	0x23
	.uleb128 0xe0
	.uleb128 0xf
	.string	"x_temp_slots"
	.byte	0x12
	.value	0x15a
	.long	0x32ee
	.byte	0x3
	.byte	0x23
	.uleb128 0xe4
	.uleb128 0xf
	.string	"x_temp_slot_level"
	.byte	0x12
	.value	0x15d
	.long	0x390
	.byte	0x3
	.byte	0x23
	.uleb128 0xe8
	.uleb128 0xf
	.string	"x_var_temp_slot_level"
	.byte	0x12
	.value	0x160
	.long	0x390
	.byte	0x3
	.byte	0x23
	.uleb128 0xec
	.uleb128 0xf
	.string	"x_target_temp_slot_level"
	.byte	0x12
	.value	0x166
	.long	0x390
	.byte	0x3
	.byte	0x23
	.uleb128 0xf0
	.uleb128 0xf
	.string	"fixup_var_refs_queue"
	.byte	0x12
	.value	0x16a
	.long	0x25c7
	.byte	0x3
	.byte	0x23
	.uleb128 0xf4
	.uleb128 0xf
	.string	"inlinable"
	.byte	0x12
	.value	0x16d
	.long	0x390
	.byte	0x3
	.byte	0x23
	.uleb128 0xf8
	.uleb128 0xf
	.string	"no_debugging_symbols"
	.byte	0x12
	.value	0x16e
	.long	0x390
	.byte	0x3
	.byte	0x23
	.uleb128 0xfc
	.uleb128 0xf
	.string	"original_arg_vector"
	.byte	0x12
	.value	0x16f
	.long	0x197
	.byte	0x3
	.byte	0x23
	.uleb128 0x100
	.uleb128 0xf
	.string	"original_decl_initial"
	.byte	0x12
	.value	0x170
	.long	0x1df
	.byte	0x3
	.byte	0x23
	.uleb128 0x104
	.uleb128 0xf
	.string	"inl_last_parm_insn"
	.byte	0x12
	.value	0x173
	.long	0x98
	.byte	0x3
	.byte	0x23
	.uleb128 0x108
	.uleb128 0xf
	.string	"inl_max_label_num"
	.byte	0x12
	.value	0x175
	.long	0x390
	.byte	0x3
	.byte	0x23
	.uleb128 0x10c
	.uleb128 0xf
	.string	"funcdef_no"
	.byte	0x12
	.value	0x178
	.long	0x390
	.byte	0x3
	.byte	0x23
	.uleb128 0x110
	.uleb128 0xf
	.string	"machine"
	.byte	0x12
	.value	0x17d
	.long	0x3307
	.byte	0x3
	.byte	0x23
	.uleb128 0x114
	.uleb128 0xf
	.string	"stack_alignment_needed"
	.byte	0x12
	.value	0x17f
	.long	0x390
	.byte	0x3
	.byte	0x23
	.uleb128 0x118
	.uleb128 0xf
	.string	"preferred_stack_boundary"
	.byte	0x12
	.value	0x181
	.long	0x390
	.byte	0x3
	.byte	0x23
	.uleb128 0x11c
	.uleb128 0xf
	.string	"language"
	.byte	0x12
	.value	0x184
	.long	0x3321
	.byte	0x3
	.byte	0x23
	.uleb128 0x120
	.uleb128 0xf
	.string	"epilogue_delay_list"
	.byte	0x12
	.value	0x18a
	.long	0x98
	.byte	0x3
	.byte	0x23
	.uleb128 0x124
	.uleb128 0x25
	.string	"returns_struct"
	.byte	0x12
	.value	0x190
	.long	0x5df
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x25
	.string	"returns_pcc_struct"
	.byte	0x12
	.value	0x194
	.long	0x5df
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x25
	.string	"returns_pointer"
	.byte	0x12
	.value	0x197
	.long	0x5df
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x25
	.string	"needs_context"
	.byte	0x12
	.value	0x19a
	.long	0x5df
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x25
	.string	"calls_setjmp"
	.byte	0x12
	.value	0x19d
	.long	0x5df
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x25
	.string	"calls_longjmp"
	.byte	0x12
	.value	0x1a0
	.long	0x5df
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x25
	.string	"calls_alloca"
	.byte	0x12
	.value	0x1a4
	.long	0x5df
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x25
	.string	"calls_eh_return"
	.byte	0x12
	.value	0x1a7
	.long	0x5df
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x25
	.string	"has_nonlocal_label"
	.byte	0x12
	.value	0x1ab
	.long	0x5df
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x25
	.string	"has_nonlocal_goto"
	.byte	0x12
	.value	0x1af
	.long	0x5df
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x25
	.string	"contains_functions"
	.byte	0x12
	.value	0x1b2
	.long	0x5df
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x25
	.string	"has_computed_jump"
	.byte	0x12
	.value	0x1b5
	.long	0x5df
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x25
	.string	"is_thunk"
	.byte	0x12
	.value	0x1ba
	.long	0x5df
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x25
	.string	"all_throwers_are_sibcalls"
	.byte	0x12
	.value	0x1c1
	.long	0x5df
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x25
	.string	"instrument_entry_exit"
	.byte	0x12
	.value	0x1c5
	.long	0x5df
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x25
	.string	"arc_profile"
	.byte	0x12
	.value	0x1c8
	.long	0x5df
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x25
	.string	"profile"
	.byte	0x12
	.value	0x1cb
	.long	0x5df
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x25
	.string	"limit_stack"
	.byte	0x12
	.value	0x1cf
	.long	0x5df
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x25
	.string	"stdarg"
	.byte	0x12
	.value	0x1d2
	.long	0x5df
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x25
	.string	"x_whole_function_mode_p"
	.byte	0x12
	.value	0x1d8
	.long	0x5df
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x25
	.string	"x_dont_save_pending_sizes_p"
	.byte	0x12
	.value	0x1e1
	.long	0x5df
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x25
	.string	"uses_const_pool"
	.byte	0x12
	.value	0x1e4
	.long	0x5df
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x25
	.string	"uses_pic_offset_table"
	.byte	0x12
	.value	0x1e7
	.long	0x5df
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x25
	.string	"uses_eh_lsda"
	.byte	0x12
	.value	0x1ea
	.long	0x5df
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x25
	.string	"arg_pointer_save_area_init"
	.byte	0x12
	.value	0x1ed
	.long	0x5df
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.long	.LASF17
	.byte	0x12
	.value	0x1fa
	.long	0x284e
	.byte	0x3
	.byte	0x23
	.uleb128 0x12c
	.uleb128 0xf
	.string	"max_jumptable_ents"
	.byte	0x12
	.value	0x1fe
	.long	0x390
	.byte	0x3
	.byte	0x23
	.uleb128 0x130
	.byte	0x0
	.uleb128 0x1e
	.string	"eh_status"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x3277
	.uleb128 0x1e
	.string	"stmt_status"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x3289
	.uleb128 0x3
	.byte	0x4
	.long	0x276e
	.uleb128 0x3
	.byte	0x4
	.long	0x2619
	.uleb128 0x1e
	.string	"varasm_status"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x32a9
	.uleb128 0x3
	.byte	0x4
	.long	0x28b8
	.uleb128 0x1e
	.string	"initial_value_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x32c5
	.uleb128 0x1e
	.string	"temp_slot"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x32e2
	.uleb128 0x1e
	.string	"machine_function"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x32f4
	.uleb128 0x1e
	.string	"language_function"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x330d
	.uleb128 0xc
	.string	"float"
	.byte	0x4
	.byte	0x4
	.uleb128 0x4
	.long	0x33ed
	.string	"qty_table_elem"
	.byte	0x20
	.byte	0x1
	.byte	0xf4
	.uleb128 0x7
	.string	"const_rtx"
	.byte	0x1
	.byte	0xf5
	.long	0x98
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1a
	.long	.LASF18
	.byte	0x1
	.byte	0xf6
	.long	0x98
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"comparison_const"
	.byte	0x1
	.byte	0xf7
	.long	0x98
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"comparison_qty"
	.byte	0x1
	.byte	0xf8
	.long	0x390
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"first_reg"
	.byte	0x1
	.byte	0xf9
	.long	0x5df
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"last_reg"
	.byte	0x1
	.byte	0xf9
	.long	0x5df
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x1a
	.long	.LASF1
	.byte	0x1
	.byte	0xfa
	.long	0xa22
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"comparison_code"
	.byte	0x1
	.byte	0xfb
	.long	0xd1a
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0x0
	.uleb128 0xe
	.long	0x3422
	.string	"reg_eqv_elem"
	.byte	0x8
	.byte	0x1
	.value	0x121
	.uleb128 0x1f
	.long	.LASF10
	.byte	0x1
	.value	0x122
	.long	0x390
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1f
	.long	.LASF11
	.byte	0x1
	.value	0x122
	.long	0x390
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0xe
	.long	0x34c4
	.string	"cse_reg_info"
	.byte	0x1c
	.byte	0x1
	.value	0x129
	.uleb128 0xf
	.string	"hash_next"
	.byte	0x1
	.value	0x12b
	.long	0x34c4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1f
	.long	.LASF10
	.byte	0x1
	.value	0x12e
	.long	0x34c4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1f
	.long	.LASF19
	.byte	0x1
	.value	0x131
	.long	0x5df
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xf
	.string	"reg_qty"
	.byte	0x1
	.value	0x134
	.long	0x390
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xf
	.string	"reg_tick"
	.byte	0x1
	.value	0x138
	.long	0x390
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xf
	.string	"reg_in_table"
	.byte	0x1
	.value	0x13e
	.long	0x390
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xf
	.string	"subreg_ticked"
	.byte	0x1
	.value	0x142
	.long	0x5df
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x3422
	.uleb128 0xe
	.long	0x3607
	.string	"table_elt"
	.byte	0x30
	.byte	0x1
	.value	0x1c2
	.uleb128 0xf
	.string	"exp"
	.byte	0x1
	.value	0x1c3
	.long	0x98
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.string	"canon_exp"
	.byte	0x1
	.value	0x1c4
	.long	0x98
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xf
	.string	"next_same_hash"
	.byte	0x1
	.value	0x1c5
	.long	0x3607
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xf
	.string	"prev_same_hash"
	.byte	0x1
	.value	0x1c6
	.long	0x3607
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xf
	.string	"next_same_value"
	.byte	0x1
	.value	0x1c7
	.long	0x3607
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xf
	.string	"prev_same_value"
	.byte	0x1
	.value	0x1c8
	.long	0x3607
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xf
	.string	"first_same_value"
	.byte	0x1
	.value	0x1c9
	.long	0x3607
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xf
	.string	"related_value"
	.byte	0x1
	.value	0x1ca
	.long	0x3607
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xf
	.string	"cost"
	.byte	0x1
	.value	0x1cb
	.long	0x390
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xf
	.string	"regcost"
	.byte	0x1
	.value	0x1cc
	.long	0x390
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.long	.LASF1
	.byte	0x1
	.value	0x1cd
	.long	0xa22
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xf
	.string	"in_memory"
	.byte	0x1
	.value	0x1ce
	.long	0x388
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x1f
	.long	.LASF20
	.byte	0x1
	.value	0x1cf
	.long	0x388
	.byte	0x2
	.byte	0x23
	.uleb128 0x2d
	.uleb128 0xf
	.string	"flag"
	.byte	0x1
	.value	0x1d0
	.long	0x388
	.byte	0x2
	.byte	0x23
	.uleb128 0x2e
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x34ca
	.uleb128 0xd
	.long	0x363a
	.string	"taken"
	.byte	0x4
	.byte	0x1
	.value	0x24e
	.uleb128 0xa
	.string	"TAKEN"
	.sleb128 0
	.uleb128 0xa
	.string	"NOT_TAKEN"
	.sleb128 1
	.uleb128 0xa
	.string	"AROUND"
	.sleb128 2
	.byte	0x0
	.uleb128 0xe
	.long	0x3674
	.string	"branch_path"
	.byte	0x8
	.byte	0x1
	.value	0x248
	.uleb128 0xf
	.string	"branch"
	.byte	0x1
	.value	0x24a
	.long	0x98
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.string	"status"
	.byte	0x1
	.value	0x24e
	.long	0x360d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0xe
	.long	0x36f1
	.string	"cse_basic_block_data"
	.byte	0x64
	.byte	0x3
	.value	0x781
	.uleb128 0x1f
	.long	.LASF21
	.byte	0x1
	.value	0x23d
	.long	0x390
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1f
	.long	.LASF22
	.byte	0x1
	.value	0x23f
	.long	0x390
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xf
	.string	"nsets"
	.byte	0x1
	.value	0x241
	.long	0x390
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xf
	.string	"last"
	.byte	0x1
	.value	0x243
	.long	0x98
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x1f
	.long	.LASF23
	.byte	0x1
	.value	0x245
	.long	0x390
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xf
	.string	"path"
	.byte	0x1
	.value	0x24f
	.long	0x36f1
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x11
	.long	0x3701
	.long	0x363a
	.uleb128 0x12
	.long	0x5f6
	.byte	0x9
	.byte	0x0
	.uleb128 0x26
	.long	0x3741
	.byte	0x1
	.string	"dump_class"
	.byte	0x1
	.value	0x2c6
	.byte	0x1
	.long	.LFB15
	.long	.LFE15
	.long	.LLST0
	.uleb128 0x27
	.long	.LASF24
	.byte	0x1
	.value	0x2c5
	.long	0x3607
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x28
	.string	"elt"
	.byte	0x1
	.value	0x2c7
	.long	0x3607
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x29
	.long	0x37c2
	.string	"approx_reg_cost_1"
	.byte	0x1
	.value	0x2da
	.byte	0x1
	.long	0x390
	.long	.LFB16
	.long	.LFE16
	.long	.LLST1
	.uleb128 0x2a
	.string	"xp"
	.byte	0x1
	.value	0x2d8
	.long	0x1954
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x27
	.long	.LASF9
	.byte	0x1
	.value	0x2d9
	.long	0x6e2
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x28
	.string	"x"
	.byte	0x1
	.value	0x2db
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x28
	.string	"cost_p"
	.byte	0x1
	.value	0x2dc
	.long	0xa15
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x2b
	.long	.LBB2
	.long	.LBE2
	.uleb128 0x2c
	.long	.LASF19
	.byte	0x1
	.value	0x2e0
	.long	0x5df
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.byte	0x0
	.uleb128 0x29
	.long	0x3809
	.string	"approx_reg_cost"
	.byte	0x1
	.value	0x2fa
	.byte	0x1
	.long	0x390
	.long	.LFB17
	.long	.LFE17
	.long	.LLST2
	.uleb128 0x2a
	.string	"x"
	.byte	0x1
	.value	0x2f9
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x28
	.string	"cost"
	.byte	0x1
	.value	0x2fb
	.long	0x390
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x29
	.long	0x387d
	.string	"preferrable"
	.byte	0x1
	.value	0x30a
	.byte	0x1
	.long	0x390
	.long	.LFB18
	.long	.LFE18
	.long	.LLST3
	.uleb128 0x2a
	.string	"cost_a"
	.byte	0x1
	.value	0x309
	.long	0x390
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2a
	.string	"regcost_a"
	.byte	0x1
	.value	0x309
	.long	0x390
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2a
	.string	"cost_b"
	.byte	0x1
	.value	0x309
	.long	0x390
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2a
	.string	"regcost_b"
	.byte	0x1
	.value	0x309
	.long	0x390
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.byte	0x0
	.uleb128 0x29
	.long	0x38c1
	.string	"notreg_cost"
	.byte	0x1
	.value	0x32e
	.byte	0x1
	.long	0x390
	.long	.LFB19
	.long	.LFE19
	.long	.LLST4
	.uleb128 0x2a
	.string	"x"
	.byte	0x1
	.value	0x32c
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2a
	.string	"outer"
	.byte	0x1
	.value	0x32d
	.long	0xd1a
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x2d
	.long	0x3a41
	.byte	0x1
	.string	"rtx_cost"
	.byte	0x1
	.value	0x345
	.byte	0x1
	.long	0x390
	.long	.LFB20
	.long	.LFE20
	.long	.LLST5
	.uleb128 0x2a
	.string	"x"
	.byte	0x1
	.value	0x343
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2a
	.string	"outer_code"
	.byte	0x1
	.value	0x344
	.long	0xd1a
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.value	0x346
	.long	0x390
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x28
	.string	"j"
	.byte	0x1
	.value	0x346
	.long	0x390
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2c
	.long	.LASF0
	.byte	0x1
	.value	0x347
	.long	0xd1a
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x28
	.string	"fmt"
	.byte	0x1
	.value	0x348
	.long	0x37d
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x28
	.string	"total"
	.byte	0x1
	.value	0x349
	.long	0x390
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2e
	.long	0x3973
	.long	.LBB3
	.long	.LBE3
	.uleb128 0x28
	.string	"num_words"
	.byte	0x1
	.value	0x373
	.long	0x390
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0x0
	.uleb128 0x2e
	.long	0x3990
	.long	.LBB4
	.long	.LBE4
	.uleb128 0x2c
	.long	.LASF25
	.byte	0x1
	.value	0x373
	.long	0xa22
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.uleb128 0x2e
	.long	0x39ad
	.long	.LBB5
	.long	.LBE5
	.uleb128 0x2c
	.long	.LASF25
	.byte	0x1
	.value	0x373
	.long	0xa22
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x2e
	.long	0x39ca
	.long	.LBB6
	.long	.LBE6
	.uleb128 0x2c
	.long	.LASF25
	.byte	0x1
	.value	0x373
	.long	0xa22
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x2e
	.long	0x39e7
	.long	.LBB7
	.long	.LBE7
	.uleb128 0x2c
	.long	.LASF25
	.byte	0x1
	.value	0x373
	.long	0xa22
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x2e
	.long	0x3a16
	.long	.LBB8
	.long	.LBE8
	.uleb128 0x2c
	.long	.LASF6
	.byte	0x1
	.value	0x376
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x28
	.string	"symref"
	.byte	0x1
	.value	0x376
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x2b
	.long	.LBB9
	.long	.LBE9
	.uleb128 0x28
	.string	"high"
	.byte	0x1
	.value	0x376
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x28
	.string	"low"
	.byte	0x1
	.value	0x376
	.long	0x98
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.byte	0x0
	.byte	0x0
	.uleb128 0x2d
	.long	0x3a85
	.byte	0x1
	.string	"address_cost"
	.byte	0x1
	.value	0x395
	.byte	0x1
	.long	0x390
	.long	.LFB21
	.long	.LFE21
	.long	.LLST6
	.uleb128 0x2a
	.string	"x"
	.byte	0x1
	.value	0x393
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x27
	.long	.LASF1
	.byte	0x1
	.value	0x394
	.long	0xa22
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x29
	.long	0x3ae1
	.string	"get_cse_reg_info"
	.byte	0x1
	.value	0x3af
	.byte	0x1
	.long	0x34c4
	.long	.LFB22
	.long	.LFE22
	.long	.LLST7
	.uleb128 0x27
	.long	.LASF19
	.byte	0x1
	.value	0x3ae
	.long	0x5df
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x28
	.string	"hash_head"
	.byte	0x1
	.value	0x3b0
	.long	0x3ae1
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x28
	.string	"p"
	.byte	0x1
	.value	0x3b1
	.long	0x34c4
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x34c4
	.uleb128 0x2f
	.long	0x3b6f
	.string	"new_basic_block"
	.byte	0x1
	.value	0x3df
	.byte	0x1
	.long	.LFB23
	.long	.LFE23
	.long	.LLST8
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.value	0x3e0
	.long	0x390
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2e
	.long	0x3b3b
	.long	.LBB10
	.long	.LBE10
	.uleb128 0x28
	.string	"scan_tp_"
	.byte	0x1
	.value	0x3f0
	.long	0x3b6f
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x2b
	.long	.LBB11
	.long	.LBE11
	.uleb128 0x2c
	.long	.LASF7
	.byte	0x1
	.value	0x3f7
	.long	0x3607
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2b
	.long	.LBB12
	.long	.LBE12
	.uleb128 0x28
	.string	"last"
	.byte	0x1
	.value	0x3fc
	.long	0x3607
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1ef4
	.uleb128 0x2f
	.long	0x3bf1
	.string	"make_new_qty"
	.byte	0x1
	.value	0x419
	.byte	0x1
	.long	.LFB24
	.long	.LFE24
	.long	.LLST9
	.uleb128 0x2a
	.string	"reg"
	.byte	0x1
	.value	0x417
	.long	0x5df
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x27
	.long	.LASF1
	.byte	0x1
	.value	0x418
	.long	0xa22
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x28
	.string	"q"
	.byte	0x1
	.value	0x41a
	.long	0x390
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x28
	.string	"ent"
	.byte	0x1
	.value	0x41b
	.long	0x3bf1
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x28
	.string	"eqv"
	.byte	0x1
	.value	0x41c
	.long	0x3bf7
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x30
	.long	.LASF26
	.long	0x704c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.12192
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x3330
	.uleb128 0x3
	.byte	0x4
	.long	0x33ed
	.uleb128 0x2f
	.long	0x3c8e
	.string	"make_regs_eqv"
	.byte	0x1
	.value	0x433
	.byte	0x1
	.long	.LFB25
	.long	.LFE25
	.long	.LLST10
	.uleb128 0x2a
	.string	"new"
	.byte	0x1
	.value	0x432
	.long	0x5df
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2a
	.string	"old"
	.byte	0x1
	.value	0x432
	.long	0x5df
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x28
	.string	"lastr"
	.byte	0x1
	.value	0x434
	.long	0x5df
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x28
	.string	"firstr"
	.byte	0x1
	.value	0x434
	.long	0x5df
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x28
	.string	"q"
	.byte	0x1
	.value	0x435
	.long	0x390
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x28
	.string	"ent"
	.byte	0x1
	.value	0x436
	.long	0x3bf1
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x30
	.long	.LASF26
	.long	0x7037
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.12224
	.byte	0x0
	.uleb128 0x2f
	.long	0x3cfa
	.string	"delete_reg_equiv"
	.byte	0x1
	.value	0x473
	.byte	0x1
	.long	.LFB26
	.long	.LFE26
	.long	.LLST11
	.uleb128 0x2a
	.string	"reg"
	.byte	0x1
	.value	0x472
	.long	0x5df
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x28
	.string	"ent"
	.byte	0x1
	.value	0x474
	.long	0x3bf1
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x28
	.string	"q"
	.byte	0x1
	.value	0x475
	.long	0x390
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x28
	.string	"p"
	.byte	0x1
	.value	0x476
	.long	0x390
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x28
	.string	"n"
	.byte	0x1
	.value	0x476
	.long	0x390
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x29
	.long	0x3dc9
	.string	"mention_regs"
	.byte	0x1
	.value	0x49c
	.byte	0x1
	.long	0x390
	.long	.LFB27
	.long	.LFE27
	.long	.LLST12
	.uleb128 0x2a
	.string	"x"
	.byte	0x1
	.value	0x49b
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2c
	.long	.LASF0
	.byte	0x1
	.value	0x49d
	.long	0xd1a
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.value	0x49e
	.long	0x390
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x28
	.string	"j"
	.byte	0x1
	.value	0x49e
	.long	0x390
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.string	"fmt"
	.byte	0x1
	.value	0x49f
	.long	0x37d
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x28
	.string	"changed"
	.byte	0x1
	.value	0x4a0
	.long	0x390
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2e
	.long	0x3db1
	.long	.LBB13
	.long	.LBE13
	.uleb128 0x2c
	.long	.LASF19
	.byte	0x1
	.value	0x4a8
	.long	0x5df
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2c
	.long	.LASF27
	.byte	0x1
	.value	0x4a9
	.long	0x5df
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.value	0x4ac
	.long	0x5df
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x2b
	.long	.LBB14
	.long	.LBE14
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.value	0x4c0
	.long	0x5df
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x29
	.long	0x3e61
	.string	"insert_regs"
	.byte	0x1
	.value	0x50c
	.byte	0x1
	.long	0x390
	.long	.LFB28
	.long	.LFE28
	.long	.LLST13
	.uleb128 0x2a
	.string	"x"
	.byte	0x1
	.value	0x509
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x27
	.long	.LASF24
	.byte	0x1
	.value	0x50a
	.long	0x3607
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x27
	.long	.LASF14
	.byte	0x1
	.value	0x50b
	.long	0x390
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2b
	.long	.LBB15
	.long	.LBE15
	.uleb128 0x2c
	.long	.LASF19
	.byte	0x1
	.value	0x50f
	.long	0x5df
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x28
	.string	"qty_valid"
	.byte	0x1
	.value	0x510
	.long	0x390
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2b
	.long	.LBB16
	.long	.LBE16
	.uleb128 0x28
	.string	"ent"
	.byte	0x1
	.value	0x518
	.long	0x3bf1
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
	.long	0x3f34
	.string	"remove_from_table"
	.byte	0x1
	.value	0x55b
	.byte	0x1
	.long	.LFB29
	.long	.LFE29
	.long	.LLST14
	.uleb128 0x2a
	.string	"elt"
	.byte	0x1
	.value	0x559
	.long	0x3607
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x27
	.long	.LASF28
	.byte	0x1
	.value	0x55a
	.long	0x5df
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2e
	.long	0x3ef0
	.long	.LBB17
	.long	.LBE17
	.uleb128 0x2c
	.long	.LASF11
	.byte	0x1
	.value	0x565
	.long	0x3607
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2c
	.long	.LASF10
	.byte	0x1
	.value	0x566
	.long	0x3607
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2b
	.long	.LBB18
	.long	.LBE18
	.uleb128 0x28
	.string	"newfirst"
	.byte	0x1
	.value	0x56f
	.long	0x3607
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
	.long	0x3f1c
	.long	.LBB19
	.long	.LBE19
	.uleb128 0x2c
	.long	.LASF11
	.byte	0x1
	.value	0x57b
	.long	0x3607
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2c
	.long	.LASF10
	.byte	0x1
	.value	0x57c
	.long	0x3607
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2b
	.long	.LBB20
	.long	.LBE20
	.uleb128 0x28
	.string	"p"
	.byte	0x1
	.value	0x595
	.long	0x3607
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.byte	0x0
	.uleb128 0x29
	.long	0x3f8d
	.string	"lookup"
	.byte	0x1
	.value	0x5b1
	.byte	0x1
	.long	0x3607
	.long	.LFB30
	.long	.LFE30
	.long	.LLST15
	.uleb128 0x2a
	.string	"x"
	.byte	0x1
	.value	0x5ae
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x27
	.long	.LASF28
	.byte	0x1
	.value	0x5af
	.long	0x5df
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x27
	.long	.LASF1
	.byte	0x1
	.value	0x5b0
	.long	0xa22
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x28
	.string	"p"
	.byte	0x1
	.value	0x5b2
	.long	0x3607
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x29
	.long	0x400a
	.string	"lookup_for_remove"
	.byte	0x1
	.value	0x5c4
	.byte	0x1
	.long	0x3607
	.long	.LFB31
	.long	.LFE31
	.long	.LLST16
	.uleb128 0x2a
	.string	"x"
	.byte	0x1
	.value	0x5c1
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x27
	.long	.LASF28
	.byte	0x1
	.value	0x5c2
	.long	0x5df
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x27
	.long	.LASF1
	.byte	0x1
	.value	0x5c3
	.long	0xa22
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x28
	.string	"p"
	.byte	0x1
	.value	0x5c5
	.long	0x3607
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2b
	.long	.LBB21
	.long	.LBE21
	.uleb128 0x2c
	.long	.LASF19
	.byte	0x1
	.value	0x5c9
	.long	0x5df
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x29
	.long	0x4060
	.string	"lookup_as_function"
	.byte	0x1
	.value	0x5e3
	.byte	0x1
	.long	0x98
	.long	.LFB32
	.long	.LFE32
	.long	.LLST17
	.uleb128 0x2a
	.string	"x"
	.byte	0x1
	.value	0x5e1
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x27
	.long	.LASF0
	.byte	0x1
	.value	0x5e2
	.long	0xd1a
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x28
	.string	"p"
	.byte	0x1
	.value	0x5e4
	.long	0x3607
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x29
	.long	0x422f
	.string	"insert"
	.byte	0x1
	.value	0x61f
	.byte	0x1
	.long	0x3607
	.long	.LFB33
	.long	.LFE33
	.long	.LLST18
	.uleb128 0x2a
	.string	"x"
	.byte	0x1
	.value	0x61b
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x27
	.long	.LASF24
	.byte	0x1
	.value	0x61c
	.long	0x3607
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x27
	.long	.LASF28
	.byte	0x1
	.value	0x61d
	.long	0x5df
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x27
	.long	.LASF1
	.byte	0x1
	.value	0x61e
	.long	0xa22
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x28
	.string	"elt"
	.byte	0x1
	.value	0x620
	.long	0x3607
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2e
	.long	0x4106
	.long	.LBB22
	.long	.LBE22
	.uleb128 0x2c
	.long	.LASF19
	.byte	0x1
	.value	0x62a
	.long	0x5df
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2c
	.long	.LASF27
	.byte	0x1
	.value	0x62b
	.long	0x5df
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.value	0x62c
	.long	0x5df
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.byte	0x0
	.uleb128 0x2e
	.long	0x4122
	.long	.LBB23
	.long	.LBE23
	.uleb128 0x28
	.string	"p"
	.byte	0x1
	.value	0x65b
	.long	0x3607
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.byte	0x0
	.uleb128 0x2e
	.long	0x414d
	.long	.LBB24
	.long	.LBE24
	.uleb128 0x28
	.string	"p"
	.byte	0x1
	.value	0x667
	.long	0x3607
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2c
	.long	.LASF10
	.byte	0x1
	.value	0x667
	.long	0x3607
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.byte	0x0
	.uleb128 0x2e
	.long	0x417f
	.long	.LBB25
	.long	.LBE25
	.uleb128 0x28
	.string	"exp_q"
	.byte	0x1
	.value	0x68b
	.long	0x390
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x28
	.string	"exp_ent"
	.byte	0x1
	.value	0x68c
	.long	0x3bf1
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.byte	0x0
	.uleb128 0x2e
	.long	0x41c2
	.long	.LBB26
	.long	.LBE26
	.uleb128 0x28
	.string	"p"
	.byte	0x1
	.value	0x697
	.long	0x3607
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2b
	.long	.LBB27
	.long	.LBE27
	.uleb128 0x28
	.string	"x_q"
	.byte	0x1
	.value	0x69d
	.long	0x390
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2c
	.long	.LASF29
	.byte	0x1
	.value	0x69e
	.long	0x3bf1
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
	.long	0x421e
	.long	.LBB28
	.long	.LBE28
	.uleb128 0x28
	.string	"subexp"
	.byte	0x1
	.value	0x6b2
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.string	"subhash"
	.byte	0x1
	.value	0x6b3
	.long	0x5df
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x28
	.string	"subelt"
	.byte	0x1
	.value	0x6b4
	.long	0x3607
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x28
	.string	"subelt_prev"
	.byte	0x1
	.value	0x6b4
	.long	0x3607
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x30
	.long	.LASF26
	.long	0x7022
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.13074
	.byte	0x0
	.uleb128 0x2f
	.long	0x42e1
	.string	"merge_equiv_classes"
	.byte	0x1
	.value	0x6da
	.byte	0x1
	.long	.LFB34
	.long	.LFE34
	.long	.LLST19
	.uleb128 0x2a
	.string	"class1"
	.byte	0x1
	.value	0x6d9
	.long	0x3607
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2a
	.string	"class2"
	.byte	0x1
	.value	0x6d9
	.long	0x3607
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x28
	.string	"elt"
	.byte	0x1
	.value	0x6db
	.long	0x3607
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2c
	.long	.LASF10
	.byte	0x1
	.value	0x6db
	.long	0x3607
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x28
	.string	"new"
	.byte	0x1
	.value	0x6db
	.long	0x3607
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2b
	.long	.LBB29
	.long	.LBE29
	.uleb128 0x2c
	.long	.LASF28
	.byte	0x1
	.value	0x6e7
	.long	0x5df
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x28
	.string	"exp"
	.byte	0x1
	.value	0x6e8
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2c
	.long	.LASF1
	.byte	0x1
	.value	0x6e9
	.long	0xa22
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
	.long	0x4322
	.string	"flush_hash_table"
	.byte	0x1
	.value	0x709
	.byte	0x1
	.long	.LFB35
	.long	.LFE35
	.long	.LLST20
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.value	0x70a
	.long	0x390
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x28
	.string	"p"
	.byte	0x1
	.value	0x70b
	.long	0x3607
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0xe
	.long	0x4360
	.string	"check_dependence_data"
	.byte	0x8
	.byte	0x1
	.value	0x71b
	.uleb128 0x1f
	.long	.LASF1
	.byte	0x1
	.value	0x71c
	.long	0xa22
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.string	"exp"
	.byte	0x1
	.value	0x71d
	.long	0x98
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x29
	.long	0x43b4
	.string	"check_dependence"
	.byte	0x1
	.value	0x724
	.byte	0x1
	.long	0x390
	.long	.LFB36
	.long	.LFE36
	.long	.LLST21
	.uleb128 0x2a
	.string	"x"
	.byte	0x1
	.value	0x722
	.long	0x1954
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x27
	.long	.LASF9
	.byte	0x1
	.value	0x723
	.long	0x6e2
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x28
	.string	"d"
	.byte	0x1
	.value	0x725
	.long	0x43b4
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x4322
	.uleb128 0x2f
	.long	0x4521
	.string	"invalidate"
	.byte	0x1
	.value	0x73c
	.byte	0x1
	.long	.LFB37
	.long	.LFE37
	.long	.LLST22
	.uleb128 0x2a
	.string	"x"
	.byte	0x1
	.value	0x73a
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2a
	.string	"full_mode"
	.byte	0x1
	.value	0x73b
	.long	0xa22
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.value	0x73d
	.long	0x390
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x28
	.string	"p"
	.byte	0x1
	.value	0x73e
	.long	0x3607
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2e
	.long	0x44db
	.long	.LBB30
	.long	.LBE30
	.uleb128 0x2c
	.long	.LASF19
	.byte	0x1
	.value	0x748
	.long	0x5df
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2c
	.long	.LASF28
	.byte	0x1
	.value	0x749
	.long	0x5df
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2e
	.long	0x4460
	.long	.LBB31
	.long	.LBE31
	.uleb128 0x28
	.string	"elt"
	.byte	0x1
	.value	0x75c
	.long	0x3607
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.byte	0x0
	.uleb128 0x2b
	.long	.LBB32
	.long	.LBE32
	.uleb128 0x2c
	.long	.LASF30
	.byte	0x1
	.value	0x763
	.long	0x67b
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2c
	.long	.LASF27
	.byte	0x1
	.value	0x765
	.long	0x5df
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x28
	.string	"tregno"
	.byte	0x1
	.value	0x767
	.long	0x5df
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x28
	.string	"tendregno"
	.byte	0x1
	.value	0x767
	.long	0x5df
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x28
	.string	"rn"
	.byte	0x1
	.value	0x767
	.long	0x5df
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.string	"p"
	.byte	0x1
	.value	0x768
	.long	0x3607
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2c
	.long	.LASF10
	.byte	0x1
	.value	0x768
	.long	0x3607
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
	.long	0x4510
	.long	.LBB33
	.long	.LBE33
	.uleb128 0x2c
	.long	.LASF10
	.byte	0x1
	.value	0x7a4
	.long	0x3607
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2b
	.long	.LBB34
	.long	.LBE34
	.uleb128 0x28
	.string	"d"
	.byte	0x1
	.value	0x7ab
	.long	0x4322
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.byte	0x0
	.byte	0x0
	.uleb128 0x30
	.long	.LASF26
	.long	0x700d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.13561
	.byte	0x0
	.uleb128 0x2f
	.long	0x4583
	.string	"remove_invalid_refs"
	.byte	0x1
	.value	0x7c9
	.byte	0x1
	.long	.LFB38
	.long	.LFE38
	.long	.LLST23
	.uleb128 0x27
	.long	.LASF19
	.byte	0x1
	.value	0x7c8
	.long	0x5df
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.value	0x7ca
	.long	0x5df
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x28
	.string	"p"
	.byte	0x1
	.value	0x7cb
	.long	0x3607
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2c
	.long	.LASF10
	.byte	0x1
	.value	0x7cb
	.long	0x3607
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2f
	.long	0x4632
	.string	"remove_invalid_subreg_refs"
	.byte	0x1
	.value	0x7de
	.byte	0x1
	.long	.LFB39
	.long	.LFE39
	.long	.LLST24
	.uleb128 0x27
	.long	.LASF19
	.byte	0x1
	.value	0x7db
	.long	0x5df
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x27
	.long	.LASF6
	.byte	0x1
	.value	0x7dc
	.long	0x5df
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x27
	.long	.LASF1
	.byte	0x1
	.value	0x7dd
	.long	0xa22
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.value	0x7df
	.long	0x5df
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x28
	.string	"p"
	.byte	0x1
	.value	0x7e0
	.long	0x3607
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2c
	.long	.LASF10
	.byte	0x1
	.value	0x7e0
	.long	0x3607
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x28
	.string	"end"
	.byte	0x1
	.value	0x7e1
	.long	0x5df
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2b
	.long	.LBB35
	.long	.LBE35
	.uleb128 0x28
	.string	"exp"
	.byte	0x1
	.value	0x7e6
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
	.long	0x469e
	.string	"rehash_using_reg"
	.byte	0x1
	.value	0x7fd
	.byte	0x1
	.long	.LFB40
	.long	.LFE40
	.long	.LLST25
	.uleb128 0x2a
	.string	"x"
	.byte	0x1
	.value	0x7fc
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.value	0x7fe
	.long	0x5df
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x28
	.string	"p"
	.byte	0x1
	.value	0x7ff
	.long	0x3607
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2c
	.long	.LASF10
	.byte	0x1
	.value	0x7ff
	.long	0x3607
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2c
	.long	.LASF28
	.byte	0x1
	.value	0x800
	.long	0x5df
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2f
	.long	0x472d
	.string	"invalidate_for_call"
	.byte	0x1
	.value	0x82f
	.byte	0x1
	.long	.LFB41
	.long	.LFE41
	.long	.LLST26
	.uleb128 0x2c
	.long	.LASF19
	.byte	0x1
	.value	0x830
	.long	0x5df
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2c
	.long	.LASF27
	.byte	0x1
	.value	0x830
	.long	0x5df
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.value	0x831
	.long	0x5df
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.long	.LASF28
	.byte	0x1
	.value	0x832
	.long	0x5df
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x28
	.string	"p"
	.byte	0x1
	.value	0x833
	.long	0x3607
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2c
	.long	.LASF10
	.byte	0x1
	.value	0x833
	.long	0x3607
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2c
	.long	.LASF30
	.byte	0x1
	.value	0x834
	.long	0x390
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x29
	.long	0x47ca
	.string	"use_related_value"
	.byte	0x1
	.value	0x86c
	.byte	0x1
	.long	0x98
	.long	.LFB42
	.long	.LFE42
	.long	.LLST27
	.uleb128 0x2a
	.string	"x"
	.byte	0x1
	.value	0x86a
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2a
	.string	"elt"
	.byte	0x1
	.value	0x86b
	.long	0x3607
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x28
	.string	"relt"
	.byte	0x1
	.value	0x86d
	.long	0x3607
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.string	"p"
	.byte	0x1
	.value	0x86e
	.long	0x3607
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x28
	.string	"q"
	.byte	0x1
	.value	0x86e
	.long	0x3607
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2c
	.long	.LASF6
	.byte	0x1
	.value	0x86f
	.long	0x67b
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2b
	.long	.LBB36
	.long	.LBE36
	.uleb128 0x28
	.string	"subexp"
	.byte	0x1
	.value	0x879
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.uleb128 0x29
	.long	0x4926
	.string	"canon_hash"
	.byte	0x1
	.value	0x8cd
	.byte	0x1
	.long	0x5df
	.long	.LFB44
	.long	.LFE44
	.long	.LLST28
	.uleb128 0x2a
	.string	"x"
	.byte	0x1
	.value	0x8cb
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x27
	.long	.LASF1
	.byte	0x1
	.value	0x8cc
	.long	0xa22
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.value	0x8ce
	.long	0x390
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x28
	.string	"j"
	.byte	0x1
	.value	0x8ce
	.long	0x390
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2c
	.long	.LASF28
	.byte	0x1
	.value	0x8cf
	.long	0x5df
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2c
	.long	.LASF0
	.byte	0x1
	.value	0x8d0
	.long	0xd1a
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x28
	.string	"fmt"
	.byte	0x1
	.value	0x8d1
	.long	0x37d
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x31
	.string	"repeat"
	.byte	0x1
	.value	0x955
	.long	.L1054
	.uleb128 0x2e
	.long	0x488f
	.long	.LBB37
	.long	.LBE37
	.uleb128 0x2c
	.long	.LASF19
	.byte	0x1
	.value	0x8dd
	.long	0x5df
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.string	"record"
	.byte	0x1
	.value	0x8de
	.long	0x23ae
	.byte	0x2
	.byte	0x91
	.sleb128 -17
	.byte	0x0
	.uleb128 0x2e
	.long	0x48ad
	.long	.LBB38
	.long	.LBE38
	.uleb128 0x28
	.string	"tem"
	.byte	0x1
	.value	0x91c
	.long	0x68c
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.byte	0x0
	.uleb128 0x2e
	.long	0x48db
	.long	.LBB39
	.long	.LBE39
	.uleb128 0x28
	.string	"units"
	.byte	0x1
	.value	0x92e
	.long	0x390
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x28
	.string	"elt"
	.byte	0x1
	.value	0x92f
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x2e
	.long	0x48f8
	.long	.LBB40
	.long	.LBE40
	.uleb128 0x28
	.string	"tem"
	.byte	0x1
	.value	0x9a7
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x2e
	.long	0x4915
	.long	.LBB41
	.long	.LBE41
	.uleb128 0x28
	.string	"tem"
	.byte	0x1
	.value	0x9ba
	.long	0x5df
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x30
	.long	.LASF26
	.long	0x7008
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.14089
	.byte	0x0
	.uleb128 0x29
	.long	0x497c
	.string	"canon_hash_string"
	.byte	0x1
	.value	0x8b1
	.byte	0x1
	.long	0x5df
	.long	.LFB43
	.long	.LFE43
	.long	.LLST29
	.uleb128 0x2a
	.string	"ps"
	.byte	0x1
	.value	0x8b0
	.long	0x37d
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2c
	.long	.LASF28
	.byte	0x1
	.value	0x8b2
	.long	0x5df
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x28
	.string	"p"
	.byte	0x1
	.value	0x8b3
	.long	0x971
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x29
	.long	0x49e9
	.string	"safe_hash"
	.byte	0x1
	.value	0x9cc
	.byte	0x1
	.long	0x5df
	.long	.LFB45
	.long	.LFE45
	.long	.LLST30
	.uleb128 0x2a
	.string	"x"
	.byte	0x1
	.value	0x9ca
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x27
	.long	.LASF1
	.byte	0x1
	.value	0x9cb
	.long	0xa22
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2c
	.long	.LASF31
	.byte	0x1
	.value	0x9cd
	.long	0x390
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2c
	.long	.LASF32
	.byte	0x1
	.value	0x9ce
	.long	0x390
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2c
	.long	.LASF28
	.byte	0x1
	.value	0x9cf
	.long	0x5df
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x29
	.long	0x4b30
	.string	"exp_equiv_p"
	.byte	0x1
	.value	0x9e9
	.byte	0x1
	.long	0x390
	.long	.LFB46
	.long	.LFE46
	.long	.LLST31
	.uleb128 0x2a
	.string	"x"
	.byte	0x1
	.value	0x9e6
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2a
	.string	"y"
	.byte	0x1
	.value	0x9e6
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2a
	.string	"validate"
	.byte	0x1
	.value	0x9e7
	.long	0x390
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2a
	.string	"equal_values"
	.byte	0x1
	.value	0x9e8
	.long	0x390
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.value	0x9ea
	.long	0x390
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x28
	.string	"j"
	.byte	0x1
	.value	0x9ea
	.long	0x390
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2c
	.long	.LASF0
	.byte	0x1
	.value	0x9eb
	.long	0xd1a
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.string	"fmt"
	.byte	0x1
	.value	0x9ec
	.long	0x37d
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2e
	.long	0x4aba
	.long	.LBB42
	.long	.LBE42
	.uleb128 0x28
	.string	"y_q"
	.byte	0x1
	.value	0xa00
	.long	0x390
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x28
	.string	"y_ent"
	.byte	0x1
	.value	0xa01
	.long	0x3bf1
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.byte	0x0
	.uleb128 0x2e
	.long	0x4ae6
	.long	.LBB43
	.long	.LBE43
	.uleb128 0x28
	.string	"x_q"
	.byte	0x1
	.value	0xa0c
	.long	0x390
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.long	.LASF29
	.byte	0x1
	.value	0xa0d
	.long	0x3bf1
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.uleb128 0x2e
	.long	0x4b1f
	.long	.LBB44
	.long	.LBE44
	.uleb128 0x2c
	.long	.LASF19
	.byte	0x1
	.value	0xa2a
	.long	0x5df
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2c
	.long	.LASF27
	.byte	0x1
	.value	0xa2b
	.long	0x5df
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.value	0xa2e
	.long	0x5df
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x30
	.long	.LASF26
	.long	0x6ff3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.14491
	.byte	0x0
	.uleb128 0x29
	.long	0x4c28
	.string	"cse_rtx_varies_p"
	.byte	0x1
	.value	0xaab
	.byte	0x1
	.long	0x390
	.long	.LFB47
	.long	.LFE47
	.long	.LLST32
	.uleb128 0x2a
	.string	"x"
	.byte	0x1
	.value	0xaa9
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2a
	.string	"from_alias"
	.byte	0x1
	.value	0xaaa
	.long	0x390
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2e
	.long	0x4ba9
	.long	.LBB45
	.long	.LBE45
	.uleb128 0x28
	.string	"x_q"
	.byte	0x1
	.value	0xab3
	.long	0x390
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2c
	.long	.LASF29
	.byte	0x1
	.value	0xab4
	.long	0x3bf1
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0x0
	.uleb128 0x2e
	.long	0x4bd9
	.long	.LBB46
	.long	.LBE46
	.uleb128 0x28
	.string	"x0_q"
	.byte	0x1
	.value	0xac0
	.long	0x390
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x28
	.string	"x0_ent"
	.byte	0x1
	.value	0xac1
	.long	0x3bf1
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x2b
	.long	.LBB47
	.long	.LBE47
	.uleb128 0x28
	.string	"x0_q"
	.byte	0x1
	.value	0xad3
	.long	0x390
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x28
	.string	"x1_q"
	.byte	0x1
	.value	0xad4
	.long	0x390
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x28
	.string	"x0_ent"
	.byte	0x1
	.value	0xad5
	.long	0x3bf1
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x28
	.string	"x1_ent"
	.byte	0x1
	.value	0xad6
	.long	0x3bf1
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x29
	.long	0x4d0b
	.string	"canon_reg"
	.byte	0x1
	.value	0xaf1
	.byte	0x1
	.long	0x98
	.long	.LFB48
	.long	.LFE48
	.long	.LLST33
	.uleb128 0x2a
	.string	"x"
	.byte	0x1
	.value	0xaef
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x27
	.long	.LASF33
	.byte	0x1
	.value	0xaf0
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.value	0xaf2
	.long	0x390
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2c
	.long	.LASF0
	.byte	0x1
	.value	0xaf3
	.long	0xd1a
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x28
	.string	"fmt"
	.byte	0x1
	.value	0xaf4
	.long	0x37d
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2e
	.long	0x4ccb
	.long	.LBB48
	.long	.LBE48
	.uleb128 0x2c
	.long	.LASF7
	.byte	0x1
	.value	0xb0a
	.long	0x390
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x28
	.string	"q"
	.byte	0x1
	.value	0xb0b
	.long	0x390
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.string	"ent"
	.byte	0x1
	.value	0xb0c
	.long	0x3bf1
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.uleb128 0x2b
	.long	.LBB49
	.long	.LBE49
	.uleb128 0x28
	.string	"j"
	.byte	0x1
	.value	0xb26
	.long	0x390
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.long	.LBB50
	.long	.LBE50
	.uleb128 0x28
	.string	"new"
	.byte	0x1
	.value	0xb2a
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2c
	.long	.LASF34
	.byte	0x1
	.value	0xb2b
	.long	0x390
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
	.long	0x4f3f
	.string	"find_best_addr"
	.byte	0x1
	.value	0xb56
	.byte	0x1
	.long	.LFB49
	.long	.LFE49
	.long	.LLST34
	.uleb128 0x27
	.long	.LASF33
	.byte	0x1
	.value	0xb53
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2a
	.string	"loc"
	.byte	0x1
	.value	0xb54
	.long	0x1954
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x27
	.long	.LASF1
	.byte	0x1
	.value	0xb55
	.long	0xa22
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x28
	.string	"elt"
	.byte	0x1
	.value	0xb57
	.long	0x3607
	.byte	0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x28
	.string	"addr"
	.byte	0x1
	.value	0xb58
	.long	0x98
	.byte	0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x28
	.string	"p"
	.byte	0x1
	.value	0xb5a
	.long	0x3607
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x28
	.string	"found_better"
	.byte	0x1
	.value	0xb5b
	.long	0x390
	.byte	0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x2c
	.long	.LASF31
	.byte	0x1
	.value	0xb5d
	.long	0x390
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2c
	.long	.LASF32
	.byte	0x1
	.value	0xb5e
	.long	0x390
	.byte	0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x28
	.string	"addr_volatile"
	.byte	0x1
	.value	0xb5f
	.long	0x390
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2c
	.long	.LASF19
	.byte	0x1
	.value	0xb60
	.long	0x390
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2c
	.long	.LASF28
	.byte	0x1
	.value	0xb61
	.long	0x5df
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2e
	.long	0x4e52
	.long	.LBB51
	.long	.LBE51
	.uleb128 0x28
	.string	"folded"
	.byte	0x1
	.value	0xb80
	.long	0x98
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x28
	.string	"addr_folded_cost"
	.byte	0x1
	.value	0xb81
	.long	0x390
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x28
	.string	"addr_cost"
	.byte	0x1
	.value	0xb82
	.long	0x390
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.byte	0x0
	.uleb128 0x2e
	.long	0x4ea1
	.long	.LBB52
	.long	.LBE52
	.uleb128 0x2c
	.long	.LASF35
	.byte	0x1
	.value	0xbb8
	.long	0x390
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2c
	.long	.LASF36
	.byte	0x1
	.value	0xbb9
	.long	0x390
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x28
	.string	"exp_cost"
	.byte	0x1
	.value	0xbba
	.long	0x390
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2c
	.long	.LASF37
	.byte	0x1
	.value	0xbbb
	.long	0x3607
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.byte	0x0
	.uleb128 0x2b
	.long	.LBB53
	.long	.LBE53
	.uleb128 0x28
	.string	"op1"
	.byte	0x1
	.value	0xbe8
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2b
	.long	.LBB54
	.long	.LBE54
	.uleb128 0x2c
	.long	.LASF35
	.byte	0x1
	.value	0xbfd
	.long	0x390
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2c
	.long	.LASF36
	.byte	0x1
	.value	0xbfe
	.long	0x390
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.long	.LASF37
	.byte	0x1
	.value	0xbff
	.long	0x3607
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x28
	.string	"best_rtx"
	.byte	0x1
	.value	0xc00
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x28
	.string	"count"
	.byte	0x1
	.value	0xc01
	.long	0x390
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2b
	.long	.LBB55
	.long	.LBE55
	.uleb128 0x28
	.string	"new"
	.byte	0x1
	.value	0xc11
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2c
	.long	.LASF38
	.byte	0x1
	.value	0xc13
	.long	0x390
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x29
	.long	0x505a
	.string	"find_comparison_args"
	.byte	0x1
	.value	0xc41
	.byte	0x1
	.long	0xd1a
	.long	.LFB50
	.long	.LFE50
	.long	.LLST35
	.uleb128 0x27
	.long	.LASF0
	.byte	0x1
	.value	0xc3e
	.long	0xd1a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2a
	.string	"parg1"
	.byte	0x1
	.value	0xc3f
	.long	0x1954
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2a
	.string	"parg2"
	.byte	0x1
	.value	0xc3f
	.long	0x1954
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2a
	.string	"pmode1"
	.byte	0x1
	.value	0xc40
	.long	0x505a
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x2a
	.string	"pmode2"
	.byte	0x1
	.value	0xc40
	.long	0x505a
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x28
	.string	"arg1"
	.byte	0x1
	.value	0xc42
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x28
	.string	"arg2"
	.byte	0x1
	.value	0xc42
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2b
	.long	.LBB56
	.long	.LBE56
	.uleb128 0x28
	.string	"x"
	.byte	0x1
	.value	0xc4b
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.string	"reverse_code"
	.byte	0x1
	.value	0xc4c
	.long	0x390
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x28
	.string	"p"
	.byte	0x1
	.value	0xc4d
	.long	0x3607
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2e
	.long	0x503a
	.long	.LBB57
	.long	.LBE57
	.uleb128 0x2c
	.long	.LASF39
	.byte	0x1
	.value	0xc93
	.long	0xa22
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x2b
	.long	.LBB58
	.long	.LBE58
	.uleb128 0x28
	.string	"reversed"
	.byte	0x1
	.value	0xce1
	.long	0xd1a
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0xa22
	.uleb128 0x29
	.long	0x571b
	.string	"fold_rtx"
	.byte	0x1
	.value	0xd05
	.byte	0x1
	.long	0x98
	.long	.LFB51
	.long	.LFE51
	.long	.LLST36
	.uleb128 0x2a
	.string	"x"
	.byte	0x1
	.value	0xd03
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x27
	.long	.LASF33
	.byte	0x1
	.value	0xd04
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2c
	.long	.LASF0
	.byte	0x1
	.value	0xd06
	.long	0xd1a
	.byte	0x3
	.byte	0x91
	.sleb128 -284
	.uleb128 0x2c
	.long	.LASF1
	.byte	0x1
	.value	0xd07
	.long	0xa22
	.byte	0x3
	.byte	0x91
	.sleb128 -280
	.uleb128 0x28
	.string	"fmt"
	.byte	0x1
	.value	0xd08
	.long	0x37d
	.byte	0x3
	.byte	0x91
	.sleb128 -276
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.value	0xd09
	.long	0x390
	.byte	0x3
	.byte	0x91
	.sleb128 -272
	.uleb128 0x28
	.string	"new"
	.byte	0x1
	.value	0xd0a
	.long	0x98
	.byte	0x3
	.byte	0x91
	.sleb128 -268
	.uleb128 0x28
	.string	"copied"
	.byte	0x1
	.value	0xd0b
	.long	0x390
	.byte	0x3
	.byte	0x91
	.sleb128 -264
	.uleb128 0x28
	.string	"must_swap"
	.byte	0x1
	.value	0xd0c
	.long	0x390
	.byte	0x3
	.byte	0x91
	.sleb128 -260
	.uleb128 0x28
	.string	"folded_arg0"
	.byte	0x1
	.value	0xd0f
	.long	0x98
	.byte	0x3
	.byte	0x91
	.sleb128 -288
	.uleb128 0x28
	.string	"folded_arg1"
	.byte	0x1
	.value	0xd10
	.long	0x98
	.byte	0x3
	.byte	0x91
	.sleb128 -292
	.uleb128 0x28
	.string	"const_arg0"
	.byte	0x1
	.value	0xd14
	.long	0x98
	.byte	0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0x28
	.string	"const_arg1"
	.byte	0x1
	.value	0xd15
	.long	0x98
	.byte	0x3
	.byte	0x91
	.sleb128 -252
	.uleb128 0x28
	.string	"const_arg2"
	.byte	0x1
	.value	0xd16
	.long	0x98
	.byte	0x3
	.byte	0x91
	.sleb128 -248
	.uleb128 0x28
	.string	"mode_arg0"
	.byte	0x1
	.value	0xd1a
	.long	0xa22
	.byte	0x3
	.byte	0x91
	.sleb128 -296
	.uleb128 0x31
	.string	"from_plus"
	.byte	0x1
	.value	0x1086
	.long	.L2190
	.uleb128 0x2e
	.long	0x51d0
	.long	.LBB59
	.long	.LBE59
	.uleb128 0x2c
	.long	.LASF10
	.byte	0x1
	.value	0xd3f
	.long	0x98
	.byte	0x3
	.byte	0x91
	.sleb128 -244
	.byte	0x0
	.uleb128 0x2e
	.long	0x5200
	.long	.LBB60
	.long	.LBE60
	.uleb128 0x28
	.string	"imode"
	.byte	0x1
	.value	0xd5a
	.long	0xa22
	.byte	0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x28
	.string	"elt"
	.byte	0x1
	.value	0xd5b
	.long	0x3607
	.byte	0x3
	.byte	0x91
	.sleb128 -236
	.byte	0x0
	.uleb128 0x2e
	.long	0x5284
	.long	.LBB61
	.long	.LBE61
	.uleb128 0x28
	.string	"elt"
	.byte	0x1
	.value	0xd94
	.long	0x3607
	.byte	0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x2b
	.long	.LBB62
	.long	.LBE62
	.uleb128 0x28
	.string	"eltcode"
	.byte	0x1
	.value	0xda1
	.long	0xd1a
	.byte	0x3
	.byte	0x91
	.sleb128 -228
	.uleb128 0x2e
	.long	0x5258
	.long	.LBB63
	.long	.LBE63
	.uleb128 0x28
	.string	"op0"
	.byte	0x1
	.value	0xdac
	.long	0x98
	.byte	0x3
	.byte	0x91
	.sleb128 -224
	.byte	0x0
	.uleb128 0x2b
	.long	.LBB64
	.long	.LBE64
	.uleb128 0x28
	.string	"op0"
	.byte	0x1
	.value	0xdc5
	.long	0x98
	.byte	0x3
	.byte	0x91
	.sleb128 -220
	.uleb128 0x28
	.string	"op1"
	.byte	0x1
	.value	0xdc6
	.long	0x98
	.byte	0x3
	.byte	0x91
	.sleb128 -216
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
	.long	0x53b3
	.long	.LBB65
	.long	.LBE65
	.uleb128 0x28
	.string	"addr"
	.byte	0x1
	.value	0xe0f
	.long	0x98
	.byte	0x3
	.byte	0x91
	.sleb128 -212
	.uleb128 0x28
	.string	"base"
	.byte	0x1
	.value	0xe10
	.long	0x98
	.byte	0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x2c
	.long	.LASF6
	.byte	0x1
	.value	0xe11
	.long	0x67b
	.byte	0x3
	.byte	0x91
	.sleb128 -312
	.uleb128 0x2e
	.long	0x52f9
	.long	.LBB66
	.long	.LBE66
	.uleb128 0x28
	.string	"addr_q"
	.byte	0x1
	.value	0xe16
	.long	0x390
	.byte	0x3
	.byte	0x91
	.sleb128 -204
	.uleb128 0x28
	.string	"addr_ent"
	.byte	0x1
	.value	0xe17
	.long	0x3bf1
	.byte	0x3
	.byte	0x91
	.sleb128 -200
	.byte	0x0
	.uleb128 0x2e
	.long	0x5343
	.long	.LBB67
	.long	.LBE67
	.uleb128 0x28
	.string	"constant"
	.byte	0x1
	.value	0xe32
	.long	0x98
	.byte	0x3
	.byte	0x91
	.sleb128 -196
	.uleb128 0x28
	.string	"const_mode"
	.byte	0x1
	.value	0xe33
	.long	0xa22
	.byte	0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x28
	.string	"new"
	.byte	0x1
	.value	0xe34
	.long	0x98
	.byte	0x3
	.byte	0x91
	.sleb128 -188
	.byte	0x0
	.uleb128 0x2b
	.long	.LBB68
	.long	.LBE68
	.uleb128 0x28
	.string	"label"
	.byte	0x1
	.value	0xe58
	.long	0x98
	.byte	0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x28
	.string	"table_insn"
	.byte	0x1
	.value	0xe59
	.long	0x98
	.byte	0x3
	.byte	0x91
	.sleb128 -180
	.uleb128 0x2e
	.long	0x5395
	.long	.LBB69
	.long	.LBE69
	.uleb128 0x28
	.string	"table"
	.byte	0x1
	.value	0xe5e
	.long	0x98
	.byte	0x3
	.byte	0x91
	.sleb128 -176
	.byte	0x0
	.uleb128 0x2b
	.long	.LBB70
	.long	.LBE70
	.uleb128 0x28
	.string	"table"
	.byte	0x1
	.value	0xe69
	.long	0x98
	.byte	0x3
	.byte	0x91
	.sleb128 -172
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
	.long	0x54e7
	.long	.LBB71
	.long	.LBE71
	.uleb128 0x28
	.string	"arg"
	.byte	0x1
	.value	0xea3
	.long	0x98
	.byte	0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x28
	.string	"folded_arg"
	.byte	0x1
	.value	0xea4
	.long	0x98
	.byte	0x3
	.byte	0x91
	.sleb128 -164
	.uleb128 0x28
	.string	"const_arg"
	.byte	0x1
	.value	0xea4
	.long	0x98
	.byte	0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x28
	.string	"mode_arg"
	.byte	0x1
	.value	0xea5
	.long	0xa22
	.byte	0x3
	.byte	0x91
	.sleb128 -156
	.uleb128 0x28
	.string	"cheap_arg"
	.byte	0x1
	.value	0xea6
	.long	0x98
	.byte	0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x28
	.string	"expensive_arg"
	.byte	0x1
	.value	0xea6
	.long	0x98
	.byte	0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0x28
	.string	"replacements"
	.byte	0x1
	.value	0xea7
	.long	0x571b
	.byte	0x3
	.byte	0x91
	.sleb128 -320
	.uleb128 0x28
	.string	"j"
	.byte	0x1
	.value	0xea8
	.long	0x390
	.byte	0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x28
	.string	"old_cost"
	.byte	0x1
	.value	0xea9
	.long	0x390
	.byte	0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x2e
	.long	0x54b2
	.long	.LBB72
	.long	.LBE72
	.uleb128 0x28
	.string	"arg_q"
	.byte	0x1
	.value	0xeb3
	.long	0x390
	.byte	0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x28
	.string	"arg_ent"
	.byte	0x1
	.value	0xeb4
	.long	0x3bf1
	.byte	0x3
	.byte	0x91
	.sleb128 -132
	.byte	0x0
	.uleb128 0x2b
	.long	.LBB73
	.long	.LBE73
	.uleb128 0x2c
	.long	.LASF38
	.byte	0x1
	.value	0xf04
	.long	0x390
	.byte	0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x2b
	.long	.LBB74
	.long	.LBE74
	.uleb128 0x28
	.string	"tem"
	.byte	0x1
	.value	0xf1a
	.long	0x98
	.byte	0x3
	.byte	0x91
	.sleb128 -124
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
	.long	0x5505
	.long	.LBB75
	.long	.LBE75
	.uleb128 0x28
	.string	"tem"
	.byte	0x1
	.value	0xf3a
	.long	0x98
	.byte	0x3
	.byte	0x91
	.sleb128 -120
	.byte	0x0
	.uleb128 0x2e
	.long	0x5523
	.long	.LBB76
	.long	.LBE76
	.uleb128 0x2c
	.long	.LASF20
	.byte	0x1
	.value	0xf52
	.long	0x390
	.byte	0x3
	.byte	0x91
	.sleb128 -116
	.byte	0x0
	.uleb128 0x2e
	.long	0x55b9
	.long	.LBB77
	.long	.LBE77
	.uleb128 0x28
	.string	"p0"
	.byte	0x1
	.value	0xf6f
	.long	0x3607
	.byte	0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x28
	.string	"p1"
	.byte	0x1
	.value	0xf6f
	.long	0x3607
	.byte	0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x2c
	.long	.LASF40
	.byte	0x1
	.value	0xf70
	.long	0x98
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2c
	.long	.LASF41
	.byte	0x1
	.value	0xf70
	.long	0x98
	.byte	0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x28
	.string	"mode_arg1"
	.byte	0x1
	.value	0xf71
	.long	0xa22
	.byte	0x3
	.byte	0x91
	.sleb128 -300
	.uleb128 0x2b
	.long	.LBB78
	.long	.LBE78
	.uleb128 0x28
	.string	"qty"
	.byte	0x1
	.value	0xfc1
	.long	0x390
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2b
	.long	.LBB79
	.long	.LBE79
	.uleb128 0x28
	.string	"ent"
	.byte	0x1
	.value	0xfc5
	.long	0x3bf1
	.byte	0x3
	.byte	0x91
	.sleb128 -92
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
	.long	0x563c
	.long	.LBB80
	.long	.LBE80
	.uleb128 0x28
	.string	"y"
	.byte	0x1
	.value	0xfde
	.long	0x98
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2c
	.long	.LASF42
	.byte	0x1
	.value	0xfdf
	.long	0x98
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2b
	.long	.LBB81
	.long	.LBE81
	.uleb128 0x28
	.string	"sign_bitnum"
	.byte	0x1
	.value	0xfe6
	.long	0x390
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x28
	.string	"has_sign"
	.byte	0x1
	.value	0xfe7
	.long	0x390
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2c
	.long	.LASF40
	.byte	0x1
	.value	0xfea
	.long	0x98
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2c
	.long	.LASF41
	.byte	0x1
	.value	0xfea
	.long	0x98
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
	.long	0x5657
	.long	.LBB82
	.long	.LBE82
	.uleb128 0x28
	.string	"y"
	.byte	0x1
	.value	0x102f
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.byte	0x0
	.uleb128 0x2e
	.long	0x5672
	.long	.LBB83
	.long	.LBE83
	.uleb128 0x28
	.string	"y"
	.byte	0x1
	.value	0x1043
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.byte	0x0
	.uleb128 0x2e
	.long	0x569c
	.long	.LBB84
	.long	.LBE84
	.uleb128 0x2c
	.long	.LASF43
	.byte	0x1
	.value	0x106b
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.string	"p"
	.byte	0x1
	.value	0x106c
	.long	0x3607
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.byte	0x0
	.uleb128 0x2e
	.long	0x56b7
	.long	.LBB85
	.long	.LBE85
	.uleb128 0x28
	.string	"y"
	.byte	0x1
	.value	0x107d
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.byte	0x0
	.uleb128 0x2b
	.long	.LBB86
	.long	.LBE86
	.uleb128 0x28
	.string	"is_shift"
	.byte	0x1
	.value	0x1095
	.long	0x390
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x28
	.string	"y"
	.byte	0x1
	.value	0x1097
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.long	.LASF42
	.byte	0x1
	.value	0x1098
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x28
	.string	"associate_code"
	.byte	0x1
	.value	0x1099
	.long	0xd1a
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2c
	.long	.LASF43
	.byte	0x1
	.value	0x109a
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
	.long	0x572b
	.long	0x98
	.uleb128 0x12
	.long	0x5f6
	.byte	0x1
	.byte	0x0
	.uleb128 0x29
	.long	0x57a6
	.string	"equiv_constant"
	.byte	0x1
	.value	0x1112
	.byte	0x1
	.long	0x98
	.long	.LFB52
	.long	.LFE52
	.long	.LLST37
	.uleb128 0x2a
	.string	"x"
	.byte	0x1
	.value	0x1111
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.long	0x578c
	.long	.LBB87
	.long	.LBE87
	.uleb128 0x28
	.string	"x_q"
	.byte	0x1
	.value	0x1116
	.long	0x390
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2c
	.long	.LASF29
	.byte	0x1
	.value	0x1117
	.long	0x3bf1
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x2b
	.long	.LBB88
	.long	.LBE88
	.uleb128 0x28
	.string	"elt"
	.byte	0x1
	.value	0x1127
	.long	0x3607
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x2d
	.long	0x582f
	.byte	0x1
	.string	"gen_lowpart_if_possible"
	.byte	0x1
	.value	0x1146
	.byte	0x1
	.long	0x98
	.long	.LFB53
	.long	.LFE53
	.long	.LLST38
	.uleb128 0x27
	.long	.LASF1
	.byte	0x1
	.value	0x1144
	.long	0xa22
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2a
	.string	"x"
	.byte	0x1
	.value	0x1145
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x28
	.string	"result"
	.byte	0x1
	.value	0x1147
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.long	.LBB89
	.long	.LBE89
	.uleb128 0x2c
	.long	.LASF6
	.byte	0x1
	.value	0x114e
	.long	0x390
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x28
	.string	"new"
	.byte	0x1
	.value	0x114f
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
	.long	0x590e
	.string	"record_jump_equiv"
	.byte	0x1
	.value	0x1173
	.byte	0x1
	.long	.LFB54
	.long	.LFE54
	.long	.LLST39
	.uleb128 0x27
	.long	.LASF33
	.byte	0x1
	.value	0x1171
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2a
	.string	"taken"
	.byte	0x1
	.value	0x1172
	.long	0x390
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x28
	.string	"cond_known_true"
	.byte	0x1
	.value	0x1174
	.long	0x390
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x28
	.string	"op0"
	.byte	0x1
	.value	0x1175
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x28
	.string	"op1"
	.byte	0x1
	.value	0x1175
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.string	"set"
	.byte	0x1
	.value	0x1176
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2c
	.long	.LASF1
	.byte	0x1
	.value	0x1177
	.long	0xa22
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x28
	.string	"mode0"
	.byte	0x1
	.value	0x1177
	.long	0xa22
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x28
	.string	"mode1"
	.byte	0x1
	.value	0x1177
	.long	0xa22
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2c
	.long	.LASF44
	.byte	0x1
	.value	0x1178
	.long	0x390
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2c
	.long	.LASF0
	.byte	0x1
	.value	0x1179
	.long	0xd1a
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2f
	.long	0x5adb
	.string	"record_jump_cond"
	.byte	0x1
	.value	0x11aa
	.byte	0x1
	.long	.LFB55
	.long	.LFE55
	.long	.LLST40
	.uleb128 0x27
	.long	.LASF0
	.byte	0x1
	.value	0x11a6
	.long	0xd1a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x27
	.long	.LASF1
	.byte	0x1
	.value	0x11a7
	.long	0xa22
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2a
	.string	"op0"
	.byte	0x1
	.value	0x11a8
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2a
	.string	"op1"
	.byte	0x1
	.value	0x11a8
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x27
	.long	.LASF44
	.byte	0x1
	.value	0x11a9
	.long	0x390
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x28
	.string	"op0_hash"
	.byte	0x1
	.value	0x11ab
	.long	0x5df
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x28
	.string	"op1_hash"
	.byte	0x1
	.value	0x11ab
	.long	0x5df
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x28
	.string	"op0_in_memory"
	.byte	0x1
	.value	0x11ac
	.long	0x390
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x28
	.string	"op1_in_memory"
	.byte	0x1
	.value	0x11ac
	.long	0x390
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x28
	.string	"op0_elt"
	.byte	0x1
	.value	0x11ad
	.long	0x3607
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x28
	.string	"op1_elt"
	.byte	0x1
	.value	0x11ad
	.long	0x3607
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2e
	.long	0x5a2e
	.long	.LBB90
	.long	.LBE90
	.uleb128 0x2c
	.long	.LASF39
	.byte	0x1
	.value	0x11b9
	.long	0xa22
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x28
	.string	"tem"
	.byte	0x1
	.value	0x11ba
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.byte	0x0
	.uleb128 0x2e
	.long	0x5a5a
	.long	.LBB91
	.long	.LBE91
	.uleb128 0x2c
	.long	.LASF39
	.byte	0x1
	.value	0x11c5
	.long	0xa22
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x28
	.string	"tem"
	.byte	0x1
	.value	0x11c6
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0x0
	.uleb128 0x2e
	.long	0x5a86
	.long	.LBB92
	.long	.LBE92
	.uleb128 0x2c
	.long	.LASF39
	.byte	0x1
	.value	0x11d9
	.long	0xa22
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x28
	.string	"tem"
	.byte	0x1
	.value	0x11da
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x2e
	.long	0x5ab2
	.long	.LBB93
	.long	.LBE93
	.uleb128 0x2c
	.long	.LASF39
	.byte	0x1
	.value	0x11e6
	.long	0xa22
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x28
	.string	"tem"
	.byte	0x1
	.value	0x11e7
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x2b
	.long	.LBB94
	.long	.LBE94
	.uleb128 0x28
	.string	"ent"
	.byte	0x1
	.value	0x1213
	.long	0x3bf1
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x28
	.string	"qty"
	.byte	0x1
	.value	0x1214
	.long	0x390
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.long	0x5bd5
	.string	"set"
	.byte	0x30
	.byte	0x1
	.value	0x1283
	.uleb128 0xf
	.string	"rtl"
	.byte	0x1
	.value	0x1285
	.long	0x98
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.string	"src"
	.byte	0x1
	.value	0x1287
	.long	0x98
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1f
	.long	.LASF45
	.byte	0x1
	.value	0x1289
	.long	0x3607
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1f
	.long	.LASF46
	.byte	0x1
	.value	0x128b
	.long	0x5df
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xf
	.string	"dest_hash"
	.byte	0x1
	.value	0x128d
	.long	0x5df
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x1f
	.long	.LASF47
	.byte	0x1
	.value	0x128f
	.long	0x98
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xf
	.string	"src_in_memory"
	.byte	0x1
	.value	0x1291
	.long	0x388
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xf
	.string	"src_volatile"
	.byte	0x1
	.value	0x1294
	.long	0x388
	.byte	0x2
	.byte	0x23
	.uleb128 0x19
	.uleb128 0x1f
	.long	.LASF1
	.byte	0x1
	.value	0x1296
	.long	0xa22
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x1f
	.long	.LASF48
	.byte	0x1
	.value	0x1298
	.long	0x98
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xf
	.string	"orig_src"
	.byte	0x1
	.value	0x129a
	.long	0x98
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xf
	.string	"src_const_hash"
	.byte	0x1
	.value	0x129c
	.long	0x5df
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x1f
	.long	.LASF49
	.byte	0x1
	.value	0x129e
	.long	0x3607
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.byte	0x0
	.uleb128 0x2f
	.long	0x64af
	.string	"cse_insn"
	.byte	0x1
	.value	0x12a5
	.byte	0x1
	.long	.LFB56
	.long	.LFE56
	.long	.LLST41
	.uleb128 0x27
	.long	.LASF33
	.byte	0x1
	.value	0x12a3
	.long	0x98
	.byte	0x3
	.byte	0x91
	.sleb128 -412
	.uleb128 0x27
	.long	.LASF50
	.byte	0x1
	.value	0x12a4
	.long	0x98
	.byte	0x3
	.byte	0x91
	.sleb128 -416
	.uleb128 0x28
	.string	"x"
	.byte	0x1
	.value	0x12a6
	.long	0x98
	.byte	0x3
	.byte	0x91
	.sleb128 -404
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.value	0x12a7
	.long	0x390
	.byte	0x3
	.byte	0x91
	.sleb128 -400
	.uleb128 0x28
	.string	"tem"
	.byte	0x1
	.value	0x12a8
	.long	0x98
	.byte	0x3
	.byte	0x91
	.sleb128 -396
	.uleb128 0x28
	.string	"n_sets"
	.byte	0x1
	.value	0x12a9
	.long	0x390
	.byte	0x3
	.byte	0x91
	.sleb128 -392
	.uleb128 0x28
	.string	"src_eqv"
	.byte	0x1
	.value	0x12b1
	.long	0x98
	.byte	0x3
	.byte	0x91
	.sleb128 -388
	.uleb128 0x28
	.string	"src_eqv_elt"
	.byte	0x1
	.value	0x12b2
	.long	0x3607
	.byte	0x3
	.byte	0x91
	.sleb128 -384
	.uleb128 0x28
	.string	"src_eqv_volatile"
	.byte	0x1
	.value	0x12b3
	.long	0x390
	.byte	0x3
	.byte	0x91
	.sleb128 -380
	.uleb128 0x28
	.string	"src_eqv_in_memory"
	.byte	0x1
	.value	0x12b4
	.long	0x390
	.byte	0x3
	.byte	0x91
	.sleb128 -376
	.uleb128 0x28
	.string	"src_eqv_hash"
	.byte	0x1
	.value	0x12b5
	.long	0x5df
	.byte	0x3
	.byte	0x91
	.sleb128 -372
	.uleb128 0x28
	.string	"sets"
	.byte	0x1
	.value	0x12b7
	.long	0x64af
	.byte	0x3
	.byte	0x91
	.sleb128 -368
	.uleb128 0x2e
	.long	0x5d55
	.long	.LBB95
	.long	.LBE95
	.uleb128 0x28
	.string	"lim"
	.byte	0x1
	.value	0x12ed
	.long	0x390
	.byte	0x3
	.byte	0x91
	.sleb128 -364
	.uleb128 0x2e
	.long	0x5d3c
	.long	.LBB96
	.long	.LBE96
	.uleb128 0x28
	.string	"y"
	.byte	0x1
	.value	0x12fe
	.long	0x98
	.byte	0x3
	.byte	0x91
	.sleb128 -360
	.uleb128 0x2b
	.long	.LBB97
	.long	.LBE97
	.uleb128 0x28
	.string	"clobbered"
	.byte	0x1
	.value	0x1301
	.long	0x98
	.byte	0x3
	.byte	0x91
	.sleb128 -356
	.byte	0x0
	.byte	0x0
	.uleb128 0x2b
	.long	.LBB98
	.long	.LBE98
	.uleb128 0x28
	.string	"y"
	.byte	0x1
	.value	0x130e
	.long	0x98
	.byte	0x3
	.byte	0x91
	.sleb128 -352
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
	.long	0x5da3
	.long	.LBB99
	.long	.LBE99
	.uleb128 0x2c
	.long	.LASF12
	.byte	0x1
	.value	0x1362
	.long	0x98
	.byte	0x3
	.byte	0x91
	.sleb128 -348
	.uleb128 0x28
	.string	"src"
	.byte	0x1
	.value	0x1363
	.long	0x98
	.byte	0x3
	.byte	0x91
	.sleb128 -344
	.uleb128 0x28
	.string	"new"
	.byte	0x1
	.value	0x1364
	.long	0x98
	.byte	0x3
	.byte	0x91
	.sleb128 -340
	.uleb128 0x2c
	.long	.LASF34
	.byte	0x1
	.value	0x1365
	.long	0x390
	.byte	0x3
	.byte	0x91
	.sleb128 -336
	.byte	0x0
	.uleb128 0x2e
	.long	0x621c
	.long	.LBB100
	.long	.LBE100
	.uleb128 0x28
	.string	"src"
	.byte	0x1
	.value	0x1395
	.long	0x98
	.byte	0x3
	.byte	0x91
	.sleb128 -332
	.uleb128 0x2c
	.long	.LASF12
	.byte	0x1
	.value	0x1395
	.long	0x98
	.byte	0x3
	.byte	0x91
	.sleb128 -328
	.uleb128 0x28
	.string	"src_folded"
	.byte	0x1
	.value	0x1396
	.long	0x98
	.byte	0x3
	.byte	0x91
	.sleb128 -324
	.uleb128 0x28
	.string	"elt"
	.byte	0x1
	.value	0x1397
	.long	0x3607
	.byte	0x3
	.byte	0x91
	.sleb128 -320
	.uleb128 0x28
	.string	"p"
	.byte	0x1
	.value	0x1397
	.long	0x3607
	.byte	0x3
	.byte	0x91
	.sleb128 -316
	.uleb128 0x2c
	.long	.LASF1
	.byte	0x1
	.value	0x1398
	.long	0xa22
	.byte	0x3
	.byte	0x91
	.sleb128 -312
	.uleb128 0x28
	.string	"src_eqv_here"
	.byte	0x1
	.value	0x1399
	.long	0x98
	.byte	0x3
	.byte	0x91
	.sleb128 -308
	.uleb128 0x2c
	.long	.LASF48
	.byte	0x1
	.value	0x139a
	.long	0x98
	.byte	0x3
	.byte	0x91
	.sleb128 -304
	.uleb128 0x28
	.string	"src_related"
	.byte	0x1
	.value	0x139b
	.long	0x98
	.byte	0x3
	.byte	0x91
	.sleb128 -300
	.uleb128 0x2c
	.long	.LASF49
	.byte	0x1
	.value	0x139c
	.long	0x3607
	.byte	0x3
	.byte	0x91
	.sleb128 -296
	.uleb128 0x28
	.string	"src_cost"
	.byte	0x1
	.value	0x139d
	.long	0x390
	.byte	0x3
	.byte	0x91
	.sleb128 -292
	.uleb128 0x28
	.string	"src_eqv_cost"
	.byte	0x1
	.value	0x139e
	.long	0x390
	.byte	0x3
	.byte	0x91
	.sleb128 -288
	.uleb128 0x28
	.string	"src_folded_cost"
	.byte	0x1
	.value	0x139f
	.long	0x390
	.byte	0x3
	.byte	0x91
	.sleb128 -284
	.uleb128 0x28
	.string	"src_related_cost"
	.byte	0x1
	.value	0x13a0
	.long	0x390
	.byte	0x3
	.byte	0x91
	.sleb128 -280
	.uleb128 0x28
	.string	"src_elt_cost"
	.byte	0x1
	.value	0x13a1
	.long	0x390
	.byte	0x3
	.byte	0x91
	.sleb128 -276
	.uleb128 0x28
	.string	"src_regcost"
	.byte	0x1
	.value	0x13a2
	.long	0x390
	.byte	0x3
	.byte	0x91
	.sleb128 -272
	.uleb128 0x28
	.string	"src_eqv_regcost"
	.byte	0x1
	.value	0x13a3
	.long	0x390
	.byte	0x3
	.byte	0x91
	.sleb128 -268
	.uleb128 0x28
	.string	"src_folded_regcost"
	.byte	0x1
	.value	0x13a4
	.long	0x390
	.byte	0x3
	.byte	0x91
	.sleb128 -264
	.uleb128 0x28
	.string	"src_related_regcost"
	.byte	0x1
	.value	0x13a5
	.long	0x390
	.byte	0x3
	.byte	0x91
	.sleb128 -260
	.uleb128 0x28
	.string	"src_elt_regcost"
	.byte	0x1
	.value	0x13a6
	.long	0x390
	.byte	0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0x28
	.string	"src_folded_force_flag"
	.byte	0x1
	.value	0x13a9
	.long	0x390
	.byte	0x3
	.byte	0x91
	.sleb128 -252
	.uleb128 0x2e
	.long	0x5fb9
	.long	.LBB101
	.long	.LBE101
	.uleb128 0x28
	.string	"eqvmode"
	.byte	0x1
	.value	0x13b7
	.long	0xa22
	.byte	0x3
	.byte	0x91
	.sleb128 -248
	.byte	0x0
	.uleb128 0x2e
	.long	0x5fe3
	.long	.LBB102
	.long	.LBE102
	.uleb128 0x28
	.string	"src_related_elt"
	.byte	0x1
	.value	0x146d
	.long	0x3607
	.byte	0x3
	.byte	0x91
	.sleb128 -244
	.byte	0x0
	.uleb128 0x2e
	.long	0x6028
	.long	.LBB103
	.long	.LBE103
	.uleb128 0x28
	.string	"wider_mode"
	.byte	0x1
	.value	0x1487
	.long	0xa22
	.byte	0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x2b
	.long	.LBB104
	.long	.LBE104
	.uleb128 0x28
	.string	"const_elt"
	.byte	0x1
	.value	0x148e
	.long	0x3607
	.byte	0x3
	.byte	0x91
	.sleb128 -236
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
	.long	0x6088
	.long	.LBB105
	.long	.LBE105
	.uleb128 0x28
	.string	"tmode"
	.byte	0x1
	.value	0x14a9
	.long	0xa22
	.byte	0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x28
	.string	"new_and"
	.byte	0x1
	.value	0x14aa
	.long	0x98
	.byte	0x3
	.byte	0x91
	.sleb128 -228
	.uleb128 0x2b
	.long	.LBB106
	.long	.LBE106
	.uleb128 0x28
	.string	"inner"
	.byte	0x1
	.value	0x14b0
	.long	0x98
	.byte	0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x2c
	.long	.LASF51
	.byte	0x1
	.value	0x14b1
	.long	0x3607
	.byte	0x3
	.byte	0x91
	.sleb128 -220
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
	.long	0x60c2
	.long	.LBB107
	.long	.LBE107
	.uleb128 0x28
	.string	"tmode"
	.byte	0x1
	.value	0x14d6
	.long	0xa22
	.byte	0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x2b
	.long	.LBB108
	.long	.LBE108
	.uleb128 0x2c
	.long	.LASF51
	.byte	0x1
	.value	0x14e1
	.long	0x3607
	.byte	0x3
	.byte	0x91
	.sleb128 -212
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
	.long	0x60e0
	.long	.LBB109
	.long	.LBE109
	.uleb128 0x2c
	.long	.LASF0
	.byte	0x1
	.value	0x150a
	.long	0xd1a
	.byte	0x3
	.byte	0x91
	.sleb128 -208
	.byte	0x0
	.uleb128 0x2e
	.long	0x6100
	.long	.LBB110
	.long	.LBE110
	.uleb128 0x28
	.string	"trial"
	.byte	0x1
	.value	0x156c
	.long	0x98
	.byte	0x3
	.byte	0x91
	.sleb128 -204
	.byte	0x0
	.uleb128 0x2e
	.long	0x6185
	.long	.LBB111
	.long	.LBE111
	.uleb128 0x28
	.string	"dest_q"
	.byte	0x1
	.value	0x1608
	.long	0x390
	.byte	0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x2c
	.long	.LASF52
	.byte	0x1
	.value	0x1609
	.long	0x3bf1
	.byte	0x3
	.byte	0x91
	.sleb128 -196
	.uleb128 0x2b
	.long	.LBB112
	.long	.LBE112
	.uleb128 0x28
	.string	"src_q"
	.byte	0x1
	.value	0x1616
	.long	0x390
	.byte	0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x28
	.string	"src_ent"
	.byte	0x1
	.value	0x1617
	.long	0x3bf1
	.byte	0x3
	.byte	0x91
	.sleb128 -188
	.uleb128 0x2c
	.long	.LASF7
	.byte	0x1
	.value	0x1618
	.long	0x390
	.byte	0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x28
	.string	"new_src"
	.byte	0x1
	.value	0x1619
	.long	0x98
	.byte	0x3
	.byte	0x91
	.sleb128 -180
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
	.long	0x61e1
	.long	.LBB113
	.long	.LBE113
	.uleb128 0x28
	.string	"dest_q"
	.byte	0x1
	.value	0x1660
	.long	0x390
	.byte	0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x2c
	.long	.LASF52
	.byte	0x1
	.value	0x1661
	.long	0x3bf1
	.byte	0x3
	.byte	0x91
	.sleb128 -172
	.uleb128 0x2b
	.long	.LBB114
	.long	.LBE114
	.uleb128 0x28
	.string	"note"
	.byte	0x1
	.value	0x1666
	.long	0x98
	.byte	0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x2c
	.long	.LASF18
	.byte	0x1
	.value	0x1667
	.long	0x98
	.byte	0x3
	.byte	0x91
	.sleb128 -164
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
	.long	0x6201
	.long	.LBB115
	.long	.LBE115
	.uleb128 0x28
	.string	"width"
	.byte	0x1
	.value	0x169d
	.long	0x98
	.byte	0x3
	.byte	0x91
	.sleb128 -160
	.byte	0x0
	.uleb128 0x2b
	.long	.LBB116
	.long	.LBE116
	.uleb128 0x28
	.string	"new"
	.byte	0x1
	.value	0x16d1
	.long	0x98
	.byte	0x3
	.byte	0x91
	.sleb128 -156
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
	.long	0x626e
	.long	.LBB117
	.long	.LBE117
	.uleb128 0x28
	.string	"elt"
	.byte	0x1
	.value	0x171c
	.long	0x3607
	.byte	0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x2c
	.long	.LASF24
	.byte	0x1
	.value	0x171d
	.long	0x3607
	.byte	0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0x2c
	.long	.LASF12
	.byte	0x1
	.value	0x171e
	.long	0x98
	.byte	0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x28
	.string	"eqvmode"
	.byte	0x1
	.value	0x171f
	.long	0xa22
	.byte	0x3
	.byte	0x91
	.sleb128 -140
	.byte	0x0
	.uleb128 0x2e
	.long	0x62d6
	.long	.LBB118
	.long	.LBE118
	.uleb128 0x2c
	.long	.LASF24
	.byte	0x1
	.value	0x174a
	.long	0x3607
	.byte	0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x28
	.string	"src"
	.byte	0x1
	.value	0x174b
	.long	0x98
	.byte	0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x2c
	.long	.LASF12
	.byte	0x1
	.value	0x174c
	.long	0x98
	.byte	0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x2c
	.long	.LASF1
	.byte	0x1
	.value	0x174d
	.long	0xa22
	.byte	0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x2b
	.long	.LBB119
	.long	.LBE119
	.uleb128 0x28
	.string	"elt"
	.byte	0x1
	.value	0x1757
	.long	0x3607
	.byte	0x3
	.byte	0x91
	.sleb128 -120
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
	.long	0x62f4
	.long	.LBB120
	.long	.LBE120
	.uleb128 0x2c
	.long	.LASF12
	.byte	0x1
	.value	0x178b
	.long	0x98
	.byte	0x3
	.byte	0x91
	.sleb128 -116
	.byte	0x0
	.uleb128 0x2e
	.long	0x6348
	.long	.LBB121
	.long	.LBE121
	.uleb128 0x28
	.string	"x"
	.byte	0x1
	.value	0x17b1
	.long	0x98
	.byte	0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2b
	.long	.LBB122
	.long	.LBE122
	.uleb128 0x2c
	.long	.LASF19
	.byte	0x1
	.value	0x17c3
	.long	0x5df
	.byte	0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x2c
	.long	.LASF27
	.byte	0x1
	.value	0x17c4
	.long	0x5df
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.value	0x17c7
	.long	0x5df
	.byte	0x3
	.byte	0x91
	.sleb128 -100
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
	.long	0x6366
	.long	.LBB123
	.long	.LBE123
	.uleb128 0x28
	.string	"elt"
	.byte	0x1
	.value	0x17df
	.long	0x3607
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.byte	0x0
	.uleb128 0x2e
	.long	0x642f
	.long	.LBB124
	.long	.LBE124
	.uleb128 0x2c
	.long	.LASF12
	.byte	0x1
	.value	0x17ef
	.long	0x98
	.byte	0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x2c
	.long	.LASF47
	.byte	0x1
	.value	0x17f0
	.long	0x98
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x28
	.string	"elt"
	.byte	0x1
	.value	0x17f1
	.long	0x3607
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2b
	.long	.LBB125
	.long	.LBE125
	.uleb128 0x28
	.string	"new_mode"
	.byte	0x1
	.value	0x1849
	.long	0xa22
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x28
	.string	"elt"
	.byte	0x1
	.value	0x184a
	.long	0x3607
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2c
	.long	.LASF24
	.byte	0x1
	.value	0x184a
	.long	0x3607
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2b
	.long	.LBB126
	.long	.LBE126
	.uleb128 0x28
	.string	"new_src"
	.byte	0x1
	.value	0x184f
	.long	0x98
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2c
	.long	.LASF46
	.byte	0x1
	.value	0x1850
	.long	0x5df
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2c
	.long	.LASF45
	.byte	0x1
	.value	0x1851
	.long	0x3607
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x28
	.string	"byte"
	.byte	0x1
	.value	0x1852
	.long	0x390
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2b
	.long	.LBB127
	.long	.LBE127
	.uleb128 0x28
	.string	"src_q"
	.byte	0x1
	.value	0x18a8
	.long	0x390
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x28
	.string	"src_ent"
	.byte	0x1
	.value	0x18a9
	.long	0x3bf1
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2b
	.long	.LBB128
	.long	.LBE128
	.uleb128 0x2c
	.long	.LASF11
	.byte	0x1
	.value	0x18ae
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2b
	.long	.LBB129
	.long	.LBE129
	.uleb128 0x2c
	.long	.LASF12
	.byte	0x1
	.value	0x18c9
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.string	"src"
	.byte	0x1
	.value	0x18ca
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x28
	.string	"note"
	.byte	0x1
	.value	0x18cb
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5adb
	.uleb128 0x2f
	.long	0x6506
	.string	"invalidate_memory"
	.byte	0x1
	.value	0x190b
	.byte	0x1
	.long	.LFB57
	.long	.LFE57
	.long	.LLST42
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.value	0x190c
	.long	0x390
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x28
	.string	"p"
	.byte	0x1
	.value	0x190d
	.long	0x3607
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2c
	.long	.LASF10
	.byte	0x1
	.value	0x190d
	.long	0x3607
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x29
	.long	0x6542
	.string	"addr_affects_sp_p"
	.byte	0x1
	.value	0x191e
	.byte	0x1
	.long	0x390
	.long	.LFB58
	.long	.LFE58
	.long	.LLST43
	.uleb128 0x2a
	.string	"addr"
	.byte	0x1
	.value	0x191d
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x2f
	.long	0x65e2
	.string	"invalidate_from_clobbers"
	.byte	0x1
	.value	0x193e
	.byte	0x1
	.long	.LFB59
	.long	.LFE59
	.long	.LLST44
	.uleb128 0x2a
	.string	"x"
	.byte	0x1
	.value	0x193d
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.long	0x659a
	.long	.LBB130
	.long	.LBE130
	.uleb128 0x28
	.string	"ref"
	.byte	0x1
	.value	0x1941
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x2b
	.long	.LBB131
	.long	.LBE131
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.value	0x194e
	.long	0x390
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2b
	.long	.LBB132
	.long	.LBE132
	.uleb128 0x28
	.string	"y"
	.byte	0x1
	.value	0x1951
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x2b
	.long	.LBB133
	.long	.LBE133
	.uleb128 0x28
	.string	"ref"
	.byte	0x1
	.value	0x1954
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x29
	.long	0x66a7
	.string	"cse_process_notes"
	.byte	0x1
	.value	0x196d
	.byte	0x1
	.long	0x98
	.long	.LFB60
	.long	.LFE60
	.long	.LLST45
	.uleb128 0x2a
	.string	"x"
	.byte	0x1
	.value	0x196b
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2a
	.string	"object"
	.byte	0x1
	.value	0x196c
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2c
	.long	.LASF0
	.byte	0x1
	.value	0x196e
	.long	0xd1a
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x28
	.string	"fmt"
	.byte	0x1
	.value	0x196f
	.long	0x37d
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.value	0x1970
	.long	0x390
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2e
	.long	0x6674
	.long	.LBB134
	.long	.LBE134
	.uleb128 0x28
	.string	"new"
	.byte	0x1
	.value	0x1990
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x2b
	.long	.LBB135
	.long	.LBE135
	.uleb128 0x28
	.string	"ent"
	.byte	0x1
	.value	0x199e
	.long	0x3bf1
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2b
	.long	.LBB136
	.long	.LBE136
	.uleb128 0x28
	.string	"new"
	.byte	0x1
	.value	0x19a4
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
	.long	0x6705
	.string	"cse_around_loop"
	.byte	0x1
	.value	0x19ca
	.byte	0x1
	.long	.LFB61
	.long	.LFE61
	.long	.LLST46
	.uleb128 0x27
	.long	.LASF53
	.byte	0x1
	.value	0x19c9
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2c
	.long	.LASF33
	.byte	0x1
	.value	0x19cb
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.value	0x19cc
	.long	0x390
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x28
	.string	"p"
	.byte	0x1
	.value	0x19cd
	.long	0x3607
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2f
	.long	0x676e
	.string	"invalidate_skipped_set"
	.byte	0x1
	.value	0x1a14
	.byte	0x1
	.long	.LFB62
	.long	.LFE62
	.long	.LLST47
	.uleb128 0x27
	.long	.LASF12
	.byte	0x1
	.value	0x1a12
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2a
	.string	"set"
	.byte	0x1
	.value	0x1a11
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x27
	.long	.LASF9
	.byte	0x1
	.value	0x1a13
	.long	0x6e2
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2c
	.long	.LASF0
	.byte	0x1
	.value	0x1a15
	.long	0xd1a
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2f
	.long	0x67bd
	.string	"invalidate_skipped_block"
	.byte	0x1
	.value	0x1a39
	.byte	0x1
	.long	.LFB63
	.long	.LFE63
	.long	.LLST48
	.uleb128 0x2a
	.string	"start"
	.byte	0x1
	.value	0x1a38
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2c
	.long	.LASF33
	.byte	0x1
	.value	0x1a3a
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2f
	.long	0x6822
	.string	"cse_check_loop_start"
	.byte	0x1
	.value	0x1a57
	.byte	0x1
	.long	.LFB64
	.long	.LFE64
	.long	.LLST49
	.uleb128 0x2a
	.string	"x"
	.byte	0x1
	.value	0x1a54
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2a
	.string	"set"
	.byte	0x1
	.value	0x1a55
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x27
	.long	.LASF9
	.byte	0x1
	.value	0x1a56
	.long	0x6e2
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2c
	.long	.LASF54
	.byte	0x1
	.value	0x1a58
	.long	0x1954
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2f
	.long	0x6911
	.string	"cse_set_around_loop"
	.byte	0x1
	.value	0x1a79
	.byte	0x1
	.long	.LFB65
	.long	.LFE65
	.long	.LLST50
	.uleb128 0x2a
	.string	"x"
	.byte	0x1
	.value	0x1a76
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x27
	.long	.LASF33
	.byte	0x1
	.value	0x1a77
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x27
	.long	.LASF53
	.byte	0x1
	.value	0x1a78
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2c
	.long	.LASF45
	.byte	0x1
	.value	0x1a7a
	.long	0x3607
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2e
	.long	0x6900
	.long	.LBB137
	.long	.LBE137
	.uleb128 0x28
	.string	"p"
	.byte	0x1
	.value	0x1a8c
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x28
	.string	"set"
	.byte	0x1
	.value	0x1a8c
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2b
	.long	.LBB138
	.long	.LBE138
	.uleb128 0x28
	.string	"q"
	.byte	0x1
	.value	0x1aa0
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2c
	.long	.LASF54
	.byte	0x1
	.value	0x1aa1
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.long	.LBB139
	.long	.LBE139
	.uleb128 0x28
	.string	"nregs"
	.byte	0x1
	.value	0x1ab4
	.long	0x390
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x28
	.string	"move"
	.byte	0x1
	.value	0x1ab5
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x30
	.long	.LASF26
	.long	0x6fde
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.21532
	.byte	0x0
	.uleb128 0x26
	.long	0x6a3e
	.byte	0x1
	.string	"cse_end_of_basic_block"
	.byte	0x1
	.value	0x1ae7
	.byte	0x1
	.long	.LFB66
	.long	.LFE66
	.long	.LLST51
	.uleb128 0x27
	.long	.LASF33
	.byte	0x1
	.value	0x1ae2
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x27
	.long	.LASF9
	.byte	0x1
	.value	0x1ae3
	.long	0x6a3e
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2a
	.string	"follow_jumps"
	.byte	0x1
	.value	0x1ae4
	.long	0x390
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x27
	.long	.LASF55
	.byte	0x1
	.value	0x1ae5
	.long	0x390
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x2a
	.string	"skip_blocks"
	.byte	0x1
	.value	0x1ae6
	.long	0x390
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x28
	.string	"p"
	.byte	0x1
	.value	0x1ae8
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x28
	.string	"q"
	.byte	0x1
	.value	0x1ae8
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x28
	.string	"nsets"
	.byte	0x1
	.value	0x1ae9
	.long	0x390
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2c
	.long	.LASF21
	.byte	0x1
	.value	0x1aea
	.long	0x390
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.long	.LASF22
	.byte	0x1
	.value	0x1aea
	.long	0x390
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2c
	.long	.LASF10
	.byte	0x1
	.value	0x1aeb
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2c
	.long	.LASF23
	.byte	0x1
	.value	0x1aec
	.long	0x390
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x28
	.string	"path_entry"
	.byte	0x1
	.value	0x1aed
	.long	0x390
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.value	0x1aee
	.long	0x390
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2b
	.long	.LBB140
	.long	.LBE140
	.uleb128 0x28
	.string	"tmp"
	.byte	0x1
	.value	0x1b7b
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x3674
	.uleb128 0x2d
	.long	0x6b0c
	.byte	0x1
	.string	"cse_main"
	.byte	0x1
	.value	0x1bc4
	.byte	0x1
	.long	0x390
	.long	.LFB67
	.long	.LFE67
	.long	.LLST52
	.uleb128 0x2a
	.string	"f"
	.byte	0x1
	.value	0x1bc0
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2a
	.string	"nregs"
	.byte	0x1
	.value	0x1bc1
	.long	0x390
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x27
	.long	.LASF55
	.byte	0x1
	.value	0x1bc2
	.long	0x390
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2a
	.string	"file"
	.byte	0x1
	.value	0x1bc3
	.long	0x6b0c
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x28
	.string	"val"
	.byte	0x1
	.value	0x1bc5
	.long	0x3674
	.byte	0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x2c
	.long	.LASF33
	.byte	0x1
	.value	0x1bc6
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.value	0x1bc7
	.long	0x390
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.long	.LBB141
	.long	.LBE141
	.uleb128 0x28
	.string	"old_cse_jumps_altered"
	.byte	0x1
	.value	0x1c24
	.long	0x390
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x28
	.string	"temp"
	.byte	0x1
	.value	0x1c25
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6ea
	.uleb128 0x29
	.long	0x6c60
	.string	"cse_basic_block"
	.byte	0x1
	.value	0x1c55
	.byte	0x1
	.long	0x98
	.long	.LFB68
	.long	.LFE68
	.long	.LLST53
	.uleb128 0x2a
	.string	"from"
	.byte	0x1
	.value	0x1c52
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2a
	.string	"to"
	.byte	0x1
	.value	0x1c52
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2a
	.string	"next_branch"
	.byte	0x1
	.value	0x1c53
	.long	0x6c60
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2a
	.string	"around_loop"
	.byte	0x1
	.value	0x1c54
	.long	0x390
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x2c
	.long	.LASF33
	.byte	0x1
	.value	0x1c56
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x28
	.string	"to_usage"
	.byte	0x1
	.value	0x1c57
	.long	0x390
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.long	.LASF50
	.byte	0x1
	.value	0x1c58
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x28
	.string	"num_insns"
	.byte	0x1
	.value	0x1c59
	.long	0x390
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2e
	.long	0x6c4f
	.long	.LBB142
	.long	.LBE142
	.uleb128 0x2c
	.long	.LASF0
	.byte	0x1
	.value	0x1c6b
	.long	0xd1a
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2e
	.long	0x6c0a
	.long	.LBB143
	.long	.LBE143
	.uleb128 0x28
	.string	"status"
	.byte	0x1
	.value	0x1c80
	.long	0x360d
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x2e
	.long	0x6c25
	.long	.LBB144
	.long	.LBE144
	.uleb128 0x28
	.string	"p"
	.byte	0x1
	.value	0x1c98
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x2b
	.long	.LBB145
	.long	.LBE145
	.uleb128 0x28
	.string	"val"
	.byte	0x1
	.value	0x1cdc
	.long	0x3674
	.byte	0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x2c
	.long	.LASF11
	.byte	0x1
	.value	0x1cdd
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x30
	.long	.LASF26
	.long	0x6fd9
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.22082
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x363a
	.uleb128 0x29
	.long	0x6cc1
	.string	"check_for_label_ref"
	.byte	0x1
	.value	0x1d29
	.byte	0x1
	.long	0x390
	.long	.LFB69
	.long	.LFE69
	.long	.LLST54
	.uleb128 0x2a
	.string	"rtl"
	.byte	0x1
	.value	0x1d27
	.long	0x1954
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x27
	.long	.LASF9
	.byte	0x1
	.value	0x1d28
	.long	0x6e2
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2c
	.long	.LASF33
	.byte	0x1
	.value	0x1d2a
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2f
	.long	0x6d7a
	.string	"count_reg_usage"
	.byte	0x1
	.value	0x1d45
	.byte	0x1
	.long	.LFB70
	.long	.LFE70
	.long	.LLST55
	.uleb128 0x2a
	.string	"x"
	.byte	0x1
	.value	0x1d41
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x27
	.long	.LASF56
	.byte	0x1
	.value	0x1d42
	.long	0xa15
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x27
	.long	.LASF12
	.byte	0x1
	.value	0x1d43
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2a
	.string	"incr"
	.byte	0x1
	.value	0x1d44
	.long	0x390
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x2c
	.long	.LASF0
	.byte	0x1
	.value	0x1d46
	.long	0xd1a
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x28
	.string	"note"
	.byte	0x1
	.value	0x1d47
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x28
	.string	"fmt"
	.byte	0x1
	.value	0x1d48
	.long	0x37d
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.value	0x1d49
	.long	0x390
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x28
	.string	"j"
	.byte	0x1
	.value	0x1d49
	.long	0x390
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x30
	.long	.LASF26
	.long	0x6fd4
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.22315
	.byte	0x0
	.uleb128 0x29
	.long	0x6dcc
	.string	"set_live_p"
	.byte	0x1
	.value	0x1d9e
	.byte	0x1
	.long	0x23ae
	.long	.LFB71
	.long	.LFE71
	.long	.LLST56
	.uleb128 0x2a
	.string	"set"
	.byte	0x1
	.value	0x1d9b
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x27
	.long	.LASF33
	.byte	0x1
	.value	0x1d9c
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x27
	.long	.LASF56
	.byte	0x1
	.value	0x1d9d
	.long	0xa15
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.byte	0x0
	.uleb128 0x29
	.long	0x6e36
	.string	"insn_live_p"
	.byte	0x1
	.value	0x1dc1
	.byte	0x1
	.long	0x23ae
	.long	.LFB72
	.long	.LFE72
	.long	.LLST57
	.uleb128 0x27
	.long	.LASF33
	.byte	0x1
	.value	0x1dbf
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x27
	.long	.LASF56
	.byte	0x1
	.value	0x1dc0
	.long	0xa15
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.value	0x1dc2
	.long	0x390
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2b
	.long	.LBB146
	.long	.LBE146
	.uleb128 0x28
	.string	"elt"
	.byte	0x1
	.value	0x1dcb
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x29
	.long	0x6eb5
	.string	"dead_libcall_p"
	.byte	0x1
	.value	0x1de1
	.byte	0x1
	.long	0x23ae
	.long	.LFB73
	.long	.LFE73
	.long	.LLST58
	.uleb128 0x27
	.long	.LASF33
	.byte	0x1
	.value	0x1ddf
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x27
	.long	.LASF56
	.byte	0x1
	.value	0x1de0
	.long	0xa15
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x28
	.string	"note"
	.byte	0x1
	.value	0x1de2
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.long	.LBB147
	.long	.LBE147
	.uleb128 0x28
	.string	"set"
	.byte	0x1
	.value	0x1deb
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x28
	.string	"new"
	.byte	0x1
	.value	0x1dec
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x2d
	.long	0x6fc4
	.byte	0x1
	.string	"delete_trivially_dead_insns"
	.byte	0x1
	.value	0x1e0c
	.byte	0x1
	.long	0x390
	.long	.LFB74
	.long	.LFE74
	.long	.LLST59
	.uleb128 0x2a
	.string	"insns"
	.byte	0x1
	.value	0x1e0a
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2a
	.string	"nreg"
	.byte	0x1
	.value	0x1e0b
	.long	0x390
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2c
	.long	.LASF56
	.byte	0x1
	.value	0x1e0d
	.long	0xa15
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2c
	.long	.LASF33
	.byte	0x1
	.value	0x1e0e
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2c
	.long	.LASF11
	.byte	0x1
	.value	0x1e0e
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.string	"in_libcall"
	.byte	0x1
	.value	0x1e0f
	.long	0x390
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x28
	.string	"dead_libcall"
	.byte	0x1
	.value	0x1e0f
	.long	0x390
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x28
	.string	"ndead"
	.byte	0x1
	.value	0x1e10
	.long	0x390
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x28
	.string	"nlastdead"
	.byte	0x1
	.value	0x1e10
	.long	0x390
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x28
	.string	"niterations"
	.byte	0x1
	.value	0x1e10
	.long	0x390
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2b
	.long	.LBB148
	.long	.LBE148
	.uleb128 0x28
	.string	"live_insn"
	.byte	0x1
	.value	0x1e29
	.long	0x390
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
	.long	0x6fd4
	.long	0x388
	.uleb128 0x12
	.long	0x5f6
	.byte	0xf
	.byte	0x0
	.uleb128 0xb
	.long	0x6fc4
	.uleb128 0xb
	.long	0x6fc4
	.uleb128 0xb
	.long	0xa05
	.uleb128 0x11
	.long	0x6ff3
	.long	0x388
	.uleb128 0x12
	.long	0x5f6
	.byte	0xb
	.byte	0x0
	.uleb128 0xb
	.long	0x6fe3
	.uleb128 0x11
	.long	0x7008
	.long	0x388
	.uleb128 0x12
	.long	0x5f6
	.byte	0xa
	.byte	0x0
	.uleb128 0xb
	.long	0x6ff8
	.uleb128 0xb
	.long	0x6ff8
	.uleb128 0x11
	.long	0x7022
	.long	0x388
	.uleb128 0x12
	.long	0x5f6
	.byte	0x6
	.byte	0x0
	.uleb128 0xb
	.long	0x7012
	.uleb128 0x11
	.long	0x7037
	.long	0x388
	.uleb128 0x12
	.long	0x5f6
	.byte	0xd
	.byte	0x0
	.uleb128 0xb
	.long	0x7027
	.uleb128 0x11
	.long	0x704c
	.long	0x388
	.uleb128 0x12
	.long	0x5f6
	.byte	0xc
	.byte	0x0
	.uleb128 0xb
	.long	0x703c
	.uleb128 0x32
	.string	"max_reg"
	.byte	0x1
	.byte	0xc9
	.long	0x390
	.byte	0x5
	.byte	0x3
	.long	max_reg
	.uleb128 0x32
	.string	"max_insn_uid"
	.byte	0x1
	.byte	0xce
	.long	0x390
	.byte	0x5
	.byte	0x3
	.long	max_insn_uid
	.uleb128 0x32
	.string	"max_qty"
	.byte	0x1
	.byte	0xd3
	.long	0x390
	.byte	0x5
	.byte	0x3
	.long	max_qty
	.uleb128 0x32
	.string	"next_qty"
	.byte	0x1
	.byte	0xd8
	.long	0x390
	.byte	0x5
	.byte	0x3
	.long	next_qty
	.uleb128 0x32
	.string	"qty_table"
	.byte	0x1
	.byte	0xff
	.long	0x3bf1
	.byte	0x5
	.byte	0x3
	.long	qty_table
	.uleb128 0x28
	.string	"prev_insn"
	.byte	0x1
	.value	0x111
	.long	0x98
	.byte	0x5
	.byte	0x3
	.long	prev_insn
	.uleb128 0x28
	.string	"this_insn"
	.byte	0x1
	.value	0x115
	.long	0x98
	.byte	0x5
	.byte	0x3
	.long	this_insn
	.uleb128 0x28
	.string	"reg_eqv_table"
	.byte	0x1
	.value	0x126
	.long	0x3bf7
	.byte	0x5
	.byte	0x3
	.long	reg_eqv_table
	.uleb128 0x28
	.string	"cse_reg_info_free_list"
	.byte	0x1
	.value	0x146
	.long	0x34c4
	.byte	0x5
	.byte	0x3
	.long	cse_reg_info_free_list
	.uleb128 0x28
	.string	"cse_reg_info_used_list"
	.byte	0x1
	.value	0x149
	.long	0x34c4
	.byte	0x5
	.byte	0x3
	.long	cse_reg_info_used_list
	.uleb128 0x28
	.string	"cse_reg_info_used_list_end"
	.byte	0x1
	.value	0x14a
	.long	0x34c4
	.byte	0x5
	.byte	0x3
	.long	cse_reg_info_used_list_end
	.uleb128 0x11
	.long	0x7191
	.long	0x34c4
	.uleb128 0x12
	.long	0x5f6
	.byte	0x7f
	.byte	0x0
	.uleb128 0x28
	.string	"reg_hash"
	.byte	0x1
	.value	0x150
	.long	0x7181
	.byte	0x5
	.byte	0x3
	.long	reg_hash
	.uleb128 0x28
	.string	"cached_regno"
	.byte	0x1
	.value	0x157
	.long	0x5df
	.byte	0x5
	.byte	0x3
	.long	cached_regno
	.uleb128 0x28
	.string	"cached_cse_reg_info"
	.byte	0x1
	.value	0x158
	.long	0x34c4
	.byte	0x5
	.byte	0x3
	.long	cached_cse_reg_info
	.uleb128 0x28
	.string	"hard_regs_in_table"
	.byte	0x1
	.value	0x15f
	.long	0x1f0d
	.byte	0x5
	.byte	0x3
	.long	hard_regs_in_table
	.uleb128 0x28
	.string	"cse_basic_block_start"
	.byte	0x1
	.value	0x163
	.long	0x390
	.byte	0x5
	.byte	0x3
	.long	cse_basic_block_start
	.uleb128 0x28
	.string	"cse_basic_block_end"
	.byte	0x1
	.value	0x167
	.long	0x390
	.byte	0x5
	.byte	0x3
	.long	cse_basic_block_end
	.uleb128 0x28
	.string	"uid_cuid"
	.byte	0x1
	.value	0x16d
	.long	0xa15
	.byte	0x5
	.byte	0x3
	.long	uid_cuid
	.uleb128 0x28
	.string	"max_uid"
	.byte	0x1
	.value	0x170
	.long	0x390
	.byte	0x5
	.byte	0x3
	.long	max_uid
	.uleb128 0x28
	.string	"cse_altered"
	.byte	0x1
	.value	0x179
	.long	0x390
	.byte	0x5
	.byte	0x3
	.long	cse_altered
	.uleb128 0x28
	.string	"cse_jumps_altered"
	.byte	0x1
	.value	0x17e
	.long	0x390
	.byte	0x5
	.byte	0x3
	.long	cse_jumps_altered
	.uleb128 0x28
	.string	"recorded_label_ref"
	.byte	0x1
	.value	0x182
	.long	0x390
	.byte	0x5
	.byte	0x3
	.long	recorded_label_ref
	.uleb128 0x28
	.string	"do_not_record"
	.byte	0x1
	.value	0x188
	.long	0x390
	.byte	0x5
	.byte	0x3
	.long	do_not_record
	.uleb128 0x28
	.string	"memory_extend_rtx"
	.byte	0x1
	.value	0x18d
	.long	0x98
	.byte	0x5
	.byte	0x3
	.long	memory_extend_rtx
	.uleb128 0x28
	.string	"hash_arg_in_memory"
	.byte	0x1
	.value	0x193
	.long	0x390
	.byte	0x5
	.byte	0x3
	.long	hash_arg_in_memory
	.uleb128 0x11
	.long	0x7341
	.long	0x3607
	.uleb128 0x12
	.long	0x5f6
	.byte	0x1f
	.byte	0x0
	.uleb128 0x28
	.string	"table"
	.byte	0x1
	.value	0x217
	.long	0x7331
	.byte	0x5
	.byte	0x3
	.long	table
	.uleb128 0x28
	.string	"free_element_chain"
	.byte	0x1
	.value	0x21c
	.long	0x3607
	.byte	0x5
	.byte	0x3
	.long	free_element_chain
	.uleb128 0x28
	.string	"n_elements_made"
	.byte	0x1
	.value	0x220
	.long	0x390
	.byte	0x5
	.byte	0x3
	.long	n_elements_made
	.uleb128 0x28
	.string	"max_elements_made"
	.byte	0x1
	.value	0x225
	.long	0x390
	.byte	0x5
	.byte	0x3
	.long	max_elements_made
	.uleb128 0x28
	.string	"last_jump_equiv_class"
	.byte	0x1
	.value	0x22b
	.long	0x3607
	.byte	0x5
	.byte	0x3
	.long	last_jump_equiv_class
	.uleb128 0x28
	.string	"constant_pool_entries_cost"
	.byte	0x1
	.value	0x232
	.long	0x390
	.byte	0x5
	.byte	0x3
	.long	constant_pool_entries_cost
	.uleb128 0x33
	.string	"target_flags"
	.byte	0xd
	.byte	0x21
	.long	0x390
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.string	"mips_tune"
	.byte	0xd
	.byte	0xa4
	.long	0x1fd
	.byte	0x1
	.byte	0x1
	.uleb128 0x34
	.string	"mips_abi"
	.byte	0xd
	.value	0x3ca
	.long	0x390
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.long	0x7448
	.long	0x397
	.uleb128 0x35
	.byte	0x0
	.uleb128 0x34
	.string	"mips_regno_to_class"
	.byte	0xd
	.value	0x85d
	.long	0x7466
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.long	0x743d
	.uleb128 0x33
	.string	"stderr"
	.byte	0x9
	.byte	0x90
	.long	0x9d9
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.long	0x748b
	.long	0xc6b
	.uleb128 0x12
	.long	0x5f6
	.byte	0x35
	.byte	0x0
	.uleb128 0x36
	.long	.LASF4
	.byte	0x4
	.byte	0x34
	.long	0x7498
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.long	0x747b
	.uleb128 0x11
	.long	0x74ad
	.long	0x623
	.uleb128 0x12
	.long	0x5f6
	.byte	0x35
	.byte	0x0
	.uleb128 0x33
	.string	"mode_size"
	.byte	0x4
	.byte	0x59
	.long	0x74c0
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.long	0x749d
	.uleb128 0x11
	.long	0x74d5
	.long	0x634
	.uleb128 0x12
	.long	0x5f6
	.byte	0x35
	.byte	0x0
	.uleb128 0x33
	.string	"mode_bitsize"
	.byte	0x4
	.byte	0x69
	.long	0x74eb
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.long	0x74c5
	.uleb128 0x33
	.string	"mode_wider_mode"
	.byte	0x4
	.byte	0x84
	.long	0x7509
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.long	0x749d
	.uleb128 0x33
	.string	"word_mode"
	.byte	0x4
	.byte	0xad
	.long	0xa22
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.long	0x7531
	.long	0x623
	.uleb128 0x12
	.long	0x5f6
	.byte	0xa2
	.byte	0x0
	.uleb128 0x33
	.string	"rtx_length"
	.byte	0x3
	.byte	0x3c
	.long	0x7545
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.long	0x7521
	.uleb128 0x11
	.long	0x755a
	.long	0x37d
	.uleb128 0x12
	.long	0x5f6
	.byte	0xa2
	.byte	0x0
	.uleb128 0x33
	.string	"rtx_format"
	.byte	0x3
	.byte	0x42
	.long	0x756e
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.long	0x754a
	.uleb128 0x11
	.long	0x7583
	.long	0x388
	.uleb128 0x12
	.long	0x5f6
	.byte	0xa2
	.byte	0x0
	.uleb128 0x33
	.string	"rtx_class"
	.byte	0x3
	.byte	0x45
	.long	0x7596
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.long	0x7573
	.uleb128 0x11
	.long	0x75ab
	.long	0x98
	.uleb128 0x12
	.long	0x5f6
	.byte	0x80
	.byte	0x0
	.uleb128 0x34
	.string	"const_int_rtx"
	.byte	0x3
	.value	0x6a4
	.long	0x759b
	.byte	0x1
	.byte	0x1
	.uleb128 0x34
	.string	"const_true_rtx"
	.byte	0x3
	.value	0x6aa
	.long	0x98
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.long	0x75f2
	.long	0x98
	.uleb128 0x12
	.long	0x5f6
	.byte	0x2
	.uleb128 0x12
	.long	0x5f6
	.byte	0x35
	.byte	0x0
	.uleb128 0x34
	.string	"const_tiny_rtx"
	.byte	0x3
	.value	0x6ac
	.long	0x75dc
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.long	0x761b
	.long	0x98
	.uleb128 0x12
	.long	0x5f6
	.byte	0xa
	.byte	0x0
	.uleb128 0x34
	.string	"global_rtl"
	.byte	0x3
	.value	0x6e5
	.long	0x760b
	.byte	0x1
	.byte	0x1
	.uleb128 0x34
	.string	"pic_offset_table_rtx"
	.byte	0x3
	.value	0x6f3
	.long	0x98
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.long	0x765f
	.long	0x388
	.uleb128 0x12
	.long	0x5f6
	.byte	0xaf
	.byte	0x0
	.uleb128 0x34
	.string	"fixed_regs"
	.byte	0x8
	.value	0x18b
	.long	0x764f
	.byte	0x1
	.byte	0x1
	.uleb128 0x34
	.string	"global_regs"
	.byte	0x8
	.value	0x1b4
	.long	0x764f
	.byte	0x1
	.byte	0x1
	.uleb128 0x34
	.string	"regs_invalidated_by_call"
	.byte	0x8
	.value	0x1bd
	.long	0x1f0d
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.long	0x76bd
	.long	0x5df
	.uleb128 0x12
	.long	0x5f6
	.byte	0x18
	.byte	0x0
	.uleb128 0x34
	.string	"reg_class_size"
	.byte	0x8
	.value	0x1cf
	.long	0x76ad
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.string	"reg_n_info"
	.byte	0xe
	.byte	0x43
	.long	0x1edb
	.byte	0x1
	.byte	0x1
	.uleb128 0x34
	.string	"flag_float_store"
	.byte	0x10
	.value	0x117
	.long	0x390
	.byte	0x1
	.byte	0x1
	.uleb128 0x34
	.string	"flag_cse_follow_jumps"
	.byte	0x10
	.value	0x13a
	.long	0x390
	.byte	0x1
	.byte	0x1
	.uleb128 0x34
	.string	"flag_cse_skip_blocks"
	.byte	0x10
	.value	0x13f
	.long	0x390
	.byte	0x1
	.byte	0x1
	.uleb128 0x34
	.string	"flag_expensive_optimizations"
	.byte	0x10
	.value	0x143
	.long	0x390
	.byte	0x1
	.byte	0x1
	.uleb128 0x34
	.string	"flag_finite_math_only"
	.byte	0x10
	.value	0x177
	.long	0x390
	.byte	0x1
	.byte	0x1
	.uleb128 0x34
	.string	"flag_pic"
	.byte	0x10
	.value	0x1df
	.long	0x390
	.byte	0x1
	.byte	0x1
	.uleb128 0x34
	.string	"flag_non_call_exceptions"
	.byte	0x10
	.value	0x2ae
	.long	0x390
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.long	0x77cc
	.long	0x24ab
	.uleb128 0x35
	.byte	0x0
	.uleb128 0x36
	.long	.LASF13
	.byte	0x11
	.byte	0xfe
	.long	0x77d9
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.long	0x77c1
	.uleb128 0x34
	.string	"cfun"
	.byte	0x12
	.value	0x202
	.long	0x32bf
	.byte	0x1
	.byte	0x1
	.uleb128 0x34
	.string	"rtl_dump_file"
	.byte	0x13
	.value	0x1b8
	.long	0x6b0c
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
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3c
	.uleb128 0xc
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
	.uleb128 0xe
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
	.uleb128 0x14
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x26
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0x13
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x22
	.uleb128 0x18
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x30
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
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x35
	.uleb128 0x21
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x36
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
	.long	0x9f
	.value	0x2
	.long	.Ldebug_info0
	.long	0x7806
	.long	0x3701
	.string	"dump_class"
	.long	0x38c1
	.string	"rtx_cost"
	.long	0x3a41
	.string	"address_cost"
	.long	0x57a6
	.string	"gen_lowpart_if_possible"
	.long	0x6911
	.string	"cse_end_of_basic_block"
	.long	0x6a44
	.string	"cse_main"
	.long	0x6eb5
	.string	"delete_trivially_dead_insns"
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
.LASF10:
	.string	"next"
.LASF28:
	.string	"hash"
.LASF33:
	.string	"insn"
.LASF13:
	.string	"insn_data"
.LASF48:
	.string	"src_const"
.LASF35:
	.string	"best_addr_cost"
.LASF42:
	.string	"inner_const"
.LASF37:
	.string	"best_elt"
.LASF1:
	.string	"mode"
.LASF8:
	.string	"basic_block"
.LASF41:
	.string	"false_rtx"
.LASF6:
	.string	"offset"
.LASF52:
	.string	"dest_ent"
.LASF54:
	.string	"cse_check_loop_start_value"
.LASF31:
	.string	"save_do_not_record"
.LASF20:
	.string	"is_const"
.LASF34:
	.string	"insn_code"
.LASF40:
	.string	"true_rtx"
.LASF5:
	.string	"mem_attrs"
.LASF7:
	.string	"first"
.LASF45:
	.string	"src_elt"
.LASF0:
	.string	"code"
.LASF47:
	.string	"inner_dest"
.LASF27:
	.string	"endregno"
.LASF39:
	.string	"inner_mode"
.LASF26:
	.string	"__FUNCTION__"
.LASF44:
	.string	"reversed_nonequality"
.LASF43:
	.string	"new_const"
.LASF15:
	.string	"sequence_stack"
.LASF53:
	.string	"loop_start"
.LASF24:
	.string	"classp"
.LASF18:
	.string	"const_insn"
.LASF50:
	.string	"libcall_insn"
.LASF21:
	.string	"low_cuid"
.LASF14:
	.string	"modified"
.LASF3:
	.string	"_IO_FILE"
.LASF49:
	.string	"src_const_elt"
.LASF38:
	.string	"new_cost"
.LASF55:
	.string	"after_loop"
.LASF51:
	.string	"larger_elt"
.LASF46:
	.string	"src_hash"
.LASF9:
	.string	"data"
.LASF29:
	.string	"x_ent"
.LASF56:
	.string	"counts"
.LASF36:
	.string	"best_rtx_cost"
.LASF32:
	.string	"save_hash_arg_in_memory"
.LASF25:
	.string	"xmode"
.LASF12:
	.string	"dest"
.LASF4:
	.string	"mode_class"
.LASF30:
	.string	"in_table"
.LASF23:
	.string	"path_size"
.LASF17:
	.string	"function_frequency"
.LASF16:
	.string	"sequence_rtl_expr"
.LASF22:
	.string	"high_cuid"
.LASF2:
	.string	"unsigned int"
.LASF11:
	.string	"prev"
.LASF19:
	.string	"regno"
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
