	.file	"gcse.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
	.local	pre_ldst_mems
	.comm	pre_ldst_mems,4,4
	.section	.rodata
	.align 4
.LC0:
	.string	"GCSE disabled: %d > 1000 basic blocks and %d >= 20 edges/basic block"
	.align 4
.LC1:
	.string	"GCSE disabled: %d basic blocks and %d registers"
.LC2:
	.string	"GCSE pass %d\n\n"
.LC3:
	.string	"GCSE of %s: %d basic blocks, "
.LC4:
	.string	"es"
.LC5:
	.string	""
.LC6:
	.string	"%d pass%s, %d bytes\n\n"
	.text
.globl gcse_main
	.type	gcse_main, @function
gcse_main:
.LFB15:
	.file 1 "../../../kgccfe/gnu/gcse.c"
	.loc 1 715 0
	pushl	%ebp
.LCFI0:
	movl	%esp, %ebp
.LCFI1:
	pushl	%edi
.LCFI2:
	pushl	%ebx
.LCFI3:
	subl	$80, %esp
.LCFI4:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 730 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movzbl	296(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L2
	.loc 1 731 0
	movl	$0, -64(%ebp)
	jmp	.L4
.L2:
	.loc 1 734 0
	movl	$0, run_jump_opt_after_gcse@GOTOFF(%ebx)
	.loc 1 737 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, debug_stderr@GOTOFF(%ebx)
	.loc 1 738 0
	movl	12(%ebp), %eax
	movl	%eax, gcse_file@GOTOFF(%ebx)
	.loc 1 742 0
	call	max_reg_num@PLT
	movl	%eax, max_gcse_regno@GOTOFF(%ebx)
	.loc 1 744 0
	cmpl	$0, 12(%ebp)
	je	.L5
	.loc 1 745 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	dump_flow_info@PLT
.L5:
	.loc 1 747 0
	movl	n_basic_blocks@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 749 0
	movl	n_basic_blocks@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	jg	.L7
	.loc 1 750 0
	movl	$0, -64(%ebp)
	jmp	.L4
.L7:
	.loc 1 760 0
	movl	n_basic_blocks@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1000, %eax
	jle	.L9
	movl	n_edges@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	n_basic_blocks@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, %ecx
	movl	%edx, %eax
	sarl	$31, %edx
	idivl	%ecx
	cmpl	$19, %eax
	jle	.L9
	.loc 1 762 0
	movl	warn_disabled_optimization@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L12
	.loc 1 763 0
	movl	n_edges@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	n_basic_blocks@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, %ecx
	movl	%edx, %eax
	sarl	$31, %edx
	idivl	%ecx
	movl	%eax, %edx
	movl	n_basic_blocks@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
.L12:
	.loc 1 765 0
	movl	$0, -64(%ebp)
	jmp	.L4
.L9:
	.loc 1 770 0
	movl	max_gcse_regno@GOTOFF(%ebx), %eax
	addl	$63, %eax
	movl	%eax, %edx
	shrl	$6, %edx
	movl	n_basic_blocks@GOT(%ebx), %eax
	movl	(%eax), %eax
	imull	%edx, %eax
	leal	0(,%eax,8), %edx
	movl	compiler_params@GOT(%ebx), %eax
	movl	(%eax), %eax
	addl	$108, %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	jbe	.L14
	.loc 1 774 0
	movl	warn_disabled_optimization@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L16
	.loc 1 775 0
	movl	max_gcse_regno@GOTOFF(%ebx), %edx
	movl	n_basic_blocks@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
.L16:
	.loc 1 778 0
	movl	$0, -64(%ebp)
	jmp	.L4
.L14:
	.loc 1 782 0
	movl	can_copy_init_p@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L18
	.loc 1 784 0
	call	compute_can_copy
	.loc 1 785 0
	movl	$1, can_copy_init_p@GOTOFF(%ebx)
.L18:
	.loc 1 788 0
	leal	gcse_obstack@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	gcc_obstack_init@PLT
	.loc 1 789 0
	movl	$0, bytes_used@GOTOFF(%ebx)
	.loc 1 792 0
	call	init_alias_analysis@PLT
	.loc 1 802 0
	movl	max_gcse_regno@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	alloc_reg_set_mem
	.loc 1 803 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	compute_sets
	.loc 1 805 0
	movl	$0, -44(%ebp)
	.loc 1 806 0
	movl	bytes_used@GOTOFF(%ebx), %eax
	movl	%eax, -40(%ebp)
	.loc 1 807 0
	movl	$0, -36(%ebp)
	.loc 1 808 0
	movl	$1, (%esp)
	call	gcse_alloc
	movl	%eax, -32(%ebp)
	.loc 1 809 0
	movl	$1, -48(%ebp)
	.loc 1 810 0
	jmp	.L20
.L21:
	.loc 1 812 0
	movl	$0, -48(%ebp)
	.loc 1 813 0
	cmpl	$0, 12(%ebp)
	je	.L22
	.loc 1 814 0
	movl	-44(%ebp), %eax
	addl	$1, %eax
	movl	%eax, 8(%esp)
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
.L22:
	.loc 1 818 0
	movl	-40(%ebp), %eax
	movl	%eax, bytes_used@GOTOFF(%ebx)
	.loc 1 821 0
	call	max_reg_num@PLT
	movl	%eax, max_gcse_regno@GOTOFF(%ebx)
	.loc 1 823 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	alloc_gcse_mem
	.loc 1 827 0
	movl	-44(%ebp), %eax
	addl	$1, %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	one_cprop_pass
	movl	%eax, -48(%ebp)
	.loc 1 829 0
	movl	optimize_size@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L24
	.loc 1 830 0
	movl	-44(%ebp), %eax
	addl	$1, %eax
	movl	%eax, (%esp)
	call	one_classic_gcse_pass
	orl	%eax, -48(%ebp)
	jmp	.L26
.L24:
	.loc 1 833 0
	movl	-44(%ebp), %eax
	addl	$1, %eax
	movl	%eax, (%esp)
	call	one_pre_gcse_pass
	orl	%eax, -48(%ebp)
	.loc 1 837 0
	cmpl	$0, -48(%ebp)
	je	.L27
	.loc 1 839 0
	call	free_modify_mem_tables
	.loc 1 840 0
	movl	last_basic_block@GOT(%ebx), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	movl	%eax, (%esp)
	call	gmalloc
	movl	%eax, modify_mem_list@GOTOFF(%ebx)
	.loc 1 842 0
	movl	last_basic_block@GOT(%ebx), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	movl	%eax, (%esp)
	call	gmalloc
	movl	%eax, canon_modify_mem_list@GOTOFF(%ebx)
	.loc 1 844 0
	movl	last_basic_block@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	0(,%eax,4), %edx
	movl	modify_mem_list@GOTOFF(%ebx), %eax
	movl	%eax, %edi
	cld
	movl	%edx, %ecx
	movl	$0, %eax
	rep
	stosb
	.loc 1 845 0
	movl	last_basic_block@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	0(,%eax,4), %edx
	movl	canon_modify_mem_list@GOTOFF(%ebx), %eax
	movl	%eax, %edi
	cld
	movl	%edx, %ecx
	movl	$0, %eax
	rep
	stosb
	.loc 1 846 0
	movl	n_basic_blocks@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
.L27:
	.loc 1 848 0
	call	free_reg_set_mem
	.loc 1 849 0
	call	max_reg_num@PLT
	movl	%eax, (%esp)
	call	alloc_reg_set_mem
	.loc 1 850 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	compute_sets
	.loc 1 851 0
	movl	$1, run_jump_opt_after_gcse@GOTOFF(%ebx)
.L26:
	.loc 1 854 0
	movl	bytes_used@GOTOFF(%ebx), %eax
	cmpl	%eax, -36(%ebp)
	jge	.L29
	.loc 1 855 0
	movl	bytes_used@GOTOFF(%ebx), %eax
	movl	%eax, -36(%ebp)
.L29:
	.loc 1 861 0
	call	free_gcse_mem
	.loc 1 868 0
	movl	optimize_size@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L31
	.loc 1 870 0
	call	max_reg_num@PLT
	movl	%eax, max_gcse_regno@GOTOFF(%ebx)
	.loc 1 871 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	alloc_gcse_mem
	.loc 1 872 0
	call	one_code_hoisting_pass
	orl	%eax, -48(%ebp)
	.loc 1 873 0
	call	free_gcse_mem
	.loc 1 875 0
	movl	bytes_used@GOTOFF(%ebx), %eax
	cmpl	%eax, -36(%ebp)
	jge	.L31
	.loc 1 876 0
	movl	bytes_used@GOTOFF(%ebx), %eax
	movl	%eax, -36(%ebp)
.L31:
	.loc 1 879 0
	cmpl	$0, 12(%ebp)
	je	.L34
	.loc 1 881 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	fputc@PLT
	.loc 1 882 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	fflush@PLT
.L34:
.LBB2:
	.loc 1 885 0
	leal	gcse_obstack@GOTOFF(%ebx), %eax
	movl	%eax, -24(%ebp)
	movl	-32(%ebp), %eax
	movl	%eax, -20(%ebp)
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-20(%ebp), %eax
	jae	.L36
	movl	-24(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	-20(%ebp), %eax
	jbe	.L36
	movl	-20(%ebp), %edx
	movl	-24(%ebp), %eax
	movl	%edx, 8(%eax)
	movl	-24(%ebp), %eax
	movl	8(%eax), %edx
	movl	-24(%ebp), %eax
	movl	%edx, 12(%eax)
	jmp	.L39
.L36:
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	obstack_free@PLT
.L39:
.LBE2:
	.loc 1 886 0
	addl	$1, -44(%ebp)
.L20:
	.loc 1 810 0
	cmpl	$0, -48(%ebp)
	je	.L40
	movl	compiler_params@GOT(%ebx), %eax
	movl	(%eax), %eax
	addl	$120, %eax
	movl	4(%eax), %eax
	cmpl	-44(%ebp), %eax
	jg	.L21
.L40:
	.loc 1 892 0
	call	max_reg_num@PLT
	movl	%eax, max_gcse_regno@GOTOFF(%ebx)
	.loc 1 893 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	alloc_gcse_mem
	.loc 1 895 0
	movl	-44(%ebp), %eax
	addl	$1, %eax
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	one_cprop_pass
	.loc 1 896 0
	call	free_gcse_mem
	.loc 1 898 0
	cmpl	$0, 12(%ebp)
	je	.L42
	.loc 1 900 0
	movl	n_basic_blocks@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	20(%eax), %eax
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	leal	.LC3@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 902 0
	cmpl	$1, -44(%ebp)
	jle	.L44
	leal	.LC4@GOTOFF(%ebx), %eax
	movl	%eax, -60(%ebp)
	jmp	.L46
.L44:
	leal	.LC5@GOTOFF(%ebx), %ecx
	movl	%ecx, -60(%ebp)
.L46:
	movl	-36(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC6@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
.L42:
.LBB3:
	.loc 1 906 0
	leal	gcse_obstack@GOTOFF(%ebx), %eax
	movl	%eax, -16(%ebp)
	movl	$0, -12(%ebp)
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-12(%ebp), %eax
	jae	.L47
	movl	-16(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	-12(%ebp), %eax
	jbe	.L47
	movl	-12(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	%edx, 8(%eax)
	movl	-16(%ebp), %eax
	movl	8(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%edx, 12(%eax)
	jmp	.L50
.L47:
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	obstack_free@PLT
.L50:
.LBE3:
	.loc 1 907 0
	call	free_reg_set_mem
	.loc 1 909 0
	call	end_alias_analysis@PLT
	.loc 1 910 0
	call	max_reg_num@PLT
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	allocate_reg_info@PLT
	.loc 1 916 0
	movl	run_jump_opt_after_gcse@GOTOFF(%ebx), %ecx
	movl	%ecx, -64(%ebp)
.L4:
	movl	-64(%ebp), %eax
	.loc 1 917 0
	addl	$80, %esp
	popl	%ebx
	popl	%edi
	popl	%ebp
	ret
.LFE15:
	.size	gcse_main, .-gcse_main
	.type	compute_can_copy, @function
compute_can_copy:
.LFB16:
	.loc 1 925 0
	pushl	%ebp
.LCFI5:
	movl	%esp, %ebp
.LCFI6:
	pushl	%edi
.LCFI7:
	pushl	%ebx
.LCFI8:
	subl	$16, %esp
.LCFI9:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 930 0
	leal	can_copy_p@GOTOFF(%ebx), %edi
	cld
	movl	$54, %ecx
	movl	$0, %eax
	rep
	stosb
	.loc 1 932 0
	call	start_sequence@PLT
	.loc 1 933 0
	movl	$0, -12(%ebp)
	jmp	.L53
.L54:
	.loc 1 934 0
	movl	-12(%ebp), %eax
	movl	mode_class@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$4, %eax
	jne	.L55
	.loc 1 937 0
	movl	-12(%ebp), %eax
	movb	$0, can_copy_p@GOTOFF(%ebx,%eax)
	jmp	.L57
.L55:
	.loc 1 946 0
	movl	-12(%ebp), %eax
	movb	$1, can_copy_p@GOTOFF(%ebx,%eax)
.L57:
	.loc 1 933 0
	addl	$1, -12(%ebp)
.L53:
	cmpl	$53, -12(%ebp)
	jle	.L54
	.loc 1 948 0
	call	end_sequence@PLT
	.loc 1 949 0
	addl	$16, %esp
	popl	%ebx
	popl	%edi
	popl	%ebp
	ret
.LFE16:
	.size	compute_can_copy, .-compute_can_copy
	.type	gmalloc, @function
gmalloc:
.LFB17:
	.loc 1 956 0
	pushl	%ebp
.LCFI10:
	movl	%esp, %ebp
.LCFI11:
	pushl	%ebx
.LCFI12:
	subl	$4, %esp
.LCFI13:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 957 0
	movl	bytes_used@GOTOFF(%ebx), %eax
	addl	8(%ebp), %eax
	movl	%eax, bytes_used@GOTOFF(%ebx)
	.loc 1 958 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	.loc 1 959 0
	addl	$4, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE17:
	.size	gmalloc, .-gmalloc
	.type	grealloc, @function
grealloc:
.LFB18:
	.loc 1 969 0
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
	.loc 1 970 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	xrealloc@PLT
	.loc 1 971 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE18:
	.size	grealloc, .-grealloc
	.type	gcse_alloc, @function
gcse_alloc:
.LFB19:
	.loc 1 978 0
	pushl	%ebp
.LCFI18:
	movl	%esp, %ebp
.LCFI19:
	pushl	%esi
.LCFI20:
	pushl	%ebx
.LCFI21:
	subl	$48, %esp
.LCFI22:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 979 0
	movl	bytes_used@GOTOFF(%ebx), %eax
	addl	8(%ebp), %eax
	movl	%eax, bytes_used@GOTOFF(%ebx)
.LBB4:
	.loc 1 980 0
	leal	gcse_obstack@GOTOFF(%ebx), %eax
	movl	%eax, -28(%ebp)
.LBB5:
	movl	-28(%ebp), %eax
	movl	%eax, -24(%ebp)
	movl	8(%ebp), %eax
	movl	%eax, -20(%ebp)
	movl	-24(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, %edx
	movl	-24(%ebp), %eax
	movl	12(%eax), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	cmpl	-20(%ebp), %eax
	jge	.L65
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	_obstack_newchunk@PLT
.L65:
	movl	-24(%ebp), %eax
	movl	12(%eax), %edx
	movl	-20(%ebp), %eax
	addl	%eax, %edx
	movl	-24(%ebp), %eax
	movl	%edx, 12(%eax)
.LBE5:
.LBB6:
	movl	-28(%ebp), %eax
	movl	%eax, -16(%ebp)
	movl	-16(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -12(%ebp)
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	-12(%ebp), %eax
	jne	.L67
	movl	-16(%ebp), %eax
	movzbl	40(%eax), %edx
	orl	$2, %edx
	movb	%dl, 40(%eax)
.L67:
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, %edx
	movl	-16(%ebp), %eax
	movl	24(%eax), %eax
	addl	%eax, %edx
	movl	-16(%ebp), %eax
	movl	24(%eax), %eax
	notl	%eax
	andl	%edx, %eax
	movl	%eax, %edx
	movl	-16(%ebp), %eax
	movl	%edx, 12(%eax)
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, %edx
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	-16(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, %edx
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, %esi
	subl	%eax, %esi
	movl	%esi, %eax
	cmpl	%eax, %ecx
	jle	.L69
	movl	-16(%ebp), %eax
	movl	16(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%edx, 12(%eax)
.L69:
	movl	-16(%ebp), %eax
	movl	12(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%edx, 8(%eax)
	movl	-12(%ebp), %eax
.LBE6:
.LBE4:
	.loc 1 981 0
	addl	$48, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE19:
	.size	gcse_alloc, .-gcse_alloc
	.type	alloc_gcse_mem, @function
alloc_gcse_mem:
.LFB20:
	.loc 1 991 0
	pushl	%ebp
.LCFI23:
	movl	%esp, %ebp
.LCFI24:
	pushl	%edi
.LCFI25:
	pushl	%ebx
.LCFI26:
	subl	$32, %esp
.LCFI27:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 999 0
	call	get_max_uid@PLT
	movl	%eax, max_uid@GOTOFF(%ebx)
	.loc 1 1000 0
	movl	max_uid@GOTOFF(%ebx), %eax
	sall	$2, %eax
	addl	$4, %eax
	movl	%eax, -16(%ebp)
	.loc 1 1001 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	gmalloc
	movl	%eax, uid_cuid@GOTOFF(%ebx)
	.loc 1 1002 0
	movl	-16(%ebp), %edx
	movl	uid_cuid@GOTOFF(%ebx), %eax
	movl	%eax, %edi
	cld
	movl	%edx, %ecx
	movl	$0, %eax
	rep
	stosb
	.loc 1 1003 0
	movl	8(%ebp), %eax
	movl	%eax, -12(%ebp)
	movl	$0, -20(%ebp)
	jmp	.L73
.L74:
	.loc 1 1005 0
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L75
	.loc 1 1006 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	uid_cuid@GOTOFF(%ebx), %eax
	addl	%eax, %edx
	movl	-20(%ebp), %eax
	movl	%eax, (%edx)
	addl	$1, -20(%ebp)
	jmp	.L77
.L75:
	.loc 1 1008 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	uid_cuid@GOTOFF(%ebx), %eax
	addl	%eax, %edx
	movl	-20(%ebp), %eax
	movl	%eax, (%edx)
.L77:
	.loc 1 1003 0
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -12(%ebp)
.L73:
	cmpl	$0, -12(%ebp)
	jne	.L74
	.loc 1 1013 0
	movl	-20(%ebp), %eax
	movl	%eax, max_cuid@GOTOFF(%ebx)
	.loc 1 1014 0
	movl	max_cuid@GOTOFF(%ebx), %eax
	sall	$2, %eax
	addl	$4, %eax
	movl	%eax, -16(%ebp)
	.loc 1 1015 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	gmalloc
	movl	%eax, cuid_insn@GOTOFF(%ebx)
	.loc 1 1016 0
	movl	-16(%ebp), %edx
	movl	cuid_insn@GOTOFF(%ebx), %eax
	movl	%eax, %edi
	cld
	movl	%edx, %ecx
	movl	$0, %eax
	rep
	stosb
	.loc 1 1017 0
	movl	8(%ebp), %eax
	movl	%eax, -12(%ebp)
	movl	$0, -20(%ebp)
	jmp	.L79
.L80:
	.loc 1 1018 0
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L81
	.loc 1 1019 0
	movl	-20(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	cuid_insn@GOTOFF(%ebx), %eax
	addl	%eax, %edx
	movl	-12(%ebp), %eax
	movl	%eax, (%edx)
	addl	$1, -20(%ebp)
.L81:
	.loc 1 1017 0
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -12(%ebp)
.L79:
	cmpl	$0, -12(%ebp)
	jne	.L80
	.loc 1 1022 0
	movl	$16, (%esp)
	call	xmalloc@PLT
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	bitmap_initialize@PLT
	movl	%eax, reg_set_bitmap@GOTOFF(%ebx)
	.loc 1 1025 0
	movl	max_gcse_regno@GOTOFF(%ebx), %edx
	movl	last_basic_block@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	sbitmap_vector_alloc@PLT
	movl	%eax, reg_set_in_block@GOTOFF(%ebx)
	.loc 1 1029 0
	movl	last_basic_block@GOT(%ebx), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	movl	%eax, (%esp)
	call	gmalloc
	movl	%eax, modify_mem_list@GOTOFF(%ebx)
	.loc 1 1030 0
	movl	last_basic_block@GOT(%ebx), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	movl	%eax, (%esp)
	call	gmalloc
	movl	%eax, canon_modify_mem_list@GOTOFF(%ebx)
	.loc 1 1031 0
	movl	last_basic_block@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	0(,%eax,4), %edx
	movl	modify_mem_list@GOTOFF(%ebx), %eax
	movl	%eax, %edi
	cld
	movl	%edx, %ecx
	movl	$0, %eax
	rep
	stosb
	.loc 1 1032 0
	movl	last_basic_block@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	0(,%eax,4), %edx
	movl	canon_modify_mem_list@GOTOFF(%ebx), %eax
	movl	%eax, %edi
	cld
	movl	%edx, %ecx
	movl	$0, %eax
	rep
	stosb
	.loc 1 1033 0
	movl	$16, (%esp)
	call	xmalloc@PLT
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	bitmap_initialize@PLT
	movl	%eax, %edx
	movl	modify_mem_list_set@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 1034 0
	movl	$16, (%esp)
	call	xmalloc@PLT
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	bitmap_initialize@PLT
	movl	%eax, %edx
	movl	canon_modify_mem_list_set@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 1035 0
	addl	$32, %esp
	popl	%ebx
	popl	%edi
	popl	%ebp
	ret
.LFE20:
	.size	alloc_gcse_mem, .-alloc_gcse_mem
	.type	free_gcse_mem, @function
free_gcse_mem:
.LFB21:
	.loc 1 1041 0
	pushl	%ebp
.LCFI28:
	movl	%esp, %ebp
.LCFI29:
	pushl	%ebx
.LCFI30:
	subl	$4, %esp
.LCFI31:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1042 0
	movl	uid_cuid@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 1043 0
	movl	cuid_insn@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 1045 0
	movl	reg_set_bitmap@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L86
	movl	reg_set_bitmap@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	bitmap_clear@PLT
	movl	reg_set_bitmap@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	free@PLT
	movl	$0, reg_set_bitmap@GOTOFF(%ebx)
.L86:
	.loc 1 1047 0
	movl	reg_set_in_block@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 1048 0
	call	free_modify_mem_tables
	.loc 1 1049 0
	movl	modify_mem_list_set@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L88
	movl	modify_mem_list_set@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	bitmap_clear@PLT
	movl	modify_mem_list_set@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	free@PLT
	movl	modify_mem_list_set@GOT(%ebx), %eax
	movl	$0, (%eax)
.L88:
	.loc 1 1050 0
	movl	canon_modify_mem_list_set@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L92
	movl	canon_modify_mem_list_set@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	bitmap_clear@PLT
	movl	canon_modify_mem_list_set@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	free@PLT
	movl	canon_modify_mem_list_set@GOT(%ebx), %eax
	movl	$0, (%eax)
.L92:
	.loc 1 1051 0
	addl	$4, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE21:
	.size	free_gcse_mem, .-free_gcse_mem
	.type	get_bitmap_width, @function
get_bitmap_width:
.LFB22:
	.loc 1 1075 0
	pushl	%ebp
.LCFI32:
	movl	%esp, %ebp
.LCFI33:
	subl	$20, %esp
.LCFI34:
	.loc 1 1079 0
	movl	$10485760, -8(%ebp)
	.loc 1 1083 0
	movl	8(%ebp), %eax
	imull	12(%ebp), %eax
	sall	$3, %eax
	movl	%eax, -4(%ebp)
	.loc 1 1087 0
	movl	16(%ebp), %eax
	addl	$63, %eax
	shrl	$6, %eax
	imull	-4(%ebp), %eax
	cmpl	-8(%ebp), %eax
	ja	.L94
	.loc 1 1088 0
	movl	16(%ebp), %eax
	movl	%eax, -20(%ebp)
	jmp	.L96
.L94:
	.loc 1 1092 0
	movl	-4(%ebp), %eax
	addl	-8(%ebp), %eax
	subl	$1, %eax
	movl	$0, %edx
	divl	-4(%ebp)
	sall	$6, %eax
	movl	%eax, -20(%ebp)
.L96:
	movl	-20(%ebp), %eax
	.loc 1 1094 0
	leave
	ret
.LFE22:
	.size	get_bitmap_width, .-get_bitmap_width
	.type	compute_local_properties, @function
compute_local_properties:
.LFB23:
	.loc 1 1129 0
	pushl	%ebp
.LCFI35:
	movl	%esp, %ebp
.LCFI36:
	pushl	%edi
.LCFI37:
	pushl	%esi
.LCFI38:
	pushl	%ebx
.LCFI39:
	subl	$76, %esp
.LCFI40:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1133 0
	cmpl	$0, 8(%ebp)
	je	.L99
	.loc 1 1135 0
	movl	20(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	.L101
	.loc 1 1136 0
	movl	last_basic_block@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	sbitmap_vector_zero@PLT
	jmp	.L99
.L101:
	.loc 1 1138 0
	movl	last_basic_block@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	sbitmap_vector_ones@PLT
.L99:
	.loc 1 1141 0
	cmpl	$0, 12(%ebp)
	je	.L103
	.loc 1 1142 0
	movl	last_basic_block@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	sbitmap_vector_zero@PLT
.L103:
	.loc 1 1143 0
	cmpl	$0, 16(%ebp)
	je	.L105
	.loc 1 1144 0
	movl	last_basic_block@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	sbitmap_vector_zero@PLT
.L105:
	.loc 1 1146 0
	movl	$0, -32(%ebp)
	jmp	.L107
.L108:
.LBB7:
	.loc 1 1150 0
	movl	20(%ebp), %eax
	movl	(%eax), %edx
	movl	-32(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L109
.L110:
.LBB8:
	.loc 1 1152 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 1158 0
	cmpl	$0, 8(%ebp)
	je	.L111
	.loc 1 1159 0
	movl	20(%ebp), %eax
	movl	12(%eax), %edx
	movl	-28(%ebp), %eax
	movl	(%eax), %ecx
	movl	%edx, 12(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	compute_transp
.L111:
	.loc 1 1163 0
	cmpl	$0, 16(%ebp)
	je	.L113
	.loc 1 1164 0
	movl	-28(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -20(%ebp)
	jmp	.L115
.L116:
	.loc 1 1166 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	28(%eax), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	addl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -64(%ebp)
	movl	-24(%ebp), %eax
	movl	%eax, %ecx
	shrl	$6, %ecx
	movl	%ecx, -60(%ebp)
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	28(%eax), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	addl	16(%ebp), %eax
	movl	(%eax), %edx
	movl	%ecx, %eax
	movl	12(%edx,%eax,8), %esi
	movl	16(%edx,%eax,8), %edi
	movl	%esi, -56(%ebp)
	movl	%edi, -52(%ebp)
	movl	-24(%ebp), %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L125
	movl	%esi, %edi
	xorl	%esi, %esi
.L125:
	movl	-56(%ebp), %eax
	orl	%esi, %eax
	movl	-52(%ebp), %edx
	orl	%edi, %edx
	movl	-60(%ebp), %edi
	movl	-64(%ebp), %ecx
	movl	%eax, 12(%ecx,%edi,8)
	movl	%edx, 16(%ecx,%edi,8)
	.loc 1 1170 0
	movl	-20(%ebp), %eax
	movb	$0, 8(%eax)
	.loc 1 1164 0
	movl	-20(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
.L115:
	cmpl	$0, -20(%ebp)
	jne	.L116
.L113:
	.loc 1 1175 0
	cmpl	$0, 12(%ebp)
	je	.L117
	.loc 1 1176 0
	movl	-28(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -20(%ebp)
	jmp	.L119
.L120:
	.loc 1 1178 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	28(%eax), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -48(%ebp)
	movl	-24(%ebp), %eax
	movl	%eax, %ecx
	shrl	$6, %ecx
	movl	%ecx, -44(%ebp)
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	28(%eax), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %edx
	movl	%ecx, %eax
	movl	12(%edx,%eax,8), %esi
	movl	16(%edx,%eax,8), %edi
	movl	%esi, -40(%ebp)
	movl	%edi, -36(%ebp)
	movl	-24(%ebp), %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L124
	movl	%esi, %edi
	xorl	%esi, %esi
.L124:
	movl	-40(%ebp), %eax
	orl	%esi, %eax
	movl	-36(%ebp), %edx
	orl	%edi, %edx
	movl	-44(%ebp), %edi
	movl	-48(%ebp), %ecx
	movl	%eax, 12(%ecx,%edi,8)
	movl	%edx, 16(%ecx,%edi,8)
	.loc 1 1182 0
	movl	-20(%ebp), %eax
	movb	$0, 9(%eax)
	.loc 1 1176 0
	movl	-20(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
.L119:
	cmpl	$0, -20(%ebp)
	jne	.L120
.L117:
	.loc 1 1187 0
	movl	-28(%ebp), %eax
	movl	$0, 20(%eax)
.LBE8:
	.loc 1 1150 0
	movl	-28(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -28(%ebp)
.L109:
	cmpl	$0, -28(%ebp)
	jne	.L110
.LBE7:
	.loc 1 1146 0
	addl	$1, -32(%ebp)
.L107:
	movl	20(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-32(%ebp), %eax
	ja	.L108
	.loc 1 1190 0
	addl	$76, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE23:
	.size	compute_local_properties, .-compute_local_properties
	.type	alloc_reg_set_mem, @function
alloc_reg_set_mem:
.LFB24:
	.loc 1 1202 0
	pushl	%ebp
.LCFI41:
	movl	%esp, %ebp
.LCFI42:
	pushl	%edi
.LCFI43:
	pushl	%ebx
.LCFI44:
	subl	$32, %esp
.LCFI45:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1205 0
	movl	8(%ebp), %eax
	addl	$100, %eax
	movl	%eax, reg_set_table_size@GOTOFF(%ebx)
	.loc 1 1206 0
	movl	reg_set_table_size@GOTOFF(%ebx), %eax
	sall	$2, %eax
	movl	%eax, -12(%ebp)
	.loc 1 1207 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	gmalloc
	movl	%eax, reg_set_table@GOTOFF(%ebx)
	.loc 1 1208 0
	movl	reg_set_table@GOTOFF(%ebx), %eax
	movl	-12(%ebp), %edx
	movl	%eax, %edi
	cld
	movl	%edx, %ecx
	movl	$0, %eax
	rep
	stosb
	.loc 1 1210 0
	leal	reg_set_obstack@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	gcc_obstack_init@PLT
	.loc 1 1211 0
	addl	$32, %esp
	popl	%ebx
	popl	%edi
	popl	%ebp
	ret
.LFE24:
	.size	alloc_reg_set_mem, .-alloc_reg_set_mem
	.type	free_reg_set_mem, @function
free_reg_set_mem:
.LFB25:
	.loc 1 1215 0
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
	.loc 1 1216 0
	movl	reg_set_table@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	free@PLT
.LBB9:
	.loc 1 1217 0
	leal	reg_set_obstack@GOTOFF(%ebx), %eax
	movl	%eax, -12(%ebp)
	movl	$0, -8(%ebp)
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-8(%ebp), %eax
	jae	.L129
	movl	-12(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	-8(%ebp), %eax
	jbe	.L129
	movl	-8(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%edx, 8(%eax)
	movl	-12(%ebp), %eax
	movl	8(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%edx, 12(%eax)
	jmp	.L133
.L129:
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	obstack_free@PLT
.L133:
.LBE9:
	.loc 1 1218 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE25:
	.size	free_reg_set_mem, .-free_reg_set_mem
	.type	record_one_set, @function
record_one_set:
.LFB26:
	.loc 1 1226 0
	pushl	%ebp
.LCFI50:
	movl	%esp, %ebp
.LCFI51:
	pushl	%edi
.LCFI52:
	pushl	%esi
.LCFI53:
	pushl	%ebx
.LCFI54:
	subl	$44, %esp
.LCFI55:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1231 0
	movl	reg_set_table_size@GOTOFF(%ebx), %eax
	cmpl	%eax, 8(%ebp)
	jl	.L135
.LBB10:
	.loc 1 1233 0
	movl	8(%ebp), %eax
	addl	$100, %eax
	movl	%eax, -36(%ebp)
	.loc 1 1235 0
	movl	-36(%ebp), %eax
	leal	0(,%eax,4), %edx
	movl	reg_set_table@GOTOFF(%ebx), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	grealloc
	movl	%eax, reg_set_table@GOTOFF(%ebx)
	.loc 1 1238 0
	movl	reg_set_table_size@GOTOFF(%ebx), %edx
	movl	-36(%ebp), %eax
	subl	%edx, %eax
	leal	0(,%eax,4), %ecx
	movl	reg_set_table_size@GOTOFF(%ebx), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_set_table@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, %edi
	cld
	movl	$0, %eax
	rep
	stosb
	.loc 1 1240 0
	movl	-36(%ebp), %eax
	movl	%eax, reg_set_table_size@GOTOFF(%ebx)
.L135:
.LBE10:
.LBB11:
	.loc 1 1243 0
	leal	reg_set_obstack@GOTOFF(%ebx), %eax
	movl	%eax, -32(%ebp)
.LBB12:
	movl	-32(%ebp), %eax
	movl	%eax, -28(%ebp)
	movl	$8, -24(%ebp)
	movl	-28(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, %edx
	movl	-28(%ebp), %eax
	movl	12(%eax), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	cmpl	-24(%ebp), %eax
	jge	.L137
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	_obstack_newchunk@PLT
.L137:
	movl	-28(%ebp), %eax
	movl	12(%eax), %edx
	movl	-24(%ebp), %eax
	addl	%eax, %edx
	movl	-28(%ebp), %eax
	movl	%edx, 12(%eax)
.LBE12:
.LBB13:
	movl	-32(%ebp), %eax
	movl	%eax, -20(%ebp)
	movl	-20(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -16(%ebp)
	movl	-20(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	-16(%ebp), %eax
	jne	.L139
	movl	-20(%ebp), %eax
	movzbl	40(%eax), %edx
	orl	$2, %edx
	movb	%dl, 40(%eax)
.L139:
	movl	-20(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, %edx
	movl	-20(%ebp), %eax
	movl	24(%eax), %eax
	addl	%eax, %edx
	movl	-20(%ebp), %eax
	movl	24(%eax), %eax
	notl	%eax
	andl	%edx, %eax
	movl	%eax, %edx
	movl	-20(%ebp), %eax
	movl	%edx, 12(%eax)
	movl	-20(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, %edx
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	-20(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, %edx
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, %esi
	subl	%eax, %esi
	movl	%esi, %eax
	cmpl	%eax, %ecx
	jle	.L141
	movl	-20(%ebp), %eax
	movl	16(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%edx, 12(%eax)
.L141:
	movl	-20(%ebp), %eax
	movl	12(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%edx, 8(%eax)
	movl	-16(%ebp), %eax
.LBE13:
.LBE11:
	movl	%eax, -40(%ebp)
	.loc 1 1245 0
	movl	bytes_used@GOTOFF(%ebx), %eax
	addl	$8, %eax
	movl	%eax, bytes_used@GOTOFF(%ebx)
	.loc 1 1246 0
	movl	-40(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 1247 0
	movl	8(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_set_table@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	movl	-40(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 1248 0
	movl	8(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_set_table@GOTOFF(%ebx), %eax
	addl	%eax, %edx
	movl	-40(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 1249 0
	addl	$44, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE26:
	.size	record_one_set, .-record_one_set
	.type	record_set_info, @function
record_set_info:
.LFB27:
	.loc 1 1259 0
	pushl	%ebp
.LCFI56:
	movl	%esp, %ebp
.LCFI57:
	subl	$24, %esp
.LCFI58:
	.loc 1 1260 0
	movl	16(%ebp), %eax
	movl	%eax, -4(%ebp)
	.loc 1 1262 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L148
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	jbe	.L148
	.loc 1 1263 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	movl	-4(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	record_one_set
.L148:
	.loc 1 1264 0
	leave
	ret
.LFE27:
	.size	record_set_info, .-record_set_info
	.type	compute_sets, @function
compute_sets:
.LFB28:
	.loc 1 1274 0
	pushl	%ebp
.LCFI59:
	movl	%esp, %ebp
.LCFI60:
	pushl	%ebx
.LCFI61:
	subl	$36, %esp
.LCFI62:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1277 0
	movl	8(%ebp), %eax
	movl	%eax, -8(%ebp)
	jmp	.L150
.L151:
	.loc 1 1278 0
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L152
	.loc 1 1279 0
	movl	-8(%ebp), %eax
	movl	44(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	record_set_info@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	note_stores@PLT
.L152:
	.loc 1 1277 0
	movl	-8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -8(%ebp)
.L150:
	cmpl	$0, -8(%ebp)
	jne	.L151
	.loc 1 1280 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE28:
	.size	compute_sets, .-compute_sets
	.type	want_to_gcse_p, @function
want_to_gcse_p:
.LFB29:
	.loc 1 1302 0
	pushl	%ebp
.LCFI63:
	movl	%esp, %ebp
.LCFI64:
	pushl	%esi
.LCFI65:
	pushl	%ebx
.LCFI66:
	subl	$48, %esp
.LCFI67:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1303 0
	movl	$0, -16(%ebp)
	.loc 1 1306 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	subl	$60, %eax
	movl	%eax, -36(%ebp)
	cmpl	$13, -36(%ebp)
	ja	.L157
	movl	$1, %eax
	movzbl	-36(%ebp), %ecx
	sall	%cl, %eax
	andl	$10353, %eax
	testl	%eax, %eax
	jne	.L158
	jmp	.L157
.L158:
	.loc 1 1314 0
	movl	$0, -32(%ebp)
	jmp	.L159
.L157:
	.loc 1 1321 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	general_operand@PLT
	testl	%eax, %eax
	je	.L160
	.loc 1 1322 0
	movl	$1, -32(%ebp)
	jmp	.L159
.L160:
	.loc 1 1323 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	testb	%al, %al
	jne	.L162
	.loc 1 1324 0
	movl	$0, -32(%ebp)
	jmp	.L159
.L162:
	.loc 1 1328 0
	movl	test_insn@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L164
	.loc 1 1330 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %esi
	movl	word_mode@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	$352, 4(%esp)
	movl	%eax, (%esp)
	call	gen_rtx_REG@PLT
	movl	%esi, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$57, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, (%esp)
	call	make_insn_raw@PLT
	movl	%eax, test_insn@GOTOFF(%ebx)
	.loc 1 1335 0
	movl	test_insn@GOTOFF(%ebx), %edx
	movl	test_insn@GOTOFF(%ebx), %eax
	movl	$0, 12(%eax)
	movl	12(%eax), %eax
	movl	%eax, 20(%edx)
.L164:
	.loc 1 1340 0
	movl	test_insn@GOTOFF(%ebx), %eax
	movl	44(%eax), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movb	%al, 2(%edx)
	.loc 1 1341 0
	movl	test_insn@GOTOFF(%ebx), %eax
	movl	44(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 12(%edx)
	.loc 1 1342 0
	movl	test_insn@GOTOFF(%ebx), %edx
	movl	test_insn@GOTOFF(%ebx), %eax
	movl	44(%eax), %ecx
	leal	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	recog@PLT
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	js	.L166
	movl	-16(%ebp), %eax
	testl	%eax, %eax
	je	.L168
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	added_clobbers_hard_reg_p@PLT
	testl	%eax, %eax
	jne	.L166
.L168:
	movl	$1, -28(%ebp)
	jmp	.L170
.L166:
	movl	$0, -28(%ebp)
.L170:
	movl	-28(%ebp), %eax
	movl	%eax, -32(%ebp)
.L159:
	movl	-32(%ebp), %eax
	.loc 1 1344 0
	addl	$48, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE29:
	.size	want_to_gcse_p, .-want_to_gcse_p
	.type	oprs_unchanged_p, @function
oprs_unchanged_p:
.LFB30:
	.loc 1 1354 0
	pushl	%ebp
.LCFI68:
	movl	%esp, %ebp
.LCFI69:
	pushl	%ebx
.LCFI70:
	subl	$68, %esp
.LCFI71:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1359 0
	cmpl	$0, 8(%ebp)
	jne	.L173
	.loc 1 1360 0
	movl	$1, -40(%ebp)
	jmp	.L175
.L173:
	.loc 1 1362 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -16(%ebp)
	.loc 1 1363 0
	movl	-16(%ebp), %eax
	subl	$54, %eax
	movl	%eax, -44(%ebp)
	cmpl	$57, -44(%ebp)
	ja	.L176
	movl	-44(%ebp), %eax
	sall	$2, %eax
	movl	.L181@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L181:
	.long	.L177@GOTOFF
	.long	.L177@GOTOFF
	.long	.L176@GOTOFF
	.long	.L176@GOTOFF
	.long	.L176@GOTOFF
	.long	.L176@GOTOFF
	.long	.L176@GOTOFF
	.long	.L176@GOTOFF
	.long	.L176@GOTOFF
	.long	.L176@GOTOFF
	.long	.L177@GOTOFF
	.long	.L177@GOTOFF
	.long	.L177@GOTOFF
	.long	.L176@GOTOFF
	.long	.L177@GOTOFF
	.long	.L177@GOTOFF
	.long	.L176@GOTOFF
	.long	.L178@GOTOFF
	.long	.L176@GOTOFF
	.long	.L176@GOTOFF
	.long	.L176@GOTOFF
	.long	.L176@GOTOFF
	.long	.L179@GOTOFF
	.long	.L177@GOTOFF
	.long	.L177@GOTOFF
	.long	.L177@GOTOFF
	.long	.L176@GOTOFF
	.long	.L176@GOTOFF
	.long	.L176@GOTOFF
	.long	.L176@GOTOFF
	.long	.L176@GOTOFF
	.long	.L176@GOTOFF
	.long	.L176@GOTOFF
	.long	.L176@GOTOFF
	.long	.L176@GOTOFF
	.long	.L176@GOTOFF
	.long	.L176@GOTOFF
	.long	.L176@GOTOFF
	.long	.L176@GOTOFF
	.long	.L176@GOTOFF
	.long	.L176@GOTOFF
	.long	.L176@GOTOFF
	.long	.L176@GOTOFF
	.long	.L176@GOTOFF
	.long	.L176@GOTOFF
	.long	.L176@GOTOFF
	.long	.L176@GOTOFF
	.long	.L176@GOTOFF
	.long	.L176@GOTOFF
	.long	.L176@GOTOFF
	.long	.L176@GOTOFF
	.long	.L176@GOTOFF
	.long	.L180@GOTOFF
	.long	.L180@GOTOFF
	.long	.L180@GOTOFF
	.long	.L180@GOTOFF
	.long	.L180@GOTOFF
	.long	.L180@GOTOFF
	.text
.L178:
.LBB14:
	.loc 1 1367 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_avail_info@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 1369 0
	movl	-8(%ebp), %eax
	movl	(%eax), %edx
	movl	current_bb@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	je	.L182
	.loc 1 1370 0
	movl	$1, -40(%ebp)
	jmp	.L175
.L182:
	.loc 1 1371 0
	cmpl	$0, 16(%ebp)
	je	.L184
	.loc 1 1372 0
	movl	-8(%ebp), %eax
	movl	8(%eax), %ecx
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	uid_cuid@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	cmpl	%eax, %ecx
	setl	%al
	movzbl	%al, %eax
	movl	%eax, -40(%ebp)
	jmp	.L175
.L184:
	.loc 1 1374 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %ecx
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	uid_cuid@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	cmpl	%eax, %ecx
	setge	%al
	movzbl	%al, %eax
	movl	%eax, -40(%ebp)
	jmp	.L175
.L179:
.LBE14:
	.loc 1 1378 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	uid_cuid@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	movl	current_bb@GOTOFF(%ebx), %ecx
	movl	16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	load_killed_in_block_p
	testl	%eax, %eax
	je	.L186
	.loc 1 1380 0
	movl	$0, -40(%ebp)
	jmp	.L175
.L186:
	.loc 1 1382 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	oprs_unchanged_p
	movl	%eax, -40(%ebp)
	jmp	.L175
.L180:
	.loc 1 1390 0
	movl	$0, -40(%ebp)
	jmp	.L175
.L177:
	.loc 1 1402 0
	movl	$1, -40(%ebp)
	jmp	.L175
.L176:
	.loc 1 1408 0
	movl	-16(%ebp), %edx
	movl	rtx_length@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	subl	$1, %eax
	movl	%eax, -24(%ebp)
	movl	-16(%ebp), %edx
	movl	rtx_format@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -12(%ebp)
	jmp	.L188
.L189:
	.loc 1 1410 0
	movl	-24(%ebp), %eax
	addl	-12(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$101, %al
	jne	.L190
	.loc 1 1415 0
	cmpl	$0, -24(%ebp)
	jne	.L192
	.loc 1 1416 0
	movl	-24(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %edx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	oprs_unchanged_p
	movl	%eax, -40(%ebp)
	jmp	.L175
.L192:
	.loc 1 1418 0
	movl	-24(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %edx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	oprs_unchanged_p
	testl	%eax, %eax
	jne	.L196
	.loc 1 1419 0
	movl	$0, -40(%ebp)
	jmp	.L175
.L190:
	.loc 1 1421 0
	movl	-24(%ebp), %eax
	addl	-12(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$69, %al
	jne	.L196
	.loc 1 1422 0
	movl	$0, -20(%ebp)
	jmp	.L198
.L199:
	.loc 1 1423 0
	movl	-24(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %edx
	movl	-20(%ebp), %eax
	movl	4(%edx,%eax,4), %edx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	oprs_unchanged_p
	testl	%eax, %eax
	jne	.L200
	.loc 1 1424 0
	movl	$0, -40(%ebp)
	jmp	.L175
.L200:
	.loc 1 1422 0
	addl	$1, -20(%ebp)
.L198:
	movl	-24(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	(%eax), %eax
	cmpl	-20(%ebp), %eax
	jg	.L199
.L196:
	.loc 1 1408 0
	subl	$1, -24(%ebp)
.L188:
	cmpl	$0, -24(%ebp)
	jns	.L189
	.loc 1 1427 0
	movl	$1, -40(%ebp)
.L175:
	movl	-40(%ebp), %eax
	.loc 1 1428 0
	addl	$68, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE30:
	.size	oprs_unchanged_p, .-oprs_unchanged_p
	.type	mems_conflict_for_gcse_p, @function
mems_conflict_for_gcse_p:
.LFB31:
	.loc 1 1449 0
	pushl	%ebp
.LCFI72:
	movl	%esp, %ebp
.LCFI73:
	pushl	%ebx
.LCFI74:
	subl	$20, %esp
.LCFI75:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1450 0
	jmp	.L205
.L206:
	.loc 1 1454 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 8(%ebp)
.L205:
	.loc 1 1450 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	je	.L206
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$143, %ax
	je	.L206
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$142, %ax
	je	.L206
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$74, %ax
	je	.L206
	.loc 1 1459 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L219
	.loc 1 1465 0
	movl	gcse_mem_operand@GOTOFF(%ebx), %eax
	cmpl	%eax, 8(%ebp)
	jne	.L213
	movl	pre_ldst_mems@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L213
	.loc 1 1467 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	find_rtx_in_ldst
	testl	%eax, %eax
	jne	.L219
	.loc 1 1468 0
	movl	$1, gcse_mems_conflict_p@GOTOFF(%ebx)
	.loc 1 1469 0
	jmp	.L219
.L213:
	.loc 1 1472 0
	movl	gcse_mem_operand@GOTOFF(%ebx), %ecx
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	rtx_addr_varies_p@GOT(%ebx), %eax
	movl	%eax, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	true_dependence@PLT
	testl	%eax, %eax
	je	.L219
	.loc 1 1474 0
	movl	$1, gcse_mems_conflict_p@GOTOFF(%ebx)
.L219:
	.loc 1 1475 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE31:
	.size	mems_conflict_for_gcse_p, .-mems_conflict_for_gcse_p
	.type	load_killed_in_block_p, @function
load_killed_in_block_p:
.LFB32:
	.loc 1 1491 0
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
	.loc 1 1492 0
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	modify_mem_list@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1493 0
	jmp	.L235
.L222:
.LBB15:
	.loc 1 1497 0
	cmpl	$0, 20(%ebp)
	je	.L223
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	uid_cuid@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	cmpl	12(%ebp), %eax
	jl	.L225
.L223:
	cmpl	$0, 20(%ebp)
	jne	.L226
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	uid_cuid@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	cmpl	12(%ebp), %eax
	jle	.L226
.L225:
	.loc 1 1502 0
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1503 0
	jmp	.L221
.L226:
	.loc 1 1506 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 1511 0
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$44, %ax
	jne	.L228
	.loc 1 1512 0
	movl	$1, -24(%ebp)
	jmp	.L230
.L228:
	.loc 1 1519 0
	movl	16(%ebp), %eax
	movl	%eax, gcse_mem_operand@GOTOFF(%ebx)
	.loc 1 1520 0
	movl	$0, gcse_mems_conflict_p@GOTOFF(%ebx)
	.loc 1 1521 0
	movl	-8(%ebp), %eax
	movl	44(%eax), %edx
	movl	$0, 8(%esp)
	leal	mems_conflict_for_gcse_p@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	note_stores@PLT
	.loc 1 1522 0
	movl	gcse_mems_conflict_p@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L231
	.loc 1 1523 0
	movl	$1, -24(%ebp)
	jmp	.L230
.L231:
	.loc 1 1524 0
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -12(%ebp)
.L221:
.L235:
.LBE15:
	.loc 1 1493 0
	cmpl	$0, -12(%ebp)
	jne	.L222
	.loc 1 1526 0
	movl	$0, -24(%ebp)
.L230:
	movl	-24(%ebp), %eax
	.loc 1 1527 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE32:
	.size	load_killed_in_block_p, .-load_killed_in_block_p
	.type	oprs_anticipatable_p, @function
oprs_anticipatable_p:
.LFB33:
	.loc 1 1535 0
	pushl	%ebp
.LCFI80:
	movl	%esp, %ebp
.LCFI81:
	subl	$24, %esp
.LCFI82:
	.loc 1 1536 0
	movl	$0, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	oprs_unchanged_p
	.loc 1 1537 0
	leave
	ret
.LFE33:
	.size	oprs_anticipatable_p, .-oprs_anticipatable_p
	.type	oprs_available_p, @function
oprs_available_p:
.LFB34:
	.loc 1 1545 0
	pushl	%ebp
.LCFI83:
	movl	%esp, %ebp
.LCFI84:
	subl	$24, %esp
.LCFI85:
	.loc 1 1546 0
	movl	$1, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	oprs_unchanged_p
	.loc 1 1547 0
	leave
	ret
.LFE34:
	.size	oprs_available_p, .-oprs_available_p
	.type	hash_expr, @function
hash_expr:
.LFB35:
	.loc 1 1563 0
	pushl	%ebp
.LCFI86:
	movl	%esp, %ebp
.LCFI87:
	subl	$40, %esp
.LCFI88:
	.loc 1 1566 0
	movl	16(%ebp), %eax
	movl	$0, (%eax)
	.loc 1 1568 0
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	hash_expr_1
	movl	%eax, -4(%ebp)
	.loc 1 1569 0
	movl	20(%ebp), %edx
	movl	-4(%ebp), %eax
	movl	%edx, %ecx
	movl	$0, %edx
	divl	%ecx
	movl	%edx, %eax
	.loc 1 1570 0
	leave
	ret
.LFE35:
	.size	hash_expr, .-hash_expr
	.section	.rodata
	.type	__FUNCTION__.12881, @object
	.size	__FUNCTION__.12881, 12
__FUNCTION__.12881:
	.string	"hash_expr_1"
.LC7:
	.string	"../../../kgccfe/gnu/gcse.c"
	.text
	.type	hash_expr_1, @function
hash_expr_1:
.LFB37:
	.loc 1 1595 0
	pushl	%ebp
.LCFI89:
	movl	%esp, %ebp
.LCFI90:
	pushl	%esi
.LCFI91:
	pushl	%ebx
.LCFI92:
	subl	$80, %esp
.LCFI93:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1597 0
	movl	$0, -36(%ebp)
	.loc 1 1605 0
	cmpl	$0, 8(%ebp)
	jne	.L300
	.loc 1 1606 0
	movl	-36(%ebp), %eax
	movl	%eax, -60(%ebp)
	jmp	.L245
.L243:
.L300:
	.loc 1 1609 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -32(%ebp)
	.loc 1 1610 0
	movl	-32(%ebp), %eax
	subl	$51, %eax
	movl	%eax, -64(%ebp)
	cmpl	$58, -64(%ebp)
	ja	.L246
	movl	-64(%ebp), %eax
	sall	$2, %eax
	movl	.L256@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L256:
	.long	.L247@GOTOFF
	.long	.L246@GOTOFF
	.long	.L248@GOTOFF
	.long	.L246@GOTOFF
	.long	.L246@GOTOFF
	.long	.L246@GOTOFF
	.long	.L246@GOTOFF
	.long	.L246@GOTOFF
	.long	.L246@GOTOFF
	.long	.L248@GOTOFF
	.long	.L246@GOTOFF
	.long	.L246@GOTOFF
	.long	.L246@GOTOFF
	.long	.L249@GOTOFF
	.long	.L250@GOTOFF
	.long	.L251@GOTOFF
	.long	.L246@GOTOFF
	.long	.L246@GOTOFF
	.long	.L248@GOTOFF
	.long	.L246@GOTOFF
	.long	.L252@GOTOFF
	.long	.L246@GOTOFF
	.long	.L246@GOTOFF
	.long	.L246@GOTOFF
	.long	.L246@GOTOFF
	.long	.L253@GOTOFF
	.long	.L254@GOTOFF
	.long	.L255@GOTOFF
	.long	.L248@GOTOFF
	.long	.L246@GOTOFF
	.long	.L246@GOTOFF
	.long	.L246@GOTOFF
	.long	.L246@GOTOFF
	.long	.L246@GOTOFF
	.long	.L246@GOTOFF
	.long	.L246@GOTOFF
	.long	.L246@GOTOFF
	.long	.L246@GOTOFF
	.long	.L246@GOTOFF
	.long	.L246@GOTOFF
	.long	.L246@GOTOFF
	.long	.L246@GOTOFF
	.long	.L246@GOTOFF
	.long	.L246@GOTOFF
	.long	.L246@GOTOFF
	.long	.L246@GOTOFF
	.long	.L246@GOTOFF
	.long	.L246@GOTOFF
	.long	.L246@GOTOFF
	.long	.L246@GOTOFF
	.long	.L246@GOTOFF
	.long	.L246@GOTOFF
	.long	.L246@GOTOFF
	.long	.L246@GOTOFF
	.long	.L246@GOTOFF
	.long	.L248@GOTOFF
	.long	.L248@GOTOFF
	.long	.L248@GOTOFF
	.long	.L248@GOTOFF
	.text
.L252:
	.loc 1 1613 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	addl	-36(%ebp), %eax
	addl	$9088, %eax
	movl	%eax, -36(%ebp)
	.loc 1 1614 0
	movl	-36(%ebp), %eax
	movl	%eax, -60(%ebp)
	jmp	.L245
.L249:
	.loc 1 1617 0
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	addl	12(%ebp), %eax
	addl	-36(%ebp), %eax
	addl	$8192, %eax
	movl	%eax, -36(%ebp)
	.loc 1 1619 0
	movl	-36(%ebp), %eax
	movl	%eax, -60(%ebp)
	jmp	.L245
.L250:
	.loc 1 1624 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	addl	-32(%ebp), %eax
	addl	%eax, -36(%ebp)
	.loc 1 1625 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	testb	%al, %al
	je	.L257
	.loc 1 1626 0
	movl	$2, -44(%ebp)
	jmp	.L259
.L260:
	.loc 1 1627 0
	movl	-44(%ebp), %edx
	movl	8(%ebp), %eax
	leal	4(%eax,%edx,8), %edx
	movl	(%edx), %eax
	movl	4(%edx), %edx
	addl	%eax, -36(%ebp)
	.loc 1 1626 0
	addl	$1, -44(%ebp)
.L259:
	movl	rtx_length@GOT(%ebx), %eax
	movzbl	65(%eax), %eax
	movzbl	%al, %eax
	cmpl	-44(%ebp), %eax
	jg	.L260
	jmp	.L262
.L257:
	.loc 1 1629 0
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, %ecx
	movl	8(%ebp), %eax
	movl	16(%eax), %edx
	movl	12(%eax), %eax
	leal	(%ecx,%eax), %eax
	addl	%eax, -36(%ebp)
.L262:
	.loc 1 1631 0
	movl	-36(%ebp), %eax
	movl	%eax, -60(%ebp)
	jmp	.L245
.L251:
.LBB16:
	.loc 1 1638 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 1640 0
	movl	$0, -44(%ebp)
	jmp	.L263
.L264:
	.loc 1 1642 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	-44(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	%eax, -20(%ebp)
	.loc 1 1643 0
	movl	-20(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	hash_expr_1
	addl	%eax, -36(%ebp)
	.loc 1 1640 0
	addl	$1, -44(%ebp)
.L263:
	movl	-44(%ebp), %eax
	cmpl	-24(%ebp), %eax
	jl	.L264
	.loc 1 1646 0
	movl	-36(%ebp), %eax
	movl	%eax, -60(%ebp)
	jmp	.L245
.L254:
.LBE16:
	.loc 1 1653 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	52(%eax), %eax
	addl	-36(%ebp), %eax
	addl	$9856, %eax
	movl	%eax, -36(%ebp)
	.loc 1 1655 0
	movl	-36(%ebp), %eax
	movl	%eax, -60(%ebp)
	jmp	.L245
.L255:
.LBB17:
	.loc 1 1664 0
	movl	$0, -16(%ebp)
	.loc 1 1665 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1667 0
	jmp	.L266
.L267:
	.loc 1 1668 0
	movl	-16(%ebp), %eax
	movl	%eax, %edx
	sall	$7, %edx
	movl	-12(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	leal	(%edx,%eax), %eax
	addl	%eax, -16(%ebp)
	addl	$1, -12(%ebp)
.L266:
	.loc 1 1667 0
	movl	-12(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L267
	.loc 1 1670 0
	movl	-36(%ebp), %eax
	addl	-16(%ebp), %eax
	addl	$9984, %eax
	movl	%eax, -36(%ebp)
	.loc 1 1671 0
	movl	-36(%ebp), %eax
	movl	%eax, -60(%ebp)
	jmp	.L245
.L253:
.LBE17:
	.loc 1 1675 0
	movl	8(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L269
	.loc 1 1677 0
	movl	16(%ebp), %eax
	movl	$1, (%eax)
	.loc 1 1678 0
	movl	$0, -60(%ebp)
	jmp	.L245
.L269:
	.loc 1 1681 0
	addl	$76, -36(%ebp)
	.loc 1 1685 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 8(%ebp)
	.loc 1 1686 0
	jmp	.L243
.L248:
	.loc 1 1696 0
	movl	16(%ebp), %eax
	movl	$1, (%eax)
	.loc 1 1697 0
	movl	$0, -60(%ebp)
	jmp	.L245
.L247:
	.loc 1 1700 0
	movl	8(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L271
	.loc 1 1702 0
	movl	16(%ebp), %eax
	movl	$1, (%eax)
	.loc 1 1703 0
	movl	$0, -60(%ebp)
	jmp	.L245
.L271:
	.loc 1 1708 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, %esi
	addl	-32(%ebp), %esi
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	hash_string_1
	addl	%eax, %esi
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, (%esp)
	call	hash_string_1
	leal	(%esi,%eax), %edx
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	leal	(%edx,%eax), %eax
	addl	%eax, -36(%ebp)
	.loc 1 1713 0
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L273
	.loc 1 1715 0
	movl	$1, -44(%ebp)
	jmp	.L275
.L276:
	.loc 1 1717 0
	movl	8(%ebp), %eax
	movl	28(%eax), %edx
	movl	-44(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %ecx
	movl	8(%ebp), %eax
	movl	28(%eax), %edx
	movl	-44(%ebp), %eax
	movl	4(%edx,%eax,4), %edx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	hash_expr_1
	movl	%eax, %esi
	movl	8(%ebp), %eax
	movl	36(%eax), %edx
	movl	-44(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	hash_string_1
	leal	(%esi,%eax), %eax
	addl	%eax, -36(%ebp)
	.loc 1 1715 0
	addl	$1, -44(%ebp)
.L275:
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	(%eax), %eax
	cmpl	-44(%ebp), %eax
	jg	.L276
	.loc 1 1724 0
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	hash_string_1
	addl	%eax, -36(%ebp)
	.loc 1 1725 0
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, 8(%ebp)
	.loc 1 1726 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, 12(%ebp)
	.loc 1 1727 0
	jmp	.L243
.L273:
	.loc 1 1729 0
	movl	-36(%ebp), %eax
	movl	%eax, -60(%ebp)
	jmp	.L245
.L246:
	.loc 1 1736 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	addl	-32(%ebp), %eax
	addl	%eax, -36(%ebp)
	.loc 1 1737 0
	movl	-32(%ebp), %edx
	movl	rtx_length@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	subl	$1, %eax
	movl	%eax, -44(%ebp)
	movl	-32(%ebp), %edx
	movl	rtx_format@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -28(%ebp)
	jmp	.L278
.L279:
	.loc 1 1739 0
	movl	-44(%ebp), %eax
	addl	-28(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$101, %al
	jne	.L280
	.loc 1 1744 0
	cmpl	$0, -44(%ebp)
	jne	.L282
	.loc 1 1746 0
	movl	-44(%ebp), %eax
	movl	8(%ebp), %edx
	movl	4(%edx,%eax,8), %eax
	movl	%eax, 8(%ebp)
	.loc 1 1747 0
	jmp	.L243
.L282:
	.loc 1 1750 0
	movl	-44(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %edx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	%edx, (%esp)
	call	hash_expr_1
	addl	%eax, -36(%ebp)
	.loc 1 1751 0
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L286
	.loc 1 1752 0
	movl	$0, -60(%ebp)
	jmp	.L245
.L280:
	.loc 1 1755 0
	movl	-44(%ebp), %eax
	addl	-28(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$69, %al
	jne	.L287
	.loc 1 1756 0
	movl	$0, -40(%ebp)
	jmp	.L289
.L290:
	.loc 1 1758 0
	movl	-44(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %edx
	movl	-40(%ebp), %eax
	movl	4(%edx,%eax,4), %edx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	%edx, (%esp)
	call	hash_expr_1
	addl	%eax, -36(%ebp)
	.loc 1 1759 0
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L291
	.loc 1 1760 0
	movl	$0, -60(%ebp)
	jmp	.L245
.L291:
	.loc 1 1756 0
	addl	$1, -40(%ebp)
.L289:
	movl	-44(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	(%eax), %eax
	cmpl	-40(%ebp), %eax
	jg	.L290
	jmp	.L286
.L287:
	.loc 1 1763 0
	movl	-44(%ebp), %eax
	addl	-28(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$115, %al
	jne	.L294
	.loc 1 1764 0
	movl	-44(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	%eax, (%esp)
	call	hash_string_1
	addl	%eax, -36(%ebp)
	jmp	.L286
.L294:
	.loc 1 1765 0
	movl	-44(%ebp), %eax
	addl	-28(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$105, %al
	jne	.L296
	.loc 1 1766 0
	movl	-44(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	addl	%eax, -36(%ebp)
	jmp	.L286
.L296:
	.loc 1 1768 0
	leal	__FUNCTION__.12881@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1768, 4(%esp)
	leal	.LC7@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L286:
	.loc 1 1737 0
	subl	$1, -44(%ebp)
.L278:
	cmpl	$0, -44(%ebp)
	jns	.L279
	.loc 1 1771 0
	movl	-36(%ebp), %eax
	movl	%eax, -60(%ebp)
.L245:
	movl	-60(%ebp), %eax
	.loc 1 1772 0
	addl	$80, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE37:
	.size	hash_expr_1, .-hash_expr_1
	.type	hash_string_1, @function
hash_string_1:
.LFB36:
	.loc 1 1577 0
	pushl	%ebp
.LCFI94:
	movl	%esp, %ebp
.LCFI95:
	subl	$16, %esp
.LCFI96:
	.loc 1 1578 0
	movl	$0, -8(%ebp)
	.loc 1 1579 0
	movl	8(%ebp), %eax
	movl	%eax, -4(%ebp)
	.loc 1 1581 0
	cmpl	$0, -4(%ebp)
	je	.L302
	.loc 1 1582 0
	jmp	.L304
.L305:
	.loc 1 1583 0
	movl	-4(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	addl	%eax, -8(%ebp)
	addl	$1, -4(%ebp)
.L304:
	.loc 1 1582 0
	movl	-4(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L305
.L302:
	.loc 1 1585 0
	movl	-8(%ebp), %eax
	.loc 1 1586 0
	leave
	ret
.LFE36:
	.size	hash_string_1, .-hash_string_1
	.type	hash_set, @function
hash_set:
.LFB38:
	.loc 1 1785 0
	pushl	%ebp
.LCFI97:
	movl	%esp, %ebp
.LCFI98:
	subl	$16, %esp
.LCFI99:
	.loc 1 1788 0
	movl	8(%ebp), %eax
	movl	%eax, -4(%ebp)
	.loc 1 1789 0
	movl	12(%ebp), %edx
	movl	-4(%ebp), %eax
	movl	%edx, %ecx
	movl	$0, %edx
	divl	%ecx
	movl	%edx, %eax
	.loc 1 1790 0
	leave
	ret
.LFE38:
	.size	hash_set, .-hash_set
	.section	.rodata
	.type	__FUNCTION__.13085, @object
	.size	__FUNCTION__.13085, 13
__FUNCTION__.13085:
	.string	"expr_equiv_p"
	.text
	.type	expr_equiv_p, @function
expr_equiv_p:
.LFB39:
	.loc 1 1798 0
	pushl	%ebp
.LCFI100:
	movl	%esp, %ebp
.LCFI101:
	pushl	%edi
.LCFI102:
	pushl	%esi
.LCFI103:
	pushl	%ebx
.LCFI104:
	subl	$76, %esp
.LCFI105:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1803 0
	movl	8(%ebp), %eax
	cmpl	12(%ebp), %eax
	jne	.L310
	.loc 1 1804 0
	movl	$1, -68(%ebp)
	jmp	.L312
.L310:
	.loc 1 1806 0
	cmpl	$0, 8(%ebp)
	je	.L313
	cmpl	$0, 12(%ebp)
	jne	.L315
.L313:
	.loc 1 1807 0
	movl	8(%ebp), %eax
	cmpl	12(%ebp), %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -68(%ebp)
	jmp	.L312
.L315:
	.loc 1 1809 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -24(%ebp)
	.loc 1 1810 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	cmpl	-24(%ebp), %eax
	je	.L316
	.loc 1 1811 0
	movl	$0, -68(%ebp)
	jmp	.L312
.L316:
	.loc 1 1814 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %edx
	movl	12(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	%al, %dl
	je	.L318
	.loc 1 1815 0
	movl	$0, -68(%ebp)
	jmp	.L312
.L318:
	.loc 1 1817 0
	movl	-24(%ebp), %eax
	subl	$51, %eax
	movl	%eax, -72(%ebp)
	cmpl	$62, -72(%ebp)
	ja	.L320
	movl	-72(%ebp), %eax
	sall	$2, %eax
	movl	.L329@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L329:
	.long	.L321@GOTOFF
	.long	.L320@GOTOFF
	.long	.L320@GOTOFF
	.long	.L320@GOTOFF
	.long	.L320@GOTOFF
	.long	.L320@GOTOFF
	.long	.L320@GOTOFF
	.long	.L320@GOTOFF
	.long	.L320@GOTOFF
	.long	.L320@GOTOFF
	.long	.L320@GOTOFF
	.long	.L320@GOTOFF
	.long	.L320@GOTOFF
	.long	.L322@GOTOFF
	.long	.L320@GOTOFF
	.long	.L320@GOTOFF
	.long	.L320@GOTOFF
	.long	.L320@GOTOFF
	.long	.L323@GOTOFF
	.long	.L320@GOTOFF
	.long	.L324@GOTOFF
	.long	.L320@GOTOFF
	.long	.L320@GOTOFF
	.long	.L320@GOTOFF
	.long	.L320@GOTOFF
	.long	.L325@GOTOFF
	.long	.L326@GOTOFF
	.long	.L327@GOTOFF
	.long	.L323@GOTOFF
	.long	.L320@GOTOFF
	.long	.L320@GOTOFF
	.long	.L320@GOTOFF
	.long	.L320@GOTOFF
	.long	.L320@GOTOFF
	.long	.L328@GOTOFF
	.long	.L320@GOTOFF
	.long	.L320@GOTOFF
	.long	.L328@GOTOFF
	.long	.L320@GOTOFF
	.long	.L320@GOTOFF
	.long	.L320@GOTOFF
	.long	.L320@GOTOFF
	.long	.L328@GOTOFF
	.long	.L328@GOTOFF
	.long	.L328@GOTOFF
	.long	.L320@GOTOFF
	.long	.L320@GOTOFF
	.long	.L320@GOTOFF
	.long	.L320@GOTOFF
	.long	.L320@GOTOFF
	.long	.L320@GOTOFF
	.long	.L320@GOTOFF
	.long	.L320@GOTOFF
	.long	.L320@GOTOFF
	.long	.L320@GOTOFF
	.long	.L320@GOTOFF
	.long	.L320@GOTOFF
	.long	.L320@GOTOFF
	.long	.L320@GOTOFF
	.long	.L320@GOTOFF
	.long	.L320@GOTOFF
	.long	.L328@GOTOFF
	.long	.L328@GOTOFF
	.text
.L323:
	.loc 1 1821 0
	movl	8(%ebp), %eax
	cmpl	12(%ebp), %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -68(%ebp)
	jmp	.L312
.L322:
	.loc 1 1824 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%eax), %ecx
	movl	%edx, -64(%ebp)
	movl	%ecx, -60(%ebp)
	movl	12(%ebp), %eax
	movl	4(%eax), %esi
	movl	8(%eax), %edi
	movl	-64(%ebp), %eax
	xorl	%esi, %eax
	movl	-60(%ebp), %edx
	xorl	%edi, %edx
	orl	%edx, %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -68(%ebp)
	jmp	.L312
.L326:
	.loc 1 1827 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -68(%ebp)
	jmp	.L312
.L327:
	.loc 1 1830 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -68(%ebp)
	jmp	.L312
.L324:
	.loc 1 1833 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -68(%ebp)
	jmp	.L312
.L325:
	.loc 1 1839 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	.L330
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	(%eax), %edx
	movl	4(%eax), %ecx
	movl	%edx, -56(%ebp)
	movl	%ecx, -52(%ebp)
	jmp	.L332
.L330:
	movl	$0, -56(%ebp)
	movl	$0, -52(%ebp)
.L332:
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	.L333
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	movl	(%eax), %edx
	movl	4(%eax), %ecx
	movl	%edx, -48(%ebp)
	movl	%ecx, -44(%ebp)
	jmp	.L335
.L333:
	movl	$0, -48(%ebp)
	movl	$0, -44(%ebp)
.L335:
	movl	-52(%ebp), %eax
	xorl	-44(%ebp), %eax
	movl	-56(%ebp), %edx
	xorl	-48(%ebp), %edx
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L320
	.loc 1 1840 0
	movl	$0, -68(%ebp)
	jmp	.L312
.L328:
	.loc 1 1851 0
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	expr_equiv_p
	testl	%eax, %eax
	je	.L338
	movl	12(%ebp), %eax
	movl	12(%eax), %edx
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	expr_equiv_p
	testl	%eax, %eax
	jne	.L340
.L338:
	movl	12(%ebp), %eax
	movl	12(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	expr_equiv_p
	testl	%eax, %eax
	je	.L341
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	expr_equiv_p
	testl	%eax, %eax
	je	.L341
.L340:
	movl	$1, -40(%ebp)
	jmp	.L343
.L341:
	movl	$0, -40(%ebp)
.L343:
	movl	-40(%ebp), %ecx
	movl	%ecx, -68(%ebp)
	jmp	.L312
.L321:
	.loc 1 1861 0
	movl	8(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L344
	movl	12(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L346
.L344:
	.loc 1 1862 0
	movl	$0, -68(%ebp)
	jmp	.L312
.L346:
	.loc 1 1864 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %edx
	movl	12(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	%al, %dl
	jne	.L347
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L347
	movl	12(%ebp), %eax
	movl	12(%eax), %edx
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L347
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	cmpl	%eax, %edx
	jne	.L347
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	(%eax), %edx
	movl	12(%ebp), %eax
	movl	28(%eax), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	je	.L352
.L347:
	.loc 1 1870 0
	movl	$0, -68(%ebp)
	jmp	.L312
.L352:
	.loc 1 1872 0
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L353
	.loc 1 1874 0
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	(%eax), %eax
	subl	$1, %eax
	movl	%eax, -32(%ebp)
	jmp	.L355
.L356:
	.loc 1 1875 0
	movl	12(%ebp), %eax
	movl	28(%eax), %edx
	movl	-32(%ebp), %eax
	movl	4(%edx,%eax,4), %ecx
	movl	8(%ebp), %eax
	movl	28(%eax), %edx
	movl	-32(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	expr_equiv_p
	testl	%eax, %eax
	je	.L357
	movl	12(%ebp), %eax
	movl	36(%eax), %edx
	movl	-32(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	4(%eax), %ecx
	movl	8(%ebp), %eax
	movl	36(%eax), %edx
	movl	-32(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	4(%eax), %eax
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L359
.L357:
	.loc 1 1879 0
	movl	$0, -68(%ebp)
	jmp	.L312
.L359:
	.loc 1 1874 0
	subl	$1, -32(%ebp)
.L355:
	cmpl	$0, -32(%ebp)
	jns	.L356
.L353:
	.loc 1 1882 0
	movl	$1, -68(%ebp)
	jmp	.L312
.L320:
	.loc 1 1891 0
	movl	-24(%ebp), %edx
	movl	rtx_format@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -20(%ebp)
	.loc 1 1892 0
	movl	-24(%ebp), %edx
	movl	rtx_length@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	subl	$1, %eax
	movl	%eax, -32(%ebp)
	jmp	.L360
.L361:
	.loc 1 1894 0
	movl	-32(%ebp), %eax
	addl	-20(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -36(%ebp)
	cmpl	$101, -36(%ebp)
	je	.L365
	cmpl	$101, -36(%ebp)
	jg	.L369
	cmpl	$48, -36(%ebp)
	je	.L372
	cmpl	$69, -36(%ebp)
	je	.L364
	jmp	.L362
.L369:
	cmpl	$115, -36(%ebp)
	je	.L367
	cmpl	$119, -36(%ebp)
	je	.L368
	cmpl	$105, -36(%ebp)
	je	.L366
	jmp	.L362
.L365:
	.loc 1 1897 0
	movl	-32(%ebp), %edx
	movl	12(%ebp), %eax
	movl	4(%eax,%edx,8), %ecx
	movl	-32(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	expr_equiv_p
	testl	%eax, %eax
	jne	.L372
	.loc 1 1898 0
	movl	$0, -68(%ebp)
	jmp	.L312
.L364:
	.loc 1 1902 0
	movl	-32(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	(%eax), %ecx
	movl	-32(%ebp), %edx
	movl	12(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	(%eax), %eax
	cmpl	%eax, %ecx
	je	.L373
	.loc 1 1903 0
	movl	$0, -68(%ebp)
	jmp	.L312
.L373:
	.loc 1 1904 0
	movl	$0, -28(%ebp)
	jmp	.L375
.L376:
	.loc 1 1905 0
	movl	-32(%ebp), %edx
	movl	12(%ebp), %eax
	movl	4(%eax,%edx,8), %edx
	movl	-28(%ebp), %eax
	movl	4(%edx,%eax,4), %ecx
	movl	-32(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %edx
	movl	-28(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	expr_equiv_p
	testl	%eax, %eax
	jne	.L377
	.loc 1 1906 0
	movl	$0, -68(%ebp)
	jmp	.L312
.L377:
	.loc 1 1904 0
	addl	$1, -28(%ebp)
.L375:
	movl	-32(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	(%eax), %eax
	cmpl	-28(%ebp), %eax
	jg	.L376
	.loc 1 1907 0
	jmp	.L372
.L367:
	.loc 1 1910 0
	movl	-32(%ebp), %edx
	movl	12(%ebp), %eax
	movl	4(%eax,%edx,8), %ecx
	movl	-32(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L372
	.loc 1 1911 0
	movl	$0, -68(%ebp)
	jmp	.L312
.L366:
	.loc 1 1915 0
	movl	-32(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %ecx
	movl	-32(%ebp), %edx
	movl	12(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	cmpl	%eax, %ecx
	je	.L372
	.loc 1 1916 0
	movl	$0, -68(%ebp)
	jmp	.L312
.L368:
	.loc 1 1920 0
	movl	-32(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %esi
	movl	8(%eax,%edx,8), %edi
	movl	-32(%ebp), %edx
	movl	12(%ebp), %eax
	leal	4(%eax,%edx,8), %edx
	movl	(%edx), %eax
	movl	4(%edx), %edx
	movl	%edi, %ecx
	xorl	%edx, %ecx
	xorl	%esi, %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	je	.L372
	.loc 1 1921 0
	movl	$0, -68(%ebp)
	jmp	.L312
.L362:
	.loc 1 1928 0
	leal	__FUNCTION__.13085@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1928, 4(%esp)
	leal	.LC7@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L372:
	.loc 1 1892 0
	subl	$1, -32(%ebp)
.L360:
	cmpl	$0, -32(%ebp)
	jns	.L361
	.loc 1 1932 0
	movl	$1, -68(%ebp)
.L312:
	movl	-68(%ebp), %eax
	.loc 1 1933 0
	addl	$76, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE39:
	.size	expr_equiv_p, .-expr_equiv_p
	.type	insert_expr_in_table, @function
insert_expr_in_table:
.LFB40:
	.loc 1 1952 0
	pushl	%ebp
.LCFI106:
	movl	%esp, %ebp
.LCFI107:
	pushl	%ebx
.LCFI108:
	subl	$52, %esp
.LCFI109:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1955 0
	movl	$0, -20(%ebp)
	.loc 1 1957 0
	movl	$0, -8(%ebp)
	.loc 1 1959 0
	movl	28(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 12(%esp)
	leal	-36(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	hash_expr
	movl	%eax, -28(%ebp)
	.loc 1 1964 0
	movl	-36(%ebp), %eax
	testl	%eax, %eax
	jne	.L420
	.loc 1 1967 0
	movl	28(%ebp), %eax
	movl	(%eax), %edx
	movl	-28(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 1968 0
	movl	$0, -32(%ebp)
	.loc 1 1970 0
	jmp	.L391
.L392:
	.loc 1 1974 0
	movl	-24(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 1975 0
	movl	-24(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -24(%ebp)
.L391:
	.loc 1 1970 0
	cmpl	$0, -24(%ebp)
	je	.L393
	movl	-24(%ebp), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	expr_equiv_p
	movl	%eax, -32(%ebp)
	cmpl	$0, -32(%ebp)
	je	.L392
.L393:
	.loc 1 1978 0
	cmpl	$0, -32(%ebp)
	jne	.L395
	.loc 1 1980 0
	movl	$24, (%esp)
	call	gcse_alloc
	movl	%eax, -24(%ebp)
	.loc 1 1981 0
	movl	bytes_used@GOTOFF(%ebx), %eax
	addl	$24, %eax
	movl	%eax, bytes_used@GOTOFF(%ebx)
	.loc 1 1982 0
	movl	28(%ebp), %eax
	movl	(%eax), %edx
	movl	-28(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L397
	.loc 1 1984 0
	movl	28(%ebp), %eax
	movl	(%eax), %edx
	movl	-28(%ebp), %eax
	sall	$2, %eax
	addl	%eax, %edx
	movl	-24(%ebp), %eax
	movl	%eax, (%edx)
	jmp	.L399
.L397:
	.loc 1 1987 0
	movl	-20(%ebp), %edx
	movl	-24(%ebp), %eax
	movl	%eax, 8(%edx)
.L399:
	.loc 1 1990 0
	movl	-24(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 1991 0
	movl	28(%ebp), %eax
	movl	8(%eax), %ecx
	movl	%ecx, %edx
	movl	-24(%ebp), %eax
	movl	%edx, 4(%eax)
	leal	1(%ecx), %edx
	movl	28(%ebp), %eax
	movl	%edx, 8(%eax)
	.loc 1 1992 0
	movl	-24(%ebp), %eax
	movl	$0, 8(%eax)
	.loc 1 1993 0
	movl	-24(%ebp), %eax
	movl	$0, 12(%eax)
	.loc 1 1994 0
	movl	-24(%ebp), %eax
	movl	$0, 16(%eax)
.L395:
	.loc 1 1998 0
	cmpl	$0, 20(%ebp)
	je	.L400
	.loc 1 2000 0
	movl	-24(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 2003 0
	jmp	.L402
.L403:
	.loc 1 2007 0
	movl	-16(%ebp), %eax
	movl	%eax, -8(%ebp)
	.loc 1 2008 0
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
.L402:
	.loc 1 2003 0
	cmpl	$0, -16(%ebp)
	je	.L404
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	28(%eax), %eax
	movl	44(%eax), %edx
	movl	16(%ebp), %eax
	movl	28(%eax), %eax
	movl	44(%eax), %eax
	cmpl	%eax, %edx
	jne	.L403
.L404:
	.loc 1 2011 0
	cmpl	$0, -16(%ebp)
	jne	.L400
	.loc 1 2019 0
	movl	$12, (%esp)
	call	gcse_alloc
	movl	%eax, -16(%ebp)
	.loc 1 2020 0
	movl	bytes_used@GOTOFF(%ebx), %eax
	addl	$12, %eax
	movl	%eax, bytes_used@GOTOFF(%ebx)
	.loc 1 2022 0
	movl	-24(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	jne	.L407
	.loc 1 2023 0
	movl	-24(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 12(%edx)
	jmp	.L409
.L407:
	.loc 1 2025 0
	movl	-8(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	%eax, (%edx)
.L409:
	.loc 1 2027 0
	movl	-16(%ebp), %eax
	movl	16(%ebp), %edx
	movl	%edx, 4(%eax)
	.loc 1 2028 0
	movl	-16(%ebp), %eax
	movl	$0, (%eax)
.L400:
	.loc 1 2032 0
	cmpl	$0, 24(%ebp)
	je	.L420
	.loc 1 2034 0
	movl	-24(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 2037 0
	jmp	.L411
.L412:
	.loc 1 2041 0
	movl	-12(%ebp), %eax
	movl	%eax, -8(%ebp)
	.loc 1 2042 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
.L411:
	.loc 1 2037 0
	cmpl	$0, -12(%ebp)
	je	.L413
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	28(%eax), %eax
	movl	44(%eax), %edx
	movl	16(%ebp), %eax
	movl	28(%eax), %eax
	movl	44(%eax), %eax
	cmpl	%eax, %edx
	jne	.L412
.L413:
	.loc 1 2045 0
	cmpl	$0, -12(%ebp)
	je	.L415
	.loc 1 2050 0
	movl	-12(%ebp), %edx
	movl	16(%ebp), %eax
	movl	%eax, 4(%edx)
	jmp	.L420
.L415:
	.loc 1 2054 0
	movl	$12, (%esp)
	call	gcse_alloc
	movl	%eax, -12(%ebp)
	.loc 1 2055 0
	movl	bytes_used@GOTOFF(%ebx), %eax
	addl	$12, %eax
	movl	%eax, bytes_used@GOTOFF(%ebx)
	.loc 1 2058 0
	movl	-24(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	jne	.L417
	.loc 1 2059 0
	movl	-24(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 16(%edx)
	jmp	.L419
.L417:
	.loc 1 2061 0
	movl	-8(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%eax, (%edx)
.L419:
	.loc 1 2063 0
	movl	-12(%ebp), %eax
	movl	16(%ebp), %edx
	movl	%edx, 4(%eax)
	.loc 1 2064 0
	movl	-12(%ebp), %eax
	movl	$0, (%eax)
.L420:
	.loc 1 2067 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE40:
	.size	insert_expr_in_table, .-insert_expr_in_table
	.section	.rodata
	.type	__FUNCTION__.13366, @object
	.size	__FUNCTION__.13366, 20
__FUNCTION__.13366:
	.string	"insert_set_in_table"
	.text
	.type	insert_set_in_table, @function
insert_set_in_table:
.LFB41:
	.loc 1 2079 0
	pushl	%ebp
.LCFI110:
	movl	%esp, %ebp
.LCFI111:
	pushl	%ebx
.LCFI112:
	subl	$52, %esp
.LCFI113:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2082 0
	movl	$0, -16(%ebp)
	.loc 1 2083 0
	movl	$0, -8(%ebp)
	.loc 1 2085 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L422
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	je	.L424
.L422:
	.loc 1 2087 0
	leal	__FUNCTION__.13366@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2087, 4(%esp)
	leal	.LC7@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L424:
	.loc 1 2089 0
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	hash_set
	movl	%eax, -24(%ebp)
	.loc 1 2091 0
	movl	16(%ebp), %eax
	movl	(%eax), %edx
	movl	-24(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 2092 0
	movl	$0, -28(%ebp)
	.loc 1 2094 0
	jmp	.L425
.L426:
	.loc 1 2098 0
	movl	-20(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 2099 0
	movl	-20(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -20(%ebp)
.L425:
	.loc 1 2094 0
	cmpl	$0, -20(%ebp)
	je	.L427
	movl	-20(%ebp), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	expr_equiv_p
	movl	%eax, -28(%ebp)
	cmpl	$0, -28(%ebp)
	je	.L426
.L427:
	.loc 1 2102 0
	cmpl	$0, -28(%ebp)
	jne	.L429
	.loc 1 2104 0
	movl	$24, (%esp)
	call	gcse_alloc
	movl	%eax, -20(%ebp)
	.loc 1 2105 0
	movl	bytes_used@GOTOFF(%ebx), %eax
	addl	$24, %eax
	movl	%eax, bytes_used@GOTOFF(%ebx)
	.loc 1 2106 0
	movl	16(%ebp), %eax
	movl	(%eax), %edx
	movl	-24(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L431
	.loc 1 2108 0
	movl	16(%ebp), %eax
	movl	(%eax), %edx
	movl	-24(%ebp), %eax
	sall	$2, %eax
	addl	%eax, %edx
	movl	-20(%ebp), %eax
	movl	%eax, (%edx)
	jmp	.L433
.L431:
	.loc 1 2111 0
	movl	-16(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	%eax, 8(%edx)
.L433:
	.loc 1 2116 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_rtx@PLT
	movl	%eax, %edx
	movl	-20(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 2117 0
	movl	16(%ebp), %eax
	movl	8(%eax), %ecx
	movl	%ecx, %edx
	movl	-20(%ebp), %eax
	movl	%edx, 4(%eax)
	leal	1(%ecx), %edx
	movl	16(%ebp), %eax
	movl	%edx, 8(%eax)
	.loc 1 2118 0
	movl	-20(%ebp), %eax
	movl	$0, 8(%eax)
	.loc 1 2119 0
	movl	-20(%ebp), %eax
	movl	$0, 12(%eax)
	.loc 1 2120 0
	movl	-20(%ebp), %eax
	movl	$0, 16(%eax)
.L429:
	.loc 1 2124 0
	movl	-20(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 2127 0
	jmp	.L434
.L435:
	.loc 1 2131 0
	movl	-12(%ebp), %eax
	movl	%eax, -8(%ebp)
	.loc 1 2132 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
.L434:
	.loc 1 2127 0
	cmpl	$0, -12(%ebp)
	je	.L436
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	28(%eax), %eax
	movl	44(%eax), %edx
	movl	12(%ebp), %eax
	movl	28(%eax), %eax
	movl	44(%eax), %eax
	cmpl	%eax, %edx
	jne	.L435
.L436:
	.loc 1 2135 0
	cmpl	$0, -12(%ebp)
	je	.L438
	.loc 1 2139 0
	movl	-12(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%edx)
	jmp	.L444
.L438:
	.loc 1 2143 0
	movl	$12, (%esp)
	call	gcse_alloc
	movl	%eax, -12(%ebp)
	.loc 1 2144 0
	movl	bytes_used@GOTOFF(%ebx), %eax
	addl	$12, %eax
	movl	%eax, bytes_used@GOTOFF(%ebx)
	.loc 1 2147 0
	movl	-20(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	jne	.L441
	.loc 1 2148 0
	movl	-20(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 16(%edx)
	jmp	.L443
.L441:
	.loc 1 2150 0
	movl	-8(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%eax, (%edx)
.L443:
	.loc 1 2152 0
	movl	-12(%ebp), %eax
	movl	12(%ebp), %edx
	movl	%edx, 4(%eax)
	.loc 1 2153 0
	movl	-12(%ebp), %eax
	movl	$0, (%eax)
.L444:
	.loc 1 2155 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE41:
	.size	insert_set_in_table, .-insert_set_in_table
	.type	hash_scan_set, @function
hash_scan_set:
.LFB42:
	.loc 1 2164 0
	pushl	%ebp
.LCFI114:
	movl	%esp, %ebp
.LCFI115:
	pushl	%ebx
.LCFI116:
	subl	$68, %esp
.LCFI117:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2165 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 2166 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 2169 0
	movl	-32(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$60, %ax
	jne	.L446
	.loc 1 2170 0
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	hash_scan_call
	jmp	.L499
.L446:
	.loc 1 2172 0
	movl	-28(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L499
.LBB18:
	.loc 1 2174 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 2179 0
	movl	16(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	.L450
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_equal_equiv_note@PLT
	movl	%eax, -24(%ebp)
	cmpl	$0, -24(%ebp)
	je	.L450
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	je	.L453
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	je	.L453
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L453
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	je	.L453
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	je	.L453
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$144, %ax
	je	.L453
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$66, %ax
	je	.L453
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$150, %ax
	jne	.L450
.L453:
	.loc 1 2181 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -32(%ebp)
	movl	-32(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$57, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, 8(%ebp)
.L450:
	.loc 1 2184 0
	movl	16(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	jne	.L461
	cmpl	$175, -20(%ebp)
	jbe	.L461
	movl	-28(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movzbl	can_copy_p@GOTOFF(%ebx,%eax), %eax
	testb	%al, %al
	je	.L461
	movl	$0, 8(%esp)
	movl	$22, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	testl	%eax, %eax
	jne	.L461
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	want_to_gcse_p
	testl	%eax, %eax
	je	.L461
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	set_noop_p@PLT
	testl	%eax, %eax
	jne	.L461
	movl	$0, 8(%esp)
	movl	$3, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	movl	%eax, -24(%ebp)
	cmpl	$0, -24(%ebp)
	je	.L468
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	je	.L461
.L468:
.LBB19:
	.loc 1 2207 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	oprs_anticipatable_p
	testl	%eax, %eax
	je	.L470
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L470
	movl	12(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L473
	movl	12(%ebp), %eax
	movl	44(%eax), %eax
	testl	%eax, %eax
	je	.L470
	jmp	.L476
.L473:
	movl	12(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	single_set_2@PLT
	testl	%eax, %eax
	je	.L470
.L476:
	movl	$1, -44(%ebp)
	jmp	.L477
.L470:
	movl	$0, -44(%ebp)
.L477:
	movl	-44(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 2213 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	oprs_available_p
	testl	%eax, %eax
	je	.L478
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	je	.L478
	movl	$1, -40(%ebp)
	jmp	.L481
.L478:
	movl	$0, -40(%ebp)
.L481:
	movl	-40(%ebp), %eax
	movl	%eax, -8(%ebp)
	.loc 1 2215 0
	movl	-28(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	16(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	insert_expr_in_table
	.loc 1 2184 0
	jmp	.L499
.L461:
.LBE19:
	.loc 1 2219 0
	movl	16(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	.L499
	cmpl	$175, -20(%ebp)
	jbe	.L499
	movl	-32(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L484
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	jbe	.L484
	movl	-28(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movzbl	can_copy_p@GOTOFF(%ebx,%eax), %eax
	testb	%al, %al
	je	.L484
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-20(%ebp), %eax
	jne	.L488
.L484:
	movl	-32(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	je	.L488
	movl	-32(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	je	.L488
	movl	-32(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L488
	movl	-32(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	je	.L488
	movl	-32(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	je	.L488
	movl	-32(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$144, %ax
	je	.L488
	movl	-32(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$66, %ax
	je	.L488
	movl	-32(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$150, %ax
	jne	.L499
.L488:
	movl	basic_block_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	12(%ebp), %eax
	movl	28(%eax), %eax
	movl	44(%eax), %eax
	movl	16(%edx,%eax,4), %eax
	movl	4(%eax), %eax
	cmpl	12(%ebp), %eax
	je	.L496
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	next_nonnote_insn@PLT
	movl	%eax, -16(%ebp)
	cmpl	$0, -16(%ebp)
	je	.L499
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	oprs_available_p
	testl	%eax, %eax
	je	.L499
.L496:
	.loc 1 2232 0
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	insert_set_in_table
.L499:
.LBE18:
	.loc 1 2234 0
	addl	$68, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE42:
	.size	hash_scan_set, .-hash_scan_set
	.type	hash_scan_clobber, @function
hash_scan_clobber:
.LFB43:
	.loc 1 2240 0
	pushl	%ebp
.LCFI118:
	movl	%esp, %ebp
.LCFI119:
	.loc 1 2242 0
	popl	%ebp
	ret
.LFE43:
	.size	hash_scan_clobber, .-hash_scan_clobber
	.type	hash_scan_call, @function
hash_scan_call:
.LFB44:
	.loc 1 2248 0
	pushl	%ebp
.LCFI120:
	movl	%esp, %ebp
.LCFI121:
	.loc 1 2250 0
	popl	%ebp
	ret
.LFE44:
	.size	hash_scan_call, .-hash_scan_call
	.type	hash_scan_insn, @function
hash_scan_insn:
.LFB45:
	.loc 1 2270 0
	pushl	%ebp
.LCFI122:
	movl	%esp, %ebp
.LCFI123:
	subl	$40, %esp
.LCFI124:
	.loc 1 2271 0
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 2274 0
	cmpl	$0, 16(%ebp)
	jne	.L523
	.loc 1 2280 0
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L507
	.loc 1 2281 0
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	hash_scan_set
	jmp	.L523
.L507:
	.loc 1 2282 0
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$49, %ax
	jne	.L509
	.loc 1 2283 0
	movl	$0, -8(%ebp)
	jmp	.L511
.L512:
.LBB20:
	.loc 1 2285 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %edx
	movl	-8(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	%eax, -4(%ebp)
	.loc 1 2287 0
	movl	-4(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L513
	.loc 1 2288 0
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-4(%ebp), %eax
	movl	%eax, (%esp)
	call	hash_scan_set
	jmp	.L515
.L513:
	.loc 1 2289 0
	movl	-4(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$59, %ax
	jne	.L516
	.loc 1 2290 0
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-4(%ebp), %eax
	movl	%eax, (%esp)
	call	hash_scan_clobber
	jmp	.L515
.L516:
	.loc 1 2291 0
	movl	-4(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$60, %ax
	jne	.L515
	.loc 1 2292 0
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-4(%ebp), %eax
	movl	%eax, (%esp)
	call	hash_scan_call
.L515:
.LBE20:
	.loc 1 2283 0
	addl	$1, -8(%ebp)
.L511:
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	cmpl	-8(%ebp), %eax
	jg	.L512
	jmp	.L523
.L509:
	.loc 1 2295 0
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$59, %ax
	jne	.L520
	.loc 1 2296 0
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	hash_scan_clobber
	jmp	.L523
.L520:
	.loc 1 2297 0
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$60, %ax
	jne	.L523
	.loc 1 2298 0
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	hash_scan_call
.L523:
	.loc 1 2299 0
	leave
	ret
.LFE45:
	.size	hash_scan_insn, .-hash_scan_insn
	.section	.rodata
	.align 4
.LC8:
	.string	"%s hash table (%d buckets, %d entries)\n"
.LC9:
	.string	"Index %d (hash value %d)\n  "
	.text
	.type	dump_hash_table, @function
dump_hash_table:
.LFB46:
	.loc 1 2306 0
	pushl	%ebp
.LCFI125:
	movl	%esp, %ebp
.LCFI126:
	pushl	%ebx
.LCFI127:
	subl	$36, %esp
.LCFI128:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2313 0
	movl	16(%ebp), %eax
	movl	8(%eax), %eax
	movl	$4, 4(%esp)
	movl	%eax, (%esp)
	call	xcalloc@PLT
	movl	%eax, -16(%ebp)
	.loc 1 2315 0
	movl	16(%ebp), %eax
	movl	8(%eax), %eax
	sall	$2, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, -12(%ebp)
	.loc 1 2317 0
	movl	$0, -20(%ebp)
	jmp	.L525
.L526:
	.loc 1 2318 0
	movl	16(%ebp), %eax
	movl	(%eax), %edx
	movl	-20(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L527
.L528:
	.loc 1 2320 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	addl	-16(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 2321 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	addl	-12(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 2318 0
	movl	-8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -8(%ebp)
.L527:
	cmpl	$0, -8(%ebp)
	jne	.L528
	.loc 1 2317 0
	addl	$1, -20(%ebp)
.L525:
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-20(%ebp), %eax
	jg	.L526
	.loc 1 2324 0
	movl	16(%ebp), %eax
	movl	8(%eax), %edx
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 16(%esp)
	movl	%eax, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC8@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 2327 0
	movl	$0, -20(%ebp)
	jmp	.L531
.L532:
	.loc 1 2328 0
	movl	-20(%ebp), %eax
	sall	$2, %eax
	addl	-16(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L533
	.loc 1 2330 0
	movl	-20(%ebp), %eax
	sall	$2, %eax
	addl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 2331 0
	movl	-20(%ebp), %eax
	sall	$2, %eax
	addl	-12(%ebp), %eax
	movl	(%eax), %edx
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	leal	.LC9@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 2333 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_rtl@PLT
	.loc 1 2334 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	fputc@PLT
.L533:
	.loc 1 2327 0
	addl	$1, -20(%ebp)
.L531:
	movl	16(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	-20(%ebp), %eax
	jg	.L532
	.loc 1 2337 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	fputc@PLT
	.loc 1 2339 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 2340 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 2341 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE46:
	.size	dump_hash_table, .-dump_hash_table
	.type	record_last_reg_set_info, @function
record_last_reg_set_info:
.LFB47:
	.loc 1 2361 0
	pushl	%ebp
.LCFI129:
	movl	%esp, %ebp
.LCFI130:
	pushl	%edi
.LCFI131:
	pushl	%esi
.LCFI132:
	pushl	%ebx
.LCFI133:
	subl	$36, %esp
.LCFI134:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2362 0
	movl	12(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_avail_info@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 2363 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	uid_cuid@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 2365 0
	movl	-24(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	%eax, 8(%edx)
	.loc 1 2366 0
	movl	-24(%ebp), %eax
	movl	(%eax), %edx
	movl	current_bb@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	je	.L540
	.loc 1 2368 0
	movl	current_bb@GOTOFF(%ebx), %edx
	movl	-24(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 2369 0
	movl	-24(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 2370 0
	movl	current_bb@GOTOFF(%ebx), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_set_in_block@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -48(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, %ecx
	shrl	$6, %ecx
	movl	%ecx, -44(%ebp)
	movl	current_bb@GOTOFF(%ebx), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_set_in_block@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	movl	%ecx, %eax
	movl	12(%edx,%eax,8), %esi
	movl	16(%edx,%eax,8), %edi
	movl	%esi, -40(%ebp)
	movl	%edi, -36(%ebp)
	movl	12(%ebp), %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L541
	movl	%esi, %edi
	xorl	%esi, %esi
.L541:
	movl	-40(%ebp), %eax
	orl	%esi, %eax
	movl	-36(%ebp), %edx
	orl	%edi, %edx
	movl	-44(%ebp), %edi
	movl	-48(%ebp), %ecx
	movl	%eax, 12(%ecx,%edi,8)
	movl	%edx, 16(%ecx,%edi,8)
.L540:
	.loc 1 2372 0
	addl	$36, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE47:
	.size	record_last_reg_set_info, .-record_last_reg_set_info
	.type	canon_list_insert, @function
canon_list_insert:
.LFB48:
	.loc 1 2384 0
	pushl	%ebp
.LCFI135:
	movl	%esp, %ebp
.LCFI136:
	pushl	%esi
.LCFI137:
	pushl	%ebx
.LCFI138:
	subl	$32, %esp
.LCFI139:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2388 0
	jmp	.L543
.L544:
	.loc 1 2392 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 8(%ebp)
.L543:
	.loc 1 2388 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	je	.L544
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$143, %ax
	je	.L544
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$142, %ax
	je	.L544
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$74, %ax
	je	.L544
	.loc 1 2398 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L551
	.loc 1 2401 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	get_addr@PLT
	movl	%eax, -20(%ebp)
	.loc 1 2402 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	canon_rtx@PLT
	movl	%eax, -20(%ebp)
	.loc 1 2403 0
	movl	16(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 2404 0
	movl	-16(%ebp), %eax
	movl	28(%eax), %eax
	movl	44(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 2406 0
	movl	-12(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	canon_modify_mem_list@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %esi
	movl	-12(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	canon_modify_mem_list@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	alloc_EXPR_LIST@PLT
	movl	%eax, (%esi)
	.loc 1 2408 0
	movl	-12(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	canon_modify_mem_list@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %esi
	movl	-12(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	canon_modify_mem_list@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	alloc_EXPR_LIST@PLT
	movl	%eax, (%esi)
	.loc 1 2410 0
	movl	canon_modify_mem_list_set@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	bitmap_set_bit@PLT
.L551:
	.loc 1 2411 0
	addl	$32, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE48:
	.size	canon_list_insert, .-canon_list_insert
	.type	record_last_mem_set_info, @function
record_last_mem_set_info:
.LFB49:
	.loc 1 2420 0
	pushl	%ebp
.LCFI140:
	movl	%esp, %ebp
.LCFI141:
	pushl	%esi
.LCFI142:
	pushl	%ebx
.LCFI143:
	subl	$32, %esp
.LCFI144:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2421 0
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	44(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 2425 0
	movl	-12(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	modify_mem_list@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %esi
	movl	-12(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	modify_mem_list@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	alloc_INSN_LIST@PLT
	movl	%eax, (%esi)
	.loc 1 2426 0
	movl	modify_mem_list_set@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	bitmap_set_bit@PLT
	.loc 1 2428 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$44, %ax
	jne	.L553
	.loc 1 2433 0
	movl	-12(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	canon_modify_mem_list@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %esi
	movl	-12(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	canon_modify_mem_list@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	alloc_INSN_LIST@PLT
	movl	%eax, (%esi)
	.loc 1 2435 0
	movl	canon_modify_mem_list_set@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	bitmap_set_bit@PLT
	jmp	.L556
.L553:
	.loc 1 2438 0
	movl	8(%ebp), %eax
	movl	44(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	canon_list_insert@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	note_stores@PLT
.L556:
	.loc 1 2439 0
	addl	$32, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE49:
	.size	record_last_mem_set_info, .-record_last_mem_set_info
	.type	record_last_set_info, @function
record_last_set_info:
.LFB50:
	.loc 1 2449 0
	pushl	%ebp
.LCFI145:
	movl	%esp, %ebp
.LCFI146:
	pushl	%ebx
.LCFI147:
	subl	$36, %esp
.LCFI148:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2450 0
	movl	16(%ebp), %eax
	movl	%eax, -8(%ebp)
	.loc 1 2452 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L558
	.loc 1 2453 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 8(%ebp)
.L558:
	.loc 1 2455 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L560
	.loc 1 2456 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	record_last_reg_set_info
	jmp	.L565
.L560:
	.loc 1 2457 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L565
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	push_operand@PLT
	testl	%eax, %eax
	jne	.L565
	.loc 1 2460 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	record_last_mem_set_info
.L565:
	.loc 1 2461 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE50:
	.size	record_last_set_info, .-record_last_set_info
	.type	compute_hash_table_work, @function
compute_hash_table_work:
.LFB51:
	.loc 1 2483 0
	pushl	%ebp
.LCFI149:
	movl	%esp, %ebp
.LCFI150:
	pushl	%edi
.LCFI151:
	pushl	%esi
.LCFI152:
	pushl	%ebx
.LCFI153:
	subl	$44, %esp
.LCFI154:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2490 0
	movl	last_basic_block@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	reg_set_in_block@GOTOFF(%ebx), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	sbitmap_vector_zero@PLT
	.loc 1 2493 0
	call	clear_modify_mem_tables
	.loc 1 2495 0
	movl	max_gcse_regno@GOTOFF(%ebx), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	%eax, (%esp)
	call	gmalloc
	movl	%eax, reg_avail_info@GOTOFF(%ebx)
	.loc 1 2498 0
	movl	$0, -32(%ebp)
	jmp	.L567
.L568:
	.loc 1 2499 0
	movl	-32(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_avail_info@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	$0, (%eax)
	.loc 1 2498 0
	addl	$1, -32(%ebp)
.L567:
	movl	max_gcse_regno@GOTOFF(%ebx), %eax
	cmpl	%eax, -32(%ebp)
	jb	.L568
	.loc 1 2501 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	52(%eax), %eax
	movl	%eax, current_bb@GOTOFF(%ebx)
	jmp	.L570
.L571:
.LBB21:
	.loc 1 2512 0
	movl	current_bb@GOTOFF(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 2513 0
	jmp	.L572
.L573:
	.loc 1 2516 0
	movl	-28(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L574
	.loc 1 2519 0
	movl	-28(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$44, %ax
	jne	.L576
.LBB22:
	.loc 1 2521 0
	movb	$0, -13(%ebp)
	.loc 1 2528 0
	movl	$0, -24(%ebp)
	jmp	.L578
.L579:
	.loc 1 2529 0
	cmpb	$0, -13(%ebp)
	jne	.L580
	movl	-24(%ebp), %eax
	movl	%eax, %edx
	shrl	$6, %edx
	movl	regs_invalidated_by_call@GOT(%ebx), %eax
	movl	(%eax,%edx,8), %esi
	movl	4(%eax,%edx,8), %edi
	movl	-24(%ebp), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	%esi, %eax
	movl	%edi, %edx
	shrdl	%edx, %eax
	shrl	%cl, %edx
	testb	$32, %cl
	je	.L601
	movl	%edx, %eax
	xorl	%edx, %edx
.L601:
	andl	$1, %eax
	testl	%eax, %eax
	je	.L582
.L580:
	.loc 1 2531 0
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	record_last_reg_set_info
.L582:
	.loc 1 2528 0
	addl	$1, -24(%ebp)
.L578:
	cmpl	$175, -24(%ebp)
	jbe	.L579
	.loc 1 2533 0
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	mark_call
.L576:
.LBE22:
	.loc 1 2536 0
	movl	-28(%ebp), %eax
	movl	44(%eax), %edx
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	record_last_set_info@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	note_stores@PLT
.L574:
	.loc 1 2514 0
	movl	-28(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -28(%ebp)
.L572:
	.loc 1 2513 0
	cmpl	$0, -28(%ebp)
	je	.L584
	movl	current_bb@GOTOFF(%ebx), %eax
	movl	4(%eax), %eax
	movl	20(%eax), %eax
	cmpl	-28(%ebp), %eax
	jne	.L573
.L584:
	.loc 1 2541 0
	movl	current_bb@GOTOFF(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
	movl	$0, -20(%ebp)
	.loc 1 2542 0
	jmp	.L586
.L587:
	.loc 1 2544 0
	movl	-28(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L588
	.loc 1 2546 0
	movl	$0, 8(%esp)
	movl	$7, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	testl	%eax, %eax
	je	.L590
	.loc 1 2547 0
	movl	$1, -20(%ebp)
	jmp	.L592
.L590:
	.loc 1 2548 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	.L592
	movl	$0, 8(%esp)
	movl	$6, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	testl	%eax, %eax
	je	.L592
	.loc 1 2549 0
	movl	$0, -20(%ebp)
.L592:
	.loc 1 2550 0
	movl	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	hash_scan_insn
	.loc 1 2551 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	jne	.L588
	movl	$0, 8(%esp)
	movl	$6, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	testl	%eax, %eax
	je	.L588
	.loc 1 2552 0
	movl	$0, -20(%ebp)
.L588:
	.loc 1 2543 0
	movl	-28(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -28(%ebp)
.L586:
	.loc 1 2542 0
	cmpl	$0, -28(%ebp)
	je	.L597
	movl	current_bb@GOTOFF(%ebx), %eax
	movl	4(%eax), %eax
	movl	20(%eax), %eax
	cmpl	-28(%ebp), %eax
	jne	.L587
.L597:
.LBE21:
	.loc 1 2501 0
	movl	current_bb@GOTOFF(%ebx), %eax
	movl	52(%eax), %eax
	movl	%eax, current_bb@GOTOFF(%ebx)
.L570:
	movl	current_bb@GOTOFF(%ebx), %eax
	movl	entry_exit_blocks@GOT(%ebx), %edx
	leal	80(%edx), %edx
	cmpl	%edx, %eax
	jne	.L571
	.loc 1 2556 0
	movl	reg_avail_info@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 2557 0
	movl	$0, reg_avail_info@GOTOFF(%ebx)
	.loc 1 2558 0
	addl	$44, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE51:
	.size	compute_hash_table_work, .-compute_hash_table_work
	.type	alloc_hash_table, @function
alloc_hash_table:
.LFB52:
	.loc 1 2571 0
	pushl	%ebp
.LCFI155:
	movl	%esp, %ebp
.LCFI156:
	subl	$24, %esp
.LCFI157:
	.loc 1 2574 0
	movl	8(%ebp), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	shrl	$30, %eax
	addl	%edx, %eax
	sarl	$2, %eax
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 2575 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$10, %eax
	ja	.L603
	.loc 1 2576 0
	movl	12(%ebp), %eax
	movl	$11, 4(%eax)
.L603:
	.loc 1 2581 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	orl	$1, %edx
	movl	12(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 2582 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	movl	%eax, -4(%ebp)
	.loc 1 2583 0
	movl	-4(%ebp), %eax
	movl	%eax, (%esp)
	call	gmalloc
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 2584 0
	movl	12(%ebp), %edx
	movl	16(%ebp), %eax
	movl	%eax, 12(%edx)
	.loc 1 2585 0
	leave
	ret
.LFE52:
	.size	alloc_hash_table, .-alloc_hash_table
	.type	free_hash_table, @function
free_hash_table:
.LFB53:
	.loc 1 2592 0
	pushl	%ebp
.LCFI158:
	movl	%esp, %ebp
.LCFI159:
	pushl	%ebx
.LCFI160:
	subl	$4, %esp
.LCFI161:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2593 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 2594 0
	addl	$4, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE53:
	.size	free_hash_table, .-free_hash_table
	.type	compute_hash_table, @function
compute_hash_table:
.LFB54:
	.loc 1 2602 0
	pushl	%ebp
.LCFI162:
	movl	%esp, %ebp
.LCFI163:
	pushl	%edi
.LCFI164:
	subl	$4, %esp
.LCFI165:
	.loc 1 2604 0
	movl	8(%ebp), %eax
	movl	$0, 8(%eax)
	.loc 1 2605 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	leal	0(,%eax,4), %edx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, %edi
	cld
	movl	%edx, %ecx
	movl	$0, %eax
	rep
	stosb
	.loc 1 2608 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	compute_hash_table_work
	.loc 1 2609 0
	addl	$4, %esp
	popl	%edi
	popl	%ebp
	ret
.LFE54:
	.size	compute_hash_table, .-compute_hash_table
	.type	lookup_expr, @function
lookup_expr:
.LFB55:
	.loc 1 2620 0
	pushl	%ebp
.LCFI166:
	movl	%esp, %ebp
.LCFI167:
	subl	$40, %esp
.LCFI168:
	.loc 1 2623 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %ecx
	movl	%edx, 12(%esp)
	leal	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	hash_expr
	movl	%eax, -8(%ebp)
	.loc 1 2626 0
	movl	-12(%ebp), %eax
	testl	%eax, %eax
	je	.L611
	.loc 1 2627 0
	movl	$0, -20(%ebp)
	jmp	.L613
.L611:
	.loc 1 2629 0
	movl	12(%ebp), %eax
	movl	(%eax), %edx
	movl	-8(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -4(%ebp)
	.loc 1 2631 0
	jmp	.L614
.L615:
	.loc 1 2632 0
	movl	-4(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -4(%ebp)
.L614:
	.loc 1 2631 0
	cmpl	$0, -4(%ebp)
	je	.L616
	movl	-4(%ebp), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	expr_equiv_p
	testl	%eax, %eax
	je	.L615
.L616:
	.loc 1 2634 0
	movl	-4(%ebp), %eax
	movl	%eax, -20(%ebp)
.L613:
	movl	-20(%ebp), %eax
	.loc 1 2635 0
	leave
	ret
.LFE55:
	.size	lookup_expr, .-lookup_expr
	.type	lookup_set, @function
lookup_set:
.LFB56:
	.loc 1 2646 0
	pushl	%ebp
.LCFI169:
	movl	%esp, %ebp
.LCFI170:
	subl	$24, %esp
.LCFI171:
	.loc 1 2647 0
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	8(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	hash_set
	movl	%eax, -8(%ebp)
	.loc 1 2650 0
	movl	16(%ebp), %eax
	movl	(%eax), %edx
	movl	-8(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -4(%ebp)
	.loc 1 2652 0
	cmpl	$0, 12(%ebp)
	je	.L627
	.loc 1 2654 0
	jmp	.L622
.L623:
	.loc 1 2655 0
	movl	-4(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -4(%ebp)
.L622:
	.loc 1 2654 0
	cmpl	$0, -4(%ebp)
	je	.L626
	movl	-4(%ebp), %eax
	movl	(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	expr_equiv_p
	testl	%eax, %eax
	je	.L623
	jmp	.L626
.L628:
	.loc 1 2660 0
	movl	-4(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -4(%ebp)
.L627:
	.loc 1 2659 0
	cmpl	$0, -4(%ebp)
	je	.L626
	movl	-4(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L628
.L626:
	.loc 1 2663 0
	movl	-4(%ebp), %eax
	.loc 1 2664 0
	leave
	ret
.LFE56:
	.size	lookup_set, .-lookup_set
	.type	next_set, @function
next_set:
.LFB57:
	.loc 1 2672 0
	pushl	%ebp
.LCFI172:
	movl	%esp, %ebp
.LCFI173:
.L632:
	.loc 1 2674 0
	movl	12(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, 12(%ebp)
	.loc 1 2675 0
	cmpl	$0, 12(%ebp)
	je	.L633
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L632
.L633:
	.loc 1 2677 0
	movl	12(%ebp), %eax
	.loc 1 2678 0
	popl	%ebp
	ret
.LFE57:
	.size	next_set, .-next_set
	.type	free_insn_expr_list_list, @function
free_insn_expr_list_list:
.LFB58:
	.loc 1 2686 0
	pushl	%ebp
.LCFI174:
	movl	%esp, %ebp
.LCFI175:
	pushl	%ebx
.LCFI176:
	subl	$20, %esp
.LCFI177:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2689 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L637
.L638:
	.loc 1 2691 0
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 2692 0
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$3, %ax
	jne	.L639
	.loc 1 2693 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	free_EXPR_LIST_node@PLT
	jmp	.L641
.L639:
	.loc 1 2695 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	free_INSN_LIST_node@PLT
.L641:
	.loc 1 2689 0
	movl	-8(%ebp), %eax
	movl	%eax, -12(%ebp)
.L637:
	cmpl	$0, -12(%ebp)
	jne	.L638
	.loc 1 2698 0
	movl	8(%ebp), %eax
	movl	$0, (%eax)
	.loc 1 2699 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE58:
	.size	free_insn_expr_list_list, .-free_insn_expr_list_list
	.type	clear_modify_mem_tables, @function
clear_modify_mem_tables:
.LFB59:
	.loc 1 2704 0
	pushl	%ebp
.LCFI178:
	movl	%esp, %ebp
.LCFI179:
	pushl	%ebx
.LCFI180:
	subl	$68, %esp
.LCFI181:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
.LBB23:
	.loc 1 2707 0
	movl	modify_mem_list_set@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -52(%ebp)
	movl	$0, -48(%ebp)
	movl	$0, -44(%ebp)
	movl	$0, -40(%ebp)
	jmp	.L645
.L646:
	movl	-52(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -52(%ebp)
.L645:
	cmpl	$0, -52(%ebp)
	je	.L647
	movl	-52(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	-48(%ebp), %eax
	jb	.L646
.L647:
	cmpl	$0, -52(%ebp)
	je	.L652
	movl	-52(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	-48(%ebp), %eax
	je	.L652
	movl	$0, -44(%ebp)
	movl	$0, -40(%ebp)
	jmp	.L652
.L655:
.LBB24:
	movl	-40(%ebp), %eax
	movl	-52(%ebp), %edx
	movl	12(%edx,%eax,4), %eax
	movl	%eax, -36(%ebp)
	cmpl	$0, -36(%ebp)
	je	.L656
	jmp	.L658
.L659:
.LBB25:
	movl	-44(%ebp), %ecx
	movl	$1, %eax
	sall	%cl, %eax
	movl	%eax, -32(%ebp)
	movl	-32(%ebp), %eax
	andl	-36(%ebp), %eax
	testl	%eax, %eax
	je	.L660
	movl	-32(%ebp), %eax
	notl	%eax
	andl	%eax, -36(%ebp)
	movl	-52(%ebp), %eax
	movl	8(%eax), %eax
	sall	$2, %eax
	addl	-40(%ebp), %eax
	sall	$5, %eax
	addl	-44(%ebp), %eax
	movl	%eax, -56(%ebp)
	movl	-56(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	modify_mem_list@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, (%esp)
	call	free_INSN_LIST_list@PLT
	cmpl	$0, -36(%ebp)
	je	.L656
.L660:
.LBE25:
	addl	$1, -44(%ebp)
.L658:
	cmpl	$31, -44(%ebp)
	jbe	.L659
.L656:
	movl	$0, -44(%ebp)
.LBE24:
	addl	$1, -40(%ebp)
.L654:
	cmpl	$3, -40(%ebp)
	jbe	.L655
	movl	$0, -40(%ebp)
	movl	-52(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -52(%ebp)
.L652:
	cmpl	$0, -52(%ebp)
	jne	.L654
.LBE23:
	.loc 1 2709 0
	movl	modify_mem_list_set@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	bitmap_clear@PLT
.LBB26:
	.loc 1 2711 0
	movl	canon_modify_mem_list_set@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
	movl	$0, -24(%ebp)
	movl	$0, -20(%ebp)
	movl	$0, -16(%ebp)
	jmp	.L664
.L665:
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
.L664:
	cmpl	$0, -28(%ebp)
	je	.L666
	movl	-28(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	-24(%ebp), %eax
	jb	.L665
.L666:
	cmpl	$0, -28(%ebp)
	je	.L671
	movl	-28(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	-24(%ebp), %eax
	je	.L671
	movl	$0, -20(%ebp)
	movl	$0, -16(%ebp)
	jmp	.L671
.L674:
.LBB27:
	movl	-16(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	12(%edx,%eax,4), %eax
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	je	.L675
	jmp	.L677
.L678:
.LBB28:
	movl	-20(%ebp), %ecx
	movl	$1, %eax
	sall	%cl, %eax
	movl	%eax, -8(%ebp)
	movl	-8(%ebp), %eax
	andl	-12(%ebp), %eax
	testl	%eax, %eax
	je	.L679
	movl	-8(%ebp), %eax
	notl	%eax
	andl	%eax, -12(%ebp)
	movl	-28(%ebp), %eax
	movl	8(%eax), %eax
	sall	$2, %eax
	addl	-16(%ebp), %eax
	sall	$5, %eax
	addl	-20(%ebp), %eax
	movl	%eax, -56(%ebp)
	movl	-56(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	canon_modify_mem_list@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, (%esp)
	call	free_insn_expr_list_list
	cmpl	$0, -12(%ebp)
	je	.L675
.L679:
.LBE28:
	addl	$1, -20(%ebp)
.L677:
	cmpl	$31, -20(%ebp)
	jbe	.L678
.L675:
	movl	$0, -20(%ebp)
.LBE27:
	addl	$1, -16(%ebp)
.L673:
	cmpl	$3, -16(%ebp)
	jbe	.L674
	movl	$0, -16(%ebp)
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
.L671:
	cmpl	$0, -28(%ebp)
	jne	.L673
.LBE26:
	.loc 1 2714 0
	movl	canon_modify_mem_list_set@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	bitmap_clear@PLT
	.loc 1 2715 0
	addl	$68, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE59:
	.size	clear_modify_mem_tables, .-clear_modify_mem_tables
	.type	free_modify_mem_tables, @function
free_modify_mem_tables:
.LFB60:
	.loc 1 2721 0
	pushl	%ebp
.LCFI182:
	movl	%esp, %ebp
.LCFI183:
	pushl	%ebx
.LCFI184:
	subl	$4, %esp
.LCFI185:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2722 0
	call	clear_modify_mem_tables
	.loc 1 2723 0
	movl	modify_mem_list@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 2724 0
	movl	canon_modify_mem_list@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 2725 0
	movl	$0, modify_mem_list@GOTOFF(%ebx)
	.loc 1 2726 0
	movl	$0, canon_modify_mem_list@GOTOFF(%ebx)
	.loc 1 2727 0
	addl	$4, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE60:
	.size	free_modify_mem_tables, .-free_modify_mem_tables
	.type	reset_opr_set_tables, @function
reset_opr_set_tables:
.LFB61:
	.loc 1 2734 0
	pushl	%ebp
.LCFI186:
	movl	%esp, %ebp
.LCFI187:
	pushl	%ebx
.LCFI188:
	subl	$4, %esp
.LCFI189:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2737 0
	movl	reg_set_bitmap@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	bitmap_clear@PLT
	.loc 1 2742 0
	call	clear_modify_mem_tables
	.loc 1 2743 0
	addl	$4, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE61:
	.size	reset_opr_set_tables, .-reset_opr_set_tables
	.type	oprs_not_set_p, @function
oprs_not_set_p:
.LFB62:
	.loc 1 2751 0
	pushl	%ebp
.LCFI190:
	movl	%esp, %ebp
.LCFI191:
	pushl	%ebx
.LCFI192:
	subl	$52, %esp
.LCFI193:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2756 0
	cmpl	$0, 8(%ebp)
	jne	.L689
	.loc 1 2757 0
	movl	$1, -24(%ebp)
	jmp	.L691
.L689:
	.loc 1 2759 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -12(%ebp)
	.loc 1 2760 0
	movl	-12(%ebp), %eax
	subl	$54, %eax
	movl	%eax, -28(%ebp)
	cmpl	$25, -28(%ebp)
	ja	.L692
	movl	$1, %eax
	movl	%eax, %edx
	movzbl	-28(%ebp), %ecx
	sall	%cl, %edx
	movl	%edx, -32(%ebp)
	movl	-32(%ebp), %eax
	andl	$58776579, %eax
	testl	%eax, %eax
	jne	.L693
	movl	-32(%ebp), %eax
	andl	$131072, %eax
	testl	%eax, %eax
	jne	.L694
	movl	-32(%ebp), %eax
	andl	$4194304, %eax
	testl	%eax, %eax
	jne	.L695
	jmp	.L692
.L693:
	.loc 1 2772 0
	movl	$1, -24(%ebp)
	jmp	.L691
.L695:
	.loc 1 2775 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	uid_cuid@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %ecx
	movl	12(%ebp), %eax
	movl	28(%eax), %edx
	movl	$0, 12(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	load_killed_in_block_p
	testl	%eax, %eax
	je	.L696
	.loc 1 2777 0
	movl	$0, -24(%ebp)
	jmp	.L691
.L696:
	.loc 1 2779 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	oprs_not_set_p
	movl	%eax, -24(%ebp)
	jmp	.L691
.L694:
	.loc 1 2782 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	reg_set_bitmap@GOTOFF(%ebx), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	bitmap_bit_p@PLT
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -24(%ebp)
	jmp	.L691
.L692:
	.loc 1 2788 0
	movl	-12(%ebp), %edx
	movl	rtx_length@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	subl	$1, %eax
	movl	%eax, -20(%ebp)
	movl	-12(%ebp), %edx
	movl	rtx_format@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -8(%ebp)
	jmp	.L698
.L699:
	.loc 1 2790 0
	movl	-20(%ebp), %eax
	addl	-8(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$101, %al
	jne	.L700
	.loc 1 2795 0
	cmpl	$0, -20(%ebp)
	jne	.L702
	.loc 1 2796 0
	movl	-20(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	oprs_not_set_p
	movl	%eax, -24(%ebp)
	jmp	.L691
.L702:
	.loc 1 2798 0
	movl	-20(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	oprs_not_set_p
	testl	%eax, %eax
	jne	.L706
	.loc 1 2799 0
	movl	$0, -24(%ebp)
	jmp	.L691
.L700:
	.loc 1 2801 0
	movl	-20(%ebp), %eax
	addl	-8(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$69, %al
	jne	.L706
	.loc 1 2802 0
	movl	$0, -16(%ebp)
	jmp	.L708
.L709:
	.loc 1 2803 0
	movl	-20(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %edx
	movl	-16(%ebp), %eax
	movl	4(%edx,%eax,4), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	oprs_not_set_p
	testl	%eax, %eax
	jne	.L710
	.loc 1 2804 0
	movl	$0, -24(%ebp)
	jmp	.L691
.L710:
	.loc 1 2802 0
	addl	$1, -16(%ebp)
.L708:
	movl	-20(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	(%eax), %eax
	cmpl	-16(%ebp), %eax
	jg	.L709
.L706:
	.loc 1 2788 0
	subl	$1, -20(%ebp)
.L698:
	cmpl	$0, -20(%ebp)
	jns	.L699
	.loc 1 2807 0
	movl	$1, -24(%ebp)
.L691:
	movl	-24(%ebp), %eax
	.loc 1 2808 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE62:
	.size	oprs_not_set_p, .-oprs_not_set_p
	.type	mark_call, @function
mark_call:
.LFB63:
	.loc 1 2815 0
	pushl	%ebp
.LCFI194:
	movl	%esp, %ebp
.LCFI195:
	subl	$8, %esp
.LCFI196:
	.loc 1 2816 0
	movl	8(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L717
	.loc 1 2817 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	record_last_mem_set_info
.L717:
	.loc 1 2818 0
	leave
	ret
.LFE63:
	.size	mark_call, .-mark_call
	.type	mark_set, @function
mark_set:
.LFB64:
	.loc 1 2825 0
	pushl	%ebp
.LCFI197:
	movl	%esp, %ebp
.LCFI198:
	pushl	%ebx
.LCFI199:
	subl	$36, %esp
.LCFI200:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2826 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 2828 0
	jmp	.L719
.L720:
	.loc 1 2832 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
.L719:
	.loc 1 2828 0
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	je	.L720
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$143, %ax
	je	.L720
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$142, %ax
	je	.L720
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$74, %ax
	je	.L720
	.loc 1 2834 0
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L725
	.loc 1 2835 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	reg_set_bitmap@GOTOFF(%ebx), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	bitmap_set_bit@PLT
	jmp	.L727
.L725:
	.loc 1 2836 0
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L727
	.loc 1 2837 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	record_last_mem_set_info
.L727:
	.loc 1 2839 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$60, %ax
	jne	.L731
	.loc 1 2840 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	mark_call
.L731:
	.loc 1 2841 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE64:
	.size	mark_set, .-mark_set
	.type	mark_clobber, @function
mark_clobber:
.LFB65:
	.loc 1 2848 0
	pushl	%ebp
.LCFI201:
	movl	%esp, %ebp
.LCFI202:
	pushl	%ebx
.LCFI203:
	subl	$36, %esp
.LCFI204:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2849 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 2851 0
	jmp	.L733
.L734:
	.loc 1 2852 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
.L733:
	.loc 1 2851 0
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	je	.L734
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$74, %ax
	je	.L734
	.loc 1 2854 0
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L737
	.loc 1 2855 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	reg_set_bitmap@GOTOFF(%ebx), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	bitmap_set_bit@PLT
	jmp	.L740
.L737:
	.loc 1 2857 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	record_last_mem_set_info
.L740:
	.loc 1 2858 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE65:
	.size	mark_clobber, .-mark_clobber
	.type	mark_oprs_set, @function
mark_oprs_set:
.LFB66:
	.loc 1 2866 0
	pushl	%ebp
.LCFI205:
	movl	%esp, %ebp
.LCFI206:
	subl	$24, %esp
.LCFI207:
	.loc 1 2867 0
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 2870 0
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L742
	.loc 1 2871 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	mark_set
	jmp	.L759
.L742:
	.loc 1 2872 0
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$49, %ax
	jne	.L745
	.loc 1 2873 0
	movl	$0, -8(%ebp)
	jmp	.L747
.L748:
.LBB29:
	.loc 1 2875 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %edx
	movl	-8(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	%eax, -4(%ebp)
	.loc 1 2877 0
	movl	-4(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L749
	.loc 1 2878 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-4(%ebp), %eax
	movl	%eax, (%esp)
	call	mark_set
	jmp	.L751
.L749:
	.loc 1 2879 0
	movl	-4(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$59, %ax
	jne	.L752
	.loc 1 2880 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-4(%ebp), %eax
	movl	%eax, (%esp)
	call	mark_clobber
	jmp	.L751
.L752:
	.loc 1 2881 0
	movl	-4(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$60, %ax
	jne	.L751
	.loc 1 2882 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	mark_call
.L751:
.LBE29:
	.loc 1 2873 0
	addl	$1, -8(%ebp)
.L747:
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	cmpl	-8(%ebp), %eax
	jg	.L748
	jmp	.L759
.L745:
	.loc 1 2885 0
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$59, %ax
	jne	.L756
	.loc 1 2886 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	mark_clobber
	jmp	.L759
.L756:
	.loc 1 2887 0
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$60, %ax
	jne	.L759
	.loc 1 2888 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	mark_call
.L759:
	.loc 1 2889 0
	leave
	ret
.LFE66:
	.size	mark_oprs_set, .-mark_oprs_set
	.type	alloc_rd_mem, @function
alloc_rd_mem:
.LFB67:
	.loc 1 2899 0
	pushl	%ebp
.LCFI208:
	movl	%esp, %ebp
.LCFI209:
	pushl	%ebx
.LCFI210:
	subl	$20, %esp
.LCFI211:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2900 0
	movl	12(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	sbitmap_vector_alloc@PLT
	movl	%eax, rd_kill@GOTOFF(%ebx)
	.loc 1 2901 0
	movl	8(%ebp), %eax
	movl	rd_kill@GOTOFF(%ebx), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	sbitmap_vector_zero@PLT
	.loc 1 2903 0
	movl	12(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	sbitmap_vector_alloc@PLT
	movl	%eax, rd_gen@GOTOFF(%ebx)
	.loc 1 2904 0
	movl	8(%ebp), %eax
	movl	rd_gen@GOTOFF(%ebx), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	sbitmap_vector_zero@PLT
	.loc 1 2906 0
	movl	12(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	sbitmap_vector_alloc@PLT
	movl	%eax, reaching_defs@GOTOFF(%ebx)
	.loc 1 2907 0
	movl	8(%ebp), %eax
	movl	reaching_defs@GOTOFF(%ebx), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	sbitmap_vector_zero@PLT
	.loc 1 2909 0
	movl	12(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	sbitmap_vector_alloc@PLT
	movl	%eax, rd_out@GOTOFF(%ebx)
	.loc 1 2910 0
	movl	8(%ebp), %eax
	movl	rd_out@GOTOFF(%ebx), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	sbitmap_vector_zero@PLT
	.loc 1 2911 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE67:
	.size	alloc_rd_mem, .-alloc_rd_mem
	.type	free_rd_mem, @function
free_rd_mem:
.LFB68:
	.loc 1 2917 0
	pushl	%ebp
.LCFI212:
	movl	%esp, %ebp
.LCFI213:
	pushl	%ebx
.LCFI214:
	subl	$4, %esp
.LCFI215:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2918 0
	movl	rd_kill@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 2919 0
	movl	rd_gen@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 2920 0
	movl	reaching_defs@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 2921 0
	movl	rd_out@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 2922 0
	addl	$4, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE68:
	.size	free_rd_mem, .-free_rd_mem
	.type	handle_rd_kill_set, @function
handle_rd_kill_set:
.LFB69:
	.loc 1 2931 0
	pushl	%ebp
.LCFI216:
	movl	%esp, %ebp
.LCFI217:
	pushl	%edi
.LCFI218:
	pushl	%esi
.LCFI219:
	pushl	%ebx
.LCFI220:
	subl	$36, %esp
.LCFI221:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2934 0
	movl	12(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_set_table@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
	jmp	.L765
.L766:
	.loc 1 2935 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	28(%eax), %eax
	movl	44(%eax), %edx
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	44(%eax), %eax
	cmpl	%eax, %edx
	je	.L767
	.loc 1 2936 0
	movl	16(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	rd_kill@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -48(%ebp)
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	uid_cuid@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, %ecx
	shrl	$6, %ecx
	movl	%ecx, -44(%ebp)
	movl	16(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	rd_kill@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	movl	%ecx, %eax
	movl	12(%edx,%eax,8), %esi
	movl	16(%edx,%eax,8), %edi
	movl	%esi, -40(%ebp)
	movl	%edi, -36(%ebp)
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	uid_cuid@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L771
	movl	%esi, %edi
	xorl	%esi, %esi
.L771:
	movl	-40(%ebp), %eax
	orl	%esi, %eax
	movl	-36(%ebp), %edx
	orl	%edi, %edx
	movl	-44(%ebp), %edi
	movl	-48(%ebp), %ecx
	movl	%eax, 12(%ecx,%edi,8)
	movl	%edx, 16(%ecx,%edi,8)
.L767:
	.loc 1 2934 0
	movl	-20(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
.L765:
	cmpl	$0, -20(%ebp)
	jne	.L766
	.loc 1 2937 0
	addl	$36, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE69:
	.size	handle_rd_kill_set, .-handle_rd_kill_set
	.type	compute_kill_rd, @function
compute_kill_rd:
.LFB70:
	.loc 1 2943 0
	pushl	%ebp
.LCFI222:
	movl	%esp, %ebp
.LCFI223:
	pushl	%edi
.LCFI224:
	pushl	%esi
.LCFI225:
	pushl	%ebx
.LCFI226:
	subl	$44, %esp
.LCFI227:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2957 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	52(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L773
.L774:
	.loc 1 2958 0
	movl	$0, -40(%ebp)
	jmp	.L775
.L776:
	.loc 1 2959 0
	movl	-28(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	rd_gen@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	movl	-40(%ebp), %eax
	shrl	$6, %eax
	leal	12(%edx,%eax,8), %edx
	movl	(%edx), %eax
	movl	4(%edx), %edx
	movl	-40(%ebp), %ecx
	andl	$63, %ecx
	movl	%eax, %esi
	movl	%edx, %edi
	shrdl	%edi, %esi
	shrl	%cl, %edi
	testb	$32, %cl
	je	.L800
	movl	%edi, %esi
	xorl	%edi, %edi
.L800:
	movl	%esi, %eax
	andl	$1, %eax
	movl	%edi, %edx
	andl	$0, %edx
	testl	%eax, %eax
	je	.L777
.LBB30:
	.loc 1 2961 0
	movl	-40(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	cuid_insn@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 2962 0
	movl	-24(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 2964 0
	movl	-24(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$44, %ax
	jne	.L779
	.loc 1 2966 0
	movl	$0, -36(%ebp)
	jmp	.L781
.L782:
	.loc 1 2967 0
	movl	-36(%ebp), %eax
	movl	%eax, %edx
	shrl	$6, %edx
	movl	regs_invalidated_by_call@GOT(%ebx), %eax
	movl	(%eax,%edx,8), %esi
	movl	4(%eax,%edx,8), %edi
	movl	-36(%ebp), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	%esi, %eax
	movl	%edi, %edx
	shrdl	%edx, %eax
	shrl	%cl, %edx
	testb	$32, %cl
	je	.L799
	movl	%edx, %eax
	xorl	%edx, %edx
.L799:
	andl	$1, %eax
	testl	%eax, %eax
	je	.L783
	.loc 1 2968 0
	movl	-36(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	handle_rd_kill_set
.L783:
	.loc 1 2966 0
	addl	$1, -36(%ebp)
.L781:
	cmpl	$175, -36(%ebp)
	jbe	.L782
.L779:
	.loc 1 2971 0
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$49, %ax
	jne	.L785
	.loc 1 2973 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	subl	$1, %eax
	movl	%eax, -32(%ebp)
	jmp	.L787
.L788:
.LBB31:
	.loc 1 2975 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %edx
	movl	-32(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -16(%ebp)
	.loc 1 2977 0
	cmpl	$57, -16(%ebp)
	je	.L789
	cmpl	$59, -16(%ebp)
	jne	.L791
.L789:
	movl	-20(%ebp), %eax
	movl	4(%eax), %edx
	movl	-32(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L791
	.loc 1 2979 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %edx
	movl	-32(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	handle_rd_kill_set
.L791:
.LBE31:
	.loc 1 2973 0
	subl	$1, -32(%ebp)
.L787:
	cmpl	$0, -32(%ebp)
	jns	.L788
	jmp	.L777
.L785:
	.loc 1 2984 0
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L777
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L777
	.loc 1 2987 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	handle_rd_kill_set
.L777:
.LBE30:
	.loc 1 2958 0
	addl	$1, -40(%ebp)
.L775:
	movl	max_cuid@GOTOFF(%ebx), %eax
	cmpl	%eax, -40(%ebp)
	jl	.L776
	.loc 1 2957 0
	movl	-28(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -28(%ebp)
.L773:
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, -28(%ebp)
	jne	.L774
	.loc 1 2989 0
	addl	$44, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE70:
	.size	compute_kill_rd, .-compute_kill_rd
	.section	.rodata
	.align 4
.LC10:
	.string	"reaching def computation: %d passes\n"
	.text
	.type	compute_rd, @function
compute_rd:
.LFB71:
	.loc 1 2998 0
	pushl	%ebp
.LCFI228:
	movl	%esp, %ebp
.LCFI229:
	pushl	%edi
.LCFI230:
	pushl	%esi
.LCFI231:
	pushl	%ebx
.LCFI232:
	subl	$44, %esp
.LCFI233:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3002 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	52(%eax), %eax
	movl	%eax, -16(%ebp)
	jmp	.L802
.L803:
	.loc 1 3003 0
	movl	-16(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	rd_gen@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %ecx
	movl	-16(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	rd_out@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	sbitmap_copy@PLT
	.loc 1 3002 0
	movl	-16(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -16(%ebp)
.L802:
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, -16(%ebp)
	jne	.L803
	.loc 1 3005 0
	movl	$0, -20(%ebp)
	.loc 1 3006 0
	movl	$1, -24(%ebp)
	.loc 1 3007 0
	jmp	.L805
.L806:
	.loc 1 3009 0
	movl	$0, -24(%ebp)
	.loc 1 3010 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	52(%eax), %eax
	movl	%eax, -16(%ebp)
	jmp	.L807
.L808:
	.loc 1 3012 0
	movl	-16(%ebp), %eax
	movl	44(%eax), %ecx
	movl	rd_out@GOTOFF(%ebx), %esi
	movl	-16(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reaching_defs@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%ecx, 8(%esp)
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	call	sbitmap_union_of_preds@PLT
	.loc 1 3013 0
	movl	-16(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	rd_kill@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %ecx
	movl	-16(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reaching_defs@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %esi
	movl	-16(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	rd_gen@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edi
	movl	-16(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	rd_out@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%ecx, 12(%esp)
	movl	%esi, 8(%esp)
	movl	%edi, 4(%esp)
	movl	%eax, (%esp)
	call	sbitmap_union_of_diff_cg@PLT
	movzbl	%al, %eax
	orl	%eax, -24(%ebp)
	.loc 1 3010 0
	movl	-16(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -16(%ebp)
.L807:
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, -16(%ebp)
	jne	.L808
	.loc 1 3016 0
	addl	$1, -20(%ebp)
.L805:
	.loc 1 3007 0
	cmpl	$0, -24(%ebp)
	jne	.L806
	.loc 1 3019 0
	movl	gcse_file@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L813
	.loc 1 3020 0
	movl	gcse_file@GOTOFF(%ebx), %eax
	movl	-20(%ebp), %edx
	movl	%edx, 8(%esp)
	leal	.LC10@GOTOFF(%ebx), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	fprintf@PLT
.L813:
	.loc 1 3021 0
	addl	$44, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE71:
	.size	compute_rd, .-compute_rd
	.type	alloc_avail_expr_mem, @function
alloc_avail_expr_mem:
.LFB72:
	.loc 1 3030 0
	pushl	%ebp
.LCFI234:
	movl	%esp, %ebp
.LCFI235:
	pushl	%ebx
.LCFI236:
	subl	$20, %esp
.LCFI237:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3031 0
	movl	12(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	sbitmap_vector_alloc@PLT
	movl	%eax, ae_kill@GOTOFF(%ebx)
	.loc 1 3032 0
	movl	8(%ebp), %eax
	movl	ae_kill@GOTOFF(%ebx), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	sbitmap_vector_zero@PLT
	.loc 1 3034 0
	movl	12(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	sbitmap_vector_alloc@PLT
	movl	%eax, ae_gen@GOTOFF(%ebx)
	.loc 1 3035 0
	movl	8(%ebp), %eax
	movl	ae_gen@GOTOFF(%ebx), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	sbitmap_vector_zero@PLT
	.loc 1 3037 0
	movl	12(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	sbitmap_vector_alloc@PLT
	movl	%eax, ae_in@GOTOFF(%ebx)
	.loc 1 3038 0
	movl	8(%ebp), %eax
	movl	ae_in@GOTOFF(%ebx), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	sbitmap_vector_zero@PLT
	.loc 1 3040 0
	movl	12(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	sbitmap_vector_alloc@PLT
	movl	%eax, ae_out@GOTOFF(%ebx)
	.loc 1 3041 0
	movl	8(%ebp), %eax
	movl	ae_out@GOTOFF(%ebx), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	sbitmap_vector_zero@PLT
	.loc 1 3042 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE72:
	.size	alloc_avail_expr_mem, .-alloc_avail_expr_mem
	.type	free_avail_expr_mem, @function
free_avail_expr_mem:
.LFB73:
	.loc 1 3046 0
	pushl	%ebp
.LCFI238:
	movl	%esp, %ebp
.LCFI239:
	pushl	%ebx
.LCFI240:
	subl	$4, %esp
.LCFI241:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3047 0
	movl	ae_kill@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 3048 0
	movl	ae_gen@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 3049 0
	movl	ae_in@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 3050 0
	movl	ae_out@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 3051 0
	addl	$4, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE73:
	.size	free_avail_expr_mem, .-free_avail_expr_mem
	.type	compute_ae_gen, @function
compute_ae_gen:
.LFB74:
	.loc 1 3058 0
	pushl	%ebp
.LCFI242:
	movl	%esp, %ebp
.LCFI243:
	pushl	%edi
.LCFI244:
	pushl	%esi
.LCFI245:
	pushl	%ebx
.LCFI246:
	subl	$36, %esp
.LCFI247:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3067 0
	movl	$0, -28(%ebp)
	jmp	.L819
.L820:
	.loc 1 3068 0
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	-28(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L821
.L822:
	.loc 1 3069 0
	movl	-24(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -20(%ebp)
	jmp	.L823
.L824:
	.loc 1 3070 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	28(%eax), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	ae_gen@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -48(%ebp)
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %ecx
	shrl	$6, %ecx
	movl	%ecx, -44(%ebp)
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	28(%eax), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	ae_gen@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	movl	%ecx, %eax
	movl	12(%edx,%eax,8), %esi
	movl	16(%edx,%eax,8), %edi
	movl	%esi, -40(%ebp)
	movl	%edi, -36(%ebp)
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L829
	movl	%esi, %edi
	xorl	%esi, %esi
.L829:
	movl	-40(%ebp), %eax
	orl	%esi, %eax
	movl	-36(%ebp), %edx
	orl	%edi, %edx
	movl	-44(%ebp), %edi
	movl	-48(%ebp), %ecx
	movl	%eax, 12(%ecx,%edi,8)
	movl	%edx, 16(%ecx,%edi,8)
	.loc 1 3069 0
	movl	-20(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
.L823:
	cmpl	$0, -20(%ebp)
	jne	.L824
	.loc 1 3068 0
	movl	-24(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -24(%ebp)
.L821:
	cmpl	$0, -24(%ebp)
	jne	.L822
	.loc 1 3067 0
	addl	$1, -28(%ebp)
.L819:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-28(%ebp), %eax
	ja	.L820
	.loc 1 3071 0
	addl	$36, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE74:
	.size	compute_ae_gen, .-compute_ae_gen
	.type	expr_killed_p, @function
expr_killed_p:
.LFB75:
	.loc 1 3079 0
	pushl	%ebp
.LCFI248:
	movl	%esp, %ebp
.LCFI249:
	pushl	%edi
.LCFI250:
	pushl	%esi
.LCFI251:
	pushl	%ebx
.LCFI252:
	subl	$44, %esp
.LCFI253:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3084 0
	cmpl	$0, 8(%ebp)
	jne	.L831
	.loc 1 3085 0
	movl	$1, -32(%ebp)
	jmp	.L833
.L831:
	.loc 1 3087 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -20(%ebp)
	.loc 1 3088 0
	movl	-20(%ebp), %eax
	subl	$54, %eax
	movl	%eax, -36(%ebp)
	cmpl	$25, -36(%ebp)
	ja	.L834
	movl	$1, %eax
	movl	%eax, %edx
	movzbl	-36(%ebp), %ecx
	sall	%cl, %edx
	movl	%edx, -40(%ebp)
	movl	-40(%ebp), %eax
	andl	$58776579, %eax
	testl	%eax, %eax
	jne	.L835
	movl	-40(%ebp), %eax
	andl	$131072, %eax
	testl	%eax, %eax
	jne	.L836
	movl	-40(%ebp), %eax
	andl	$4194304, %eax
	testl	%eax, %eax
	jne	.L837
	jmp	.L834
.L836:
	.loc 1 3091 0
	movl	12(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_set_in_block@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	shrl	$6, %eax
	movl	12(%edx,%eax,8), %esi
	movl	16(%edx,%eax,8), %edi
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	%esi, %eax
	movl	%edi, %edx
	shrdl	%edx, %eax
	shrl	%cl, %edx
	testb	$32, %cl
	je	.L856
	movl	%edx, %eax
	xorl	%edx, %edx
.L856:
	movl	%eax, %ecx
	andl	$1, %ecx
	movl	%ecx, -32(%ebp)
	jmp	.L833
.L837:
	.loc 1 3094 0
	call	get_max_uid@PLT
	leal	1(%eax), %edx
	movl	$0, 12(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	load_killed_in_block_p
	testl	%eax, %eax
	je	.L838
	.loc 1 3095 0
	movl	$1, -32(%ebp)
	jmp	.L833
.L838:
	.loc 1 3097 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	expr_killed_p
	movl	%eax, -32(%ebp)
	jmp	.L833
.L835:
	.loc 1 3109 0
	movl	$0, -32(%ebp)
	jmp	.L833
.L834:
	.loc 1 3115 0
	movl	-20(%ebp), %edx
	movl	rtx_length@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	subl	$1, %eax
	movl	%eax, -28(%ebp)
	movl	-20(%ebp), %edx
	movl	rtx_format@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -16(%ebp)
	jmp	.L840
.L841:
	.loc 1 3117 0
	movl	-28(%ebp), %eax
	addl	-16(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$101, %al
	jne	.L842
	.loc 1 3122 0
	cmpl	$0, -28(%ebp)
	jne	.L844
	.loc 1 3123 0
	movl	-28(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	expr_killed_p
	movl	%eax, -32(%ebp)
	jmp	.L833
.L844:
	.loc 1 3124 0
	movl	-28(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	expr_killed_p
	testl	%eax, %eax
	je	.L848
	.loc 1 3125 0
	movl	$1, -32(%ebp)
	jmp	.L833
.L842:
	.loc 1 3127 0
	movl	-28(%ebp), %eax
	addl	-16(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$69, %al
	jne	.L848
	.loc 1 3128 0
	movl	$0, -24(%ebp)
	jmp	.L850
.L851:
	.loc 1 3129 0
	movl	-28(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %edx
	movl	-24(%ebp), %eax
	movl	4(%edx,%eax,4), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	expr_killed_p
	testl	%eax, %eax
	je	.L852
	.loc 1 3130 0
	movl	$1, -32(%ebp)
	jmp	.L833
.L852:
	.loc 1 3128 0
	addl	$1, -24(%ebp)
.L850:
	movl	-28(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	(%eax), %eax
	cmpl	-24(%ebp), %eax
	jg	.L851
.L848:
	.loc 1 3115 0
	subl	$1, -28(%ebp)
.L840:
	cmpl	$0, -28(%ebp)
	jns	.L841
	.loc 1 3133 0
	movl	$0, -32(%ebp)
.L833:
	movl	-32(%ebp), %eax
	.loc 1 3134 0
	addl	$44, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE75:
	.size	expr_killed_p, .-expr_killed_p
	.type	compute_ae_kill, @function
compute_ae_kill:
.LFB76:
	.loc 1 3142 0
	pushl	%ebp
.LCFI254:
	movl	%esp, %ebp
.LCFI255:
	pushl	%edi
.LCFI256:
	pushl	%esi
.LCFI257:
	pushl	%ebx
.LCFI258:
	subl	$44, %esp
.LCFI259:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3147 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	52(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L858
.L859:
	.loc 1 3148 0
	movl	$0, -24(%ebp)
	jmp	.L860
.L861:
	.loc 1 3149 0
	movl	16(%ebp), %eax
	movl	(%eax), %edx
	movl	-24(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
	jmp	.L862
.L863:
	.loc 1 3152 0
	movl	-28(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	addl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	shrl	$6, %eax
	movl	12(%edx,%eax,8), %esi
	movl	16(%edx,%eax,8), %edi
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	shrdl	%edi, %esi
	shrl	%cl, %edi
	testb	$32, %cl
	je	.L872
	movl	%edi, %esi
	xorl	%edi, %edi
.L872:
	movl	%esi, %eax
	andl	$1, %eax
	movl	%edi, %edx
	andl	$0, %edx
	testl	%eax, %eax
	jne	.L864
	.loc 1 3155 0
	movl	-20(%ebp), %eax
	movl	(%eax), %edx
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	expr_killed_p
	testl	%eax, %eax
	je	.L864
	.loc 1 3156 0
	movl	-28(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -48(%ebp)
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %ecx
	shrl	$6, %ecx
	movl	%ecx, -44(%ebp)
	movl	-28(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %edx
	movl	%ecx, %eax
	movl	12(%edx,%eax,8), %esi
	movl	16(%edx,%eax,8), %edi
	movl	%esi, -40(%ebp)
	movl	%edi, -36(%ebp)
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L871
	movl	%esi, %edi
	xorl	%esi, %esi
.L871:
	movl	-40(%ebp), %eax
	orl	%esi, %eax
	movl	-36(%ebp), %edx
	orl	%edi, %edx
	movl	-44(%ebp), %edi
	movl	-48(%ebp), %ecx
	movl	%eax, 12(%ecx,%edi,8)
	movl	%edx, 16(%ecx,%edi,8)
.L864:
	.loc 1 3149 0
	movl	-20(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -20(%ebp)
.L862:
	cmpl	$0, -20(%ebp)
	jne	.L863
	.loc 1 3148 0
	addl	$1, -24(%ebp)
.L860:
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-24(%ebp), %eax
	ja	.L861
	.loc 1 3147 0
	movl	-28(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -28(%ebp)
.L858:
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, -28(%ebp)
	jne	.L859
	.loc 1 3158 0
	addl	$44, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE76:
	.size	compute_ae_kill, .-compute_ae_kill
	.type	expr_reaches_here_p_work, @function
expr_reaches_here_p_work:
.LFB77:
	.loc 1 3185 0
	pushl	%ebp
.LCFI260:
	movl	%esp, %ebp
.LCFI261:
	pushl	%edi
.LCFI262:
	pushl	%esi
.LCFI263:
	pushl	%ebx
.LCFI264:
	subl	$40, %esp
.LCFI265:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3188 0
	movl	16(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -20(%ebp)
	jmp	.L874
.L875:
.LBB32:
	.loc 1 3190 0
	movl	-20(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 3192 0
	movl	-16(%ebp), %eax
	movl	44(%eax), %eax
	addl	24(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L876
	.loc 1 3195 0
	movl	-16(%ebp), %eax
	cmpl	16(%ebp), %eax
	jne	.L878
	.loc 1 3198 0
	cmpl	$0, 20(%ebp)
	je	.L880
	movl	-16(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	ae_gen@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	shrl	$6, %eax
	movl	12(%edx,%eax,8), %esi
	movl	16(%edx,%eax,8), %edi
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	shrdl	%edi, %esi
	shrl	%cl, %edi
	testb	$32, %cl
	je	.L896
	movl	%edi, %esi
	xorl	%edi, %edi
.L896:
	movl	%esi, %eax
	andl	$1, %eax
	movl	%edi, %edx
	andl	$0, %edx
	testl	%eax, %eax
	je	.L880
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	28(%eax), %eax
	movl	44(%eax), %edx
	movl	-16(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	%eax, %edx
	jne	.L880
	.loc 1 3201 0
	movl	$1, -32(%ebp)
	jmp	.L884
.L880:
	.loc 1 3203 0
	movl	-16(%ebp), %eax
	movl	44(%eax), %eax
	addl	24(%ebp), %eax
	movb	$1, (%eax)
	jmp	.L876
.L878:
	.loc 1 3207 0
	movl	-16(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	ae_kill@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	shrl	$6, %eax
	movl	12(%edx,%eax,8), %esi
	movl	16(%edx,%eax,8), %edi
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	shrdl	%edi, %esi
	shrl	%cl, %edi
	testb	$32, %cl
	je	.L895
	movl	%edi, %esi
	xorl	%edi, %edi
.L895:
	movl	%esi, %eax
	andl	$1, %eax
	movl	%edi, %edx
	andl	$0, %edx
	testl	%eax, %eax
	je	.L885
	.loc 1 3208 0
	movl	-16(%ebp), %eax
	movl	44(%eax), %eax
	addl	24(%ebp), %eax
	movb	$1, (%eax)
	jmp	.L876
.L885:
	.loc 1 3211 0
	movl	-16(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	ae_gen@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	shrl	$6, %eax
	movl	12(%edx,%eax,8), %esi
	movl	16(%edx,%eax,8), %edi
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	shrdl	%edi, %esi
	shrl	%cl, %edi
	testb	$32, %cl
	je	.L894
	movl	%edi, %esi
	xorl	%edi, %edi
.L894:
	movl	%esi, %eax
	andl	$1, %eax
	movl	%edi, %edx
	andl	$0, %edx
	testl	%eax, %eax
	je	.L887
	.loc 1 3216 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	28(%eax), %eax
	movl	44(%eax), %edx
	movl	-16(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	%eax, %edx
	jne	.L889
	.loc 1 3217 0
	movl	$1, -32(%ebp)
	jmp	.L884
.L889:
	.loc 1 3219 0
	movl	-16(%ebp), %eax
	movl	44(%eax), %eax
	addl	24(%ebp), %eax
	movb	$1, (%eax)
	jmp	.L876
.L887:
	.loc 1 3225 0
	movl	-16(%ebp), %eax
	movl	44(%eax), %eax
	addl	24(%ebp), %eax
	movb	$1, (%eax)
	.loc 1 3226 0
	movl	24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	expr_reaches_here_p_work
	testl	%eax, %eax
	je	.L876
	.loc 1 3229 0
	movl	$1, -32(%ebp)
	jmp	.L884
.L876:
.LBE32:
	.loc 1 3188 0
	movl	-20(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
.L874:
	cmpl	$0, -20(%ebp)
	jne	.L875
	.loc 1 3234 0
	movl	$0, -32(%ebp)
.L884:
	movl	-32(%ebp), %eax
	.loc 1 3235 0
	addl	$40, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE77:
	.size	expr_reaches_here_p_work, .-expr_reaches_here_p_work
	.type	expr_reaches_here_p, @function
expr_reaches_here_p:
.LFB78:
	.loc 1 3246 0
	pushl	%ebp
.LCFI266:
	movl	%esp, %ebp
.LCFI267:
	pushl	%ebx
.LCFI268:
	subl	$36, %esp
.LCFI269:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3248 0
	movl	last_basic_block@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	xcalloc@PLT
	movl	%eax, -8(%ebp)
	.loc 1 3250 0
	movl	-8(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	expr_reaches_here_p_work
	movl	%eax, -12(%ebp)
	.loc 1 3252 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 3253 0
	movl	-12(%ebp), %eax
	.loc 1 3254 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE78:
	.size	expr_reaches_here_p, .-expr_reaches_here_p
	.section	.rodata
	.type	__FUNCTION__.14961, @object
	.size	__FUNCTION__.14961, 15
__FUNCTION__.14961:
	.string	"computing_insn"
	.text
	.type	computing_insn, @function
computing_insn:
.LFB79:
	.loc 1 3265 0
	pushl	%ebp
.LCFI270:
	movl	%esp, %ebp
.LCFI271:
	pushl	%ebx
.LCFI272:
	subl	$36, %esp
.LCFI273:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3266 0
	movl	12(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 3268 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L900
	.loc 1 3270 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	4(%eax), %eax
	movl	28(%eax), %eax
	cmpl	-20(%ebp), %eax
	jne	.L902
	.loc 1 3273 0
	movl	$0, -24(%ebp)
	jmp	.L904
.L902:
	.loc 1 3277 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L904
.L900:
.LBB33:
	.loc 1 3285 0
	movl	$0, -12(%ebp)
	.loc 1 3286 0
	movl	$0, -8(%ebp)
	.loc 1 3288 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -16(%ebp)
	jmp	.L905
.L906:
	.loc 1 3290 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	28(%eax), %eax
	cmpl	-20(%ebp), %eax
	jne	.L907
	.loc 1 3296 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	uid_cuid@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %ecx
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	uid_cuid@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	cmpl	%eax, %ecx
	jge	.L914
	movl	$1, 12(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	expr_reaches_here_p
	testl	%eax, %eax
	je	.L914
	.loc 1 3299 0
	addl	$1, -8(%ebp)
	.loc 1 3300 0
	cmpl	$1, -8(%ebp)
	jle	.L912
	.loc 1 3301 0
	movl	$0, -24(%ebp)
	jmp	.L904
.L912:
	.loc 1 3303 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L914
.L907:
	.loc 1 3306 0
	movl	$0, 12(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	expr_reaches_here_p
	testl	%eax, %eax
	je	.L914
	.loc 1 3308 0
	addl	$1, -8(%ebp)
	.loc 1 3309 0
	cmpl	$1, -8(%ebp)
	jle	.L916
	.loc 1 3310 0
	movl	$0, -24(%ebp)
	jmp	.L904
.L916:
	.loc 1 3312 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
.L914:
	.loc 1 3288 0
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
.L905:
	cmpl	$0, -16(%ebp)
	jne	.L906
	.loc 1 3316 0
	cmpl	$0, -12(%ebp)
	jne	.L919
	.loc 1 3317 0
	leal	__FUNCTION__.14961@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3317, 4(%esp)
	leal	.LC7@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L919:
	.loc 1 3319 0
	movl	-12(%ebp), %eax
	movl	%eax, -24(%ebp)
.L904:
	movl	-24(%ebp), %eax
.LBE33:
	.loc 1 3321 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE79:
	.size	computing_insn, .-computing_insn
	.section	.rodata
	.type	__FUNCTION__.15013, @object
	.size	__FUNCTION__.15013, 19
__FUNCTION__.15013:
	.string	"def_reaches_here_p"
	.text
	.type	def_reaches_here_p, @function
def_reaches_here_p:
.LFB80:
	.loc 1 3329 0
	pushl	%ebp
.LCFI274:
	movl	%esp, %ebp
.LCFI275:
	pushl	%edi
.LCFI276:
	pushl	%esi
.LCFI277:
	pushl	%ebx
.LCFI278:
	subl	$44, %esp
.LCFI279:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3332 0
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reaching_defs@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %ecx
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	uid_cuid@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	shrl	$6, %eax
	movl	12(%ecx,%eax,8), %esi
	movl	16(%ecx,%eax,8), %edi
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	uid_cuid@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	shrdl	%edi, %esi
	shrl	%cl, %edi
	testb	$32, %cl
	je	.L938
	movl	%edi, %esi
	xorl	%edi, %edi
.L938:
	movl	%esi, %eax
	andl	$1, %eax
	movl	%edi, %edx
	andl	$0, %edx
	testl	%eax, %eax
	je	.L923
	.loc 1 3333 0
	movl	$1, -32(%ebp)
	jmp	.L925
.L923:
	.loc 1 3335 0
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	44(%eax), %edx
	movl	12(%ebp), %eax
	movl	28(%eax), %eax
	movl	44(%eax), %eax
	cmpl	%eax, %edx
	jne	.L926
	.loc 1 3337 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	uid_cuid@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %ecx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	uid_cuid@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	cmpl	%eax, %ecx
	jge	.L928
	.loc 1 3339 0
	movl	12(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$49, %ax
	jne	.L930
	.loc 1 3340 0
	movl	$1, -32(%ebp)
	jmp	.L925
.L930:
	.loc 1 3341 0
	movl	12(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$59, %ax
	jne	.L932
	.loc 1 3342 0
	movl	12(%ebp), %eax
	movl	44(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
	jmp	.L934
.L932:
	.loc 1 3343 0
	movl	12(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L935
	.loc 1 3344 0
	movl	12(%ebp), %eax
	movl	44(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
	jmp	.L934
.L935:
	.loc 1 3346 0
	leal	__FUNCTION__.15013@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3346, 4(%esp)
	leal	.LC7@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L934:
	.loc 1 3348 0
	movl	12(%ebp), %eax
	movl	20(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	reg_set_between_p@PLT
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -32(%ebp)
	jmp	.L925
.L928:
	.loc 1 3351 0
	movl	$0, -32(%ebp)
	jmp	.L925
.L926:
	.loc 1 3354 0
	movl	$0, -32(%ebp)
.L925:
	movl	-32(%ebp), %eax
	.loc 1 3355 0
	addl	$44, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE80:
	.size	def_reaches_here_p, .-def_reaches_here_p
	.type	can_disregard_other_sets, @function
can_disregard_other_sets:
.LFB81:
	.loc 1 3368 0
	pushl	%ebp
.LCFI280:
	movl	%esp, %ebp
.LCFI281:
	pushl	%ebx
.LCFI282:
	subl	$36, %esp
.LCFI283:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3369 0
	movl	$0, -12(%ebp)
	.loc 1 3372 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L940
.L941:
	.loc 1 3373 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	def_reaches_here_p
	testl	%eax, %eax
	je	.L942
	.loc 1 3375 0
	addl	$1, -12(%ebp)
	.loc 1 3377 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$49, %ax
	jne	.L944
	.loc 1 3378 0
	movl	$0, -24(%ebp)
	jmp	.L946
.L944:
	.loc 1 3380 0
	cmpl	$0, 16(%ebp)
	jne	.L947
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$59, %ax
	je	.L949
	movl	12(%ebp), %eax
	movl	44(%eax), %eax
	movl	12(%eax), %edx
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	44(%eax), %eax
	movl	12(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	jne	.L947
.L949:
	.loc 1 3385 0
	movl	$0, -24(%ebp)
	jmp	.L946
.L947:
	.loc 1 3387 0
	cmpl	$1, -12(%ebp)
	jle	.L951
	.loc 1 3393 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$59, %ax
	jne	.L953
	.loc 1 3394 0
	movl	$0, -24(%ebp)
	jmp	.L946
.L953:
	.loc 1 3395 0
	movl	12(%ebp), %eax
	movl	44(%eax), %eax
	movl	12(%eax), %edx
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	44(%eax), %eax
	movl	12(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	jne	.L951
	.loc 1 3397 0
	movl	$0, -24(%ebp)
	jmp	.L946
.L951:
	.loc 1 3400 0
	movl	8(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	%eax, (%edx)
.L942:
	.loc 1 3372 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
.L940:
	cmpl	$0, -8(%ebp)
	jne	.L941
	.loc 1 3403 0
	movl	-12(%ebp), %eax
	movl	%eax, -24(%ebp)
.L946:
	movl	-24(%ebp), %eax
	.loc 1 3404 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE81:
	.size	can_disregard_other_sets, .-can_disregard_other_sets
	.section	.rodata
	.type	__FUNCTION__.15149, @object
	.size	__FUNCTION__.15149, 18
__FUNCTION__.15149:
	.string	"handle_avail_expr"
	.align 4
.LC11:
	.string	"GCSE: Replacing the source in insn %d with"
.LC12:
	.string	"from"
.LC13:
	.string	"set in"
.LC14:
	.string	" reg %d %s insn %d\n"
	.align 4
.LC15:
	.string	"GCSE: Creating insn %d to copy value of reg %d"
.LC16:
	.string	", computed in insn %d,\n"
	.align 4
.LC17:
	.string	"      into newly allocated reg %d\n"
	.align 4
.LC18:
	.string	"GCSE: Replacing the source in insn %d with reg %d "
.LC19:
	.string	"set in insn %d\n"
	.text
	.type	handle_avail_expr, @function
handle_avail_expr:
.LFB82:
	.loc 1 3415 0
	pushl	%ebp
.LCFI284:
	movl	%esp, %ebp
.LCFI285:
	pushl	%ebx
.LCFI286:
	subl	$100, %esp
.LCFI287:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3420 0
	movl	$0, -20(%ebp)
	.loc 1 3424 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	computing_insn
	movl	%eax, -40(%ebp)
	.loc 1 3425 0
	cmpl	$0, -40(%ebp)
	jne	.L959
	.loc 1 3426 0
	movl	$0, -72(%ebp)
	jmp	.L961
.L959:
	.loc 1 3427 0
	movl	-40(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L962
	movl	-40(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L964
	movl	-40(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -64(%ebp)
	jmp	.L966
.L964:
	movl	-40(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	single_set_2@PLT
	movl	%eax, -64(%ebp)
.L966:
	movl	-64(%ebp), %eax
	movl	%eax, -68(%ebp)
	jmp	.L967
.L962:
	movl	$0, -68(%ebp)
.L967:
	movl	-68(%ebp), %ecx
	movl	%ecx, -36(%ebp)
	.loc 1 3428 0
	cmpl	$0, -36(%ebp)
	jne	.L968
	.loc 1 3429 0
	leal	__FUNCTION__.15149@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3429, 4(%esp)
	leal	.LC7@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L968:
	.loc 1 3431 0
	movl	$0, -28(%ebp)
	.loc 1 3432 0
	movl	$0, -24(%ebp)
	.loc 1 3437 0
	movl	-36(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L970
.LBB34:
	.loc 1 3442 0
	movl	-36(%ebp), %eax
	movl	12(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 3446 0
	movl	max_gcse_regno@GOTOFF(%ebx), %eax
	cmpl	%eax, -16(%ebp)
	jae	.L972
	movl	-16(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_set_table@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -48(%ebp)
	movl	-48(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L972
	movl	$0, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	can_disregard_other_sets
	testl	%eax, %eax
	je	.L970
.L972:
	.loc 1 3453 0
	movl	$1, -24(%ebp)
	.loc 1 3454 0
	movl	$1, -28(%ebp)
.L970:
.LBE34:
	.loc 1 3458 0
	cmpl	$0, -28(%ebp)
	jne	.L975
.LBB35:
	.loc 1 3461 0
	movl	-36(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 3464 0
	movl	max_gcse_regno@GOTOFF(%ebx), %eax
	cmpl	%eax, -12(%ebp)
	jb	.L977
	.loc 1 3465 0
	leal	__FUNCTION__.15149@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3465, 4(%esp)
	leal	.LC7@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L977:
	.loc 1 3467 0
	movl	-12(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_set_table@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -48(%ebp)
	.loc 1 3471 0
	movl	-48(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L979
	movl	$0, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	can_disregard_other_sets
	testl	%eax, %eax
	je	.L975
.L979:
	.loc 1 3473 0
	movl	$1, -28(%ebp)
.L975:
.LBE35:
	.loc 1 3476 0
	cmpl	$0, -28(%ebp)
	je	.L981
	.loc 1 3478 0
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -44(%ebp)
	.loc 1 3479 0
	cmpl	$0, -24(%ebp)
	je	.L983
	.loc 1 3480 0
	movl	-36(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -32(%ebp)
	jmp	.L985
.L983:
	.loc 1 3482 0
	movl	-36(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -32(%ebp)
.L985:
	.loc 1 3483 0
	movl	-44(%ebp), %edx
	addl	$12, %edx
	movl	$0, 12(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	validate_change@PLT
	movl	%eax, -20(%ebp)
	.loc 1 3487 0
	cmpl	$0, -20(%ebp)
	je	.L992
	.loc 1 3489 0
	movl	gcse_subst_count@GOTOFF(%ebx), %eax
	addl	$1, %eax
	movl	%eax, gcse_subst_count@GOTOFF(%ebx)
	.loc 1 3490 0
	movl	gcse_file@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L992
	.loc 1 3492 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	gcse_file@GOTOFF(%ebx), %edx
	movl	%eax, 8(%esp)
	leal	.LC11@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
	.loc 1 3494 0
	movl	-40(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -60(%ebp)
	cmpl	$0, -24(%ebp)
	je	.L989
	leal	.LC12@GOTOFF(%ebx), %eax
	movl	%eax, -56(%ebp)
	jmp	.L991
.L989:
	leal	.LC13@GOTOFF(%ebx), %ecx
	movl	%ecx, -56(%ebp)
.L991:
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movl	gcse_file@GOTOFF(%ebx), %edx
	movl	-60(%ebp), %ecx
	movl	%ecx, 16(%esp)
	movl	-56(%ebp), %ecx
	movl	%ecx, 12(%esp)
	movl	%eax, 8(%esp)
	leal	.LC14@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
	jmp	.L992
.L981:
.LBB36:
	.loc 1 3510 0
	movl	-36(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, (%esp)
	call	gen_reg_rtx@PLT
	movl	%eax, -32(%ebp)
	.loc 1 3515 0
	movl	-36(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 12(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$57, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, %edx
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	emit_insn_after@PLT
	movl	%eax, -8(%ebp)
	.loc 1 3521 0
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	record_one_set
	.loc 1 3523 0
	movl	gcse_create_count@GOTOFF(%ebx), %eax
	addl	$1, %eax
	movl	%eax, gcse_create_count@GOTOFF(%ebx)
	.loc 1 3524 0
	movl	gcse_file@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L993
	.loc 1 3526 0
	movl	-40(%ebp), %eax
	movl	20(%eax), %eax
	movl	44(%eax), %eax
	movl	12(%eax), %eax
	movl	4(%eax), %edx
	movl	-40(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movl	gcse_file@GOTOFF(%ebx), %ecx
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	leal	.LC15@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
	.loc 1 3529 0
	movl	-40(%ebp), %eax
	movl	4(%eax), %eax
	movl	gcse_file@GOTOFF(%ebx), %edx
	movl	%eax, 8(%esp)
	leal	.LC16@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
	.loc 1 3531 0
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movl	gcse_file@GOTOFF(%ebx), %edx
	movl	%eax, 8(%esp)
	leal	.LC17@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
.L993:
	.loc 1 3535 0
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -44(%ebp)
	.loc 1 3538 0
	movl	-40(%ebp), %eax
	movl	20(%eax), %eax
	movl	44(%eax), %eax
	movl	4(%eax), %eax
	movl	-44(%ebp), %edx
	addl	$12, %edx
	movl	$0, 12(%esp)
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	validate_change@PLT
	movl	%eax, -20(%ebp)
	.loc 1 3545 0
	cmpl	$0, -20(%ebp)
	je	.L992
	.loc 1 3547 0
	movl	gcse_subst_count@GOTOFF(%ebx), %eax
	addl	$1, %eax
	movl	%eax, gcse_subst_count@GOTOFF(%ebx)
	.loc 1 3548 0
	movl	gcse_file@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L992
	.loc 1 3550 0
	movl	-40(%ebp), %eax
	movl	20(%eax), %eax
	movl	44(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	gcse_file@GOTOFF(%ebx), %ecx
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	leal	.LC18@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
	.loc 1 3555 0
	movl	-40(%ebp), %eax
	movl	4(%eax), %eax
	movl	gcse_file@GOTOFF(%ebx), %edx
	movl	%eax, 8(%esp)
	leal	.LC19@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
.L992:
.LBE36:
	.loc 1 3561 0
	movl	-20(%ebp), %eax
	movl	%eax, -72(%ebp)
.L961:
	movl	-72(%ebp), %eax
	.loc 1 3562 0
	addl	$100, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE82:
	.size	handle_avail_expr, .-handle_avail_expr
	.type	classic_gcse, @function
classic_gcse:
.LFB83:
	.loc 1 3571 0
	pushl	%ebp
.LCFI288:
	movl	%esp, %ebp
.LCFI289:
	pushl	%edi
.LCFI290:
	pushl	%esi
.LCFI291:
	pushl	%ebx
.LCFI292:
	subl	$44, %esp
.LCFI293:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3578 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	52(%eax), %edx
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, %edx
	jne	.L999
	.loc 1 3579 0
	movl	$0, -48(%ebp)
	jmp	.L1001
.L999:
	.loc 1 3581 0
	movl	$0, -36(%ebp)
	.loc 1 3582 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	52(%eax), %eax
	movl	52(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L1002
.L1003:
	.loc 1 3586 0
	call	reset_opr_set_tables
	.loc 1 3588 0
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 3589 0
	jmp	.L1004
.L1005:
	.loc 1 3593 0
	movl	-32(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$42, %ax
	jne	.L1006
	movl	-32(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L1006
	movl	-32(%ebp), %eax
	movl	44(%eax), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L1006
	movl	-32(%ebp), %eax
	movl	44(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	jbe	.L1006
.LBB37:
	.loc 1 3598 0
	movl	-32(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 3599 0
	movl	-24(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 3602 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	want_to_gcse_p
	testl	%eax, %eax
	je	.L1006
	leal	expr_hash_table@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	lookup_expr
	movl	%eax, -16(%ebp)
	cmpl	$0, -16(%ebp)
	je	.L1006
	movl	-28(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	ae_in@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	shrl	$6, %eax
	movl	12(%edx,%eax,8), %esi
	movl	16(%edx,%eax,8), %edi
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	shrdl	%edi, %esi
	shrl	%cl, %edi
	testb	$32, %cl
	je	.L1021
	movl	%edi, %esi
	xorl	%edi, %edi
.L1021:
	movl	%esi, %eax
	andl	$1, %eax
	movl	%edi, %edx
	andl	$0, %edx
	testl	%eax, %eax
	je	.L1006
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	oprs_not_set_p
	testl	%eax, %eax
	je	.L1006
	.loc 1 3611 0
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	handle_avail_expr
	orl	%eax, -36(%ebp)
.L1006:
.LBE37:
	.loc 1 3616 0
	movl	-32(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L1015
	.loc 1 3617 0
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	mark_oprs_set
.L1015:
	.loc 1 3590 0
	movl	-32(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -32(%ebp)
.L1004:
	.loc 1 3589 0
	cmpl	$0, -32(%ebp)
	je	.L1017
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movl	20(%eax), %eax
	cmpl	-32(%ebp), %eax
	jne	.L1005
.L1017:
	.loc 1 3582 0
	movl	-28(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -28(%ebp)
.L1002:
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, -28(%ebp)
	jne	.L1003
	.loc 1 3621 0
	movl	-36(%ebp), %eax
	movl	%eax, -48(%ebp)
.L1001:
	movl	-48(%ebp), %eax
	.loc 1 3622 0
	addl	$44, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE83:
	.size	classic_gcse, .-classic_gcse
	.section	.rodata
.LC20:
	.string	"Expression"
	.align 4
.LC21:
	.string	"GCSE of %s, pass %d: %d bytes needed, %d substs,"
.LC22:
	.string	"%d insns created\n"
	.text
	.type	one_classic_gcse_pass, @function
one_classic_gcse_pass:
.LFB84:
	.loc 1 3631 0
	pushl	%ebp
.LCFI294:
	movl	%esp, %ebp
.LCFI295:
	pushl	%edi
.LCFI296:
	pushl	%esi
.LCFI297:
	pushl	%ebx
.LCFI298:
	subl	$44, %esp
.LCFI299:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3632 0
	movl	$0, -16(%ebp)
	.loc 1 3634 0
	movl	$0, gcse_subst_count@GOTOFF(%ebx)
	.loc 1 3635 0
	movl	$0, gcse_create_count@GOTOFF(%ebx)
	.loc 1 3637 0
	movl	max_cuid@GOTOFF(%ebx), %edx
	movl	$0, 8(%esp)
	leal	expr_hash_table@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	alloc_hash_table
	.loc 1 3638 0
	movl	max_cuid@GOTOFF(%ebx), %edx
	movl	last_basic_block@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	alloc_rd_mem
	.loc 1 3639 0
	leal	expr_hash_table@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	compute_hash_table
	.loc 1 3640 0
	movl	gcse_file@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L1023
	.loc 1 3641 0
	movl	gcse_file@GOTOFF(%ebx), %eax
	leal	expr_hash_table@GOTOFF(%ebx), %edx
	movl	%edx, 8(%esp)
	leal	.LC20@GOTOFF(%ebx), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	dump_hash_table
.L1023:
	.loc 1 3643 0
	movl	8+expr_hash_table@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L1025
	.loc 1 3645 0
	call	compute_kill_rd
	.loc 1 3646 0
	call	compute_rd
	.loc 1 3647 0
	movl	8+expr_hash_table@GOTOFF(%ebx), %eax
	movl	%eax, %edx
	movl	last_basic_block@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	alloc_avail_expr_mem
	.loc 1 3648 0
	leal	expr_hash_table@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	compute_ae_gen
	.loc 1 3649 0
	movl	ae_kill@GOTOFF(%ebx), %edx
	movl	ae_gen@GOTOFF(%ebx), %ecx
	leal	expr_hash_table@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	compute_ae_kill
	.loc 1 3650 0
	movl	ae_in@GOTOFF(%ebx), %eax
	movl	ae_out@GOTOFF(%ebx), %edx
	movl	ae_kill@GOTOFF(%ebx), %ecx
	movl	ae_gen@GOTOFF(%ebx), %esi
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%esi, (%esp)
	call	compute_available@PLT
	.loc 1 3651 0
	call	classic_gcse
	movl	%eax, -16(%ebp)
	.loc 1 3652 0
	call	free_avail_expr_mem
.L1025:
	.loc 1 3655 0
	call	free_rd_mem
	.loc 1 3656 0
	leal	expr_hash_table@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	free_hash_table
	.loc 1 3658 0
	movl	gcse_file@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L1027
	.loc 1 3660 0
	movl	gcse_file@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	fputc@PLT
	.loc 1 3661 0
	movl	gcse_subst_count@GOTOFF(%ebx), %edx
	movl	bytes_used@GOTOFF(%ebx), %ecx
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	20(%eax), %esi
	movl	gcse_file@GOTOFF(%ebx), %edi
	movl	%edx, 20(%esp)
	movl	%ecx, 16(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%esi, 8(%esp)
	leal	.LC21@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edi, (%esp)
	call	fprintf@PLT
	.loc 1 3663 0
	movl	gcse_create_count@GOTOFF(%ebx), %eax
	movl	gcse_file@GOTOFF(%ebx), %edx
	movl	%eax, 8(%esp)
	leal	.LC22@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
.L1027:
	.loc 1 3666 0
	movl	-16(%ebp), %eax
	.loc 1 3667 0
	addl	$44, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE84:
	.size	one_classic_gcse_pass, .-one_classic_gcse_pass
	.type	alloc_cprop_mem, @function
alloc_cprop_mem:
.LFB85:
	.loc 1 3685 0
	pushl	%ebp
.LCFI300:
	movl	%esp, %ebp
.LCFI301:
	pushl	%ebx
.LCFI302:
	subl	$20, %esp
.LCFI303:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3686 0
	movl	12(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	sbitmap_vector_alloc@PLT
	movl	%eax, cprop_pavloc@GOTOFF(%ebx)
	.loc 1 3687 0
	movl	12(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	sbitmap_vector_alloc@PLT
	movl	%eax, cprop_absaltered@GOTOFF(%ebx)
	.loc 1 3689 0
	movl	12(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	sbitmap_vector_alloc@PLT
	movl	%eax, cprop_avin@GOTOFF(%ebx)
	.loc 1 3690 0
	movl	12(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	sbitmap_vector_alloc@PLT
	movl	%eax, cprop_avout@GOTOFF(%ebx)
	.loc 1 3691 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE85:
	.size	alloc_cprop_mem, .-alloc_cprop_mem
	.type	free_cprop_mem, @function
free_cprop_mem:
.LFB86:
	.loc 1 3697 0
	pushl	%ebp
.LCFI304:
	movl	%esp, %ebp
.LCFI305:
	pushl	%ebx
.LCFI306:
	subl	$4, %esp
.LCFI307:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3698 0
	movl	cprop_pavloc@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 3699 0
	movl	cprop_absaltered@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 3700 0
	movl	cprop_avin@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 3701 0
	movl	cprop_avout@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 3702 0
	addl	$4, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE86:
	.size	free_cprop_mem, .-free_cprop_mem
	.type	compute_transp, @function
compute_transp:
.LFB87:
	.loc 1 3716 0
	pushl	%ebp
.LCFI308:
	movl	%esp, %ebp
.LCFI309:
	pushl	%edi
.LCFI310:
	pushl	%esi
.LCFI311:
	pushl	%ebx
.LCFI312:
	subl	$220, %esp
.LCFI313:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	jmp	.L1091
.L1035:
.L1091:
	.loc 1 3727 0
	cmpl	$0, 8(%ebp)
	je	.L1090
	.loc 1 3730 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -40(%ebp)
	.loc 1 3731 0
	movl	-40(%ebp), %eax
	subl	$54, %eax
	movl	%eax, -196(%ebp)
	cmpl	$25, -196(%ebp)
	ja	.L1038
	movl	$1, %eax
	movl	%eax, %esi
	movzbl	-196(%ebp), %ecx
	sall	%cl, %esi
	movl	%esi, -200(%ebp)
	movl	-200(%ebp), %eax
	andl	$58776579, %eax
	testl	%eax, %eax
	jne	.L1090
	movl	-200(%ebp), %eax
	andl	$131072, %eax
	testl	%eax, %eax
	jne	.L1040
	movl	-200(%ebp), %eax
	andl	$4194304, %eax
	testl	%eax, %eax
	jne	.L1041
	jmp	.L1038
.L1040:
	.loc 1 3734 0
	cmpl	$0, 20(%ebp)
	je	.L1042
	.loc 1 3736 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	ja	.L1044
	.loc 1 3738 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	52(%eax), %eax
	movl	%eax, -44(%ebp)
	jmp	.L1046
.L1047:
	.loc 1 3739 0
	movl	-44(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_set_in_block@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	shrl	$6, %eax
	movl	12(%edx,%eax,8), %esi
	movl	16(%edx,%eax,8), %edi
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	shrdl	%edi, %esi
	shrl	%cl, %edi
	testb	$32, %cl
	je	.L1101
	movl	%edi, %esi
	xorl	%edi, %edi
.L1101:
	movl	%esi, %eax
	andl	$1, %eax
	movl	%edi, %edx
	andl	$0, %edx
	testl	%eax, %eax
	je	.L1048
	.loc 1 3740 0
	movl	-44(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	addl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -192(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, %ecx
	shrl	$6, %ecx
	movl	%ecx, -188(%ebp)
	movl	-44(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	addl	16(%ebp), %eax
	movl	(%eax), %edx
	movl	%ecx, %eax
	movl	12(%edx,%eax,8), %esi
	movl	16(%edx,%eax,8), %edi
	movl	%esi, -184(%ebp)
	movl	%edi, -180(%ebp)
	movl	12(%ebp), %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L1100
	movl	%esi, %edi
	xorl	%esi, %esi
.L1100:
	movl	-184(%ebp), %eax
	orl	%esi, %eax
	movl	-180(%ebp), %edx
	orl	%edi, %edx
	movl	-188(%ebp), %edi
	movl	-192(%ebp), %ecx
	movl	%eax, 12(%ecx,%edi,8)
	movl	%edx, 16(%ecx,%edi,8)
.L1048:
	.loc 1 3738 0
	movl	-44(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -44(%ebp)
.L1046:
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, -44(%ebp)
	jne	.L1047
	jmp	.L1090
.L1044:
	.loc 1 3744 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_set_table@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -36(%ebp)
	jmp	.L1052
.L1053:
	.loc 1 3745 0
	movl	-36(%ebp), %eax
	movl	4(%eax), %eax
	movl	28(%eax), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	addl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -176(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, %ecx
	shrl	$6, %ecx
	movl	%ecx, -172(%ebp)
	movl	-36(%ebp), %eax
	movl	4(%eax), %eax
	movl	28(%eax), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	addl	16(%ebp), %eax
	movl	(%eax), %edx
	movl	%ecx, %eax
	movl	12(%edx,%eax,8), %esi
	movl	16(%edx,%eax,8), %edi
	movl	%esi, -168(%ebp)
	movl	%edi, -164(%ebp)
	movl	12(%ebp), %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L1099
	movl	%esi, %edi
	xorl	%esi, %esi
.L1099:
	movl	-168(%ebp), %eax
	orl	%esi, %eax
	movl	-164(%ebp), %edx
	orl	%edi, %edx
	movl	-172(%ebp), %edi
	movl	-176(%ebp), %ecx
	movl	%eax, 12(%ecx,%edi,8)
	movl	%edx, 16(%ecx,%edi,8)
	.loc 1 3744 0
	movl	-36(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -36(%ebp)
.L1052:
	cmpl	$0, -36(%ebp)
	jne	.L1053
	jmp	.L1090
.L1042:
	.loc 1 3750 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	ja	.L1055
	.loc 1 3752 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	52(%eax), %eax
	movl	%eax, -44(%ebp)
	jmp	.L1057
.L1058:
	.loc 1 3753 0
	movl	-44(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_set_in_block@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	shrl	$6, %eax
	movl	12(%edx,%eax,8), %esi
	movl	16(%edx,%eax,8), %edi
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	shrdl	%edi, %esi
	shrl	%cl, %edi
	testb	$32, %cl
	je	.L1098
	movl	%edi, %esi
	xorl	%edi, %edi
.L1098:
	movl	%esi, %eax
	andl	$1, %eax
	movl	%edi, %edx
	andl	$0, %edx
	testl	%eax, %eax
	je	.L1059
	.loc 1 3754 0
	movl	-44(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	addl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -160(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, %ecx
	shrl	$6, %ecx
	movl	%ecx, -156(%ebp)
	movl	-44(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	addl	16(%ebp), %eax
	movl	(%eax), %edx
	movl	%ecx, %eax
	movl	12(%edx,%eax,8), %esi
	movl	16(%edx,%eax,8), %edi
	movl	%esi, -152(%ebp)
	movl	%edi, -148(%ebp)
	movl	12(%ebp), %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	shldl	%eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	je	.L1097
	movl	%eax, %edx
	xorl	%eax, %eax
.L1097:
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-152(%ebp), %eax
	andl	%esi, %eax
	movl	-148(%ebp), %edx
	andl	%edi, %edx
	movl	-156(%ebp), %edi
	movl	-160(%ebp), %ecx
	movl	%eax, 12(%ecx,%edi,8)
	movl	%edx, 16(%ecx,%edi,8)
.L1059:
	.loc 1 3752 0
	movl	-44(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -44(%ebp)
.L1057:
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, -44(%ebp)
	jne	.L1058
	jmp	.L1090
.L1055:
	.loc 1 3758 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_set_table@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -36(%ebp)
	jmp	.L1062
.L1063:
	.loc 1 3759 0
	movl	-36(%ebp), %eax
	movl	4(%eax), %eax
	movl	28(%eax), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	addl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -144(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, %ecx
	shrl	$6, %ecx
	movl	%ecx, -140(%ebp)
	movl	-36(%ebp), %eax
	movl	4(%eax), %eax
	movl	28(%eax), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	addl	16(%ebp), %eax
	movl	(%eax), %edx
	movl	%ecx, %eax
	movl	12(%edx,%eax,8), %esi
	movl	16(%edx,%eax,8), %edi
	movl	%esi, -136(%ebp)
	movl	%edi, -132(%ebp)
	movl	12(%ebp), %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	shldl	%eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	je	.L1096
	movl	%eax, %edx
	xorl	%eax, %eax
.L1096:
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-136(%ebp), %eax
	andl	%esi, %eax
	movl	-132(%ebp), %edx
	andl	%edi, %edx
	movl	-140(%ebp), %edi
	movl	-144(%ebp), %ecx
	movl	%eax, 12(%ecx,%edi,8)
	movl	%edx, 16(%ecx,%edi,8)
	.loc 1 3758 0
	movl	-36(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -36(%ebp)
.L1062:
	cmpl	$0, -36(%ebp)
	jne	.L1063
	.loc 1 3763 0
	jmp	.L1090
.L1041:
	.loc 1 3766 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	52(%eax), %eax
	movl	%eax, -44(%ebp)
	jmp	.L1064
.L1065:
.LBB38:
	.loc 1 3768 0
	movl	-44(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	canon_modify_mem_list@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 3770 0
	jmp	.L1066
.L1067:
.LBB39:
	.loc 1 3774 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$44, %ax
	jne	.L1068
	.loc 1 3776 0
	cmpl	$0, 20(%ebp)
	je	.L1070
	.loc 1 3777 0
	movl	-44(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	addl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -128(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, %ecx
	shrl	$6, %ecx
	movl	%ecx, -124(%ebp)
	movl	-44(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	addl	16(%ebp), %eax
	movl	(%eax), %edx
	movl	%ecx, %eax
	movl	12(%edx,%eax,8), %esi
	movl	16(%edx,%eax,8), %edi
	movl	%esi, -120(%ebp)
	movl	%edi, -116(%ebp)
	movl	12(%ebp), %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L1095
	movl	%esi, %edi
	xorl	%esi, %esi
.L1095:
	movl	-120(%ebp), %eax
	orl	%esi, %eax
	movl	-116(%ebp), %edx
	orl	%edi, %edx
	movl	-124(%ebp), %edi
	movl	-128(%ebp), %ecx
	movl	%eax, 12(%ecx,%edi,8)
	movl	%edx, 16(%ecx,%edi,8)
	jmp	.L1073
.L1070:
	.loc 1 3779 0
	movl	-44(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	addl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -112(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, %ecx
	shrl	$6, %ecx
	movl	%ecx, -108(%ebp)
	movl	-44(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	addl	16(%ebp), %eax
	movl	(%eax), %edx
	movl	%ecx, %eax
	movl	12(%edx,%eax,8), %esi
	movl	16(%edx,%eax,8), %edi
	movl	%esi, -104(%ebp)
	movl	%edi, -100(%ebp)
	movl	12(%ebp), %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	shldl	%eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	je	.L1094
	movl	%eax, %edx
	xorl	%eax, %eax
.L1094:
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-104(%ebp), %eax
	andl	%esi, %eax
	movl	-100(%ebp), %edx
	andl	%edi, %edx
	movl	-108(%ebp), %edi
	movl	-112(%ebp), %ecx
	movl	%eax, 12(%ecx,%edi,8)
	movl	%edx, 16(%ecx,%edi,8)
	.loc 1 3780 0
	jmp	.L1073
.L1068:
	.loc 1 3785 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 3786 0
	movl	-28(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 3787 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 3789 0
	movl	-24(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	rtx_addr_varies_p@GOT(%ebx), %eax
	movl	%eax, 16(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	canon_true_dependence@PLT
	testl	%eax, %eax
	je	.L1074
	.loc 1 3792 0
	cmpl	$0, 20(%ebp)
	je	.L1076
	.loc 1 3793 0
	movl	-44(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	addl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -96(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, %ecx
	shrl	$6, %ecx
	movl	%ecx, -92(%ebp)
	movl	-44(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	addl	16(%ebp), %eax
	movl	(%eax), %edx
	movl	%ecx, %eax
	movl	12(%edx,%eax,8), %esi
	movl	16(%edx,%eax,8), %edi
	movl	%esi, -88(%ebp)
	movl	%edi, -84(%ebp)
	movl	12(%ebp), %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L1093
	movl	%esi, %edi
	xorl	%esi, %esi
.L1093:
	movl	-88(%ebp), %eax
	orl	%esi, %eax
	movl	-84(%ebp), %edx
	orl	%edi, %edx
	movl	-92(%ebp), %edi
	movl	-96(%ebp), %ecx
	movl	%eax, 12(%ecx,%edi,8)
	movl	%edx, 16(%ecx,%edi,8)
	jmp	.L1073
.L1076:
	.loc 1 3795 0
	movl	-44(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	addl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -80(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, %ecx
	shrl	$6, %ecx
	movl	%ecx, -76(%ebp)
	movl	-44(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	addl	16(%ebp), %eax
	movl	(%eax), %edx
	movl	%ecx, %eax
	movl	12(%edx,%eax,8), %esi
	movl	16(%edx,%eax,8), %edi
	movl	%esi, -72(%ebp)
	movl	%edi, -68(%ebp)
	movl	12(%ebp), %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	shldl	%eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	je	.L1092
	movl	%eax, %edx
	xorl	%eax, %eax
.L1092:
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-72(%ebp), %eax
	andl	%esi, %eax
	movl	-68(%ebp), %edx
	andl	%edi, %edx
	movl	-76(%ebp), %edi
	movl	-80(%ebp), %ecx
	movl	%eax, 12(%ecx,%edi,8)
	movl	%edx, 16(%ecx,%edi,8)
	.loc 1 3796 0
	jmp	.L1073
.L1074:
	.loc 1 3798 0
	movl	-28(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -28(%ebp)
.L1066:
.LBE39:
	.loc 1 3770 0
	cmpl	$0, -28(%ebp)
	jne	.L1067
.L1073:
.LBE38:
	.loc 1 3766 0
	movl	-44(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -44(%ebp)
.L1064:
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, -44(%ebp)
	jne	.L1065
	.loc 1 3802 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 8(%ebp)
	.loc 1 3803 0
	jmp	.L1035
.L1038:
	.loc 1 3821 0
	movl	-40(%ebp), %edx
	movl	rtx_length@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	subl	$1, %eax
	movl	%eax, -52(%ebp)
	movl	-40(%ebp), %edx
	movl	rtx_format@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -32(%ebp)
	jmp	.L1080
.L1081:
	.loc 1 3823 0
	movl	-52(%ebp), %eax
	addl	-32(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$101, %al
	jne	.L1082
	.loc 1 3828 0
	cmpl	$0, -52(%ebp)
	jne	.L1084
	.loc 1 3830 0
	movl	-52(%ebp), %eax
	movl	8(%ebp), %edx
	movl	4(%edx,%eax,8), %eax
	movl	%eax, 8(%ebp)
	.loc 1 3831 0
	jmp	.L1035
.L1084:
	.loc 1 3834 0
	movl	-52(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	compute_transp
	jmp	.L1086
.L1082:
	.loc 1 3836 0
	movl	-52(%ebp), %eax
	addl	-32(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$69, %al
	jne	.L1086
	.loc 1 3837 0
	movl	$0, -48(%ebp)
	jmp	.L1088
.L1089:
	.loc 1 3838 0
	movl	-52(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %edx
	movl	-48(%ebp), %eax
	movl	4(%edx,%eax,4), %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	compute_transp
	.loc 1 3837 0
	addl	$1, -48(%ebp)
.L1088:
	movl	-52(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	(%eax), %eax
	cmpl	-48(%ebp), %eax
	jg	.L1089
.L1086:
	.loc 1 3821 0
	subl	$1, -52(%ebp)
.L1080:
	cmpl	$0, -52(%ebp)
	jns	.L1081
.L1090:
	.loc 1 3840 0
	addl	$220, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE87:
	.size	compute_transp, .-compute_transp
	.type	compute_cprop_data, @function
compute_cprop_data:
.LFB88:
	.loc 1 3847 0
	pushl	%ebp
.LCFI314:
	movl	%esp, %ebp
.LCFI315:
	pushl	%esi
.LCFI316:
	pushl	%ebx
.LCFI317:
	subl	$16, %esp
.LCFI318:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3848 0
	movl	cprop_pavloc@GOTOFF(%ebx), %edx
	movl	cprop_absaltered@GOTOFF(%ebx), %ecx
	leal	set_hash_table@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	compute_local_properties
	.loc 1 3849 0
	movl	cprop_avin@GOTOFF(%ebx), %eax
	movl	cprop_avout@GOTOFF(%ebx), %edx
	movl	cprop_absaltered@GOTOFF(%ebx), %ecx
	movl	cprop_pavloc@GOTOFF(%ebx), %esi
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%esi, (%esp)
	call	compute_available@PLT
	.loc 1 3851 0
	addl	$16, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE88:
	.size	compute_cprop_data, .-compute_cprop_data
	.type	find_used_regs, @function
find_used_regs:
.LFB89:
	.loc 1 3876 0
	pushl	%ebp
.LCFI319:
	movl	%esp, %ebp
.LCFI320:
	pushl	%ebx
.LCFI321:
	subl	$40, %esp
.LCFI322:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3880 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
.L1105:
	.loc 1 3885 0
	cmpl	$0, -8(%ebp)
	je	.L1121
	.loc 1 3888 0
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -16(%ebp)
	.loc 1 3889 0
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L1108
	.loc 1 3891 0
	movl	reg_use_count@GOTOFF(%ebx), %eax
	cmpl	$8, %eax
	je	.L1121
	.loc 1 3894 0
	movl	reg_use_count@GOTOFF(%ebx), %edx
	movl	-8(%ebp), %eax
	movl	%eax, reg_use_table@GOTOFF(%ebx,%edx,4)
	.loc 1 3895 0
	movl	reg_use_count@GOTOFF(%ebx), %eax
	addl	$1, %eax
	movl	%eax, reg_use_count@GOTOFF(%ebx)
.L1108:
	.loc 1 3900 0
	movl	-16(%ebp), %edx
	movl	rtx_length@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	subl	$1, %eax
	movl	%eax, -24(%ebp)
	movl	-16(%ebp), %edx
	movl	rtx_format@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -12(%ebp)
	jmp	.L1111
.L1112:
	.loc 1 3902 0
	movl	-24(%ebp), %eax
	addl	-12(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$101, %al
	jne	.L1113
	.loc 1 3907 0
	cmpl	$0, -24(%ebp)
	jne	.L1115
	.loc 1 3909 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 3910 0
	jmp	.L1105
.L1115:
	.loc 1 3913 0
	movl	-24(%ebp), %eax
	sall	$3, %eax
	addl	-8(%ebp), %eax
	leal	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	find_used_regs
	jmp	.L1117
.L1113:
	.loc 1 3915 0
	movl	-24(%ebp), %eax
	addl	-12(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$69, %al
	jne	.L1117
	.loc 1 3916 0
	movl	$0, -20(%ebp)
	jmp	.L1119
.L1120:
	.loc 1 3917 0
	movl	-24(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	leal	4(%eax), %edx
	movl	-20(%ebp), %eax
	sall	$2, %eax
	addl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	find_used_regs
	.loc 1 3916 0
	addl	$1, -20(%ebp)
.L1119:
	movl	-24(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	(%eax), %eax
	cmpl	-20(%ebp), %eax
	jg	.L1120
.L1117:
	.loc 1 3900 0
	subl	$1, -24(%ebp)
.L1111:
	cmpl	$0, -24(%ebp)
	jns	.L1112
.L1121:
	.loc 1 3919 0
	addl	$40, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE89:
	.size	find_used_regs, .-find_used_regs
	.type	try_replace_reg, @function
try_replace_reg:
.LFB90:
	.loc 1 3927 0
	pushl	%ebp
.LCFI323:
	movl	%esp, %ebp
.LCFI324:
	pushl	%ebx
.LCFI325:
	subl	$52, %esp
.LCFI326:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3928 0
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_equal_equiv_note@PLT
	movl	%eax, -20(%ebp)
	.loc 1 3929 0
	movl	$0, -16(%ebp)
	.loc 1 3930 0
	movl	$0, -12(%ebp)
	.loc 1 3931 0
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L1123
	movl	16(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L1125
	movl	16(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L1127
.L1125:
	movl	16(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	single_set_2@PLT
	movl	%eax, -24(%ebp)
.L1127:
	movl	-24(%ebp), %eax
	movl	%eax, -28(%ebp)
	jmp	.L1128
.L1123:
	movl	$0, -28(%ebp)
.L1128:
	movl	-28(%ebp), %eax
	movl	%eax, -8(%ebp)
	.loc 1 3933 0
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	validate_replace_src_group@PLT
	.loc 1 3934 0
	call	num_changes_pending@PLT
	testl	%eax, %eax
	je	.L1129
	call	apply_change_group@PLT
	testl	%eax, %eax
	je	.L1129
	.loc 1 3935 0
	movl	$1, -12(%ebp)
.L1129:
	.loc 1 3938 0
	cmpl	$0, -12(%ebp)
	je	.L1132
	cmpl	$0, -8(%ebp)
	je	.L1132
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	je	.L1135
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	je	.L1135
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L1135
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	je	.L1135
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	je	.L1135
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$144, %ax
	je	.L1135
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$66, %ax
	je	.L1135
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$150, %ax
	jne	.L1132
.L1135:
	.loc 1 3940 0
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, (%esp)
	call	simplify_rtx@PLT
	movl	%eax, -16(%ebp)
	.loc 1 3942 0
	cmpl	$0, -16(%ebp)
	je	.L1132
	.loc 1 3943 0
	movl	-8(%ebp), %eax
	addl	$12, %eax
	movl	$0, 12(%esp)
	movl	-16(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	validate_change@PLT
.L1132:
	.loc 1 3946 0
	cmpl	$0, -12(%ebp)
	jne	.L1144
	cmpl	$0, -8(%ebp)
	je	.L1144
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	reg_mentioned_p@PLT
	testl	%eax, %eax
	je	.L1144
	.loc 1 3951 0
	movl	-8(%ebp), %eax
	movl	12(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	simplify_replace_rtx@PLT
	movl	%eax, -16(%ebp)
	.loc 1 3953 0
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	jne	.L1148
	movl	-8(%ebp), %edx
	addl	$12, %edx
	movl	$0, 12(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	validate_change@PLT
	testl	%eax, %eax
	je	.L1148
	.loc 1 3955 0
	movl	$1, -12(%ebp)
.L1148:
	.loc 1 3960 0
	cmpl	$0, -12(%ebp)
	jne	.L1157
	cmpl	$0, -20(%ebp)
	jne	.L1157
	cmpl	$0, -8(%ebp)
	je	.L1157
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$143, %ax
	je	.L1157
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$142, %ax
	je	.L1157
	.loc 1 3963 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_rtx@PLT
	movl	%eax, 8(%esp)
	movl	$4, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	set_unique_reg_note@PLT
	movl	%eax, -20(%ebp)
	.loc 1 3946 0
	jmp	.L1157
.L1144:
	.loc 1 3968 0
	cmpl	$0, -20(%ebp)
	je	.L1157
	.loc 1 3969 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	simplify_replace_rtx@PLT
	movl	%eax, %edx
	movl	-20(%ebp), %eax
	movl	%edx, 4(%eax)
.L1157:
	.loc 1 3975 0
	cmpl	$0, -20(%ebp)
	je	.L1159
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L1159
	.loc 1 3976 0
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	remove_note@PLT
.L1159:
	.loc 1 3978 0
	movl	-12(%ebp), %eax
	.loc 1 3979 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE90:
	.size	try_replace_reg, .-try_replace_reg
	.section	.rodata
	.type	__FUNCTION__.15937, @object
	.size	__FUNCTION__.15937, 15
__FUNCTION__.15937:
	.string	"find_avail_set"
	.text
	.type	find_avail_set, @function
find_avail_set:
.LFB91:
	.loc 1 3988 0
	pushl	%ebp
.LCFI327:
	movl	%esp, %ebp
.LCFI328:
	pushl	%edi
.LCFI329:
	pushl	%esi
.LCFI330:
	pushl	%ebx
.LCFI331:
	subl	$28, %esp
.LCFI332:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3991 0
	movl	$0, -24(%ebp)
.L1164:
.LBB40:
	.loc 1 4005 0
	movl	8(%ebp), %eax
	leal	set_hash_table@GOTOFF(%ebx), %edx
	movl	%edx, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	lookup_set
	movl	%eax, -16(%ebp)
	.loc 1 4009 0
	jmp	.L1165
.L1166:
	.loc 1 4011 0
	movl	12(%ebp), %eax
	movl	28(%eax), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	cprop_avin@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	shrl	$6, %eax
	movl	12(%edx,%eax,8), %esi
	movl	16(%edx,%eax,8), %edi
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	shrdl	%edi, %esi
	shrl	%cl, %edi
	testb	$32, %cl
	je	.L1185
	movl	%edi, %esi
	xorl	%edi, %edi
.L1185:
	movl	%esi, %eax
	andl	$1, %eax
	movl	%edi, %edx
	andl	$0, %edx
	testl	%eax, %eax
	jne	.L1167
	.loc 1 4013 0
	movl	8(%ebp), %eax
	movl	-16(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	next_set
	movl	%eax, -16(%ebp)
.L1165:
	.loc 1 4009 0
	cmpl	$0, -16(%ebp)
	jne	.L1166
.L1167:
	.loc 1 4018 0
	cmpl	$0, -16(%ebp)
	je	.L1169
	.loc 1 4021 0
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	je	.L1171
	.loc 1 4022 0
	leal	__FUNCTION__.15937@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$4022, 4(%esp)
	leal	.LC7@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1171:
	.loc 1 4024 0
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 4033 0
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	je	.L1173
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	je	.L1173
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L1173
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	je	.L1173
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	je	.L1173
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$144, %ax
	je	.L1173
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$66, %ax
	je	.L1173
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$150, %ax
	je	.L1173
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	oprs_not_set_p
	testl	%eax, %eax
	je	.L1182
.L1173:
	.loc 1 4034 0
	movl	-16(%ebp), %eax
	movl	%eax, -24(%ebp)
.L1182:
	.loc 1 4038 0
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L1169
	.loc 1 4043 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 8(%ebp)
	.loc 1 4044 0
	jmp	.L1164
.L1169:
.LBE40:
	.loc 1 4048 0
	movl	-24(%ebp), %eax
	.loc 1 4049 0
	addl	$28, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE91:
	.size	find_avail_set, .-find_avail_set
	.section	.rodata
	.align 4
.LC23:
	.string	"CONST-PROP: Replacing reg %d in jump_insn %d with constant "
	.text
	.type	cprop_jump, @function
cprop_jump:
.LFB92:
	.loc 1 4065 0
	pushl	%ebp
.LCFI333:
	movl	%esp, %ebp
.LCFI334:
	pushl	%ebx
.LCFI335:
	subl	$52, %esp
.LCFI336:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4067 0
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	pc_set@PLT
	movl	%eax, -12(%ebp)
	.loc 1 4071 0
	cmpl	$0, 12(%ebp)
	je	.L1187
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	modified_between_p@PLT
	testl	%eax, %eax
	jne	.L1187
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	24(%ebp), %eax
	movl	%eax, (%esp)
	call	modified_between_p@PLT
	testl	%eax, %eax
	jne	.L1187
.LBB41:
	.loc 1 4075 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L1191
	movl	12(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L1193
	movl	12(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L1195
.L1193:
	movl	12(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	single_set_2@PLT
	movl	%eax, -28(%ebp)
.L1195:
	movl	-28(%ebp), %eax
	movl	%eax, -32(%ebp)
	jmp	.L1196
.L1191:
	movl	$0, -32(%ebp)
.L1196:
	movl	-32(%ebp), %eax
	movl	%eax, -8(%ebp)
	.loc 1 4076 0
	movl	-8(%ebp), %eax
	movl	12(%eax), %edx
	movl	-8(%ebp), %eax
	movl	4(%eax), %ecx
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	simplify_replace_rtx@PLT
	movl	%eax, -16(%ebp)
	.loc 1 4071 0
	jmp	.L1197
.L1187:
.LBE41:
	.loc 1 4081 0
	movl	-12(%ebp), %eax
	movl	%eax, -16(%ebp)
.L1197:
	.loc 1 4083 0
	movl	24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	simplify_replace_rtx@PLT
	movl	%eax, -20(%ebp)
	.loc 1 4087 0
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	jne	.L1198
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	je	.L1200
.L1198:
	.loc 1 4088 0
	movl	$0, -24(%ebp)
	jmp	.L1201
.L1200:
	.loc 1 4091 0
	movl	global_rtl@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-20(%ebp), %eax
	jne	.L1202
	.loc 1 4092 0
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_insn@PLT
	jmp	.L1204
.L1202:
	.loc 1 4097 0
	cmpl	$0, 12(%ebp)
	je	.L1205
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	modified_in_p@PLT
	testl	%eax, %eax
	je	.L1205
	.loc 1 4099 0
	movl	$0, -24(%ebp)
	jmp	.L1201
.L1205:
	.loc 1 4100 0
	movl	-12(%ebp), %edx
	addl	$12, %edx
	movl	$0, 12(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	validate_change@PLT
	testl	%eax, %eax
	jne	.L1208
	.loc 1 4101 0
	movl	$0, -24(%ebp)
	jmp	.L1201
.L1208:
	.loc 1 4106 0
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	jne	.L1204
	.loc 1 4107 0
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_barrier_after@PLT
.L1204:
	.loc 1 4116 0
	movl	$1, run_jump_opt_after_gcse@GOTOFF(%ebx)
	.loc 1 4118 0
	movl	const_prop_count@GOTOFF(%ebx), %eax
	addl	$1, %eax
	movl	%eax, const_prop_count@GOTOFF(%ebx)
	.loc 1 4119 0
	movl	gcse_file@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L1211
	.loc 1 4121 0
	movl	16(%ebp), %eax
	movl	4(%eax), %edx
	movl	20(%ebp), %eax
	movl	4(%eax), %eax
	movl	gcse_file@GOTOFF(%ebx), %ecx
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	leal	.LC23@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
	.loc 1 4124 0
	movl	gcse_file@GOTOFF(%ebx), %edx
	movl	24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	print_rtl@PLT
	.loc 1 4125 0
	movl	gcse_file@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	fputc@PLT
.L1211:
	.loc 1 4127 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	purge_dead_edges@PLT
	.loc 1 4129 0
	movl	$1, -24(%ebp)
.L1201:
	movl	-24(%ebp), %eax
	.loc 1 4130 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE92:
	.size	cprop_jump, .-cprop_jump
	.type	constprop_register, @function
constprop_register:
.LFB93:
	.loc 1 4138 0
	pushl	%ebp
.LCFI337:
	movl	%esp, %ebp
.LCFI338:
	pushl	%ebx
.LCFI339:
	subl	$52, %esp
.LCFI340:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4143 0
	cmpl	$0, 20(%ebp)
	je	.L1215
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L1217
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L1219
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L1221
.L1219:
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	single_set_2@PLT
	movl	%eax, -28(%ebp)
.L1221:
	movl	-28(%ebp), %eax
	movl	%eax, -32(%ebp)
	jmp	.L1222
.L1217:
	movl	$0, -32(%ebp)
.L1222:
	movl	-32(%ebp), %eax
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	je	.L1215
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L1215
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	any_condjump_p@PLT
	testl	%eax, %eax
	je	.L1215
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	onlyjump_p@PLT
	testl	%eax, %eax
	je	.L1215
.LBB42:
	.loc 1 4148 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 4149 0
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L1215
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	8(%ebp), %eax
	movl	28(%eax), %ecx
	movl	16(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	cprop_jump
	testl	%eax, %eax
	je	.L1215
	.loc 1 4151 0
	movl	$1, -24(%ebp)
	jmp	.L1229
.L1215:
.LBE42:
	.loc 1 4155 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$42, %ax
	jne	.L1230
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	try_replace_reg
	testl	%eax, %eax
	je	.L1230
	.loc 1 4157 0
	movl	$1, -24(%ebp)
	jmp	.L1229
.L1230:
	.loc 1 4165 0
	cmpl	$0, 20(%ebp)
	je	.L1233
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	any_condjump_p@PLT
	testl	%eax, %eax
	je	.L1233
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	onlyjump_p@PLT
	testl	%eax, %eax
	je	.L1233
	.loc 1 4166 0
	movl	8(%ebp), %eax
	movl	28(%eax), %edx
	movl	16(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	%edx, (%esp)
	call	cprop_jump
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -24(%ebp)
	jmp	.L1229
.L1233:
	.loc 1 4167 0
	movl	$0, -24(%ebp)
.L1229:
	movl	-24(%ebp), %eax
	.loc 1 4168 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE93:
	.size	constprop_register, .-constprop_register
	.section	.rodata
	.type	__FUNCTION__.16140, @object
	.size	__FUNCTION__.16140, 11
__FUNCTION__.16140:
	.string	"cprop_insn"
	.align 4
.LC24:
	.string	"GLOBAL CONST-PROP: Replacing reg %d in "
.LC25:
	.string	"insn %d with constant "
	.align 4
.LC26:
	.string	"GLOBAL COPY-PROP: Replacing reg %d in insn %d"
.LC27:
	.string	" with reg %d\n"
	.text
	.type	cprop_insn, @function
cprop_insn:
.LFB94:
	.loc 1 4177 0
	pushl	%ebp
.LCFI341:
	movl	%esp, %ebp
.LCFI342:
	pushl	%ebx
.LCFI343:
	subl	$52, %esp
.LCFI344:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4179 0
	movl	$0, -28(%ebp)
	.loc 1 4182 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	je	.L1239
	.loc 1 4183 0
	movl	$0, -40(%ebp)
	jmp	.L1241
.L1239:
	.loc 1 4185 0
	movl	$0, reg_use_count@GOTOFF(%ebx)
	.loc 1 4186 0
	movl	8(%ebp), %edx
	addl	$44, %edx
	movl	$0, 8(%esp)
	leal	find_used_regs@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	note_uses@PLT
	.loc 1 4188 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_equal_equiv_note@PLT
	movl	%eax, -24(%ebp)
	.loc 1 4191 0
	cmpl	$0, -24(%ebp)
	je	.L1242
	.loc 1 4192 0
	movl	-24(%ebp), %eax
	addl	$4, %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	find_used_regs
.L1242:
	.loc 1 4194 0
	leal	reg_use_table@GOTOFF(%ebx), %eax
	movl	%eax, -32(%ebp)
	jmp	.L1244
.L1245:
.LBB43:
	.loc 1 4197 0
	movl	-32(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 4203 0
	movl	max_gcse_regno@GOTOFF(%ebx), %eax
	cmpl	%eax, -20(%ebp)
	jae	.L1246
	.loc 1 4208 0
	movl	-32(%ebp), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	oprs_not_set_p
	testl	%eax, %eax
	je	.L1246
	.loc 1 4213 0
	movl	-20(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	find_avail_set
	movl	%eax, -8(%ebp)
	.loc 1 4214 0
	cmpl	$0, -8(%ebp)
	je	.L1246
	.loc 1 4217 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 4219 0
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	je	.L1250
	.loc 1 4220 0
	leal	__FUNCTION__.16140@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$4220, 4(%esp)
	leal	.LC7@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1250:
	.loc 1 4222 0
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 4225 0
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	je	.L1252
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	je	.L1252
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L1252
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	je	.L1252
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	je	.L1252
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$144, %ax
	je	.L1252
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$66, %ax
	je	.L1252
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$150, %ax
	jne	.L1260
.L1252:
	.loc 1 4227 0
	movl	-32(%ebp), %eax
	movl	(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	constprop_register
	testb	%al, %al
	je	.L1246
	.loc 1 4229 0
	movl	$1, -28(%ebp)
	.loc 1 4230 0
	movl	const_prop_count@GOTOFF(%ebx), %eax
	addl	$1, %eax
	movl	%eax, const_prop_count@GOTOFF(%ebx)
	.loc 1 4231 0
	movl	gcse_file@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L1246
	.loc 1 4233 0
	movl	gcse_file@GOTOFF(%ebx), %edx
	movl	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC24@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
	.loc 1 4234 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	gcse_file@GOTOFF(%ebx), %edx
	movl	%eax, 8(%esp)
	leal	.LC25@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
	.loc 1 4235 0
	movl	gcse_file@GOTOFF(%ebx), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	print_rtl@PLT
	.loc 1 4236 0
	movl	gcse_file@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	fputc@PLT
	.loc 1 4225 0
	jmp	.L1246
.L1260:
	.loc 1 4240 0
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L1246
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	jbe	.L1246
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-20(%ebp), %eax
	je	.L1246
	.loc 1 4244 0
	movl	-32(%ebp), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	try_replace_reg
	testl	%eax, %eax
	je	.L1246
	.loc 1 4246 0
	movl	$1, -28(%ebp)
	.loc 1 4247 0
	movl	copy_prop_count@GOTOFF(%ebx), %eax
	addl	$1, %eax
	movl	%eax, copy_prop_count@GOTOFF(%ebx)
	.loc 1 4248 0
	movl	gcse_file@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L1246
	.loc 1 4250 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	gcse_file@GOTOFF(%ebx), %edx
	movl	%eax, 12(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC26@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
	.loc 1 4252 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	gcse_file@GOTOFF(%ebx), %edx
	movl	%eax, 8(%esp)
	leal	.LC27@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
.L1246:
.LBE43:
	.loc 1 4195 0
	addl	$4, -32(%ebp)
	movl	reg_use_count@GOTOFF(%ebx), %eax
	subl	$1, %eax
	movl	%eax, reg_use_count@GOTOFF(%ebx)
.L1244:
	.loc 1 4194 0
	movl	reg_use_count@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jg	.L1245
	.loc 1 4264 0
	movl	-28(%ebp), %eax
	movl	%eax, -40(%ebp)
.L1241:
	movl	-40(%ebp), %eax
	.loc 1 4265 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE94:
	.size	cprop_insn, .-cprop_insn
	.type	local_cprop_find_used_regs, @function
local_cprop_find_used_regs:
.LFB95:
	.loc 1 4276 0
	pushl	%ebp
.LCFI345:
	movl	%esp, %ebp
.LCFI346:
	pushl	%ebx
.LCFI347:
	subl	$36, %esp
.LCFI348:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4277 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 4279 0
	cmpl	$0, -8(%ebp)
	je	.L1282
	.loc 1 4282 0
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -32(%ebp)
	cmpl	$111, -32(%ebp)
	ja	.L1278
	cmpl	$106, -32(%ebp)
	jae	.L1282
	cmpl	$73, -32(%ebp)
	je	.L1275
	cmpl	$74, -32(%ebp)
	je	.L1282
	jmp	.L1274
.L1278:
	movl	-32(%ebp), %eax
	subl	$142, %eax
	cmpl	$1, %eax
	ja	.L1274
	.loc 1 4287 0
	jmp	.L1282
.L1275:
	.loc 1 4303 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_bitsize@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	movl	%eax, -28(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L1279
	movl	$64, -24(%ebp)
	jmp	.L1281
.L1279:
	movl	$32, -24(%ebp)
.L1281:
	movl	-24(%ebp), %eax
	cmpl	%eax, -28(%ebp)
	jg	.L1282
.L1274:
	.loc 1 4311 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	find_used_regs
.L1282:
	.loc 1 4312 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE95:
	.size	local_cprop_find_used_regs, .-local_cprop_find_used_regs
	.section	.rodata
	.type	__FUNCTION__.16275, @object
	.size	__FUNCTION__.16275, 15
__FUNCTION__.16275:
	.string	"do_local_cprop"
	.align 4
.LC28:
	.string	"LOCAL CONST-PROP: Replacing reg %d in "
	.align 4
.LC29:
	.string	"LOCAL COPY-PROP: Replacing reg %d in insn %d"
	.text
	.type	do_local_cprop, @function
do_local_cprop:
.LFB96:
	.loc 1 4323 0
	pushl	%ebp
.LCFI349:
	movl	%esp, %ebp
.LCFI350:
	pushl	%ebx
.LCFI351:
	subl	$52, %esp
.LCFI352:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4324 0
	movl	$0, -28(%ebp)
	movl	$0, -24(%ebp)
	.loc 1 4328 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L1284
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	ja	.L1286
	movl	12(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$58, %ax
	je	.L1284
	movl	12(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, (%esp)
	call	asm_noperands@PLT
	testl	%eax, %eax
	jns	.L1284
.L1286:
.LBB44:
	.loc 1 4333 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cselib_lookup@PLT
	movl	%eax, -20(%ebp)
	.loc 1 4336 0
	cmpl	$0, -20(%ebp)
	jne	.L1289
	.loc 1 4337 0
	movl	$0, -40(%ebp)
	jmp	.L1291
.L1289:
	.loc 1 4338 0
	movl	-20(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -16(%ebp)
	jmp	.L1292
.L1293:
.LBB45:
	.loc 1 4340 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 4343 0
	movl	-16(%ebp), %eax
	movzbl	12(%eax), %eax
	testb	%al, %al
	jne	.L1294
	.loc 1 4346 0
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	je	.L1296
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	je	.L1296
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L1296
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	je	.L1296
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	je	.L1296
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$144, %ax
	je	.L1296
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$66, %ax
	je	.L1296
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$150, %ax
	jne	.L1304
.L1296:
	.loc 1 4347 0
	movl	-12(%ebp), %eax
	movl	%eax, -24(%ebp)
.L1304:
	.loc 1 4348 0
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L1294
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	jbe	.L1294
	movl	-16(%ebp), %eax
	movl	8(%eax), %eax
	movl	$0, 8(%esp)
	movl	$3, 4(%esp)
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	movl	%eax, -8(%ebp)
	cmpl	$0, -8(%ebp)
	je	.L1307
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	je	.L1294
.L1307:
	.loc 1 4356 0
	movl	-12(%ebp), %eax
	movl	%eax, -28(%ebp)
.L1294:
.LBE45:
	.loc 1 4338 0
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
.L1292:
	cmpl	$0, -16(%ebp)
	jne	.L1293
	.loc 1 4358 0
	cmpl	$0, -24(%ebp)
	je	.L1310
	movl	16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	constprop_register
	xorl	$1, %eax
	testb	%al, %al
	jne	.L1310
	.loc 1 4365 0
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	adjust_libcall_notes
	xorl	$1, %eax
	testb	%al, %al
	je	.L1313
	.loc 1 4366 0
	leal	__FUNCTION__.16275@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$4366, 4(%esp)
	leal	.LC7@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1313:
	.loc 1 4367 0
	movl	gcse_file@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L1315
	.loc 1 4369 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	gcse_file@GOTOFF(%ebx), %edx
	movl	%eax, 8(%esp)
	leal	.LC28@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
	.loc 1 4371 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	gcse_file@GOTOFF(%ebx), %edx
	movl	%eax, 8(%esp)
	leal	.LC25@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
	.loc 1 4373 0
	movl	gcse_file@GOTOFF(%ebx), %edx
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	print_rtl@PLT
	.loc 1 4374 0
	movl	gcse_file@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	fputc@PLT
.L1315:
	.loc 1 4376 0
	movl	const_prop_count@GOTOFF(%ebx), %eax
	addl	$1, %eax
	movl	%eax, const_prop_count@GOTOFF(%ebx)
	.loc 1 4377 0
	movl	$1, -40(%ebp)
	jmp	.L1291
.L1310:
	.loc 1 4379 0
	cmpl	$0, -28(%ebp)
	je	.L1284
	movl	-28(%ebp), %eax
	cmpl	8(%ebp), %eax
	je	.L1284
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	try_replace_reg
	testl	%eax, %eax
	je	.L1284
	.loc 1 4381 0
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	adjust_libcall_notes
	.loc 1 4382 0
	movl	gcse_file@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L1320
	.loc 1 4384 0
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	gcse_file@GOTOFF(%ebx), %ecx
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	leal	.LC29@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
	.loc 1 4387 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movl	gcse_file@GOTOFF(%ebx), %edx
	movl	%eax, 8(%esp)
	leal	.LC27@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
.L1320:
	.loc 1 4389 0
	movl	copy_prop_count@GOTOFF(%ebx), %eax
	addl	$1, %eax
	movl	%eax, copy_prop_count@GOTOFF(%ebx)
	.loc 1 4390 0
	movl	$1, -40(%ebp)
	jmp	.L1291
.L1284:
.LBE44:
	.loc 1 4393 0
	movl	$0, -40(%ebp)
.L1291:
	movl	-40(%ebp), %eax
	.loc 1 4394 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE96:
	.size	do_local_cprop, .-do_local_cprop
	.type	adjust_libcall_notes, @function
adjust_libcall_notes:
.LFB97:
	.loc 1 4403 0
	pushl	%ebp
.LCFI353:
	movl	%esp, %ebp
.LCFI354:
	pushl	%ebx
.LCFI355:
	subl	$36, %esp
.LCFI356:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
.LBB46:
	.loc 1 4406 0
	jmp	.L1337
.L1325:
	.loc 1 4408 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_equal_equiv_note@PLT
	movl	%eax, -8(%ebp)
	.loc 1 4410 0
	cmpl	$0, -8(%ebp)
	je	.L1324
	.loc 1 4413 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L1327
	.loc 1 4415 0
	movl	16(%ebp), %eax
	movl	12(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	reg_set_between_p@PLT
	testl	%eax, %eax
	je	.L1327
.L1329:
	.loc 1 4419 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_equal_equiv_note@PLT
	movl	%eax, -8(%ebp)
	.loc 1 4420 0
	cmpl	$0, -8(%ebp)
	je	.L1330
	.loc 1 4422 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	reg_mentioned_p@PLT
	testl	%eax, %eax
	je	.L1330
	.loc 1 4423 0
	movl	$0, -24(%ebp)
	jmp	.L1333
.L1330:
	.loc 1 4425 0
	movl	20(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	setne	%al
	addl	$4, 20(%ebp)
	testb	%al, %al
	jne	.L1329
	.loc 1 4426 0
	movl	$1, -24(%ebp)
	jmp	.L1333
.L1327:
	.loc 1 4429 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	replace_rtx@PLT
	movl	%eax, %edx
	movl	-8(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 4430 0
	movl	-12(%ebp), %eax
	movl	%eax, 16(%ebp)
.L1324:
.L1337:
.LBE46:
	.loc 1 4406 0
	movl	20(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	setne	%al
	addl	$4, 20(%ebp)
	testb	%al, %al
	jne	.L1325
	.loc 1 4432 0
	movl	$1, -24(%ebp)
.L1333:
	movl	-24(%ebp), %eax
	.loc 1 4433 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE97:
	.size	adjust_libcall_notes, .-adjust_libcall_notes
	.section	.rodata
	.type	__FUNCTION__.16408, @object
	.size	__FUNCTION__.16408, 17
__FUNCTION__.16408:
	.string	"local_cprop_pass"
	.text
	.type	local_cprop_pass, @function
local_cprop_pass:
.LFB98:
	.loc 1 4440 0
	pushl	%ebp
.LCFI357:
	movl	%esp, %ebp
.LCFI358:
	pushl	%ebx
.LCFI359:
	subl	$84, %esp
.LCFI360:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4444 0
	movb	$0, -5(%ebp)
	.loc 1 4446 0
	call	cselib_init@PLT
	.loc 1 4447 0
	leal	-64(%ebp), %eax
	addl	$36, %eax
	movl	%eax, -16(%ebp)
	.loc 1 4448 0
	movl	-16(%ebp), %eax
	movl	$0, (%eax)
	.loc 1 4449 0
	call	get_insns@PLT
	movl	%eax, -24(%ebp)
	jmp	.L1339
.L1340:
	.loc 1 4451 0
	movl	-24(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L1341
.LBB47:
	.loc 1 4453 0
	movl	$0, 8(%esp)
	movl	$7, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	movl	%eax, -12(%ebp)
	.loc 1 4455 0
	cmpl	$0, -12(%ebp)
	je	.L1343
	.loc 1 4457 0
	leal	-64(%ebp), %eax
	cmpl	-16(%ebp), %eax
	jne	.L1345
	.loc 1 4458 0
	leal	__FUNCTION__.16408@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$4458, 4(%esp)
	leal	.LC7@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1345:
	.loc 1 4459 0
	subl	$4, -16(%ebp)
	movl	-12(%ebp), %eax
	movl	4(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%edx, (%eax)
.L1343:
	.loc 1 4461 0
	movl	$0, 8(%esp)
	movl	$6, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	movl	%eax, -12(%ebp)
	.loc 1 4462 0
	cmpl	$0, -12(%ebp)
	je	.L1347
	.loc 1 4463 0
	addl	$4, -16(%ebp)
.L1347:
	.loc 1 4464 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_equal_equiv_note@PLT
	movl	%eax, -12(%ebp)
.L1349:
	.loc 1 4467 0
	movl	$0, reg_use_count@GOTOFF(%ebx)
	.loc 1 4468 0
	movl	-24(%ebp), %edx
	addl	$44, %edx
	movl	$0, 8(%esp)
	leal	local_cprop_find_used_regs@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	note_uses@PLT
	.loc 1 4469 0
	cmpl	$0, -12(%ebp)
	je	.L1350
	.loc 1 4470 0
	movl	-12(%ebp), %eax
	addl	$4, %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	local_cprop_find_used_regs
.L1350:
	.loc 1 4472 0
	leal	reg_use_table@GOTOFF(%ebx), %eax
	movl	%eax, -20(%ebp)
	jmp	.L1352
.L1353:
	.loc 1 4474 0
	movl	-20(%ebp), %eax
	movl	(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	do_local_cprop
	testb	%al, %al
	je	.L1354
	.loc 1 4477 0
	movb	$1, -5(%ebp)
	.loc 1 4478 0
	jmp	.L1356
.L1354:
	.loc 1 4473 0
	addl	$4, -20(%ebp)
	movl	reg_use_count@GOTOFF(%ebx), %eax
	subl	$1, %eax
	movl	%eax, reg_use_count@GOTOFF(%ebx)
.L1352:
	.loc 1 4472 0
	movl	reg_use_count@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jg	.L1353
.L1356:
	.loc 1 4481 0
	movl	reg_use_count@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L1349
.L1341:
.LBE47:
	.loc 1 4483 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	cselib_process_insn@PLT
	.loc 1 4449 0
	movl	-24(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -24(%ebp)
.L1339:
	cmpl	$0, -24(%ebp)
	jne	.L1340
	.loc 1 4485 0
	call	cselib_finish@PLT
	.loc 1 4487 0
	cmpb	$0, -5(%ebp)
	je	.L1361
	cmpl	$0, 8(%ebp)
	je	.L1361
	.loc 1 4489 0
	call	delete_unreachable_blocks@PLT
	.loc 1 4490 0
	call	free_reg_set_mem
	.loc 1 4491 0
	call	max_reg_num@PLT
	movl	%eax, (%esp)
	call	alloc_reg_set_mem
	.loc 1 4492 0
	call	get_insns@PLT
	movl	%eax, (%esp)
	call	compute_sets
.L1361:
	.loc 1 4494 0
	addl	$84, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE98:
	.size	local_cprop_pass, .-local_cprop_pass
	.type	cprop, @function
cprop:
.LFB99:
	.loc 1 4502 0
	pushl	%ebp
.LCFI361:
	movl	%esp, %ebp
.LCFI362:
	pushl	%ebx
.LCFI363:
	subl	$36, %esp
.LCFI364:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4508 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	52(%eax), %edx
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, %edx
	jne	.L1363
	.loc 1 4510 0
	movl	gcse_file@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L1365
	.loc 1 4511 0
	movl	gcse_file@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	fputc@PLT
.L1365:
	.loc 1 4512 0
	movl	$0, -24(%ebp)
	jmp	.L1367
.L1363:
	.loc 1 4515 0
	movl	$0, -16(%ebp)
	.loc 1 4516 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	52(%eax), %eax
	movl	52(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L1368
.L1369:
	.loc 1 4520 0
	call	reset_opr_set_tables
	.loc 1 4522 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 4523 0
	jmp	.L1370
.L1371:
	.loc 1 4525 0
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L1372
	.loc 1 4527 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	cprop_insn
	orl	%eax, -16(%ebp)
	.loc 1 4532 0
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	je	.L1372
	.loc 1 4533 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	mark_oprs_set
.L1372:
	.loc 1 4524 0
	movl	-8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -8(%ebp)
.L1370:
	.loc 1 4523 0
	cmpl	$0, -8(%ebp)
	je	.L1375
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	20(%eax), %eax
	cmpl	-8(%ebp), %eax
	jne	.L1371
.L1375:
	.loc 1 4516 0
	movl	-12(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -12(%ebp)
.L1368:
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, -12(%ebp)
	jne	.L1369
	.loc 1 4537 0
	movl	gcse_file@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L1378
	.loc 1 4538 0
	movl	gcse_file@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	fputc@PLT
.L1378:
	.loc 1 4540 0
	movl	-16(%ebp), %eax
	movl	%eax, -24(%ebp)
.L1367:
	movl	-24(%ebp), %eax
	.loc 1 4541 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE99:
	.size	cprop, .-cprop
	.section	.rodata
.LC30:
	.string	"SET"
	.align 4
.LC31:
	.string	"CPROP of %s, pass %d: %d bytes needed, "
	.align 4
.LC32:
	.string	"%d const props, %d copy props\n\n"
	.text
	.type	one_cprop_pass, @function
one_cprop_pass:
.LFB100:
	.loc 1 4551 0
	pushl	%ebp
.LCFI365:
	movl	%esp, %ebp
.LCFI366:
	pushl	%esi
.LCFI367:
	pushl	%ebx
.LCFI368:
	subl	$48, %esp
.LCFI369:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4552 0
	movl	$0, -12(%ebp)
	.loc 1 4554 0
	movl	$0, const_prop_count@GOTOFF(%ebx)
	.loc 1 4555 0
	movl	$0, copy_prop_count@GOTOFF(%ebx)
	.loc 1 4557 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	local_cprop_pass
	.loc 1 4559 0
	movl	max_cuid@GOTOFF(%ebx), %edx
	movl	$1, 8(%esp)
	leal	set_hash_table@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	alloc_hash_table
	.loc 1 4560 0
	leal	set_hash_table@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	compute_hash_table
	.loc 1 4561 0
	movl	gcse_file@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L1382
	.loc 1 4562 0
	movl	gcse_file@GOTOFF(%ebx), %eax
	leal	set_hash_table@GOTOFF(%ebx), %edx
	movl	%edx, 8(%esp)
	leal	.LC30@GOTOFF(%ebx), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	dump_hash_table
.L1382:
	.loc 1 4563 0
	movl	8+set_hash_table@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L1384
	.loc 1 4565 0
	movl	8+set_hash_table@GOTOFF(%ebx), %eax
	movl	%eax, %edx
	movl	last_basic_block@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	alloc_cprop_mem
	.loc 1 4566 0
	call	compute_cprop_data
	.loc 1 4567 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	cprop
	movl	%eax, -12(%ebp)
	.loc 1 4568 0
	cmpl	$0, 12(%ebp)
	je	.L1386
	.loc 1 4569 0
	call	bypass_conditional_jumps
	orl	%eax, -12(%ebp)
.L1386:
	.loc 1 4570 0
	call	free_cprop_mem
.L1384:
	.loc 1 4573 0
	leal	set_hash_table@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	free_hash_table
	.loc 1 4575 0
	movl	gcse_file@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L1388
	.loc 1 4577 0
	movl	bytes_used@GOTOFF(%ebx), %edx
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	20(%eax), %ecx
	movl	gcse_file@GOTOFF(%ebx), %esi
	movl	%edx, 16(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%ecx, 8(%esp)
	leal	.LC31@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	call	fprintf@PLT
	.loc 1 4579 0
	movl	copy_prop_count@GOTOFF(%ebx), %eax
	movl	const_prop_count@GOTOFF(%ebx), %edx
	movl	gcse_file@GOTOFF(%ebx), %ecx
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	leal	.LC32@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
.L1388:
	.loc 1 4583 0
	cmpl	$0, -12(%ebp)
	je	.L1390
	cmpl	$0, 12(%ebp)
	je	.L1390
	.loc 1 4584 0
	call	delete_unreachable_blocks@PLT
.L1390:
	.loc 1 4586 0
	movl	-12(%ebp), %eax
	.loc 1 4587 0
	addl	$48, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE100:
	.size	one_cprop_pass, .-one_cprop_pass
	.section	.rodata
	.type	__FUNCTION__.16538, @object
	.size	__FUNCTION__.16538, 16
__FUNCTION__.16538:
	.string	"find_bypass_set"
	.text
	.type	find_bypass_set, @function
find_bypass_set:
.LFB101:
	.loc 1 4599 0
	pushl	%ebp
.LCFI370:
	movl	%esp, %ebp
.LCFI371:
	pushl	%edi
.LCFI372:
	pushl	%esi
.LCFI373:
	pushl	%ebx
.LCFI374:
	subl	$28, %esp
.LCFI375:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4600 0
	movl	$0, -24(%ebp)
.L1395:
.LBB48:
	.loc 1 4605 0
	movl	8(%ebp), %eax
	leal	set_hash_table@GOTOFF(%ebx), %edx
	movl	%edx, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	lookup_set
	movl	%eax, -16(%ebp)
	.loc 1 4607 0
	jmp	.L1396
.L1397:
	.loc 1 4609 0
	movl	12(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	cprop_avout@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	shrl	$6, %eax
	movl	12(%edx,%eax,8), %esi
	movl	16(%edx,%eax,8), %edi
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	shrdl	%edi, %esi
	shrl	%cl, %edi
	testb	$32, %cl
	je	.L1415
	movl	%edi, %esi
	xorl	%edi, %edi
.L1415:
	movl	%esi, %eax
	andl	$1, %eax
	movl	%edi, %edx
	andl	$0, %edx
	testl	%eax, %eax
	jne	.L1398
	.loc 1 4611 0
	movl	8(%ebp), %eax
	movl	-16(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	next_set
	movl	%eax, -16(%ebp)
.L1396:
	.loc 1 4607 0
	cmpl	$0, -16(%ebp)
	jne	.L1397
.L1398:
	.loc 1 4614 0
	cmpl	$0, -16(%ebp)
	je	.L1400
	.loc 1 4617 0
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	je	.L1402
	.loc 1 4618 0
	leal	__FUNCTION__.16538@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$4618, 4(%esp)
	leal	.LC7@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1402:
	.loc 1 4620 0
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 4621 0
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	je	.L1404
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	je	.L1404
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L1404
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	je	.L1404
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	je	.L1404
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$144, %ax
	je	.L1404
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$66, %ax
	je	.L1404
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$150, %ax
	jne	.L1412
.L1404:
	.loc 1 4622 0
	movl	-16(%ebp), %eax
	movl	%eax, -24(%ebp)
.L1412:
	.loc 1 4624 0
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L1400
	.loc 1 4627 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 8(%ebp)
	.loc 1 4628 0
	jmp	.L1395
.L1400:
.LBE48:
	.loc 1 4629 0
	movl	-24(%ebp), %eax
	.loc 1 4630 0
	addl	$28, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE101:
	.size	find_bypass_set, .-find_bypass_set
	.type	reg_killed_on_edge, @function
reg_killed_on_edge:
.LFB102:
	.loc 1 4643 0
	pushl	%ebp
.LCFI376:
	movl	%esp, %ebp
.LCFI377:
	pushl	%ebx
.LCFI378:
	subl	$36, %esp
.LCFI379:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4646 0
	movl	12(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L1417
.L1418:
	.loc 1 4647 0
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L1419
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	reg_set_p@PLT
	testl	%eax, %eax
	je	.L1419
	.loc 1 4648 0
	movl	$1, -24(%ebp)
	jmp	.L1422
.L1419:
	.loc 1 4646 0
	movl	-8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -8(%ebp)
.L1417:
	cmpl	$0, -8(%ebp)
	jne	.L1418
	.loc 1 4650 0
	movl	$0, -24(%ebp)
.L1422:
	movl	-24(%ebp), %eax
	.loc 1 4651 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE102:
	.size	reg_killed_on_edge, .-reg_killed_on_edge
	.section	.rodata
	.align 4
.LC33:
	.string	"JUMP-BYPASS: Proved reg %d in jump_insn %d equals constant "
	.align 4
.LC34:
	.string	"\nBypass edge from %d->%d to %d\n"
	.text
	.type	bypass_block, @function
bypass_block:
.LFB103:
	.loc 1 4667 0
	pushl	%ebp
.LCFI380:
	movl	%esp, %ebp
.LCFI381:
	pushl	%esi
.LCFI382:
	pushl	%ebx
.LCFI383:
	subl	$96, %esp
.LCFI384:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4672 0
	cmpl	$0, 12(%ebp)
	je	.L1426
	movl	12(%ebp), %eax
	movl	%eax, -84(%ebp)
	jmp	.L1428
.L1426:
	movl	16(%ebp), %eax
	movl	%eax, -84(%ebp)
.L1428:
	movl	-84(%ebp), %eax
	movl	%eax, -68(%ebp)
	.loc 1 4675 0
	movl	$0, reg_use_count@GOTOFF(%ebx)
	.loc 1 4676 0
	movl	-68(%ebp), %edx
	addl	$44, %edx
	movl	$0, 8(%esp)
	leal	find_used_regs@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	note_uses@PLT
	.loc 1 4677 0
	movl	-68(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_equal_equiv_note@PLT
	movl	%eax, -64(%ebp)
	.loc 1 4678 0
	cmpl	$0, -64(%ebp)
	je	.L1429
	.loc 1 4679 0
	movl	-64(%ebp), %eax
	addl	$4, %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	find_used_regs
.L1429:
	.loc 1 4681 0
	movl	$0, -44(%ebp)
	.loc 1 4682 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -60(%ebp)
	jmp	.L1431
.L1432:
	.loc 1 4684 0
	movl	-60(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -56(%ebp)
	.loc 1 4685 0
	movl	$0, -48(%ebp)
	jmp	.L1433
.L1434:
.LBB49:
	.loc 1 4687 0
	movl	-48(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	leal	reg_use_table@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 4688 0
	movl	-40(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -36(%ebp)
	.loc 1 4693 0
	movl	max_gcse_regno@GOTOFF(%ebx), %eax
	cmpl	%eax, -36(%ebp)
	jae	.L1435
	.loc 1 4696 0
	movl	-60(%ebp), %eax
	movl	8(%eax), %eax
	movl	44(%eax), %eax
	movl	-36(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	find_bypass_set
	movl	%eax, -24(%ebp)
	.loc 1 4698 0
	cmpl	$0, -24(%ebp)
	je	.L1435
	.loc 1 4702 0
	movl	-60(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L1438
	movl	-40(%ebp), %eax
	movl	(%eax), %edx
	movl	-60(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	reg_killed_on_edge
	testb	%al, %al
	jne	.L1435
.L1438:
	.loc 1 4705 0
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	pc_set@PLT
	movl	12(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 4707 0
	cmpl	$0, 12(%ebp)
	je	.L1440
	.loc 1 4708 0
	movl	12(%ebp), %eax
	movl	44(%eax), %eax
	movl	12(%eax), %edx
	movl	12(%ebp), %eax
	movl	44(%eax), %eax
	movl	4(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	simplify_replace_rtx@PLT
	movl	%eax, -20(%ebp)
.L1440:
	.loc 1 4712 0
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	movl	12(%eax), %edx
	movl	-40(%ebp), %eax
	movl	(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	simplify_replace_rtx@PLT
	movl	%eax, -16(%ebp)
	.loc 1 4720 0
	movl	global_rtl@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-16(%ebp), %eax
	jne	.L1442
	.loc 1 4722 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	24(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L1444
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -80(%ebp)
	jmp	.L1446
.L1444:
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -80(%ebp)
.L1446:
	movl	-80(%ebp), %eax
	movl	%eax, -52(%ebp)
	.loc 1 4723 0
	movl	-52(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	jne	.L1447
	movl	-52(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -76(%ebp)
	jmp	.L1449
.L1447:
	movl	$0, -76(%ebp)
.L1449:
	movl	-76(%ebp), %eax
	movl	%eax, -32(%ebp)
	jmp	.L1450
.L1442:
	.loc 1 4725 0
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	jne	.L1451
	.loc 1 4727 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	28(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 4729 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -52(%ebp)
	jmp	.L1453
.L1454:
	.loc 1 4730 0
	movl	-52(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	-32(%ebp), %eax
	jne	.L1455
	movl	-52(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L1455
	.loc 1 4732 0
	movl	$0, -32(%ebp)
	.loc 1 4733 0
	jmp	.L1450
.L1455:
	.loc 1 4729 0
	movl	-52(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -52(%ebp)
.L1453:
	cmpl	$0, -52(%ebp)
	jne	.L1454
	jmp	.L1450
.L1451:
	.loc 1 4737 0
	movl	$0, -32(%ebp)
.L1450:
	.loc 1 4741 0
	movl	-60(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 4742 0
	cmpl	$0, -32(%ebp)
	je	.L1435
	movl	-32(%ebp), %eax
	cmpl	-28(%ebp), %eax
	je	.L1435
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	redirect_edge_and_branch@PLT
	testb	%al, %al
	je	.L1435
	.loc 1 4747 0
	cmpl	$0, 12(%ebp)
	je	.L1462
.LBB50:
	.loc 1 4749 0
	movl	12(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 4751 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_insn@PLT
	movl	%eax, %edx
	movl	-60(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	insert_insn_on_edge@PLT
.L1462:
.LBE50:
	.loc 1 4754 0
	movl	gcse_file@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L1464
	.loc 1 4756 0
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	gcse_file@GOTOFF(%ebx), %edx
	movl	%eax, 12(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC33@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
	.loc 1 4758 0
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movl	gcse_file@GOTOFF(%ebx), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	print_rtl@PLT
	.loc 1 4759 0
	movl	-32(%ebp), %eax
	movl	44(%eax), %edx
	movl	-28(%ebp), %eax
	movl	44(%eax), %ecx
	movl	-60(%ebp), %eax
	movl	8(%eax), %eax
	movl	44(%eax), %eax
	movl	gcse_file@GOTOFF(%ebx), %esi
	movl	%edx, 16(%esp)
	movl	%ecx, 12(%esp)
	movl	%eax, 8(%esp)
	leal	.LC34@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	call	fprintf@PLT
.L1464:
	.loc 1 4762 0
	movl	$1, -44(%ebp)
	.loc 1 4763 0
	jmp	.L1466
.L1435:
.LBE49:
	.loc 1 4685 0
	addl	$1, -48(%ebp)
.L1433:
	movl	reg_use_count@GOTOFF(%ebx), %eax
	cmpl	%eax, -48(%ebp)
	jl	.L1434
.L1466:
	.loc 1 4682 0
	movl	-56(%ebp), %eax
	movl	%eax, -60(%ebp)
.L1431:
	cmpl	$0, -60(%ebp)
	jne	.L1432
	.loc 1 4767 0
	movl	-44(%ebp), %eax
	.loc 1 4768 0
	addl	$96, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE103:
	.size	bypass_block, .-bypass_block
	.type	bypass_conditional_jumps, @function
bypass_conditional_jumps:
.LFB104:
	.loc 1 4777 0
	pushl	%ebp
.LCFI385:
	movl	%esp, %ebp
.LCFI386:
	pushl	%ebx
.LCFI387:
	subl	$52, %esp
.LCFI388:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4785 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	52(%eax), %edx
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, %edx
	jne	.L1470
	.loc 1 4786 0
	movl	$0, -40(%ebp)
	jmp	.L1472
.L1470:
	.loc 1 4788 0
	movl	$0, -20(%ebp)
	.loc 1 4789 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	52(%eax), %eax
	movl	52(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L1473
.L1474:
	.loc 1 4793 0
	movl	-24(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L1475
	movl	-24(%ebp), %eax
	movl	16(%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1475
	.loc 1 4795 0
	movl	$0, -16(%ebp)
	.loc 1 4796 0
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 4797 0
	jmp	.L1478
.L1479:
	.loc 1 4799 0
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$42, %ax
	jne	.L1480
	.loc 1 4801 0
	cmpl	$0, -16(%ebp)
	jne	.L1475
	.loc 1 4803 0
	movl	-12(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L1475
	.loc 1 4806 0
	movl	-12(%ebp), %eax
	movl	44(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 4807 0
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L1475
	.loc 1 4808 0
	movl	-12(%ebp), %eax
	movl	%eax, -16(%ebp)
	jmp	.L1485
.L1480:
	.loc 1 4812 0
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L1486
	.loc 1 4814 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	any_condjump_p@PLT
	testl	%eax, %eax
	je	.L1475
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	onlyjump_p@PLT
	testl	%eax, %eax
	je	.L1475
	.loc 1 4815 0
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	bypass_block
	orl	%eax, -20(%ebp)
	.loc 1 4816 0
	jmp	.L1475
.L1486:
	.loc 1 4818 0
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	je	.L1475
.L1485:
	.loc 1 4798 0
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -12(%ebp)
.L1478:
	.loc 1 4797 0
	cmpl	$0, -12(%ebp)
	je	.L1475
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	20(%eax), %eax
	cmpl	-12(%ebp), %eax
	jne	.L1479
.L1475:
	.loc 1 4789 0
	movl	-24(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -24(%ebp)
.L1473:
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, -24(%ebp)
	jne	.L1474
	.loc 1 4825 0
	cmpl	$0, -20(%ebp)
	je	.L1493
	.loc 1 4826 0
	call	commit_edge_insertions@PLT
.L1493:
	.loc 1 4828 0
	movl	-20(%ebp), %eax
	movl	%eax, -40(%ebp)
.L1472:
	movl	-40(%ebp), %eax
	.loc 1 4829 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE104:
	.size	bypass_conditional_jumps, .-bypass_conditional_jumps
	.type	alloc_pre_mem, @function
alloc_pre_mem:
.LFB105:
	.loc 1 4872 0
	pushl	%ebp
.LCFI389:
	movl	%esp, %ebp
.LCFI390:
	pushl	%ebx
.LCFI391:
	subl	$20, %esp
.LCFI392:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4873 0
	movl	12(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	sbitmap_vector_alloc@PLT
	movl	%eax, transp@GOTOFF(%ebx)
	.loc 1 4874 0
	movl	12(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	sbitmap_vector_alloc@PLT
	movl	%eax, comp@GOTOFF(%ebx)
	.loc 1 4875 0
	movl	12(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	sbitmap_vector_alloc@PLT
	movl	%eax, antloc@GOTOFF(%ebx)
	.loc 1 4877 0
	movl	$0, pre_optimal@GOTOFF(%ebx)
	.loc 1 4878 0
	movl	$0, pre_redundant@GOTOFF(%ebx)
	.loc 1 4879 0
	movl	$0, pre_insert_map@GOTOFF(%ebx)
	.loc 1 4880 0
	movl	$0, pre_delete_map@GOTOFF(%ebx)
	.loc 1 4881 0
	movl	$0, ae_in@GOTOFF(%ebx)
	.loc 1 4882 0
	movl	$0, ae_out@GOTOFF(%ebx)
	.loc 1 4883 0
	movl	12(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	sbitmap_vector_alloc@PLT
	movl	%eax, ae_kill@GOTOFF(%ebx)
	.loc 1 4886 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE105:
	.size	alloc_pre_mem, .-alloc_pre_mem
	.type	free_pre_mem, @function
free_pre_mem:
.LFB106:
	.loc 1 4892 0
	pushl	%ebp
.LCFI393:
	movl	%esp, %ebp
.LCFI394:
	pushl	%ebx
.LCFI395:
	subl	$4, %esp
.LCFI396:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4893 0
	movl	transp@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 4894 0
	movl	comp@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 4898 0
	movl	pre_optimal@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L1499
	.loc 1 4899 0
	movl	pre_optimal@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	free@PLT
.L1499:
	.loc 1 4900 0
	movl	pre_redundant@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L1501
	.loc 1 4901 0
	movl	pre_redundant@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	free@PLT
.L1501:
	.loc 1 4902 0
	movl	pre_insert_map@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L1503
	.loc 1 4903 0
	movl	pre_insert_map@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	free@PLT
.L1503:
	.loc 1 4904 0
	movl	pre_delete_map@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L1505
	.loc 1 4905 0
	movl	pre_delete_map@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	free@PLT
.L1505:
	.loc 1 4906 0
	movl	ae_in@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L1507
	.loc 1 4907 0
	movl	ae_in@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	free@PLT
.L1507:
	.loc 1 4908 0
	movl	ae_out@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L1509
	.loc 1 4909 0
	movl	ae_out@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	free@PLT
.L1509:
	.loc 1 4911 0
	movl	$0, comp@GOTOFF(%ebx)
	movl	comp@GOTOFF(%ebx), %eax
	movl	%eax, transp@GOTOFF(%ebx)
	.loc 1 4912 0
	movl	$0, pre_delete_map@GOTOFF(%ebx)
	movl	pre_delete_map@GOTOFF(%ebx), %eax
	movl	%eax, pre_insert_map@GOTOFF(%ebx)
	movl	pre_insert_map@GOTOFF(%ebx), %eax
	movl	%eax, pre_redundant@GOTOFF(%ebx)
	movl	pre_redundant@GOTOFF(%ebx), %eax
	movl	%eax, pre_optimal@GOTOFF(%ebx)
	.loc 1 4913 0
	movl	$0, ae_out@GOTOFF(%ebx)
	movl	ae_out@GOTOFF(%ebx), %eax
	movl	%eax, ae_in@GOTOFF(%ebx)
	.loc 1 4914 0
	addl	$4, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE106:
	.size	free_pre_mem, .-free_pre_mem
	.type	compute_pre_data, @function
compute_pre_data:
.LFB107:
	.loc 1 4920 0
	pushl	%ebp
.LCFI397:
	movl	%esp, %ebp
.LCFI398:
	pushl	%edi
.LCFI399:
	pushl	%esi
.LCFI400:
	pushl	%ebx
.LCFI401:
	subl	$92, %esp
.LCFI402:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4925 0
	movl	antloc@GOTOFF(%ebx), %edx
	movl	comp@GOTOFF(%ebx), %ecx
	movl	transp@GOTOFF(%ebx), %esi
	leal	expr_hash_table@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%esi, (%esp)
	call	compute_local_properties
	.loc 1 4926 0
	movl	last_basic_block@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	ae_kill@GOTOFF(%ebx), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	sbitmap_vector_zero@PLT
	.loc 1 4929 0
	movl	8+expr_hash_table@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	sbitmap_alloc@PLT
	movl	%eax, -36(%ebp)
	.loc 1 4930 0
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	sbitmap_zero@PLT
	.loc 1 4931 0
	movl	$0, -28(%ebp)
	jmp	.L1513
.L1514:
.LBB51:
	.loc 1 4934 0
	movl	expr_hash_table@GOTOFF(%ebx), %edx
	movl	-28(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L1515
.L1516:
	.loc 1 4935 0
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	may_trap_p@PLT
	testl	%eax, %eax
	je	.L1517
	.loc 1 4936 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	shrl	$6, %eax
	movl	%eax, -68(%ebp)
	movl	%eax, %edx
	movl	-36(%ebp), %eax
	movl	12(%eax,%edx,8), %esi
	movl	16(%eax,%edx,8), %edi
	movl	%esi, -64(%ebp)
	movl	%edi, -60(%ebp)
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L1530
	movl	%esi, %edi
	xorl	%esi, %esi
.L1530:
	movl	-64(%ebp), %eax
	orl	%esi, %eax
	movl	-60(%ebp), %edx
	orl	%edi, %edx
	movl	-36(%ebp), %ecx
	movl	-68(%ebp), %edi
	movl	%eax, 12(%ecx,%edi,8)
	movl	%edx, 16(%ecx,%edi,8)
.L1517:
	.loc 1 4934 0
	movl	-24(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -24(%ebp)
.L1515:
	cmpl	$0, -24(%ebp)
	jne	.L1516
.LBE51:
	.loc 1 4931 0
	addl	$1, -28(%ebp)
.L1513:
	movl	4+expr_hash_table@GOTOFF(%ebx), %eax
	cmpl	-28(%ebp), %eax
	ja	.L1514
	.loc 1 4945 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	52(%eax), %eax
	movl	%eax, -32(%ebp)
	jmp	.L1521
.L1522:
.LBB52:
	.loc 1 4953 0
	movl	-32(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -20(%ebp)
	jmp	.L1523
.L1524:
	.loc 1 4954 0
	movl	-20(%ebp), %eax
	movl	24(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L1525
	.loc 1 4956 0
	movl	-32(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	antloc@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %ecx
	movl	-32(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	antloc@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	movl	-36(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	sbitmap_difference@PLT
	.loc 1 4957 0
	movl	-32(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	transp@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %ecx
	movl	-32(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	transp@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	movl	-36(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	sbitmap_difference@PLT
	.loc 1 4958 0
	jmp	.L1527
.L1525:
	.loc 1 4953 0
	movl	-20(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
.L1523:
	cmpl	$0, -20(%ebp)
	jne	.L1524
.L1527:
	.loc 1 4961 0
	movl	-32(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	comp@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %esi
	movl	-32(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	transp@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %ecx
	movl	-32(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	ae_kill@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%esi, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	sbitmap_a_or_b@PLT
	.loc 1 4962 0
	movl	-32(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	ae_kill@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %ecx
	movl	-32(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	ae_kill@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	sbitmap_not@PLT
.LBE52:
	.loc 1 4945 0
	movl	-32(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -32(%ebp)
.L1521:
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, -32(%ebp)
	jne	.L1522
	.loc 1 4965 0
	movl	ae_kill@GOTOFF(%ebx), %esi
	movl	antloc@GOTOFF(%ebx), %edi
	movl	comp@GOTOFF(%ebx), %eax
	movl	%eax, -56(%ebp)
	movl	transp@GOTOFF(%ebx), %eax
	movl	%eax, -52(%ebp)
	movl	8+expr_hash_table@GOTOFF(%ebx), %eax
	movl	%eax, %edx
	movl	gcse_file@GOTOFF(%ebx), %ecx
	leal	pre_delete_map@GOTOFF(%ebx), %eax
	movl	%eax, 28(%esp)
	leal	pre_insert_map@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	movl	%esi, 20(%esp)
	movl	%edi, 16(%esp)
	movl	-56(%ebp), %esi
	movl	%esi, 12(%esp)
	movl	-52(%ebp), %edi
	movl	%edi, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	pre_edge_lcm@PLT
	movl	%eax, edge_list@GOTOFF(%ebx)
	.loc 1 4967 0
	movl	antloc@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 4968 0
	movl	$0, antloc@GOTOFF(%ebx)
	.loc 1 4969 0
	movl	ae_kill@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 4970 0
	movl	$0, ae_kill@GOTOFF(%ebx)
	.loc 1 4971 0
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 4972 0
	addl	$92, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE107:
	.size	compute_pre_data, .-compute_pre_data
	.type	pre_expr_reaches_here_p_work, @function
pre_expr_reaches_here_p_work:
.LFB108:
	.loc 1 4995 0
	pushl	%ebp
.LCFI403:
	movl	%esp, %ebp
.LCFI404:
	pushl	%edi
.LCFI405:
	pushl	%esi
.LCFI406:
	pushl	%ebx
.LCFI407:
	subl	$36, %esp
.LCFI408:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4998 0
	movl	16(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -20(%ebp)
	jmp	.L1532
.L1533:
.LBB53:
	.loc 1 5000 0
	movl	-20(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 5002 0
	movl	-20(%ebp), %eax
	movl	8(%eax), %edx
	movl	entry_exit_blocks@GOT(%ebx), %eax
	cmpl	%eax, %edx
	je	.L1534
	movl	-16(%ebp), %eax
	movl	44(%eax), %eax
	addl	20(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L1534
	.loc 1 5008 0
	movl	-16(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	comp@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	shrl	$6, %eax
	movl	12(%edx,%eax,8), %esi
	movl	16(%edx,%eax,8), %edi
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	shrdl	%edi, %esi
	shrl	%cl, %edi
	testb	$32, %cl
	je	.L1548
	movl	%edi, %esi
	xorl	%edi, %edi
.L1548:
	movl	%esi, %eax
	andl	$1, %eax
	movl	%edi, %edx
	andl	$0, %edx
	testl	%eax, %eax
	je	.L1537
	.loc 1 5013 0
	movl	8(%ebp), %eax
	cmpl	-16(%ebp), %eax
	jne	.L1539
	.loc 1 5014 0
	movl	$1, -32(%ebp)
	jmp	.L1541
.L1539:
	.loc 1 5016 0
	movl	-16(%ebp), %eax
	movl	44(%eax), %eax
	addl	20(%ebp), %eax
	movb	$1, (%eax)
	jmp	.L1534
.L1537:
	.loc 1 5019 0
	movl	-16(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	transp@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	shrl	$6, %eax
	movl	12(%edx,%eax,8), %esi
	movl	16(%edx,%eax,8), %edi
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	shrdl	%edi, %esi
	shrl	%cl, %edi
	testb	$32, %cl
	je	.L1547
	movl	%edi, %esi
	xorl	%edi, %edi
.L1547:
	movl	%esi, %eax
	andl	$1, %eax
	movl	%edi, %edx
	andl	$0, %edx
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L1542
	.loc 1 5020 0
	movl	-16(%ebp), %eax
	movl	44(%eax), %eax
	addl	20(%ebp), %eax
	movb	$1, (%eax)
	jmp	.L1534
.L1542:
	.loc 1 5025 0
	movl	-16(%ebp), %eax
	movl	44(%eax), %eax
	addl	20(%ebp), %eax
	movb	$1, (%eax)
	.loc 1 5026 0
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	pre_expr_reaches_here_p_work
	testl	%eax, %eax
	je	.L1534
	.loc 1 5027 0
	movl	$1, -32(%ebp)
	jmp	.L1541
.L1534:
.LBE53:
	.loc 1 4998 0
	movl	-20(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
.L1532:
	cmpl	$0, -20(%ebp)
	jne	.L1533
	.loc 1 5032 0
	movl	$0, -32(%ebp)
.L1541:
	movl	-32(%ebp), %eax
	.loc 1 5033 0
	addl	$36, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE108:
	.size	pre_expr_reaches_here_p_work, .-pre_expr_reaches_here_p_work
	.type	pre_expr_reaches_here_p, @function
pre_expr_reaches_here_p:
.LFB109:
	.loc 1 5043 0
	pushl	%ebp
.LCFI409:
	movl	%esp, %ebp
.LCFI410:
	pushl	%ebx
.LCFI411:
	subl	$36, %esp
.LCFI412:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 5045 0
	movl	last_basic_block@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	xcalloc@PLT
	movl	%eax, -8(%ebp)
	.loc 1 5047 0
	movl	-8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	pre_expr_reaches_here_p_work
	movl	%eax, -12(%ebp)
	.loc 1 5049 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 5050 0
	movl	-12(%ebp), %eax
	.loc 1 5051 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE109:
	.size	pre_expr_reaches_here_p, .-pre_expr_reaches_here_p
	.section	.rodata
	.type	__FUNCTION__.17066, @object
	.size	__FUNCTION__.17066, 20
__FUNCTION__.17066:
	.string	"process_insert_insn"
	.text
	.type	process_insert_insn, @function
process_insert_insn:
.LFB110:
	.loc 1 5061 0
	pushl	%ebp
.LCFI413:
	movl	%esp, %ebp
.LCFI414:
	pushl	%ebx
.LCFI415:
	subl	$36, %esp
.LCFI416:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 5062 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 5063 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	copy_rtx@PLT
	movl	%eax, -12(%ebp)
	.loc 1 5066 0
	call	start_sequence@PLT
	.loc 1 5070 0
	movl	-16(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	general_operand@PLT
	testl	%eax, %eax
	je	.L1552
	.loc 1 5071 0
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_move_insn@PLT
	jmp	.L1554
.L1552:
	.loc 1 5076 0
	movl	-12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$57, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, (%esp)
	call	emit_insn@PLT
	movl	%eax, (%esp)
	call	insn_invalid_p@PLT
	testl	%eax, %eax
	je	.L1554
	.loc 1 5077 0
	leal	__FUNCTION__.17066@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$5077, 4(%esp)
	leal	.LC7@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1554:
	.loc 1 5079 0
	call	get_insns@PLT
	movl	%eax, -8(%ebp)
	.loc 1 5080 0
	call	end_sequence@PLT
	.loc 1 5082 0
	movl	-8(%ebp), %eax
	.loc 1 5083 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE110:
	.size	process_insert_insn, .-process_insert_insn
	.section	.rodata
	.type	__FUNCTION__.17094, @object
	.size	__FUNCTION__.17094, 19
__FUNCTION__.17094:
	.string	"insert_insn_end_bb"
	.align 4
.LC35:
	.string	"PRE/HOIST: end of bb %d, insn %d, "
	.align 4
.LC36:
	.string	"copying expression %d to reg %d\n"
	.text
	.type	insert_insn_end_bb, @function
insert_insn_end_bb:
.LFB111:
	.loc 1 5098 0
	pushl	%ebp
.LCFI417:
	movl	%esp, %ebp
.LCFI418:
	pushl	%edi
.LCFI419:
	pushl	%esi
.LCFI420:
	pushl	%ebx
.LCFI421:
	subl	$60, %esp
.LCFI422:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 5099 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -36(%ebp)
	.loc 1 5101 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 5102 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 5105 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	process_insert_insn
	movl	%eax, -20(%ebp)
	.loc 1 5106 0
	cmpl	$0, -20(%ebp)
	je	.L1558
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	je	.L1560
.L1558:
	.loc 1 5107 0
	leal	__FUNCTION__.17094@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$5107, 4(%esp)
	leal	.LC7@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1560:
	.loc 1 5109 0
	movl	-20(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 5110 0
	jmp	.L1561
.L1562:
	.loc 1 5111 0
	movl	-16(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -16(%ebp)
.L1561:
	.loc 1 5110 0
	movl	-16(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	jne	.L1562
	.loc 1 5117 0
	movl	-36(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	je	.L1564
	movl	-36(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$42, %ax
	jne	.L1566
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	jne	.L1564
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	24(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L1566
.L1564:
	.loc 1 5127 0
	movl	-36(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$42, %ax
	jne	.L1569
	cmpl	$0, 16(%ebp)
	je	.L1569
	movl	12(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	antloc@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	shrl	$6, %eax
	movl	12(%edx,%eax,8), %esi
	movl	16(%edx,%eax,8), %edi
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	shrdl	%edi, %esi
	shrl	%cl, %edi
	testb	$32, %cl
	je	.L1601
	movl	%edi, %esi
	xorl	%edi, %edi
.L1601:
	movl	%esi, %eax
	andl	$1, %eax
	movl	%edi, %edx
	andl	$0, %edx
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L1569
	movl	12(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	transp@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	shrl	$6, %eax
	movl	12(%edx,%eax,8), %esi
	movl	16(%edx,%eax,8), %edi
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	shrdl	%edi, %esi
	shrl	%cl, %edi
	testb	$32, %cl
	je	.L1600
	movl	%edi, %esi
	xorl	%edi, %edi
.L1600:
	movl	%esi, %eax
	andl	$1, %eax
	movl	%edi, %edx
	andl	$0, %edx
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L1569
	.loc 1 5130 0
	leal	__FUNCTION__.17094@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$5130, 4(%esp)
	leal	.LC7@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1569:
	.loc 1 5135 0
	movl	-36(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$54, %ax
	je	.L1574
	movl	-36(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$55, %ax
	jne	.L1576
.L1574:
	.loc 1 5137 0
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	prev_real_insn@PLT
	movl	%eax, -36(%ebp)
.L1576:
	.loc 1 5155 0
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_insn_before@PLT
	movl	%eax, -32(%ebp)
	.loc 1 5117 0
	jmp	.L1577
.L1566:
	.loc 1 5160 0
	movl	-36(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$44, %ax
	jne	.L1578
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	jne	.L1580
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	24(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L1578
.L1580:
	.loc 1 5172 0
	cmpl	$0, 16(%ebp)
	je	.L1582
	movl	12(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	antloc@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	shrl	$6, %eax
	movl	12(%edx,%eax,8), %esi
	movl	16(%edx,%eax,8), %edi
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	shrdl	%edi, %esi
	shrl	%cl, %edi
	testb	$32, %cl
	je	.L1599
	movl	%edi, %esi
	xorl	%edi, %edi
.L1599:
	movl	%esi, %eax
	andl	$1, %eax
	movl	%edi, %edx
	andl	$0, %edx
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L1582
	movl	12(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	transp@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	shrl	$6, %eax
	movl	12(%edx,%eax,8), %esi
	movl	16(%edx,%eax,8), %edi
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	shrdl	%edi, %esi
	shrl	%cl, %edi
	testb	$32, %cl
	je	.L1598
	movl	%edi, %esi
	xorl	%edi, %edi
.L1598:
	movl	%esi, %eax
	andl	$1, %eax
	movl	%edi, %edx
	andl	$0, %edx
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L1582
	.loc 1 5175 0
	leal	__FUNCTION__.17094@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$5175, 4(%esp)
	leal	.LC7@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1582:
	.loc 1 5180 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	find_first_parameter_load@PLT
	movl	%eax, -36(%ebp)
	.loc 1 5190 0
	jmp	.L1586
.L1587:
	.loc 1 5192 0
	movl	-36(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -36(%ebp)
.L1586:
	.loc 1 5190 0
	movl	-36(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$46, %ax
	je	.L1587
	movl	-36(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	jne	.L1589
	movl	-36(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	$-83, %eax
	je	.L1587
.L1589:
	.loc 1 5194 0
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_insn_before@PLT
	movl	%eax, -32(%ebp)
	.loc 1 5160 0
	jmp	.L1577
.L1578:
	.loc 1 5197 0
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_insn_after@PLT
	movl	%eax, -32(%ebp)
.L1577:
	.loc 1 5201 0
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L1591
	.loc 1 5203 0
	movl	-20(%ebp), %eax
	movl	44(%eax), %edx
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	add_label_notes
	.loc 1 5204 0
	movl	-20(%ebp), %eax
	movl	44(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	record_set_info@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	note_stores@PLT
.L1591:
	.loc 1 5206 0
	movl	-20(%ebp), %eax
	cmpl	-16(%ebp), %eax
	je	.L1593
	.loc 1 5208 0
	movl	-20(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 5209 0
	jmp	.L1577
.L1593:
	.loc 1 5211 0
	movl	gcse_create_count@GOTOFF(%ebx), %eax
	addl	$1, %eax
	movl	%eax, gcse_create_count@GOTOFF(%ebx)
	.loc 1 5213 0
	movl	gcse_file@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L1597
	.loc 1 5215 0
	movl	-32(%ebp), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	44(%eax), %eax
	movl	gcse_file@GOTOFF(%ebx), %ecx
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	leal	.LC35@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
	.loc 1 5217 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	gcse_file@GOTOFF(%ebx), %ecx
	movl	-24(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	leal	.LC36@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
.L1597:
	.loc 1 5220 0
	addl	$60, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE111:
	.size	insert_insn_end_bb, .-insert_insn_end_bb
	.section	.rodata
.LC37:
	.string	"PRE/HOIST: edge (%d,%d), "
.LC38:
	.string	"copy expression %d\n"
	.text
	.type	pre_edge_insert, @function
pre_edge_insert:
.LFB112:
	.loc 1 5229 0
	pushl	%ebp
.LCFI423:
	movl	%esp, %ebp
.LCFI424:
	pushl	%edi
.LCFI425:
	pushl	%esi
.LCFI426:
	pushl	%ebx
.LCFI427:
	subl	$108, %esp
.LCFI428:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 5230 0
	movl	$0, -48(%ebp)
	.loc 1 5236 0
	movl	pre_insert_map@GOTOFF(%ebx), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -52(%ebp)
	.loc 1 5237 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -56(%ebp)
	.loc 1 5238 0
	movl	8+expr_hash_table@GOTOFF(%ebx), %eax
	movl	-56(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	sbitmap_vector_alloc@PLT
	movl	%eax, -44(%ebp)
	.loc 1 5239 0
	movl	-56(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	sbitmap_vector_zero@PLT
	.loc 1 5241 0
	movl	$0, -68(%ebp)
	jmp	.L1603
.L1604:
.LBB54:
	.loc 1 5244 0
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	-68(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	8(%eax), %eax
	movl	%eax, -36(%ebp)
	.loc 1 5246 0
	movl	$0, -40(%ebp)
	movl	-40(%ebp), %eax
	movl	%eax, -64(%ebp)
	jmp	.L1605
.L1606:
.LBB55:
	.loc 1 5248 0
	movl	-68(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	pre_insert_map@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	movl	-64(%ebp), %eax
	leal	12(%edx,%eax,8), %edx
	movl	(%edx), %eax
	movl	4(%edx), %edx
	movl	%eax, -80(%ebp)
	movl	%edx, -76(%ebp)
	.loc 1 5250 0
	movl	-40(%ebp), %eax
	movl	%eax, -60(%ebp)
	jmp	.L1607
.L1608:
	.loc 1 5251 0
	movl	-80(%ebp), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L1609
	movl	-60(%ebp), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L1609
.LBB56:
	.loc 1 5253 0
	movl	-60(%ebp), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 5257 0
	movl	-32(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L1612
.L1613:
	.loc 1 5259 0
	movl	-28(%ebp), %eax
	movzbl	8(%eax), %eax
	testb	%al, %al
	je	.L1614
	.loc 1 5264 0
	movl	-68(%ebp), %eax
	sall	$2, %eax
	addl	-44(%ebp), %eax
	movl	(%eax), %edx
	movl	-60(%ebp), %eax
	shrl	$6, %eax
	leal	12(%edx,%eax,8), %edx
	movl	(%edx), %eax
	movl	4(%edx), %edx
	movl	-60(%ebp), %ecx
	andl	$63, %ecx
	movl	%eax, %esi
	movl	%edx, %edi
	shrdl	%edi, %esi
	shrl	%cl, %edi
	testb	$32, %cl
	je	.L1628
	movl	%edi, %esi
	xorl	%edi, %edi
.L1628:
	movl	%esi, %eax
	andl	$1, %eax
	movl	%edi, %edx
	andl	$0, %edx
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L1614
.LBB57:
	.loc 1 5267 0
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	-68(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 5276 0
	movl	-20(%ebp), %eax
	movl	24(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L1617
	.loc 1 5277 0
	movl	-60(%ebp), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %edx
	movl	$0, 8(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	insert_insn_end_bb
	jmp	.L1619
.L1617:
	.loc 1 5280 0
	movl	-60(%ebp), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	process_insert_insn
	movl	%eax, -24(%ebp)
	.loc 1 5281 0
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	insert_insn_on_edge@PLT
.L1619:
	.loc 1 5284 0
	movl	gcse_file@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L1620
	.loc 1 5286 0
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	-68(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movl	44(%eax), %edx
	movl	-36(%ebp), %eax
	movl	44(%eax), %eax
	movl	gcse_file@GOTOFF(%ebx), %ecx
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	leal	.LC37@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
	.loc 1 5289 0
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movl	gcse_file@GOTOFF(%ebx), %edx
	movl	%eax, 8(%esp)
	leal	.LC38@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
.L1620:
	.loc 1 5293 0
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	update_ld_motion_stores
	.loc 1 5294 0
	movl	-68(%ebp), %eax
	sall	$2, %eax
	addl	-44(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -96(%ebp)
	movl	-60(%ebp), %eax
	movl	%eax, %ecx
	shrl	$6, %ecx
	movl	%ecx, -92(%ebp)
	movl	-68(%ebp), %eax
	sall	$2, %eax
	addl	-44(%ebp), %eax
	movl	(%eax), %edx
	movl	%ecx, %eax
	movl	12(%edx,%eax,8), %esi
	movl	16(%edx,%eax,8), %edi
	movl	%esi, -88(%ebp)
	movl	%edi, -84(%ebp)
	movl	-60(%ebp), %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L1627
	movl	%esi, %edi
	xorl	%esi, %esi
.L1627:
	movl	-88(%ebp), %eax
	orl	%esi, %eax
	movl	-84(%ebp), %edx
	orl	%edi, %edx
	movl	-92(%ebp), %edi
	movl	-96(%ebp), %ecx
	movl	%eax, 12(%ecx,%edi,8)
	movl	%edx, 16(%ecx,%edi,8)
	.loc 1 5295 0
	movl	$1, -48(%ebp)
	.loc 1 5296 0
	movl	gcse_create_count@GOTOFF(%ebx), %eax
	addl	$1, %eax
	movl	%eax, gcse_create_count@GOTOFF(%ebx)
.L1614:
.LBE57:
	.loc 1 5257 0
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
.L1612:
	cmpl	$0, -28(%ebp)
	jne	.L1613
.L1609:
.LBE56:
	.loc 1 5250 0
	addl	$1, -60(%ebp)
	movl	-80(%ebp), %eax
	movl	-76(%ebp), %edx
	shrdl	$1, %edx, %eax
	shrl	%edx
	movl	%eax, -80(%ebp)
	movl	%edx, -76(%ebp)
.L1607:
	movl	-80(%ebp), %eax
	orl	-76(%ebp), %eax
	testl	%eax, %eax
	je	.L1622
	movl	8+expr_hash_table@GOTOFF(%ebx), %eax
	cmpl	-60(%ebp), %eax
	jg	.L1608
.L1622:
.LBE55:
	.loc 1 5246 0
	addl	$1, -64(%ebp)
	movl	-40(%ebp), %eax
	addl	$64, %eax
	movl	%eax, -40(%ebp)
.L1605:
	movl	-64(%ebp), %eax
	cmpl	-52(%ebp), %eax
	jl	.L1606
.LBE54:
	.loc 1 5241 0
	addl	$1, -68(%ebp)
.L1603:
	movl	-68(%ebp), %eax
	cmpl	-56(%ebp), %eax
	jl	.L1604
	.loc 1 5303 0
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 5304 0
	movl	-48(%ebp), %eax
	.loc 1 5305 0
	addl	$108, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE112:
	.size	pre_edge_insert, .-pre_edge_insert
	.section	.rodata
	.type	__FUNCTION__.17402, @object
	.size	__FUNCTION__.17402, 21
__FUNCTION__.17402:
	.string	"pre_insert_copy_insn"
	.align 4
.LC39:
	.string	"PRE: bb %d, insn %d, copy expression %d in insn %d to reg %d\n"
	.text
	.type	pre_insert_copy_insn, @function
pre_insert_copy_insn:
.LFB113:
	.loc 1 5313 0
	pushl	%ebp
.LCFI429:
	movl	%esp, %ebp
.LCFI430:
	pushl	%edi
.LCFI431:
	pushl	%esi
.LCFI432:
	pushl	%ebx
.LCFI433:
	subl	$76, %esp
.LCFI434:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 5314 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 5315 0
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 5316 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 5317 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L1630
	movl	12(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L1632
	movl	12(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -48(%ebp)
	jmp	.L1634
.L1632:
	movl	12(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	single_set_2@PLT
	movl	%eax, -48(%ebp)
.L1634:
	movl	-48(%ebp), %eax
	movl	%eax, -52(%ebp)
	jmp	.L1635
.L1630:
	movl	$0, -52(%ebp)
.L1635:
	movl	-52(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 5320 0
	cmpl	$0, -20(%ebp)
	jne	.L1636
	.loc 1 5321 0
	leal	__FUNCTION__.17402@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$5321, 4(%esp)
	leal	.LC7@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1636:
	.loc 1 5323 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_move_insn@PLT
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	emit_insn_after@PLT
	movl	%eax, -16(%ebp)
	.loc 1 5326 0
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	record_one_set
	.loc 1 5328 0
	movl	gcse_create_count@GOTOFF(%ebx), %eax
	addl	$1, %eax
	movl	%eax, gcse_create_count@GOTOFF(%ebx)
	.loc 1 5330 0
	movl	gcse_file@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L1638
	.loc 1 5331 0
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	-16(%ebp), %eax
	movl	4(%eax), %ecx
	movl	12(%ebp), %eax
	movl	28(%eax), %eax
	movl	44(%eax), %esi
	movl	gcse_file@GOTOFF(%ebx), %edi
	movl	-28(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	%edx, 20(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	%ecx, 12(%esp)
	movl	%esi, 8(%esp)
	leal	.LC39@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edi, (%esp)
	call	fprintf@PLT
.L1638:
	.loc 1 5335 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	update_ld_motion_stores
	.loc 1 5336 0
	addl	$76, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE113:
	.size	pre_insert_copy_insn, .-pre_insert_copy_insn
	.type	pre_insert_copies, @function
pre_insert_copies:
.LFB114:
	.loc 1 5343 0
	pushl	%ebp
.LCFI435:
	movl	%esp, %ebp
.LCFI436:
	pushl	%edi
.LCFI437:
	pushl	%esi
.LCFI438:
	pushl	%ebx
.LCFI439:
	subl	$44, %esp
.LCFI440:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 5355 0
	movl	$0, -32(%ebp)
	jmp	.L1642
.L1643:
	.loc 1 5356 0
	movl	expr_hash_table@GOTOFF(%ebx), %edx
	movl	-32(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L1644
.L1645:
	.loc 1 5363 0
	movl	-28(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L1646
	.loc 1 5366 0
	movl	-28(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L1648
.L1649:
	.loc 1 5368 0
	movl	-24(%ebp), %eax
	movzbl	8(%eax), %eax
	testb	%al, %al
	je	.L1650
	.loc 1 5371 0
	movl	-28(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -20(%ebp)
	jmp	.L1652
.L1653:
.LBB58:
	.loc 1 5373 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 5376 0
	movl	-20(%ebp), %eax
	movzbl	9(%eax), %eax
	testb	%al, %al
	jne	.L1654
	.loc 1 5380 0
	movl	pre_redundant_insns@GOTOFF(%ebx), %ecx
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	uid_cuid@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	shrl	$6, %eax
	movl	12(%ecx,%eax,8), %esi
	movl	16(%ecx,%eax,8), %edi
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	uid_cuid@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	shrdl	%edi, %esi
	shrl	%cl, %edi
	testb	$32, %cl
	je	.L1661
	movl	%edi, %esi
	xorl	%edi, %edi
.L1661:
	movl	%esi, %eax
	andl	$1, %eax
	movl	%edi, %edx
	andl	$0, %edx
	testl	%eax, %eax
	jne	.L1654
	.loc 1 5384 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	28(%eax), %edx
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	28(%eax), %ecx
	movl	%edx, 8(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	pre_expr_reaches_here_p
	testl	%eax, %eax
	je	.L1654
	.loc 1 5390 0
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	pre_insert_copy_insn
	.loc 1 5391 0
	movl	-20(%ebp), %eax
	movb	$1, 9(%eax)
.L1654:
.LBE58:
	.loc 1 5371 0
	movl	-20(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
.L1652:
	cmpl	$0, -20(%ebp)
	jne	.L1653
.L1650:
	.loc 1 5366 0
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
.L1648:
	cmpl	$0, -24(%ebp)
	jne	.L1649
.L1646:
	.loc 1 5356 0
	movl	-28(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -28(%ebp)
.L1644:
	cmpl	$0, -28(%ebp)
	jne	.L1645
	.loc 1 5355 0
	addl	$1, -32(%ebp)
.L1642:
	movl	4+expr_hash_table@GOTOFF(%ebx), %eax
	cmpl	-32(%ebp), %eax
	ja	.L1643
	.loc 1 5395 0
	addl	$44, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE114:
	.size	pre_insert_copies, .-pre_insert_copies
	.type	gcse_emit_move_after, @function
gcse_emit_move_after:
.LFB115:
	.loc 1 5402 0
	pushl	%ebp
.LCFI441:
	movl	%esp, %ebp
.LCFI442:
	pushl	%ebx
.LCFI443:
	subl	$68, %esp
.LCFI444:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 5404 0
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L1663
	movl	16(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L1665
	movl	16(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -52(%ebp)
	jmp	.L1667
.L1665:
	movl	16(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	single_set_2@PLT
	movl	%eax, -52(%ebp)
.L1667:
	movl	-52(%ebp), %eax
	movl	%eax, -56(%ebp)
	jmp	.L1668
.L1663:
	movl	$0, -56(%ebp)
.L1668:
	movl	-56(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 5411 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_move_insn@PLT
	movl	%eax, %edx
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	emit_insn_after@PLT
	movl	%eax, -24(%ebp)
	.loc 1 5414 0
	movl	-24(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L1669
	movl	-24(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L1671
	movl	-24(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -44(%ebp)
	jmp	.L1673
.L1671:
	movl	-24(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	single_set_2@PLT
	movl	%eax, -44(%ebp)
.L1673:
	movl	-44(%ebp), %eax
	movl	%eax, -48(%ebp)
	jmp	.L1674
.L1669:
	movl	$0, -48(%ebp)
.L1674:
	movl	-48(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 5415 0
	cmpl	$0, -16(%ebp)
	je	.L1675
	movl	-16(%ebp), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	jne	.L1677
.L1675:
	.loc 1 5416 0
	movl	-24(%ebp), %eax
	movl	%eax, -40(%ebp)
	jmp	.L1678
.L1677:
	.loc 1 5417 0
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_equal_equiv_note@PLT
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	je	.L1679
	.loc 1 5418 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L1681
.L1679:
	.loc 1 5420 0
	movl	-20(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -8(%ebp)
.L1681:
	.loc 1 5422 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_insn_1@PLT
	movl	%eax, 8(%esp)
	movl	$4, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	set_unique_reg_note@PLT
	.loc 1 5424 0
	movl	-24(%ebp), %eax
	movl	%eax, -40(%ebp)
.L1678:
	movl	-40(%ebp), %eax
	.loc 1 5425 0
	addl	$68, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE115:
	.size	gcse_emit_move_after, .-gcse_emit_move_after
	.section	.rodata
	.type	__FUNCTION__.17560, @object
	.size	__FUNCTION__.17560, 11
__FUNCTION__.17560:
	.string	"pre_delete"
	.align 4
.LC40:
	.string	"PRE: redundant insn %d (expression %d) in "
.LC41:
	.string	"bb %d, reaching reg is %d\n"
	.text
	.type	pre_delete, @function
pre_delete:
.LFB116:
	.loc 1 5436 0
	pushl	%ebp
.LCFI445:
	movl	%esp, %ebp
.LCFI446:
	pushl	%edi
.LCFI447:
	pushl	%esi
.LCFI448:
	pushl	%ebx
.LCFI449:
	subl	$76, %esp
.LCFI450:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 5442 0
	movl	$0, -44(%ebp)
	.loc 1 5443 0
	movl	$0, -48(%ebp)
	jmp	.L1684
.L1685:
	.loc 1 5444 0
	movl	expr_hash_table@GOTOFF(%ebx), %edx
	movl	-48(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -40(%ebp)
	jmp	.L1686
.L1687:
.LBB59:
	.loc 1 5446 0
	movl	-40(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 5451 0
	movl	-40(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -36(%ebp)
	jmp	.L1688
.L1689:
.LBB60:
	.loc 1 5453 0
	movl	-36(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 5455 0
	movl	-28(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 5457 0
	movl	-20(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	pre_delete_map@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	movl	-32(%ebp), %eax
	shrl	$6, %eax
	leal	12(%edx,%eax,8), %edx
	movl	(%edx), %eax
	movl	4(%edx), %edx
	movl	-32(%ebp), %ecx
	andl	$63, %ecx
	movl	%eax, %esi
	movl	%edx, %edi
	shrdl	%edi, %esi
	shrl	%cl, %edi
	testb	$32, %cl
	je	.L1708
	movl	%edi, %esi
	xorl	%edi, %edi
.L1708:
	movl	%esi, %eax
	andl	$1, %eax
	movl	%edi, %edx
	andl	$0, %edx
	testl	%eax, %eax
	je	.L1690
	.loc 1 5459 0
	movl	-28(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L1692
	movl	-28(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L1694
	movl	-28(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -68(%ebp)
	jmp	.L1696
.L1694:
	movl	-28(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	single_set_2@PLT
	movl	%eax, -68(%ebp)
.L1696:
	movl	-68(%ebp), %eax
	movl	%eax, -72(%ebp)
	jmp	.L1697
.L1692:
	movl	$0, -72(%ebp)
.L1697:
	movl	-72(%ebp), %ecx
	movl	%ecx, -24(%ebp)
	.loc 1 5460 0
	cmpl	$0, -24(%ebp)
	jne	.L1698
	.loc 1 5461 0
	leal	__FUNCTION__.17560@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$5461, 4(%esp)
	leal	.LC7@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1698:
	.loc 1 5466 0
	movl	-40(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	jne	.L1700
	.loc 1 5467 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, (%esp)
	call	gen_reg_rtx@PLT
	movl	%eax, %edx
	movl	-40(%ebp), %eax
	movl	%edx, 20(%eax)
.L1700:
	.loc 1 5470 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %edx
	movl	-40(%ebp), %eax
	movl	20(%eax), %ecx
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	gcse_emit_move_after
	.loc 1 5471 0
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_insn@PLT
	.loc 1 5472 0
	movl	-36(%ebp), %eax
	movb	$1, 8(%eax)
	.loc 1 5473 0
	movl	pre_redundant_insns@GOTOFF(%ebx), %esi
	movl	%esi, -64(%ebp)
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	uid_cuid@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	shrl	$6, %eax
	movl	%eax, -60(%ebp)
	movl	pre_redundant_insns@GOTOFF(%ebx), %edx
	movl	12(%edx,%eax,8), %esi
	movl	16(%edx,%eax,8), %edi
	movl	%esi, -56(%ebp)
	movl	%edi, -52(%ebp)
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	uid_cuid@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L1707
	movl	%esi, %edi
	xorl	%esi, %esi
.L1707:
	movl	-56(%ebp), %eax
	orl	%esi, %eax
	movl	-52(%ebp), %edx
	orl	%edi, %edx
	movl	-60(%ebp), %edi
	movl	-64(%ebp), %ecx
	movl	%eax, 12(%ecx,%edi,8)
	movl	%edx, 16(%ecx,%edi,8)
	.loc 1 5474 0
	movl	$1, -44(%ebp)
	.loc 1 5475 0
	movl	gcse_subst_count@GOTOFF(%ebx), %eax
	addl	$1, %eax
	movl	%eax, gcse_subst_count@GOTOFF(%ebx)
	.loc 1 5477 0
	movl	gcse_file@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L1690
	.loc 1 5479 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %edx
	movl	gcse_file@GOTOFF(%ebx), %ecx
	movl	-32(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	leal	.LC40@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
	.loc 1 5482 0
	movl	-40(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %edx
	movl	-20(%ebp), %eax
	movl	44(%eax), %eax
	movl	gcse_file@GOTOFF(%ebx), %ecx
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	leal	.LC41@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
.L1690:
.LBE60:
	.loc 1 5451 0
	movl	-36(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -36(%ebp)
.L1688:
	cmpl	$0, -36(%ebp)
	jne	.L1689
.LBE59:
	.loc 1 5444 0
	movl	-40(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -40(%ebp)
.L1686:
	cmpl	$0, -40(%ebp)
	jne	.L1687
	.loc 1 5443 0
	addl	$1, -48(%ebp)
.L1684:
	movl	4+expr_hash_table@GOTOFF(%ebx), %eax
	cmpl	-48(%ebp), %eax
	ja	.L1685
	.loc 1 5489 0
	movl	-44(%ebp), %eax
	.loc 1 5490 0
	addl	$76, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE116:
	.size	pre_delete, .-pre_delete
	.type	pre_gcse, @function
pre_gcse:
.LFB117:
	.loc 1 5514 0
	pushl	%ebp
.LCFI451:
	movl	%esp, %ebp
.LCFI452:
	pushl	%ebx
.LCFI453:
	subl	$52, %esp
.LCFI454:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 5523 0
	movl	8+expr_hash_table@GOTOFF(%ebx), %eax
	movl	$4, 4(%esp)
	movl	%eax, (%esp)
	call	xcalloc@PLT
	movl	%eax, -12(%ebp)
	.loc 1 5524 0
	movl	$0, -24(%ebp)
	jmp	.L1710
.L1711:
	.loc 1 5525 0
	movl	expr_hash_table@GOTOFF(%ebx), %edx
	movl	-24(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L1712
.L1713:
	.loc 1 5526 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	addl	-12(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 5525 0
	movl	-8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -8(%ebp)
.L1712:
	cmpl	$0, -8(%ebp)
	jne	.L1713
	.loc 1 5524 0
	addl	$1, -24(%ebp)
.L1710:
	movl	4+expr_hash_table@GOTOFF(%ebx), %eax
	cmpl	-24(%ebp), %eax
	ja	.L1711
	.loc 1 5529 0
	movl	max_cuid@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	sbitmap_alloc@PLT
	movl	%eax, pre_redundant_insns@GOTOFF(%ebx)
	.loc 1 5530 0
	movl	pre_redundant_insns@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	sbitmap_zero@PLT
	.loc 1 5537 0
	call	pre_delete
	movl	%eax, -16(%ebp)
	.loc 1 5539 0
	movl	edge_list@GOTOFF(%ebx), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	pre_edge_insert
	movl	%eax, -20(%ebp)
	.loc 1 5543 0
	call	pre_insert_copies
	.loc 1 5544 0
	cmpl	$0, -20(%ebp)
	je	.L1716
	.loc 1 5546 0
	call	commit_edge_insertions@PLT
	.loc 1 5547 0
	movl	$1, -16(%ebp)
.L1716:
	.loc 1 5550 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 5551 0
	movl	pre_redundant_insns@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 5552 0
	movl	-16(%ebp), %eax
	.loc 1 5553 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE117:
	.size	pre_gcse, .-pre_gcse
	.section	.rodata
	.align 4
.LC42:
	.string	"\nPRE GCSE of %s, pass %d: %d bytes needed, "
.LC43:
	.string	"%d substs, %d insns created\n"
	.text
	.type	one_pre_gcse_pass, @function
one_pre_gcse_pass:
.LFB118:
	.loc 1 5562 0
	pushl	%ebp
.LCFI455:
	movl	%esp, %ebp
.LCFI456:
	pushl	%esi
.LCFI457:
	pushl	%ebx
.LCFI458:
	subl	$48, %esp
.LCFI459:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 5563 0
	movl	$0, -12(%ebp)
	.loc 1 5565 0
	movl	$0, gcse_subst_count@GOTOFF(%ebx)
	.loc 1 5566 0
	movl	$0, gcse_create_count@GOTOFF(%ebx)
	.loc 1 5568 0
	movl	max_cuid@GOTOFF(%ebx), %edx
	movl	$0, 8(%esp)
	leal	expr_hash_table@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	alloc_hash_table
	.loc 1 5569 0
	call	add_noreturn_fake_exit_edges@PLT
	.loc 1 5570 0
	movl	flag_gcse_lm@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1720
	.loc 1 5571 0
	call	compute_ld_motion_mems
.L1720:
	.loc 1 5573 0
	leal	expr_hash_table@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	compute_hash_table
	.loc 1 5574 0
	call	trim_ld_motion_mems
	.loc 1 5575 0
	movl	gcse_file@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L1722
	.loc 1 5576 0
	movl	gcse_file@GOTOFF(%ebx), %eax
	leal	expr_hash_table@GOTOFF(%ebx), %edx
	movl	%edx, 8(%esp)
	leal	.LC20@GOTOFF(%ebx), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	dump_hash_table
.L1722:
	.loc 1 5578 0
	movl	8+expr_hash_table@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L1724
	.loc 1 5580 0
	movl	8+expr_hash_table@GOTOFF(%ebx), %eax
	movl	%eax, %edx
	movl	last_basic_block@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	alloc_pre_mem
	.loc 1 5581 0
	call	compute_pre_data
	.loc 1 5582 0
	call	pre_gcse
	orl	%eax, -12(%ebp)
	.loc 1 5583 0
	movl	edge_list@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	free_edge_list@PLT
	.loc 1 5584 0
	call	free_pre_mem
.L1724:
	.loc 1 5587 0
	call	free_ldst_mems
	.loc 1 5588 0
	call	remove_fake_edges@PLT
	.loc 1 5589 0
	leal	expr_hash_table@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	free_hash_table
	.loc 1 5591 0
	movl	gcse_file@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L1726
	.loc 1 5593 0
	movl	bytes_used@GOTOFF(%ebx), %edx
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	20(%eax), %ecx
	movl	gcse_file@GOTOFF(%ebx), %esi
	movl	%edx, 16(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%ecx, 8(%esp)
	leal	.LC42@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	call	fprintf@PLT
	.loc 1 5595 0
	movl	gcse_create_count@GOTOFF(%ebx), %eax
	movl	gcse_subst_count@GOTOFF(%ebx), %edx
	movl	gcse_file@GOTOFF(%ebx), %ecx
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	leal	.LC43@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
.L1726:
	.loc 1 5599 0
	movl	-12(%ebp), %eax
	.loc 1 5600 0
	addl	$48, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE118:
	.size	one_pre_gcse_pass, .-one_pre_gcse_pass
	.type	add_label_notes, @function
add_label_notes:
.LFB119:
	.loc 1 5618 0
	pushl	%ebp
.LCFI460:
	movl	%esp, %ebp
.LCFI461:
	pushl	%ebx
.LCFI462:
	subl	$36, %esp
.LCFI463:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 5619 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -20(%ebp)
	.loc 1 5623 0
	cmpl	$77, -20(%ebp)
	jne	.L1730
	movl	8(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L1730
	.loc 1 5631 0
	movl	12(%ebp), %eax
	movl	68(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$13, 4(%esp)
	movl	$4, (%esp)
	call	gen_rtx_fmt_ue@PLT
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, 68(%eax)
	.loc 1 5633 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$46, %ax
	jne	.L1744
	.loc 1 5634 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	36(%edx), %eax
	addl	$1, %eax
	movl	%eax, 36(%edx)
	.loc 1 5635 0
	jmp	.L1744
.L1730:
	.loc 1 5638 0
	movl	-20(%ebp), %edx
	movl	rtx_length@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	subl	$1, %eax
	movl	%eax, -16(%ebp)
	movl	-20(%ebp), %edx
	movl	rtx_format@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -8(%ebp)
	jmp	.L1736
.L1737:
	.loc 1 5640 0
	movl	-16(%ebp), %eax
	addl	-8(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$101, %al
	jne	.L1738
	.loc 1 5641 0
	movl	-16(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	add_label_notes
	jmp	.L1740
.L1738:
	.loc 1 5642 0
	movl	-16(%ebp), %eax
	addl	-8(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$69, %al
	jne	.L1740
	.loc 1 5643 0
	movl	-16(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	(%eax), %eax
	subl	$1, %eax
	movl	%eax, -12(%ebp)
	jmp	.L1742
.L1743:
	.loc 1 5644 0
	movl	-16(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %edx
	movl	-12(%ebp), %eax
	movl	4(%edx,%eax,4), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	add_label_notes
	.loc 1 5643 0
	subl	$1, -12(%ebp)
.L1742:
	cmpl	$0, -12(%ebp)
	jns	.L1743
.L1740:
	.loc 1 5638 0
	subl	$1, -16(%ebp)
.L1736:
	cmpl	$0, -16(%ebp)
	jns	.L1737
.L1744:
	.loc 1 5646 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE119:
	.size	add_label_notes, .-add_label_notes
	.type	compute_transpout, @function
compute_transpout:
.LFB120:
	.loc 1 5663 0
	pushl	%ebp
.LCFI464:
	movl	%esp, %ebp
.LCFI465:
	pushl	%edi
.LCFI466:
	pushl	%esi
.LCFI467:
	pushl	%ebx
.LCFI468:
	subl	$44, %esp
.LCFI469:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 5668 0
	movl	last_basic_block@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	transpout@GOTOFF(%ebx), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	sbitmap_vector_ones@PLT
	.loc 1 5670 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	52(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L1746
.L1747:
	.loc 1 5675 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$44, %ax
	jne	.L1748
	.loc 1 5678 0
	movl	$0, -24(%ebp)
	jmp	.L1750
.L1751:
	.loc 1 5679 0
	movl	expr_hash_table@GOTOFF(%ebx), %edx
	movl	-24(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
	jmp	.L1752
.L1753:
	.loc 1 5680 0
	movl	-20(%ebp), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L1754
	.loc 1 5682 0
	movl	-20(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	jne	.L1756
	movl	-20(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movzbl	3(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L1754
.L1756:
	.loc 1 5689 0
	movl	-28(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	transpout@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -48(%ebp)
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %ecx
	shrl	$6, %ecx
	movl	%ecx, -44(%ebp)
	movl	-28(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	transpout@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	movl	%ecx, %eax
	movl	12(%edx,%eax,8), %esi
	movl	16(%edx,%eax,8), %edi
	movl	%esi, -40(%ebp)
	movl	%edi, -36(%ebp)
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	shldl	%eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	je	.L1761
	movl	%eax, %edx
	xorl	%eax, %eax
.L1761:
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-40(%ebp), %eax
	andl	%esi, %eax
	movl	-36(%ebp), %edx
	andl	%edi, %edx
	movl	-44(%ebp), %edi
	movl	-48(%ebp), %ecx
	movl	%eax, 12(%ecx,%edi,8)
	movl	%edx, 16(%ecx,%edi,8)
.L1754:
	.loc 1 5679 0
	movl	-20(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -20(%ebp)
.L1752:
	cmpl	$0, -20(%ebp)
	jne	.L1753
	.loc 1 5678 0
	addl	$1, -24(%ebp)
.L1750:
	movl	4+expr_hash_table@GOTOFF(%ebx), %eax
	cmpl	-24(%ebp), %eax
	ja	.L1751
.L1748:
	.loc 1 5670 0
	movl	-28(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -28(%ebp)
.L1746:
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, -28(%ebp)
	jne	.L1747
	.loc 1 5692 0
	addl	$44, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE120:
	.size	compute_transpout, .-compute_transpout
	.type	invalidate_nonnull_info, @function
invalidate_nonnull_info:
.LFB121:
	.loc 1 5707 0
	pushl	%ebp
.LCFI470:
	movl	%esp, %ebp
.LCFI471:
	pushl	%edi
.LCFI472:
	pushl	%esi
.LCFI473:
	subl	$48, %esp
.LCFI474:
	.loc 1 5709 0
	movl	16(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 5711 0
	jmp	.L1763
.L1764:
	.loc 1 5712 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 8(%ebp)
.L1763:
	.loc 1 5711 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	je	.L1764
	.loc 1 5715 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L1771
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	jb	.L1771
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	-12(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	%eax, %edx
	jb	.L1769
	.loc 1 5718 0
	jmp	.L1771
.L1769:
	.loc 1 5720 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, -16(%ebp)
	.loc 1 5722 0
	movl	-12(%ebp), %eax
	movl	12(%eax), %edx
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -56(%ebp)
	movl	-16(%ebp), %eax
	movl	%eax, %ecx
	shrl	$6, %ecx
	movl	%ecx, -52(%ebp)
	movl	-12(%ebp), %eax
	movl	12(%eax), %edx
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	movl	%ecx, %eax
	movl	12(%edx,%eax,8), %esi
	movl	16(%edx,%eax,8), %edi
	movl	%esi, -48(%ebp)
	movl	%edi, -44(%ebp)
	movl	-16(%ebp), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	shldl	%eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	je	.L1772
	movl	%eax, %edx
	xorl	%eax, %eax
.L1772:
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-48(%ebp), %eax
	andl	%esi, %eax
	movl	-44(%ebp), %edx
	andl	%edi, %edx
	movl	-52(%ebp), %edi
	movl	-56(%ebp), %ecx
	movl	%eax, 12(%ecx,%edi,8)
	movl	%edx, 16(%ecx,%edi,8)
	.loc 1 5723 0
	movl	-12(%ebp), %eax
	movl	16(%eax), %edx
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -40(%ebp)
	movl	-16(%ebp), %eax
	movl	%eax, %ecx
	shrl	$6, %ecx
	movl	%ecx, -36(%ebp)
	movl	-12(%ebp), %eax
	movl	16(%eax), %edx
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	movl	%ecx, %eax
	movl	12(%edx,%eax,8), %esi
	movl	16(%edx,%eax,8), %edi
	movl	%esi, -32(%ebp)
	movl	%edi, -28(%ebp)
	movl	-16(%ebp), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L1773
	movl	%esi, %edi
	xorl	%esi, %esi
.L1773:
	movl	-32(%ebp), %eax
	orl	%esi, %eax
	movl	-28(%ebp), %edx
	orl	%edi, %edx
	movl	-36(%ebp), %edi
	movl	-40(%ebp), %ecx
	movl	%eax, 12(%ecx,%edi,8)
	movl	%edx, 16(%ecx,%edi,8)
.L1771:
	.loc 1 5724 0
	addl	$48, %esp
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE121:
	.size	invalidate_nonnull_info, .-invalidate_nonnull_info
	.type	delete_null_pointer_checks_1, @function
delete_null_pointer_checks_1:
.LFB122:
	.loc 1 5737 0
	pushl	%ebp
.LCFI475:
	movl	%esp, %ebp
.LCFI476:
	pushl	%edi
.LCFI477:
	pushl	%esi
.LCFI478:
	pushl	%ebx
.LCFI479:
	subl	$124, %esp
.LCFI480:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 5739 0
	movl	20(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -60(%ebp)
	.loc 1 5740 0
	movl	20(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -56(%ebp)
	.loc 1 5741 0
	movl	$0, -52(%ebp)
	.loc 1 5751 0
	movl	last_basic_block@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	sbitmap_vector_zero@PLT
	.loc 1 5752 0
	movl	last_basic_block@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	sbitmap_vector_zero@PLT
	.loc 1 5754 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	52(%eax), %eax
	movl	%eax, -64(%ebp)
	jmp	.L1775
.L1776:
.LBB61:
	.loc 1 5759 0
	movl	20(%ebp), %edx
	movl	-64(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 5763 0
	movl	-64(%ebp), %eax
	movl	4(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -44(%ebp)
	.loc 1 5764 0
	movl	-64(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -48(%ebp)
	.loc 1 5765 0
	jmp	.L1777
.L1778:
.LBB62:
	.loc 1 5772 0
	movl	-48(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L1779
	.loc 1 5778 0
	movl	-48(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L1781
	movl	-48(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L1783
	movl	-48(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -116(%ebp)
	jmp	.L1785
.L1783:
	movl	-48(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	single_set_2@PLT
	movl	%eax, -116(%ebp)
.L1785:
	movl	-116(%ebp), %eax
	movl	%eax, -120(%ebp)
	jmp	.L1786
.L1781:
	movl	$0, -120(%ebp)
.L1786:
	movl	-120(%ebp), %ecx
	movl	%ecx, -40(%ebp)
	.loc 1 5779 0
	cmpl	$0, -40(%ebp)
	jne	.L1787
	.loc 1 5781 0
	movl	-48(%ebp), %eax
	movl	44(%eax), %edx
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	invalidate_nonnull_info@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	note_stores@PLT
	.loc 1 5782 0
	jmp	.L1779
.L1787:
	.loc 1 5788 0
	movl	-40(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L1789
	movl	-40(%ebp), %eax
	movl	12(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -36(%ebp)
	movl	-36(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L1789
	movl	-36(%ebp), %eax
	movl	4(%eax), %edx
	movl	20(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	jb	.L1789
	movl	-36(%ebp), %eax
	movl	4(%eax), %edx
	movl	20(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	%eax, %edx
	jae	.L1789
	.loc 1 5792 0
	movl	-64(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	addl	-60(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -112(%ebp)
	movl	-36(%ebp), %eax
	movl	4(%eax), %edx
	movl	20(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, %esi
	subl	%eax, %esi
	movl	%esi, %eax
	movl	%eax, %ecx
	shrl	$6, %ecx
	movl	%ecx, -108(%ebp)
	movl	-64(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	addl	-60(%ebp), %eax
	movl	(%eax), %edx
	movl	%ecx, %eax
	movl	12(%edx,%eax,8), %esi
	movl	16(%edx,%eax,8), %edi
	movl	%esi, -104(%ebp)
	movl	%edi, -100(%ebp)
	movl	-36(%ebp), %eax
	movl	4(%eax), %edx
	movl	20(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, %edi
	subl	%eax, %edi
	movl	%edi, %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L1819
	movl	%esi, %edi
	xorl	%esi, %esi
.L1819:
	movl	-104(%ebp), %eax
	orl	%esi, %eax
	movl	-100(%ebp), %edx
	orl	%edi, %edx
	movl	-108(%ebp), %ecx
	movl	-112(%ebp), %esi
	movl	%eax, 12(%esi,%ecx,8)
	movl	%edx, 16(%esi,%ecx,8)
.L1789:
	.loc 1 5796 0
	movl	-48(%ebp), %eax
	movl	44(%eax), %edx
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	invalidate_nonnull_info@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	note_stores@PLT
	.loc 1 5801 0
	movl	-40(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L1779
	movl	-40(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -36(%ebp)
	movl	-36(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L1779
	movl	-36(%ebp), %eax
	movl	4(%eax), %edx
	movl	20(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	jb	.L1779
	movl	-36(%ebp), %eax
	movl	4(%eax), %edx
	movl	20(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	%eax, %edx
	jae	.L1779
	.loc 1 5805 0
	movl	-64(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	addl	-60(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -96(%ebp)
	movl	-36(%ebp), %eax
	movl	4(%eax), %edx
	movl	20(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, %edi
	subl	%eax, %edi
	movl	%edi, %eax
	movl	%eax, %ecx
	shrl	$6, %ecx
	movl	%ecx, -92(%ebp)
	movl	-64(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	addl	-60(%ebp), %eax
	movl	(%eax), %edx
	movl	%ecx, %eax
	movl	12(%edx,%eax,8), %esi
	movl	16(%edx,%eax,8), %edi
	movl	%esi, -88(%ebp)
	movl	%edi, -84(%ebp)
	movl	-36(%ebp), %eax
	movl	4(%eax), %edx
	movl	20(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, %edi
	subl	%eax, %edi
	movl	%edi, %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L1818
	movl	%esi, %edi
	xorl	%esi, %esi
.L1818:
	movl	-88(%ebp), %eax
	orl	%esi, %eax
	movl	-84(%ebp), %edx
	orl	%edi, %edx
	movl	-92(%ebp), %ecx
	movl	-96(%ebp), %esi
	movl	%eax, 12(%esi,%ecx,8)
	movl	%edx, 16(%esi,%ecx,8)
.L1779:
.LBE62:
	.loc 1 5766 0
	movl	-48(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -48(%ebp)
.L1777:
	.loc 1 5765 0
	movl	-48(%ebp), %eax
	cmpl	-44(%ebp), %eax
	jne	.L1778
.LBE61:
	.loc 1 5754 0
	movl	-64(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -64(%ebp)
.L1775:
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, -64(%ebp)
	jne	.L1776
	.loc 1 5812 0
	movl	12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	compute_available@PLT
	.loc 1 5817 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	52(%eax), %eax
	movl	%eax, -68(%ebp)
	jmp	.L1800
.L1801:
.LBB63:
	.loc 1 5819 0
	movl	-68(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 5826 0
	movl	-68(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	addl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	20(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	jb	.L1802
	movl	-68(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	addl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	20(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	%eax, %edx
	jae	.L1802
	.loc 1 5831 0
	leal	-72(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	get_condition@PLT
	movl	%eax, -28(%ebp)
	.loc 1 5834 0
	cmpl	$0, -28(%ebp)
	je	.L1802
	.loc 1 5838 0
	movl	-68(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	addl	16(%ebp), %eax
	movl	(%eax), %ecx
	movl	-68(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	addl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	20(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, %edi
	subl	%eax, %edi
	movl	%edi, %eax
	shrl	$6, %eax
	movl	12(%ecx,%eax,8), %esi
	movl	16(%ecx,%eax,8), %edi
	movl	-68(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	addl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	20(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	shrdl	%edi, %esi
	shrl	%cl, %edi
	testb	$32, %cl
	je	.L1817
	movl	%edi, %esi
	xorl	%edi, %edi
.L1817:
	movl	%esi, %eax
	andl	$1, %eax
	movl	%edi, %edx
	andl	$0, %edx
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L1802
	.loc 1 5843 0
	movl	-72(%ebp), %eax
	cmpl	-32(%ebp), %eax
	jne	.L1807
	.loc 1 5844 0
	movl	$1, -24(%ebp)
	jmp	.L1809
.L1807:
	.loc 1 5845 0
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	prev_nonnote_insn@PLT
	movl	%eax, %edx
	movl	-72(%ebp), %eax
	cmpl	%eax, %edx
	jne	.L1802
	.loc 1 5846 0
	movl	$2, -24(%ebp)
.L1809:
	.loc 1 5852 0
	movl	-28(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$112, %ax
	jne	.L1811
.LBB64:
	.loc 1 5856 0
	movl	-32(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, (%esp)
	call	gen_jump@PLT
	movl	%eax, %edx
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	emit_jump_insn_after@PLT
	movl	%eax, -20(%ebp)
	.loc 1 5858 0
	movl	-32(%ebp), %eax
	movl	76(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%edx, 76(%eax)
	.loc 1 5859 0
	movl	-20(%ebp), %eax
	movl	76(%eax), %edx
	movl	36(%edx), %eax
	addl	$1, %eax
	movl	%eax, 36(%edx)
	.loc 1 5860 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_barrier_after@PLT
.L1811:
.LBE64:
	.loc 1 5863 0
	movl	$1, -52(%ebp)
	.loc 1 5864 0
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_insn@PLT
	.loc 1 5865 0
	cmpl	$2, -24(%ebp)
	jne	.L1813
	.loc 1 5866 0
	movl	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_insn@PLT
.L1813:
	.loc 1 5867 0
	movl	-68(%ebp), %eax
	movl	%eax, (%esp)
	call	purge_dead_edges@PLT
	.loc 1 5872 0
	movl	-68(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	addl	8(%ebp), %eax
	movl	$0, (%eax)
.L1802:
.LBE63:
	.loc 1 5817 0
	movl	-68(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -68(%ebp)
.L1800:
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, -68(%ebp)
	jne	.L1801
	.loc 1 5875 0
	movl	-52(%ebp), %eax
	.loc 1 5876 0
	addl	$124, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE122:
	.size	delete_null_pointer_checks_1, .-delete_null_pointer_checks_1
.globl delete_null_pointer_checks
	.type	delete_null_pointer_checks, @function
delete_null_pointer_checks:
.LFB123:
	.loc 1 5905 0
	pushl	%ebp
.LCFI481:
	movl	%esp, %ebp
.LCFI482:
	pushl	%ebx
.LCFI483:
	subl	$116, %esp
.LCFI484:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 5913 0
	movl	$0, -20(%ebp)
	.loc 1 5916 0
	movl	n_basic_blocks@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	jg	.L1821
	.loc 1 5917 0
	movl	$0, -92(%ebp)
	jmp	.L1823
.L1821:
	.loc 1 5927 0
	movl	n_basic_blocks@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1000, %eax
	jle	.L1824
	movl	n_edges@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	n_basic_blocks@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, %ecx
	movl	%edx, %eax
	sarl	$31, %edx
	idivl	%ecx
	cmpl	$19, %eax
	jle	.L1824
	.loc 1 5928 0
	movl	$0, -92(%ebp)
	jmp	.L1823
.L1824:
	.loc 1 5932 0
	call	max_reg_num@PLT
	movl	%eax, -24(%ebp)
	.loc 1 5933 0
	movl	last_basic_block@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$4, (%esp)
	call	get_bitmap_width
	movl	%eax, -28(%ebp)
	.loc 1 5936 0
	movl	-28(%ebp), %edx
	movl	last_basic_block@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	sbitmap_vector_alloc@PLT
	movl	%eax, -60(%ebp)
	.loc 1 5937 0
	movl	-28(%ebp), %edx
	movl	last_basic_block@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	sbitmap_vector_alloc@PLT
	movl	%eax, -56(%ebp)
	.loc 1 5938 0
	movl	-28(%ebp), %edx
	movl	last_basic_block@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	sbitmap_vector_alloc@PLT
	movl	%eax, -48(%ebp)
	.loc 1 5939 0
	movl	-28(%ebp), %edx
	movl	last_basic_block@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	sbitmap_vector_alloc@PLT
	movl	%eax, -44(%ebp)
	.loc 1 5944 0
	movl	last_basic_block@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	$4, 4(%esp)
	movl	%eax, (%esp)
	call	xcalloc@PLT
	movl	%eax, -40(%ebp)
	.loc 1 5945 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	52(%eax), %eax
	movl	%eax, -36(%ebp)
	jmp	.L1827
.L1828:
.LBB65:
	.loc 1 5947 0
	movl	-36(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 5951 0
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L1829
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	any_condjump_p@PLT
	testl	%eax, %eax
	je	.L1829
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	onlyjump_p@PLT
	testl	%eax, %eax
	je	.L1829
	.loc 1 5957 0
	leal	-52(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	get_condition@PLT
	movl	%eax, -12(%ebp)
	.loc 1 5961 0
	cmpl	$0, -12(%ebp)
	je	.L1829
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$112, %ax
	je	.L1834
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$113, %ax
	jne	.L1829
.L1834:
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L1829
	movl	-12(%ebp), %eax
	movl	12(%eax), %ecx
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	const_tiny_rtx@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	%eax, %ecx
	jne	.L1829
	.loc 1 5969 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 5970 0
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L1829
	.loc 1 5973 0
	movl	-36(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	addl	-40(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%edx)
.L1829:
.LBE65:
	.loc 1 5945 0
	movl	-36(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -36(%ebp)
.L1827:
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, -36(%ebp)
	jne	.L1828
	.loc 1 5977 0
	movl	$176, -32(%ebp)
	jmp	.L1840
.L1841:
	.loc 1 5979 0
	movl	-32(%ebp), %eax
	movl	%eax, -68(%ebp)
	.loc 1 5980 0
	movl	-28(%ebp), %eax
	addl	-32(%ebp), %eax
	movl	-24(%ebp), %edx
	movl	%edx, -96(%ebp)
	movl	%eax, -88(%ebp)
	movl	-96(%ebp), %ecx
	cmpl	%ecx, -88(%ebp)
	jle	.L1842
	movl	-96(%ebp), %eax
	movl	%eax, -88(%ebp)
.L1842:
	movl	-88(%ebp), %eax
	movl	%eax, -64(%ebp)
	.loc 1 5981 0
	leal	-72(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_null_pointer_checks_1
	orl	%eax, -20(%ebp)
	.loc 1 5977 0
	movl	-28(%ebp), %eax
	addl	%eax, -32(%ebp)
.L1840:
	movl	-32(%ebp), %eax
	cmpl	-24(%ebp), %eax
	jl	.L1841
	.loc 1 5988 0
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 5991 0
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 5992 0
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 5993 0
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 5994 0
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 5996 0
	movl	-20(%ebp), %edx
	movl	%edx, -92(%ebp)
.L1823:
	movl	-92(%ebp), %eax
	.loc 1 5997 0
	addl	$116, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE123:
	.size	delete_null_pointer_checks, .-delete_null_pointer_checks
	.type	alloc_code_hoist_mem, @function
alloc_code_hoist_mem:
.LFB124:
	.loc 1 6023 0
	pushl	%ebp
.LCFI485:
	movl	%esp, %ebp
.LCFI486:
	pushl	%ebx
.LCFI487:
	subl	$20, %esp
.LCFI488:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 6024 0
	movl	12(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	sbitmap_vector_alloc@PLT
	movl	%eax, antloc@GOTOFF(%ebx)
	.loc 1 6025 0
	movl	12(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	sbitmap_vector_alloc@PLT
	movl	%eax, transp@GOTOFF(%ebx)
	.loc 1 6026 0
	movl	12(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	sbitmap_vector_alloc@PLT
	movl	%eax, comp@GOTOFF(%ebx)
	.loc 1 6028 0
	movl	12(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	sbitmap_vector_alloc@PLT
	movl	%eax, hoist_vbein@GOTOFF(%ebx)
	.loc 1 6029 0
	movl	12(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	sbitmap_vector_alloc@PLT
	movl	%eax, hoist_vbeout@GOTOFF(%ebx)
	.loc 1 6030 0
	movl	12(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	sbitmap_vector_alloc@PLT
	movl	%eax, hoist_exprs@GOTOFF(%ebx)
	.loc 1 6031 0
	movl	12(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	sbitmap_vector_alloc@PLT
	movl	%eax, transpout@GOTOFF(%ebx)
	.loc 1 6032 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE124:
	.size	alloc_code_hoist_mem, .-alloc_code_hoist_mem
	.type	free_code_hoist_mem, @function
free_code_hoist_mem:
.LFB125:
	.loc 1 6038 0
	pushl	%ebp
.LCFI489:
	movl	%esp, %ebp
.LCFI490:
	pushl	%ebx
.LCFI491:
	subl	$4, %esp
.LCFI492:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 6039 0
	movl	antloc@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 6040 0
	movl	transp@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 6041 0
	movl	comp@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 6043 0
	movl	hoist_vbein@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 6044 0
	movl	hoist_vbeout@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 6045 0
	movl	hoist_exprs@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 6046 0
	movl	transpout@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 6048 0
	movl	dominators@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	free_dominance_info@PLT
	.loc 1 6049 0
	addl	$4, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE125:
	.size	free_code_hoist_mem, .-free_code_hoist_mem
	.section	.rodata
	.align 4
.LC44:
	.string	"hoisting vbeinout computation: %d passes\n"
	.text
	.type	compute_code_hoist_vbeinout, @function
compute_code_hoist_vbeinout:
.LFB126:
	.loc 1 6058 0
	pushl	%ebp
.LCFI493:
	movl	%esp, %ebp
.LCFI494:
	pushl	%edi
.LCFI495:
	pushl	%esi
.LCFI496:
	pushl	%ebx
.LCFI497:
	subl	$44, %esp
.LCFI498:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 6062 0
	movl	last_basic_block@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	hoist_vbeout@GOTOFF(%ebx), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	sbitmap_vector_zero@PLT
	.loc 1 6063 0
	movl	last_basic_block@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	hoist_vbein@GOTOFF(%ebx), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	sbitmap_vector_zero@PLT
	.loc 1 6065 0
	movl	$0, -20(%ebp)
	.loc 1 6066 0
	movl	$1, -24(%ebp)
	.loc 1 6068 0
	jmp	.L1850
.L1851:
	.loc 1 6070 0
	movl	$0, -24(%ebp)
	.loc 1 6074 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	movl	48(%eax), %eax
	movl	%eax, -16(%ebp)
	jmp	.L1852
.L1853:
	.loc 1 6076 0
	movl	-16(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	transp@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %ecx
	movl	-16(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	hoist_vbeout@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %esi
	movl	-16(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	antloc@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edi
	movl	-16(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	hoist_vbein@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%ecx, 12(%esp)
	movl	%esi, 8(%esp)
	movl	%edi, 4(%esp)
	movl	%eax, (%esp)
	call	sbitmap_a_or_b_and_c_cg@PLT
	movzbl	%al, %eax
	orl	%eax, -24(%ebp)
	.loc 1 6078 0
	movl	-16(%ebp), %eax
	movl	52(%eax), %edx
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, %edx
	je	.L1854
	.loc 1 6079 0
	movl	-16(%ebp), %eax
	movl	44(%eax), %ecx
	movl	hoist_vbein@GOTOFF(%ebx), %esi
	movl	-16(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	hoist_vbeout@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%ecx, 8(%esp)
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	call	sbitmap_intersection_of_succs@PLT
.L1854:
	.loc 1 6074 0
	movl	-16(%ebp), %eax
	movl	48(%eax), %eax
	movl	%eax, -16(%ebp)
.L1852:
	movl	entry_exit_blocks@GOT(%ebx), %eax
	cmpl	%eax, -16(%ebp)
	jne	.L1853
	.loc 1 6082 0
	addl	$1, -20(%ebp)
.L1850:
	.loc 1 6068 0
	cmpl	$0, -24(%ebp)
	jne	.L1851
	.loc 1 6085 0
	movl	gcse_file@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L1860
	.loc 1 6086 0
	movl	gcse_file@GOTOFF(%ebx), %eax
	movl	-20(%ebp), %edx
	movl	%edx, 8(%esp)
	leal	.LC44@GOTOFF(%ebx), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	fprintf@PLT
.L1860:
	.loc 1 6087 0
	addl	$44, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE126:
	.size	compute_code_hoist_vbeinout, .-compute_code_hoist_vbeinout
	.type	compute_code_hoist_data, @function
compute_code_hoist_data:
.LFB127:
	.loc 1 6093 0
	pushl	%ebp
.LCFI499:
	movl	%esp, %ebp
.LCFI500:
	pushl	%esi
.LCFI501:
	pushl	%ebx
.LCFI502:
	subl	$16, %esp
.LCFI503:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 6094 0
	movl	antloc@GOTOFF(%ebx), %edx
	movl	comp@GOTOFF(%ebx), %ecx
	movl	transp@GOTOFF(%ebx), %esi
	leal	expr_hash_table@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%esi, (%esp)
	call	compute_local_properties
	.loc 1 6095 0
	call	compute_transpout
	.loc 1 6096 0
	call	compute_code_hoist_vbeinout
	.loc 1 6097 0
	movl	$0, (%esp)
	call	calculate_dominance_info@PLT
	movl	%eax, %edx
	movl	dominators@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 6098 0
	movl	gcse_file@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L1864
	.loc 1 6099 0
	movl	gcse_file@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	fputc@PLT
.L1864:
	.loc 1 6100 0
	addl	$16, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE127:
	.size	compute_code_hoist_data, .-compute_code_hoist_data
	.type	hoist_expr_reaches_here_p, @function
hoist_expr_reaches_here_p:
.LFB128:
	.loc 1 6121 0
	pushl	%ebp
.LCFI504:
	movl	%esp, %ebp
.LCFI505:
	pushl	%edi
.LCFI506:
	pushl	%esi
.LCFI507:
	pushl	%ebx
.LCFI508:
	subl	$44, %esp
.LCFI509:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 6123 0
	movl	$0, -20(%ebp)
	.loc 1 6126 0
	cmpl	$0, 20(%ebp)
	jne	.L1866
	.loc 1 6128 0
	movl	$1, -20(%ebp)
	.loc 1 6129 0
	movl	last_basic_block@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	xcalloc@PLT
	movl	%eax, 20(%ebp)
.L1866:
	.loc 1 6132 0
	movl	16(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L1868
.L1869:
.LBB66:
	.loc 1 6134 0
	movl	-24(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 6136 0
	movl	-24(%ebp), %eax
	movl	8(%eax), %edx
	movl	entry_exit_blocks@GOT(%ebx), %eax
	cmpl	%eax, %edx
	je	.L1870
	.loc 1 6138 0
	movl	-16(%ebp), %eax
	cmpl	8(%ebp), %eax
	je	.L1872
	.loc 1 6140 0
	movl	-16(%ebp), %eax
	movl	44(%eax), %eax
	addl	20(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L1872
	.loc 1 6144 0
	movl	-16(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	comp@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	movl	12(%ebp), %eax
	shrl	$6, %eax
	leal	12(%edx,%eax,8), %edx
	movl	(%edx), %eax
	movl	4(%edx), %edx
	movl	12(%ebp), %ecx
	andl	$63, %ecx
	movl	%eax, %esi
	movl	%edx, %edi
	shrdl	%edi, %esi
	shrl	%cl, %edi
	testb	$32, %cl
	je	.L1881
	movl	%edi, %esi
	xorl	%edi, %edi
.L1881:
	movl	%esi, %eax
	andl	$1, %eax
	movl	%edi, %edx
	andl	$0, %edx
	testl	%eax, %eax
	jne	.L1870
	.loc 1 6146 0
	movl	-16(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	transp@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	movl	12(%ebp), %eax
	shrl	$6, %eax
	leal	12(%edx,%eax,8), %edx
	movl	(%edx), %eax
	movl	4(%edx), %edx
	movl	12(%ebp), %ecx
	andl	$63, %ecx
	movl	%eax, %esi
	movl	%edx, %edi
	shrdl	%edi, %esi
	shrl	%cl, %edi
	testb	$32, %cl
	je	.L1880
	movl	%edi, %esi
	xorl	%edi, %edi
.L1880:
	movl	%esi, %eax
	andl	$1, %eax
	movl	%edi, %edx
	andl	$0, %edx
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L1870
	.loc 1 6152 0
	movl	-16(%ebp), %eax
	movl	44(%eax), %eax
	addl	20(%ebp), %eax
	movb	$1, (%eax)
	.loc 1 6153 0
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	hoist_expr_reaches_here_p
	testl	%eax, %eax
	je	.L1870
.L1872:
.LBE66:
	.loc 1 6132 0
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
.L1868:
	cmpl	$0, -24(%ebp)
	jne	.L1869
.L1870:
	.loc 1 6158 0
	cmpl	$0, -20(%ebp)
	je	.L1877
	.loc 1 6159 0
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
.L1877:
	.loc 1 6161 0
	cmpl	$0, -24(%ebp)
	sete	%al
	movzbl	%al, %eax
	.loc 1 6162 0
	addl	$44, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE128:
	.size	hoist_expr_reaches_here_p, .-hoist_expr_reaches_here_p
	.section	.rodata
	.type	__FUNCTION__.18449, @object
	.size	__FUNCTION__.18449, 11
__FUNCTION__.18449:
	.string	"hoist_code"
	.text
	.type	hoist_code, @function
hoist_code:
.LFB129:
	.loc 1 6168 0
	pushl	%ebp
.LCFI510:
	movl	%esp, %ebp
.LCFI511:
	pushl	%edi
.LCFI512:
	pushl	%esi
.LCFI513:
	pushl	%ebx
.LCFI514:
	subl	$108, %esp
.LCFI515:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 6176 0
	movl	last_basic_block@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	hoist_exprs@GOTOFF(%ebx), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	sbitmap_vector_zero@PLT
	.loc 1 6181 0
	movl	8+expr_hash_table@GOTOFF(%ebx), %eax
	movl	$4, 4(%esp)
	movl	%eax, (%esp)
	call	xcalloc@PLT
	movl	%eax, -52(%ebp)
	.loc 1 6182 0
	movl	$0, -60(%ebp)
	jmp	.L1883
.L1884:
	.loc 1 6183 0
	movl	expr_hash_table@GOTOFF(%ebx), %edx
	movl	-60(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -48(%ebp)
	jmp	.L1885
.L1886:
	.loc 1 6184 0
	movl	-48(%ebp), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	addl	-52(%ebp), %edx
	movl	-48(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 6183 0
	movl	-48(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -48(%ebp)
.L1885:
	cmpl	$0, -48(%ebp)
	jne	.L1886
	.loc 1 6182 0
	addl	$1, -60(%ebp)
.L1883:
	movl	4+expr_hash_table@GOTOFF(%ebx), %eax
	cmpl	-60(%ebp), %eax
	ja	.L1884
	.loc 1 6188 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	52(%eax), %eax
	movl	%eax, -72(%ebp)
	jmp	.L1889
.L1890:
.LBB67:
	.loc 1 6190 0
	movl	$0, -44(%ebp)
	.loc 1 6193 0
	movl	dominators@GOT(%ebx), %eax
	movl	(%eax), %edx
	leal	-76(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-72(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	get_dominated_by@PLT
	movl	%eax, -64(%ebp)
	.loc 1 6196 0
	movl	$0, -60(%ebp)
	jmp	.L1891
.L1892:
.LBB68:
	.loc 1 6198 0
	movl	$0, -36(%ebp)
	.loc 1 6200 0
	movl	-72(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	hoist_vbeout@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	movl	-60(%ebp), %eax
	shrl	$6, %eax
	movl	12(%edx,%eax,8), %esi
	movl	16(%edx,%eax,8), %edi
	movl	-60(%ebp), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	shrdl	%edi, %esi
	shrl	%cl, %edi
	testb	$32, %cl
	je	.L1943
	movl	%edi, %esi
	xorl	%edi, %edi
.L1943:
	movl	%esi, %eax
	andl	$1, %eax
	movl	%edi, %edx
	andl	$0, %edx
	testl	%eax, %eax
	je	.L1893
	movl	-72(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	transpout@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	movl	-60(%ebp), %eax
	shrl	$6, %eax
	movl	12(%edx,%eax,8), %esi
	movl	16(%edx,%eax,8), %edi
	movl	-60(%ebp), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	shrdl	%edi, %esi
	shrl	%cl, %edi
	testb	$32, %cl
	je	.L1942
	movl	%edi, %esi
	xorl	%edi, %edi
.L1942:
	movl	%esi, %eax
	andl	$1, %eax
	movl	%edi, %edx
	andl	$0, %edx
	testl	%eax, %eax
	je	.L1893
	.loc 1 6206 0
	movl	$0, -56(%ebp)
	jmp	.L1896
.L1897:
	.loc 1 6208 0
	movl	-56(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	-76(%ebp), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -68(%ebp)
	.loc 1 6210 0
	movl	-72(%ebp), %eax
	cmpl	-68(%ebp), %eax
	je	.L1898
	.loc 1 6215 0
	movl	-68(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	antloc@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	movl	-60(%ebp), %eax
	shrl	$6, %eax
	movl	12(%edx,%eax,8), %esi
	movl	16(%edx,%eax,8), %edi
	movl	-60(%ebp), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	shrdl	%edi, %esi
	shrl	%cl, %edi
	testb	$32, %cl
	je	.L1941
	movl	%edi, %esi
	xorl	%edi, %edi
.L1941:
	movl	%esi, %eax
	andl	$1, %eax
	movl	%edi, %edx
	andl	$0, %edx
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L1898
	.loc 1 6223 0
	movl	-60(%ebp), %edx
	movl	$0, 12(%esp)
	movl	-68(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	hoist_expr_reaches_here_p
	testl	%eax, %eax
	je	.L1898
	.loc 1 6224 0
	addl	$1, -36(%ebp)
.L1898:
	.loc 1 6206 0
	addl	$1, -56(%ebp)
.L1896:
	movl	-56(%ebp), %eax
	cmpl	-64(%ebp), %eax
	jb	.L1897
	.loc 1 6237 0
	cmpl	$1, -36(%ebp)
	jle	.L1893
	.loc 1 6239 0
	movl	-72(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	hoist_exprs@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -104(%ebp)
	movl	-60(%ebp), %eax
	movl	%eax, %ecx
	shrl	$6, %ecx
	movl	%ecx, -100(%ebp)
	movl	-72(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	hoist_exprs@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	movl	%ecx, %eax
	movl	12(%edx,%eax,8), %esi
	movl	16(%edx,%eax,8), %edi
	movl	%esi, -96(%ebp)
	movl	%edi, -92(%ebp)
	movl	-60(%ebp), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L1940
	movl	%esi, %edi
	xorl	%esi, %esi
.L1940:
	movl	-96(%ebp), %eax
	orl	%esi, %eax
	movl	-92(%ebp), %edx
	orl	%edi, %edx
	movl	-100(%ebp), %edi
	movl	-104(%ebp), %ecx
	movl	%eax, 12(%ecx,%edi,8)
	movl	%edx, 16(%ecx,%edi,8)
	.loc 1 6240 0
	movl	$1, -44(%ebp)
.L1893:
.LBE68:
	.loc 1 6196 0
	addl	$1, -60(%ebp)
.L1891:
	movl	-72(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	hoist_vbeout@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	(%eax), %eax
	cmpl	-60(%ebp), %eax
	ja	.L1892
	.loc 1 6245 0
	cmpl	$0, -44(%ebp)
	jne	.L1905
	.loc 1 6247 0
	movl	-76(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 6248 0
	jmp	.L1907
.L1905:
	.loc 1 6252 0
	movl	$0, -60(%ebp)
	jmp	.L1908
.L1909:
	.loc 1 6256 0
	movl	$0, -40(%ebp)
	.loc 1 6259 0
	movl	-72(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	hoist_vbeout@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	movl	-60(%ebp), %eax
	shrl	$6, %eax
	movl	12(%edx,%eax,8), %esi
	movl	16(%edx,%eax,8), %edi
	movl	-60(%ebp), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	shrdl	%edi, %esi
	shrl	%cl, %edi
	testb	$32, %cl
	je	.L1939
	movl	%edi, %esi
	xorl	%edi, %edi
.L1939:
	movl	%esi, %eax
	andl	$1, %eax
	movl	%edi, %edx
	andl	$0, %edx
	testl	%eax, %eax
	je	.L1910
	.loc 1 6264 0
	movl	$0, -56(%ebp)
	jmp	.L1912
.L1913:
	.loc 1 6266 0
	movl	-56(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	-76(%ebp), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -68(%ebp)
	.loc 1 6268 0
	movl	-72(%ebp), %eax
	cmpl	-68(%ebp), %eax
	je	.L1914
	.loc 1 6274 0
	movl	-68(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	antloc@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	movl	-60(%ebp), %eax
	shrl	$6, %eax
	movl	12(%edx,%eax,8), %esi
	movl	16(%edx,%eax,8), %edi
	movl	-60(%ebp), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	shrdl	%edi, %esi
	shrl	%cl, %edi
	testb	$32, %cl
	je	.L1938
	movl	%edi, %esi
	xorl	%edi, %edi
.L1938:
	movl	%esi, %eax
	andl	$1, %eax
	movl	%edi, %edx
	andl	$0, %edx
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L1914
	.loc 1 6282 0
	movl	-60(%ebp), %edx
	movl	$0, 12(%esp)
	movl	-68(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	hoist_expr_reaches_here_p
	testl	%eax, %eax
	je	.L1914
.LBB69:
	.loc 1 6284 0
	movl	-60(%ebp), %eax
	sall	$2, %eax
	addl	-52(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 6285 0
	movl	-32(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 6290 0
	jmp	.L1918
.L1919:
	.loc 1 6291 0
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
.L1918:
	.loc 1 6290 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movl	28(%eax), %eax
	cmpl	-68(%ebp), %eax
	je	.L1920
	cmpl	$0, -28(%ebp)
	jne	.L1919
.L1920:
	.loc 1 6294 0
	cmpl	$0, -28(%ebp)
	jne	.L1922
	.loc 1 6295 0
	leal	__FUNCTION__.18449@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$6295, 4(%esp)
	leal	.LC7@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1922:
	.loc 1 6297 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 6299 0
	movl	-24(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L1924
	movl	-24(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L1926
	movl	-24(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -84(%ebp)
	jmp	.L1928
.L1926:
	movl	-24(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	single_set_2@PLT
	movl	%eax, -84(%ebp)
.L1928:
	movl	-84(%ebp), %esi
	movl	%esi, -88(%ebp)
	jmp	.L1929
.L1924:
	movl	$0, -88(%ebp)
.L1929:
	movl	-88(%ebp), %edi
	movl	%edi, -20(%ebp)
	.loc 1 6300 0
	cmpl	$0, -20(%ebp)
	jne	.L1930
	.loc 1 6301 0
	leal	__FUNCTION__.18449@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$6301, 4(%esp)
	leal	.LC7@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1930:
	.loc 1 6306 0
	movl	-32(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	jne	.L1932
	.loc 1 6307 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, (%esp)
	call	gen_reg_rtx@PLT
	movl	%eax, %edx
	movl	-32(%ebp), %eax
	movl	%edx, 20(%eax)
.L1932:
	.loc 1 6310 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %edx
	movl	-32(%ebp), %eax
	movl	20(%eax), %ecx
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	gcse_emit_move_after
	.loc 1 6311 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_insn@PLT
	.loc 1 6312 0
	movl	-28(%ebp), %eax
	movb	$1, 8(%eax)
	.loc 1 6313 0
	cmpl	$0, -40(%ebp)
	jne	.L1914
	.loc 1 6315 0
	movl	-60(%ebp), %eax
	sall	$2, %eax
	addl	-52(%ebp), %eax
	movl	(%eax), %edx
	movl	$0, 8(%esp)
	movl	-72(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	insert_insn_end_bb
	.loc 1 6316 0
	movl	$1, -40(%ebp)
.L1914:
.LBE69:
	.loc 1 6264 0
	addl	$1, -56(%ebp)
.L1912:
	movl	-56(%ebp), %eax
	cmpl	-64(%ebp), %eax
	jb	.L1913
.L1910:
	.loc 1 6252 0
	addl	$1, -60(%ebp)
.L1908:
	movl	-72(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	hoist_exprs@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	(%eax), %eax
	cmpl	-60(%ebp), %eax
	ja	.L1909
	.loc 1 6322 0
	movl	-76(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
.L1907:
.LBE67:
	.loc 1 6188 0
	movl	-72(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -72(%ebp)
.L1889:
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, -72(%ebp)
	jne	.L1890
	.loc 1 6325 0
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 6326 0
	addl	$108, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE129:
	.size	hoist_code, .-hoist_code
	.section	.rodata
.LC45:
	.string	"Code Hosting Expressions"
	.text
	.type	one_code_hoisting_pass, @function
one_code_hoisting_pass:
.LFB130:
	.loc 1 6334 0
	pushl	%ebp
.LCFI516:
	movl	%esp, %ebp
.LCFI517:
	pushl	%ebx
.LCFI518:
	subl	$36, %esp
.LCFI519:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 6335 0
	movl	$0, -8(%ebp)
	.loc 1 6337 0
	movl	max_cuid@GOTOFF(%ebx), %edx
	movl	$0, 8(%esp)
	leal	expr_hash_table@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	alloc_hash_table
	.loc 1 6338 0
	leal	expr_hash_table@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	compute_hash_table
	.loc 1 6339 0
	movl	gcse_file@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L1945
	.loc 1 6340 0
	movl	gcse_file@GOTOFF(%ebx), %eax
	leal	expr_hash_table@GOTOFF(%ebx), %edx
	movl	%edx, 8(%esp)
	leal	.LC45@GOTOFF(%ebx), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	dump_hash_table
.L1945:
	.loc 1 6342 0
	movl	8+expr_hash_table@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L1947
	.loc 1 6344 0
	movl	8+expr_hash_table@GOTOFF(%ebx), %eax
	movl	%eax, %edx
	movl	last_basic_block@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	alloc_code_hoist_mem
	.loc 1 6345 0
	call	compute_code_hoist_data
	.loc 1 6346 0
	call	hoist_code
	.loc 1 6347 0
	call	free_code_hoist_mem
.L1947:
	.loc 1 6350 0
	leal	expr_hash_table@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	free_hash_table
	.loc 1 6352 0
	movl	-8(%ebp), %eax
	.loc 1 6353 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE130:
	.size	one_code_hoisting_pass, .-one_code_hoisting_pass
	.type	ldst_entry, @function
ldst_entry:
.LFB131:
	.loc 1 6386 0
	pushl	%ebp
.LCFI520:
	movl	%esp, %ebp
.LCFI521:
	pushl	%ebx
.LCFI522:
	subl	$36, %esp
.LCFI523:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 6389 0
	call	first_ls_expr
	movl	%eax, -8(%ebp)
	jmp	.L1951
.L1952:
	.loc 1 6390 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	expr_equiv_p
	testl	%eax, %eax
	jne	.L1953
	.loc 1 6389 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	next_ls_expr
	movl	%eax, -8(%ebp)
.L1951:
	cmpl	$0, -8(%ebp)
	jne	.L1952
.L1953:
	.loc 1 6393 0
	cmpl	$0, -8(%ebp)
	jne	.L1955
	.loc 1 6395 0
	movl	$36, (%esp)
	call	xmalloc@PLT
	movl	%eax, -8(%ebp)
	.loc 1 6397 0
	movl	pre_ldst_mems@GOTOFF(%ebx), %edx
	movl	-8(%ebp), %eax
	movl	%edx, 16(%eax)
	.loc 1 6398 0
	movl	-8(%ebp), %eax
	movl	$0, (%eax)
	.loc 1 6399 0
	movl	-8(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 6400 0
	movl	-8(%ebp), %eax
	movl	$0, 8(%eax)
	.loc 1 6401 0
	movl	-8(%ebp), %eax
	movl	$0, 12(%eax)
	.loc 1 6402 0
	movl	-8(%ebp), %eax
	movl	$0, 32(%eax)
	.loc 1 6403 0
	movl	-8(%ebp), %eax
	movl	$0, 20(%eax)
	.loc 1 6404 0
	movl	-8(%ebp), %eax
	movl	$0, 24(%eax)
	.loc 1 6405 0
	movl	-8(%ebp), %eax
	movl	$0, 28(%eax)
	.loc 1 6406 0
	movl	-8(%ebp), %eax
	movl	%eax, pre_ldst_mems@GOTOFF(%ebx)
.L1955:
	.loc 1 6409 0
	movl	-8(%ebp), %eax
	.loc 1 6410 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE131:
	.size	ldst_entry, .-ldst_entry
	.type	free_ldst_entry, @function
free_ldst_entry:
.LFB132:
	.loc 1 6417 0
	pushl	%ebp
.LCFI524:
	movl	%esp, %ebp
.LCFI525:
	pushl	%ebx
.LCFI526:
	subl	$4, %esp
.LCFI527:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 6418 0
	movl	8(%ebp), %eax
	addl	$8, %eax
	movl	%eax, (%esp)
	call	free_INSN_LIST_list@PLT
	.loc 1 6419 0
	movl	8(%ebp), %eax
	addl	$12, %eax
	movl	%eax, (%esp)
	call	free_INSN_LIST_list@PLT
	.loc 1 6421 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 6422 0
	addl	$4, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE132:
	.size	free_ldst_entry, .-free_ldst_entry
	.type	free_ldst_mems, @function
free_ldst_mems:
.LFB133:
	.loc 1 6428 0
	pushl	%ebp
.LCFI528:
	movl	%esp, %ebp
.LCFI529:
	pushl	%ebx
.LCFI530:
	subl	$20, %esp
.LCFI531:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
.LBB70:
	.loc 1 6429 0
	jmp	.L1961
.L1962:
	.loc 1 6431 0
	movl	pre_ldst_mems@GOTOFF(%ebx), %eax
	movl	%eax, -8(%ebp)
	.loc 1 6433 0
	movl	pre_ldst_mems@GOTOFF(%ebx), %eax
	movl	16(%eax), %eax
	movl	%eax, pre_ldst_mems@GOTOFF(%ebx)
	.loc 1 6435 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	free_ldst_entry
.L1961:
.LBE70:
	.loc 1 6429 0
	movl	pre_ldst_mems@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L1962
	.loc 1 6438 0
	movl	$0, pre_ldst_mems@GOTOFF(%ebx)
	.loc 1 6439 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE133:
	.size	free_ldst_mems, .-free_ldst_mems
	.section	.rodata
.LC46:
	.string	"LDST list: \n"
.LC47:
	.string	"  Pattern (%3d): "
.LC48:
	.string	"\n\t Loads : "
.LC49:
	.string	"(nil)"
.LC50:
	.string	"\n\tStores : "
.LC51:
	.string	"\n\n"
	.text
	.type	print_ldst_list, @function
print_ldst_list:
.LFB134:
	.loc 1 6446 0
	pushl	%ebp
.LCFI532:
	movl	%esp, %ebp
.LCFI533:
	pushl	%ebx
.LCFI534:
	subl	$36, %esp
.LCFI535:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 6449 0
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$12, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC46@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 6451 0
	call	first_ls_expr
	movl	%eax, -8(%ebp)
	jmp	.L1966
.L1967:
	.loc 1 6453 0
	movl	-8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, 8(%esp)
	leal	.LC47@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 6455 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_rtl@PLT
	.loc 1 6457 0
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$11, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC48@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 6459 0
	movl	-8(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	je	.L1968
	.loc 1 6460 0
	movl	-8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_rtl@PLT
	jmp	.L1970
.L1968:
	.loc 1 6462 0
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$5, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC49@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
.L1970:
	.loc 1 6464 0
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$11, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC50@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 6466 0
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	.L1971
	.loc 1 6467 0
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_rtl@PLT
	jmp	.L1973
.L1971:
	.loc 1 6469 0
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$5, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC49@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
.L1973:
	.loc 1 6471 0
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$2, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC51@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 6451 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	next_ls_expr
	movl	%eax, -8(%ebp)
.L1966:
	cmpl	$0, -8(%ebp)
	jne	.L1967
	.loc 1 6474 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	fputc@PLT
	.loc 1 6475 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE134:
	.size	print_ldst_list, .-print_ldst_list
	.type	find_rtx_in_ldst, @function
find_rtx_in_ldst:
.LFB135:
	.loc 1 6482 0
	pushl	%ebp
.LCFI536:
	movl	%esp, %ebp
.LCFI537:
	pushl	%ebx
.LCFI538:
	subl	$36, %esp
.LCFI539:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 6485 0
	movl	pre_ldst_mems@GOTOFF(%ebx), %eax
	movl	%eax, -8(%ebp)
	jmp	.L1977
.L1978:
	.loc 1 6486 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	expr_equiv_p
	testl	%eax, %eax
	je	.L1979
	movl	-8(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	jne	.L1979
	.loc 1 6487 0
	movl	-8(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L1982
.L1979:
	.loc 1 6485 0
	movl	-8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -8(%ebp)
.L1977:
	cmpl	$0, -8(%ebp)
	jne	.L1978
	.loc 1 6489 0
	movl	$0, -24(%ebp)
.L1982:
	movl	-24(%ebp), %eax
	.loc 1 6490 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE135:
	.size	find_rtx_in_ldst, .-find_rtx_in_ldst
	.type	enumerate_ldsts, @function
enumerate_ldsts:
.LFB136:
	.loc 1 6496 0
	pushl	%ebp
.LCFI540:
	movl	%esp, %ebp
.LCFI541:
	subl	$16, %esp
.LCFI542:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 6498 0
	movl	$0, -4(%ebp)
	.loc 1 6500 0
	movl	pre_ldst_mems@GOTOFF(%ecx), %eax
	movl	%eax, -8(%ebp)
	jmp	.L1986
.L1987:
	.loc 1 6501 0
	movl	-8(%ebp), %edx
	movl	-4(%ebp), %eax
	movl	%eax, 24(%edx)
	addl	$1, -4(%ebp)
	.loc 1 6500 0
	movl	-8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -8(%ebp)
.L1986:
	cmpl	$0, -8(%ebp)
	jne	.L1987
	.loc 1 6503 0
	movl	-4(%ebp), %eax
	.loc 1 6504 0
	leave
	ret
.LFE136:
	.size	enumerate_ldsts, .-enumerate_ldsts
	.type	first_ls_expr, @function
first_ls_expr:
.LFB137:
	.loc 1 6510 0
	pushl	%ebp
.LCFI543:
	movl	%esp, %ebp
.LCFI544:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 6511 0
	movl	pre_ldst_mems@GOTOFF(%ecx), %eax
	.loc 1 6512 0
	popl	%ebp
	ret
.LFE137:
	.size	first_ls_expr, .-first_ls_expr
	.type	next_ls_expr, @function
next_ls_expr:
.LFB138:
	.loc 1 6519 0
	pushl	%ebp
.LCFI545:
	movl	%esp, %ebp
.LCFI546:
	.loc 1 6520 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	.loc 1 6521 0
	popl	%ebp
	ret
.LFE138:
	.size	next_ls_expr, .-next_ls_expr
	.type	simple_mem, @function
simple_mem:
.LFB139:
	.loc 1 6532 0
	pushl	%ebp
.LCFI547:
	movl	%esp, %ebp
.LCFI548:
	pushl	%ebx
.LCFI549:
	subl	$20, %esp
.LCFI550:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 6533 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	je	.L1995
	.loc 1 6534 0
	movl	$0, -8(%ebp)
	jmp	.L1997
.L1995:
	.loc 1 6536 0
	movl	8(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L1998
	.loc 1 6537 0
	movl	$0, -8(%ebp)
	jmp	.L1997
.L1998:
	.loc 1 6539 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	$52, %al
	jne	.L2000
	.loc 1 6540 0
	movl	$0, -8(%ebp)
	jmp	.L1997
.L2000:
	.loc 1 6542 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	rtx_varies_p@PLT
	testl	%eax, %eax
	jne	.L2002
	.loc 1 6543 0
	movl	$1, -8(%ebp)
	jmp	.L1997
.L2002:
	.loc 1 6545 0
	movl	$0, -8(%ebp)
.L1997:
	movl	-8(%ebp), %eax
	.loc 1 6546 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE139:
	.size	simple_mem, .-simple_mem
	.type	invalidate_any_buried_refs, @function
invalidate_any_buried_refs:
.LFB140:
	.loc 1 6559 0
	pushl	%ebp
.LCFI551:
	movl	%esp, %ebp
.LCFI552:
	pushl	%ebx
.LCFI553:
	subl	$20, %esp
.LCFI554:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 6565 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L2006
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	simple_mem
	testl	%eax, %eax
	je	.L2006
	.loc 1 6567 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	ldst_entry
	movl	%eax, -8(%ebp)
	.loc 1 6568 0
	movl	-8(%ebp), %eax
	movl	$1, 20(%eax)
.L2006:
	.loc 1 6572 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_format@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -20(%ebp)
	.loc 1 6574 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_length@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	subl	$1, %eax
	movl	%eax, -16(%ebp)
	jmp	.L2009
.L2010:
	.loc 1 6576 0
	movl	-16(%ebp), %eax
	addl	-20(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$101, %al
	jne	.L2011
	.loc 1 6577 0
	movl	-16(%ebp), %eax
	movl	8(%ebp), %edx
	movl	4(%edx,%eax,8), %eax
	movl	%eax, (%esp)
	call	invalidate_any_buried_refs
	jmp	.L2013
.L2011:
	.loc 1 6578 0
	movl	-16(%ebp), %eax
	addl	-20(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$69, %al
	jne	.L2013
	.loc 1 6579 0
	movl	-16(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	(%eax), %eax
	subl	$1, %eax
	movl	%eax, -12(%ebp)
	jmp	.L2015
.L2016:
	.loc 1 6580 0
	movl	-16(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %edx
	movl	-12(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	%eax, (%esp)
	call	invalidate_any_buried_refs
	.loc 1 6579 0
	subl	$1, -12(%ebp)
.L2015:
	cmpl	$0, -12(%ebp)
	jns	.L2016
.L2013:
	.loc 1 6574 0
	subl	$1, -16(%ebp)
.L2009:
	cmpl	$0, -16(%ebp)
	jns	.L2010
	.loc 1 6582 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE140:
	.size	invalidate_any_buried_refs, .-invalidate_any_buried_refs
	.type	compute_ld_motion_mems, @function
compute_ld_motion_mems:
.LFB141:
	.loc 1 6592 0
	pushl	%ebp
.LCFI555:
	movl	%esp, %ebp
.LCFI556:
	pushl	%ebx
.LCFI557:
	subl	$52, %esp
.LCFI558:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 6597 0
	movl	$0, pre_ldst_mems@GOTOFF(%ebx)
	.loc 1 6599 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	52(%eax), %eax
	movl	%eax, -20(%ebp)
	jmp	.L2020
.L2021:
	.loc 1 6601 0
	movl	-20(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 6602 0
	jmp	.L2022
.L2023:
	.loc 1 6605 0
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L2024
	.loc 1 6607 0
	movl	-16(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L2026
.LBB71:
	.loc 1 6609 0
	movl	-16(%ebp), %eax
	movl	44(%eax), %eax
	movl	12(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 6610 0
	movl	-16(%ebp), %eax
	movl	44(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 6613 0
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L2028
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	simple_mem
	testl	%eax, %eax
	je	.L2028
	.loc 1 6615 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	ldst_entry
	movl	%eax, -24(%ebp)
	.loc 1 6616 0
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L2031
	.loc 1 6617 0
	movl	-24(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	alloc_INSN_LIST@PLT
	movl	%eax, %edx
	movl	-24(%ebp), %eax
	movl	%edx, 8(%eax)
	jmp	.L2034
.L2031:
	.loc 1 6619 0
	movl	-24(%ebp), %eax
	movl	$1, 20(%eax)
	.loc 1 6613 0
	jmp	.L2034
.L2028:
	.loc 1 6624 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	invalidate_any_buried_refs
.L2034:
	.loc 1 6631 0
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L2024
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	simple_mem
	testl	%eax, %eax
	je	.L2024
	.loc 1 6633 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	ldst_entry
	movl	%eax, -24(%ebp)
	.loc 1 6635 0
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	je	.L2038
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$51, %ax
	je	.L2038
	.loc 1 6637 0
	movl	-24(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	alloc_INSN_LIST@PLT
	movl	%eax, %edx
	movl	-24(%ebp), %eax
	movl	%edx, 12(%eax)
	.loc 1 6635 0
	jmp	.L2024
.L2038:
	.loc 1 6639 0
	movl	-24(%ebp), %eax
	movl	$1, 20(%eax)
	jmp	.L2024
.L2026:
.LBE71:
	.loc 1 6643 0
	movl	-16(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, (%esp)
	call	invalidate_any_buried_refs
.L2024:
	.loc 1 6603 0
	movl	-16(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -16(%ebp)
.L2022:
	.loc 1 6602 0
	cmpl	$0, -16(%ebp)
	je	.L2041
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	20(%eax), %eax
	cmpl	-16(%ebp), %eax
	jne	.L2023
.L2041:
	.loc 1 6599 0
	movl	-20(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -20(%ebp)
.L2020:
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, -20(%ebp)
	jne	.L2021
	.loc 1 6647 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE141:
	.size	compute_ld_motion_mems, .-compute_ld_motion_mems
	.type	trim_ld_motion_mems, @function
trim_ld_motion_mems:
.LFB142:
	.loc 1 6654 0
	pushl	%ebp
.LCFI559:
	movl	%esp, %ebp
.LCFI560:
	pushl	%ebx
.LCFI561:
	subl	$52, %esp
.LCFI562:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 6655 0
	movl	$0, -24(%ebp)
	.loc 1 6656 0
	call	first_ls_expr
	movl	%eax, -20(%ebp)
	.loc 1 6658 0
	jmp	.L2068
.L2047:
.LBB72:
	.loc 1 6660 0
	movl	-20(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 6661 0
	movl	$0, -12(%ebp)
	.loc 1 6664 0
	cmpl	$0, -16(%ebp)
	jne	.L2048
.LBB73:
	.loc 1 6668 0
	movl	$1, -16(%ebp)
	.loc 1 6670 0
	movl	$0, -8(%ebp)
	jmp	.L2050
.L2051:
	.loc 1 6672 0
	movl	expr_hash_table@GOTOFF(%ebx), %edx
	movl	-8(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 6673 0
	jmp	.L2052
.L2053:
	.loc 1 6675 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %edx
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	expr_equiv_p
	testl	%eax, %eax
	je	.L2054
	.loc 1 6677 0
	movl	$0, -16(%ebp)
	.loc 1 6678 0
	jmp	.L2056
.L2054:
	.loc 1 6674 0
	movl	-12(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -12(%ebp)
.L2052:
	.loc 1 6673 0
	cmpl	$0, -12(%ebp)
	jne	.L2053
.L2056:
	.loc 1 6670 0
	addl	$1, -8(%ebp)
.L2050:
	movl	4+expr_hash_table@GOTOFF(%ebx), %eax
	cmpl	-8(%ebp), %eax
	jbe	.L2048
	cmpl	$0, -16(%ebp)
	jne	.L2051
.L2048:
.LBE73:
	.loc 1 6683 0
	cmpl	$0, -16(%ebp)
	je	.L2058
	.loc 1 6685 0
	cmpl	$0, -24(%ebp)
	je	.L2060
	.loc 1 6687 0
	movl	-20(%ebp), %eax
	movl	16(%eax), %edx
	movl	-24(%ebp), %eax
	movl	%edx, 16(%eax)
	.loc 1 6688 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	free_ldst_entry
	.loc 1 6689 0
	movl	-24(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -20(%ebp)
	jmp	.L2046
.L2060:
	.loc 1 6693 0
	movl	pre_ldst_mems@GOTOFF(%ebx), %eax
	movl	16(%eax), %eax
	movl	%eax, pre_ldst_mems@GOTOFF(%ebx)
	.loc 1 6694 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	free_ldst_entry
	.loc 1 6695 0
	movl	pre_ldst_mems@GOTOFF(%ebx), %eax
	movl	%eax, -20(%ebp)
	jmp	.L2046
.L2058:
	.loc 1 6701 0
	movl	-20(%ebp), %eax
	movl	%eax, -24(%ebp)
	.loc 1 6702 0
	movl	-20(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 6703 0
	movl	-20(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -20(%ebp)
.L2046:
.L2068:
.LBE72:
	.loc 1 6658 0
	cmpl	$0, -20(%ebp)
	jne	.L2047
	.loc 1 6708 0
	movl	gcse_file@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L2067
	movl	pre_ldst_mems@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L2067
	.loc 1 6709 0
	movl	gcse_file@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	print_ldst_list
.L2067:
	.loc 1 6710 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE142:
	.size	trim_ld_motion_mems, .-trim_ld_motion_mems
	.section	.rodata
	.align 4
.LC52:
	.string	"PRE:  store updated with reaching reg "
.LC53:
	.string	":\n\t"
	.text
	.type	update_ld_motion_stores, @function
update_ld_motion_stores:
.LFB143:
	.loc 1 6722 0
	pushl	%ebp
.LCFI563:
	movl	%esp, %ebp
.LCFI564:
	pushl	%ebx
.LCFI565:
	subl	$52, %esp
.LCFI566:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 6725 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	find_rtx_in_ldst
	movl	%eax, -36(%ebp)
	cmpl	$0, -36(%ebp)
	je	.L2078
.LBB74:
	.loc 1 6735 0
	movl	-36(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 6737 0
	jmp	.L2072
.L2073:
.LBB75:
	.loc 1 6739 0
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 6740 0
	movl	-28(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 6741 0
	movl	-24(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 6742 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 6746 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	cmpl	-20(%ebp), %eax
	je	.L2074
	.loc 1 6749 0
	movl	gcse_file@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L2076
	.loc 1 6751 0
	movl	gcse_file@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	movl	$38, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC52@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 6752 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	gcse_file@GOTOFF(%ebx), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	print_rtl@PLT
	.loc 1 6753 0
	movl	gcse_file@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	movl	$3, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC53@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 6754 0
	movl	gcse_file@GOTOFF(%ebx), %edx
	movl	$8, 8(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	print_inline_rtx@PLT
	.loc 1 6755 0
	movl	gcse_file@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	fputc@PLT
.L2076:
	.loc 1 6758 0
	movl	-24(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_move_insn@PLT
	movl	%eax, -12(%ebp)
	.loc 1 6759 0
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_insn_before@PLT
	movl	%eax, -8(%ebp)
	.loc 1 6760 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	record_one_set
	.loc 1 6761 0
	movl	-24(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 12(%edx)
	.loc 1 6764 0
	movl	-28(%ebp), %eax
	movl	$-1, 52(%eax)
	.loc 1 6765 0
	movl	gcse_create_count@GOTOFF(%ebx), %eax
	addl	$1, %eax
	movl	%eax, gcse_create_count@GOTOFF(%ebx)
.L2074:
.LBE75:
	.loc 1 6737 0
	movl	-32(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -32(%ebp)
.L2072:
	cmpl	$0, -32(%ebp)
	jne	.L2073
.L2078:
.LBE74:
	.loc 1 6768 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE143:
	.size	update_ld_motion_stores, .-update_ld_motion_stores
	.type	reg_set_info, @function
reg_set_info:
.LFB144:
	.loc 1 6788 0
	pushl	%ebp
.LCFI567:
	movl	%esp, %ebp
.LCFI568:
	pushl	%edi
.LCFI569:
	pushl	%esi
.LCFI570:
	pushl	%ebx
.LCFI571:
	subl	$20, %esp
.LCFI572:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 6789 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L2080
	.loc 1 6790 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 8(%ebp)
.L2080:
	.loc 1 6792 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L2084
	.loc 1 6793 0
	movl	regvec@GOTOFF(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %ecx
	shrl	$6, %ecx
	movl	%ecx, -28(%ebp)
	movl	regvec@GOTOFF(%ebx), %eax
	movl	(%eax), %edx
	movl	%ecx, %eax
	movl	12(%edx,%eax,8), %esi
	movl	16(%edx,%eax,8), %edi
	movl	%esi, -24(%ebp)
	movl	%edi, -20(%ebp)
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L2085
	movl	%esi, %edi
	xorl	%esi, %esi
.L2085:
	movl	-24(%ebp), %eax
	orl	%esi, %eax
	movl	-20(%ebp), %edx
	orl	%edi, %edx
	movl	-28(%ebp), %edi
	movl	-32(%ebp), %ecx
	movl	%eax, 12(%ecx,%edi,8)
	movl	%edx, 16(%ecx,%edi,8)
.L2084:
	.loc 1 6794 0
	addl	$20, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE144:
	.size	reg_set_info, .-reg_set_info
	.type	store_ops_ok, @function
store_ops_ok:
.LFB145:
	.loc 1 6803 0
	pushl	%ebp
.LCFI573:
	movl	%esp, %ebp
.LCFI574:
	pushl	%edi
.LCFI575:
	pushl	%esi
.LCFI576:
	pushl	%ebx
.LCFI577:
	subl	$48, %esp
.LCFI578:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	jmp	.L2113
.L2087:
.L2113:
	.loc 1 6811 0
	cmpl	$0, 8(%ebp)
	jne	.L2088
	.loc 1 6812 0
	movl	$1, -48(%ebp)
	jmp	.L2090
.L2088:
	.loc 1 6814 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -28(%ebp)
	.loc 1 6815 0
	movl	-28(%ebp), %eax
	subl	$54, %eax
	movl	%eax, -52(%ebp)
	cmpl	$55, -52(%ebp)
	ja	.L2091
	movl	-52(%ebp), %eax
	sall	$2, %eax
	movl	.L2096@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L2096:
	.long	.L2092@GOTOFF
	.long	.L2092@GOTOFF
	.long	.L2091@GOTOFF
	.long	.L2091@GOTOFF
	.long	.L2091@GOTOFF
	.long	.L2091@GOTOFF
	.long	.L2091@GOTOFF
	.long	.L2091@GOTOFF
	.long	.L2091@GOTOFF
	.long	.L2091@GOTOFF
	.long	.L2092@GOTOFF
	.long	.L2092@GOTOFF
	.long	.L2092@GOTOFF
	.long	.L2091@GOTOFF
	.long	.L2092@GOTOFF
	.long	.L2092@GOTOFF
	.long	.L2091@GOTOFF
	.long	.L2093@GOTOFF
	.long	.L2091@GOTOFF
	.long	.L2091@GOTOFF
	.long	.L2091@GOTOFF
	.long	.L2091@GOTOFF
	.long	.L2094@GOTOFF
	.long	.L2092@GOTOFF
	.long	.L2092@GOTOFF
	.long	.L2092@GOTOFF
	.long	.L2091@GOTOFF
	.long	.L2091@GOTOFF
	.long	.L2091@GOTOFF
	.long	.L2091@GOTOFF
	.long	.L2091@GOTOFF
	.long	.L2091@GOTOFF
	.long	.L2091@GOTOFF
	.long	.L2091@GOTOFF
	.long	.L2091@GOTOFF
	.long	.L2091@GOTOFF
	.long	.L2091@GOTOFF
	.long	.L2091@GOTOFF
	.long	.L2091@GOTOFF
	.long	.L2091@GOTOFF
	.long	.L2091@GOTOFF
	.long	.L2091@GOTOFF
	.long	.L2091@GOTOFF
	.long	.L2091@GOTOFF
	.long	.L2091@GOTOFF
	.long	.L2091@GOTOFF
	.long	.L2091@GOTOFF
	.long	.L2091@GOTOFF
	.long	.L2091@GOTOFF
	.long	.L2091@GOTOFF
	.long	.L2091@GOTOFF
	.long	.L2091@GOTOFF
	.long	.L2095@GOTOFF
	.long	.L2095@GOTOFF
	.long	.L2095@GOTOFF
	.long	.L2095@GOTOFF
	.text
.L2093:
	.loc 1 6820 0
	movl	12(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_set_in_block@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	shrl	$6, %eax
	movl	12(%edx,%eax,8), %esi
	movl	16(%edx,%eax,8), %edi
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	%esi, %eax
	movl	%edi, %edx
	shrdl	%edx, %eax
	shrl	%cl, %edx
	testb	$32, %cl
	je	.L2114
	movl	%edx, %eax
	xorl	%edx, %edx
.L2114:
	movl	%eax, %edx
	andl	$1, %edx
	movl	%edx, -48(%ebp)
	jmp	.L2090
.L2094:
	.loc 1 6823 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 8(%ebp)
	.loc 1 6824 0
	jmp	.L2087
.L2095:
	.loc 1 6830 0
	movl	$0, -48(%ebp)
	jmp	.L2090
.L2092:
	.loc 1 6842 0
	movl	$1, -48(%ebp)
	jmp	.L2090
.L2091:
	.loc 1 6848 0
	movl	-28(%ebp), %edx
	movl	rtx_length@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	subl	$1, %eax
	movl	%eax, -32(%ebp)
	.loc 1 6849 0
	movl	-28(%ebp), %edx
	movl	rtx_format@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -24(%ebp)
	.loc 1 6851 0
	jmp	.L2097
.L2098:
	.loc 1 6853 0
	movl	-32(%ebp), %eax
	addl	-24(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$101, %al
	jne	.L2099
.LBB76:
	.loc 1 6855 0
	movl	-32(%ebp), %eax
	movl	8(%ebp), %edx
	movl	4(%edx,%eax,8), %eax
	movl	%eax, -20(%ebp)
	.loc 1 6860 0
	cmpl	$0, -32(%ebp)
	jne	.L2101
	.loc 1 6862 0
	movl	-20(%ebp), %eax
	movl	%eax, 8(%ebp)
	.loc 1 6863 0
	jmp	.L2087
.L2101:
	.loc 1 6866 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	store_ops_ok
	testl	%eax, %eax
	jne	.L2105
	.loc 1 6867 0
	movl	$0, -48(%ebp)
	jmp	.L2090
.L2099:
.LBE76:
	.loc 1 6869 0
	movl	-32(%ebp), %eax
	addl	-24(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$69, %al
	jne	.L2105
.LBB77:
	.loc 1 6873 0
	movl	$0, -16(%ebp)
	jmp	.L2107
.L2108:
	.loc 1 6875 0
	movl	-32(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %edx
	movl	-16(%ebp), %eax
	movl	4(%edx,%eax,4), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	store_ops_ok
	testl	%eax, %eax
	jne	.L2109
	.loc 1 6876 0
	movl	$0, -48(%ebp)
	jmp	.L2090
.L2109:
	.loc 1 6873 0
	addl	$1, -16(%ebp)
.L2107:
	movl	-32(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	(%eax), %eax
	cmpl	-16(%ebp), %eax
	jg	.L2108
.L2105:
.LBE77:
	.loc 1 6851 0
	subl	$1, -32(%ebp)
.L2097:
	cmpl	$0, -32(%ebp)
	jns	.L2098
	.loc 1 6881 0
	movl	$1, -48(%ebp)
.L2090:
	movl	-48(%ebp), %eax
	.loc 1 6882 0
	addl	$48, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE145:
	.size	store_ops_ok, .-store_ops_ok
	.type	find_moveable_store, @function
find_moveable_store:
.LFB146:
	.loc 1 6889 0
	pushl	%ebp
.LCFI579:
	movl	%esp, %ebp
.LCFI580:
	pushl	%ebx
.LCFI581:
	subl	$36, %esp
.LCFI582:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 6891 0
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 6893 0
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L2126
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$51, %ax
	jne	.L2118
	.loc 1 6895 0
	jmp	.L2126
.L2118:
	.loc 1 6897 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 6899 0
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L2126
	movl	-8(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L2126
	movl	-8(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	$52, %al
	jne	.L2123
	.loc 1 6901 0
	jmp	.L2126
.L2123:
	.loc 1 6903 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	jne	.L2126
	.loc 1 6906 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	rtx_varies_p@PLT
	testl	%eax, %eax
	jne	.L2126
	.loc 1 6909 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	ldst_entry
	movl	%eax, -12(%ebp)
	.loc 1 6910 0
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	alloc_INSN_LIST@PLT
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	movl	%edx, 12(%eax)
.L2126:
	.loc 1 6911 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE146:
	.size	find_moveable_store, .-find_moveable_store
	.section	.rodata
.LC54:
	.string	"Store Motion Expressions.\n"
	.text
	.type	compute_store_table, @function
compute_store_table:
.LFB147:
	.loc 1 6918 0
	pushl	%ebp
.LCFI583:
	movl	%esp, %ebp
.LCFI584:
	pushl	%edi
.LCFI585:
	pushl	%esi
.LCFI586:
	pushl	%ebx
.LCFI587:
	subl	$76, %esp
.LCFI588:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 6924 0
	call	max_reg_num@PLT
	movl	%eax, max_gcse_regno@GOTOFF(%ebx)
	.loc 1 6926 0
	movl	max_gcse_regno@GOTOFF(%ebx), %edx
	movl	last_basic_block@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	sbitmap_vector_alloc@PLT
	movl	%eax, reg_set_in_block@GOTOFF(%ebx)
	.loc 1 6928 0
	movl	last_basic_block@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	reg_set_in_block@GOTOFF(%ebx), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	sbitmap_vector_zero@PLT
	.loc 1 6929 0
	movl	$0, pre_ldst_mems@GOTOFF(%ebx)
	.loc 1 6932 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	52(%eax), %eax
	movl	%eax, -36(%ebp)
	jmp	.L2128
.L2129:
	.loc 1 6934 0
	movl	-36(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_set_in_block@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, regvec@GOTOFF(%ebx)
	.loc 1 6935 0
	movl	-36(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 6936 0
	jmp	.L2130
.L2131:
	.loc 1 6940 0
	movl	-28(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L2132
	.loc 1 6943 0
	movl	-28(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$44, %ax
	jne	.L2134
.LBB78:
	.loc 1 6945 0
	movb	$0, -17(%ebp)
	.loc 1 6952 0
	movl	$0, -32(%ebp)
	jmp	.L2136
.L2137:
	.loc 1 6953 0
	cmpb	$0, -17(%ebp)
	jne	.L2138
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
	je	.L2149
	movl	%edx, %eax
	xorl	%edx, %edx
.L2149:
	andl	$1, %eax
	testl	%eax, %eax
	je	.L2140
.L2138:
	.loc 1 6955 0
	movl	-36(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_set_in_block@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -64(%ebp)
	movl	-32(%ebp), %eax
	movl	%eax, %ecx
	shrl	$6, %ecx
	movl	%ecx, -60(%ebp)
	movl	-36(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_set_in_block@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	movl	%ecx, %eax
	movl	12(%edx,%eax,8), %esi
	movl	16(%edx,%eax,8), %edi
	movl	%esi, -56(%ebp)
	movl	%edi, -52(%ebp)
	movl	-32(%ebp), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L2148
	movl	%esi, %edi
	xorl	%esi, %esi
.L2148:
	movl	-56(%ebp), %eax
	orl	%esi, %eax
	movl	-52(%ebp), %edx
	orl	%edi, %edx
	movl	-60(%ebp), %edi
	movl	-64(%ebp), %ecx
	movl	%eax, 12(%ecx,%edi,8)
	movl	%edx, 16(%ecx,%edi,8)
.L2140:
	.loc 1 6952 0
	addl	$1, -32(%ebp)
.L2136:
	cmpl	$175, -32(%ebp)
	jbe	.L2137
.L2134:
.LBE78:
	.loc 1 6958 0
	movl	-28(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 6959 0
	movl	$0, 8(%esp)
	leal	reg_set_info@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	note_stores@PLT
	.loc 1 6962 0
	movl	-24(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L2132
	.loc 1 6963 0
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	find_moveable_store
.L2132:
	.loc 1 6937 0
	movl	-28(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -28(%ebp)
.L2130:
	.loc 1 6936 0
	cmpl	$0, -28(%ebp)
	je	.L2142
	movl	-36(%ebp), %eax
	movl	4(%eax), %eax
	movl	12(%eax), %eax
	cmpl	-28(%ebp), %eax
	jne	.L2131
.L2142:
	.loc 1 6932 0
	movl	-36(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -36(%ebp)
.L2128:
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, -36(%ebp)
	jne	.L2129
	.loc 1 6967 0
	call	enumerate_ldsts
	movl	%eax, -40(%ebp)
	.loc 1 6969 0
	movl	gcse_file@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L2145
	.loc 1 6971 0
	movl	gcse_file@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	movl	$26, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC54@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 6972 0
	movl	gcse_file@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	print_ldst_list
.L2145:
	.loc 1 6975 0
	movl	-40(%ebp), %eax
	.loc 1 6976 0
	addl	$76, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE147:
	.size	compute_store_table, .-compute_store_table
	.type	load_kills_store, @function
load_kills_store:
.LFB148:
	.loc 1 6983 0
	pushl	%ebp
.LCFI589:
	movl	%esp, %ebp
.LCFI590:
	pushl	%ebx
.LCFI591:
	subl	$20, %esp
.LCFI592:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 6984 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	rtx_addr_varies_p@GOT(%ebx), %eax
	movl	%eax, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	true_dependence@PLT
	testl	%eax, %eax
	je	.L2151
	.loc 1 6985 0
	movl	$1, -8(%ebp)
	jmp	.L2153
.L2151:
	.loc 1 6986 0
	movl	$0, -8(%ebp)
.L2153:
	movl	-8(%ebp), %eax
	.loc 1 6987 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE148:
	.size	load_kills_store, .-load_kills_store
	.type	find_loads, @function
find_loads:
.LFB149:
	.loc 1 6995 0
	pushl	%ebp
.LCFI593:
	movl	%esp, %ebp
.LCFI594:
	pushl	%ebx
.LCFI595:
	subl	$36, %esp
.LCFI596:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 6998 0
	movl	$0, -8(%ebp)
	.loc 1 7000 0
	cmpl	$0, 8(%ebp)
	jne	.L2156
	.loc 1 7001 0
	movl	$0, -24(%ebp)
	jmp	.L2158
.L2156:
	.loc 1 7003 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L2159
	.loc 1 7004 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, 8(%ebp)
.L2159:
	.loc 1 7006 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L2161
	.loc 1 7008 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	load_kills_store
	testl	%eax, %eax
	je	.L2161
	.loc 1 7009 0
	movl	$1, -24(%ebp)
	jmp	.L2158
.L2161:
	.loc 1 7013 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_format@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -20(%ebp)
	.loc 1 7015 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_length@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	subl	$1, %eax
	movl	%eax, -16(%ebp)
	jmp	.L2164
.L2165:
	.loc 1 7017 0
	movl	-16(%ebp), %eax
	addl	-20(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$101, %al
	jne	.L2166
	.loc 1 7018 0
	movl	-16(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	find_loads
	orl	%eax, -8(%ebp)
	jmp	.L2168
.L2166:
	.loc 1 7019 0
	movl	-16(%ebp), %eax
	addl	-20(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$69, %al
	jne	.L2168
	.loc 1 7020 0
	movl	-16(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	(%eax), %eax
	subl	$1, %eax
	movl	%eax, -12(%ebp)
	jmp	.L2170
.L2171:
	.loc 1 7021 0
	movl	-16(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %edx
	movl	-12(%ebp), %eax
	movl	4(%edx,%eax,4), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	find_loads
	orl	%eax, -8(%ebp)
	.loc 1 7020 0
	subl	$1, -12(%ebp)
.L2170:
	cmpl	$0, -12(%ebp)
	jns	.L2171
.L2168:
	.loc 1 7015 0
	subl	$1, -16(%ebp)
.L2164:
	cmpl	$0, -16(%ebp)
	js	.L2172
	cmpl	$0, -8(%ebp)
	je	.L2165
.L2172:
	.loc 1 7023 0
	movl	-8(%ebp), %eax
	movl	%eax, -24(%ebp)
.L2158:
	movl	-24(%ebp), %eax
	.loc 1 7024 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE149:
	.size	find_loads, .-find_loads
	.type	store_killed_in_insn, @function
store_killed_in_insn:
.LFB150:
	.loc 1 7032 0
	pushl	%ebp
.LCFI597:
	movl	%esp, %ebp
.LCFI598:
	pushl	%ebx
.LCFI599:
	subl	$36, %esp
.LCFI600:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 7033 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	je	.L2176
	.loc 1 7034 0
	movl	$0, -28(%ebp)
	jmp	.L2178
.L2176:
	.loc 1 7036 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$44, %ax
	jne	.L2179
	.loc 1 7040 0
	movl	12(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L2181
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	pure_call_p@PLT
	testl	%eax, %eax
	je	.L2183
.L2181:
	movl	$1, -24(%ebp)
	jmp	.L2184
.L2183:
	movl	$0, -24(%ebp)
.L2184:
	movl	-24(%ebp), %eax
	movl	%eax, -28(%ebp)
	jmp	.L2178
.L2179:
	.loc 1 7043 0
	movl	12(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L2185
.LBB79:
	.loc 1 7045 0
	movl	12(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 7047 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L2187
	movl	-8(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	expr_equiv_p
	testl	%eax, %eax
	jne	.L2187
	.loc 1 7049 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	find_loads
	testl	%eax, %eax
	je	.L2187
	.loc 1 7050 0
	movl	$1, -28(%ebp)
	jmp	.L2178
.L2187:
	.loc 1 7051 0
	movl	-8(%ebp), %eax
	movl	12(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	find_loads
	movl	%eax, -28(%ebp)
	jmp	.L2178
.L2185:
.LBE79:
	.loc 1 7054 0
	movl	12(%ebp), %eax
	movl	44(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	find_loads
	movl	%eax, -28(%ebp)
.L2178:
	movl	-28(%ebp), %eax
	.loc 1 7055 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE150:
	.size	store_killed_in_insn, .-store_killed_in_insn
	.type	store_killed_after, @function
store_killed_after:
.LFB151:
	.loc 1 7064 0
	pushl	%ebp
.LCFI601:
	movl	%esp, %ebp
.LCFI602:
	subl	$40, %esp
.LCFI603:
	.loc 1 7065 0
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -4(%ebp)
	.loc 1 7067 0
	movl	12(%ebp), %eax
	cmpl	-4(%ebp), %eax
	jne	.L2193
	.loc 1 7068 0
	movl	$0, -20(%ebp)
	jmp	.L2195
.L2193:
	.loc 1 7075 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	store_ops_ok
	testl	%eax, %eax
	jne	.L2198
	.loc 1 7076 0
	movl	$1, -20(%ebp)
	jmp	.L2195
.L2199:
	.loc 1 7079 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	store_killed_in_insn
	testl	%eax, %eax
	je	.L2200
	.loc 1 7080 0
	movl	$1, -20(%ebp)
	jmp	.L2195
.L2200:
	.loc 1 7078 0
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 12(%ebp)
.L2198:
	cmpl	$0, 12(%ebp)
	je	.L2202
	movl	-4(%ebp), %eax
	movl	20(%eax), %eax
	cmpl	12(%ebp), %eax
	jne	.L2199
.L2202:
	.loc 1 7082 0
	movl	$0, -20(%ebp)
.L2195:
	movl	-20(%ebp), %eax
	.loc 1 7083 0
	leave
	ret
.LFE151:
	.size	store_killed_after, .-store_killed_after
	.type	store_killed_before, @function
store_killed_before:
.LFB152:
	.loc 1 7091 0
	pushl	%ebp
.LCFI604:
	movl	%esp, %ebp
.LCFI605:
	subl	$40, %esp
.LCFI606:
	.loc 1 7092 0
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -4(%ebp)
	.loc 1 7094 0
	movl	12(%ebp), %eax
	cmpl	-4(%ebp), %eax
	jne	.L2206
	.loc 1 7095 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	store_killed_in_insn
	movl	%eax, -20(%ebp)
	jmp	.L2208
.L2206:
	.loc 1 7102 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	store_ops_ok
	testl	%eax, %eax
	jne	.L2211
	.loc 1 7103 0
	movl	$1, -20(%ebp)
	jmp	.L2208
.L2212:
	.loc 1 7106 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	store_killed_in_insn
	testl	%eax, %eax
	je	.L2213
	.loc 1 7107 0
	movl	$1, -20(%ebp)
	jmp	.L2208
.L2213:
	.loc 1 7105 0
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, 12(%ebp)
.L2211:
	cmpl	$0, 12(%ebp)
	je	.L2215
	movl	-4(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	12(%ebp), %eax
	jne	.L2212
.L2215:
	.loc 1 7109 0
	movl	$0, -20(%ebp)
.L2208:
	movl	-20(%ebp), %eax
	.loc 1 7110 0
	leave
	ret
.LFE152:
	.size	store_killed_before, .-store_killed_before
	.section	.rodata
.LC55:
	.string	"Removing redundant store:\n"
	.align 4
.LC56:
	.string	"ST_avail and ST_antic (shown under loads..)\n"
.LC57:
	.string	"st_antloc"
.LC58:
	.string	"st_kill"
.LC59:
	.string	"Transpt"
.LC60:
	.string	"st_avloc"
	.text
	.type	build_store_vectors, @function
build_store_vectors:
.LFB153:
	.loc 1 7120 0
	pushl	%ebp
.LCFI607:
	movl	%esp, %ebp
.LCFI608:
	pushl	%edi
.LCFI609:
	pushl	%esi
.LCFI610:
	pushl	%ebx
.LCFI611:
	subl	$124, %esp
.LCFI612:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 7127 0
	movl	num_stores@GOTOFF(%ebx), %eax
	movl	%eax, %edx
	movl	last_basic_block@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	sbitmap_vector_alloc@PLT
	movl	%eax, ae_gen@GOTOFF(%ebx)
	.loc 1 7128 0
	movl	last_basic_block@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	ae_gen@GOTOFF(%ebx), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	sbitmap_vector_zero@PLT
	.loc 1 7130 0
	movl	num_stores@GOTOFF(%ebx), %eax
	movl	%eax, %edx
	movl	last_basic_block@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	sbitmap_vector_alloc@PLT
	movl	%eax, st_antloc@GOTOFF(%ebx)
	.loc 1 7131 0
	movl	last_basic_block@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	st_antloc@GOTOFF(%ebx), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	sbitmap_vector_zero@PLT
	.loc 1 7133 0
	call	first_ls_expr
	movl	%eax, -28(%ebp)
	jmp	.L2219
.L2220:
.LBB80:
	.loc 1 7137 0
	movl	-28(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -48(%ebp)
	.loc 1 7138 0
	movl	-28(%ebp), %eax
	movl	$0, 12(%eax)
	.loc 1 7140 0
	movl	-48(%ebp), %eax
	movl	%eax, -32(%ebp)
	jmp	.L2221
.L2222:
	.loc 1 7142 0
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -36(%ebp)
	.loc 1 7143 0
	movl	-36(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, -44(%ebp)
	.loc 1 7145 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %edx
	movl	-44(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	store_killed_after
	testl	%eax, %eax
	jne	.L2223
	.loc 1 7152 0
	movl	-44(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	ae_gen@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	movl	-28(%ebp), %eax
	movl	24(%eax), %eax
	shrl	$6, %eax
	movl	12(%edx,%eax,8), %esi
	movl	16(%edx,%eax,8), %edi
	movl	-28(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	shrdl	%edi, %esi
	shrl	%cl, %edi
	testb	$32, %cl
	je	.L2254
	movl	%edi, %esi
	xorl	%edi, %edi
.L2254:
	movl	%esi, %eax
	andl	$1, %eax
	movl	%edi, %edx
	andl	$0, %edx
	testl	%eax, %eax
	je	.L2225
.LBB81:
	.loc 1 7156 0
	movl	-28(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L2227
.L2228:
	.loc 1 7157 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	28(%eax), %eax
	cmpl	-44(%ebp), %eax
	je	.L2229
	.loc 1 7156 0
	movl	-24(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -24(%ebp)
.L2227:
	cmpl	$0, -24(%ebp)
	jne	.L2228
.L2229:
	.loc 1 7159 0
	cmpl	$0, -24(%ebp)
	je	.L2225
.LBB82:
	.loc 1 7161 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, (%esp)
	call	gen_reg_rtx@PLT
	movl	%eax, -20(%ebp)
	.loc 1 7162 0
	movl	gcse_file@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L2232
	.loc 1 7163 0
	movl	gcse_file@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	movl	$26, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC55@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
.L2232:
	.loc 1 7164 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %edx
	movl	-44(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	replace_store_insn
	.loc 1 7165 0
	movl	-24(%ebp), %edx
	movl	-36(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 7166 0
	jmp	.L2234
.L2225:
.LBE82:
.LBE81:
	.loc 1 7169 0
	movl	-44(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	ae_gen@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -112(%ebp)
	movl	-28(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, %ecx
	shrl	$6, %ecx
	movl	%ecx, -108(%ebp)
	movl	-44(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	ae_gen@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	movl	%ecx, %eax
	movl	12(%edx,%eax,8), %esi
	movl	16(%edx,%eax,8), %edi
	movl	%esi, -104(%ebp)
	movl	%edi, -100(%ebp)
	movl	-28(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L2253
	movl	%esi, %edi
	xorl	%esi, %esi
.L2253:
	movl	-104(%ebp), %eax
	orl	%esi, %eax
	movl	-100(%ebp), %edx
	orl	%edi, %edx
	movl	-108(%ebp), %edi
	movl	-112(%ebp), %ecx
	movl	%eax, 12(%ecx,%edi,8)
	movl	%edx, 16(%ecx,%edi,8)
	.loc 1 7170 0
	movl	-28(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	alloc_INSN_LIST@PLT
	movl	%eax, %edx
	movl	-28(%ebp), %eax
	movl	%edx, 12(%eax)
.L2223:
	.loc 1 7174 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %edx
	movl	-44(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	store_killed_before
	testl	%eax, %eax
	jne	.L2234
	.loc 1 7176 0
	movl	-36(%ebp), %eax
	movl	28(%eax), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	st_antloc@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -96(%ebp)
	movl	-28(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, %ecx
	shrl	$6, %ecx
	movl	%ecx, -92(%ebp)
	movl	-36(%ebp), %eax
	movl	28(%eax), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	st_antloc@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	movl	%ecx, %eax
	movl	12(%edx,%eax,8), %esi
	movl	16(%edx,%eax,8), %edi
	movl	%esi, -88(%ebp)
	movl	%edi, -84(%ebp)
	movl	-28(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L2252
	movl	%esi, %edi
	xorl	%esi, %esi
.L2252:
	movl	-88(%ebp), %eax
	orl	%esi, %eax
	movl	-84(%ebp), %edx
	orl	%edi, %edx
	movl	-92(%ebp), %edi
	movl	-96(%ebp), %ecx
	movl	%eax, 12(%ecx,%edi,8)
	movl	%edx, 16(%ecx,%edi,8)
	.loc 1 7177 0
	movl	-28(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	alloc_INSN_LIST@PLT
	movl	%eax, %edx
	movl	-28(%ebp), %eax
	movl	%edx, 8(%eax)
.L2234:
	.loc 1 7140 0
	movl	-32(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -32(%ebp)
.L2221:
	cmpl	$0, -32(%ebp)
	jne	.L2222
	.loc 1 7183 0
	leal	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	free_INSN_LIST_list@PLT
.LBE80:
	.loc 1 7133 0
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	next_ls_expr
	movl	%eax, -28(%ebp)
.L2219:
	cmpl	$0, -28(%ebp)
	jne	.L2220
	.loc 1 7186 0
	movl	num_stores@GOTOFF(%ebx), %eax
	movl	%eax, %edx
	movl	last_basic_block@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	sbitmap_vector_alloc@PLT
	movl	%eax, ae_kill@GOTOFF(%ebx)
	.loc 1 7187 0
	movl	last_basic_block@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	ae_kill@GOTOFF(%ebx), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	sbitmap_vector_zero@PLT
	.loc 1 7189 0
	movl	num_stores@GOTOFF(%ebx), %eax
	movl	%eax, %edx
	movl	last_basic_block@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	sbitmap_vector_alloc@PLT
	movl	%eax, transp@GOTOFF(%ebx)
	.loc 1 7190 0
	movl	last_basic_block@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	transp@GOTOFF(%ebx), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	sbitmap_vector_zero@PLT
	.loc 1 7192 0
	call	first_ls_expr
	movl	%eax, -28(%ebp)
	jmp	.L2238
.L2239:
	.loc 1 7193 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	52(%eax), %eax
	movl	%eax, -40(%ebp)
	jmp	.L2240
.L2241:
	.loc 1 7195 0
	movl	-40(%ebp), %eax
	movl	(%eax), %edx
	movl	-28(%ebp), %eax
	movl	4(%eax), %ecx
	movl	-40(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	store_killed_after
	testl	%eax, %eax
	je	.L2242
	.loc 1 7213 0
	movl	-40(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	ae_kill@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -80(%ebp)
	movl	-28(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, %ecx
	shrl	$6, %ecx
	movl	%ecx, -76(%ebp)
	movl	-40(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	ae_kill@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	movl	%ecx, %eax
	movl	12(%edx,%eax,8), %esi
	movl	16(%edx,%eax,8), %edi
	movl	%esi, -72(%ebp)
	movl	%edi, -68(%ebp)
	movl	-28(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L2251
	movl	%esi, %edi
	xorl	%esi, %esi
.L2251:
	movl	-72(%ebp), %eax
	orl	%esi, %eax
	movl	-68(%ebp), %edx
	orl	%edi, %edx
	movl	-76(%ebp), %edi
	movl	-80(%ebp), %ecx
	movl	%eax, 12(%ecx,%edi,8)
	movl	%edx, 16(%ecx,%edi,8)
	jmp	.L2244
.L2242:
	.loc 1 7216 0
	movl	-40(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	transp@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -64(%ebp)
	movl	-28(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, %ecx
	shrl	$6, %ecx
	movl	%ecx, -60(%ebp)
	movl	-40(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	transp@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	movl	%ecx, %eax
	movl	12(%edx,%eax,8), %esi
	movl	16(%edx,%eax,8), %edi
	movl	%esi, -56(%ebp)
	movl	%edi, -52(%ebp)
	movl	-28(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L2250
	movl	%esi, %edi
	xorl	%esi, %esi
.L2250:
	movl	-56(%ebp), %eax
	orl	%esi, %eax
	movl	-52(%ebp), %edx
	orl	%edi, %edx
	movl	-60(%ebp), %edi
	movl	-64(%ebp), %ecx
	movl	%eax, 12(%ecx,%edi,8)
	movl	%edx, 16(%ecx,%edi,8)
.L2244:
	.loc 1 7193 0
	movl	-40(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -40(%ebp)
.L2240:
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, -40(%ebp)
	jne	.L2241
	.loc 1 7192 0
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	next_ls_expr
	movl	%eax, -28(%ebp)
.L2238:
	cmpl	$0, -28(%ebp)
	jne	.L2239
	.loc 1 7223 0
	movl	gcse_file@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L2249
	.loc 1 7225 0
	movl	gcse_file@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	movl	$44, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC56@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 7226 0
	movl	gcse_file@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	print_ldst_list
	.loc 1 7227 0
	movl	last_basic_block@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	st_antloc@GOTOFF(%ebx), %edx
	movl	gcse_file@GOTOFF(%ebx), %ecx
	movl	%eax, 16(%esp)
	movl	%edx, 12(%esp)
	leal	.LC5@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	.LC57@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	dump_sbitmap_vector@PLT
	.loc 1 7228 0
	movl	last_basic_block@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	ae_kill@GOTOFF(%ebx), %edx
	movl	gcse_file@GOTOFF(%ebx), %ecx
	movl	%eax, 16(%esp)
	movl	%edx, 12(%esp)
	leal	.LC5@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	.LC58@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	dump_sbitmap_vector@PLT
	.loc 1 7229 0
	movl	last_basic_block@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	transp@GOTOFF(%ebx), %edx
	movl	gcse_file@GOTOFF(%ebx), %ecx
	movl	%eax, 16(%esp)
	movl	%edx, 12(%esp)
	leal	.LC5@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	.LC59@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	dump_sbitmap_vector@PLT
	.loc 1 7230 0
	movl	last_basic_block@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	ae_gen@GOTOFF(%ebx), %edx
	movl	gcse_file@GOTOFF(%ebx), %ecx
	movl	%eax, 16(%esp)
	movl	%edx, 12(%esp)
	leal	.LC5@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	.LC60@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	dump_sbitmap_vector@PLT
.L2249:
	.loc 1 7232 0
	addl	$124, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE153:
	.size	build_store_vectors, .-build_store_vectors
	.section	.rodata
	.align 4
.LC61:
	.string	"STORE_MOTION  insert store at start of BB %d:\n"
	.text
	.type	insert_insn_start_bb, @function
insert_insn_start_bb:
.LFB154:
	.loc 1 7241 0
	pushl	%ebp
.LCFI613:
	movl	%esp, %ebp
.LCFI614:
	pushl	%ebx
.LCFI615:
	subl	$36, %esp
.LCFI616:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 7243 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 7244 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 7245 0
	jmp	.L2256
.L2257:
	.loc 1 7247 0
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$46, %ax
	je	.L2258
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	jne	.L2260
	movl	-8(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	$-83, %eax
	jne	.L2260
.L2258:
	.loc 1 7251 0
	movl	-8(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 7252 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-12(%ebp), %eax
	je	.L2260
	.loc 1 7254 0
	movl	-8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -8(%ebp)
.L2256:
	.loc 1 7245 0
	cmpl	$0, -8(%ebp)
	jne	.L2257
.L2260:
	.loc 1 7257 0
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_insn_after@PLT
	movl	%eax, 8(%ebp)
	.loc 1 7259 0
	movl	gcse_file@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L2265
	.loc 1 7261 0
	movl	12(%ebp), %eax
	movl	44(%eax), %eax
	movl	gcse_file@GOTOFF(%ebx), %edx
	movl	%eax, 8(%esp)
	leal	.LC61@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
	.loc 1 7263 0
	movl	gcse_file@GOTOFF(%ebx), %edx
	movl	$6, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	print_inline_rtx@PLT
	.loc 1 7264 0
	movl	gcse_file@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	fputc@PLT
.L2265:
	.loc 1 7266 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE154:
	.size	insert_insn_start_bb, .-insert_insn_start_bb
	.section	.rodata
	.type	__FUNCTION__.19620, @object
	.size	__FUNCTION__.19620, 13
__FUNCTION__.19620:
	.string	"insert_store"
	.align 4
.LC62:
	.string	"STORE_MOTION  insert insn on edge (%d, %d):\n"
	.text
	.type	insert_store, @function
insert_store:
.LFB155:
	.loc 1 7276 0
	pushl	%ebp
.LCFI617:
	movl	%esp, %ebp
.LCFI618:
	pushl	%edi
.LCFI619:
	pushl	%esi
.LCFI620:
	pushl	%ebx
.LCFI621:
	subl	$76, %esp
.LCFI622:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 7283 0
	movl	8(%ebp), %eax
	movl	32(%eax), %eax
	testl	%eax, %eax
	jne	.L2267
	.loc 1 7284 0
	movl	$0, -68(%ebp)
	jmp	.L2269
.L2267:
	.loc 1 7286 0
	movl	8(%ebp), %eax
	movl	32(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 7287 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	gen_move_insn@PLT
	movl	%eax, -36(%ebp)
	.loc 1 7292 0
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 7293 0
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L2270
.L2271:
.LBB83:
	.loc 1 7295 0
	movl	-28(%ebp), %eax
	movl	12(%eax), %ecx
	movl	-28(%ebp), %eax
	movl	8(%eax), %eax
	movl	edge_list@GOTOFF(%ebx), %edx
	movl	%ecx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	find_edge_index@PLT
	movl	%eax, -24(%ebp)
	.loc 1 7296 0
	cmpl	$-1, -24(%ebp)
	jne	.L2272
	.loc 1 7297 0
	leal	__FUNCTION__.19620@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$7297, 4(%esp)
	leal	.LC7@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L2272:
	.loc 1 7298 0
	movl	-24(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	pre_insert_map@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	shrl	$6, %eax
	movl	12(%edx,%eax,8), %esi
	movl	16(%edx,%eax,8), %edi
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	shrdl	%edi, %esi
	shrl	%cl, %edi
	testb	$32, %cl
	je	.L2288
	movl	%edi, %esi
	xorl	%edi, %edi
.L2288:
	movl	%esi, %eax
	andl	$1, %eax
	movl	%edi, %edx
	andl	$0, %edx
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L2274
.LBE83:
	.loc 1 7293 0
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
.L2270:
	cmpl	$0, -28(%ebp)
	jne	.L2271
.L2274:
	.loc 1 7304 0
	cmpl	$0, -28(%ebp)
	jne	.L2276
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, -32(%ebp)
	je	.L2276
	.loc 1 7306 0
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L2279
.L2280:
.LBB84:
	.loc 1 7308 0
	movl	-28(%ebp), %eax
	movl	12(%eax), %ecx
	movl	-28(%ebp), %eax
	movl	8(%eax), %eax
	movl	edge_list@GOTOFF(%ebx), %edx
	movl	%ecx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	find_edge_index@PLT
	movl	%eax, -20(%ebp)
	.loc 1 7309 0
	movl	-20(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	pre_insert_map@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -64(%ebp)
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, %ecx
	shrl	$6, %ecx
	movl	%ecx, -60(%ebp)
	movl	-20(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	pre_insert_map@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	movl	%ecx, %eax
	movl	12(%edx,%eax,8), %esi
	movl	16(%edx,%eax,8), %edi
	movl	%esi, -56(%ebp)
	movl	%edi, -52(%ebp)
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	shldl	%eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	je	.L2287
	movl	%eax, %edx
	xorl	%eax, %eax
.L2287:
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-56(%ebp), %eax
	andl	%esi, %eax
	movl	-52(%ebp), %edx
	andl	%edi, %edx
	movl	-60(%ebp), %edi
	movl	-64(%ebp), %ecx
	movl	%eax, 12(%ecx,%edi,8)
	movl	%edx, 16(%ecx,%edi,8)
.LBE84:
	.loc 1 7306 0
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
.L2279:
	cmpl	$0, -28(%ebp)
	jne	.L2280
	.loc 1 7311 0
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	insert_insn_start_bb
	.loc 1 7312 0
	movl	$0, -68(%ebp)
	jmp	.L2269
.L2276:
	.loc 1 7317 0
	movl	12(%ebp), %eax
	movl	24(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L2282
	.loc 1 7319 0
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	insert_insn_start_bb
	.loc 1 7320 0
	movl	$0, -68(%ebp)
	jmp	.L2269
.L2282:
	.loc 1 7323 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	insert_insn_on_edge@PLT
	.loc 1 7325 0
	movl	gcse_file@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L2284
	.loc 1 7327 0
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	movl	44(%eax), %edx
	movl	12(%ebp), %eax
	movl	8(%eax), %eax
	movl	44(%eax), %eax
	movl	gcse_file@GOTOFF(%ebx), %ecx
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	leal	.LC62@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
	.loc 1 7329 0
	movl	gcse_file@GOTOFF(%ebx), %edx
	movl	$6, 8(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	print_inline_rtx@PLT
	.loc 1 7330 0
	movl	gcse_file@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	fputc@PLT
.L2284:
	.loc 1 7333 0
	movl	$1, -68(%ebp)
.L2269:
	movl	-68(%ebp), %eax
	.loc 1 7334 0
	addl	$76, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE155:
	.size	insert_store, .-insert_store
	.section	.rodata
	.align 4
.LC63:
	.string	"STORE_MOTION  delete insn in BB %d:\n      "
	.align 4
.LC64:
	.string	"\nSTORE MOTION  replaced with insn:\n      "
	.text
	.type	replace_store_insn, @function
replace_store_insn:
.LFB156:
	.loc 1 7342 0
	pushl	%ebp
.LCFI623:
	movl	%esp, %ebp
.LCFI624:
	pushl	%ebx
.LCFI625:
	subl	$36, %esp
.LCFI626:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 7345 0
	movl	12(%ebp), %eax
	movl	44(%eax), %eax
	movl	12(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_move_insn@PLT
	movl	%eax, -8(%ebp)
	.loc 1 7346 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_insn_after@PLT
	movl	%eax, -8(%ebp)
	.loc 1 7348 0
	movl	gcse_file@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L2290
	.loc 1 7350 0
	movl	16(%ebp), %eax
	movl	44(%eax), %eax
	movl	gcse_file@GOTOFF(%ebx), %edx
	movl	%eax, 8(%esp)
	leal	.LC63@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
	.loc 1 7352 0
	movl	gcse_file@GOTOFF(%ebx), %edx
	movl	$6, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	print_inline_rtx@PLT
	.loc 1 7353 0
	movl	gcse_file@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	movl	$41, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC64@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 7354 0
	movl	gcse_file@GOTOFF(%ebx), %edx
	movl	$6, 8(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	print_inline_rtx@PLT
	.loc 1 7355 0
	movl	gcse_file@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	fputc@PLT
.L2290:
	.loc 1 7358 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_insn@PLT
	.loc 1 7359 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE156:
	.size	replace_store_insn, .-replace_store_insn
	.type	delete_store, @function
delete_store:
.LFB157:
	.loc 1 7369 0
	pushl	%ebp
.LCFI627:
	movl	%esp, %ebp
.LCFI628:
	pushl	%ebx
.LCFI629:
	subl	$36, %esp
.LCFI630:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 7372 0
	movl	8(%ebp), %eax
	movl	32(%eax), %eax
	testl	%eax, %eax
	jne	.L2294
	.loc 1 7373 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, (%esp)
	call	gen_reg_rtx@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 32(%eax)
.L2294:
	.loc 1 7378 0
	movl	8(%ebp), %eax
	movl	32(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 7380 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L2296
.L2297:
	.loc 1 7382 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 7383 0
	movl	-8(%ebp), %eax
	movl	28(%eax), %eax
	cmpl	12(%ebp), %eax
	jne	.L2298
	.loc 1 7387 0
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	replace_store_insn
	.loc 1 7388 0
	jmp	.L2301
.L2298:
	.loc 1 7380 0
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -12(%ebp)
.L2296:
	cmpl	$0, -12(%ebp)
	jne	.L2297
.L2301:
	.loc 1 7391 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE157:
	.size	delete_store, .-delete_store
	.type	free_store_memory, @function
free_store_memory:
.LFB158:
	.loc 1 7397 0
	pushl	%ebp
.LCFI631:
	movl	%esp, %ebp
.LCFI632:
	pushl	%ebx
.LCFI633:
	subl	$4, %esp
.LCFI634:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 7398 0
	call	free_ldst_mems
	.loc 1 7400 0
	movl	ae_gen@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L2303
	.loc 1 7401 0
	movl	ae_gen@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	free@PLT
.L2303:
	.loc 1 7402 0
	movl	ae_kill@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L2305
	.loc 1 7403 0
	movl	ae_kill@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	free@PLT
.L2305:
	.loc 1 7404 0
	movl	transp@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L2307
	.loc 1 7405 0
	movl	transp@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	free@PLT
.L2307:
	.loc 1 7406 0
	movl	st_antloc@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L2309
	.loc 1 7407 0
	movl	st_antloc@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	free@PLT
.L2309:
	.loc 1 7408 0
	movl	pre_insert_map@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L2311
	.loc 1 7409 0
	movl	pre_insert_map@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	free@PLT
.L2311:
	.loc 1 7410 0
	movl	pre_delete_map@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L2313
	.loc 1 7411 0
	movl	pre_delete_map@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	free@PLT
.L2313:
	.loc 1 7412 0
	movl	reg_set_in_block@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L2315
	.loc 1 7413 0
	movl	reg_set_in_block@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	free@PLT
.L2315:
	.loc 1 7415 0
	movl	$0, st_antloc@GOTOFF(%ebx)
	movl	st_antloc@GOTOFF(%ebx), %eax
	movl	%eax, transp@GOTOFF(%ebx)
	movl	transp@GOTOFF(%ebx), %eax
	movl	%eax, ae_kill@GOTOFF(%ebx)
	movl	ae_kill@GOTOFF(%ebx), %eax
	movl	%eax, ae_gen@GOTOFF(%ebx)
	.loc 1 7416 0
	movl	$0, reg_set_in_block@GOTOFF(%ebx)
	movl	reg_set_in_block@GOTOFF(%ebx), %eax
	movl	%eax, pre_delete_map@GOTOFF(%ebx)
	movl	pre_delete_map@GOTOFF(%ebx), %eax
	movl	%eax, pre_insert_map@GOTOFF(%ebx)
	.loc 1 7417 0
	addl	$4, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE158:
	.size	free_store_memory, .-free_store_memory
	.section	.rodata
.LC65:
	.string	"before store motion\n"
	.text
	.type	store_motion, @function
store_motion:
.LFB159:
	.loc 1 7424 0
	pushl	%ebp
.LCFI635:
	movl	%esp, %ebp
.LCFI636:
	pushl	%edi
.LCFI637:
	pushl	%esi
.LCFI638:
	pushl	%ebx
.LCFI639:
	subl	$60, %esp
.LCFI640:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 7428 0
	movl	$0, -16(%ebp)
	.loc 1 7430 0
	movl	gcse_file@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L2319
	.loc 1 7432 0
	movl	gcse_file@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	movl	$20, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC65@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 7433 0
	call	get_insns@PLT
	movl	gcse_file@GOTOFF(%ebx), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	print_rtl@PLT
.L2319:
	.loc 1 7437 0
	call	init_alias_analysis@PLT
	.loc 1 7440 0
	call	compute_store_table
	movl	%eax, num_stores@GOTOFF(%ebx)
	.loc 1 7441 0
	movl	num_stores@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L2321
	.loc 1 7443 0
	movl	reg_set_in_block@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 7444 0
	call	end_alias_analysis@PLT
	.loc 1 7445 0
	jmp	.L2339
.L2321:
	.loc 1 7449 0
	call	add_noreturn_fake_exit_edges@PLT
	.loc 1 7450 0
	call	build_store_vectors
	.loc 1 7452 0
	movl	ae_kill@GOTOFF(%ebx), %edx
	movl	st_antloc@GOTOFF(%ebx), %ecx
	movl	ae_gen@GOTOFF(%ebx), %esi
	movl	transp@GOTOFF(%ebx), %edi
	movl	num_stores@GOTOFF(%ebx), %eax
	movl	%eax, -36(%ebp)
	movl	gcse_file@GOTOFF(%ebx), %eax
	movl	%eax, -32(%ebp)
	leal	pre_delete_map@GOTOFF(%ebx), %eax
	movl	%eax, 28(%esp)
	leal	pre_insert_map@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	movl	%edx, 20(%esp)
	movl	%ecx, 16(%esp)
	movl	%esi, 12(%esp)
	movl	%edi, 8(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	pre_edge_rev_lcm@PLT
	movl	%eax, edge_list@GOTOFF(%ebx)
	.loc 1 7457 0
	call	first_ls_expr
	movl	%eax, -20(%ebp)
	jmp	.L2324
.L2325:
	.loc 1 7459 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	52(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L2326
.L2327:
	.loc 1 7460 0
	movl	-28(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	pre_delete_map@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	movl	-20(%ebp), %eax
	movl	24(%eax), %eax
	shrl	$6, %eax
	movl	12(%edx,%eax,8), %esi
	movl	16(%edx,%eax,8), %edi
	movl	-20(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	shrdl	%edi, %esi
	shrl	%cl, %edi
	testb	$32, %cl
	je	.L2341
	movl	%edi, %esi
	xorl	%edi, %edi
.L2341:
	movl	%esi, %eax
	andl	$1, %eax
	movl	%edi, %edx
	andl	$0, %edx
	testl	%eax, %eax
	je	.L2328
	.loc 1 7461 0
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_store
.L2328:
	.loc 1 7459 0
	movl	-28(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -28(%ebp)
.L2326:
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, -28(%ebp)
	jne	.L2327
	.loc 1 7463 0
	movl	$0, -24(%ebp)
	jmp	.L2331
.L2332:
	.loc 1 7464 0
	movl	-24(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	pre_insert_map@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	movl	-20(%ebp), %eax
	movl	24(%eax), %eax
	shrl	$6, %eax
	movl	12(%edx,%eax,8), %esi
	movl	16(%edx,%eax,8), %edi
	movl	-20(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	shrdl	%edi, %esi
	shrl	%cl, %edi
	testb	$32, %cl
	je	.L2340
	movl	%edi, %esi
	xorl	%edi, %edi
.L2340:
	movl	%esi, %eax
	andl	$1, %eax
	movl	%edi, %edx
	andl	$0, %edx
	testl	%eax, %eax
	je	.L2333
	.loc 1 7465 0
	movl	edge_list@GOTOFF(%ebx), %eax
	movl	8(%eax), %edx
	movl	-24(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	insert_store
	orl	%eax, -16(%ebp)
.L2333:
	.loc 1 7463 0
	addl	$1, -24(%ebp)
.L2331:
	movl	edge_list@GOTOFF(%ebx), %eax
	movl	4(%eax), %eax
	cmpl	-24(%ebp), %eax
	jg	.L2332
	.loc 1 7457 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	next_ls_expr
	movl	%eax, -20(%ebp)
.L2324:
	cmpl	$0, -20(%ebp)
	jne	.L2325
	.loc 1 7468 0
	cmpl	$0, -16(%ebp)
	je	.L2337
	.loc 1 7469 0
	call	commit_edge_insertions@PLT
.L2337:
	.loc 1 7471 0
	call	free_store_memory
	.loc 1 7472 0
	movl	edge_list@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	free_edge_list@PLT
	.loc 1 7473 0
	call	remove_fake_edges@PLT
	.loc 1 7474 0
	call	end_alias_analysis@PLT
.L2339:
	.loc 1 7475 0
	addl	$60, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE159:
	.size	store_motion, .-store_motion
.globl gt_ggc_r_gt_gcse_h
	.section	.data.rel.ro,"aw",@progbits
	.align 32
	.type	gt_ggc_r_gt_gcse_h, @object
	.size	gt_ggc_r_gt_gcse_h, 32
gt_ggc_r_gt_gcse_h:
	.long	test_insn
	.long	1
	.long	4
	.long	gt_ggc_mx_rtx_def
	.long	0
	.long	0
	.long	0
	.long	0
	.local	gcse_file
	.comm	gcse_file,4,4
	.local	run_jump_opt_after_gcse
	.comm	run_jump_opt_after_gcse,4,4
	.local	debug_stderr
	.comm	debug_stderr,4,4
	.local	gcse_obstack
	.comm	gcse_obstack,44,32
	.local	can_copy_p
	.comm	can_copy_p,54,32
	.local	can_copy_init_p
	.comm	can_copy_init_p,4,4
	.local	expr_hash_table
	.comm	expr_hash_table,16,4
	.local	set_hash_table
	.comm	set_hash_table,16,4
	.local	uid_cuid
	.comm	uid_cuid,4,4
	.local	max_uid
	.comm	max_uid,4,4
	.local	max_cuid
	.comm	max_cuid,4,4
	.local	cuid_insn
	.comm	cuid_insn,4,4
	.local	max_gcse_regno
	.comm	max_gcse_regno,4,4
	.local	reg_set_table
	.comm	reg_set_table,4,4
	.local	reg_set_table_size
	.comm	reg_set_table_size,4,4
	.local	reg_set_bitmap
	.comm	reg_set_bitmap,4,4
	.local	reg_set_in_block
	.comm	reg_set_in_block,4,4
	.local	modify_mem_list
	.comm	modify_mem_list,4,4
	.local	canon_modify_mem_list
	.comm	canon_modify_mem_list,4,4
	.local	bytes_used
	.comm	bytes_used,4,4
	.local	gcse_subst_count
	.comm	gcse_subst_count,4,4
	.local	gcse_create_count
	.comm	gcse_create_count,4,4
	.local	const_prop_count
	.comm	const_prop_count,4,4
	.local	copy_prop_count
	.comm	copy_prop_count,4,4
	.local	rd_kill
	.comm	rd_kill,4,4
	.local	rd_gen
	.comm	rd_gen,4,4
	.local	reaching_defs
	.comm	reaching_defs,4,4
	.local	rd_out
	.comm	rd_out,4,4
	.local	ae_kill
	.comm	ae_kill,4,4
	.local	ae_gen
	.comm	ae_gen,4,4
	.local	ae_in
	.comm	ae_in,4,4
	.local	ae_out
	.comm	ae_out,4,4
	.local	reg_set_obstack
	.comm	reg_set_obstack,44,32
	.local	reg_avail_info
	.comm	reg_avail_info,4,4
	.local	current_bb
	.comm	current_bb,4,4
	.local	test_insn
	.comm	test_insn,4,4
	.local	gcse_mems_conflict_p
	.comm	gcse_mems_conflict_p,4,4
	.local	gcse_mem_operand
	.comm	gcse_mem_operand,4,4
	.local	cprop_pavloc
	.comm	cprop_pavloc,4,4
	.local	cprop_absaltered
	.comm	cprop_absaltered,4,4
	.local	cprop_avin
	.comm	cprop_avin,4,4
	.local	cprop_avout
	.comm	cprop_avout,4,4
	.local	reg_use_table
	.comm	reg_use_table,32,32
	.local	reg_use_count
	.comm	reg_use_count,4,4
	.local	transp
	.comm	transp,4,4
	.local	transpout
	.comm	transpout,4,4
	.local	comp
	.comm	comp,4,4
	.local	antloc
	.comm	antloc,4,4
	.local	pre_optimal
	.comm	pre_optimal,4,4
	.local	pre_redundant
	.comm	pre_redundant,4,4
	.local	pre_insert_map
	.comm	pre_insert_map,4,4
	.local	pre_delete_map
	.comm	pre_delete_map,4,4
	.local	edge_list
	.comm	edge_list,4,4
	.local	pre_redundant_insns
	.comm	pre_redundant_insns,4,4
	.local	hoist_vbein
	.comm	hoist_vbein,4,4
	.local	hoist_vbeout
	.comm	hoist_vbeout,4,4
	.local	hoist_exprs
	.comm	hoist_exprs,4,4
	.local	regvec
	.comm	regvec,4,4
	.local	st_antloc
	.comm	st_antloc,4,4
	.local	num_stores
	.comm	num_stores,4,4
	.comm	modify_mem_list_set,4,4
	.comm	canon_modify_mem_list_set,4,4
	.comm	dominators,4,4
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
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI6-.LCFI5
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI9-.LCFI6
	.byte	0x83
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
	.long	.LCFI10-.LFB17
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI11-.LCFI10
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI13-.LCFI11
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
	.long	.LCFI14-.LFB18
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
	.long	.LCFI22-.LCFI19
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
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
	.long	.LCFI27-.LCFI24
	.byte	0x83
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
	.long	.LCFI28-.LFB21
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
.LEFDE12:
.LSFDE14:
	.long	.LEFDE14-.LASFDE14
.LASFDE14:
	.long	.Lframe0
	.long	.LFB22
	.long	.LFE22-.LFB22
	.byte	0x4
	.long	.LCFI32-.LFB22
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI33-.LCFI32
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE14:
.LSFDE16:
	.long	.LEFDE16-.LASFDE16
.LASFDE16:
	.long	.Lframe0
	.long	.LFB23
	.long	.LFE23-.LFB23
	.byte	0x4
	.long	.LCFI35-.LFB23
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI36-.LCFI35
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI40-.LCFI36
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
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
	.long	.LCFI41-.LFB24
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI42-.LCFI41
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI45-.LCFI42
	.byte	0x83
	.uleb128 0x4
	.byte	0x87
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
	.long	.LCFI46-.LFB25
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
.LEFDE20:
.LSFDE22:
	.long	.LEFDE22-.LASFDE22
.LASFDE22:
	.long	.Lframe0
	.long	.LFB26
	.long	.LFE26-.LFB26
	.byte	0x4
	.long	.LCFI50-.LFB26
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI51-.LCFI50
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI55-.LCFI51
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
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
	.long	.LCFI56-.LFB27
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI57-.LCFI56
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE24:
.LSFDE26:
	.long	.LEFDE26-.LASFDE26
.LASFDE26:
	.long	.Lframe0
	.long	.LFB28
	.long	.LFE28-.LFB28
	.byte	0x4
	.long	.LCFI59-.LFB28
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
.LEFDE26:
.LSFDE28:
	.long	.LEFDE28-.LASFDE28
.LASFDE28:
	.long	.Lframe0
	.long	.LFB29
	.long	.LFE29-.LFB29
	.byte	0x4
	.long	.LCFI63-.LFB29
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI64-.LCFI63
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI67-.LCFI64
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
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
	.long	.LCFI68-.LFB30
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
	.long	.LCFI72-.LFB31
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI73-.LCFI72
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI75-.LCFI73
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
	.long	.LCFI76-.LFB32
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
.LEFDE34:
.LSFDE36:
	.long	.LEFDE36-.LASFDE36
.LASFDE36:
	.long	.Lframe0
	.long	.LFB33
	.long	.LFE33-.LFB33
	.byte	0x4
	.long	.LCFI80-.LFB33
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI81-.LCFI80
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE36:
.LSFDE38:
	.long	.LEFDE38-.LASFDE38
.LASFDE38:
	.long	.Lframe0
	.long	.LFB34
	.long	.LFE34-.LFB34
	.byte	0x4
	.long	.LCFI83-.LFB34
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI84-.LCFI83
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE38:
.LSFDE40:
	.long	.LEFDE40-.LASFDE40
.LASFDE40:
	.long	.Lframe0
	.long	.LFB35
	.long	.LFE35-.LFB35
	.byte	0x4
	.long	.LCFI86-.LFB35
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI87-.LCFI86
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE40:
.LSFDE42:
	.long	.LEFDE42-.LASFDE42
.LASFDE42:
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
	.long	.LCFI93-.LCFI90
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
	.long	.LFB36
	.long	.LFE36-.LFB36
	.byte	0x4
	.long	.LCFI94-.LFB36
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI95-.LCFI94
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE44:
.LSFDE46:
	.long	.LEFDE46-.LASFDE46
.LASFDE46:
	.long	.Lframe0
	.long	.LFB38
	.long	.LFE38-.LFB38
	.byte	0x4
	.long	.LCFI97-.LFB38
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI98-.LCFI97
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE46:
.LSFDE48:
	.long	.LEFDE48-.LASFDE48
.LASFDE48:
	.long	.Lframe0
	.long	.LFB39
	.long	.LFE39-.LFB39
	.byte	0x4
	.long	.LCFI100-.LFB39
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI101-.LCFI100
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI105-.LCFI101
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
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
	.long	.LCFI106-.LFB40
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI107-.LCFI106
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI109-.LCFI107
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
	.long	.LCFI110-.LFB41
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI111-.LCFI110
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI113-.LCFI111
	.byte	0x83
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
	.long	.LCFI114-.LFB42
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI115-.LCFI114
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI117-.LCFI115
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE54:
.LSFDE56:
	.long	.LEFDE56-.LASFDE56
.LASFDE56:
	.long	.Lframe0
	.long	.LFB43
	.long	.LFE43-.LFB43
	.byte	0x4
	.long	.LCFI118-.LFB43
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI119-.LCFI118
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE56:
.LSFDE58:
	.long	.LEFDE58-.LASFDE58
.LASFDE58:
	.long	.Lframe0
	.long	.LFB44
	.long	.LFE44-.LFB44
	.byte	0x4
	.long	.LCFI120-.LFB44
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI121-.LCFI120
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
	.long	.LCFI122-.LFB45
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI123-.LCFI122
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE60:
.LSFDE62:
	.long	.LEFDE62-.LASFDE62
.LASFDE62:
	.long	.Lframe0
	.long	.LFB46
	.long	.LFE46-.LFB46
	.byte	0x4
	.long	.LCFI125-.LFB46
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI126-.LCFI125
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI128-.LCFI126
	.byte	0x83
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
	.long	.LCFI129-.LFB47
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI130-.LCFI129
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI134-.LCFI130
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
	.long	.LFB48
	.long	.LFE48-.LFB48
	.byte	0x4
	.long	.LCFI135-.LFB48
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI136-.LCFI135
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI139-.LCFI136
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
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
	.long	.LCFI140-.LFB49
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI141-.LCFI140
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI144-.LCFI141
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
	.long	.LCFI145-.LFB50
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI146-.LCFI145
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI148-.LCFI146
	.byte	0x83
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
	.long	.LCFI149-.LFB51
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI150-.LCFI149
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI154-.LCFI150
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
	.long	.LCFI155-.LFB52
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI156-.LCFI155
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE74:
.LSFDE76:
	.long	.LEFDE76-.LASFDE76
.LASFDE76:
	.long	.Lframe0
	.long	.LFB53
	.long	.LFE53-.LFB53
	.byte	0x4
	.long	.LCFI158-.LFB53
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI159-.LCFI158
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI161-.LCFI159
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
	.long	.LCFI162-.LFB54
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI163-.LCFI162
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI165-.LCFI163
	.byte	0x87
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
	.long	.LCFI166-.LFB55
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI167-.LCFI166
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE80:
.LSFDE82:
	.long	.LEFDE82-.LASFDE82
.LASFDE82:
	.long	.Lframe0
	.long	.LFB56
	.long	.LFE56-.LFB56
	.byte	0x4
	.long	.LCFI169-.LFB56
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI170-.LCFI169
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE82:
.LSFDE84:
	.long	.LEFDE84-.LASFDE84
.LASFDE84:
	.long	.Lframe0
	.long	.LFB57
	.long	.LFE57-.LFB57
	.byte	0x4
	.long	.LCFI172-.LFB57
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI173-.LCFI172
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE84:
.LSFDE86:
	.long	.LEFDE86-.LASFDE86
.LASFDE86:
	.long	.Lframe0
	.long	.LFB58
	.long	.LFE58-.LFB58
	.byte	0x4
	.long	.LCFI174-.LFB58
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI175-.LCFI174
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI177-.LCFI175
	.byte	0x83
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
	.long	.LCFI178-.LFB59
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI179-.LCFI178
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI181-.LCFI179
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE88:
.LSFDE90:
	.long	.LEFDE90-.LASFDE90
.LASFDE90:
	.long	.Lframe0
	.long	.LFB60
	.long	.LFE60-.LFB60
	.byte	0x4
	.long	.LCFI182-.LFB60
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI183-.LCFI182
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI185-.LCFI183
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
	.long	.LCFI186-.LFB61
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
.LEFDE92:
.LSFDE94:
	.long	.LEFDE94-.LASFDE94
.LASFDE94:
	.long	.Lframe0
	.long	.LFB62
	.long	.LFE62-.LFB62
	.byte	0x4
	.long	.LCFI190-.LFB62
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
.LEFDE94:
.LSFDE96:
	.long	.LEFDE96-.LASFDE96
.LASFDE96:
	.long	.Lframe0
	.long	.LFB63
	.long	.LFE63-.LFB63
	.byte	0x4
	.long	.LCFI194-.LFB63
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI195-.LCFI194
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE96:
.LSFDE98:
	.long	.LEFDE98-.LASFDE98
.LASFDE98:
	.long	.Lframe0
	.long	.LFB64
	.long	.LFE64-.LFB64
	.byte	0x4
	.long	.LCFI197-.LFB64
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI198-.LCFI197
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI200-.LCFI198
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
	.long	.LCFI201-.LFB65
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI202-.LCFI201
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI204-.LCFI202
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
	.long	.LCFI205-.LFB66
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI206-.LCFI205
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE102:
.LSFDE104:
	.long	.LEFDE104-.LASFDE104
.LASFDE104:
	.long	.Lframe0
	.long	.LFB67
	.long	.LFE67-.LFB67
	.byte	0x4
	.long	.LCFI208-.LFB67
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
.LEFDE104:
.LSFDE106:
	.long	.LEFDE106-.LASFDE106
.LASFDE106:
	.long	.Lframe0
	.long	.LFB68
	.long	.LFE68-.LFB68
	.byte	0x4
	.long	.LCFI212-.LFB68
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
.LEFDE106:
.LSFDE108:
	.long	.LEFDE108-.LASFDE108
.LASFDE108:
	.long	.Lframe0
	.long	.LFB69
	.long	.LFE69-.LFB69
	.byte	0x4
	.long	.LCFI216-.LFB69
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI217-.LCFI216
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI221-.LCFI217
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
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
	.long	.LCFI222-.LFB70
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI223-.LCFI222
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI227-.LCFI223
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
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
	.long	.LCFI228-.LFB71
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI229-.LCFI228
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI233-.LCFI229
	.byte	0x83
	.uleb128 0x5
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
	.long	.LFB72
	.long	.LFE72-.LFB72
	.byte	0x4
	.long	.LCFI234-.LFB72
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI235-.LCFI234
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI237-.LCFI235
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
	.long	.LCFI238-.LFB73
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI239-.LCFI238
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI241-.LCFI239
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
	.long	.LCFI242-.LFB74
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI243-.LCFI242
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI247-.LCFI243
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE118:
.LSFDE120:
	.long	.LEFDE120-.LASFDE120
.LASFDE120:
	.long	.Lframe0
	.long	.LFB75
	.long	.LFE75-.LFB75
	.byte	0x4
	.long	.LCFI248-.LFB75
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI249-.LCFI248
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI253-.LCFI249
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE120:
.LSFDE122:
	.long	.LEFDE122-.LASFDE122
.LASFDE122:
	.long	.Lframe0
	.long	.LFB76
	.long	.LFE76-.LFB76
	.byte	0x4
	.long	.LCFI254-.LFB76
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI255-.LCFI254
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI259-.LCFI255
	.byte	0x83
	.uleb128 0x5
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
	.long	.LFB77
	.long	.LFE77-.LFB77
	.byte	0x4
	.long	.LCFI260-.LFB77
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI261-.LCFI260
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI265-.LCFI261
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE124:
.LSFDE126:
	.long	.LEFDE126-.LASFDE126
.LASFDE126:
	.long	.Lframe0
	.long	.LFB78
	.long	.LFE78-.LFB78
	.byte	0x4
	.long	.LCFI266-.LFB78
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI267-.LCFI266
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI269-.LCFI267
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE126:
.LSFDE128:
	.long	.LEFDE128-.LASFDE128
.LASFDE128:
	.long	.Lframe0
	.long	.LFB79
	.long	.LFE79-.LFB79
	.byte	0x4
	.long	.LCFI270-.LFB79
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI271-.LCFI270
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI273-.LCFI271
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE128:
.LSFDE130:
	.long	.LEFDE130-.LASFDE130
.LASFDE130:
	.long	.Lframe0
	.long	.LFB80
	.long	.LFE80-.LFB80
	.byte	0x4
	.long	.LCFI274-.LFB80
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI275-.LCFI274
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI279-.LCFI275
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE130:
.LSFDE132:
	.long	.LEFDE132-.LASFDE132
.LASFDE132:
	.long	.Lframe0
	.long	.LFB81
	.long	.LFE81-.LFB81
	.byte	0x4
	.long	.LCFI280-.LFB81
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI281-.LCFI280
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI283-.LCFI281
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE132:
.LSFDE134:
	.long	.LEFDE134-.LASFDE134
.LASFDE134:
	.long	.Lframe0
	.long	.LFB82
	.long	.LFE82-.LFB82
	.byte	0x4
	.long	.LCFI284-.LFB82
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI285-.LCFI284
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI287-.LCFI285
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE134:
.LSFDE136:
	.long	.LEFDE136-.LASFDE136
.LASFDE136:
	.long	.Lframe0
	.long	.LFB83
	.long	.LFE83-.LFB83
	.byte	0x4
	.long	.LCFI288-.LFB83
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI289-.LCFI288
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI293-.LCFI289
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE136:
.LSFDE138:
	.long	.LEFDE138-.LASFDE138
.LASFDE138:
	.long	.Lframe0
	.long	.LFB84
	.long	.LFE84-.LFB84
	.byte	0x4
	.long	.LCFI294-.LFB84
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI295-.LCFI294
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI299-.LCFI295
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE138:
.LSFDE140:
	.long	.LEFDE140-.LASFDE140
.LASFDE140:
	.long	.Lframe0
	.long	.LFB85
	.long	.LFE85-.LFB85
	.byte	0x4
	.long	.LCFI300-.LFB85
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI301-.LCFI300
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI303-.LCFI301
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE140:
.LSFDE142:
	.long	.LEFDE142-.LASFDE142
.LASFDE142:
	.long	.Lframe0
	.long	.LFB86
	.long	.LFE86-.LFB86
	.byte	0x4
	.long	.LCFI304-.LFB86
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI305-.LCFI304
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI307-.LCFI305
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE142:
.LSFDE144:
	.long	.LEFDE144-.LASFDE144
.LASFDE144:
	.long	.Lframe0
	.long	.LFB87
	.long	.LFE87-.LFB87
	.byte	0x4
	.long	.LCFI308-.LFB87
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI309-.LCFI308
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI313-.LCFI309
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE144:
.LSFDE146:
	.long	.LEFDE146-.LASFDE146
.LASFDE146:
	.long	.Lframe0
	.long	.LFB88
	.long	.LFE88-.LFB88
	.byte	0x4
	.long	.LCFI314-.LFB88
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI315-.LCFI314
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI318-.LCFI315
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x3
	.align 4
.LEFDE146:
.LSFDE148:
	.long	.LEFDE148-.LASFDE148
.LASFDE148:
	.long	.Lframe0
	.long	.LFB89
	.long	.LFE89-.LFB89
	.byte	0x4
	.long	.LCFI319-.LFB89
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI320-.LCFI319
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI322-.LCFI320
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE148:
.LSFDE150:
	.long	.LEFDE150-.LASFDE150
.LASFDE150:
	.long	.Lframe0
	.long	.LFB90
	.long	.LFE90-.LFB90
	.byte	0x4
	.long	.LCFI323-.LFB90
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI324-.LCFI323
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI326-.LCFI324
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE150:
.LSFDE152:
	.long	.LEFDE152-.LASFDE152
.LASFDE152:
	.long	.Lframe0
	.long	.LFB91
	.long	.LFE91-.LFB91
	.byte	0x4
	.long	.LCFI327-.LFB91
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI328-.LCFI327
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI332-.LCFI328
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE152:
.LSFDE154:
	.long	.LEFDE154-.LASFDE154
.LASFDE154:
	.long	.Lframe0
	.long	.LFB92
	.long	.LFE92-.LFB92
	.byte	0x4
	.long	.LCFI333-.LFB92
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI334-.LCFI333
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI336-.LCFI334
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE154:
.LSFDE156:
	.long	.LEFDE156-.LASFDE156
.LASFDE156:
	.long	.Lframe0
	.long	.LFB93
	.long	.LFE93-.LFB93
	.byte	0x4
	.long	.LCFI337-.LFB93
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI338-.LCFI337
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI340-.LCFI338
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE156:
.LSFDE158:
	.long	.LEFDE158-.LASFDE158
.LASFDE158:
	.long	.Lframe0
	.long	.LFB94
	.long	.LFE94-.LFB94
	.byte	0x4
	.long	.LCFI341-.LFB94
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI342-.LCFI341
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI344-.LCFI342
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE158:
.LSFDE160:
	.long	.LEFDE160-.LASFDE160
.LASFDE160:
	.long	.Lframe0
	.long	.LFB95
	.long	.LFE95-.LFB95
	.byte	0x4
	.long	.LCFI345-.LFB95
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI346-.LCFI345
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI348-.LCFI346
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE160:
.LSFDE162:
	.long	.LEFDE162-.LASFDE162
.LASFDE162:
	.long	.Lframe0
	.long	.LFB96
	.long	.LFE96-.LFB96
	.byte	0x4
	.long	.LCFI349-.LFB96
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI350-.LCFI349
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI352-.LCFI350
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE162:
.LSFDE164:
	.long	.LEFDE164-.LASFDE164
.LASFDE164:
	.long	.Lframe0
	.long	.LFB97
	.long	.LFE97-.LFB97
	.byte	0x4
	.long	.LCFI353-.LFB97
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI354-.LCFI353
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI356-.LCFI354
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE164:
.LSFDE166:
	.long	.LEFDE166-.LASFDE166
.LASFDE166:
	.long	.Lframe0
	.long	.LFB98
	.long	.LFE98-.LFB98
	.byte	0x4
	.long	.LCFI357-.LFB98
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI358-.LCFI357
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI360-.LCFI358
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE166:
.LSFDE168:
	.long	.LEFDE168-.LASFDE168
.LASFDE168:
	.long	.Lframe0
	.long	.LFB99
	.long	.LFE99-.LFB99
	.byte	0x4
	.long	.LCFI361-.LFB99
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI362-.LCFI361
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI364-.LCFI362
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE168:
.LSFDE170:
	.long	.LEFDE170-.LASFDE170
.LASFDE170:
	.long	.Lframe0
	.long	.LFB100
	.long	.LFE100-.LFB100
	.byte	0x4
	.long	.LCFI365-.LFB100
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI366-.LCFI365
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI369-.LCFI366
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x3
	.align 4
.LEFDE170:
.LSFDE172:
	.long	.LEFDE172-.LASFDE172
.LASFDE172:
	.long	.Lframe0
	.long	.LFB101
	.long	.LFE101-.LFB101
	.byte	0x4
	.long	.LCFI370-.LFB101
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI371-.LCFI370
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI375-.LCFI371
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE172:
.LSFDE174:
	.long	.LEFDE174-.LASFDE174
.LASFDE174:
	.long	.Lframe0
	.long	.LFB102
	.long	.LFE102-.LFB102
	.byte	0x4
	.long	.LCFI376-.LFB102
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI377-.LCFI376
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI379-.LCFI377
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE174:
.LSFDE176:
	.long	.LEFDE176-.LASFDE176
.LASFDE176:
	.long	.Lframe0
	.long	.LFB103
	.long	.LFE103-.LFB103
	.byte	0x4
	.long	.LCFI380-.LFB103
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI381-.LCFI380
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI384-.LCFI381
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x3
	.align 4
.LEFDE176:
.LSFDE178:
	.long	.LEFDE178-.LASFDE178
.LASFDE178:
	.long	.Lframe0
	.long	.LFB104
	.long	.LFE104-.LFB104
	.byte	0x4
	.long	.LCFI385-.LFB104
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI386-.LCFI385
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI388-.LCFI386
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE178:
.LSFDE180:
	.long	.LEFDE180-.LASFDE180
.LASFDE180:
	.long	.Lframe0
	.long	.LFB105
	.long	.LFE105-.LFB105
	.byte	0x4
	.long	.LCFI389-.LFB105
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI390-.LCFI389
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI392-.LCFI390
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE180:
.LSFDE182:
	.long	.LEFDE182-.LASFDE182
.LASFDE182:
	.long	.Lframe0
	.long	.LFB106
	.long	.LFE106-.LFB106
	.byte	0x4
	.long	.LCFI393-.LFB106
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI394-.LCFI393
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI396-.LCFI394
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE182:
.LSFDE184:
	.long	.LEFDE184-.LASFDE184
.LASFDE184:
	.long	.Lframe0
	.long	.LFB107
	.long	.LFE107-.LFB107
	.byte	0x4
	.long	.LCFI397-.LFB107
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI398-.LCFI397
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI402-.LCFI398
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE184:
.LSFDE186:
	.long	.LEFDE186-.LASFDE186
.LASFDE186:
	.long	.Lframe0
	.long	.LFB108
	.long	.LFE108-.LFB108
	.byte	0x4
	.long	.LCFI403-.LFB108
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI404-.LCFI403
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI408-.LCFI404
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE186:
.LSFDE188:
	.long	.LEFDE188-.LASFDE188
.LASFDE188:
	.long	.Lframe0
	.long	.LFB109
	.long	.LFE109-.LFB109
	.byte	0x4
	.long	.LCFI409-.LFB109
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI410-.LCFI409
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI412-.LCFI410
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE188:
.LSFDE190:
	.long	.LEFDE190-.LASFDE190
.LASFDE190:
	.long	.Lframe0
	.long	.LFB110
	.long	.LFE110-.LFB110
	.byte	0x4
	.long	.LCFI413-.LFB110
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI414-.LCFI413
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI416-.LCFI414
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE190:
.LSFDE192:
	.long	.LEFDE192-.LASFDE192
.LASFDE192:
	.long	.Lframe0
	.long	.LFB111
	.long	.LFE111-.LFB111
	.byte	0x4
	.long	.LCFI417-.LFB111
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI418-.LCFI417
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI422-.LCFI418
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE192:
.LSFDE194:
	.long	.LEFDE194-.LASFDE194
.LASFDE194:
	.long	.Lframe0
	.long	.LFB112
	.long	.LFE112-.LFB112
	.byte	0x4
	.long	.LCFI423-.LFB112
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI424-.LCFI423
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI428-.LCFI424
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE194:
.LSFDE196:
	.long	.LEFDE196-.LASFDE196
.LASFDE196:
	.long	.Lframe0
	.long	.LFB113
	.long	.LFE113-.LFB113
	.byte	0x4
	.long	.LCFI429-.LFB113
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI430-.LCFI429
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI434-.LCFI430
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE196:
.LSFDE198:
	.long	.LEFDE198-.LASFDE198
.LASFDE198:
	.long	.Lframe0
	.long	.LFB114
	.long	.LFE114-.LFB114
	.byte	0x4
	.long	.LCFI435-.LFB114
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI436-.LCFI435
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI440-.LCFI436
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE198:
.LSFDE200:
	.long	.LEFDE200-.LASFDE200
.LASFDE200:
	.long	.Lframe0
	.long	.LFB115
	.long	.LFE115-.LFB115
	.byte	0x4
	.long	.LCFI441-.LFB115
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI442-.LCFI441
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI444-.LCFI442
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE200:
.LSFDE202:
	.long	.LEFDE202-.LASFDE202
.LASFDE202:
	.long	.Lframe0
	.long	.LFB116
	.long	.LFE116-.LFB116
	.byte	0x4
	.long	.LCFI445-.LFB116
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI446-.LCFI445
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI450-.LCFI446
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE202:
.LSFDE204:
	.long	.LEFDE204-.LASFDE204
.LASFDE204:
	.long	.Lframe0
	.long	.LFB117
	.long	.LFE117-.LFB117
	.byte	0x4
	.long	.LCFI451-.LFB117
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI452-.LCFI451
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI454-.LCFI452
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE204:
.LSFDE206:
	.long	.LEFDE206-.LASFDE206
.LASFDE206:
	.long	.Lframe0
	.long	.LFB118
	.long	.LFE118-.LFB118
	.byte	0x4
	.long	.LCFI455-.LFB118
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI456-.LCFI455
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI459-.LCFI456
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x3
	.align 4
.LEFDE206:
.LSFDE208:
	.long	.LEFDE208-.LASFDE208
.LASFDE208:
	.long	.Lframe0
	.long	.LFB119
	.long	.LFE119-.LFB119
	.byte	0x4
	.long	.LCFI460-.LFB119
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI461-.LCFI460
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI463-.LCFI461
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE208:
.LSFDE210:
	.long	.LEFDE210-.LASFDE210
.LASFDE210:
	.long	.Lframe0
	.long	.LFB120
	.long	.LFE120-.LFB120
	.byte	0x4
	.long	.LCFI464-.LFB120
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI465-.LCFI464
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI469-.LCFI465
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE210:
.LSFDE212:
	.long	.LEFDE212-.LASFDE212
.LASFDE212:
	.long	.Lframe0
	.long	.LFB121
	.long	.LFE121-.LFB121
	.byte	0x4
	.long	.LCFI470-.LFB121
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI471-.LCFI470
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI474-.LCFI471
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE212:
.LSFDE214:
	.long	.LEFDE214-.LASFDE214
.LASFDE214:
	.long	.Lframe0
	.long	.LFB122
	.long	.LFE122-.LFB122
	.byte	0x4
	.long	.LCFI475-.LFB122
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI476-.LCFI475
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI480-.LCFI476
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE214:
.LSFDE216:
	.long	.LEFDE216-.LASFDE216
.LASFDE216:
	.long	.Lframe0
	.long	.LFB123
	.long	.LFE123-.LFB123
	.byte	0x4
	.long	.LCFI481-.LFB123
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI482-.LCFI481
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI484-.LCFI482
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE216:
.LSFDE218:
	.long	.LEFDE218-.LASFDE218
.LASFDE218:
	.long	.Lframe0
	.long	.LFB124
	.long	.LFE124-.LFB124
	.byte	0x4
	.long	.LCFI485-.LFB124
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI486-.LCFI485
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI488-.LCFI486
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE218:
.LSFDE220:
	.long	.LEFDE220-.LASFDE220
.LASFDE220:
	.long	.Lframe0
	.long	.LFB125
	.long	.LFE125-.LFB125
	.byte	0x4
	.long	.LCFI489-.LFB125
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI490-.LCFI489
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI492-.LCFI490
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE220:
.LSFDE222:
	.long	.LEFDE222-.LASFDE222
.LASFDE222:
	.long	.Lframe0
	.long	.LFB126
	.long	.LFE126-.LFB126
	.byte	0x4
	.long	.LCFI493-.LFB126
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI494-.LCFI493
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI498-.LCFI494
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE222:
.LSFDE224:
	.long	.LEFDE224-.LASFDE224
.LASFDE224:
	.long	.Lframe0
	.long	.LFB127
	.long	.LFE127-.LFB127
	.byte	0x4
	.long	.LCFI499-.LFB127
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI500-.LCFI499
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI503-.LCFI500
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x3
	.align 4
.LEFDE224:
.LSFDE226:
	.long	.LEFDE226-.LASFDE226
.LASFDE226:
	.long	.Lframe0
	.long	.LFB128
	.long	.LFE128-.LFB128
	.byte	0x4
	.long	.LCFI504-.LFB128
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI505-.LCFI504
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI509-.LCFI505
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE226:
.LSFDE228:
	.long	.LEFDE228-.LASFDE228
.LASFDE228:
	.long	.Lframe0
	.long	.LFB129
	.long	.LFE129-.LFB129
	.byte	0x4
	.long	.LCFI510-.LFB129
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI511-.LCFI510
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI515-.LCFI511
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE228:
.LSFDE230:
	.long	.LEFDE230-.LASFDE230
.LASFDE230:
	.long	.Lframe0
	.long	.LFB130
	.long	.LFE130-.LFB130
	.byte	0x4
	.long	.LCFI516-.LFB130
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI517-.LCFI516
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI519-.LCFI517
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE230:
.LSFDE232:
	.long	.LEFDE232-.LASFDE232
.LASFDE232:
	.long	.Lframe0
	.long	.LFB131
	.long	.LFE131-.LFB131
	.byte	0x4
	.long	.LCFI520-.LFB131
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI521-.LCFI520
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI523-.LCFI521
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE232:
.LSFDE234:
	.long	.LEFDE234-.LASFDE234
.LASFDE234:
	.long	.Lframe0
	.long	.LFB132
	.long	.LFE132-.LFB132
	.byte	0x4
	.long	.LCFI524-.LFB132
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI525-.LCFI524
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI527-.LCFI525
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE234:
.LSFDE236:
	.long	.LEFDE236-.LASFDE236
.LASFDE236:
	.long	.Lframe0
	.long	.LFB133
	.long	.LFE133-.LFB133
	.byte	0x4
	.long	.LCFI528-.LFB133
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI529-.LCFI528
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI531-.LCFI529
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE236:
.LSFDE238:
	.long	.LEFDE238-.LASFDE238
.LASFDE238:
	.long	.Lframe0
	.long	.LFB134
	.long	.LFE134-.LFB134
	.byte	0x4
	.long	.LCFI532-.LFB134
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI533-.LCFI532
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI535-.LCFI533
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE238:
.LSFDE240:
	.long	.LEFDE240-.LASFDE240
.LASFDE240:
	.long	.Lframe0
	.long	.LFB135
	.long	.LFE135-.LFB135
	.byte	0x4
	.long	.LCFI536-.LFB135
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI537-.LCFI536
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI539-.LCFI537
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE240:
.LSFDE242:
	.long	.LEFDE242-.LASFDE242
.LASFDE242:
	.long	.Lframe0
	.long	.LFB136
	.long	.LFE136-.LFB136
	.byte	0x4
	.long	.LCFI540-.LFB136
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI541-.LCFI540
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE242:
.LSFDE244:
	.long	.LEFDE244-.LASFDE244
.LASFDE244:
	.long	.Lframe0
	.long	.LFB137
	.long	.LFE137-.LFB137
	.byte	0x4
	.long	.LCFI543-.LFB137
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI544-.LCFI543
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE244:
.LSFDE246:
	.long	.LEFDE246-.LASFDE246
.LASFDE246:
	.long	.Lframe0
	.long	.LFB138
	.long	.LFE138-.LFB138
	.byte	0x4
	.long	.LCFI545-.LFB138
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI546-.LCFI545
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE246:
.LSFDE248:
	.long	.LEFDE248-.LASFDE248
.LASFDE248:
	.long	.Lframe0
	.long	.LFB139
	.long	.LFE139-.LFB139
	.byte	0x4
	.long	.LCFI547-.LFB139
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI548-.LCFI547
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI550-.LCFI548
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE248:
.LSFDE250:
	.long	.LEFDE250-.LASFDE250
.LASFDE250:
	.long	.Lframe0
	.long	.LFB140
	.long	.LFE140-.LFB140
	.byte	0x4
	.long	.LCFI551-.LFB140
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI552-.LCFI551
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI554-.LCFI552
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE250:
.LSFDE252:
	.long	.LEFDE252-.LASFDE252
.LASFDE252:
	.long	.Lframe0
	.long	.LFB141
	.long	.LFE141-.LFB141
	.byte	0x4
	.long	.LCFI555-.LFB141
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI556-.LCFI555
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI558-.LCFI556
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE252:
.LSFDE254:
	.long	.LEFDE254-.LASFDE254
.LASFDE254:
	.long	.Lframe0
	.long	.LFB142
	.long	.LFE142-.LFB142
	.byte	0x4
	.long	.LCFI559-.LFB142
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI560-.LCFI559
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI562-.LCFI560
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE254:
.LSFDE256:
	.long	.LEFDE256-.LASFDE256
.LASFDE256:
	.long	.Lframe0
	.long	.LFB143
	.long	.LFE143-.LFB143
	.byte	0x4
	.long	.LCFI563-.LFB143
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI564-.LCFI563
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI566-.LCFI564
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE256:
.LSFDE258:
	.long	.LEFDE258-.LASFDE258
.LASFDE258:
	.long	.Lframe0
	.long	.LFB144
	.long	.LFE144-.LFB144
	.byte	0x4
	.long	.LCFI567-.LFB144
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI568-.LCFI567
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI572-.LCFI568
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE258:
.LSFDE260:
	.long	.LEFDE260-.LASFDE260
.LASFDE260:
	.long	.Lframe0
	.long	.LFB145
	.long	.LFE145-.LFB145
	.byte	0x4
	.long	.LCFI573-.LFB145
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI574-.LCFI573
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI578-.LCFI574
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE260:
.LSFDE262:
	.long	.LEFDE262-.LASFDE262
.LASFDE262:
	.long	.Lframe0
	.long	.LFB146
	.long	.LFE146-.LFB146
	.byte	0x4
	.long	.LCFI579-.LFB146
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI580-.LCFI579
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI582-.LCFI580
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE262:
.LSFDE264:
	.long	.LEFDE264-.LASFDE264
.LASFDE264:
	.long	.Lframe0
	.long	.LFB147
	.long	.LFE147-.LFB147
	.byte	0x4
	.long	.LCFI583-.LFB147
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI584-.LCFI583
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI588-.LCFI584
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE264:
.LSFDE266:
	.long	.LEFDE266-.LASFDE266
.LASFDE266:
	.long	.Lframe0
	.long	.LFB148
	.long	.LFE148-.LFB148
	.byte	0x4
	.long	.LCFI589-.LFB148
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI590-.LCFI589
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI592-.LCFI590
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE266:
.LSFDE268:
	.long	.LEFDE268-.LASFDE268
.LASFDE268:
	.long	.Lframe0
	.long	.LFB149
	.long	.LFE149-.LFB149
	.byte	0x4
	.long	.LCFI593-.LFB149
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI594-.LCFI593
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI596-.LCFI594
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE268:
.LSFDE270:
	.long	.LEFDE270-.LASFDE270
.LASFDE270:
	.long	.Lframe0
	.long	.LFB150
	.long	.LFE150-.LFB150
	.byte	0x4
	.long	.LCFI597-.LFB150
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI598-.LCFI597
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI600-.LCFI598
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE270:
.LSFDE272:
	.long	.LEFDE272-.LASFDE272
.LASFDE272:
	.long	.Lframe0
	.long	.LFB151
	.long	.LFE151-.LFB151
	.byte	0x4
	.long	.LCFI601-.LFB151
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI602-.LCFI601
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE272:
.LSFDE274:
	.long	.LEFDE274-.LASFDE274
.LASFDE274:
	.long	.Lframe0
	.long	.LFB152
	.long	.LFE152-.LFB152
	.byte	0x4
	.long	.LCFI604-.LFB152
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI605-.LCFI604
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE274:
.LSFDE276:
	.long	.LEFDE276-.LASFDE276
.LASFDE276:
	.long	.Lframe0
	.long	.LFB153
	.long	.LFE153-.LFB153
	.byte	0x4
	.long	.LCFI607-.LFB153
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI608-.LCFI607
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI612-.LCFI608
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE276:
.LSFDE278:
	.long	.LEFDE278-.LASFDE278
.LASFDE278:
	.long	.Lframe0
	.long	.LFB154
	.long	.LFE154-.LFB154
	.byte	0x4
	.long	.LCFI613-.LFB154
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI614-.LCFI613
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI616-.LCFI614
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE278:
.LSFDE280:
	.long	.LEFDE280-.LASFDE280
.LASFDE280:
	.long	.Lframe0
	.long	.LFB155
	.long	.LFE155-.LFB155
	.byte	0x4
	.long	.LCFI617-.LFB155
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI618-.LCFI617
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI622-.LCFI618
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE280:
.LSFDE282:
	.long	.LEFDE282-.LASFDE282
.LASFDE282:
	.long	.Lframe0
	.long	.LFB156
	.long	.LFE156-.LFB156
	.byte	0x4
	.long	.LCFI623-.LFB156
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI624-.LCFI623
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI626-.LCFI624
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE282:
.LSFDE284:
	.long	.LEFDE284-.LASFDE284
.LASFDE284:
	.long	.Lframe0
	.long	.LFB157
	.long	.LFE157-.LFB157
	.byte	0x4
	.long	.LCFI627-.LFB157
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI628-.LCFI627
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI630-.LCFI628
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE284:
.LSFDE286:
	.long	.LEFDE286-.LASFDE286
.LASFDE286:
	.long	.Lframe0
	.long	.LFB158
	.long	.LFE158-.LFB158
	.byte	0x4
	.long	.LCFI631-.LFB158
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI632-.LCFI631
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI634-.LCFI632
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE286:
.LSFDE288:
	.long	.LEFDE288-.LASFDE288
.LASFDE288:
	.long	.Lframe0
	.long	.LFB159
	.long	.LFE159-.LFB159
	.byte	0x4
	.long	.LCFI635-.LFB159
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI636-.LCFI635
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI640-.LCFI636
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE288:
	.file 2 "../../../kgccfe/gnu/MIPS/config.h"
	.file 3 "../../../kgccfe/gnu/rtl.h"
	.file 4 "../../../kgccfe/gnu/machmode.h"
	.file 5 "../../../kgccfe/gnu/cselib.h"
	.file 6 "../../../kgccfe/gnu/varray.h"
	.file 7 "../../../kgccfe/gnu/bitmap.h"
	.file 8 "../../../kgccfe/gnu/basic-block.h"
	.file 9 "../../../kgccfe/gnu/sbitmap.h"
	.file 10 "/usr/include/stdio.h"
	.file 11 "/usr/include/libio.h"
	.file 12 "/usr/include/bits/types.h"
	.file 13 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h"
	.file 14 "../../../include/gnu/obstack.h"
	.file 15 "../../../kgccfe/gnu/MIPS/mips.h"
	.file 16 "../../../kgccfe/gnu/hard-reg-set.h"
	.file 17 "../../../kgccfe/gnu/regs.h"
	.file 18 "../../../kgccfe/gnu/flags.h"
	.file 19 "../../../kgccfe/gnu/function.h"
	.file 20 "../../../kgccfe/gnu/params.h"
	.file 21 "../../../kgccfe/gnu/MIPS/gt-gcse.h"
	.file 22 "../../../kgccfe/gnu/ggc.h"
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
	.long	.LCFI10-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI10-.Ltext0
	.long	.LCFI11-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI11-.Ltext0
	.long	.LFE17-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST3:
	.long	.LFB18-.Ltext0
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
	.long	.LFE21-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST7:
	.long	.LFB22-.Ltext0
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
	.long	.LFE22-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST8:
	.long	.LFB23-.Ltext0
	.long	.LCFI35-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI35-.Ltext0
	.long	.LCFI36-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI36-.Ltext0
	.long	.LFE23-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST9:
	.long	.LFB24-.Ltext0
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
	.long	.LFE24-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST10:
	.long	.LFB25-.Ltext0
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
	.long	.LFE25-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST11:
	.long	.LFB26-.Ltext0
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
	.long	.LFE26-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST12:
	.long	.LFB27-.Ltext0
	.long	.LCFI56-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI56-.Ltext0
	.long	.LCFI57-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI57-.Ltext0
	.long	.LFE27-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST13:
	.long	.LFB28-.Ltext0
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
	.long	.LFE28-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST14:
	.long	.LFB29-.Ltext0
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
	.long	.LFE29-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST15:
	.long	.LFB30-.Ltext0
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
	.long	.LFE30-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST16:
	.long	.LFB31-.Ltext0
	.long	.LCFI72-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI72-.Ltext0
	.long	.LCFI73-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI73-.Ltext0
	.long	.LFE31-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST17:
	.long	.LFB32-.Ltext0
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
	.long	.LFE32-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST18:
	.long	.LFB33-.Ltext0
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
	.long	.LFE33-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST19:
	.long	.LFB34-.Ltext0
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
	.long	.LFE34-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST20:
	.long	.LFB35-.Ltext0
	.long	.LCFI86-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI86-.Ltext0
	.long	.LCFI87-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI87-.Ltext0
	.long	.LFE35-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST21:
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
.LLST22:
	.long	.LFB36-.Ltext0
	.long	.LCFI94-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI94-.Ltext0
	.long	.LCFI95-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI95-.Ltext0
	.long	.LFE36-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST23:
	.long	.LFB38-.Ltext0
	.long	.LCFI97-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI97-.Ltext0
	.long	.LCFI98-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI98-.Ltext0
	.long	.LFE38-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST24:
	.long	.LFB39-.Ltext0
	.long	.LCFI100-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI100-.Ltext0
	.long	.LCFI101-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI101-.Ltext0
	.long	.LFE39-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST25:
	.long	.LFB40-.Ltext0
	.long	.LCFI106-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI106-.Ltext0
	.long	.LCFI107-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI107-.Ltext0
	.long	.LFE40-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST26:
	.long	.LFB41-.Ltext0
	.long	.LCFI110-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI110-.Ltext0
	.long	.LCFI111-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI111-.Ltext0
	.long	.LFE41-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST27:
	.long	.LFB42-.Ltext0
	.long	.LCFI114-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI114-.Ltext0
	.long	.LCFI115-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI115-.Ltext0
	.long	.LFE42-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST28:
	.long	.LFB43-.Ltext0
	.long	.LCFI118-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI118-.Ltext0
	.long	.LCFI119-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI119-.Ltext0
	.long	.LFE43-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST29:
	.long	.LFB44-.Ltext0
	.long	.LCFI120-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI120-.Ltext0
	.long	.LCFI121-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI121-.Ltext0
	.long	.LFE44-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST30:
	.long	.LFB45-.Ltext0
	.long	.LCFI122-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI122-.Ltext0
	.long	.LCFI123-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI123-.Ltext0
	.long	.LFE45-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST31:
	.long	.LFB46-.Ltext0
	.long	.LCFI125-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI125-.Ltext0
	.long	.LCFI126-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI126-.Ltext0
	.long	.LFE46-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST32:
	.long	.LFB47-.Ltext0
	.long	.LCFI129-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI129-.Ltext0
	.long	.LCFI130-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI130-.Ltext0
	.long	.LFE47-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST33:
	.long	.LFB48-.Ltext0
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
	.long	.LFE48-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST34:
	.long	.LFB49-.Ltext0
	.long	.LCFI140-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI140-.Ltext0
	.long	.LCFI141-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI141-.Ltext0
	.long	.LFE49-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST35:
	.long	.LFB50-.Ltext0
	.long	.LCFI145-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI145-.Ltext0
	.long	.LCFI146-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI146-.Ltext0
	.long	.LFE50-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST36:
	.long	.LFB51-.Ltext0
	.long	.LCFI149-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI149-.Ltext0
	.long	.LCFI150-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI150-.Ltext0
	.long	.LFE51-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST37:
	.long	.LFB52-.Ltext0
	.long	.LCFI155-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI155-.Ltext0
	.long	.LCFI156-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI156-.Ltext0
	.long	.LFE52-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST38:
	.long	.LFB53-.Ltext0
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
	.long	.LFE53-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST39:
	.long	.LFB54-.Ltext0
	.long	.LCFI162-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI162-.Ltext0
	.long	.LCFI163-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI163-.Ltext0
	.long	.LFE54-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST40:
	.long	.LFB55-.Ltext0
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
	.long	.LFE55-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST41:
	.long	.LFB56-.Ltext0
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
	.long	.LFE56-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST42:
	.long	.LFB57-.Ltext0
	.long	.LCFI172-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI172-.Ltext0
	.long	.LCFI173-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI173-.Ltext0
	.long	.LFE57-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST43:
	.long	.LFB58-.Ltext0
	.long	.LCFI174-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI174-.Ltext0
	.long	.LCFI175-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI175-.Ltext0
	.long	.LFE58-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST44:
	.long	.LFB59-.Ltext0
	.long	.LCFI178-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI178-.Ltext0
	.long	.LCFI179-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI179-.Ltext0
	.long	.LFE59-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST45:
	.long	.LFB60-.Ltext0
	.long	.LCFI182-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI182-.Ltext0
	.long	.LCFI183-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI183-.Ltext0
	.long	.LFE60-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST46:
	.long	.LFB61-.Ltext0
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
	.long	.LFE61-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST47:
	.long	.LFB62-.Ltext0
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
	.long	.LFE62-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST48:
	.long	.LFB63-.Ltext0
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
	.long	.LFE63-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST49:
	.long	.LFB64-.Ltext0
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
	.long	.LFE64-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST50:
	.long	.LFB65-.Ltext0
	.long	.LCFI201-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI201-.Ltext0
	.long	.LCFI202-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI202-.Ltext0
	.long	.LFE65-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST51:
	.long	.LFB66-.Ltext0
	.long	.LCFI205-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI205-.Ltext0
	.long	.LCFI206-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI206-.Ltext0
	.long	.LFE66-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST52:
	.long	.LFB67-.Ltext0
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
	.long	.LFE67-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST53:
	.long	.LFB68-.Ltext0
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
	.long	.LFE68-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST54:
	.long	.LFB69-.Ltext0
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
	.long	.LFE69-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST55:
	.long	.LFB70-.Ltext0
	.long	.LCFI222-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI222-.Ltext0
	.long	.LCFI223-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI223-.Ltext0
	.long	.LFE70-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST56:
	.long	.LFB71-.Ltext0
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
	.long	.LFE71-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST57:
	.long	.LFB72-.Ltext0
	.long	.LCFI234-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI234-.Ltext0
	.long	.LCFI235-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI235-.Ltext0
	.long	.LFE72-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST58:
	.long	.LFB73-.Ltext0
	.long	.LCFI238-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI238-.Ltext0
	.long	.LCFI239-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI239-.Ltext0
	.long	.LFE73-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST59:
	.long	.LFB74-.Ltext0
	.long	.LCFI242-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI242-.Ltext0
	.long	.LCFI243-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI243-.Ltext0
	.long	.LFE74-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST60:
	.long	.LFB75-.Ltext0
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
	.long	.LFE75-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST61:
	.long	.LFB76-.Ltext0
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
	.long	.LFE76-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST62:
	.long	.LFB77-.Ltext0
	.long	.LCFI260-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI260-.Ltext0
	.long	.LCFI261-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI261-.Ltext0
	.long	.LFE77-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST63:
	.long	.LFB78-.Ltext0
	.long	.LCFI266-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI266-.Ltext0
	.long	.LCFI267-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI267-.Ltext0
	.long	.LFE78-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST64:
	.long	.LFB79-.Ltext0
	.long	.LCFI270-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI270-.Ltext0
	.long	.LCFI271-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI271-.Ltext0
	.long	.LFE79-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST65:
	.long	.LFB80-.Ltext0
	.long	.LCFI274-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI274-.Ltext0
	.long	.LCFI275-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI275-.Ltext0
	.long	.LFE80-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST66:
	.long	.LFB81-.Ltext0
	.long	.LCFI280-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI280-.Ltext0
	.long	.LCFI281-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI281-.Ltext0
	.long	.LFE81-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST67:
	.long	.LFB82-.Ltext0
	.long	.LCFI284-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI284-.Ltext0
	.long	.LCFI285-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI285-.Ltext0
	.long	.LFE82-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST68:
	.long	.LFB83-.Ltext0
	.long	.LCFI288-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI288-.Ltext0
	.long	.LCFI289-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI289-.Ltext0
	.long	.LFE83-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST69:
	.long	.LFB84-.Ltext0
	.long	.LCFI294-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI294-.Ltext0
	.long	.LCFI295-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI295-.Ltext0
	.long	.LFE84-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST70:
	.long	.LFB85-.Ltext0
	.long	.LCFI300-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI300-.Ltext0
	.long	.LCFI301-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI301-.Ltext0
	.long	.LFE85-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST71:
	.long	.LFB86-.Ltext0
	.long	.LCFI304-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI304-.Ltext0
	.long	.LCFI305-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI305-.Ltext0
	.long	.LFE86-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST72:
	.long	.LFB87-.Ltext0
	.long	.LCFI308-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI308-.Ltext0
	.long	.LCFI309-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI309-.Ltext0
	.long	.LFE87-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST73:
	.long	.LFB88-.Ltext0
	.long	.LCFI314-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI314-.Ltext0
	.long	.LCFI315-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI315-.Ltext0
	.long	.LFE88-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST74:
	.long	.LFB89-.Ltext0
	.long	.LCFI319-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI319-.Ltext0
	.long	.LCFI320-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI320-.Ltext0
	.long	.LFE89-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST75:
	.long	.LFB90-.Ltext0
	.long	.LCFI323-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI323-.Ltext0
	.long	.LCFI324-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI324-.Ltext0
	.long	.LFE90-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST76:
	.long	.LFB91-.Ltext0
	.long	.LCFI327-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI327-.Ltext0
	.long	.LCFI328-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI328-.Ltext0
	.long	.LFE91-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST77:
	.long	.LFB92-.Ltext0
	.long	.LCFI333-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI333-.Ltext0
	.long	.LCFI334-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI334-.Ltext0
	.long	.LFE92-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST78:
	.long	.LFB93-.Ltext0
	.long	.LCFI337-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI337-.Ltext0
	.long	.LCFI338-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI338-.Ltext0
	.long	.LFE93-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST79:
	.long	.LFB94-.Ltext0
	.long	.LCFI341-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI341-.Ltext0
	.long	.LCFI342-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI342-.Ltext0
	.long	.LFE94-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST80:
	.long	.LFB95-.Ltext0
	.long	.LCFI345-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI345-.Ltext0
	.long	.LCFI346-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI346-.Ltext0
	.long	.LFE95-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST81:
	.long	.LFB96-.Ltext0
	.long	.LCFI349-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI349-.Ltext0
	.long	.LCFI350-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI350-.Ltext0
	.long	.LFE96-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST82:
	.long	.LFB97-.Ltext0
	.long	.LCFI353-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI353-.Ltext0
	.long	.LCFI354-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI354-.Ltext0
	.long	.LFE97-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST83:
	.long	.LFB98-.Ltext0
	.long	.LCFI357-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI357-.Ltext0
	.long	.LCFI358-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI358-.Ltext0
	.long	.LFE98-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST84:
	.long	.LFB99-.Ltext0
	.long	.LCFI361-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI361-.Ltext0
	.long	.LCFI362-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI362-.Ltext0
	.long	.LFE99-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST85:
	.long	.LFB100-.Ltext0
	.long	.LCFI365-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI365-.Ltext0
	.long	.LCFI366-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI366-.Ltext0
	.long	.LFE100-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST86:
	.long	.LFB101-.Ltext0
	.long	.LCFI370-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI370-.Ltext0
	.long	.LCFI371-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI371-.Ltext0
	.long	.LFE101-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST87:
	.long	.LFB102-.Ltext0
	.long	.LCFI376-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI376-.Ltext0
	.long	.LCFI377-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI377-.Ltext0
	.long	.LFE102-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST88:
	.long	.LFB103-.Ltext0
	.long	.LCFI380-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI380-.Ltext0
	.long	.LCFI381-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI381-.Ltext0
	.long	.LFE103-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST89:
	.long	.LFB104-.Ltext0
	.long	.LCFI385-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI385-.Ltext0
	.long	.LCFI386-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI386-.Ltext0
	.long	.LFE104-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST90:
	.long	.LFB105-.Ltext0
	.long	.LCFI389-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI389-.Ltext0
	.long	.LCFI390-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI390-.Ltext0
	.long	.LFE105-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST91:
	.long	.LFB106-.Ltext0
	.long	.LCFI393-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI393-.Ltext0
	.long	.LCFI394-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI394-.Ltext0
	.long	.LFE106-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST92:
	.long	.LFB107-.Ltext0
	.long	.LCFI397-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI397-.Ltext0
	.long	.LCFI398-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI398-.Ltext0
	.long	.LFE107-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST93:
	.long	.LFB108-.Ltext0
	.long	.LCFI403-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI403-.Ltext0
	.long	.LCFI404-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI404-.Ltext0
	.long	.LFE108-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST94:
	.long	.LFB109-.Ltext0
	.long	.LCFI409-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI409-.Ltext0
	.long	.LCFI410-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI410-.Ltext0
	.long	.LFE109-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST95:
	.long	.LFB110-.Ltext0
	.long	.LCFI413-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI413-.Ltext0
	.long	.LCFI414-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI414-.Ltext0
	.long	.LFE110-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST96:
	.long	.LFB111-.Ltext0
	.long	.LCFI417-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI417-.Ltext0
	.long	.LCFI418-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI418-.Ltext0
	.long	.LFE111-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST97:
	.long	.LFB112-.Ltext0
	.long	.LCFI423-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI423-.Ltext0
	.long	.LCFI424-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI424-.Ltext0
	.long	.LFE112-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST98:
	.long	.LFB113-.Ltext0
	.long	.LCFI429-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI429-.Ltext0
	.long	.LCFI430-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI430-.Ltext0
	.long	.LFE113-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST99:
	.long	.LFB114-.Ltext0
	.long	.LCFI435-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI435-.Ltext0
	.long	.LCFI436-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI436-.Ltext0
	.long	.LFE114-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST100:
	.long	.LFB115-.Ltext0
	.long	.LCFI441-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI441-.Ltext0
	.long	.LCFI442-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI442-.Ltext0
	.long	.LFE115-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST101:
	.long	.LFB116-.Ltext0
	.long	.LCFI445-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI445-.Ltext0
	.long	.LCFI446-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI446-.Ltext0
	.long	.LFE116-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST102:
	.long	.LFB117-.Ltext0
	.long	.LCFI451-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI451-.Ltext0
	.long	.LCFI452-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI452-.Ltext0
	.long	.LFE117-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST103:
	.long	.LFB118-.Ltext0
	.long	.LCFI455-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI455-.Ltext0
	.long	.LCFI456-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI456-.Ltext0
	.long	.LFE118-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST104:
	.long	.LFB119-.Ltext0
	.long	.LCFI460-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI460-.Ltext0
	.long	.LCFI461-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI461-.Ltext0
	.long	.LFE119-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST105:
	.long	.LFB120-.Ltext0
	.long	.LCFI464-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI464-.Ltext0
	.long	.LCFI465-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI465-.Ltext0
	.long	.LFE120-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST106:
	.long	.LFB121-.Ltext0
	.long	.LCFI470-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI470-.Ltext0
	.long	.LCFI471-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI471-.Ltext0
	.long	.LFE121-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST107:
	.long	.LFB122-.Ltext0
	.long	.LCFI475-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI475-.Ltext0
	.long	.LCFI476-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI476-.Ltext0
	.long	.LFE122-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST108:
	.long	.LFB123-.Ltext0
	.long	.LCFI481-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI481-.Ltext0
	.long	.LCFI482-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI482-.Ltext0
	.long	.LFE123-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST109:
	.long	.LFB124-.Ltext0
	.long	.LCFI485-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI485-.Ltext0
	.long	.LCFI486-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI486-.Ltext0
	.long	.LFE124-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST110:
	.long	.LFB125-.Ltext0
	.long	.LCFI489-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI489-.Ltext0
	.long	.LCFI490-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI490-.Ltext0
	.long	.LFE125-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST111:
	.long	.LFB126-.Ltext0
	.long	.LCFI493-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI493-.Ltext0
	.long	.LCFI494-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI494-.Ltext0
	.long	.LFE126-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST112:
	.long	.LFB127-.Ltext0
	.long	.LCFI499-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI499-.Ltext0
	.long	.LCFI500-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI500-.Ltext0
	.long	.LFE127-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST113:
	.long	.LFB128-.Ltext0
	.long	.LCFI504-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI504-.Ltext0
	.long	.LCFI505-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI505-.Ltext0
	.long	.LFE128-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST114:
	.long	.LFB129-.Ltext0
	.long	.LCFI510-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI510-.Ltext0
	.long	.LCFI511-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI511-.Ltext0
	.long	.LFE129-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST115:
	.long	.LFB130-.Ltext0
	.long	.LCFI516-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI516-.Ltext0
	.long	.LCFI517-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI517-.Ltext0
	.long	.LFE130-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST116:
	.long	.LFB131-.Ltext0
	.long	.LCFI520-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI520-.Ltext0
	.long	.LCFI521-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI521-.Ltext0
	.long	.LFE131-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST117:
	.long	.LFB132-.Ltext0
	.long	.LCFI524-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI524-.Ltext0
	.long	.LCFI525-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI525-.Ltext0
	.long	.LFE132-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST118:
	.long	.LFB133-.Ltext0
	.long	.LCFI528-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI528-.Ltext0
	.long	.LCFI529-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI529-.Ltext0
	.long	.LFE133-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST119:
	.long	.LFB134-.Ltext0
	.long	.LCFI532-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI532-.Ltext0
	.long	.LCFI533-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI533-.Ltext0
	.long	.LFE134-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST120:
	.long	.LFB135-.Ltext0
	.long	.LCFI536-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI536-.Ltext0
	.long	.LCFI537-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI537-.Ltext0
	.long	.LFE135-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST121:
	.long	.LFB136-.Ltext0
	.long	.LCFI540-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI540-.Ltext0
	.long	.LCFI541-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI541-.Ltext0
	.long	.LFE136-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST122:
	.long	.LFB137-.Ltext0
	.long	.LCFI543-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI543-.Ltext0
	.long	.LCFI544-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI544-.Ltext0
	.long	.LFE137-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST123:
	.long	.LFB138-.Ltext0
	.long	.LCFI545-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI545-.Ltext0
	.long	.LCFI546-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI546-.Ltext0
	.long	.LFE138-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST124:
	.long	.LFB139-.Ltext0
	.long	.LCFI547-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI547-.Ltext0
	.long	.LCFI548-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI548-.Ltext0
	.long	.LFE139-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST125:
	.long	.LFB140-.Ltext0
	.long	.LCFI551-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI551-.Ltext0
	.long	.LCFI552-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI552-.Ltext0
	.long	.LFE140-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST126:
	.long	.LFB141-.Ltext0
	.long	.LCFI555-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI555-.Ltext0
	.long	.LCFI556-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI556-.Ltext0
	.long	.LFE141-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST127:
	.long	.LFB142-.Ltext0
	.long	.LCFI559-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI559-.Ltext0
	.long	.LCFI560-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI560-.Ltext0
	.long	.LFE142-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST128:
	.long	.LFB143-.Ltext0
	.long	.LCFI563-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI563-.Ltext0
	.long	.LCFI564-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI564-.Ltext0
	.long	.LFE143-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST129:
	.long	.LFB144-.Ltext0
	.long	.LCFI567-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI567-.Ltext0
	.long	.LCFI568-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI568-.Ltext0
	.long	.LFE144-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST130:
	.long	.LFB145-.Ltext0
	.long	.LCFI573-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI573-.Ltext0
	.long	.LCFI574-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI574-.Ltext0
	.long	.LFE145-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST131:
	.long	.LFB146-.Ltext0
	.long	.LCFI579-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI579-.Ltext0
	.long	.LCFI580-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI580-.Ltext0
	.long	.LFE146-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST132:
	.long	.LFB147-.Ltext0
	.long	.LCFI583-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI583-.Ltext0
	.long	.LCFI584-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI584-.Ltext0
	.long	.LFE147-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST133:
	.long	.LFB148-.Ltext0
	.long	.LCFI589-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI589-.Ltext0
	.long	.LCFI590-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI590-.Ltext0
	.long	.LFE148-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST134:
	.long	.LFB149-.Ltext0
	.long	.LCFI593-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI593-.Ltext0
	.long	.LCFI594-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI594-.Ltext0
	.long	.LFE149-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST135:
	.long	.LFB150-.Ltext0
	.long	.LCFI597-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI597-.Ltext0
	.long	.LCFI598-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI598-.Ltext0
	.long	.LFE150-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST136:
	.long	.LFB151-.Ltext0
	.long	.LCFI601-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI601-.Ltext0
	.long	.LCFI602-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI602-.Ltext0
	.long	.LFE151-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST137:
	.long	.LFB152-.Ltext0
	.long	.LCFI604-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI604-.Ltext0
	.long	.LCFI605-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI605-.Ltext0
	.long	.LFE152-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST138:
	.long	.LFB153-.Ltext0
	.long	.LCFI607-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI607-.Ltext0
	.long	.LCFI608-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI608-.Ltext0
	.long	.LFE153-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST139:
	.long	.LFB154-.Ltext0
	.long	.LCFI613-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI613-.Ltext0
	.long	.LCFI614-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI614-.Ltext0
	.long	.LFE154-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST140:
	.long	.LFB155-.Ltext0
	.long	.LCFI617-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI617-.Ltext0
	.long	.LCFI618-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI618-.Ltext0
	.long	.LFE155-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST141:
	.long	.LFB156-.Ltext0
	.long	.LCFI623-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI623-.Ltext0
	.long	.LCFI624-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI624-.Ltext0
	.long	.LFE156-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST142:
	.long	.LFB157-.Ltext0
	.long	.LCFI627-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI627-.Ltext0
	.long	.LCFI628-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI628-.Ltext0
	.long	.LFE157-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST143:
	.long	.LFB158-.Ltext0
	.long	.LCFI631-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI631-.Ltext0
	.long	.LCFI632-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI632-.Ltext0
	.long	.LFE158-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST144:
	.long	.LFB159-.Ltext0
	.long	.LCFI635-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI635-.Ltext0
	.long	.LCFI636-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI636-.Ltext0
	.long	.LFE159-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
	.section	.debug_info
	.long	0x86d5
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.Ldebug_line0
	.long	.Letext0
	.long	.Ltext0
	.string	"GNU C 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.byte	0x1
	.string	"../../../kgccfe/gnu/gcse.c"
	.string	"/usa/handong/simplnano/cmplr-open64-merge/targia32_sl1/gccfe/gnu"
	.uleb128 0x2
	.string	"rtx"
	.byte	0x2
	.byte	0xc
	.long	0xa4
	.uleb128 0x3
	.byte	0x4
	.long	0xaa
	.uleb128 0x4
	.long	0x199
	.string	"rtx_def"
	.byte	0xc
	.byte	0x2
	.byte	0xb
	.uleb128 0x5
	.long	.LASF0
	.byte	0x3
	.byte	0x8a
	.long	0xa41
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"mode"
	.byte	0x3
	.byte	0x8d
	.long	0x749
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
	.long	0x2eb
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
	.long	0x2eb
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
	.long	0x2eb
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
	.long	0x2eb
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
	.long	0x2eb
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
	.long	0x2eb
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
	.long	0x2eb
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
	.long	0x2eb
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
	.long	0x169d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"rtvec"
	.byte	0x2
	.byte	0xe
	.long	0x1a6
	.uleb128 0x3
	.byte	0x4
	.long	0x1ac
	.uleb128 0x4
	.long	0x1e1
	.string	"rtvec_def"
	.byte	0x8
	.byte	0x2
	.byte	0xd
	.uleb128 0x7
	.string	"num_elem"
	.byte	0x3
	.byte	0xf8
	.long	0x212
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"elem"
	.byte	0x3
	.byte	0xf9
	.long	0x16ad
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"tree"
	.byte	0x2
	.byte	0x10
	.long	0x1ed
	.uleb128 0x3
	.byte	0x4
	.long	0x1f3
	.uleb128 0x8
	.string	"tree_node"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x205
	.uleb128 0x9
	.long	0x20a
	.uleb128 0xa
	.string	"char"
	.byte	0x1
	.byte	0x8
	.uleb128 0xa
	.string	"int"
	.byte	0x4
	.byte	0x5
	.uleb128 0xb
	.long	0x2eb
	.string	"mips_args"
	.byte	0x40
	.byte	0xf
	.value	0xaaa
	.uleb128 0xc
	.string	"gp_reg_found"
	.byte	0xf
	.value	0xaad
	.long	0x212
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.string	"arg_number"
	.byte	0xf
	.value	0xab0
	.long	0x2eb
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.string	"num_gprs"
	.byte	0xf
	.value	0xab5
	.long	0x2eb
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.string	"num_fprs"
	.byte	0xf
	.value	0xab8
	.long	0x2eb
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xc
	.string	"stack_words"
	.byte	0xf
	.value	0xabb
	.long	0x2eb
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xc
	.string	"fp_code"
	.byte	0xf
	.value	0xac8
	.long	0x212
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xc
	.string	"prototype"
	.byte	0xf
	.value	0xacb
	.long	0x212
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xc
	.string	"num_adjusts"
	.byte	0xf
	.value	0xad3
	.long	0x2eb
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xc
	.string	"adjust"
	.byte	0xf
	.value	0xad4
	.long	0x2f2
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0xd
	.long	.LASF1
	.byte	0x4
	.byte	0x7
	.uleb128 0xe
	.long	0x302
	.long	0x99
	.uleb128 0xf
	.long	0x302
	.byte	0x7
	.byte	0x0
	.uleb128 0xd
	.long	.LASF1
	.byte	0x4
	.byte	0x7
	.uleb128 0x10
	.string	"CUMULATIVE_ARGS"
	.byte	0xf
	.value	0xad5
	.long	0x219
	.uleb128 0x2
	.string	"size_t"
	.byte	0xd
	.byte	0xd6
	.long	0x2eb
	.uleb128 0xa
	.string	"unsigned char"
	.byte	0x1
	.byte	0x8
	.uleb128 0xa
	.string	"short unsigned int"
	.byte	0x2
	.byte	0x7
	.uleb128 0xa
	.string	"long unsigned int"
	.byte	0x4
	.byte	0x7
	.uleb128 0xa
	.string	"signed char"
	.byte	0x1
	.byte	0x6
	.uleb128 0xa
	.string	"short int"
	.byte	0x2
	.byte	0x5
	.uleb128 0xa
	.string	"long long int"
	.byte	0x8
	.byte	0x5
	.uleb128 0xa
	.string	"long long unsigned int"
	.byte	0x8
	.byte	0x7
	.uleb128 0x2
	.string	"__quad_t"
	.byte	0xc
	.byte	0x3b
	.long	0x387
	.uleb128 0x2
	.string	"__off_t"
	.byte	0xc
	.byte	0x90
	.long	0x3d1
	.uleb128 0xa
	.string	"long int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x2
	.string	"__off64_t"
	.byte	0xc
	.byte	0x91
	.long	0x3b2
	.uleb128 0x11
	.byte	0x4
	.uleb128 0x3
	.byte	0x4
	.long	0x20a
	.uleb128 0x2
	.string	"FILE"
	.byte	0xa
	.byte	0x2e
	.long	0x402
	.uleb128 0x12
	.long	0x67d
	.long	.LASF2
	.byte	0x94
	.byte	0xa
	.byte	0x2e
	.uleb128 0xc
	.string	"_flags"
	.byte	0xb
	.value	0x10c
	.long	0x212
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.string	"_IO_read_ptr"
	.byte	0xb
	.value	0x111
	.long	0x3f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.string	"_IO_read_end"
	.byte	0xb
	.value	0x112
	.long	0x3f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.string	"_IO_read_base"
	.byte	0xb
	.value	0x113
	.long	0x3f0
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xc
	.string	"_IO_write_base"
	.byte	0xb
	.value	0x114
	.long	0x3f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xc
	.string	"_IO_write_ptr"
	.byte	0xb
	.value	0x115
	.long	0x3f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xc
	.string	"_IO_write_end"
	.byte	0xb
	.value	0x116
	.long	0x3f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xc
	.string	"_IO_buf_base"
	.byte	0xb
	.value	0x117
	.long	0x3f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xc
	.string	"_IO_buf_end"
	.byte	0xb
	.value	0x118
	.long	0x3f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xc
	.string	"_IO_save_base"
	.byte	0xb
	.value	0x11a
	.long	0x3f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xc
	.string	"_IO_backup_base"
	.byte	0xb
	.value	0x11b
	.long	0x3f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xc
	.string	"_IO_save_end"
	.byte	0xb
	.value	0x11c
	.long	0x3f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xc
	.string	"_markers"
	.byte	0xb
	.value	0x11e
	.long	0x701
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xc
	.string	"_chain"
	.byte	0xb
	.value	0x120
	.long	0x707
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xc
	.string	"_fileno"
	.byte	0xb
	.value	0x122
	.long	0x212
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xc
	.string	"_flags2"
	.byte	0xb
	.value	0x126
	.long	0x212
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xc
	.string	"_old_offset"
	.byte	0xb
	.value	0x128
	.long	0x3c2
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xc
	.string	"_cur_column"
	.byte	0xb
	.value	0x12c
	.long	0x340
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xc
	.string	"_vtable_offset"
	.byte	0xb
	.value	0x12d
	.long	0x36b
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0xc
	.string	"_shortbuf"
	.byte	0xb
	.value	0x12e
	.long	0x70d
	.byte	0x2
	.byte	0x23
	.uleb128 0x47
	.uleb128 0xc
	.string	"_lock"
	.byte	0xb
	.value	0x132
	.long	0x71d
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xc
	.string	"_offset"
	.byte	0xb
	.value	0x13b
	.long	0x3dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xc
	.string	"__pad1"
	.byte	0xb
	.value	0x144
	.long	0x3ee
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xc
	.string	"__pad2"
	.byte	0xb
	.value	0x145
	.long	0x3ee
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xc
	.string	"__pad3"
	.byte	0xb
	.value	0x146
	.long	0x3ee
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xc
	.string	"__pad4"
	.byte	0xb
	.value	0x147
	.long	0x3ee
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xc
	.string	"__pad5"
	.byte	0xb
	.value	0x148
	.long	0x321
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xc
	.string	"_mode"
	.byte	0xb
	.value	0x14a
	.long	0x212
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xc
	.string	"_unused2"
	.byte	0xb
	.value	0x14c
	.long	0x723
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.byte	0x0
	.uleb128 0xe
	.long	0x68d
	.long	0x20a
	.uleb128 0xf
	.long	0x302
	.byte	0x3
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x693
	.uleb128 0x9
	.long	0x32f
	.uleb128 0x3
	.byte	0x4
	.long	0x32f
	.uleb128 0x3
	.byte	0x4
	.long	0x6a4
	.uleb128 0x13
	.long	0x6b0
	.byte	0x1
	.uleb128 0x14
	.long	0x3ee
	.byte	0x0
	.uleb128 0x15
	.string	"_IO_lock_t"
	.byte	0xb
	.byte	0xb0
	.uleb128 0x4
	.long	0x701
	.string	"_IO_marker"
	.byte	0xc
	.byte	0xb
	.byte	0xb6
	.uleb128 0x7
	.string	"_next"
	.byte	0xb
	.byte	0xb7
	.long	0x701
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"_sbuf"
	.byte	0xb
	.byte	0xb8
	.long	0x707
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"_pos"
	.byte	0xb
	.byte	0xbc
	.long	0x212
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6be
	.uleb128 0x3
	.byte	0x4
	.long	0x402
	.uleb128 0xe
	.long	0x71d
	.long	0x20a
	.uleb128 0xf
	.long	0x302
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6b0
	.uleb128 0xe
	.long	0x733
	.long	0x20a
	.uleb128 0xf
	.long	0x302
	.byte	0x27
	.byte	0x0
	.uleb128 0xe
	.long	0x743
	.long	0x20a
	.uleb128 0xf
	.long	0x302
	.byte	0x13
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x212
	.uleb128 0x16
	.long	0x992
	.string	"machine_mode"
	.byte	0x4
	.byte	0x4
	.byte	0x1d
	.uleb128 0x17
	.string	"VOIDmode"
	.sleb128 0
	.uleb128 0x17
	.string	"BImode"
	.sleb128 1
	.uleb128 0x17
	.string	"QImode"
	.sleb128 2
	.uleb128 0x17
	.string	"HImode"
	.sleb128 3
	.uleb128 0x17
	.string	"SImode"
	.sleb128 4
	.uleb128 0x17
	.string	"DImode"
	.sleb128 5
	.uleb128 0x17
	.string	"TImode"
	.sleb128 6
	.uleb128 0x17
	.string	"OImode"
	.sleb128 7
	.uleb128 0x17
	.string	"PQImode"
	.sleb128 8
	.uleb128 0x17
	.string	"PHImode"
	.sleb128 9
	.uleb128 0x17
	.string	"PSImode"
	.sleb128 10
	.uleb128 0x17
	.string	"PDImode"
	.sleb128 11
	.uleb128 0x17
	.string	"QFmode"
	.sleb128 12
	.uleb128 0x17
	.string	"HFmode"
	.sleb128 13
	.uleb128 0x17
	.string	"TQFmode"
	.sleb128 14
	.uleb128 0x17
	.string	"SFmode"
	.sleb128 15
	.uleb128 0x17
	.string	"DFmode"
	.sleb128 16
	.uleb128 0x17
	.string	"XFmode"
	.sleb128 17
	.uleb128 0x17
	.string	"TFmode"
	.sleb128 18
	.uleb128 0x17
	.string	"QCmode"
	.sleb128 19
	.uleb128 0x17
	.string	"HCmode"
	.sleb128 20
	.uleb128 0x17
	.string	"SCmode"
	.sleb128 21
	.uleb128 0x17
	.string	"DCmode"
	.sleb128 22
	.uleb128 0x17
	.string	"XCmode"
	.sleb128 23
	.uleb128 0x17
	.string	"TCmode"
	.sleb128 24
	.uleb128 0x17
	.string	"CQImode"
	.sleb128 25
	.uleb128 0x17
	.string	"CHImode"
	.sleb128 26
	.uleb128 0x17
	.string	"CSImode"
	.sleb128 27
	.uleb128 0x17
	.string	"CDImode"
	.sleb128 28
	.uleb128 0x17
	.string	"CTImode"
	.sleb128 29
	.uleb128 0x17
	.string	"COImode"
	.sleb128 30
	.uleb128 0x17
	.string	"V1DImode"
	.sleb128 31
	.uleb128 0x17
	.string	"V2QImode"
	.sleb128 32
	.uleb128 0x17
	.string	"V2HImode"
	.sleb128 33
	.uleb128 0x17
	.string	"V2SImode"
	.sleb128 34
	.uleb128 0x17
	.string	"V2DImode"
	.sleb128 35
	.uleb128 0x17
	.string	"V4QImode"
	.sleb128 36
	.uleb128 0x17
	.string	"V4HImode"
	.sleb128 37
	.uleb128 0x17
	.string	"V4SImode"
	.sleb128 38
	.uleb128 0x17
	.string	"V4DImode"
	.sleb128 39
	.uleb128 0x17
	.string	"V8QImode"
	.sleb128 40
	.uleb128 0x17
	.string	"V8HImode"
	.sleb128 41
	.uleb128 0x17
	.string	"V8SImode"
	.sleb128 42
	.uleb128 0x17
	.string	"V8DImode"
	.sleb128 43
	.uleb128 0x17
	.string	"V16QImode"
	.sleb128 44
	.uleb128 0x17
	.string	"V2SFmode"
	.sleb128 45
	.uleb128 0x17
	.string	"V2DFmode"
	.sleb128 46
	.uleb128 0x17
	.string	"V4SFmode"
	.sleb128 47
	.uleb128 0x17
	.string	"V4DFmode"
	.sleb128 48
	.uleb128 0x17
	.string	"V8SFmode"
	.sleb128 49
	.uleb128 0x17
	.string	"V8DFmode"
	.sleb128 50
	.uleb128 0x17
	.string	"V16SFmode"
	.sleb128 51
	.uleb128 0x17
	.string	"BLKmode"
	.sleb128 52
	.uleb128 0x17
	.string	"CCmode"
	.sleb128 53
	.uleb128 0x17
	.string	"MAX_MACHINE_MODE"
	.sleb128 54
	.byte	0x0
	.uleb128 0x18
	.long	0xa41
	.long	.LASF3
	.byte	0x4
	.byte	0x4
	.byte	0x2c
	.uleb128 0x17
	.string	"MODE_RANDOM"
	.sleb128 0
	.uleb128 0x17
	.string	"MODE_INT"
	.sleb128 1
	.uleb128 0x17
	.string	"MODE_FLOAT"
	.sleb128 2
	.uleb128 0x17
	.string	"MODE_PARTIAL_INT"
	.sleb128 3
	.uleb128 0x17
	.string	"MODE_CC"
	.sleb128 4
	.uleb128 0x17
	.string	"MODE_COMPLEX_INT"
	.sleb128 5
	.uleb128 0x17
	.string	"MODE_COMPLEX_FLOAT"
	.sleb128 6
	.uleb128 0x17
	.string	"MODE_VECTOR_INT"
	.sleb128 7
	.uleb128 0x17
	.string	"MODE_VECTOR_FLOAT"
	.sleb128 8
	.uleb128 0x17
	.string	"MAX_MODE_CLASS"
	.sleb128 9
	.byte	0x0
	.uleb128 0x16
	.long	0x1210
	.string	"rtx_code"
	.byte	0x4
	.byte	0x3
	.byte	0x2f
	.uleb128 0x17
	.string	"UNKNOWN"
	.sleb128 0
	.uleb128 0x17
	.string	"NIL"
	.sleb128 1
	.uleb128 0x17
	.string	"INCLUDE"
	.sleb128 2
	.uleb128 0x17
	.string	"EXPR_LIST"
	.sleb128 3
	.uleb128 0x17
	.string	"INSN_LIST"
	.sleb128 4
	.uleb128 0x17
	.string	"MATCH_OPERAND"
	.sleb128 5
	.uleb128 0x17
	.string	"MATCH_SCRATCH"
	.sleb128 6
	.uleb128 0x17
	.string	"MATCH_DUP"
	.sleb128 7
	.uleb128 0x17
	.string	"MATCH_OPERATOR"
	.sleb128 8
	.uleb128 0x17
	.string	"MATCH_PARALLEL"
	.sleb128 9
	.uleb128 0x17
	.string	"MATCH_OP_DUP"
	.sleb128 10
	.uleb128 0x17
	.string	"MATCH_PAR_DUP"
	.sleb128 11
	.uleb128 0x17
	.string	"MATCH_INSN"
	.sleb128 12
	.uleb128 0x17
	.string	"DEFINE_INSN"
	.sleb128 13
	.uleb128 0x17
	.string	"DEFINE_PEEPHOLE"
	.sleb128 14
	.uleb128 0x17
	.string	"DEFINE_SPLIT"
	.sleb128 15
	.uleb128 0x17
	.string	"DEFINE_INSN_AND_SPLIT"
	.sleb128 16
	.uleb128 0x17
	.string	"DEFINE_PEEPHOLE2"
	.sleb128 17
	.uleb128 0x17
	.string	"DEFINE_COMBINE"
	.sleb128 18
	.uleb128 0x17
	.string	"DEFINE_EXPAND"
	.sleb128 19
	.uleb128 0x17
	.string	"DEFINE_DELAY"
	.sleb128 20
	.uleb128 0x17
	.string	"DEFINE_FUNCTION_UNIT"
	.sleb128 21
	.uleb128 0x17
	.string	"DEFINE_ASM_ATTRIBUTES"
	.sleb128 22
	.uleb128 0x17
	.string	"DEFINE_COND_EXEC"
	.sleb128 23
	.uleb128 0x17
	.string	"SEQUENCE"
	.sleb128 24
	.uleb128 0x17
	.string	"ADDRESS"
	.sleb128 25
	.uleb128 0x17
	.string	"DEFINE_CPU_UNIT"
	.sleb128 26
	.uleb128 0x17
	.string	"DEFINE_QUERY_CPU_UNIT"
	.sleb128 27
	.uleb128 0x17
	.string	"EXCLUSION_SET"
	.sleb128 28
	.uleb128 0x17
	.string	"PRESENCE_SET"
	.sleb128 29
	.uleb128 0x17
	.string	"ABSENCE_SET"
	.sleb128 30
	.uleb128 0x17
	.string	"DEFINE_BYPASS"
	.sleb128 31
	.uleb128 0x17
	.string	"DEFINE_AUTOMATON"
	.sleb128 32
	.uleb128 0x17
	.string	"AUTOMATA_OPTION"
	.sleb128 33
	.uleb128 0x17
	.string	"DEFINE_RESERVATION"
	.sleb128 34
	.uleb128 0x17
	.string	"DEFINE_INSN_RESERVATION"
	.sleb128 35
	.uleb128 0x17
	.string	"DEFINE_ATTR"
	.sleb128 36
	.uleb128 0x17
	.string	"ATTR"
	.sleb128 37
	.uleb128 0x17
	.string	"SET_ATTR"
	.sleb128 38
	.uleb128 0x17
	.string	"SET_ATTR_ALTERNATIVE"
	.sleb128 39
	.uleb128 0x17
	.string	"EQ_ATTR"
	.sleb128 40
	.uleb128 0x17
	.string	"ATTR_FLAG"
	.sleb128 41
	.uleb128 0x17
	.string	"INSN"
	.sleb128 42
	.uleb128 0x17
	.string	"JUMP_INSN"
	.sleb128 43
	.uleb128 0x17
	.string	"CALL_INSN"
	.sleb128 44
	.uleb128 0x17
	.string	"BARRIER"
	.sleb128 45
	.uleb128 0x17
	.string	"CODE_LABEL"
	.sleb128 46
	.uleb128 0x17
	.string	"NOTE"
	.sleb128 47
	.uleb128 0x17
	.string	"COND_EXEC"
	.sleb128 48
	.uleb128 0x17
	.string	"PARALLEL"
	.sleb128 49
	.uleb128 0x17
	.string	"ASM_INPUT"
	.sleb128 50
	.uleb128 0x17
	.string	"ASM_OPERANDS"
	.sleb128 51
	.uleb128 0x17
	.string	"UNSPEC"
	.sleb128 52
	.uleb128 0x17
	.string	"UNSPEC_VOLATILE"
	.sleb128 53
	.uleb128 0x17
	.string	"ADDR_VEC"
	.sleb128 54
	.uleb128 0x17
	.string	"ADDR_DIFF_VEC"
	.sleb128 55
	.uleb128 0x17
	.string	"PREFETCH"
	.sleb128 56
	.uleb128 0x17
	.string	"SET"
	.sleb128 57
	.uleb128 0x17
	.string	"USE"
	.sleb128 58
	.uleb128 0x17
	.string	"CLOBBER"
	.sleb128 59
	.uleb128 0x17
	.string	"CALL"
	.sleb128 60
	.uleb128 0x17
	.string	"RETURN"
	.sleb128 61
	.uleb128 0x17
	.string	"TRAP_IF"
	.sleb128 62
	.uleb128 0x17
	.string	"RESX"
	.sleb128 63
	.uleb128 0x17
	.string	"CONST_INT"
	.sleb128 64
	.uleb128 0x17
	.string	"CONST_DOUBLE"
	.sleb128 65
	.uleb128 0x17
	.string	"CONST_VECTOR"
	.sleb128 66
	.uleb128 0x17
	.string	"CONST_STRING"
	.sleb128 67
	.uleb128 0x17
	.string	"CONST"
	.sleb128 68
	.uleb128 0x17
	.string	"PC"
	.sleb128 69
	.uleb128 0x17
	.string	"VALUE"
	.sleb128 70
	.uleb128 0x17
	.string	"REG"
	.sleb128 71
	.uleb128 0x17
	.string	"SCRATCH"
	.sleb128 72
	.uleb128 0x17
	.string	"SUBREG"
	.sleb128 73
	.uleb128 0x17
	.string	"STRICT_LOW_PART"
	.sleb128 74
	.uleb128 0x17
	.string	"CONCAT"
	.sleb128 75
	.uleb128 0x17
	.string	"MEM"
	.sleb128 76
	.uleb128 0x17
	.string	"LABEL_REF"
	.sleb128 77
	.uleb128 0x17
	.string	"SYMBOL_REF"
	.sleb128 78
	.uleb128 0x17
	.string	"CC0"
	.sleb128 79
	.uleb128 0x17
	.string	"ADDRESSOF"
	.sleb128 80
	.uleb128 0x17
	.string	"QUEUED"
	.sleb128 81
	.uleb128 0x17
	.string	"IF_THEN_ELSE"
	.sleb128 82
	.uleb128 0x17
	.string	"COND"
	.sleb128 83
	.uleb128 0x17
	.string	"COMPARE"
	.sleb128 84
	.uleb128 0x17
	.string	"PLUS"
	.sleb128 85
	.uleb128 0x17
	.string	"MINUS"
	.sleb128 86
	.uleb128 0x17
	.string	"NEG"
	.sleb128 87
	.uleb128 0x17
	.string	"MULT"
	.sleb128 88
	.uleb128 0x17
	.string	"DIV"
	.sleb128 89
	.uleb128 0x17
	.string	"MOD"
	.sleb128 90
	.uleb128 0x17
	.string	"UDIV"
	.sleb128 91
	.uleb128 0x17
	.string	"UMOD"
	.sleb128 92
	.uleb128 0x17
	.string	"AND"
	.sleb128 93
	.uleb128 0x17
	.string	"IOR"
	.sleb128 94
	.uleb128 0x17
	.string	"XOR"
	.sleb128 95
	.uleb128 0x17
	.string	"NOT"
	.sleb128 96
	.uleb128 0x17
	.string	"ASHIFT"
	.sleb128 97
	.uleb128 0x17
	.string	"ROTATE"
	.sleb128 98
	.uleb128 0x17
	.string	"ASHIFTRT"
	.sleb128 99
	.uleb128 0x17
	.string	"LSHIFTRT"
	.sleb128 100
	.uleb128 0x17
	.string	"ROTATERT"
	.sleb128 101
	.uleb128 0x17
	.string	"SMIN"
	.sleb128 102
	.uleb128 0x17
	.string	"SMAX"
	.sleb128 103
	.uleb128 0x17
	.string	"UMIN"
	.sleb128 104
	.uleb128 0x17
	.string	"UMAX"
	.sleb128 105
	.uleb128 0x17
	.string	"PRE_DEC"
	.sleb128 106
	.uleb128 0x17
	.string	"PRE_INC"
	.sleb128 107
	.uleb128 0x17
	.string	"POST_DEC"
	.sleb128 108
	.uleb128 0x17
	.string	"POST_INC"
	.sleb128 109
	.uleb128 0x17
	.string	"PRE_MODIFY"
	.sleb128 110
	.uleb128 0x17
	.string	"POST_MODIFY"
	.sleb128 111
	.uleb128 0x17
	.string	"NE"
	.sleb128 112
	.uleb128 0x17
	.string	"EQ"
	.sleb128 113
	.uleb128 0x17
	.string	"GE"
	.sleb128 114
	.uleb128 0x17
	.string	"GT"
	.sleb128 115
	.uleb128 0x17
	.string	"LE"
	.sleb128 116
	.uleb128 0x17
	.string	"LT"
	.sleb128 117
	.uleb128 0x17
	.string	"GEU"
	.sleb128 118
	.uleb128 0x17
	.string	"GTU"
	.sleb128 119
	.uleb128 0x17
	.string	"LEU"
	.sleb128 120
	.uleb128 0x17
	.string	"LTU"
	.sleb128 121
	.uleb128 0x17
	.string	"UNORDERED"
	.sleb128 122
	.uleb128 0x17
	.string	"ORDERED"
	.sleb128 123
	.uleb128 0x17
	.string	"UNEQ"
	.sleb128 124
	.uleb128 0x17
	.string	"UNGE"
	.sleb128 125
	.uleb128 0x17
	.string	"UNGT"
	.sleb128 126
	.uleb128 0x17
	.string	"UNLE"
	.sleb128 127
	.uleb128 0x17
	.string	"UNLT"
	.sleb128 128
	.uleb128 0x17
	.string	"LTGT"
	.sleb128 129
	.uleb128 0x17
	.string	"SIGN_EXTEND"
	.sleb128 130
	.uleb128 0x17
	.string	"ZERO_EXTEND"
	.sleb128 131
	.uleb128 0x17
	.string	"TRUNCATE"
	.sleb128 132
	.uleb128 0x17
	.string	"FLOAT_EXTEND"
	.sleb128 133
	.uleb128 0x17
	.string	"FLOAT_TRUNCATE"
	.sleb128 134
	.uleb128 0x17
	.string	"FLOAT"
	.sleb128 135
	.uleb128 0x17
	.string	"FIX"
	.sleb128 136
	.uleb128 0x17
	.string	"UNSIGNED_FLOAT"
	.sleb128 137
	.uleb128 0x17
	.string	"UNSIGNED_FIX"
	.sleb128 138
	.uleb128 0x17
	.string	"ABS"
	.sleb128 139
	.uleb128 0x17
	.string	"SQRT"
	.sleb128 140
	.uleb128 0x17
	.string	"FFS"
	.sleb128 141
	.uleb128 0x17
	.string	"SIGN_EXTRACT"
	.sleb128 142
	.uleb128 0x17
	.string	"ZERO_EXTRACT"
	.sleb128 143
	.uleb128 0x17
	.string	"HIGH"
	.sleb128 144
	.uleb128 0x17
	.string	"LO_SUM"
	.sleb128 145
	.uleb128 0x17
	.string	"RANGE_INFO"
	.sleb128 146
	.uleb128 0x17
	.string	"RANGE_REG"
	.sleb128 147
	.uleb128 0x17
	.string	"RANGE_VAR"
	.sleb128 148
	.uleb128 0x17
	.string	"RANGE_LIVE"
	.sleb128 149
	.uleb128 0x17
	.string	"CONSTANT_P_RTX"
	.sleb128 150
	.uleb128 0x17
	.string	"CALL_PLACEHOLDER"
	.sleb128 151
	.uleb128 0x17
	.string	"VEC_MERGE"
	.sleb128 152
	.uleb128 0x17
	.string	"VEC_SELECT"
	.sleb128 153
	.uleb128 0x17
	.string	"VEC_CONCAT"
	.sleb128 154
	.uleb128 0x17
	.string	"VEC_DUPLICATE"
	.sleb128 155
	.uleb128 0x17
	.string	"SS_PLUS"
	.sleb128 156
	.uleb128 0x17
	.string	"US_PLUS"
	.sleb128 157
	.uleb128 0x17
	.string	"SS_MINUS"
	.sleb128 158
	.uleb128 0x17
	.string	"US_MINUS"
	.sleb128 159
	.uleb128 0x17
	.string	"SS_TRUNCATE"
	.sleb128 160
	.uleb128 0x17
	.string	"US_TRUNCATE"
	.sleb128 161
	.uleb128 0x17
	.string	"PHI"
	.sleb128 162
	.uleb128 0x17
	.string	"LAST_AND_UNUSED_RTX_CODE"
	.sleb128 163
	.byte	0x0
	.uleb128 0x19
	.long	0x12ea
	.byte	0x4
	.byte	0x3
	.byte	0x4d
	.uleb128 0x6
	.string	"min_align"
	.byte	0x3
	.byte	0x4f
	.long	0x2eb
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
	.long	0x2eb
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
	.long	0x2eb
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
	.long	0x2eb
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
	.long	0x2eb
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
	.long	0x2eb
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
	.long	0x2eb
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
	.long	0x2eb
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
	.long	0x1210
	.uleb128 0x12
	.long	0x135f
	.long	.LASF4
	.byte	0x18
	.byte	0x3
	.byte	0x68
	.uleb128 0x7
	.string	"alias"
	.byte	0x3
	.byte	0x69
	.long	0x387
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1a
	.long	.LASF5
	.byte	0x3
	.byte	0x6a
	.long	0x1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"offset"
	.byte	0x3
	.byte	0x6b
	.long	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x1a
	.long	.LASF6
	.byte	0x3
	.byte	0x6c
	.long	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"align"
	.byte	0x3
	.byte	0x6d
	.long	0x2eb
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x1b
	.long	.LASF4
	.byte	0x3
	.byte	0x6e
	.long	0x1305
	.uleb128 0x1c
	.long	0x143c
	.string	"rtunion_def"
	.byte	0x8
	.byte	0x3
	.byte	0x73
	.uleb128 0x1d
	.string	"rtwint"
	.byte	0x3
	.byte	0x74
	.long	0x387
	.uleb128 0x1d
	.string	"rtint"
	.byte	0x3
	.byte	0x75
	.long	0x212
	.uleb128 0x1d
	.string	"rtuint"
	.byte	0x3
	.byte	0x76
	.long	0x2eb
	.uleb128 0x1d
	.string	"rtstr"
	.byte	0x3
	.byte	0x77
	.long	0x1ff
	.uleb128 0x1d
	.string	"rtx"
	.byte	0x3
	.byte	0x78
	.long	0x99
	.uleb128 0x1d
	.string	"rtvec"
	.byte	0x3
	.byte	0x79
	.long	0x199
	.uleb128 0x1d
	.string	"rttype"
	.byte	0x3
	.byte	0x7a
	.long	0x749
	.uleb128 0x1d
	.string	"rt_addr_diff_vec_flags"
	.byte	0x3
	.byte	0x7b
	.long	0x12ea
	.uleb128 0x1d
	.string	"rt_cselib"
	.byte	0x3
	.byte	0x7c
	.long	0x1494
	.uleb128 0x1d
	.string	"rtbit"
	.byte	0x3
	.byte	0x7d
	.long	0x14f9
	.uleb128 0x1d
	.string	"rttree"
	.byte	0x3
	.byte	0x7e
	.long	0x1e1
	.uleb128 0x1d
	.string	"bb"
	.byte	0x3
	.byte	0x7f
	.long	0x1682
	.uleb128 0x1d
	.string	"rtmem"
	.byte	0x3
	.byte	0x80
	.long	0x1688
	.byte	0x0
	.uleb128 0x4
	.long	0x1494
	.string	"cselib_val_struct"
	.byte	0x10
	.byte	0x3
	.byte	0x7c
	.uleb128 0x1a
	.long	.LASF7
	.byte	0x5
	.byte	0x1a
	.long	0x2eb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"u"
	.byte	0x5
	.byte	0x21
	.long	0x3134
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"locs"
	.byte	0x5
	.byte	0x25
	.long	0x31c2
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"addr_list"
	.byte	0x5
	.byte	0x28
	.long	0x1bda
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x143c
	.uleb128 0x4
	.long	0x14f9
	.string	"bitmap_head_def"
	.byte	0x10
	.byte	0x3
	.byte	0x7d
	.uleb128 0x1a
	.long	.LASF8
	.byte	0x7
	.byte	0x3d
	.long	0x1d52
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"current"
	.byte	0x7
	.byte	0x3e
	.long	0x1d52
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1a
	.long	.LASF9
	.byte	0x7
	.byte	0x3f
	.long	0x2eb
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"using_obstack"
	.byte	0x7
	.byte	0x40
	.long	0x212
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x149a
	.uleb128 0x4
	.long	0x1682
	.string	"basic_block_def"
	.byte	0x50
	.byte	0x3
	.byte	0x7f
	.uleb128 0x7
	.string	"head"
	.byte	0x8
	.byte	0xb5
	.long	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"end"
	.byte	0x8
	.byte	0xb5
	.long	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"head_tree"
	.byte	0x8
	.byte	0xb8
	.long	0x1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"end_tree"
	.byte	0x8
	.byte	0xb9
	.long	0x1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"pred"
	.byte	0x8
	.byte	0xbc
	.long	0x1ea3
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"succ"
	.byte	0x8
	.byte	0xbc
	.long	0x1ea3
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"local_set"
	.byte	0x8
	.byte	0xc1
	.long	0x1dd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"cond_local_set"
	.byte	0x8
	.byte	0xc5
	.long	0x1dd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"global_live_at_start"
	.byte	0x8
	.byte	0xcb
	.long	0x1dd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x7
	.string	"global_live_at_end"
	.byte	0x8
	.byte	0xcd
	.long	0x1dd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x7
	.string	"aux"
	.byte	0x8
	.byte	0xd0
	.long	0x3ee
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x1a
	.long	.LASF10
	.byte	0x8
	.byte	0xd3
	.long	0x212
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x7
	.string	"prev_bb"
	.byte	0x8
	.byte	0xd6
	.long	0x1682
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x7
	.string	"next_bb"
	.byte	0x8
	.byte	0xd6
	.long	0x1682
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x7
	.string	"loop_depth"
	.byte	0x8
	.byte	0xd9
	.long	0x212
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x7
	.string	"loop_father"
	.byte	0x8
	.byte	0xdc
	.long	0x211c
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x7
	.string	"count"
	.byte	0x8
	.byte	0xdf
	.long	0x1de2
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x7
	.string	"frequency"
	.byte	0x8
	.byte	0xe2
	.long	0x212
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x7
	.string	"flags"
	.byte	0x8
	.byte	0xe5
	.long	0x212
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x14ff
	.uleb128 0x3
	.byte	0x4
	.long	0x135f
	.uleb128 0x2
	.string	"rtunion"
	.byte	0x3
	.byte	0x82
	.long	0x136a
	.uleb128 0xe
	.long	0x16ad
	.long	0x168e
	.uleb128 0xf
	.long	0x302
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.long	0x16bd
	.long	0x99
	.uleb128 0xf
	.long	0x302
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x99
	.uleb128 0x4
	.long	0x16f9
	.string	"const_equiv_data"
	.byte	0x8
	.byte	0x6
	.byte	0x24
	.uleb128 0x7
	.string	"rtx"
	.byte	0x6
	.byte	0x32
	.long	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"age"
	.byte	0x6
	.byte	0x36
	.long	0x2eb
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x16
	.long	0x1894
	.string	"varray_data_enum"
	.byte	0x4
	.byte	0x6
	.byte	0x3c
	.uleb128 0x17
	.string	"VARRAY_DATA_C"
	.sleb128 0
	.uleb128 0x17
	.string	"VARRAY_DATA_UC"
	.sleb128 1
	.uleb128 0x17
	.string	"VARRAY_DATA_S"
	.sleb128 2
	.uleb128 0x17
	.string	"VARRAY_DATA_US"
	.sleb128 3
	.uleb128 0x17
	.string	"VARRAY_DATA_I"
	.sleb128 4
	.uleb128 0x17
	.string	"VARRAY_DATA_U"
	.sleb128 5
	.uleb128 0x17
	.string	"VARRAY_DATA_L"
	.sleb128 6
	.uleb128 0x17
	.string	"VARRAY_DATA_UL"
	.sleb128 7
	.uleb128 0x17
	.string	"VARRAY_DATA_HINT"
	.sleb128 8
	.uleb128 0x17
	.string	"VARRAY_DATA_UHINT"
	.sleb128 9
	.uleb128 0x17
	.string	"VARRAY_DATA_GENERIC"
	.sleb128 10
	.uleb128 0x17
	.string	"VARRAY_DATA_CPTR"
	.sleb128 11
	.uleb128 0x17
	.string	"VARRAY_DATA_RTX"
	.sleb128 12
	.uleb128 0x17
	.string	"VARRAY_DATA_RTVEC"
	.sleb128 13
	.uleb128 0x17
	.string	"VARRAY_DATA_TREE"
	.sleb128 14
	.uleb128 0x17
	.string	"VARRAY_DATA_BITMAP"
	.sleb128 15
	.uleb128 0x17
	.string	"VARRAY_DATA_REG"
	.sleb128 16
	.uleb128 0x17
	.string	"VARRAY_DATA_CONST_EQUIV"
	.sleb128 17
	.uleb128 0x17
	.string	"VARRAY_DATA_BB"
	.sleb128 18
	.uleb128 0x17
	.string	"VARRAY_DATA_TE"
	.sleb128 19
	.uleb128 0x17
	.string	"NUM_VARRAY_DATA"
	.sleb128 20
	.byte	0x0
	.uleb128 0x1c
	.long	0x1990
	.string	"varray_data_tag"
	.byte	0x8
	.byte	0x6
	.byte	0x55
	.uleb128 0x1d
	.string	"c"
	.byte	0x6
	.byte	0x56
	.long	0x70d
	.uleb128 0x1d
	.string	"uc"
	.byte	0x6
	.byte	0x58
	.long	0x1990
	.uleb128 0x1d
	.string	"s"
	.byte	0x6
	.byte	0x5a
	.long	0x19a0
	.uleb128 0x1d
	.string	"us"
	.byte	0x6
	.byte	0x5c
	.long	0x19b0
	.uleb128 0x1d
	.string	"i"
	.byte	0x6
	.byte	0x5e
	.long	0x19c0
	.uleb128 0x1d
	.string	"u"
	.byte	0x6
	.byte	0x60
	.long	0x19d0
	.uleb128 0x1d
	.string	"l"
	.byte	0x6
	.byte	0x62
	.long	0x19e0
	.uleb128 0x1d
	.string	"ul"
	.byte	0x6
	.byte	0x64
	.long	0x19f0
	.uleb128 0x1d
	.string	"hint"
	.byte	0x6
	.byte	0x66
	.long	0x1a00
	.uleb128 0x1d
	.string	"uhint"
	.byte	0x6
	.byte	0x68
	.long	0x1a10
	.uleb128 0x1d
	.string	"generic"
	.byte	0x6
	.byte	0x6a
	.long	0x1a20
	.uleb128 0x1d
	.string	"cptr"
	.byte	0x6
	.byte	0x6c
	.long	0x1a30
	.uleb128 0x1d
	.string	"rtx"
	.byte	0x6
	.byte	0x6e
	.long	0x1a40
	.uleb128 0x1d
	.string	"rtvec"
	.byte	0x6
	.byte	0x70
	.long	0x1a50
	.uleb128 0x1d
	.string	"tree"
	.byte	0x6
	.byte	0x72
	.long	0x1a60
	.uleb128 0x1d
	.string	"bitmap"
	.byte	0x6
	.byte	0x74
	.long	0x1a70
	.uleb128 0x1d
	.string	"reg"
	.byte	0x6
	.byte	0x76
	.long	0x1a80
	.uleb128 0x1d
	.string	"const_equiv"
	.byte	0x6
	.byte	0x78
	.long	0x1b7c
	.uleb128 0x1d
	.string	"bb"
	.byte	0x6
	.byte	0x7a
	.long	0x1b8c
	.uleb128 0x1d
	.string	"te"
	.byte	0x6
	.byte	0x7c
	.long	0x1b9c
	.byte	0x0
	.uleb128 0xe
	.long	0x19a0
	.long	0x32f
	.uleb128 0xf
	.long	0x302
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.long	0x19b0
	.long	0x37a
	.uleb128 0xf
	.long	0x302
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.long	0x19c0
	.long	0x340
	.uleb128 0xf
	.long	0x302
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.long	0x19d0
	.long	0x212
	.uleb128 0xf
	.long	0x302
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.long	0x19e0
	.long	0x2eb
	.uleb128 0xf
	.long	0x302
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.long	0x19f0
	.long	0x3d1
	.uleb128 0xf
	.long	0x302
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.long	0x1a00
	.long	0x356
	.uleb128 0xf
	.long	0x302
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.long	0x1a10
	.long	0x387
	.uleb128 0xf
	.long	0x302
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.long	0x1a20
	.long	0x398
	.uleb128 0xf
	.long	0x302
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.long	0x1a30
	.long	0x3ee
	.uleb128 0xf
	.long	0x302
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.long	0x1a40
	.long	0x3f0
	.uleb128 0xf
	.long	0x302
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.long	0x1a50
	.long	0xa4
	.uleb128 0xf
	.long	0x302
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.long	0x1a60
	.long	0x1a6
	.uleb128 0xf
	.long	0x302
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.long	0x1a70
	.long	0x1ed
	.uleb128 0xf
	.long	0x302
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.long	0x1a80
	.long	0x14f9
	.uleb128 0xf
	.long	0x302
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.long	0x1a90
	.long	0x1b76
	.uleb128 0xf
	.long	0x302
	.byte	0x0
	.byte	0x0
	.uleb128 0x4
	.long	0x1b76
	.string	"reg_info_def"
	.byte	0x2c
	.byte	0x6
	.byte	0x76
	.uleb128 0x7
	.string	"first_uid"
	.byte	0x11
	.byte	0x31
	.long	0x212
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"last_uid"
	.byte	0x11
	.byte	0x32
	.long	0x212
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"last_note_uid"
	.byte	0x11
	.byte	0x33
	.long	0x212
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"sets"
	.byte	0x11
	.byte	0x36
	.long	0x212
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"refs"
	.byte	0x11
	.byte	0x39
	.long	0x212
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"freq"
	.byte	0x11
	.byte	0x3a
	.long	0x212
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"deaths"
	.byte	0x11
	.byte	0x3b
	.long	0x212
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"live_length"
	.byte	0x11
	.byte	0x3c
	.long	0x212
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"calls_crossed"
	.byte	0x11
	.byte	0x3d
	.long	0x212
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1a
	.long	.LASF11
	.byte	0x11
	.byte	0x3e
	.long	0x212
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x7
	.string	"changes_mode"
	.byte	0x11
	.byte	0x3f
	.long	0x20a
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1a90
	.uleb128 0xe
	.long	0x1b8c
	.long	0x16c3
	.uleb128 0xf
	.long	0x302
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.long	0x1b9c
	.long	0x1682
	.uleb128 0xf
	.long	0x302
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.long	0x1bac
	.long	0x1bda
	.uleb128 0xf
	.long	0x302
	.byte	0x0
	.byte	0x0
	.uleb128 0x4
	.long	0x1bda
	.string	"elt_list"
	.byte	0x8
	.byte	0x6
	.byte	0x7c
	.uleb128 0x1a
	.long	.LASF12
	.byte	0x5
	.byte	0x3b
	.long	0x1bda
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"elt"
	.byte	0x5
	.byte	0x3c
	.long	0x31da
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1bac
	.uleb128 0x2
	.string	"varray_data"
	.byte	0x6
	.byte	0x7e
	.long	0x1894
	.uleb128 0x4
	.long	0x1c67
	.string	"varray_head_tag"
	.byte	0x18
	.byte	0x6
	.byte	0x81
	.uleb128 0x7
	.string	"num_elements"
	.byte	0x6
	.byte	0x82
	.long	0x321
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"elements_used"
	.byte	0x6
	.byte	0x83
	.long	0x321
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"type"
	.byte	0x6
	.byte	0x85
	.long	0x16f9
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"name"
	.byte	0x6
	.byte	0x86
	.long	0x1ff
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x1a
	.long	.LASF13
	.byte	0x6
	.byte	0x87
	.long	0x1be0
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x2
	.string	"varray_type"
	.byte	0x6
	.byte	0x8a
	.long	0x1c7a
	.uleb128 0x3
	.byte	0x4
	.long	0x1bf3
	.uleb128 0x2
	.string	"HARD_REG_ELT_TYPE"
	.byte	0x10
	.byte	0x29
	.long	0x398
	.uleb128 0x2
	.string	"HARD_REG_SET"
	.byte	0x10
	.byte	0x34
	.long	0x1cad
	.uleb128 0xe
	.long	0x1cbd
	.long	0x1c80
	.uleb128 0xf
	.long	0x302
	.byte	0x2
	.byte	0x0
	.uleb128 0x2
	.string	"BITMAP_WORD"
	.byte	0x7
	.byte	0x1d
	.long	0x356
	.uleb128 0x4
	.long	0x1d26
	.string	"bitmap_element_def"
	.byte	0x1c
	.byte	0x7
	.byte	0x34
	.uleb128 0x1a
	.long	.LASF12
	.byte	0x7
	.byte	0x35
	.long	0x1d26
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"prev"
	.byte	0x7
	.byte	0x36
	.long	0x1d26
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1a
	.long	.LASF9
	.byte	0x7
	.byte	0x37
	.long	0x2eb
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"bits"
	.byte	0x7
	.byte	0x38
	.long	0x1d2c
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1cd0
	.uleb128 0xe
	.long	0x1d3c
	.long	0x1cbd
	.uleb128 0xf
	.long	0x302
	.byte	0x3
	.byte	0x0
	.uleb128 0x2
	.string	"bitmap_element"
	.byte	0x7
	.byte	0x39
	.long	0x1cd0
	.uleb128 0x3
	.byte	0x4
	.long	0x1d3c
	.uleb128 0x2
	.string	"bitmap"
	.byte	0x7
	.byte	0x43
	.long	0x14f9
	.uleb128 0x4
	.long	0x1dbf
	.string	"simple_bitmap_def"
	.byte	0x14
	.byte	0x9
	.byte	0x20
	.uleb128 0x7
	.string	"n_bits"
	.byte	0x9
	.byte	0x21
	.long	0x2eb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1a
	.long	.LASF6
	.byte	0x9
	.byte	0x22
	.long	0x2eb
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"bytes"
	.byte	0x9
	.byte	0x23
	.long	0x2eb
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"elms"
	.byte	0x9
	.byte	0x24
	.long	0x1a10
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x2
	.string	"sbitmap"
	.byte	0x9
	.byte	0x25
	.long	0x1dce
	.uleb128 0x3
	.byte	0x4
	.long	0x1d66
	.uleb128 0x2
	.string	"regset"
	.byte	0x8
	.byte	0x22
	.long	0x1d58
	.uleb128 0x2
	.string	"gcov_type"
	.byte	0x8
	.byte	0x75
	.long	0x387
	.uleb128 0x4
	.long	0x1e9d
	.string	"edge_def"
	.byte	0x28
	.byte	0x8
	.byte	0x78
	.uleb128 0x7
	.string	"pred_next"
	.byte	0x8
	.byte	0x7a
	.long	0x1e9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"succ_next"
	.byte	0x8
	.byte	0x7a
	.long	0x1e9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"src"
	.byte	0x8
	.byte	0x7d
	.long	0x1682
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1a
	.long	.LASF14
	.byte	0x8
	.byte	0x7d
	.long	0x1682
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"insns"
	.byte	0x8
	.byte	0x80
	.long	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"aux"
	.byte	0x8
	.byte	0x83
	.long	0x3ee
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"flags"
	.byte	0x8
	.byte	0x85
	.long	0x212
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"probability"
	.byte	0x8
	.byte	0x86
	.long	0x212
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"count"
	.byte	0x8
	.byte	0x87
	.long	0x1de2
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1df3
	.uleb128 0x2
	.string	"edge"
	.byte	0x8
	.byte	0x89
	.long	0x1e9d
	.uleb128 0x4
	.long	0x211c
	.string	"loop"
	.byte	0x80
	.byte	0x8
	.byte	0xdc
	.uleb128 0xc
	.string	"num"
	.byte	0x8
	.value	0x176
	.long	0x212
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.string	"header"
	.byte	0x8
	.value	0x179
	.long	0x2122
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.string	"latch"
	.byte	0x8
	.value	0x17c
	.long	0x2122
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.string	"pre_header"
	.byte	0x8
	.value	0x17f
	.long	0x2122
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xc
	.string	"pre_header_edges"
	.byte	0x8
	.value	0x184
	.long	0x2145
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xc
	.string	"num_pre_header_edges"
	.byte	0x8
	.value	0x187
	.long	0x212
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x1e
	.long	.LASF8
	.byte	0x8
	.value	0x18b
	.long	0x2122
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xc
	.string	"last"
	.byte	0x8
	.value	0x18f
	.long	0x2122
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xc
	.string	"nodes"
	.byte	0x8
	.value	0x192
	.long	0x1dbf
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xc
	.string	"num_nodes"
	.byte	0x8
	.value	0x195
	.long	0x212
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xc
	.string	"entry_edges"
	.byte	0x8
	.value	0x198
	.long	0x2145
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xc
	.string	"num_entries"
	.byte	0x8
	.value	0x19b
	.long	0x212
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xc
	.string	"exit_edges"
	.byte	0x8
	.value	0x19e
	.long	0x2145
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xc
	.string	"num_exits"
	.byte	0x8
	.value	0x1a1
	.long	0x212
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xc
	.string	"exits_doms"
	.byte	0x8
	.value	0x1a4
	.long	0x1dbf
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xc
	.string	"depth"
	.byte	0x8
	.value	0x1a7
	.long	0x212
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xc
	.string	"pred"
	.byte	0x8
	.value	0x1aa
	.long	0x214b
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xc
	.string	"level"
	.byte	0x8
	.value	0x1ae
	.long	0x212
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xc
	.string	"outer"
	.byte	0x8
	.value	0x1b1
	.long	0x211c
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xc
	.string	"inner"
	.byte	0x8
	.value	0x1b4
	.long	0x211c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x1e
	.long	.LASF12
	.byte	0x8
	.value	0x1b7
	.long	0x211c
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xc
	.string	"invalid"
	.byte	0x8
	.value	0x1ba
	.long	0x212
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xc
	.string	"aux"
	.byte	0x8
	.value	0x1bd
	.long	0x3ee
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xc
	.string	"vtop"
	.byte	0x8
	.value	0x1c3
	.long	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xc
	.string	"cont"
	.byte	0x8
	.value	0x1c7
	.long	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xc
	.string	"start"
	.byte	0x8
	.value	0x1ca
	.long	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xc
	.string	"end"
	.byte	0x8
	.value	0x1cd
	.long	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xc
	.string	"top"
	.byte	0x8
	.value	0x1d1
	.long	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0xc
	.string	"scan_start"
	.byte	0x8
	.value	0x1d4
	.long	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xc
	.string	"sink"
	.byte	0x8
	.value	0x1d7
	.long	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0xc
	.string	"exit_labels"
	.byte	0x8
	.value	0x1e2
	.long	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xc
	.string	"exit_count"
	.byte	0x8
	.value	0x1e6
	.long	0x212
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1eaf
	.uleb128 0x1b
	.long	.LASF11
	.byte	0x8
	.byte	0xe6
	.long	0x1682
	.uleb128 0x1f
	.long	.LASF15
	.byte	0x8
	.value	0x170
	.long	0x2139
	.uleb128 0x3
	.byte	0x4
	.long	0x213f
	.uleb128 0x20
	.long	.LASF15
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x1ea3
	.uleb128 0x3
	.byte	0x4
	.long	0x211c
	.uleb128 0x21
	.long	0x219d
	.long	.LASF16
	.byte	0xc
	.byte	0x8
	.value	0x23b
	.uleb128 0xc
	.string	"num_blocks"
	.byte	0x8
	.value	0x23c
	.long	0x212
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1e
	.long	.LASF17
	.byte	0x8
	.value	0x23d
	.long	0x212
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.string	"index_to_edge"
	.byte	0x8
	.value	0x23e
	.long	0x2145
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0xa
	.string	"_Bool"
	.byte	0x1
	.byte	0x2
	.uleb128 0x9
	.long	0x1ff
	.uleb128 0x4
	.long	0x2210
	.string	"var_refs_queue"
	.byte	0x10
	.byte	0x13
	.byte	0x17
	.uleb128 0x7
	.string	"modified"
	.byte	0x13
	.byte	0x18
	.long	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"promoted_mode"
	.byte	0x13
	.byte	0x19
	.long	0x749
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"unsignedp"
	.byte	0x13
	.byte	0x1a
	.long	0x212
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1a
	.long	.LASF12
	.byte	0x13
	.byte	0x1b
	.long	0x2210
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x21ab
	.uleb128 0x12
	.long	0x225c
	.long	.LASF18
	.byte	0x10
	.byte	0x13
	.byte	0x24
	.uleb128 0x1a
	.long	.LASF8
	.byte	0x13
	.byte	0x26
	.long	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"last"
	.byte	0x13
	.byte	0x27
	.long	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1a
	.long	.LASF19
	.byte	0x13
	.byte	0x28
	.long	0x1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1a
	.long	.LASF12
	.byte	0x13
	.byte	0x29
	.long	0x225c
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x2216
	.uleb128 0xb
	.long	0x2389
	.string	"obstack"
	.byte	0x2c
	.byte	0xa
	.value	0x31b
	.uleb128 0x7
	.string	"chunk_size"
	.byte	0xe
	.byte	0xaa
	.long	0x3d1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"chunk"
	.byte	0xe
	.byte	0xab
	.long	0x322a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"object_base"
	.byte	0xe
	.byte	0xac
	.long	0x3f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1a
	.long	.LASF20
	.byte	0xe
	.byte	0xad
	.long	0x3f0
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"chunk_limit"
	.byte	0xe
	.byte	0xae
	.long	0x3f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"temp"
	.byte	0xe
	.byte	0xaf
	.long	0x212
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"alignment_mask"
	.byte	0xe
	.byte	0xb0
	.long	0x212
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"chunkfun"
	.byte	0xe
	.byte	0xb5
	.long	0x3245
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"freefun"
	.byte	0xe
	.byte	0xb6
	.long	0x325c
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x7
	.string	"extra_arg"
	.byte	0xe
	.byte	0xb7
	.long	0x3ee
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.string	"use_extra_arg"
	.byte	0xe
	.byte	0xbd
	.long	0x2eb
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x6
	.string	"maybe_empty_object"
	.byte	0xe
	.byte	0xbe
	.long	0x2eb
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x6
	.string	"alloc_failed"
	.byte	0xe
	.byte	0xc2
	.long	0x2eb
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x2262
	.uleb128 0x4
	.long	0x24de
	.string	"emit_status"
	.byte	0x34
	.byte	0x13
	.byte	0x37
	.uleb128 0x7
	.string	"x_reg_rtx_no"
	.byte	0x13
	.byte	0x3a
	.long	0x212
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"x_first_label_num"
	.byte	0x13
	.byte	0x3d
	.long	0x212
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"x_first_insn"
	.byte	0x13
	.byte	0x44
	.long	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"x_last_insn"
	.byte	0x13
	.byte	0x45
	.long	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x1a
	.long	.LASF19
	.byte	0x13
	.byte	0x4a
	.long	0x1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x1a
	.long	.LASF18
	.byte	0x13
	.byte	0x50
	.long	0x225c
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"x_cur_insn_uid"
	.byte	0x13
	.byte	0x54
	.long	0x212
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"x_last_linenum"
	.byte	0x13
	.byte	0x58
	.long	0x212
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"x_last_filename"
	.byte	0x13
	.byte	0x59
	.long	0x1ff
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x7
	.string	"regno_pointer_align_length"
	.byte	0x13
	.byte	0x5f
	.long	0x212
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x7
	.string	"regno_pointer_align"
	.byte	0x13
	.byte	0x65
	.long	0x698
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x7
	.string	"regno_decl"
	.byte	0x13
	.byte	0x69
	.long	0x24de
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x7
	.string	"x_regno_reg_rtx"
	.byte	0x13
	.byte	0x70
	.long	0x16bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1e1
	.uleb128 0x4
	.long	0x25c4
	.string	"expr_status"
	.byte	0x1c
	.byte	0x13
	.byte	0x7d
	.uleb128 0x7
	.string	"x_pending_stack_adjust"
	.byte	0x13
	.byte	0x80
	.long	0x212
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"x_inhibit_defer_pop"
	.byte	0x13
	.byte	0x91
	.long	0x212
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"x_stack_pointer_delta"
	.byte	0x13
	.byte	0x97
	.long	0x212
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"x_saveregs_value"
	.byte	0x13
	.byte	0x9c
	.long	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"x_apply_args_value"
	.byte	0x13
	.byte	0x9f
	.long	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"x_forced_labels"
	.byte	0x13
	.byte	0xa2
	.long	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"x_pending_chain"
	.byte	0x13
	.byte	0xa5
	.long	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x22
	.long	0x262e
	.long	.LASF21
	.byte	0x4
	.byte	0x13
	.value	0x1f1
	.uleb128 0x17
	.string	"FUNCTION_FREQUENCY_UNLIKELY_EXECUTED"
	.sleb128 0
	.uleb128 0x17
	.string	"FUNCTION_FREQUENCY_NORMAL"
	.sleb128 1
	.uleb128 0x17
	.string	"FUNCTION_FREQUENCY_HOT"
	.sleb128 2
	.byte	0x0
	.uleb128 0x23
	.long	0x2fec
	.string	"function"
	.value	0x134
	.byte	0x3
	.byte	0x1f
	.uleb128 0x7
	.string	"eh"
	.byte	0x13
	.byte	0xb5
	.long	0x2ff8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"stmt"
	.byte	0x13
	.byte	0xb6
	.long	0x300c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1a
	.long	.LASF5
	.byte	0x13
	.byte	0xb7
	.long	0x3012
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"emit"
	.byte	0x13
	.byte	0xb8
	.long	0x3018
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"varasm"
	.byte	0x13
	.byte	0xb9
	.long	0x302e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"name"
	.byte	0x13
	.byte	0xbe
	.long	0x1ff
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"decl"
	.byte	0x13
	.byte	0xc1
	.long	0x1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"outer"
	.byte	0x13
	.byte	0xc4
	.long	0x3034
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"pops_args"
	.byte	0x13
	.byte	0xc9
	.long	0x212
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x7
	.string	"args_size"
	.byte	0x13
	.byte	0xce
	.long	0x212
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x7
	.string	"pretend_args_size"
	.byte	0x13
	.byte	0xd3
	.long	0x212
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x7
	.string	"outgoing_args_size"
	.byte	0x13
	.byte	0xd7
	.long	0x212
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x7
	.string	"arg_offset_rtx"
	.byte	0x13
	.byte	0xdb
	.long	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x7
	.string	"args_info"
	.byte	0x13
	.byte	0xdf
	.long	0x309
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x7
	.string	"return_rtx"
	.byte	0x13
	.byte	0xe5
	.long	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x7
	.string	"internal_arg_pointer"
	.byte	0x13
	.byte	0xe8
	.long	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x7
	.string	"cannot_inline"
	.byte	0x13
	.byte	0xec
	.long	0x1ff
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x7
	.string	"hard_reg_initial_vals"
	.byte	0x13
	.byte	0xf0
	.long	0x3051
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x7
	.string	"x_function_call_count"
	.byte	0x13
	.byte	0xf3
	.long	0x212
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0x7
	.string	"x_nonlocal_labels"
	.byte	0x13
	.byte	0xf8
	.long	0x1e1
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x7
	.string	"x_nonlocal_goto_handler_slots"
	.byte	0x13
	.byte	0xfe
	.long	0x99
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0xc
	.string	"x_nonlocal_goto_handler_labels"
	.byte	0x13
	.value	0x102
	.long	0x99
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xc
	.string	"x_nonlocal_goto_stack_level"
	.byte	0x13
	.value	0x107
	.long	0x99
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0xc
	.string	"x_cleanup_label"
	.byte	0x13
	.value	0x10d
	.long	0x99
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0xc
	.string	"x_return_label"
	.byte	0x13
	.value	0x112
	.long	0x99
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.uleb128 0xc
	.string	"computed_goto_common_label"
	.byte	0x13
	.value	0x115
	.long	0x99
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0xc
	.string	"computed_goto_common_reg"
	.byte	0x13
	.value	0x116
	.long	0x99
	.byte	0x3
	.byte	0x23
	.uleb128 0xa4
	.uleb128 0xc
	.string	"x_save_expr_regs"
	.byte	0x13
	.value	0x11a
	.long	0x99
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0xc
	.string	"x_stack_slot_list"
	.byte	0x13
	.value	0x11e
	.long	0x99
	.byte	0x3
	.byte	0x23
	.uleb128 0xac
	.uleb128 0xc
	.string	"x_rtl_expr_chain"
	.byte	0x13
	.value	0x121
	.long	0x1e1
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0xc
	.string	"x_tail_recursion_label"
	.byte	0x13
	.value	0x125
	.long	0x99
	.byte	0x3
	.byte	0x23
	.uleb128 0xb4
	.uleb128 0xc
	.string	"x_tail_recursion_reentry"
	.byte	0x13
	.value	0x128
	.long	0x99
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0xc
	.string	"x_arg_pointer_save_area"
	.byte	0x13
	.value	0x12e
	.long	0x99
	.byte	0x3
	.byte	0x23
	.uleb128 0xbc
	.uleb128 0xc
	.string	"x_clobber_return_insn"
	.byte	0x13
	.value	0x133
	.long	0x99
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0xc
	.string	"x_frame_offset"
	.byte	0x13
	.value	0x138
	.long	0x387
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.uleb128 0xc
	.string	"x_context_display"
	.byte	0x13
	.value	0x13d
	.long	0x1e1
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.uleb128 0xc
	.string	"x_trampoline_list"
	.byte	0x13
	.value	0x146
	.long	0x1e1
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0xc
	.string	"x_parm_birth_insn"
	.byte	0x13
	.value	0x149
	.long	0x99
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0xc
	.string	"x_last_parm_insn"
	.byte	0x13
	.value	0x14d
	.long	0x99
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0xc
	.string	"x_max_parm_reg"
	.byte	0x13
	.value	0x151
	.long	0x2eb
	.byte	0x3
	.byte	0x23
	.uleb128 0xdc
	.uleb128 0xc
	.string	"x_parm_reg_stack_loc"
	.byte	0x13
	.value	0x157
	.long	0x16bd
	.byte	0x3
	.byte	0x23
	.uleb128 0xe0
	.uleb128 0xc
	.string	"x_temp_slots"
	.byte	0x13
	.value	0x15a
	.long	0x3063
	.byte	0x3
	.byte	0x23
	.uleb128 0xe4
	.uleb128 0xc
	.string	"x_temp_slot_level"
	.byte	0x13
	.value	0x15d
	.long	0x212
	.byte	0x3
	.byte	0x23
	.uleb128 0xe8
	.uleb128 0xc
	.string	"x_var_temp_slot_level"
	.byte	0x13
	.value	0x160
	.long	0x212
	.byte	0x3
	.byte	0x23
	.uleb128 0xec
	.uleb128 0xc
	.string	"x_target_temp_slot_level"
	.byte	0x13
	.value	0x166
	.long	0x212
	.byte	0x3
	.byte	0x23
	.uleb128 0xf0
	.uleb128 0xc
	.string	"fixup_var_refs_queue"
	.byte	0x13
	.value	0x16a
	.long	0x2210
	.byte	0x3
	.byte	0x23
	.uleb128 0xf4
	.uleb128 0xc
	.string	"inlinable"
	.byte	0x13
	.value	0x16d
	.long	0x212
	.byte	0x3
	.byte	0x23
	.uleb128 0xf8
	.uleb128 0xc
	.string	"no_debugging_symbols"
	.byte	0x13
	.value	0x16e
	.long	0x212
	.byte	0x3
	.byte	0x23
	.uleb128 0xfc
	.uleb128 0xc
	.string	"original_arg_vector"
	.byte	0x13
	.value	0x16f
	.long	0x199
	.byte	0x3
	.byte	0x23
	.uleb128 0x100
	.uleb128 0xc
	.string	"original_decl_initial"
	.byte	0x13
	.value	0x170
	.long	0x1e1
	.byte	0x3
	.byte	0x23
	.uleb128 0x104
	.uleb128 0xc
	.string	"inl_last_parm_insn"
	.byte	0x13
	.value	0x173
	.long	0x99
	.byte	0x3
	.byte	0x23
	.uleb128 0x108
	.uleb128 0xc
	.string	"inl_max_label_num"
	.byte	0x13
	.value	0x175
	.long	0x212
	.byte	0x3
	.byte	0x23
	.uleb128 0x10c
	.uleb128 0xc
	.string	"funcdef_no"
	.byte	0x13
	.value	0x178
	.long	0x212
	.byte	0x3
	.byte	0x23
	.uleb128 0x110
	.uleb128 0xc
	.string	"machine"
	.byte	0x13
	.value	0x17d
	.long	0x307c
	.byte	0x3
	.byte	0x23
	.uleb128 0x114
	.uleb128 0xc
	.string	"stack_alignment_needed"
	.byte	0x13
	.value	0x17f
	.long	0x212
	.byte	0x3
	.byte	0x23
	.uleb128 0x118
	.uleb128 0xc
	.string	"preferred_stack_boundary"
	.byte	0x13
	.value	0x181
	.long	0x212
	.byte	0x3
	.byte	0x23
	.uleb128 0x11c
	.uleb128 0xc
	.string	"language"
	.byte	0x13
	.value	0x184
	.long	0x3096
	.byte	0x3
	.byte	0x23
	.uleb128 0x120
	.uleb128 0xc
	.string	"epilogue_delay_list"
	.byte	0x13
	.value	0x18a
	.long	0x99
	.byte	0x3
	.byte	0x23
	.uleb128 0x124
	.uleb128 0x24
	.string	"returns_struct"
	.byte	0x13
	.value	0x190
	.long	0x2eb
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x24
	.string	"returns_pcc_struct"
	.byte	0x13
	.value	0x194
	.long	0x2eb
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x24
	.string	"returns_pointer"
	.byte	0x13
	.value	0x197
	.long	0x2eb
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x24
	.string	"needs_context"
	.byte	0x13
	.value	0x19a
	.long	0x2eb
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x24
	.string	"calls_setjmp"
	.byte	0x13
	.value	0x19d
	.long	0x2eb
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x24
	.string	"calls_longjmp"
	.byte	0x13
	.value	0x1a0
	.long	0x2eb
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x24
	.string	"calls_alloca"
	.byte	0x13
	.value	0x1a4
	.long	0x2eb
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x24
	.string	"calls_eh_return"
	.byte	0x13
	.value	0x1a7
	.long	0x2eb
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x24
	.string	"has_nonlocal_label"
	.byte	0x13
	.value	0x1ab
	.long	0x2eb
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x24
	.string	"has_nonlocal_goto"
	.byte	0x13
	.value	0x1af
	.long	0x2eb
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x24
	.string	"contains_functions"
	.byte	0x13
	.value	0x1b2
	.long	0x2eb
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x24
	.string	"has_computed_jump"
	.byte	0x13
	.value	0x1b5
	.long	0x2eb
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x24
	.string	"is_thunk"
	.byte	0x13
	.value	0x1ba
	.long	0x2eb
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x24
	.string	"all_throwers_are_sibcalls"
	.byte	0x13
	.value	0x1c1
	.long	0x2eb
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x24
	.string	"instrument_entry_exit"
	.byte	0x13
	.value	0x1c5
	.long	0x2eb
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x24
	.string	"arc_profile"
	.byte	0x13
	.value	0x1c8
	.long	0x2eb
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x24
	.string	"profile"
	.byte	0x13
	.value	0x1cb
	.long	0x2eb
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x24
	.string	"limit_stack"
	.byte	0x13
	.value	0x1cf
	.long	0x2eb
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x24
	.string	"stdarg"
	.byte	0x13
	.value	0x1d2
	.long	0x2eb
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x24
	.string	"x_whole_function_mode_p"
	.byte	0x13
	.value	0x1d8
	.long	0x2eb
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x24
	.string	"x_dont_save_pending_sizes_p"
	.byte	0x13
	.value	0x1e1
	.long	0x2eb
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x24
	.string	"uses_const_pool"
	.byte	0x13
	.value	0x1e4
	.long	0x2eb
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x24
	.string	"uses_pic_offset_table"
	.byte	0x13
	.value	0x1e7
	.long	0x2eb
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x24
	.string	"uses_eh_lsda"
	.byte	0x13
	.value	0x1ea
	.long	0x2eb
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x24
	.string	"arg_pointer_save_area_init"
	.byte	0x13
	.value	0x1ed
	.long	0x2eb
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.long	.LASF21
	.byte	0x13
	.value	0x1fa
	.long	0x25c4
	.byte	0x3
	.byte	0x23
	.uleb128 0x12c
	.uleb128 0xc
	.string	"max_jumptable_ents"
	.byte	0x13
	.value	0x1fe
	.long	0x212
	.byte	0x3
	.byte	0x23
	.uleb128 0x130
	.byte	0x0
	.uleb128 0x25
	.string	"eh_status"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x2fec
	.uleb128 0x25
	.string	"stmt_status"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x2ffe
	.uleb128 0x3
	.byte	0x4
	.long	0x24e4
	.uleb128 0x3
	.byte	0x4
	.long	0x238f
	.uleb128 0x25
	.string	"varasm_status"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x301e
	.uleb128 0x3
	.byte	0x4
	.long	0x262e
	.uleb128 0x25
	.string	"initial_value_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x303a
	.uleb128 0x25
	.string	"temp_slot"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x3057
	.uleb128 0x25
	.string	"machine_function"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x3069
	.uleb128 0x25
	.string	"language_function"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x3082
	.uleb128 0x4
	.long	0x30ee
	.string	"ggc_root_tab"
	.byte	0x10
	.byte	0x16
	.byte	0x34
	.uleb128 0x7
	.string	"base"
	.byte	0x16
	.byte	0x35
	.long	0x3ee
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"nelt"
	.byte	0x16
	.byte	0x36
	.long	0x321
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"stride"
	.byte	0x16
	.byte	0x37
	.long	0x321
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"cb"
	.byte	0x16
	.byte	0x38
	.long	0x69e
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x12
	.long	0x3129
	.long	.LASF22
	.byte	0xc
	.byte	0x14
	.byte	0x2d
	.uleb128 0x7
	.string	"option"
	.byte	0x14
	.byte	0x30
	.long	0x21a6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1a
	.long	.LASF7
	.byte	0x14
	.byte	0x32
	.long	0x212
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"help"
	.byte	0x14
	.byte	0x34
	.long	0x21a6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x1b
	.long	.LASF22
	.byte	0x14
	.byte	0x35
	.long	0x30ee
	.uleb128 0x1c
	.long	0x3164
	.string	"cselib_val_u"
	.byte	0x4
	.byte	0x5
	.byte	0x1c
	.uleb128 0x1d
	.string	"val_rtx"
	.byte	0x5
	.byte	0x1e
	.long	0x99
	.uleb128 0x26
	.long	.LASF20
	.byte	0x5
	.byte	0x20
	.long	0x1494
	.byte	0x0
	.uleb128 0x4
	.long	0x31c2
	.string	"elt_loc_list"
	.byte	0x10
	.byte	0x5
	.byte	0x25
	.uleb128 0x1a
	.long	.LASF12
	.byte	0x5
	.byte	0x2f
	.long	0x31c2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"loc"
	.byte	0x5
	.byte	0x31
	.long	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"setting_insn"
	.byte	0x5
	.byte	0x33
	.long	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"in_libcall"
	.byte	0x5
	.byte	0x35
	.long	0x219d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x3164
	.uleb128 0x2
	.string	"cselib_val"
	.byte	0x5
	.byte	0x29
	.long	0x143c
	.uleb128 0x3
	.byte	0x4
	.long	0x31c8
	.uleb128 0x4
	.long	0x322a
	.string	"_obstack_chunk"
	.byte	0xc
	.byte	0xe
	.byte	0xa2
	.uleb128 0x7
	.string	"limit"
	.byte	0xe
	.byte	0xa3
	.long	0x3f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"prev"
	.byte	0xe
	.byte	0xa4
	.long	0x322a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"contents"
	.byte	0xe
	.byte	0xa5
	.long	0x67d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x31e0
	.uleb128 0x27
	.long	0x3245
	.byte	0x1
	.long	0x322a
	.uleb128 0x14
	.long	0x3ee
	.uleb128 0x14
	.long	0x3d1
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x3230
	.uleb128 0x13
	.long	0x325c
	.byte	0x1
	.uleb128 0x14
	.long	0x3ee
	.uleb128 0x14
	.long	0x322a
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x324b
	.uleb128 0xb
	.long	0x3287
	.string	"reg_use"
	.byte	0x4
	.byte	0x1
	.value	0x134
	.uleb128 0xc
	.string	"reg_rtx"
	.byte	0x1
	.value	0x134
	.long	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x21
	.long	0x3303
	.long	.LASF5
	.byte	0x18
	.byte	0x1
	.value	0x139
	.uleb128 0x1e
	.long	.LASF5
	.byte	0x1
	.value	0x13b
	.long	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.string	"bitmap_index"
	.byte	0x1
	.value	0x13d
	.long	0x212
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.string	"next_same_hash"
	.byte	0x1
	.value	0x13f
	.long	0x3303
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1e
	.long	.LASF23
	.byte	0x1
	.value	0x145
	.long	0x335e
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x1e
	.long	.LASF24
	.byte	0x1
	.value	0x14a
	.long	0x335e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x1e
	.long	.LASF25
	.byte	0x1
	.value	0x14e
	.long	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x3287
	.uleb128 0x21
	.long	0x335e
	.long	.LASF26
	.byte	0xc
	.byte	0x1
	.value	0x145
	.uleb128 0x1e
	.long	.LASF12
	.byte	0x1
	.value	0x158
	.long	0x335e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1e
	.long	.LASF27
	.byte	0x1
	.value	0x15a
	.long	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.string	"deleted_p"
	.byte	0x1
	.value	0x15c
	.long	0x20a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.string	"copied_p"
	.byte	0x1
	.value	0x161
	.long	0x20a
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x3309
	.uleb128 0xb
	.long	0x33bb
	.string	"hash_table"
	.byte	0x10
	.byte	0x1
	.value	0x16e
	.uleb128 0x1e
	.long	.LASF28
	.byte	0x1
	.value	0x171
	.long	0x33bb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1e
	.long	.LASF6
	.byte	0x1
	.value	0x174
	.long	0x2eb
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.string	"n_elems"
	.byte	0x1
	.value	0x177
	.long	0x2eb
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.string	"set_p"
	.byte	0x1
	.value	0x17a
	.long	0x212
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x3303
	.uleb128 0xb
	.long	0x33f1
	.string	"reg_set"
	.byte	0x8
	.byte	0x1
	.value	0x1b7
	.uleb128 0x1e
	.long	.LASF12
	.byte	0x1
	.value	0x1b9
	.long	0x33f1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1e
	.long	.LASF27
	.byte	0x1
	.value	0x1bb
	.long	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x33c1
	.uleb128 0x10
	.string	"reg_set"
	.byte	0x1
	.value	0x1bc
	.long	0x33c1
	.uleb128 0xb
	.long	0x34b4
	.string	"ls_expr"
	.byte	0x24
	.byte	0x1
	.value	0x1d4
	.uleb128 0x1e
	.long	.LASF5
	.byte	0x1
	.value	0x1d5
	.long	0x3303
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.string	"pattern"
	.byte	0x1
	.value	0x1d6
	.long	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.string	"loads"
	.byte	0x1
	.value	0x1d7
	.long	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.string	"stores"
	.byte	0x1
	.value	0x1d8
	.long	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x1e
	.long	.LASF12
	.byte	0x1
	.value	0x1d9
	.long	0x34b4
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xc
	.string	"invalid"
	.byte	0x1
	.value	0x1da
	.long	0x212
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x1e
	.long	.LASF10
	.byte	0x1
	.value	0x1db
	.long	0x212
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xc
	.string	"hash_index"
	.byte	0x1
	.value	0x1dc
	.long	0x212
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x1e
	.long	.LASF25
	.byte	0x1
	.value	0x1dd
	.long	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x3407
	.uleb128 0xb
	.long	0x3529
	.string	"null_pointer_info"
	.byte	0x14
	.byte	0x1
	.value	0x21e
	.uleb128 0x1e
	.long	.LASF29
	.byte	0x1
	.value	0x220
	.long	0x2122
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.string	"min_reg"
	.byte	0x1
	.value	0x222
	.long	0x2eb
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.string	"max_reg"
	.byte	0x1
	.value	0x224
	.long	0x2eb
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1e
	.long	.LASF30
	.byte	0x1
	.value	0x225
	.long	0x3529
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x1e
	.long	.LASF31
	.byte	0x1
	.value	0x226
	.long	0x3529
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1dbf
	.uleb128 0x28
	.long	0x3658
	.byte	0x1
	.string	"gcse_main"
	.byte	0x1
	.value	0x2cb
	.byte	0x1
	.long	0x212
	.long	.LFB15
	.long	.LFE15
	.long	.LLST0
	.uleb128 0x29
	.string	"f"
	.byte	0x1
	.value	0x2c9
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x29
	.string	"file"
	.byte	0x1
	.value	0x2ca
	.long	0x3658
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2a
	.long	.LASF32
	.byte	0x1
	.value	0x2cc
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2b
	.string	"pass"
	.byte	0x1
	.value	0x2cc
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2b
	.string	"initial_bytes_used"
	.byte	0x1
	.value	0x2ce
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2b
	.string	"max_pass_bytes"
	.byte	0x1
	.value	0x2d0
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2b
	.string	"gcse_obstack_bottom"
	.byte	0x1
	.value	0x2d2
	.long	0x3f0
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.string	"orig_bb_count"
	.byte	0x1
	.value	0x2d7
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2c
	.long	0x362d
	.long	.LBB2
	.long	.LBE2
	.uleb128 0x2b
	.string	"__o"
	.byte	0x1
	.value	0x375
	.long	0x2389
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.string	"__obj"
	.byte	0x1
	.value	0x375
	.long	0x3ee
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x2d
	.long	.LBB3
	.long	.LBE3
	.uleb128 0x2b
	.string	"__o"
	.byte	0x1
	.value	0x38a
	.long	0x2389
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.string	"__obj"
	.byte	0x1
	.value	0x38a
	.long	0x3ee
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x3f6
	.uleb128 0x2e
	.long	0x3692
	.string	"compute_can_copy"
	.byte	0x1
	.value	0x39d
	.byte	0x1
	.long	.LFB16
	.long	.LFE16
	.long	.LLST1
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x39e
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x2f
	.long	0x36c3
	.string	"gmalloc"
	.byte	0x1
	.value	0x3bc
	.byte	0x1
	.long	0x3f0
	.long	.LFB17
	.long	.LFE17
	.long	.LLST2
	.uleb128 0x30
	.long	.LASF6
	.byte	0x1
	.value	0x3bb
	.long	0x2eb
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x2f
	.long	0x3704
	.string	"grealloc"
	.byte	0x1
	.value	0x3c9
	.byte	0x1
	.long	0x3f0
	.long	.LFB18
	.long	.LFE18
	.long	.LLST3
	.uleb128 0x29
	.string	"ptr"
	.byte	0x1
	.value	0x3c7
	.long	0x3f0
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LASF6
	.byte	0x1
	.value	0x3c8
	.long	0x2eb
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x2f
	.long	0x37a8
	.string	"gcse_alloc"
	.byte	0x1
	.value	0x3d2
	.byte	0x1
	.long	0x3f0
	.long	.LFB19
	.long	.LFE19
	.long	.LLST4
	.uleb128 0x30
	.long	.LASF6
	.byte	0x1
	.value	0x3d1
	.long	0x356
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.long	.LBB4
	.long	.LBE4
	.uleb128 0x2b
	.string	"__h"
	.byte	0x1
	.value	0x3d4
	.long	0x2389
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2c
	.long	0x377d
	.long	.LBB5
	.long	.LBE5
	.uleb128 0x2b
	.string	"__o"
	.byte	0x1
	.value	0x3d4
	.long	0x2389
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.string	"__len"
	.byte	0x1
	.value	0x3d4
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x2d
	.long	.LBB6
	.long	.LBE6
	.uleb128 0x2b
	.string	"__o1"
	.byte	0x1
	.value	0x3d4
	.long	0x2389
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2a
	.long	.LASF7
	.byte	0x1
	.value	0x3d4
	.long	0x3ee
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
	.long	0x3803
	.string	"alloc_gcse_mem"
	.byte	0x1
	.value	0x3df
	.byte	0x1
	.long	.LFB20
	.long	.LFE20
	.long	.LLST5
	.uleb128 0x29
	.string	"f"
	.byte	0x1
	.value	0x3de
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x3e0
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2b
	.string	"n"
	.byte	0x1
	.value	0x3e0
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2a
	.long	.LASF27
	.byte	0x1
	.value	0x3e1
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x31
	.string	"free_gcse_mem"
	.byte	0x1
	.value	0x411
	.byte	0x1
	.long	.LFB21
	.long	.LFE21
	.long	.LLST6
	.uleb128 0x2f
	.long	0x38a8
	.string	"get_bitmap_width"
	.byte	0x1
	.value	0x433
	.byte	0x1
	.long	0x212
	.long	.LFB22
	.long	.LFE22
	.long	.LLST7
	.uleb128 0x29
	.string	"n"
	.byte	0x1
	.value	0x430
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x29
	.string	"x"
	.byte	0x1
	.value	0x431
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x29
	.string	"y"
	.byte	0x1
	.value	0x432
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2b
	.string	"max_bitmap_memory"
	.byte	0x1
	.value	0x437
	.long	0x321
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x2b
	.string	"column_size"
	.byte	0x1
	.value	0x43b
	.long	0x321
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x2e
	.long	0x3968
	.string	"compute_local_properties"
	.byte	0x1
	.value	0x469
	.byte	0x1
	.long	.LFB23
	.long	.LFE23
	.long	.LLST8
	.uleb128 0x29
	.string	"transp"
	.byte	0x1
	.value	0x465
	.long	0x3529
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x29
	.string	"comp"
	.byte	0x1
	.value	0x466
	.long	0x3529
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x29
	.string	"antloc"
	.byte	0x1
	.value	0x467
	.long	0x3529
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x30
	.long	.LASF28
	.byte	0x1
	.value	0x468
	.long	0x3968
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x46a
	.long	0x2eb
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2d
	.long	.LBB7
	.long	.LBE7
	.uleb128 0x2a
	.long	.LASF5
	.byte	0x1
	.value	0x47c
	.long	0x3303
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2d
	.long	.LBB8
	.long	.LBE8
	.uleb128 0x2a
	.long	.LASF9
	.byte	0x1
	.value	0x480
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2a
	.long	.LASF26
	.byte	0x1
	.value	0x481
	.long	0x335e
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x3364
	.uleb128 0x2e
	.long	0x39b5
	.string	"alloc_reg_set_mem"
	.byte	0x1
	.value	0x4b2
	.byte	0x1
	.long	.LFB24
	.long	.LFE24
	.long	.LLST9
	.uleb128 0x29
	.string	"n_regs"
	.byte	0x1
	.value	0x4b1
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2b
	.string	"n"
	.byte	0x1
	.value	0x4b3
	.long	0x2eb
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x2e
	.long	0x3a06
	.string	"free_reg_set_mem"
	.byte	0x1
	.value	0x4bf
	.byte	0x1
	.long	.LFB25
	.long	.LFE25
	.long	.LLST10
	.uleb128 0x2d
	.long	.LBB9
	.long	.LBE9
	.uleb128 0x2b
	.string	"__o"
	.byte	0x1
	.value	0x4c1
	.long	0x2389
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2b
	.string	"__obj"
	.byte	0x1
	.value	0x4c1
	.long	0x3ee
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
	.long	0x3af3
	.string	"record_one_set"
	.byte	0x1
	.value	0x4ca
	.byte	0x1
	.long	.LFB26
	.long	.LFE26
	.long	.LLST11
	.uleb128 0x30
	.long	.LASF33
	.byte	0x1
	.value	0x4c8
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LASF27
	.byte	0x1
	.value	0x4c9
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2b
	.string	"new_reg_info"
	.byte	0x1
	.value	0x4cc
	.long	0x33f1
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2c
	.long	0x3a82
	.long	.LBB10
	.long	.LBE10
	.uleb128 0x2b
	.string	"new_size"
	.byte	0x1
	.value	0x4d1
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.byte	0x0
	.uleb128 0x2d
	.long	.LBB11
	.long	.LBE11
	.uleb128 0x2b
	.string	"__h"
	.byte	0x1
	.value	0x4db
	.long	0x2389
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.long	0x3ac8
	.long	.LBB12
	.long	.LBE12
	.uleb128 0x2b
	.string	"__o"
	.byte	0x1
	.value	0x4db
	.long	0x2389
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2b
	.string	"__len"
	.byte	0x1
	.value	0x4db
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x2d
	.long	.LBB13
	.long	.LBE13
	.uleb128 0x2b
	.string	"__o1"
	.byte	0x1
	.value	0x4db
	.long	0x2389
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2a
	.long	.LASF7
	.byte	0x1
	.value	0x4db
	.long	0x3ee
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
	.long	0x3b61
	.string	"record_set_info"
	.byte	0x1
	.value	0x4eb
	.byte	0x1
	.long	.LFB27
	.long	.LFE27
	.long	.LLST12
	.uleb128 0x30
	.long	.LASF14
	.byte	0x1
	.value	0x4e9
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LASF34
	.byte	0x1
	.value	0x4e9
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x30
	.long	.LASF13
	.byte	0x1
	.value	0x4ea
	.long	0x3ee
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2b
	.string	"record_set_insn"
	.byte	0x1
	.value	0x4ec
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x2e
	.long	0x3ba0
	.string	"compute_sets"
	.byte	0x1
	.value	0x4fa
	.byte	0x1
	.long	.LFB28
	.long	.LFE28
	.long	.LLST13
	.uleb128 0x29
	.string	"f"
	.byte	0x1
	.value	0x4f9
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2a
	.long	.LASF27
	.byte	0x1
	.value	0x4fb
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x21
	.long	0x3bea
	.long	.LASF35
	.byte	0xc
	.byte	0x1
	.value	0x505
	.uleb128 0xc
	.string	"last_bb"
	.byte	0x1
	.value	0x506
	.long	0x2122
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.string	"first_set"
	.byte	0x1
	.value	0x507
	.long	0x212
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.string	"last_set"
	.byte	0x1
	.value	0x508
	.long	0x212
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x2f
	.long	0x3c49
	.string	"want_to_gcse_p"
	.byte	0x1
	.value	0x516
	.byte	0x1
	.long	0x212
	.long	.LFB29
	.long	.LFE29
	.long	.LLST14
	.uleb128 0x29
	.string	"x"
	.byte	0x1
	.value	0x515
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2b
	.string	"num_clobbers"
	.byte	0x1
	.value	0x517
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.string	"icode"
	.byte	0x1
	.value	0x518
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x2f
	.long	0x3cf1
	.string	"oprs_unchanged_p"
	.byte	0x1
	.value	0x54a
	.byte	0x1
	.long	0x212
	.long	.LFB30
	.long	.LFE30
	.long	.LLST15
	.uleb128 0x29
	.string	"x"
	.byte	0x1
	.value	0x548
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LASF27
	.byte	0x1
	.value	0x548
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x30
	.long	.LASF36
	.byte	0x1
	.value	0x549
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x54b
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.string	"j"
	.byte	0x1
	.value	0x54b
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2a
	.long	.LASF0
	.byte	0x1
	.value	0x54c
	.long	0xa41
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.string	"fmt"
	.byte	0x1
	.value	0x54d
	.long	0x1ff
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2d
	.long	.LBB14
	.long	.LBE14
	.uleb128 0x2b
	.string	"info"
	.byte	0x1
	.value	0x557
	.long	0x3cf1
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x3ba0
	.uleb128 0x2e
	.long	0x3d53
	.string	"mems_conflict_for_gcse_p"
	.byte	0x1
	.value	0x5a9
	.byte	0x1
	.long	.LFB31
	.long	.LFE31
	.long	.LLST16
	.uleb128 0x30
	.long	.LASF14
	.byte	0x1
	.value	0x5a7
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LASF34
	.byte	0x1
	.value	0x5a7
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x30
	.long	.LASF13
	.byte	0x1
	.value	0x5a8
	.long	0x3ee
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.byte	0x0
	.uleb128 0x2f
	.long	0x3deb
	.string	"load_killed_in_block_p"
	.byte	0x1
	.value	0x5d3
	.byte	0x1
	.long	0x212
	.long	.LFB32
	.long	.LFE32
	.long	.LLST17
	.uleb128 0x29
	.string	"bb"
	.byte	0x1
	.value	0x5cf
	.long	0x2122
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x29
	.string	"uid_limit"
	.byte	0x1
	.value	0x5d0
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x29
	.string	"x"
	.byte	0x1
	.value	0x5d1
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x30
	.long	.LASF36
	.byte	0x1
	.value	0x5d2
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x2a
	.long	.LASF37
	.byte	0x1
	.value	0x5d4
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2d
	.long	.LBB15
	.long	.LBE15
	.uleb128 0x2a
	.long	.LASF34
	.byte	0x1
	.value	0x5d7
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
	.long	0x3e36
	.string	"oprs_anticipatable_p"
	.byte	0x1
	.value	0x5ff
	.byte	0x1
	.long	0x212
	.long	.LFB33
	.long	.LFE33
	.long	.LLST18
	.uleb128 0x29
	.string	"x"
	.byte	0x1
	.value	0x5fe
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LASF27
	.byte	0x1
	.value	0x5fe
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x2f
	.long	0x3e7d
	.string	"oprs_available_p"
	.byte	0x1
	.value	0x609
	.byte	0x1
	.long	0x212
	.long	.LFB34
	.long	.LFE34
	.long	.LLST19
	.uleb128 0x29
	.string	"x"
	.byte	0x1
	.value	0x608
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LASF27
	.byte	0x1
	.value	0x608
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x2f
	.long	0x3eeb
	.string	"hash_expr"
	.byte	0x1
	.value	0x61b
	.byte	0x1
	.long	0x2eb
	.long	.LFB35
	.long	.LFE35
	.long	.LLST20
	.uleb128 0x29
	.string	"x"
	.byte	0x1
	.value	0x617
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x29
	.string	"mode"
	.byte	0x1
	.value	0x618
	.long	0x749
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x30
	.long	.LASF38
	.byte	0x1
	.value	0x619
	.long	0x743
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x30
	.long	.LASF39
	.byte	0x1
	.value	0x61a
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x2a
	.long	.LASF40
	.byte	0x1
	.value	0x61c
	.long	0x2eb
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x2f
	.long	0x3ff6
	.string	"hash_expr_1"
	.byte	0x1
	.value	0x63b
	.byte	0x1
	.long	0x2eb
	.long	.LFB37
	.long	.LFE37
	.long	.LLST21
	.uleb128 0x29
	.string	"x"
	.byte	0x1
	.value	0x638
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x29
	.string	"mode"
	.byte	0x1
	.value	0x639
	.long	0x749
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x30
	.long	.LASF38
	.byte	0x1
	.value	0x63a
	.long	0x743
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x63c
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2b
	.string	"j"
	.byte	0x1
	.value	0x63c
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2a
	.long	.LASF40
	.byte	0x1
	.value	0x63d
	.long	0x2eb
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2a
	.long	.LASF0
	.byte	0x1
	.value	0x63e
	.long	0xa41
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.string	"fmt"
	.byte	0x1
	.value	0x63f
	.long	0x1ff
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x32
	.long	.LASF61
	.byte	0x1
	.value	0x696
	.long	.L243
	.uleb128 0x2c
	.long	0x3fbd
	.long	.LBB16
	.long	.LBE16
	.uleb128 0x2b
	.string	"units"
	.byte	0x1
	.value	0x663
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.string	"elt"
	.byte	0x1
	.value	0x664
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x2c
	.long	0x3fe5
	.long	.LBB17
	.long	.LBE17
	.uleb128 0x2b
	.string	"h"
	.byte	0x1
	.value	0x680
	.long	0x2eb
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.string	"p"
	.byte	0x1
	.value	0x681
	.long	0x68d
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x33
	.long	.LASF41
	.long	0x7d0d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.12881
	.byte	0x0
	.uleb128 0x2f
	.long	0x4048
	.string	"hash_string_1"
	.byte	0x1
	.value	0x629
	.byte	0x1
	.long	0x2eb
	.long	.LFB36
	.long	.LFE36
	.long	.LLST22
	.uleb128 0x29
	.string	"ps"
	.byte	0x1
	.value	0x628
	.long	0x1ff
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2a
	.long	.LASF40
	.byte	0x1
	.value	0x62a
	.long	0x2eb
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x2b
	.string	"p"
	.byte	0x1
	.value	0x62b
	.long	0x68d
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x2f
	.long	0x4098
	.string	"hash_set"
	.byte	0x1
	.value	0x6f9
	.byte	0x1
	.long	0x2eb
	.long	.LFB38
	.long	.LFE38
	.long	.LLST23
	.uleb128 0x30
	.long	.LASF33
	.byte	0x1
	.value	0x6f7
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LASF39
	.byte	0x1
	.value	0x6f8
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2a
	.long	.LASF40
	.byte	0x1
	.value	0x6fa
	.long	0x2eb
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x2f
	.long	0x4121
	.string	"expr_equiv_p"
	.byte	0x1
	.value	0x706
	.byte	0x1
	.long	0x212
	.long	.LFB39
	.long	.LFE39
	.long	.LLST24
	.uleb128 0x29
	.string	"x"
	.byte	0x1
	.value	0x705
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x29
	.string	"y"
	.byte	0x1
	.value	0x705
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x707
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.string	"j"
	.byte	0x1
	.value	0x707
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2a
	.long	.LASF0
	.byte	0x1
	.value	0x708
	.long	0xa41
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.string	"fmt"
	.byte	0x1
	.value	0x709
	.long	0x1ff
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x33
	.long	.LASF41
	.long	0x7cf8
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.13085
	.byte	0x0
	.uleb128 0x2e
	.long	0x4223
	.string	"insert_expr_in_table"
	.byte	0x1
	.value	0x7a0
	.byte	0x1
	.long	.LFB40
	.long	.LFE40
	.long	.LLST25
	.uleb128 0x29
	.string	"x"
	.byte	0x1
	.value	0x79b
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x29
	.string	"mode"
	.byte	0x1
	.value	0x79c
	.long	0x749
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x30
	.long	.LASF27
	.byte	0x1
	.value	0x79d
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x29
	.string	"antic_p"
	.byte	0x1
	.value	0x79e
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x30
	.long	.LASF36
	.byte	0x1
	.value	0x79e
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x30
	.long	.LASF28
	.byte	0x1
	.value	0x79f
	.long	0x3968
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x2b
	.string	"found"
	.byte	0x1
	.value	0x7a1
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.long	.LASF38
	.byte	0x1
	.value	0x7a1
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2a
	.long	.LASF40
	.byte	0x1
	.value	0x7a2
	.long	0x2eb
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2a
	.long	.LASF42
	.byte	0x1
	.value	0x7a3
	.long	0x3303
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2a
	.long	.LASF43
	.byte	0x1
	.value	0x7a3
	.long	0x3303
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2a
	.long	.LASF23
	.byte	0x1
	.value	0x7a4
	.long	0x335e
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2a
	.long	.LASF24
	.byte	0x1
	.value	0x7a4
	.long	0x335e
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2a
	.long	.LASF44
	.byte	0x1
	.value	0x7a5
	.long	0x335e
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2e
	.long	0x42e9
	.string	"insert_set_in_table"
	.byte	0x1
	.value	0x81f
	.byte	0x1
	.long	.LFB41
	.long	.LFE41
	.long	.LLST26
	.uleb128 0x29
	.string	"x"
	.byte	0x1
	.value	0x81c
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LASF27
	.byte	0x1
	.value	0x81d
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x30
	.long	.LASF28
	.byte	0x1
	.value	0x81e
	.long	0x3968
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2b
	.string	"found"
	.byte	0x1
	.value	0x820
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2a
	.long	.LASF40
	.byte	0x1
	.value	0x821
	.long	0x2eb
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2a
	.long	.LASF42
	.byte	0x1
	.value	0x822
	.long	0x3303
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2a
	.long	.LASF43
	.byte	0x1
	.value	0x822
	.long	0x3303
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.string	"cur_occr"
	.byte	0x1
	.value	0x823
	.long	0x335e
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2a
	.long	.LASF44
	.byte	0x1
	.value	0x823
	.long	0x335e
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x33
	.long	.LASF41
	.long	0x7cf3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.13366
	.byte	0x0
	.uleb128 0x2e
	.long	0x43bb
	.string	"hash_scan_set"
	.byte	0x1
	.value	0x874
	.byte	0x1
	.long	.LFB42
	.long	.LFE42
	.long	.LLST27
	.uleb128 0x29
	.string	"pat"
	.byte	0x1
	.value	0x872
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LASF27
	.byte	0x1
	.value	0x872
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x30
	.long	.LASF28
	.byte	0x1
	.value	0x873
	.long	0x3968
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2b
	.string	"src"
	.byte	0x1
	.value	0x875
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.long	.LASF14
	.byte	0x1
	.value	0x876
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2a
	.long	.LASF45
	.byte	0x1
	.value	0x877
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2d
	.long	.LBB18
	.long	.LBE18
	.uleb128 0x2a
	.long	.LASF33
	.byte	0x1
	.value	0x87e
	.long	0x2eb
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2b
	.string	"tmp"
	.byte	0x1
	.value	0x87f
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2d
	.long	.LBB19
	.long	.LBE19
	.uleb128 0x2b
	.string	"antic_p"
	.byte	0x1
	.value	0x89f
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2a
	.long	.LASF36
	.byte	0x1
	.value	0x8a4
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
	.long	0x440e
	.string	"hash_scan_clobber"
	.byte	0x1
	.value	0x8c0
	.byte	0x1
	.long	.LFB43
	.long	.LFE43
	.long	.LLST28
	.uleb128 0x29
	.string	"x"
	.byte	0x1
	.value	0x8be
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LASF27
	.byte	0x1
	.value	0x8be
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x30
	.long	.LASF28
	.byte	0x1
	.value	0x8bf
	.long	0x3968
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.byte	0x0
	.uleb128 0x2e
	.long	0x445e
	.string	"hash_scan_call"
	.byte	0x1
	.value	0x8c8
	.byte	0x1
	.long	.LFB44
	.long	.LFE44
	.long	.LLST29
	.uleb128 0x29
	.string	"x"
	.byte	0x1
	.value	0x8c6
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LASF27
	.byte	0x1
	.value	0x8c6
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x30
	.long	.LASF28
	.byte	0x1
	.value	0x8c7
	.long	0x3968
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.byte	0x0
	.uleb128 0x2e
	.long	0x44e3
	.string	"hash_scan_insn"
	.byte	0x1
	.value	0x8de
	.byte	0x1
	.long	.LFB45
	.long	.LFE45
	.long	.LLST30
	.uleb128 0x30
	.long	.LASF27
	.byte	0x1
	.value	0x8db
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LASF28
	.byte	0x1
	.value	0x8dc
	.long	0x3968
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x30
	.long	.LASF46
	.byte	0x1
	.value	0x8dd
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2b
	.string	"pat"
	.byte	0x1
	.value	0x8df
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x8e0
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x2d
	.long	.LBB20
	.long	.LBE20
	.uleb128 0x2b
	.string	"x"
	.byte	0x1
	.value	0x8ed
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
	.long	0x457e
	.string	"dump_hash_table"
	.byte	0x1
	.value	0x902
	.byte	0x1
	.long	.LFB46
	.long	.LFE46
	.long	.LLST31
	.uleb128 0x29
	.string	"file"
	.byte	0x1
	.value	0x8ff
	.long	0x3658
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x29
	.string	"name"
	.byte	0x1
	.value	0x900
	.long	0x1ff
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x30
	.long	.LASF28
	.byte	0x1
	.value	0x901
	.long	0x3968
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x903
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2b
	.string	"flat_table"
	.byte	0x1
	.value	0x905
	.long	0x33bb
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.string	"hash_val"
	.byte	0x1
	.value	0x906
	.long	0x457e
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2a
	.long	.LASF5
	.byte	0x1
	.value	0x907
	.long	0x3303
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x2eb
	.uleb128 0x2e
	.long	0x45f1
	.string	"record_last_reg_set_info"
	.byte	0x1
	.value	0x939
	.byte	0x1
	.long	.LFB47
	.long	.LFE47
	.long	.LLST32
	.uleb128 0x30
	.long	.LASF27
	.byte	0x1
	.value	0x937
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LASF33
	.byte	0x1
	.value	0x938
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2b
	.string	"info"
	.byte	0x1
	.value	0x93a
	.long	0x3cf1
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.string	"cuid"
	.byte	0x1
	.value	0x93b
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x2e
	.long	0x4679
	.string	"canon_list_insert"
	.byte	0x1
	.value	0x950
	.byte	0x1
	.long	.LFB48
	.long	.LFE48
	.long	.LLST33
	.uleb128 0x30
	.long	.LASF14
	.byte	0x1
	.value	0x94d
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x29
	.string	"unused1"
	.byte	0x1
	.value	0x94e
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x29
	.string	"v_insn"
	.byte	0x1
	.value	0x94f
	.long	0x3ee
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2a
	.long	.LASF47
	.byte	0x1
	.value	0x951
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2a
	.long	.LASF27
	.byte	0x1
	.value	0x951
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.string	"bb"
	.byte	0x1
	.value	0x952
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x2e
	.long	0x46c5
	.string	"record_last_mem_set_info"
	.byte	0x1
	.value	0x974
	.byte	0x1
	.long	.LFB49
	.long	.LFE49
	.long	.LLST34
	.uleb128 0x30
	.long	.LASF27
	.byte	0x1
	.value	0x973
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2b
	.string	"bb"
	.byte	0x1
	.value	0x975
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x2e
	.long	0x4736
	.string	"record_last_set_info"
	.byte	0x1
	.value	0x991
	.byte	0x1
	.long	.LFB50
	.long	.LFE50
	.long	.LLST35
	.uleb128 0x30
	.long	.LASF14
	.byte	0x1
	.value	0x98f
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LASF34
	.byte	0x1
	.value	0x98f
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x30
	.long	.LASF13
	.byte	0x1
	.value	0x990
	.long	0x3ee
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2b
	.string	"last_set_insn"
	.byte	0x1
	.value	0x992
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2e
	.long	0x47d0
	.string	"compute_hash_table_work"
	.byte	0x1
	.value	0x9b3
	.byte	0x1
	.long	.LFB51
	.long	.LFE51
	.long	.LLST36
	.uleb128 0x30
	.long	.LASF28
	.byte	0x1
	.value	0x9b2
	.long	0x3968
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x9b4
	.long	0x2eb
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2d
	.long	.LBB21
	.long	.LBE21
	.uleb128 0x2a
	.long	.LASF27
	.byte	0x1
	.value	0x9c7
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2a
	.long	.LASF33
	.byte	0x1
	.value	0x9c8
	.long	0x2eb
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2a
	.long	.LASF46
	.byte	0x1
	.value	0x9c9
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2d
	.long	.LBB22
	.long	.LBE22
	.uleb128 0x2a
	.long	.LASF48
	.byte	0x1
	.value	0x9d9
	.long	0x219d
	.byte	0x2
	.byte	0x91
	.sleb128 -21
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
	.long	0x4837
	.string	"alloc_hash_table"
	.byte	0x1
	.value	0xa0b
	.byte	0x1
	.long	.LFB52
	.long	.LFE52
	.long	.LLST37
	.uleb128 0x29
	.string	"n_insns"
	.byte	0x1
	.value	0xa08
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LASF28
	.byte	0x1
	.value	0xa09
	.long	0x3968
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x29
	.string	"set_p"
	.byte	0x1
	.value	0xa0a
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2b
	.string	"n"
	.byte	0x1
	.value	0xa0c
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x2e
	.long	0x486c
	.string	"free_hash_table"
	.byte	0x1
	.value	0xa20
	.byte	0x1
	.long	.LFB53
	.long	.LFE53
	.long	.LLST38
	.uleb128 0x30
	.long	.LASF28
	.byte	0x1
	.value	0xa1f
	.long	0x3968
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x2e
	.long	0x48a4
	.string	"compute_hash_table"
	.byte	0x1
	.value	0xa2a
	.byte	0x1
	.long	.LFB54
	.long	.LFE54
	.long	.LLST39
	.uleb128 0x30
	.long	.LASF28
	.byte	0x1
	.value	0xa29
	.long	0x3968
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x2f
	.long	0x4915
	.string	"lookup_expr"
	.byte	0x1
	.value	0xa3c
	.byte	0x1
	.long	0x3303
	.long	.LFB55
	.long	.LFE55
	.long	.LLST40
	.uleb128 0x29
	.string	"pat"
	.byte	0x1
	.value	0xa3a
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LASF28
	.byte	0x1
	.value	0xa3b
	.long	0x3968
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2a
	.long	.LASF38
	.byte	0x1
	.value	0xa3d
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2a
	.long	.LASF40
	.byte	0x1
	.value	0xa3e
	.long	0x2eb
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x2a
	.long	.LASF5
	.byte	0x1
	.value	0xa40
	.long	0x3303
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x2f
	.long	0x4985
	.string	"lookup_set"
	.byte	0x1
	.value	0xa56
	.byte	0x1
	.long	0x3303
	.long	.LFB56
	.long	.LFE56
	.long	.LLST41
	.uleb128 0x30
	.long	.LASF33
	.byte	0x1
	.value	0xa53
	.long	0x2eb
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x29
	.string	"pat"
	.byte	0x1
	.value	0xa54
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x30
	.long	.LASF28
	.byte	0x1
	.value	0xa55
	.long	0x3968
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2a
	.long	.LASF40
	.byte	0x1
	.value	0xa57
	.long	0x2eb
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x2a
	.long	.LASF5
	.byte	0x1
	.value	0xa58
	.long	0x3303
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x2f
	.long	0x49c6
	.string	"next_set"
	.byte	0x1
	.value	0xa70
	.byte	0x1
	.long	0x3303
	.long	.LFB57
	.long	.LFE57
	.long	.LLST42
	.uleb128 0x30
	.long	.LASF33
	.byte	0x1
	.value	0xa6e
	.long	0x2eb
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LASF5
	.byte	0x1
	.value	0xa6f
	.long	0x3303
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x2e
	.long	0x4a25
	.string	"free_insn_expr_list_list"
	.byte	0x1
	.value	0xa7e
	.byte	0x1
	.long	.LFB58
	.long	.LFE58
	.long	.LLST43
	.uleb128 0x29
	.string	"listp"
	.byte	0x1
	.value	0xa7d
	.long	0x16bd
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2b
	.string	"list"
	.byte	0x1
	.value	0xa7f
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2a
	.long	.LASF12
	.byte	0x1
	.value	0xa7f
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2e
	.long	0x4b62
	.string	"clear_modify_mem_tables"
	.byte	0x1
	.value	0xa90
	.byte	0x1
	.long	.LFB59
	.long	.LFE59
	.long	.LLST44
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0xa91
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2c
	.long	0x4ae2
	.long	.LBB23
	.long	.LBE23
	.uleb128 0x2b
	.string	"ptr_"
	.byte	0x1
	.value	0xa93
	.long	0x1d52
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2b
	.string	"indx_"
	.byte	0x1
	.value	0xa93
	.long	0x2eb
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2a
	.long	.LASF49
	.byte	0x1
	.value	0xa93
	.long	0x2eb
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2a
	.long	.LASF50
	.byte	0x1
	.value	0xa93
	.long	0x2eb
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2d
	.long	.LBB24
	.long	.LBE24
	.uleb128 0x2b
	.string	"word_"
	.byte	0x1
	.value	0xa93
	.long	0x1cbd
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2d
	.long	.LBB25
	.long	.LBE25
	.uleb128 0x2b
	.string	"mask_"
	.byte	0x1
	.value	0xa93
	.long	0x1cbd
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2d
	.long	.LBB26
	.long	.LBE26
	.uleb128 0x2b
	.string	"ptr_"
	.byte	0x1
	.value	0xa97
	.long	0x1d52
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2b
	.string	"indx_"
	.byte	0x1
	.value	0xa97
	.long	0x2eb
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2a
	.long	.LASF49
	.byte	0x1
	.value	0xa97
	.long	0x2eb
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2a
	.long	.LASF50
	.byte	0x1
	.value	0xa97
	.long	0x2eb
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2d
	.long	.LBB27
	.long	.LBE27
	.uleb128 0x2b
	.string	"word_"
	.byte	0x1
	.value	0xa97
	.long	0x1cbd
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2d
	.long	.LBB28
	.long	.LBE28
	.uleb128 0x2b
	.string	"mask_"
	.byte	0x1
	.value	0xa97
	.long	0x1cbd
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x31
	.string	"free_modify_mem_tables"
	.byte	0x1
	.value	0xaa1
	.byte	0x1
	.long	.LFB60
	.long	.LFE60
	.long	.LLST45
	.uleb128 0x31
	.string	"reset_opr_set_tables"
	.byte	0x1
	.value	0xaae
	.byte	0x1
	.long	.LFB61
	.long	.LFE61
	.long	.LLST46
	.uleb128 0x2f
	.long	0x4c2d
	.string	"oprs_not_set_p"
	.byte	0x1
	.value	0xabf
	.byte	0x1
	.long	0x212
	.long	.LFB62
	.long	.LFE62
	.long	.LLST47
	.uleb128 0x29
	.string	"x"
	.byte	0x1
	.value	0xabe
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LASF27
	.byte	0x1
	.value	0xabe
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0xac0
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2b
	.string	"j"
	.byte	0x1
	.value	0xac0
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2a
	.long	.LASF0
	.byte	0x1
	.value	0xac1
	.long	0xa41
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2b
	.string	"fmt"
	.byte	0x1
	.value	0xac2
	.long	0x1ff
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2e
	.long	0x4c5c
	.string	"mark_call"
	.byte	0x1
	.value	0xaff
	.byte	0x1
	.long	.LFB63
	.long	.LFE63
	.long	.LLST48
	.uleb128 0x30
	.long	.LASF27
	.byte	0x1
	.value	0xafe
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x2e
	.long	0x4ca8
	.string	"mark_set"
	.byte	0x1
	.value	0xb09
	.byte	0x1
	.long	.LFB64
	.long	.LFE64
	.long	.LLST49
	.uleb128 0x29
	.string	"pat"
	.byte	0x1
	.value	0xb08
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LASF27
	.byte	0x1
	.value	0xb08
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2a
	.long	.LASF14
	.byte	0x1
	.value	0xb0a
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2e
	.long	0x4cf9
	.string	"mark_clobber"
	.byte	0x1
	.value	0xb20
	.byte	0x1
	.long	.LFB65
	.long	.LFE65
	.long	.LLST50
	.uleb128 0x29
	.string	"pat"
	.byte	0x1
	.value	0xb1f
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LASF27
	.byte	0x1
	.value	0xb1f
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2b
	.string	"clob"
	.byte	0x1
	.value	0xb21
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2e
	.long	0x4d5f
	.string	"mark_oprs_set"
	.byte	0x1
	.value	0xb32
	.byte	0x1
	.long	.LFB66
	.long	.LFE66
	.long	.LLST51
	.uleb128 0x30
	.long	.LASF27
	.byte	0x1
	.value	0xb31
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2b
	.string	"pat"
	.byte	0x1
	.value	0xb33
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0xb34
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x2d
	.long	.LBB29
	.long	.LBE29
	.uleb128 0x2b
	.string	"x"
	.byte	0x1
	.value	0xb3b
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
	.long	0x4da4
	.string	"alloc_rd_mem"
	.byte	0x1
	.value	0xb53
	.byte	0x1
	.long	.LFB67
	.long	.LFE67
	.long	.LLST52
	.uleb128 0x30
	.long	.LASF51
	.byte	0x1
	.value	0xb52
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x29
	.string	"n_insns"
	.byte	0x1
	.value	0xb52
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x31
	.string	"free_rd_mem"
	.byte	0x1
	.value	0xb65
	.byte	0x1
	.long	.LFB68
	.long	.LFE68
	.long	.LLST53
	.uleb128 0x2e
	.long	0x4e25
	.string	"handle_rd_kill_set"
	.byte	0x1
	.value	0xb73
	.byte	0x1
	.long	.LFB69
	.long	.LFE69
	.long	.LLST54
	.uleb128 0x30
	.long	.LASF27
	.byte	0x1
	.value	0xb70
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LASF33
	.byte	0x1
	.value	0xb71
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x29
	.string	"bb"
	.byte	0x1
	.value	0xb72
	.long	0x2122
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2a
	.long	.LASF52
	.byte	0x1
	.value	0xb74
	.long	0x33f1
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x2e
	.long	0x4ec6
	.string	"compute_kill_rd"
	.byte	0x1
	.value	0xb7f
	.byte	0x1
	.long	.LFB70
	.long	.LFE70
	.long	.LLST55
	.uleb128 0x2b
	.string	"cuid"
	.byte	0x1
	.value	0xb80
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2a
	.long	.LASF33
	.byte	0x1
	.value	0xb81
	.long	0x2eb
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0xb82
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.string	"bb"
	.byte	0x1
	.value	0xb83
	.long	0x2122
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2d
	.long	.LBB30
	.long	.LBE30
	.uleb128 0x2a
	.long	.LASF27
	.byte	0x1
	.value	0xb91
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.string	"pat"
	.byte	0x1
	.value	0xb92
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2d
	.long	.LBB31
	.long	.LBE31
	.uleb128 0x2a
	.long	.LASF0
	.byte	0x1
	.value	0xb9f
	.long	0xa41
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
	.long	0x4f16
	.string	"compute_rd"
	.byte	0x1
	.value	0xbb6
	.byte	0x1
	.long	.LFB71
	.long	.LFE71
	.long	.LLST56
	.uleb128 0x2a
	.long	.LASF32
	.byte	0x1
	.value	0xbb7
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.string	"passes"
	.byte	0x1
	.value	0xbb7
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2b
	.string	"bb"
	.byte	0x1
	.value	0xbb8
	.long	0x2122
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x2e
	.long	0x4f5f
	.string	"alloc_avail_expr_mem"
	.byte	0x1
	.value	0xbd6
	.byte	0x1
	.long	.LFB72
	.long	.LFE72
	.long	.LLST57
	.uleb128 0x30
	.long	.LASF51
	.byte	0x1
	.value	0xbd5
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LASF53
	.byte	0x1
	.value	0xbd5
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x31
	.string	"free_avail_expr_mem"
	.byte	0x1
	.value	0xbe6
	.byte	0x1
	.long	.LFB73
	.long	.LFE73
	.long	.LLST58
	.uleb128 0x2e
	.long	0x4fe3
	.string	"compute_ae_gen"
	.byte	0x1
	.value	0xbf2
	.byte	0x1
	.long	.LFB74
	.long	.LFE74
	.long	.LLST59
	.uleb128 0x30
	.long	.LASF54
	.byte	0x1
	.value	0xbf1
	.long	0x3968
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0xbf3
	.long	0x2eb
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2a
	.long	.LASF5
	.byte	0x1
	.value	0xbf4
	.long	0x3303
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2a
	.long	.LASF26
	.byte	0x1
	.value	0xbf5
	.long	0x335e
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x2f
	.long	0x505e
	.string	"expr_killed_p"
	.byte	0x1
	.value	0xc07
	.byte	0x1
	.long	0x212
	.long	.LFB75
	.long	.LFE75
	.long	.LLST60
	.uleb128 0x29
	.string	"x"
	.byte	0x1
	.value	0xc05
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x29
	.string	"bb"
	.byte	0x1
	.value	0xc06
	.long	0x2122
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0xc08
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2b
	.string	"j"
	.byte	0x1
	.value	0xc08
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2a
	.long	.LASF0
	.byte	0x1
	.value	0xc09
	.long	0xa41
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2b
	.string	"fmt"
	.byte	0x1
	.value	0xc0a
	.long	0x1ff
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x2e
	.long	0x50e2
	.string	"compute_ae_kill"
	.byte	0x1
	.value	0xc46
	.byte	0x1
	.long	.LFB76
	.long	.LFE76
	.long	.LLST61
	.uleb128 0x29
	.string	"ae_gen"
	.byte	0x1
	.value	0xc44
	.long	0x3529
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x29
	.string	"ae_kill"
	.byte	0x1
	.value	0xc44
	.long	0x3529
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x30
	.long	.LASF54
	.byte	0x1
	.value	0xc45
	.long	0x3968
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2b
	.string	"bb"
	.byte	0x1
	.value	0xc47
	.long	0x2122
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0xc48
	.long	0x2eb
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2a
	.long	.LASF5
	.byte	0x1
	.value	0xc49
	.long	0x3303
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x2f
	.long	0x5188
	.string	"expr_reaches_here_p_work"
	.byte	0x1
	.value	0xc71
	.byte	0x1
	.long	0x212
	.long	.LFB77
	.long	.LFE77
	.long	.LLST62
	.uleb128 0x30
	.long	.LASF26
	.byte	0x1
	.value	0xc6c
	.long	0x335e
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LASF5
	.byte	0x1
	.value	0xc6d
	.long	0x3303
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x29
	.string	"bb"
	.byte	0x1
	.value	0xc6e
	.long	0x2122
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x30
	.long	.LASF55
	.byte	0x1
	.value	0xc6f
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x30
	.long	.LASF56
	.byte	0x1
	.value	0xc70
	.long	0x3f0
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x2b
	.string	"pred"
	.byte	0x1
	.value	0xc72
	.long	0x1ea3
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2d
	.long	.LBB32
	.long	.LBE32
	.uleb128 0x2a
	.long	.LASF57
	.byte	0x1
	.value	0xc76
	.long	0x2122
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
	.long	0x5210
	.string	"expr_reaches_here_p"
	.byte	0x1
	.value	0xcae
	.byte	0x1
	.long	0x212
	.long	.LFB78
	.long	.LFE78
	.long	.LLST63
	.uleb128 0x30
	.long	.LASF26
	.byte	0x1
	.value	0xcaa
	.long	0x335e
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LASF5
	.byte	0x1
	.value	0xcab
	.long	0x3303
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x29
	.string	"bb"
	.byte	0x1
	.value	0xcac
	.long	0x2122
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x30
	.long	.LASF55
	.byte	0x1
	.value	0xcad
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x2b
	.string	"rval"
	.byte	0x1
	.value	0xcaf
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2a
	.long	.LASF56
	.byte	0x1
	.value	0xcb0
	.long	0x3f0
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2f
	.long	0x52b6
	.string	"computing_insn"
	.byte	0x1
	.value	0xcc1
	.byte	0x1
	.long	0x99
	.long	.LFB79
	.long	.LFE79
	.long	.LLST64
	.uleb128 0x30
	.long	.LASF5
	.byte	0x1
	.value	0xcbf
	.long	0x3303
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LASF27
	.byte	0x1
	.value	0xcc0
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2b
	.string	"bb"
	.byte	0x1
	.value	0xcc2
	.long	0x2122
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2c
	.long	0x52a5
	.long	.LBB33
	.long	.LBE33
	.uleb128 0x2a
	.long	.LASF26
	.byte	0x1
	.value	0xcd4
	.long	0x335e
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2a
	.long	.LASF58
	.byte	0x1
	.value	0xcd5
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2b
	.string	"can_reach"
	.byte	0x1
	.value	0xcd6
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x33
	.long	.LASF41
	.long	0x7cee
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.14961
	.byte	0x0
	.uleb128 0x2f
	.long	0x5325
	.string	"def_reaches_here_p"
	.byte	0x1
	.value	0xd01
	.byte	0x1
	.long	0x212
	.long	.LFB80
	.long	.LFE80
	.long	.LLST65
	.uleb128 0x30
	.long	.LASF27
	.byte	0x1
	.value	0xd00
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x29
	.string	"def_insn"
	.byte	0x1
	.value	0xd00
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2b
	.string	"reg"
	.byte	0x1
	.value	0xd02
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x33
	.long	.LASF41
	.long	0x7ce9
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.15013
	.byte	0x0
	.uleb128 0x2f
	.long	0x53c9
	.string	"can_disregard_other_sets"
	.byte	0x1
	.value	0xd28
	.byte	0x1
	.long	0x212
	.long	.LFB81
	.long	.LFE81
	.long	.LLST66
	.uleb128 0x29
	.string	"addr_this_reg"
	.byte	0x1
	.value	0xd25
	.long	0x53c9
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LASF27
	.byte	0x1
	.value	0xd26
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x29
	.string	"for_combine"
	.byte	0x1
	.value	0xd27
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2b
	.string	"number_of_reaching_defs"
	.byte	0x1
	.value	0xd29
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2a
	.long	.LASF52
	.byte	0x1
	.value	0xd2a
	.long	0x33f1
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x33f1
	.uleb128 0x2f
	.long	0x550a
	.string	"handle_avail_expr"
	.byte	0x1
	.value	0xd57
	.byte	0x1
	.long	0x212
	.long	.LFB82
	.long	.LFE82
	.long	.LLST67
	.uleb128 0x30
	.long	.LASF27
	.byte	0x1
	.value	0xd55
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LASF5
	.byte	0x1
	.value	0xd56
	.long	0x3303
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2b
	.string	"pat"
	.byte	0x1
	.value	0xd58
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2a
	.long	.LASF58
	.byte	0x1
	.value	0xd58
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2b
	.string	"expr_set"
	.byte	0x1
	.value	0xd58
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2b
	.string	"to"
	.byte	0x1
	.value	0xd59
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.long	.LASF52
	.byte	0x1
	.value	0xd5a
	.long	0x33f1
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2b
	.string	"found_setting"
	.byte	0x1
	.value	0xd5b
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2b
	.string	"use_src"
	.byte	0x1
	.value	0xd5b
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2a
	.long	.LASF32
	.byte	0x1
	.value	0xd5c
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2c
	.long	0x54bf
	.long	.LBB34
	.long	.LBE34
	.uleb128 0x2a
	.long	.LASF59
	.byte	0x1
	.value	0xd71
	.long	0x2eb
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x2c
	.long	0x54dc
	.long	.LBB35
	.long	.LBE35
	.uleb128 0x2a
	.long	.LASF59
	.byte	0x1
	.value	0xd84
	.long	0x2eb
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x2c
	.long	0x54f9
	.long	.LBB36
	.long	.LBE36
	.uleb128 0x2a
	.long	.LASF60
	.byte	0x1
	.value	0xdb4
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x33
	.long	.LASF41
	.long	0x7ce4
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.15149
	.byte	0x0
	.uleb128 0x2f
	.long	0x5594
	.string	"classic_gcse"
	.byte	0x1
	.value	0xdf3
	.byte	0x1
	.long	0x212
	.long	.LFB83
	.long	.LFE83
	.long	.LLST68
	.uleb128 0x2a
	.long	.LASF32
	.byte	0x1
	.value	0xdf4
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2a
	.long	.LASF27
	.byte	0x1
	.value	0xdf5
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.string	"bb"
	.byte	0x1
	.value	0xdf6
	.long	0x2122
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2d
	.long	.LBB37
	.long	.LBE37
	.uleb128 0x2b
	.string	"pat"
	.byte	0x1
	.value	0xe0e
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.string	"src"
	.byte	0x1
	.value	0xe0f
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2a
	.long	.LASF5
	.byte	0x1
	.value	0xe10
	.long	0x3303
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
	.long	0x55e3
	.string	"one_classic_gcse_pass"
	.byte	0x1
	.value	0xe2f
	.byte	0x1
	.long	0x212
	.long	.LFB84
	.long	.LFE84
	.long	.LLST69
	.uleb128 0x29
	.string	"pass"
	.byte	0x1
	.value	0xe2e
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2a
	.long	.LASF32
	.byte	0x1
	.value	0xe30
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x2e
	.long	0x562a
	.string	"alloc_cprop_mem"
	.byte	0x1
	.value	0xe65
	.byte	0x1
	.long	.LFB85
	.long	.LFE85
	.long	.LLST70
	.uleb128 0x30
	.long	.LASF51
	.byte	0x1
	.value	0xe64
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x29
	.string	"n_sets"
	.byte	0x1
	.value	0xe64
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x31
	.string	"free_cprop_mem"
	.byte	0x1
	.value	0xe71
	.byte	0x1
	.long	.LFB86
	.long	.LFE86
	.long	.LLST71
	.uleb128 0x2e
	.long	0x574c
	.string	"compute_transp"
	.byte	0x1
	.value	0xe84
	.byte	0x1
	.long	.LFB87
	.long	.LFE87
	.long	.LLST72
	.uleb128 0x29
	.string	"x"
	.byte	0x1
	.value	0xe80
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LASF9
	.byte	0x1
	.value	0xe81
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x29
	.string	"bmap"
	.byte	0x1
	.value	0xe82
	.long	0x3529
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x29
	.string	"set_p"
	.byte	0x1
	.value	0xe83
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0xe85
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2b
	.string	"j"
	.byte	0x1
	.value	0xe85
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2b
	.string	"bb"
	.byte	0x1
	.value	0xe86
	.long	0x2122
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2a
	.long	.LASF0
	.byte	0x1
	.value	0xe87
	.long	0xa41
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2b
	.string	"r"
	.byte	0x1
	.value	0xe88
	.long	0x574c
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2b
	.string	"fmt"
	.byte	0x1
	.value	0xe89
	.long	0x1ff
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x32
	.long	.LASF61
	.byte	0x1
	.value	0xedb
	.long	.L1035
	.uleb128 0x2d
	.long	.LBB38
	.long	.LBE38
	.uleb128 0x2a
	.long	.LASF37
	.byte	0x1
	.value	0xeb8
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2d
	.long	.LBB39
	.long	.LBE39
	.uleb128 0x2a
	.long	.LASF14
	.byte	0x1
	.value	0xebc
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2a
	.long	.LASF47
	.byte	0x1
	.value	0xebc
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x33f7
	.uleb128 0x31
	.string	"compute_cprop_data"
	.byte	0x1
	.value	0xf07
	.byte	0x1
	.long	.LFB88
	.long	.LFE88
	.long	.LLST73
	.uleb128 0x2e
	.long	0x580b
	.string	"find_used_regs"
	.byte	0x1
	.value	0xf24
	.byte	0x1
	.long	.LFB89
	.long	.LFE89
	.long	.LLST74
	.uleb128 0x29
	.string	"xptr"
	.byte	0x1
	.value	0xf22
	.long	0x16bd
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LASF13
	.byte	0x1
	.value	0xf23
	.long	0x3ee
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0xf25
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.string	"j"
	.byte	0x1
	.value	0xf25
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2a
	.long	.LASF0
	.byte	0x1
	.value	0xf26
	.long	0xa41
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.string	"fmt"
	.byte	0x1
	.value	0xf27
	.long	0x1ff
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2b
	.string	"x"
	.byte	0x1
	.value	0xf28
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x32
	.long	.LASF61
	.byte	0x1
	.value	0xf46
	.long	.L1105
	.byte	0x0
	.uleb128 0x2f
	.long	0x58a2
	.string	"try_replace_reg"
	.byte	0x1
	.value	0xf57
	.byte	0x1
	.long	0x212
	.long	.LFB90
	.long	.LFE90
	.long	.LLST75
	.uleb128 0x29
	.string	"from"
	.byte	0x1
	.value	0xf56
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x29
	.string	"to"
	.byte	0x1
	.value	0xf56
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x30
	.long	.LASF27
	.byte	0x1
	.value	0xf56
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2a
	.long	.LASF45
	.byte	0x1
	.value	0xf58
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2b
	.string	"src"
	.byte	0x1
	.value	0xf59
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.string	"success"
	.byte	0x1
	.value	0xf5a
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2b
	.string	"set"
	.byte	0x1
	.value	0xf5b
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2f
	.long	0x5935
	.string	"find_avail_set"
	.byte	0x1
	.value	0xf94
	.byte	0x1
	.long	0x3303
	.long	.LFB91
	.long	.LFE91
	.long	.LLST76
	.uleb128 0x30
	.long	.LASF33
	.byte	0x1
	.value	0xf92
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LASF27
	.byte	0x1
	.value	0xf93
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2b
	.string	"set1"
	.byte	0x1
	.value	0xf97
	.long	0x3303
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2c
	.long	0x5924
	.long	.LBB40
	.long	.LBE40
	.uleb128 0x2b
	.string	"src"
	.byte	0x1
	.value	0xfa4
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2b
	.string	"set"
	.byte	0x1
	.value	0xfa5
	.long	0x3303
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x33
	.long	.LASF41
	.long	0x7ccf
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.15937
	.byte	0x0
	.uleb128 0x2f
	.long	0x59f8
	.string	"cprop_jump"
	.byte	0x1
	.value	0xfe1
	.byte	0x1
	.long	0x212
	.long	.LFB92
	.long	.LFE92
	.long	.LLST77
	.uleb128 0x29
	.string	"bb"
	.byte	0x1
	.value	0xfdc
	.long	0x2122
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x29
	.string	"setcc"
	.byte	0x1
	.value	0xfdd
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x29
	.string	"jump"
	.byte	0x1
	.value	0xfde
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x29
	.string	"from"
	.byte	0x1
	.value	0xfdf
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x29
	.string	"src"
	.byte	0x1
	.value	0xfe0
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x2b
	.string	"new"
	.byte	0x1
	.value	0xfe2
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2b
	.string	"new_set"
	.byte	0x1
	.value	0xfe2
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.string	"set"
	.byte	0x1
	.value	0xfe3
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2d
	.long	.LBB41
	.long	.LBE41
	.uleb128 0x2b
	.string	"setcc_set"
	.byte	0x1
	.value	0xfeb
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
	.long	0x5a8a
	.string	"constprop_register"
	.byte	0x1
	.value	0x102a
	.byte	0x1
	.long	0x219d
	.long	.LFB93
	.long	.LFE93
	.long	.LLST78
	.uleb128 0x30
	.long	.LASF27
	.byte	0x1
	.value	0x1026
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x29
	.string	"from"
	.byte	0x1
	.value	0x1027
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x29
	.string	"to"
	.byte	0x1
	.value	0x1028
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x30
	.long	.LASF62
	.byte	0x1
	.value	0x1029
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x2b
	.string	"sset"
	.byte	0x1
	.value	0x102b
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2d
	.long	.LBB42
	.long	.LBE42
	.uleb128 0x2a
	.long	.LASF14
	.byte	0x1
	.value	0x1034
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
	.long	0x5b54
	.string	"cprop_insn"
	.byte	0x1
	.value	0x1051
	.byte	0x1
	.long	0x212
	.long	.LFB94
	.long	.LFE94
	.long	.LLST79
	.uleb128 0x30
	.long	.LASF27
	.byte	0x1
	.value	0x104f
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LASF62
	.byte	0x1
	.value	0x1050
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2a
	.long	.LASF63
	.byte	0x1
	.value	0x1052
	.long	0x5b54
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.long	.LASF32
	.byte	0x1
	.value	0x1053
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2a
	.long	.LASF45
	.byte	0x1
	.value	0x1054
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2c
	.long	0x5b43
	.long	.LBB43
	.long	.LBE43
	.uleb128 0x2a
	.long	.LASF33
	.byte	0x1
	.value	0x1065
	.long	0x2eb
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2b
	.string	"pat"
	.byte	0x1
	.value	0x1066
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.string	"src"
	.byte	0x1
	.value	0x1066
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2b
	.string	"set"
	.byte	0x1
	.value	0x1067
	.long	0x3303
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x33
	.long	.LASF41
	.long	0x7cca
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.16140
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x3262
	.uleb128 0x2e
	.long	0x5bb7
	.string	"local_cprop_find_used_regs"
	.byte	0x1
	.value	0x10b4
	.byte	0x1
	.long	.LFB95
	.long	.LFE95
	.long	.LLST80
	.uleb128 0x29
	.string	"xptr"
	.byte	0x1
	.value	0x10b2
	.long	0x16bd
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LASF13
	.byte	0x1
	.value	0x10b3
	.long	0x3ee
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2b
	.string	"x"
	.byte	0x1
	.value	0x10b5
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2f
	.long	0x5ca6
	.string	"do_local_cprop"
	.byte	0x1
	.value	0x10e3
	.byte	0x1
	.long	0x219d
	.long	.LFB96
	.long	.LFE96
	.long	.LLST81
	.uleb128 0x29
	.string	"x"
	.byte	0x1
	.value	0x10df
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LASF27
	.byte	0x1
	.value	0x10e0
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x30
	.long	.LASF62
	.byte	0x1
	.value	0x10e1
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x30
	.long	.LASF64
	.byte	0x1
	.value	0x10e2
	.long	0x16bd
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x2b
	.string	"newreg"
	.byte	0x1
	.value	0x10e4
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2b
	.string	"newcnst"
	.byte	0x1
	.value	0x10e4
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2c
	.long	0x5c95
	.long	.LBB44
	.long	.LBE44
	.uleb128 0x2b
	.string	"val"
	.byte	0x1
	.value	0x10ed
	.long	0x31da
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2b
	.string	"l"
	.byte	0x1
	.value	0x10ee
	.long	0x31c2
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2d
	.long	.LBB45
	.long	.LBE45
	.uleb128 0x2b
	.string	"this_rtx"
	.byte	0x1
	.value	0x10f4
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2a
	.long	.LASF45
	.byte	0x1
	.value	0x10f5
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x33
	.long	.LASF41
	.long	0x7cc5
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.16275
	.byte	0x0
	.uleb128 0x2f
	.long	0x5d3f
	.string	"adjust_libcall_notes"
	.byte	0x1
	.value	0x1133
	.byte	0x1
	.long	0x219d
	.long	.LFB97
	.long	.LFE97
	.long	.LLST82
	.uleb128 0x29
	.string	"oldreg"
	.byte	0x1
	.value	0x1132
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x29
	.string	"newval"
	.byte	0x1
	.value	0x1132
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x30
	.long	.LASF27
	.byte	0x1
	.value	0x1132
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x30
	.long	.LASF64
	.byte	0x1
	.value	0x1132
	.long	0x16bd
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x2b
	.string	"end"
	.byte	0x1
	.value	0x1134
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2d
	.long	.LBB46
	.long	.LBE46
	.uleb128 0x2a
	.long	.LASF45
	.byte	0x1
	.value	0x1138
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
	.long	0x5df8
	.string	"local_cprop_pass"
	.byte	0x1
	.value	0x1158
	.byte	0x1
	.long	.LFB98
	.long	.LFE98
	.long	.LLST83
	.uleb128 0x30
	.long	.LASF62
	.byte	0x1
	.value	0x1157
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2a
	.long	.LASF27
	.byte	0x1
	.value	0x1159
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2a
	.long	.LASF63
	.byte	0x1
	.value	0x115a
	.long	0x5b54
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2b
	.string	"libcall_stack"
	.byte	0x1
	.value	0x115b
	.long	0x5df8
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2a
	.long	.LASF64
	.byte	0x1
	.value	0x115b
	.long	0x16bd
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2a
	.long	.LASF32
	.byte	0x1
	.value	0x115c
	.long	0x219d
	.byte	0x2
	.byte	0x91
	.sleb128 -13
	.uleb128 0x2c
	.long	0x5de7
	.long	.LBB47
	.long	.LBE47
	.uleb128 0x2a
	.long	.LASF45
	.byte	0x1
	.value	0x1165
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x33
	.long	.LASF41
	.long	0x7cb0
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.16408
	.byte	0x0
	.uleb128 0xe
	.long	0x5e08
	.long	0x99
	.uleb128 0xf
	.long	0x302
	.byte	0x9
	.byte	0x0
	.uleb128 0x2f
	.long	0x5e63
	.string	"cprop"
	.byte	0x1
	.value	0x1196
	.byte	0x1
	.long	0x212
	.long	.LFB99
	.long	.LFE99
	.long	.LLST84
	.uleb128 0x30
	.long	.LASF62
	.byte	0x1
	.value	0x1195
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2a
	.long	.LASF32
	.byte	0x1
	.value	0x1197
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.string	"bb"
	.byte	0x1
	.value	0x1198
	.long	0x2122
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2a
	.long	.LASF27
	.byte	0x1
	.value	0x1199
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2f
	.long	0x5eba
	.string	"one_cprop_pass"
	.byte	0x1
	.value	0x11c7
	.byte	0x1
	.long	0x212
	.long	.LFB100
	.long	.LFE100
	.long	.LLST85
	.uleb128 0x29
	.string	"pass"
	.byte	0x1
	.value	0x11c5
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LASF62
	.byte	0x1
	.value	0x11c6
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2a
	.long	.LASF32
	.byte	0x1
	.value	0x11c8
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x2f
	.long	0x5f4f
	.string	"find_bypass_set"
	.byte	0x1
	.value	0x11f7
	.byte	0x1
	.long	0x3303
	.long	.LFB101
	.long	.LFE101
	.long	.LLST86
	.uleb128 0x30
	.long	.LASF33
	.byte	0x1
	.value	0x11f5
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x29
	.string	"bb"
	.byte	0x1
	.value	0x11f6
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2b
	.string	"result"
	.byte	0x1
	.value	0x11f8
	.long	0x3303
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2c
	.long	0x5f3e
	.long	.LBB48
	.long	.LBE48
	.uleb128 0x2b
	.string	"src"
	.byte	0x1
	.value	0x11fc
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2b
	.string	"set"
	.byte	0x1
	.value	0x11fd
	.long	0x3303
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x33
	.long	.LASF41
	.long	0x7c9b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.16538
	.byte	0x0
	.uleb128 0x2f
	.long	0x5fa7
	.string	"reg_killed_on_edge"
	.byte	0x1
	.value	0x1223
	.byte	0x1
	.long	0x219d
	.long	.LFB102
	.long	.LFE102
	.long	.LLST87
	.uleb128 0x29
	.string	"reg"
	.byte	0x1
	.value	0x1221
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x29
	.string	"e"
	.byte	0x1
	.value	0x1222
	.long	0x1ea3
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2a
	.long	.LASF27
	.byte	0x1
	.value	0x1224
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2f
	.long	0x60fd
	.string	"bypass_block"
	.byte	0x1
	.value	0x123b
	.byte	0x1
	.long	0x212
	.long	.LFB103
	.long	.LFE103
	.long	.LLST88
	.uleb128 0x29
	.string	"bb"
	.byte	0x1
	.value	0x1239
	.long	0x2122
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x29
	.string	"setcc"
	.byte	0x1
	.value	0x123a
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x29
	.string	"jump"
	.byte	0x1
	.value	0x123a
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2a
	.long	.LASF27
	.byte	0x1
	.value	0x123c
	.long	0x99
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2a
	.long	.LASF45
	.byte	0x1
	.value	0x123c
	.long	0x99
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2b
	.string	"e"
	.byte	0x1
	.value	0x123d
	.long	0x1ea3
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2b
	.string	"enext"
	.byte	0x1
	.value	0x123d
	.long	0x1ea3
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2b
	.string	"edest"
	.byte	0x1
	.value	0x123d
	.long	0x1ea3
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x123e
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2b
	.string	"change"
	.byte	0x1
	.value	0x123e
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2d
	.long	.LBB49
	.long	.LBE49
	.uleb128 0x2a
	.long	.LASF63
	.byte	0x1
	.value	0x124f
	.long	0x5b54
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2a
	.long	.LASF33
	.byte	0x1
	.value	0x1250
	.long	0x2eb
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2a
	.long	.LASF14
	.byte	0x1
	.value	0x1251
	.long	0x2122
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.string	"old_dest"
	.byte	0x1
	.value	0x1251
	.long	0x2122
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2b
	.string	"set"
	.byte	0x1
	.value	0x1252
	.long	0x3303
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.string	"src"
	.byte	0x1
	.value	0x1253
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2b
	.string	"new"
	.byte	0x1
	.value	0x1253
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2d
	.long	.LBB50
	.long	.LBE50
	.uleb128 0x2b
	.string	"pat"
	.byte	0x1
	.value	0x128d
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
	.long	0x617c
	.string	"bypass_conditional_jumps"
	.byte	0x1
	.value	0x12a9
	.byte	0x1
	.long	0x212
	.long	.LFB104
	.long	.LFE104
	.long	.LLST89
	.uleb128 0x2b
	.string	"bb"
	.byte	0x1
	.value	0x12aa
	.long	0x2122
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2a
	.long	.LASF32
	.byte	0x1
	.value	0x12ab
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2b
	.string	"setcc"
	.byte	0x1
	.value	0x12ac
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2a
	.long	.LASF27
	.byte	0x1
	.value	0x12ad
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2a
	.long	.LASF14
	.byte	0x1
	.value	0x12ae
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2e
	.long	0x61be
	.string	"alloc_pre_mem"
	.byte	0x1
	.value	0x1308
	.byte	0x1
	.long	.LFB105
	.long	.LFE105
	.long	.LLST90
	.uleb128 0x30
	.long	.LASF51
	.byte	0x1
	.value	0x1307
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LASF53
	.byte	0x1
	.value	0x1307
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x31
	.string	"free_pre_mem"
	.byte	0x1
	.value	0x131c
	.byte	0x1
	.long	.LFB106
	.long	.LFE106
	.long	.LLST91
	.uleb128 0x2e
	.long	0x626a
	.string	"compute_pre_data"
	.byte	0x1
	.value	0x1338
	.byte	0x1
	.long	.LFB107
	.long	.LFE107
	.long	.LLST92
	.uleb128 0x2b
	.string	"trapping_expr"
	.byte	0x1
	.value	0x1339
	.long	0x1dbf
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2b
	.string	"bb"
	.byte	0x1
	.value	0x133a
	.long	0x2122
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.string	"ui"
	.byte	0x1
	.value	0x133b
	.long	0x2eb
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2c
	.long	0x6252
	.long	.LBB51
	.long	.LBE51
	.uleb128 0x2b
	.string	"e"
	.byte	0x1
	.value	0x1345
	.long	0x3303
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x2d
	.long	.LBB52
	.long	.LBE52
	.uleb128 0x2b
	.string	"e"
	.byte	0x1
	.value	0x1353
	.long	0x1ea3
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
	.long	0x6309
	.string	"pre_expr_reaches_here_p_work"
	.byte	0x1
	.value	0x1383
	.byte	0x1
	.long	0x212
	.long	.LFB108
	.long	.LFE108
	.long	.LLST93
	.uleb128 0x29
	.string	"occr_bb"
	.byte	0x1
	.value	0x137f
	.long	0x2122
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LASF5
	.byte	0x1
	.value	0x1380
	.long	0x3303
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x29
	.string	"bb"
	.byte	0x1
	.value	0x1381
	.long	0x2122
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x30
	.long	.LASF56
	.byte	0x1
	.value	0x1382
	.long	0x3f0
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x2b
	.string	"pred"
	.byte	0x1
	.value	0x1384
	.long	0x1ea3
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2d
	.long	.LBB53
	.long	.LBE53
	.uleb128 0x2a
	.long	.LASF57
	.byte	0x1
	.value	0x1388
	.long	0x2122
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
	.long	0x638a
	.string	"pre_expr_reaches_here_p"
	.byte	0x1
	.value	0x13b3
	.byte	0x1
	.long	0x212
	.long	.LFB109
	.long	.LFE109
	.long	.LLST94
	.uleb128 0x29
	.string	"occr_bb"
	.byte	0x1
	.value	0x13b0
	.long	0x2122
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LASF5
	.byte	0x1
	.value	0x13b1
	.long	0x3303
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x29
	.string	"bb"
	.byte	0x1
	.value	0x13b2
	.long	0x2122
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2b
	.string	"rval"
	.byte	0x1
	.value	0x13b4
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2a
	.long	.LASF56
	.byte	0x1
	.value	0x13b5
	.long	0x3f0
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2f
	.long	0x6404
	.string	"process_insert_insn"
	.byte	0x1
	.value	0x13c5
	.byte	0x1
	.long	0x99
	.long	.LFB110
	.long	.LFE110
	.long	.LLST95
	.uleb128 0x30
	.long	.LASF5
	.byte	0x1
	.value	0x13c4
	.long	0x3303
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2b
	.string	"reg"
	.byte	0x1
	.value	0x13c6
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.string	"exp"
	.byte	0x1
	.value	0x13c7
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2b
	.string	"pat"
	.byte	0x1
	.value	0x13c8
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x33
	.long	.LASF41
	.long	0x7c86
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.17066
	.byte	0x0
	.uleb128 0x2e
	.long	0x64c7
	.string	"insert_insn_end_bb"
	.byte	0x1
	.value	0x13ea
	.byte	0x1
	.long	.LFB111
	.long	.LFE111
	.long	.LLST96
	.uleb128 0x30
	.long	.LASF5
	.byte	0x1
	.value	0x13e7
	.long	0x3303
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x29
	.string	"bb"
	.byte	0x1
	.value	0x13e8
	.long	0x2122
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x29
	.string	"pre"
	.byte	0x1
	.value	0x13e9
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2a
	.long	.LASF27
	.byte	0x1
	.value	0x13eb
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2a
	.long	.LASF60
	.byte	0x1
	.value	0x13ec
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.string	"reg"
	.byte	0x1
	.value	0x13ed
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2a
	.long	.LASF33
	.byte	0x1
	.value	0x13ee
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.string	"pat"
	.byte	0x1
	.value	0x13ef
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2b
	.string	"pat_end"
	.byte	0x1
	.value	0x13ef
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x33
	.long	.LASF41
	.long	0x7c81
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.17094
	.byte	0x0
	.uleb128 0x2f
	.long	0x6612
	.string	"pre_edge_insert"
	.byte	0x1
	.value	0x146d
	.byte	0x1
	.long	0x212
	.long	.LFB112
	.long	.LFE112
	.long	.LLST97
	.uleb128 0x30
	.long	.LASF16
	.byte	0x1
	.value	0x146b
	.long	0x6612
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LASF65
	.byte	0x1
	.value	0x146c
	.long	0x33bb
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2b
	.string	"e"
	.byte	0x1
	.value	0x146e
	.long	0x212
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x146e
	.long	0x212
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2b
	.string	"j"
	.byte	0x1
	.value	0x146e
	.long	0x212
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2a
	.long	.LASF17
	.byte	0x1
	.value	0x146e
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2b
	.string	"set_size"
	.byte	0x1
	.value	0x146e
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2a
	.long	.LASF66
	.byte	0x1
	.value	0x146e
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2b
	.string	"inserted"
	.byte	0x1
	.value	0x146f
	.long	0x3529
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2d
	.long	.LBB54
	.long	.LBE54
	.uleb128 0x2a
	.long	.LASF9
	.byte	0x1
	.value	0x147b
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2b
	.string	"bb"
	.byte	0x1
	.value	0x147c
	.long	0x2122
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2d
	.long	.LBB55
	.long	.LBE55
	.uleb128 0x2b
	.string	"insert"
	.byte	0x1
	.value	0x1480
	.long	0x398
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2d
	.long	.LBB56
	.long	.LBE56
	.uleb128 0x2a
	.long	.LASF5
	.byte	0x1
	.value	0x1485
	.long	0x3303
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.long	.LASF26
	.byte	0x1
	.value	0x1486
	.long	0x335e
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2d
	.long	.LBB57
	.long	.LBE57
	.uleb128 0x2a
	.long	.LASF27
	.byte	0x1
	.value	0x1492
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.string	"eg"
	.byte	0x1
	.value	0x1493
	.long	0x1ea3
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x2151
	.uleb128 0x2e
	.long	0x66bc
	.string	"pre_insert_copy_insn"
	.byte	0x1
	.value	0x14c1
	.byte	0x1
	.long	.LFB113
	.long	.LFE113
	.long	.LLST98
	.uleb128 0x30
	.long	.LASF5
	.byte	0x1
	.value	0x14bf
	.long	0x3303
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LASF27
	.byte	0x1
	.value	0x14c0
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2b
	.string	"reg"
	.byte	0x1
	.value	0x14c2
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.long	.LASF33
	.byte	0x1
	.value	0x14c3
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2a
	.long	.LASF9
	.byte	0x1
	.value	0x14c4
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.string	"set"
	.byte	0x1
	.value	0x14c5
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2a
	.long	.LASF60
	.byte	0x1
	.value	0x14c6
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x33
	.long	.LASF41
	.long	0x7c6c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.17402
	.byte	0x0
	.uleb128 0x2e
	.long	0x6739
	.string	"pre_insert_copies"
	.byte	0x1
	.value	0x14df
	.byte	0x1
	.long	.LFB114
	.long	.LFE114
	.long	.LLST99
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x14e0
	.long	0x2eb
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.long	.LASF5
	.byte	0x1
	.value	0x14e1
	.long	0x3303
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2a
	.long	.LASF26
	.byte	0x1
	.value	0x14e2
	.long	0x335e
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.string	"avail"
	.byte	0x1
	.value	0x14e3
	.long	0x335e
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2d
	.long	.LBB58
	.long	.LBE58
	.uleb128 0x2a
	.long	.LASF27
	.byte	0x1
	.value	0x14fd
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
	.long	0x67e1
	.string	"gcse_emit_move_after"
	.byte	0x1
	.value	0x151a
	.byte	0x1
	.long	0x99
	.long	.LFB115
	.long	.LFE115
	.long	.LLST100
	.uleb128 0x29
	.string	"src"
	.byte	0x1
	.value	0x1519
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LASF14
	.byte	0x1
	.value	0x1519
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x30
	.long	.LASF27
	.byte	0x1
	.value	0x1519
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2b
	.string	"new"
	.byte	0x1
	.value	0x151b
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.string	"set"
	.byte	0x1
	.value	0x151c
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2b
	.string	"set2"
	.byte	0x1
	.value	0x151c
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2a
	.long	.LASF45
	.byte	0x1
	.value	0x151d
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2b
	.string	"eqv"
	.byte	0x1
	.value	0x151e
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2f
	.long	0x68a3
	.string	"pre_delete"
	.byte	0x1
	.value	0x153c
	.byte	0x1
	.long	0x212
	.long	.LFB116
	.long	.LFE116
	.long	.LLST101
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x153d
	.long	0x2eb
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2a
	.long	.LASF32
	.byte	0x1
	.value	0x153e
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2a
	.long	.LASF5
	.byte	0x1
	.value	0x153f
	.long	0x3303
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2a
	.long	.LASF26
	.byte	0x1
	.value	0x1540
	.long	0x335e
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2c
	.long	0x6892
	.long	.LBB59
	.long	.LBE59
	.uleb128 0x2a
	.long	.LASF9
	.byte	0x1
	.value	0x1546
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2d
	.long	.LBB60
	.long	.LBE60
	.uleb128 0x2a
	.long	.LASF27
	.byte	0x1
	.value	0x154d
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2b
	.string	"set"
	.byte	0x1
	.value	0x154e
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.string	"bb"
	.byte	0x1
	.value	0x154f
	.long	0x2122
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.uleb128 0x33
	.long	.LASF41
	.long	0x7c57
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.17560
	.byte	0x0
	.uleb128 0x2f
	.long	0x690f
	.string	"pre_gcse"
	.byte	0x1
	.value	0x158a
	.byte	0x1
	.long	0x212
	.long	.LFB117
	.long	.LFE117
	.long	.LLST102
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x158b
	.long	0x2eb
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2a
	.long	.LASF66
	.byte	0x1
	.value	0x158c
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2a
	.long	.LASF32
	.byte	0x1
	.value	0x158c
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2a
	.long	.LASF65
	.byte	0x1
	.value	0x158d
	.long	0x33bb
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2a
	.long	.LASF5
	.byte	0x1
	.value	0x158e
	.long	0x3303
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2f
	.long	0x695a
	.string	"one_pre_gcse_pass"
	.byte	0x1
	.value	0x15ba
	.byte	0x1
	.long	0x212
	.long	.LFB118
	.long	.LFE118
	.long	.LLST103
	.uleb128 0x29
	.string	"pass"
	.byte	0x1
	.value	0x15b9
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2a
	.long	.LASF32
	.byte	0x1
	.value	0x15bb
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x2e
	.long	0x69d4
	.string	"add_label_notes"
	.byte	0x1
	.value	0x15f2
	.byte	0x1
	.long	.LFB119
	.long	.LFE119
	.long	.LLST104
	.uleb128 0x29
	.string	"x"
	.byte	0x1
	.value	0x15f0
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LASF27
	.byte	0x1
	.value	0x15f1
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2a
	.long	.LASF0
	.byte	0x1
	.value	0x15f3
	.long	0xa41
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x15f4
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.string	"j"
	.byte	0x1
	.value	0x15f4
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2b
	.string	"fmt"
	.byte	0x1
	.value	0x15f5
	.long	0x1ff
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2e
	.long	0x6a26
	.string	"compute_transpout"
	.byte	0x1
	.value	0x161f
	.byte	0x1
	.long	.LFB120
	.long	.LFE120
	.long	.LLST105
	.uleb128 0x2b
	.string	"bb"
	.byte	0x1
	.value	0x1620
	.long	0x2122
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x1621
	.long	0x2eb
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2a
	.long	.LASF5
	.byte	0x1
	.value	0x1622
	.long	0x3303
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x2e
	.long	0x6a9d
	.string	"invalidate_nonnull_info"
	.byte	0x1
	.value	0x164b
	.byte	0x1
	.long	.LFB121
	.long	.LFE121
	.long	.LLST106
	.uleb128 0x29
	.string	"x"
	.byte	0x1
	.value	0x1648
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LASF34
	.byte	0x1
	.value	0x1649
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x30
	.long	.LASF13
	.byte	0x1
	.value	0x164a
	.long	0x3ee
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2a
	.long	.LASF33
	.byte	0x1
	.value	0x164c
	.long	0x2eb
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.string	"npi"
	.byte	0x1
	.value	0x164d
	.long	0x6a9d
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x34ba
	.uleb128 0x2f
	.long	0x6c31
	.string	"delete_null_pointer_checks_1"
	.byte	0x1
	.value	0x1669
	.byte	0x1
	.long	0x212
	.long	.LFB122
	.long	.LFE122
	.long	.LLST107
	.uleb128 0x30
	.long	.LASF67
	.byte	0x1
	.value	0x1665
	.long	0x457e
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LASF68
	.byte	0x1
	.value	0x1666
	.long	0x3529
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x30
	.long	.LASF69
	.byte	0x1
	.value	0x1667
	.long	0x3529
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x29
	.string	"npi"
	.byte	0x1
	.value	0x1668
	.long	0x6a9d
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x2b
	.string	"bb"
	.byte	0x1
	.value	0x166a
	.long	0x2122
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2a
	.long	.LASF29
	.byte	0x1
	.value	0x166a
	.long	0x2122
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2a
	.long	.LASF30
	.byte	0x1
	.value	0x166b
	.long	0x3529
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2a
	.long	.LASF31
	.byte	0x1
	.value	0x166c
	.long	0x3529
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2a
	.long	.LASF70
	.byte	0x1
	.value	0x166d
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2c
	.long	0x6bbc
	.long	.LBB61
	.long	.LBE61
	.uleb128 0x2a
	.long	.LASF27
	.byte	0x1
	.value	0x167c
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2b
	.string	"stop_insn"
	.byte	0x1
	.value	0x167c
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2d
	.long	.LBB62
	.long	.LBE62
	.uleb128 0x2b
	.string	"set"
	.byte	0x1
	.value	0x1688
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2b
	.string	"reg"
	.byte	0x1
	.value	0x1689
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.byte	0x0
	.byte	0x0
	.uleb128 0x2d
	.long	.LBB63
	.long	.LBE63
	.uleb128 0x2a
	.long	.LASF71
	.byte	0x1
	.value	0x16bb
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.long	.LASF72
	.byte	0x1
	.value	0x16bc
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2a
	.long	.LASF73
	.byte	0x1
	.value	0x16bc
	.long	0x99
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2b
	.string	"compare_and_branch"
	.byte	0x1
	.value	0x16bd
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2d
	.long	.LBB64
	.long	.LBE64
	.uleb128 0x2b
	.string	"new_jump"
	.byte	0x1
	.value	0x16de
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
	.long	0x6d4f
	.byte	0x1
	.string	"delete_null_pointer_checks"
	.byte	0x1
	.value	0x1711
	.byte	0x1
	.long	0x212
	.long	.LFB123
	.long	.LFE123
	.long	.LLST108
	.uleb128 0x29
	.string	"f"
	.byte	0x1
	.value	0x1710
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2a
	.long	.LASF68
	.byte	0x1
	.value	0x1712
	.long	0x3529
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2a
	.long	.LASF69
	.byte	0x1
	.value	0x1712
	.long	0x3529
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2a
	.long	.LASF67
	.byte	0x1
	.value	0x1713
	.long	0x457e
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2b
	.string	"bb"
	.byte	0x1
	.value	0x1714
	.long	0x2122
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2b
	.string	"reg"
	.byte	0x1
	.value	0x1715
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.string	"regs_per_pass"
	.byte	0x1
	.value	0x1716
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2b
	.string	"max_reg"
	.byte	0x1
	.value	0x1717
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.string	"npi"
	.byte	0x1
	.value	0x1718
	.long	0x34ba
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2a
	.long	.LASF70
	.byte	0x1
	.value	0x1719
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2d
	.long	.LBB65
	.long	.LBE65
	.uleb128 0x2a
	.long	.LASF71
	.byte	0x1
	.value	0x173b
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2a
	.long	.LASF72
	.byte	0x1
	.value	0x173c
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2a
	.long	.LASF73
	.byte	0x1
	.value	0x173c
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2b
	.string	"reg"
	.byte	0x1
	.value	0x173c
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
	.long	0x6d98
	.string	"alloc_code_hoist_mem"
	.byte	0x1
	.value	0x1787
	.byte	0x1
	.long	.LFB124
	.long	.LFE124
	.long	.LLST109
	.uleb128 0x30
	.long	.LASF51
	.byte	0x1
	.value	0x1786
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LASF53
	.byte	0x1
	.value	0x1786
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x31
	.string	"free_code_hoist_mem"
	.byte	0x1
	.value	0x1796
	.byte	0x1
	.long	.LFB125
	.long	.LFE125
	.long	.LLST110
	.uleb128 0x2e
	.long	0x6e1e
	.string	"compute_code_hoist_vbeinout"
	.byte	0x1
	.value	0x17aa
	.byte	0x1
	.long	.LFB126
	.long	.LFE126
	.long	.LLST111
	.uleb128 0x2a
	.long	.LASF32
	.byte	0x1
	.value	0x17ab
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.string	"passes"
	.byte	0x1
	.value	0x17ab
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2b
	.string	"bb"
	.byte	0x1
	.value	0x17ac
	.long	0x2122
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x31
	.string	"compute_code_hoist_data"
	.byte	0x1
	.value	0x17cd
	.byte	0x1
	.long	.LFB127
	.long	.LFE127
	.long	.LLST112
	.uleb128 0x2f
	.long	0x6f0f
	.string	"hoist_expr_reaches_here_p"
	.byte	0x1
	.value	0x17e9
	.byte	0x1
	.long	0x212
	.long	.LFB128
	.long	.LFE128
	.long	.LLST113
	.uleb128 0x29
	.string	"expr_bb"
	.byte	0x1
	.value	0x17e5
	.long	0x2122
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x29
	.string	"expr_index"
	.byte	0x1
	.value	0x17e6
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x29
	.string	"bb"
	.byte	0x1
	.value	0x17e7
	.long	0x2122
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x30
	.long	.LASF56
	.byte	0x1
	.value	0x17e8
	.long	0x3f0
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x2b
	.string	"pred"
	.byte	0x1
	.value	0x17ea
	.long	0x1ea3
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.string	"visited_allocated_locally"
	.byte	0x1
	.value	0x17eb
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2d
	.long	.LBB66
	.long	.LBE66
	.uleb128 0x2a
	.long	.LASF57
	.byte	0x1
	.value	0x17f6
	.long	0x2122
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
	.long	0x7069
	.string	"hoist_code"
	.byte	0x1
	.value	0x1818
	.byte	0x1
	.long	.LFB129
	.long	.LFE129
	.long	.LLST114
	.uleb128 0x2b
	.string	"bb"
	.byte	0x1
	.value	0x1819
	.long	0x2122
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2b
	.string	"dominated"
	.byte	0x1
	.value	0x1819
	.long	0x2122
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2b
	.string	"domby"
	.byte	0x1
	.value	0x181a
	.long	0x7069
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2b
	.string	"domby_len"
	.byte	0x1
	.value	0x181b
	.long	0x2eb
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x181c
	.long	0x2eb
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2b
	.string	"j"
	.byte	0x1
	.value	0x181c
	.long	0x2eb
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2a
	.long	.LASF65
	.byte	0x1
	.value	0x181d
	.long	0x33bb
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2a
	.long	.LASF5
	.byte	0x1
	.value	0x181e
	.long	0x3303
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2c
	.long	0x7058
	.long	.LBB67
	.long	.LBE67
	.uleb128 0x2b
	.string	"found"
	.byte	0x1
	.value	0x182e
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2b
	.string	"insn_inserted_p"
	.byte	0x1
	.value	0x182f
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2c
	.long	0x7011
	.long	.LBB68
	.long	.LBE68
	.uleb128 0x2b
	.string	"hoistable"
	.byte	0x1
	.value	0x1836
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.byte	0x0
	.uleb128 0x2d
	.long	.LBB69
	.long	.LBE69
	.uleb128 0x2a
	.long	.LASF5
	.byte	0x1
	.value	0x188c
	.long	0x3303
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.long	.LASF26
	.byte	0x1
	.value	0x188d
	.long	0x335e
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2a
	.long	.LASF27
	.byte	0x1
	.value	0x188e
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.string	"set"
	.byte	0x1
	.value	0x188f
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.uleb128 0x33
	.long	.LASF41
	.long	0x7c52
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.18449
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x2122
	.uleb128 0x2f
	.long	0x70af
	.string	"one_code_hoisting_pass"
	.byte	0x1
	.value	0x18be
	.byte	0x1
	.long	0x212
	.long	.LFB130
	.long	.LFE130
	.long	.LLST115
	.uleb128 0x2a
	.long	.LASF32
	.byte	0x1
	.value	0x18bf
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2f
	.long	0x70f0
	.string	"ldst_entry"
	.byte	0x1
	.value	0x18f2
	.byte	0x1
	.long	0x34b4
	.long	.LFB131
	.long	.LFE131
	.long	.LLST116
	.uleb128 0x29
	.string	"x"
	.byte	0x1
	.value	0x18f1
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2b
	.string	"ptr"
	.byte	0x1
	.value	0x18f3
	.long	0x34b4
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2e
	.long	0x7125
	.string	"free_ldst_entry"
	.byte	0x1
	.value	0x1911
	.byte	0x1
	.long	.LFB132
	.long	.LFE132
	.long	.LLST117
	.uleb128 0x29
	.string	"ptr"
	.byte	0x1
	.value	0x1910
	.long	0x34b4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x2e
	.long	0x7163
	.string	"free_ldst_mems"
	.byte	0x1
	.value	0x191c
	.byte	0x1
	.long	.LFB133
	.long	.LFE133
	.long	.LLST118
	.uleb128 0x2d
	.long	.LBB70
	.long	.LBE70
	.uleb128 0x2b
	.string	"tmp"
	.byte	0x1
	.value	0x191f
	.long	0x34b4
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
	.long	0x71a8
	.string	"print_ldst_list"
	.byte	0x1
	.value	0x192e
	.byte	0x1
	.long	.LFB134
	.long	.LFE134
	.long	.LLST119
	.uleb128 0x29
	.string	"file"
	.byte	0x1
	.value	0x192d
	.long	0x3658
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2b
	.string	"ptr"
	.byte	0x1
	.value	0x192f
	.long	0x34b4
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2f
	.long	0x71ef
	.string	"find_rtx_in_ldst"
	.byte	0x1
	.value	0x1952
	.byte	0x1
	.long	0x34b4
	.long	.LFB135
	.long	.LFE135
	.long	.LLST120
	.uleb128 0x29
	.string	"x"
	.byte	0x1
	.value	0x1951
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2b
	.string	"ptr"
	.byte	0x1
	.value	0x1953
	.long	0x34b4
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2f
	.long	0x7235
	.string	"enumerate_ldsts"
	.byte	0x1
	.value	0x1960
	.byte	0x1
	.long	0x212
	.long	.LFB136
	.long	.LFE136
	.long	.LLST121
	.uleb128 0x2b
	.string	"ptr"
	.byte	0x1
	.value	0x1961
	.long	0x34b4
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x2b
	.string	"n"
	.byte	0x1
	.value	0x1962
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x34
	.string	"first_ls_expr"
	.byte	0x1
	.value	0x196e
	.byte	0x1
	.long	0x34b4
	.long	.LFB137
	.long	.LFE137
	.long	.LLST122
	.uleb128 0x2f
	.long	0x728e
	.string	"next_ls_expr"
	.byte	0x1
	.value	0x1977
	.byte	0x1
	.long	0x34b4
	.long	.LFB138
	.long	.LFE138
	.long	.LLST123
	.uleb128 0x29
	.string	"ptr"
	.byte	0x1
	.value	0x1976
	.long	0x34b4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x2f
	.long	0x72c0
	.string	"simple_mem"
	.byte	0x1
	.value	0x1984
	.byte	0x1
	.long	0x212
	.long	.LFB139
	.long	.LFE139
	.long	.LLST124
	.uleb128 0x29
	.string	"x"
	.byte	0x1
	.value	0x1983
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x2e
	.long	0x7336
	.string	"invalidate_any_buried_refs"
	.byte	0x1
	.value	0x199f
	.byte	0x1
	.long	.LFB140
	.long	.LFE140
	.long	.LLST125
	.uleb128 0x29
	.string	"x"
	.byte	0x1
	.value	0x199e
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2b
	.string	"fmt"
	.byte	0x1
	.value	0x19a0
	.long	0x1ff
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x19a1
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.string	"j"
	.byte	0x1
	.value	0x19a1
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2b
	.string	"ptr"
	.byte	0x1
	.value	0x19a2
	.long	0x34b4
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2e
	.long	0x73b7
	.string	"compute_ld_motion_mems"
	.byte	0x1
	.value	0x19c0
	.byte	0x1
	.long	.LFB141
	.long	.LFE141
	.long	.LLST126
	.uleb128 0x2b
	.string	"ptr"
	.byte	0x1
	.value	0x19c1
	.long	0x34b4
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.string	"bb"
	.byte	0x1
	.value	0x19c2
	.long	0x2122
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2a
	.long	.LASF27
	.byte	0x1
	.value	0x19c3
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2d
	.long	.LBB71
	.long	.LBE71
	.uleb128 0x2b
	.string	"src"
	.byte	0x1
	.value	0x19d1
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2a
	.long	.LASF14
	.byte	0x1
	.value	0x19d2
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
	.long	0x743f
	.string	"trim_ld_motion_mems"
	.byte	0x1
	.value	0x19fe
	.byte	0x1
	.long	.LFB142
	.long	.LFE142
	.long	.LLST127
	.uleb128 0x2b
	.string	"last"
	.byte	0x1
	.value	0x19ff
	.long	0x34b4
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.string	"ptr"
	.byte	0x1
	.value	0x1a00
	.long	0x34b4
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2d
	.long	.LBB72
	.long	.LBE72
	.uleb128 0x2b
	.string	"del"
	.byte	0x1
	.value	0x1a04
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2a
	.long	.LASF5
	.byte	0x1
	.value	0x1a05
	.long	0x3303
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2d
	.long	.LBB73
	.long	.LBE73
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x1a0a
	.long	0x2eb
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
	.long	0x750e
	.string	"update_ld_motion_stores"
	.byte	0x1
	.value	0x1a42
	.byte	0x1
	.long	.LFB143
	.long	.LFE143
	.long	.LLST128
	.uleb128 0x30
	.long	.LASF5
	.byte	0x1
	.value	0x1a41
	.long	0x3303
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2b
	.string	"mem_ptr"
	.byte	0x1
	.value	0x1a43
	.long	0x34b4
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2d
	.long	.LBB74
	.long	.LBE74
	.uleb128 0x2b
	.string	"list"
	.byte	0x1
	.value	0x1a4f
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2d
	.long	.LBB75
	.long	.LBE75
	.uleb128 0x2a
	.long	.LASF27
	.byte	0x1
	.value	0x1a53
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2b
	.string	"pat"
	.byte	0x1
	.value	0x1a54
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.string	"src"
	.byte	0x1
	.value	0x1a55
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2b
	.string	"reg"
	.byte	0x1
	.value	0x1a56
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.string	"copy"
	.byte	0x1
	.value	0x1a57
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2b
	.string	"new"
	.byte	0x1
	.value	0x1a57
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
	.long	0x755e
	.string	"reg_set_info"
	.byte	0x1
	.value	0x1a84
	.byte	0x1
	.long	.LFB144
	.long	.LFE144
	.long	.LLST129
	.uleb128 0x30
	.long	.LASF14
	.byte	0x1
	.value	0x1a82
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LASF34
	.byte	0x1
	.value	0x1a82
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x30
	.long	.LASF13
	.byte	0x1
	.value	0x1a83
	.long	0x3ee
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.byte	0x0
	.uleb128 0x2f
	.long	0x760b
	.string	"store_ops_ok"
	.byte	0x1
	.value	0x1a93
	.byte	0x1
	.long	0x212
	.long	.LFB145
	.long	.LFE145
	.long	.LLST130
	.uleb128 0x29
	.string	"x"
	.byte	0x1
	.value	0x1a91
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x29
	.string	"bb"
	.byte	0x1
	.value	0x1a92
	.long	0x2122
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x1a94
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.long	.LASF0
	.byte	0x1
	.value	0x1a95
	.long	0xa41
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2b
	.string	"fmt"
	.byte	0x1
	.value	0x1a96
	.long	0x1ff
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x32
	.long	.LASF61
	.byte	0x1
	.value	0x1aa8
	.long	.L2087
	.uleb128 0x2c
	.long	0x75f3
	.long	.LBB76
	.long	.LBE76
	.uleb128 0x2b
	.string	"tem"
	.byte	0x1
	.value	0x1ac7
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x2d
	.long	.LBB77
	.long	.LBE77
	.uleb128 0x2b
	.string	"j"
	.byte	0x1
	.value	0x1ad7
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
	.long	0x7662
	.string	"find_moveable_store"
	.byte	0x1
	.value	0x1ae9
	.byte	0x1
	.long	.LFB146
	.long	.LFE146
	.long	.LLST131
	.uleb128 0x30
	.long	.LASF27
	.byte	0x1
	.value	0x1ae8
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2b
	.string	"ptr"
	.byte	0x1
	.value	0x1aea
	.long	0x34b4
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2a
	.long	.LASF14
	.byte	0x1
	.value	0x1aeb
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2f
	.long	0x76f3
	.string	"compute_store_table"
	.byte	0x1
	.value	0x1b06
	.byte	0x1
	.long	0x212
	.long	.LFB147
	.long	.LFE147
	.long	.LLST132
	.uleb128 0x2b
	.string	"ret"
	.byte	0x1
	.value	0x1b07
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2b
	.string	"bb"
	.byte	0x1
	.value	0x1b08
	.long	0x2122
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2a
	.long	.LASF33
	.byte	0x1
	.value	0x1b09
	.long	0x2eb
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.long	.LASF27
	.byte	0x1
	.value	0x1b0a
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2b
	.string	"pat"
	.byte	0x1
	.value	0x1b0a
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2d
	.long	.LBB78
	.long	.LBE78
	.uleb128 0x2a
	.long	.LASF48
	.byte	0x1
	.value	0x1b21
	.long	0x219d
	.byte	0x2
	.byte	0x91
	.sleb128 -25
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
	.long	0x773a
	.string	"load_kills_store"
	.byte	0x1
	.value	0x1b47
	.byte	0x1
	.long	0x212
	.long	.LFB148
	.long	.LFE148
	.long	.LLST133
	.uleb128 0x29
	.string	"x"
	.byte	0x1
	.value	0x1b46
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LASF74
	.byte	0x1
	.value	0x1b46
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x2f
	.long	0x77b3
	.string	"find_loads"
	.byte	0x1
	.value	0x1b53
	.byte	0x1
	.long	0x212
	.long	.LFB149
	.long	.LFE149
	.long	.LLST134
	.uleb128 0x29
	.string	"x"
	.byte	0x1
	.value	0x1b52
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LASF74
	.byte	0x1
	.value	0x1b52
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2b
	.string	"fmt"
	.byte	0x1
	.value	0x1b54
	.long	0x1ff
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x1b55
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.string	"j"
	.byte	0x1
	.value	0x1b55
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2b
	.string	"ret"
	.byte	0x1
	.value	0x1b56
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2f
	.long	0x7817
	.string	"store_killed_in_insn"
	.byte	0x1
	.value	0x1b78
	.byte	0x1
	.long	0x212
	.long	.LFB150
	.long	.LFE150
	.long	.LLST135
	.uleb128 0x29
	.string	"x"
	.byte	0x1
	.value	0x1b77
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LASF27
	.byte	0x1
	.value	0x1b77
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2d
	.long	.LBB79
	.long	.LBE79
	.uleb128 0x2b
	.string	"pat"
	.byte	0x1
	.value	0x1b85
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
	.long	0x787e
	.string	"store_killed_after"
	.byte	0x1
	.value	0x1b98
	.byte	0x1
	.long	0x212
	.long	.LFB151
	.long	.LFE151
	.long	.LLST136
	.uleb128 0x29
	.string	"x"
	.byte	0x1
	.value	0x1b96
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LASF27
	.byte	0x1
	.value	0x1b96
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x29
	.string	"bb"
	.byte	0x1
	.value	0x1b97
	.long	0x2122
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2b
	.string	"last"
	.byte	0x1
	.value	0x1b99
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x2f
	.long	0x78e5
	.string	"store_killed_before"
	.byte	0x1
	.value	0x1bb3
	.byte	0x1
	.long	0x212
	.long	.LFB152
	.long	.LFE152
	.long	.LLST137
	.uleb128 0x29
	.string	"x"
	.byte	0x1
	.value	0x1bb1
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LASF27
	.byte	0x1
	.value	0x1bb1
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x29
	.string	"bb"
	.byte	0x1
	.value	0x1bb2
	.long	0x2122
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2a
	.long	.LASF8
	.byte	0x1
	.value	0x1bb4
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x2e
	.long	0x79a5
	.string	"build_store_vectors"
	.byte	0x1
	.value	0x1bd0
	.byte	0x1
	.long	.LFB153
	.long	.LFE153
	.long	.LLST138
	.uleb128 0x2b
	.string	"bb"
	.byte	0x1
	.value	0x1bd1
	.long	0x2122
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2b
	.string	"b"
	.byte	0x1
	.value	0x1bd1
	.long	0x2122
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2a
	.long	.LASF27
	.byte	0x1
	.value	0x1bd2
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2b
	.string	"st"
	.byte	0x1
	.value	0x1bd2
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.string	"ptr"
	.byte	0x1
	.value	0x1bd3
	.long	0x34b4
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2d
	.long	.LBB80
	.long	.LBE80
	.uleb128 0x2b
	.string	"store_list"
	.byte	0x1
	.value	0x1be1
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2d
	.long	.LBB81
	.long	.LBE81
	.uleb128 0x2b
	.string	"st"
	.byte	0x1
	.value	0x1bf3
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2d
	.long	.LBB82
	.long	.LBE82
	.uleb128 0x2b
	.string	"r"
	.byte	0x1
	.value	0x1bf9
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
	.long	0x7a0f
	.string	"insert_insn_start_bb"
	.byte	0x1
	.value	0x1c49
	.byte	0x1
	.long	.LFB154
	.long	.LFE154
	.long	.LLST139
	.uleb128 0x30
	.long	.LASF27
	.byte	0x1
	.value	0x1c47
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x29
	.string	"bb"
	.byte	0x1
	.value	0x1c48
	.long	0x2122
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2b
	.string	"prev"
	.byte	0x1
	.value	0x1c4b
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2b
	.string	"before"
	.byte	0x1
	.value	0x1c4c
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2f
	.long	0x7ad7
	.string	"insert_store"
	.byte	0x1
	.value	0x1c6c
	.byte	0x1
	.long	0x212
	.long	.LFB155
	.long	.LFE155
	.long	.LLST140
	.uleb128 0x30
	.long	.LASF5
	.byte	0x1
	.value	0x1c6a
	.long	0x34b4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x29
	.string	"e"
	.byte	0x1
	.value	0x1c6b
	.long	0x1ea3
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2b
	.string	"reg"
	.byte	0x1
	.value	0x1c6d
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2a
	.long	.LASF27
	.byte	0x1
	.value	0x1c6d
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2b
	.string	"bb"
	.byte	0x1
	.value	0x1c6e
	.long	0x2122
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.string	"tmp"
	.byte	0x1
	.value	0x1c6f
	.long	0x1ea3
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2c
	.long	0x7aa9
	.long	.LBB83
	.long	.LBE83
	.uleb128 0x2a
	.long	.LASF10
	.byte	0x1
	.value	0x1c7f
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x2c
	.long	0x7ac6
	.long	.LBB84
	.long	.LBE84
	.uleb128 0x2a
	.long	.LASF10
	.byte	0x1
	.value	0x1c8c
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x33
	.long	.LASF41
	.long	0x7c3d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.19620
	.byte	0x0
	.uleb128 0x2e
	.long	0x7b3b
	.string	"replace_store_insn"
	.byte	0x1
	.value	0x1cae
	.byte	0x1
	.long	.LFB156
	.long	.LFE156
	.long	.LLST141
	.uleb128 0x29
	.string	"reg"
	.byte	0x1
	.value	0x1cac
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x29
	.string	"del"
	.byte	0x1
	.value	0x1cac
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x29
	.string	"bb"
	.byte	0x1
	.value	0x1cad
	.long	0x2122
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2a
	.long	.LASF27
	.byte	0x1
	.value	0x1caf
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2e
	.long	0x7ba6
	.string	"delete_store"
	.byte	0x1
	.value	0x1cc9
	.byte	0x1
	.long	.LFB157
	.long	.LFE157
	.long	.LLST142
	.uleb128 0x30
	.long	.LASF5
	.byte	0x1
	.value	0x1cc7
	.long	0x34b4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x29
	.string	"bb"
	.byte	0x1
	.value	0x1cc8
	.long	0x2122
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2b
	.string	"reg"
	.byte	0x1
	.value	0x1cca
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x1cca
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2b
	.string	"del"
	.byte	0x1
	.value	0x1cca
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x31
	.string	"free_store_memory"
	.byte	0x1
	.value	0x1ce5
	.byte	0x1
	.long	.LFB158
	.long	.LFE158
	.long	.LLST143
	.uleb128 0x2e
	.long	0x7c2d
	.string	"store_motion"
	.byte	0x1
	.value	0x1d00
	.byte	0x1
	.long	.LFB159
	.long	.LFE159
	.long	.LLST144
	.uleb128 0x2b
	.string	"bb"
	.byte	0x1
	.value	0x1d01
	.long	0x2122
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2b
	.string	"x"
	.byte	0x1
	.value	0x1d02
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.string	"ptr"
	.byte	0x1
	.value	0x1d03
	.long	0x34b4
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2b
	.string	"update_flow"
	.byte	0x1
	.value	0x1d04
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0xe
	.long	0x7c3d
	.long	0x20a
	.uleb128 0xf
	.long	0x302
	.byte	0xc
	.byte	0x0
	.uleb128 0x9
	.long	0x7c2d
	.uleb128 0xe
	.long	0x7c52
	.long	0x20a
	.uleb128 0xf
	.long	0x302
	.byte	0xa
	.byte	0x0
	.uleb128 0x9
	.long	0x7c42
	.uleb128 0x9
	.long	0x7c42
	.uleb128 0xe
	.long	0x7c6c
	.long	0x20a
	.uleb128 0xf
	.long	0x302
	.byte	0x14
	.byte	0x0
	.uleb128 0x9
	.long	0x7c5c
	.uleb128 0xe
	.long	0x7c81
	.long	0x20a
	.uleb128 0xf
	.long	0x302
	.byte	0x12
	.byte	0x0
	.uleb128 0x9
	.long	0x7c71
	.uleb128 0x9
	.long	0x733
	.uleb128 0xe
	.long	0x7c9b
	.long	0x20a
	.uleb128 0xf
	.long	0x302
	.byte	0xf
	.byte	0x0
	.uleb128 0x9
	.long	0x7c8b
	.uleb128 0xe
	.long	0x7cb0
	.long	0x20a
	.uleb128 0xf
	.long	0x302
	.byte	0x10
	.byte	0x0
	.uleb128 0x9
	.long	0x7ca0
	.uleb128 0xe
	.long	0x7cc5
	.long	0x20a
	.uleb128 0xf
	.long	0x302
	.byte	0xe
	.byte	0x0
	.uleb128 0x9
	.long	0x7cb5
	.uleb128 0x9
	.long	0x7c42
	.uleb128 0x9
	.long	0x7cb5
	.uleb128 0xe
	.long	0x7ce4
	.long	0x20a
	.uleb128 0xf
	.long	0x302
	.byte	0x11
	.byte	0x0
	.uleb128 0x9
	.long	0x7cd4
	.uleb128 0x9
	.long	0x7c71
	.uleb128 0x9
	.long	0x7cb5
	.uleb128 0x9
	.long	0x733
	.uleb128 0x9
	.long	0x7c2d
	.uleb128 0xe
	.long	0x7d0d
	.long	0x20a
	.uleb128 0xf
	.long	0x302
	.byte	0xb
	.byte	0x0
	.uleb128 0x9
	.long	0x7cfd
	.uleb128 0x2b
	.string	"gcse_file"
	.byte	0x1
	.value	0x117
	.long	0x3658
	.byte	0x5
	.byte	0x3
	.long	gcse_file
	.uleb128 0x2b
	.string	"run_jump_opt_after_gcse"
	.byte	0x1
	.value	0x120
	.long	0x212
	.byte	0x5
	.byte	0x3
	.long	run_jump_opt_after_gcse
	.uleb128 0x2b
	.string	"debug_stderr"
	.byte	0x1
	.value	0x127
	.long	0x3658
	.byte	0x5
	.byte	0x3
	.long	debug_stderr
	.uleb128 0x2b
	.string	"gcse_obstack"
	.byte	0x1
	.value	0x12a
	.long	0x2262
	.byte	0x5
	.byte	0x3
	.long	gcse_obstack
	.uleb128 0xe
	.long	0x7d96
	.long	0x20a
	.uleb128 0xf
	.long	0x302
	.byte	0x35
	.byte	0x0
	.uleb128 0x2b
	.string	"can_copy_p"
	.byte	0x1
	.value	0x12f
	.long	0x7d86
	.byte	0x5
	.byte	0x3
	.long	can_copy_p
	.uleb128 0x2b
	.string	"can_copy_init_p"
	.byte	0x1
	.value	0x132
	.long	0x212
	.byte	0x5
	.byte	0x3
	.long	can_copy_init_p
	.uleb128 0x2a
	.long	.LASF54
	.byte	0x1
	.value	0x17e
	.long	0x3364
	.byte	0x5
	.byte	0x3
	.long	expr_hash_table
	.uleb128 0x2b
	.string	"set_hash_table"
	.byte	0x1
	.value	0x181
	.long	0x3364
	.byte	0x5
	.byte	0x3
	.long	set_hash_table
	.uleb128 0x2b
	.string	"uid_cuid"
	.byte	0x1
	.value	0x185
	.long	0x743
	.byte	0x5
	.byte	0x3
	.long	uid_cuid
	.uleb128 0x2b
	.string	"max_uid"
	.byte	0x1
	.value	0x188
	.long	0x212
	.byte	0x5
	.byte	0x3
	.long	max_uid
	.uleb128 0x2b
	.string	"max_cuid"
	.byte	0x1
	.value	0x192
	.long	0x212
	.byte	0x5
	.byte	0x3
	.long	max_cuid
	.uleb128 0x2b
	.string	"cuid_insn"
	.byte	0x1
	.value	0x195
	.long	0x16bd
	.byte	0x5
	.byte	0x3
	.long	cuid_insn
	.uleb128 0x2b
	.string	"max_gcse_regno"
	.byte	0x1
	.value	0x19d
	.long	0x2eb
	.byte	0x5
	.byte	0x3
	.long	max_gcse_regno
	.uleb128 0x2b
	.string	"reg_set_table"
	.byte	0x1
	.value	0x1be
	.long	0x7e91
	.byte	0x5
	.byte	0x3
	.long	reg_set_table
	.uleb128 0x3
	.byte	0x4
	.long	0x574c
	.uleb128 0x2b
	.string	"reg_set_table_size"
	.byte	0x1
	.value	0x1c3
	.long	0x212
	.byte	0x5
	.byte	0x3
	.long	reg_set_table_size
	.uleb128 0x2b
	.string	"pre_ldst_mems"
	.byte	0x1
	.value	0x1e1
	.long	0x34b4
	.byte	0x5
	.byte	0x3
	.long	pre_ldst_mems
	.uleb128 0x2b
	.string	"reg_set_bitmap"
	.byte	0x1
	.value	0x1e6
	.long	0x1dd4
	.byte	0x5
	.byte	0x3
	.long	reg_set_bitmap
	.uleb128 0x2b
	.string	"reg_set_in_block"
	.byte	0x1
	.value	0x1ed
	.long	0x3529
	.byte	0x5
	.byte	0x3
	.long	reg_set_in_block
	.uleb128 0x2b
	.string	"modify_mem_list"
	.byte	0x1
	.value	0x1f1
	.long	0x16bd
	.byte	0x5
	.byte	0x3
	.long	modify_mem_list
	.uleb128 0x2b
	.string	"canon_modify_mem_list"
	.byte	0x1
	.value	0x1f5
	.long	0x16bd
	.byte	0x5
	.byte	0x3
	.long	canon_modify_mem_list
	.uleb128 0x2b
	.string	"bytes_used"
	.byte	0x1
	.value	0x1fc
	.long	0x212
	.byte	0x5
	.byte	0x3
	.long	bytes_used
	.uleb128 0x2b
	.string	"gcse_subst_count"
	.byte	0x1
	.value	0x1ff
	.long	0x212
	.byte	0x5
	.byte	0x3
	.long	gcse_subst_count
	.uleb128 0x2b
	.string	"gcse_create_count"
	.byte	0x1
	.value	0x201
	.long	0x212
	.byte	0x5
	.byte	0x3
	.long	gcse_create_count
	.uleb128 0x2b
	.string	"const_prop_count"
	.byte	0x1
	.value	0x203
	.long	0x212
	.byte	0x5
	.byte	0x3
	.long	const_prop_count
	.uleb128 0x2b
	.string	"copy_prop_count"
	.byte	0x1
	.value	0x205
	.long	0x212
	.byte	0x5
	.byte	0x3
	.long	copy_prop_count
	.uleb128 0x2b
	.string	"rd_kill"
	.byte	0x1
	.value	0x216
	.long	0x3529
	.byte	0x5
	.byte	0x3
	.long	rd_kill
	.uleb128 0x2b
	.string	"rd_gen"
	.byte	0x1
	.value	0x216
	.long	0x3529
	.byte	0x5
	.byte	0x3
	.long	rd_gen
	.uleb128 0x2b
	.string	"reaching_defs"
	.byte	0x1
	.value	0x216
	.long	0x3529
	.byte	0x5
	.byte	0x3
	.long	reaching_defs
	.uleb128 0x2b
	.string	"rd_out"
	.byte	0x1
	.value	0x216
	.long	0x3529
	.byte	0x5
	.byte	0x3
	.long	rd_out
	.uleb128 0x2b
	.string	"ae_kill"
	.byte	0x1
	.value	0x219
	.long	0x3529
	.byte	0x5
	.byte	0x3
	.long	ae_kill
	.uleb128 0x2b
	.string	"ae_gen"
	.byte	0x1
	.value	0x219
	.long	0x3529
	.byte	0x5
	.byte	0x3
	.long	ae_gen
	.uleb128 0x2b
	.string	"ae_in"
	.byte	0x1
	.value	0x219
	.long	0x3529
	.byte	0x5
	.byte	0x3
	.long	ae_in
	.uleb128 0x2b
	.string	"ae_out"
	.byte	0x1
	.value	0x219
	.long	0x3529
	.byte	0x5
	.byte	0x3
	.long	ae_out
	.uleb128 0x2b
	.string	"reg_set_obstack"
	.byte	0x1
	.value	0x4ad
	.long	0x2262
	.byte	0x5
	.byte	0x3
	.long	reg_set_obstack
	.uleb128 0x2a
	.long	.LASF35
	.byte	0x1
	.value	0x50b
	.long	0x3cf1
	.byte	0x5
	.byte	0x3
	.long	reg_avail_info
	.uleb128 0x2b
	.string	"current_bb"
	.byte	0x1
	.value	0x50c
	.long	0x2122
	.byte	0x5
	.byte	0x3
	.long	current_bb
	.uleb128 0x2b
	.string	"test_insn"
	.byte	0x1
	.value	0x512
	.long	0x99
	.byte	0x5
	.byte	0x3
	.long	test_insn
	.uleb128 0x2b
	.string	"gcse_mems_conflict_p"
	.byte	0x1
	.value	0x599
	.long	0x212
	.byte	0x5
	.byte	0x3
	.long	gcse_mems_conflict_p
	.uleb128 0x2b
	.string	"gcse_mem_operand"
	.byte	0x1
	.value	0x59f
	.long	0x99
	.byte	0x5
	.byte	0x3
	.long	gcse_mem_operand
	.uleb128 0x2b
	.string	"cprop_pavloc"
	.byte	0x1
	.value	0xe58
	.long	0x3529
	.byte	0x5
	.byte	0x3
	.long	cprop_pavloc
	.uleb128 0x2b
	.string	"cprop_absaltered"
	.byte	0x1
	.value	0xe59
	.long	0x3529
	.byte	0x5
	.byte	0x3
	.long	cprop_absaltered
	.uleb128 0x2b
	.string	"cprop_avin"
	.byte	0x1
	.value	0xe5c
	.long	0x3529
	.byte	0x5
	.byte	0x3
	.long	cprop_avin
	.uleb128 0x2b
	.string	"cprop_avout"
	.byte	0x1
	.value	0xe5d
	.long	0x3529
	.byte	0x5
	.byte	0x3
	.long	cprop_avout
	.uleb128 0xe
	.long	0x81b7
	.long	0x3262
	.uleb128 0xf
	.long	0x302
	.byte	0x7
	.byte	0x0
	.uleb128 0x2b
	.string	"reg_use_table"
	.byte	0x1
	.value	0xf14
	.long	0x81a7
	.byte	0x5
	.byte	0x3
	.long	reg_use_table
	.uleb128 0x2b
	.string	"reg_use_count"
	.byte	0x1
	.value	0xf17
	.long	0x212
	.byte	0x5
	.byte	0x3
	.long	reg_use_count
	.uleb128 0x2b
	.string	"transp"
	.byte	0x1
	.value	0x12e3
	.long	0x3529
	.byte	0x5
	.byte	0x3
	.long	transp
	.uleb128 0x2b
	.string	"transpout"
	.byte	0x1
	.value	0x12e8
	.long	0x3529
	.byte	0x5
	.byte	0x3
	.long	transpout
	.uleb128 0x2b
	.string	"comp"
	.byte	0x1
	.value	0x12eb
	.long	0x3529
	.byte	0x5
	.byte	0x3
	.long	comp
	.uleb128 0x2b
	.string	"antloc"
	.byte	0x1
	.value	0x12ee
	.long	0x3529
	.byte	0x5
	.byte	0x3
	.long	antloc
	.uleb128 0x2b
	.string	"pre_optimal"
	.byte	0x1
	.value	0x12f2
	.long	0x3529
	.byte	0x5
	.byte	0x3
	.long	pre_optimal
	.uleb128 0x2b
	.string	"pre_redundant"
	.byte	0x1
	.value	0x12f5
	.long	0x3529
	.byte	0x5
	.byte	0x3
	.long	pre_redundant
	.uleb128 0x2b
	.string	"pre_insert_map"
	.byte	0x1
	.value	0x12f8
	.long	0x3529
	.byte	0x5
	.byte	0x3
	.long	pre_insert_map
	.uleb128 0x2b
	.string	"pre_delete_map"
	.byte	0x1
	.value	0x12fb
	.long	0x3529
	.byte	0x5
	.byte	0x3
	.long	pre_delete_map
	.uleb128 0x2a
	.long	.LASF16
	.byte	0x1
	.value	0x12fe
	.long	0x6612
	.byte	0x5
	.byte	0x3
	.long	edge_list
	.uleb128 0x2b
	.string	"pre_redundant_insns"
	.byte	0x1
	.value	0x1301
	.long	0x1dbf
	.byte	0x5
	.byte	0x3
	.long	pre_redundant_insns
	.uleb128 0x2b
	.string	"hoist_vbein"
	.byte	0x1
	.value	0x1772
	.long	0x3529
	.byte	0x5
	.byte	0x3
	.long	hoist_vbein
	.uleb128 0x2b
	.string	"hoist_vbeout"
	.byte	0x1
	.value	0x1773
	.long	0x3529
	.byte	0x5
	.byte	0x3
	.long	hoist_vbeout
	.uleb128 0x2b
	.string	"hoist_exprs"
	.byte	0x1
	.value	0x1776
	.long	0x3529
	.byte	0x5
	.byte	0x3
	.long	hoist_exprs
	.uleb128 0x2b
	.string	"regvec"
	.byte	0x1
	.value	0x1a76
	.long	0x3529
	.byte	0x5
	.byte	0x3
	.long	regvec
	.uleb128 0x2b
	.string	"st_antloc"
	.byte	0x1
	.value	0x1a79
	.long	0x3529
	.byte	0x5
	.byte	0x3
	.long	st_antloc
	.uleb128 0x2b
	.string	"num_stores"
	.byte	0x1
	.value	0x1a7c
	.long	0x212
	.byte	0x5
	.byte	0x3
	.long	num_stores
	.uleb128 0x35
	.string	"target_flags"
	.byte	0xf
	.byte	0x21
	.long	0x212
	.byte	0x1
	.byte	0x1
	.uleb128 0x35
	.string	"stderr"
	.byte	0xa
	.byte	0x90
	.long	0x707
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.long	0x83b3
	.long	0x992
	.uleb128 0xf
	.long	0x302
	.byte	0x35
	.byte	0x0
	.uleb128 0x36
	.long	.LASF3
	.byte	0x4
	.byte	0x34
	.long	0x83c0
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.long	0x83a3
	.uleb128 0xe
	.long	0x83d5
	.long	0x340
	.uleb128 0xf
	.long	0x302
	.byte	0x35
	.byte	0x0
	.uleb128 0x35
	.string	"mode_bitsize"
	.byte	0x4
	.byte	0x69
	.long	0x83eb
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.long	0x83c5
	.uleb128 0x35
	.string	"word_mode"
	.byte	0x4
	.byte	0xad
	.long	0x749
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.long	0x8413
	.long	0x32f
	.uleb128 0xf
	.long	0x302
	.byte	0xa2
	.byte	0x0
	.uleb128 0x35
	.string	"rtx_length"
	.byte	0x3
	.byte	0x3c
	.long	0x8427
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.long	0x8403
	.uleb128 0xe
	.long	0x843c
	.long	0x1ff
	.uleb128 0xf
	.long	0x302
	.byte	0xa2
	.byte	0x0
	.uleb128 0x35
	.string	"rtx_format"
	.byte	0x3
	.byte	0x42
	.long	0x8450
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.long	0x842c
	.uleb128 0xe
	.long	0x8465
	.long	0x20a
	.uleb128 0xf
	.long	0x302
	.byte	0xa2
	.byte	0x0
	.uleb128 0x35
	.string	"rtx_class"
	.byte	0x3
	.byte	0x45
	.long	0x8478
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.long	0x8455
	.uleb128 0xe
	.long	0x848d
	.long	0x99
	.uleb128 0xf
	.long	0x302
	.byte	0x80
	.byte	0x0
	.uleb128 0x37
	.string	"const_int_rtx"
	.byte	0x3
	.value	0x6a4
	.long	0x847d
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.long	0x84bb
	.long	0x99
	.uleb128 0xf
	.long	0x302
	.byte	0x2
	.uleb128 0xf
	.long	0x302
	.byte	0x35
	.byte	0x0
	.uleb128 0x37
	.string	"const_tiny_rtx"
	.byte	0x3
	.value	0x6ac
	.long	0x84a5
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.long	0x84e4
	.long	0x99
	.uleb128 0xf
	.long	0x302
	.byte	0xa
	.byte	0x0
	.uleb128 0x37
	.string	"global_rtl"
	.byte	0x3
	.value	0x6e5
	.long	0x84d4
	.byte	0x1
	.byte	0x1
	.uleb128 0x37
	.string	"regs_invalidated_by_call"
	.byte	0x10
	.value	0x1bd
	.long	0x1c99
	.byte	0x1
	.byte	0x1
	.uleb128 0x35
	.string	"n_basic_blocks"
	.byte	0x8
	.byte	0xf2
	.long	0x212
	.byte	0x1
	.byte	0x1
	.uleb128 0x35
	.string	"last_basic_block"
	.byte	0x8
	.byte	0xf6
	.long	0x212
	.byte	0x1
	.byte	0x1
	.uleb128 0x35
	.string	"n_edges"
	.byte	0x8
	.byte	0xfa
	.long	0x212
	.byte	0x1
	.byte	0x1
	.uleb128 0x35
	.string	"basic_block_info"
	.byte	0x8
	.byte	0xfe
	.long	0x1c67
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.long	0x8589
	.long	0x14ff
	.uleb128 0xf
	.long	0x302
	.byte	0x1
	.byte	0x0
	.uleb128 0x37
	.string	"entry_exit_blocks"
	.byte	0x8
	.value	0x139
	.long	0x8579
	.byte	0x1
	.byte	0x1
	.uleb128 0x35
	.string	"optimize_size"
	.byte	0x12
	.byte	0x47
	.long	0x212
	.byte	0x1
	.byte	0x1
	.uleb128 0x35
	.string	"warn_disabled_optimization"
	.byte	0x12
	.byte	0xba
	.long	0x212
	.byte	0x1
	.byte	0x1
	.uleb128 0x37
	.string	"flag_gcse_lm"
	.byte	0x12
	.value	0x29e
	.long	0x212
	.byte	0x1
	.byte	0x1
	.uleb128 0x37
	.string	"flag_gcse_sm"
	.byte	0x12
	.value	0x2a2
	.long	0x212
	.byte	0x1
	.byte	0x1
	.uleb128 0x37
	.string	"cfun"
	.byte	0x13
	.value	0x202
	.long	0x3034
	.byte	0x1
	.byte	0x1
	.uleb128 0x35
	.string	"compiler_params"
	.byte	0x14
	.byte	0x3a
	.long	0x8636
	.byte	0x1
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x3129
	.uleb128 0x38
	.string	"modify_mem_list_set"
	.byte	0x1
	.value	0x1f2
	.long	0x1d58
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	modify_mem_list_set
	.uleb128 0x38
	.string	"canon_modify_mem_list_set"
	.byte	0x1
	.value	0x1f6
	.long	0x1d58
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	canon_modify_mem_list_set
	.uleb128 0x38
	.string	"dominators"
	.byte	0x1
	.value	0x1779
	.long	0x212d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	dominators
	.uleb128 0xe
	.long	0x86b2
	.long	0x309c
	.uleb128 0xf
	.long	0x302
	.byte	0x1
	.byte	0x0
	.uleb128 0x39
	.string	"gt_ggc_r_gt_gcse_h"
	.byte	0x15
	.byte	0x19
	.long	0x86d3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	gt_ggc_r_gt_gcse_h
	.uleb128 0x9
	.long	0x86a2
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
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
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
	.uleb128 0x5
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x27
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x14
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
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
	.uleb128 0x16
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
	.uleb128 0x20
	.uleb128 0x13
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x21
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
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
	.uleb128 0x13
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x26
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
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
	.uleb128 0x32
	.uleb128 0xa
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x2
	.uleb128 0xa
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.long	0x97
	.value	0x2
	.long	.Ldebug_info0
	.long	0x86d9
	.long	0x352f
	.string	"gcse_main"
	.long	0x6c31
	.string	"delete_null_pointer_checks"
	.long	0x863c
	.string	"modify_mem_list_set"
	.long	0x865f
	.string	"canon_modify_mem_list_set"
	.long	0x8688
	.string	"dominators"
	.long	0x86b2
	.string	"gt_ggc_r_gt_gcse_h"
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
.LASF26:
	.string	"occr"
.LASF62:
	.string	"alter_jumps"
.LASF51:
	.string	"n_blocks"
.LASF17:
	.string	"num_edges"
.LASF12:
	.string	"next"
.LASF40:
	.string	"hash"
.LASF27:
	.string	"insn"
.LASF46:
	.string	"in_libcall_block"
.LASF66:
	.string	"did_insert"
.LASF53:
	.string	"n_exprs"
.LASF70:
	.string	"something_changed"
.LASF25:
	.string	"reaching_reg"
.LASF22:
	.string	"param_info"
.LASF38:
	.string	"do_not_record_p"
.LASF9:
	.string	"indx"
.LASF32:
	.string	"changed"
.LASF55:
	.string	"check_self_loop"
.LASF11:
	.string	"basic_block"
.LASF73:
	.string	"earliest"
.LASF20:
	.string	"next_free"
.LASF59:
	.string	"regnum_for_replacing"
.LASF58:
	.string	"insn_computes_expr"
.LASF54:
	.string	"expr_hash_table"
.LASF15:
	.string	"dominance_info"
.LASF16:
	.string	"edge_list"
.LASF36:
	.string	"avail_p"
.LASF6:
	.string	"size"
.LASF28:
	.string	"table"
.LASF67:
	.string	"block_reg"
.LASF64:
	.string	"libcall_sp"
.LASF63:
	.string	"reg_used"
.LASF50:
	.string	"word_num_"
.LASF4:
	.string	"mem_attrs"
.LASF44:
	.string	"last_occr"
.LASF8:
	.string	"first"
.LASF0:
	.string	"code"
.LASF72:
	.string	"condition"
.LASF7:
	.string	"value"
.LASF5:
	.string	"expr"
.LASF68:
	.string	"nonnull_avin"
.LASF65:
	.string	"index_map"
.LASF48:
	.string	"clobbers_all"
.LASF74:
	.string	"store_pattern"
.LASF52:
	.string	"this_reg"
.LASF60:
	.string	"new_insn"
.LASF49:
	.string	"bit_num_"
.LASF18:
	.string	"sequence_stack"
.LASF61:
	.string	"repeat"
.LASF41:
	.string	"__FUNCTION__"
.LASF24:
	.string	"avail_occr"
.LASF35:
	.string	"reg_avail_info"
.LASF29:
	.string	"current_block"
.LASF2:
	.string	"_IO_FILE"
.LASF56:
	.string	"visited"
.LASF39:
	.string	"hash_table_size"
.LASF34:
	.string	"setter"
.LASF23:
	.string	"antic_occr"
.LASF13:
	.string	"data"
.LASF43:
	.string	"last_expr"
.LASF47:
	.string	"dest_addr"
.LASF71:
	.string	"last_insn"
.LASF14:
	.string	"dest"
.LASF57:
	.string	"pred_bb"
.LASF3:
	.string	"mode_class"
.LASF42:
	.string	"cur_expr"
.LASF21:
	.string	"function_frequency"
.LASF19:
	.string	"sequence_rtl_expr"
.LASF69:
	.string	"nonnull_avout"
.LASF37:
	.string	"list_entry"
.LASF31:
	.string	"nonnull_killed"
.LASF30:
	.string	"nonnull_local"
.LASF10:
	.string	"index"
.LASF1:
	.string	"unsigned int"
.LASF45:
	.string	"note"
.LASF33:
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
