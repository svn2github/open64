	.file	"global.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
	.section	.rodata
	.type	__FUNCTION__.10250, @object
	.size	__FUNCTION__.10250, 13
__FUNCTION__.10250:
	.string	"global_alloc"
	.align 32
	.type	eliminables.10227, @object
	.size	eliminables.10227, 72
eliminables.10227:
	.long	0
	.long	29
	.long	0
	.long	30
	.long	0
	.long	17
	.long	75
	.long	29
	.long	75
	.long	30
	.long	75
	.long	17
	.long	1
	.long	29
	.long	1
	.long	30
	.long	1
	.long	17
.LC0:
	.string	"../../../kg++fe/gnu/global.c"
	.text
.globl global_alloc
	.type	global_alloc, @function
global_alloc:
.LFB15:
	.file 1 "../../../kg++fe/gnu/global.c"
	.loc 1 319 0
	pushl	%ebp
.LCFI0:
	movl	%esp, %ebp
.LCFI1:
	pushl	%edi
.LCFI2:
	pushl	%esi
.LCFI3:
	pushl	%ebx
.LCFI4:
	subl	$332, %esp
.LCFI5:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 329 0
	movl	flag_omit_frame_pointer@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movzbl	296(%eax), %eax
	andl	$64, %eax
	testb	%al, %al
	jne	.L2
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movzbl	296(%eax), %eax
	andl	$64, %eax
	testb	%al, %al
	je	.L5
.L2:
	movl	$1, -312(%ebp)
	jmp	.L6
.L5:
	movl	$0, -312(%ebp)
.L6:
	movl	-312(%ebp), %eax
	movl	%eax, -84(%ebp)
	.loc 1 334 0
	movl	$0, max_allocno@GOTOFF(%ebx)
.LBB2:
	.loc 1 339 0
	leal	no_global_alloc_regs@GOTOFF(%ebx), %eax
	movl	%eax, -72(%ebp)
	movl	-72(%ebp), %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	-72(%ebp), %eax
	addl	$8, %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	-72(%ebp), %eax
	addl	$16, %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
.LBE2:
	.loc 1 344 0
	movl	$0, -80(%ebp)
	jmp	.L7
.L8:
	.loc 1 346 0
	movl	-80(%ebp), %eax
	movl	eliminables.10227@GOTOFF(%ebx,%eax,8), %eax
	movl	%eax, %edx
	shrl	$6, %edx
	movl	%edx, -308(%ebp)
	movl	-80(%ebp), %eax
	movl	eliminables.10227@GOTOFF(%ebx,%eax,8), %eax
	shrl	$6, %eax
	movl	eliminable_regset@GOTOFF(%ebx,%eax,8), %esi
	movl	4+eliminable_regset@GOTOFF(%ebx,%eax,8), %edi
	movl	%esi, -304(%ebp)
	movl	%edi, -300(%ebp)
	movl	-80(%ebp), %eax
	movl	eliminables.10227@GOTOFF(%ebx,%eax,8), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L129
	movl	%esi, %edi
	xorl	%esi, %esi
.L129:
	movl	-304(%ebp), %eax
	orl	%esi, %eax
	movl	-300(%ebp), %edx
	orl	%edi, %edx
	movl	-308(%ebp), %edi
	movl	%eax, eliminable_regset@GOTOFF(%ebx,%edi,8)
	movl	%edx, 4+eliminable_regset@GOTOFF(%ebx,%edi,8)
	.loc 1 348 0
	movl	-80(%ebp), %eax
	movl	eliminables.10227@GOTOFF(%ebx,%eax,8), %eax
	cmpl	$75, %eax
	jne	.L9
	movl	-80(%ebp), %eax
	movl	4+eliminables.10227@GOTOFF(%ebx,%eax,8), %eax
	cmpl	$29, %eax
	jne	.L11
	movl	frame_pointer_needed@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L13
.L11:
	movl	-80(%ebp), %eax
	movl	4+eliminables.10227@GOTOFF(%ebx,%eax,8), %eax
	movl	%eax, -296(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	je	.L14
	movl	$17, -292(%ebp)
	jmp	.L16
.L14:
	movl	$30, -292(%ebp)
.L16:
	movl	-292(%ebp), %eax
	cmpl	%eax, -296(%ebp)
	je	.L13
.L9:
	movl	-80(%ebp), %eax
	movl	eliminables.10227@GOTOFF(%ebx,%eax,8), %eax
	cmpl	$75, %eax
	je	.L17
	movl	-80(%ebp), %eax
	movl	4+eliminables.10227@GOTOFF(%ebx,%eax,8), %eax
	movl	%eax, -288(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	je	.L19
	movl	$17, -284(%ebp)
	jmp	.L21
.L19:
	movl	$30, -284(%ebp)
.L21:
	movl	-284(%ebp), %edx
	cmpl	%edx, -288(%ebp)
	je	.L13
	movl	-80(%ebp), %eax
	movl	4+eliminables.10227@GOTOFF(%ebx,%eax,8), %eax
	cmpl	$29, %eax
	jne	.L17
	movl	frame_pointer_needed@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L17
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	je	.L25
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	jne	.L17
.L25:
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	je	.L13
	call	get_frame_size@PLT
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	compute_frame_size@PLT
	movl	%eax, -280(%ebp)
	movl	%edx, -276(%ebp)
	cmpl	$0, -276(%ebp)
	jg	.L17
	cmpl	$0, -276(%ebp)
	js	.L13
	cmpl	$32767, -280(%ebp)
	ja	.L17
.L13:
	movl	-80(%ebp), %eax
	movl	4+eliminables.10227@GOTOFF(%ebx,%eax,8), %eax
	cmpl	$29, %eax
	jne	.L29
	cmpl	$0, -84(%ebp)
	je	.L29
.L17:
	.loc 1 350 0
	movl	-80(%ebp), %eax
	movl	eliminables.10227@GOTOFF(%ebx,%eax,8), %eax
	movl	%eax, %ecx
	shrl	$6, %ecx
	movl	%ecx, -268(%ebp)
	movl	-80(%ebp), %eax
	movl	eliminables.10227@GOTOFF(%ebx,%eax,8), %eax
	shrl	$6, %eax
	movl	no_global_alloc_regs@GOTOFF(%ebx,%eax,8), %esi
	movl	4+no_global_alloc_regs@GOTOFF(%ebx,%eax,8), %edi
	movl	%esi, -264(%ebp)
	movl	%edi, -260(%ebp)
	movl	-80(%ebp), %eax
	movl	eliminables.10227@GOTOFF(%ebx,%eax,8), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L128
	movl	%esi, %edi
	xorl	%esi, %esi
.L128:
	movl	-264(%ebp), %eax
	orl	%esi, %eax
	movl	-260(%ebp), %edx
	orl	%edi, %edx
	movl	-268(%ebp), %edi
	movl	%eax, no_global_alloc_regs@GOTOFF(%ebx,%edi,8)
	movl	%edx, 4+no_global_alloc_regs@GOTOFF(%ebx,%edi,8)
.L29:
	.loc 1 344 0
	addl	$1, -80(%ebp)
.L7:
	cmpl	$8, -80(%ebp)
	jbe	.L8
	.loc 1 353 0
	movl	eliminable_regset@GOTOFF(%ebx), %eax
	movl	4+eliminable_regset@GOTOFF(%ebx), %edx
	movl	%eax, -256(%ebp)
	movl	%edx, -252(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	je	.L32
	movl	$131072, -248(%ebp)
	movl	$0, -244(%ebp)
	jmp	.L34
.L32:
	movl	$1073741824, -248(%ebp)
	movl	$0, -244(%ebp)
.L34:
	movl	-256(%ebp), %eax
	orl	-248(%ebp), %eax
	movl	-252(%ebp), %edx
	orl	-244(%ebp), %edx
	movl	%eax, eliminable_regset@GOTOFF(%ebx)
	movl	%edx, 4+eliminable_regset@GOTOFF(%ebx)
	.loc 1 354 0
	cmpl	$0, -84(%ebp)
	je	.L35
	.loc 1 355 0
	movl	no_global_alloc_regs@GOTOFF(%ebx), %edx
	movl	4+no_global_alloc_regs@GOTOFF(%ebx), %ecx
	movl	%edx, -240(%ebp)
	movl	%ecx, -236(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	je	.L37
	movl	$131072, -232(%ebp)
	movl	$0, -228(%ebp)
	jmp	.L39
.L37:
	movl	$1073741824, -232(%ebp)
	movl	$0, -228(%ebp)
.L39:
	movl	-240(%ebp), %eax
	orl	-232(%ebp), %eax
	movl	-236(%ebp), %edx
	orl	-228(%ebp), %edx
	movl	%eax, no_global_alloc_regs@GOTOFF(%ebx)
	movl	%edx, 4+no_global_alloc_regs@GOTOFF(%ebx)
.L35:
.LBB3:
	.loc 1 368 0
	leal	regs_used_so_far@GOTOFF(%ebx), %eax
	movl	%eax, -68(%ebp)
	movl	-68(%ebp), %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	-68(%ebp), %eax
	addl	$8, %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	-68(%ebp), %eax
	addl	$16, %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
.LBE3:
	.loc 1 389 0
	movl	$0, -80(%ebp)
	jmp	.L40
.L41:
	.loc 1 390 0
	movl	-80(%ebp), %eax
	movl	regs_ever_live@GOT(%ebx), %edx
	movzbl	(%edx,%eax), %eax
	testb	%al, %al
	jne	.L42
	movl	-80(%ebp), %eax
	movl	call_used_regs@GOT(%ebx), %edx
	movzbl	(%edx,%eax), %eax
	testb	%al, %al
	je	.L44
.L42:
	.loc 1 391 0
	movl	-80(%ebp), %eax
	shrl	$6, %eax
	movl	%eax, -220(%ebp)
	movl	regs_used_so_far@GOTOFF(%ebx,%eax,8), %esi
	movl	4+regs_used_so_far@GOTOFF(%ebx,%eax,8), %edi
	movl	%esi, -216(%ebp)
	movl	%edi, -212(%ebp)
	movl	-80(%ebp), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L127
	movl	%esi, %edi
	xorl	%esi, %esi
.L127:
	movl	-216(%ebp), %eax
	orl	%esi, %eax
	movl	-212(%ebp), %edx
	orl	%edi, %edx
	movl	-220(%ebp), %edi
	movl	%eax, regs_used_so_far@GOTOFF(%ebx,%edi,8)
	movl	%edx, 4+regs_used_so_far@GOTOFF(%ebx,%edi,8)
.L44:
	.loc 1 389 0
	addl	$1, -80(%ebp)
.L40:
	cmpl	$175, -80(%ebp)
	jbe	.L41
	.loc 1 394 0
	movl	$176, -80(%ebp)
	jmp	.L46
.L47:
	.loc 1 395 0
	movl	-80(%ebp), %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movl	reg_renumber@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movzwl	(%eax), %eax
	testw	%ax, %ax
	js	.L48
	.loc 1 396 0
	movl	-80(%ebp), %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movl	reg_renumber@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movzwl	(%eax), %eax
	cwtl
	shrl	$6, %eax
	movl	%eax, -204(%ebp)
	movl	regs_used_so_far@GOTOFF(%ebx,%eax,8), %edx
	movl	4+regs_used_so_far@GOTOFF(%ebx,%eax,8), %ecx
	movl	%edx, -200(%ebp)
	movl	%ecx, -196(%ebp)
	movl	-80(%ebp), %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movl	reg_renumber@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movzwl	(%eax), %eax
	cwtl
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L126
	movl	%esi, %edi
	xorl	%esi, %esi
.L126:
	movl	-200(%ebp), %eax
	orl	%esi, %eax
	movl	-196(%ebp), %edx
	orl	%edi, %edx
	movl	-204(%ebp), %ecx
	movl	%eax, regs_used_so_far@GOTOFF(%ebx,%ecx,8)
	movl	%edx, 4+regs_used_so_far@GOTOFF(%ebx,%ecx,8)
.L48:
	.loc 1 394 0
	addl	$1, -80(%ebp)
.L46:
	movl	max_regno@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-80(%ebp), %eax
	ja	.L47
	.loc 1 401 0
	movl	max_regno@GOT(%ebx), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, reg_allocno@GOTOFF(%ebx)
	.loc 1 403 0
	movl	$0, -80(%ebp)
	jmp	.L51
.L52:
	.loc 1 404 0
	movl	-80(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_allocno@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	$-1, (%eax)
	.loc 1 403 0
	addl	$1, -80(%ebp)
.L51:
	cmpl	$175, -80(%ebp)
	jbe	.L52
	.loc 1 408 0
	movl	max_regno@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	$4, 4(%esp)
	movl	%eax, (%esp)
	call	xcalloc@PLT
	movl	%eax, reg_may_share@GOTOFF(%ebx)
	.loc 1 409 0
	movl	regs_may_share@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -76(%ebp)
	jmp	.L54
.L55:
.LBB4:
	.loc 1 411 0
	movl	-76(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -64(%ebp)
	.loc 1 412 0
	movl	-76(%ebp), %eax
	movl	12(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -60(%ebp)
	.loc 1 413 0
	movl	-64(%ebp), %eax
	cmpl	-60(%ebp), %eax
	jle	.L56
	.loc 1 414 0
	movl	-64(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_may_share@GOTOFF(%ebx), %eax
	addl	%eax, %edx
	movl	-60(%ebp), %eax
	movl	%eax, (%edx)
	jmp	.L58
.L56:
	.loc 1 416 0
	movl	-60(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_may_share@GOTOFF(%ebx), %eax
	addl	%eax, %edx
	movl	-64(%ebp), %eax
	movl	%eax, (%edx)
.L58:
.LBE4:
	.loc 1 409 0
	movl	-76(%ebp), %eax
	movl	12(%eax), %eax
	movl	12(%eax), %eax
	movl	%eax, -76(%ebp)
.L54:
	cmpl	$0, -76(%ebp)
	jne	.L55
	.loc 1 419 0
	movl	$176, -80(%ebp)
	jmp	.L60
.L61:
	.loc 1 423 0
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-80(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L62
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-80(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	28(%eax), %eax
	cmpl	$-1, %eax
	je	.L62
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movzbl	297(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L65
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-80(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	32(%eax), %eax
	testl	%eax, %eax
	jne	.L62
.L65:
	.loc 1 429 0
	movl	-80(%ebp), %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movl	reg_renumber@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movzwl	(%eax), %eax
	testw	%ax, %ax
	jns	.L67
	movl	-80(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_may_share@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L67
	movl	-80(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_may_share@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_allocno@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	js	.L67
	.loc 1 430 0
	movl	-80(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_allocno@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %ecx
	movl	-80(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_may_share@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_allocno@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, (%ecx)
	.loc 1 429 0
	jmp	.L71
.L67:
	.loc 1 432 0
	movl	-80(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_allocno@GOTOFF(%ebx), %eax
	addl	%eax, %edx
	movl	max_allocno@GOTOFF(%ebx), %eax
	movl	%eax, (%edx)
	addl	$1, %eax
	movl	%eax, max_allocno@GOTOFF(%ebx)
.L71:
	.loc 1 433 0
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-80(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	28(%eax), %eax
	testl	%eax, %eax
	jne	.L74
	.loc 1 434 0
	leal	__FUNCTION__.10250@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$434, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L62:
	.loc 1 437 0
	movl	-80(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_allocno@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	$-1, (%eax)
.L74:
	.loc 1 419 0
	addl	$1, -80(%ebp)
.L60:
	movl	max_regno@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-80(%ebp), %eax
	ja	.L61
	.loc 1 439 0
	movl	max_allocno@GOTOFF(%ebx), %eax
	movl	$144, 4(%esp)
	movl	%eax, (%esp)
	call	xcalloc@PLT
	movl	%eax, allocno@GOTOFF(%ebx)
	.loc 1 441 0
	movl	$176, -80(%ebp)
	jmp	.L76
.L77:
	.loc 1 442 0
	movl	-80(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_allocno@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	js	.L78
.LBB5:
	.loc 1 444 0
	movl	-80(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_allocno@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -56(%ebp)
	.loc 1 445 0
	movl	-56(%ebp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	allocno@GOTOFF(%ebx), %eax
	addl	%eax, %edx
	movl	-80(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 446 0
	movl	-56(%ebp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	allocno@GOTOFF(%ebx), %eax
	addl	%eax, %edx
	movl	%edx, -188(%ebp)
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movl	48(%eax), %edx
	movl	-80(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -184(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L80
	movl	$8, -180(%ebp)
	jmp	.L82
.L80:
	movl	$4, -180(%ebp)
.L82:
	movl	-184(%ebp), %eax
	addl	-180(%ebp), %eax
	subl	$1, %eax
	movl	%eax, -176(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L83
	movl	$8, -172(%ebp)
	jmp	.L85
.L83:
	movl	$4, -172(%ebp)
.L85:
	movl	-176(%ebp), %edx
	movl	%edx, %eax
	sarl	$31, %edx
	idivl	-172(%ebp)
	movl	-188(%ebp), %esi
	movl	%eax, 4(%esi)
	.loc 1 447 0
	movl	-56(%ebp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	allocno@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %esi
	movl	-56(%ebp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	allocno@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	8(%eax), %ecx
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-80(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	32(%eax), %eax
	leal	(%ecx,%eax), %eax
	movl	%eax, 8(%esi)
	.loc 1 448 0
	movl	-56(%ebp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	allocno@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %esi
	movl	-56(%ebp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	allocno@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	12(%eax), %ecx
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-80(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	16(%eax), %eax
	leal	(%ecx,%eax), %eax
	movl	%eax, 12(%esi)
	.loc 1 449 0
	movl	-56(%ebp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	allocno@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %esi
	movl	-56(%ebp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	allocno@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	16(%eax), %ecx
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-80(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	20(%eax), %eax
	leal	(%ecx,%eax), %eax
	movl	%eax, 16(%esi)
	.loc 1 450 0
	movl	-56(%ebp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	allocno@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	20(%eax), %ecx
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-80(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	28(%eax), %eax
	cmpl	%eax, %ecx
	jge	.L78
	.loc 1 451 0
	movl	-56(%ebp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	allocno@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %ecx
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-80(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	28(%eax), %eax
	movl	%eax, 20(%ecx)
.L78:
.LBE5:
	.loc 1 441 0
	addl	$1, -80(%ebp)
.L76:
	movl	max_regno@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-80(%ebp), %eax
	ja	.L77
	.loc 1 457 0
	leal	local_reg_live_length@GOTOFF(%ebx), %eax
	movl	%eax, %edx
	movl	$704, %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	%edx, (%esp)
	call	memset@PLT
	.loc 1 458 0
	leal	local_reg_n_refs@GOTOFF(%ebx), %eax
	movl	%eax, %edx
	movl	$704, %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	%edx, (%esp)
	call	memset@PLT
	.loc 1 459 0
	leal	local_reg_freq@GOTOFF(%ebx), %eax
	movl	%eax, %edx
	movl	$704, %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	%edx, (%esp)
	call	memset@PLT
	.loc 1 460 0
	movl	$176, -80(%ebp)
	jmp	.L88
.L89:
	.loc 1 461 0
	movl	-80(%ebp), %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movl	reg_renumber@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movzwl	(%eax), %eax
	testw	%ax, %ax
	js	.L90
.LBB6:
	.loc 1 463 0
	movl	-80(%ebp), %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movl	reg_renumber@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movzwl	(%eax), %eax
	cwtl
	movl	%eax, -52(%ebp)
	.loc 1 464 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movl	48(%eax), %edx
	movl	-80(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, 4(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	mips_hard_regno_nregs@PLT
	movl	%eax, %edx
	movl	-52(%ebp), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -48(%ebp)
	.loc 1 467 0
	movl	-52(%ebp), %eax
	movl	%eax, -44(%ebp)
	jmp	.L92
.L93:
	.loc 1 469 0
	movl	-44(%ebp), %ecx
	movl	-44(%ebp), %eax
	movl	local_reg_n_refs@GOTOFF(%ebx,%eax,4), %esi
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-80(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	16(%eax), %eax
	leal	(%esi,%eax), %eax
	movl	%eax, local_reg_n_refs@GOTOFF(%ebx,%ecx,4)
	.loc 1 470 0
	movl	-44(%ebp), %ecx
	movl	-44(%ebp), %eax
	movl	local_reg_freq@GOTOFF(%ebx,%eax,4), %esi
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-80(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	20(%eax), %eax
	leal	(%esi,%eax), %eax
	movl	%eax, local_reg_freq@GOTOFF(%ebx,%ecx,4)
	.loc 1 471 0
	movl	-44(%ebp), %ecx
	movl	-44(%ebp), %eax
	movl	local_reg_live_length@GOTOFF(%ebx,%eax,4), %esi
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-80(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	28(%eax), %eax
	leal	(%esi,%eax), %eax
	movl	%eax, local_reg_live_length@GOTOFF(%ebx,%ecx,4)
	.loc 1 467 0
	addl	$1, -44(%ebp)
.L92:
	movl	-44(%ebp), %eax
	cmpl	-48(%ebp), %eax
	jl	.L93
.L90:
.LBE6:
	.loc 1 460 0
	addl	$1, -80(%ebp)
.L88:
	movl	max_regno@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-80(%ebp), %eax
	ja	.L89
	.loc 1 476 0
	movl	$0, -80(%ebp)
	jmp	.L95
.L96:
	.loc 1 477 0
	movl	-80(%ebp), %eax
	movl	regs_ever_live@GOT(%ebx), %edx
	movzbl	(%edx,%eax), %eax
	testb	%al, %al
	je	.L97
	.loc 1 478 0
	movl	-80(%ebp), %eax
	movl	$0, local_reg_n_refs@GOTOFF(%ebx,%eax,4)
	movl	-80(%ebp), %eax
	movl	$0, local_reg_freq@GOTOFF(%ebx,%eax,4)
.L97:
	.loc 1 476 0
	addl	$1, -80(%ebp)
.L95:
	cmpl	$175, -80(%ebp)
	jbe	.L96
	.loc 1 480 0
	movl	max_allocno@GOTOFF(%ebx), %eax
	leal	63(%eax), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	shrl	$26, %eax
	addl	%edx, %eax
	sarl	$6, %eax
	movl	%eax, allocno_row_words@GOTOFF(%ebx)
	.loc 1 485 0
	movl	max_allocno@GOTOFF(%ebx), %edx
	movl	allocno_row_words@GOTOFF(%ebx), %eax
	imull	%edx, %eax
	movl	$8, 4(%esp)
	movl	%eax, (%esp)
	call	xcalloc@PLT
	movl	%eax, conflicts@GOTOFF(%ebx)
	.loc 1 488 0
	movl	allocno_row_words@GOTOFF(%ebx), %eax
	sall	$3, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, allocnos_live@GOTOFF(%ebx)
	.loc 1 493 0
	movl	max_allocno@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jle	.L100
	.loc 1 498 0
	call	global_conflicts
	.loc 1 500 0
	call	mirror_conflicts
	.loc 1 509 0
	movl	$0, -80(%ebp)
	jmp	.L102
.L103:
.LBB7:
	.loc 1 511 0
	movl	-80(%ebp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	allocno@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	addl	$24, %eax
	movl	%eax, -40(%ebp)
	leal	eliminable_regset@GOTOFF(%ebx), %eax
	movl	%eax, -36(%ebp)
	movl	-40(%ebp), %eax
	movl	(%eax), %edx
	movl	4(%eax), %ecx
	movl	%edx, -168(%ebp)
	movl	%ecx, -164(%ebp)
	movl	-36(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-168(%ebp), %eax
	andl	%esi, %eax
	movl	-164(%ebp), %edx
	andl	%edi, %edx
	movl	-40(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-40(%ebp), %ecx
	addl	$8, %ecx
	movl	-40(%ebp), %eax
	addl	$8, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -160(%ebp)
	movl	%edi, -156(%ebp)
	movl	-36(%ebp), %eax
	addl	$8, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-160(%ebp), %eax
	andl	%esi, %eax
	movl	-156(%ebp), %edx
	andl	%edi, %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-40(%ebp), %ecx
	addl	$16, %ecx
	movl	-40(%ebp), %eax
	addl	$16, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -152(%ebp)
	movl	%edi, -148(%ebp)
	movl	-36(%ebp), %eax
	addl	$16, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-152(%ebp), %eax
	andl	%esi, %eax
	movl	-148(%ebp), %edx
	andl	%edi, %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
.LBE7:
.LBB8:
	.loc 1 513 0
	movl	-80(%ebp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	allocno@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	addl	$72, %eax
	movl	%eax, -32(%ebp)
	leal	eliminable_regset@GOTOFF(%ebx), %eax
	movl	%eax, -28(%ebp)
	movl	-32(%ebp), %eax
	movl	(%eax), %edx
	movl	4(%eax), %ecx
	movl	%edx, -144(%ebp)
	movl	%ecx, -140(%ebp)
	movl	-28(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-144(%ebp), %eax
	andl	%esi, %eax
	movl	-140(%ebp), %edx
	andl	%edi, %edx
	movl	-32(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-32(%ebp), %ecx
	addl	$8, %ecx
	movl	-32(%ebp), %eax
	addl	$8, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -136(%ebp)
	movl	%edi, -132(%ebp)
	movl	-28(%ebp), %eax
	addl	$8, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-136(%ebp), %eax
	andl	%esi, %eax
	movl	-132(%ebp), %edx
	andl	%edi, %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-32(%ebp), %ecx
	addl	$16, %ecx
	movl	-32(%ebp), %eax
	addl	$16, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -128(%ebp)
	movl	%edi, -124(%ebp)
	movl	-28(%ebp), %eax
	addl	$16, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-128(%ebp), %eax
	andl	%esi, %eax
	movl	-124(%ebp), %edx
	andl	%edi, %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
.LBE8:
.LBB9:
	.loc 1 515 0
	movl	-80(%ebp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	allocno@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	addl	$48, %eax
	movl	%eax, -24(%ebp)
	leal	eliminable_regset@GOTOFF(%ebx), %eax
	movl	%eax, -20(%ebp)
	movl	-24(%ebp), %eax
	movl	(%eax), %edx
	movl	4(%eax), %ecx
	movl	%edx, -120(%ebp)
	movl	%ecx, -116(%ebp)
	movl	-20(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-120(%ebp), %eax
	andl	%esi, %eax
	movl	-116(%ebp), %edx
	andl	%edi, %edx
	movl	-24(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-24(%ebp), %ecx
	addl	$8, %ecx
	movl	-24(%ebp), %eax
	addl	$8, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -112(%ebp)
	movl	%edi, -108(%ebp)
	movl	-20(%ebp), %eax
	addl	$8, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-112(%ebp), %eax
	andl	%esi, %eax
	movl	-108(%ebp), %edx
	andl	%edi, %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-24(%ebp), %ecx
	addl	$16, %ecx
	movl	-24(%ebp), %eax
	addl	$16, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -104(%ebp)
	movl	%edi, -100(%ebp)
	movl	-20(%ebp), %eax
	addl	$16, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-104(%ebp), %eax
	andl	%esi, %eax
	movl	-100(%ebp), %edx
	andl	%edi, %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
.LBE9:
	.loc 1 509 0
	addl	$1, -80(%ebp)
.L102:
	movl	max_allocno@GOTOFF(%ebx), %eax
	cmpl	-80(%ebp), %eax
	ja	.L103
	.loc 1 521 0
	call	expand_preferences
	.loc 1 525 0
	movl	max_allocno@GOTOFF(%ebx), %eax
	sall	$2, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, allocno_order@GOTOFF(%ebx)
	.loc 1 526 0
	movl	$0, -80(%ebp)
	jmp	.L105
.L106:
	.loc 1 527 0
	movl	-80(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	allocno_order@GOTOFF(%ebx), %eax
	addl	%eax, %edx
	movl	-80(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 526 0
	addl	$1, -80(%ebp)
.L105:
	movl	max_allocno@GOTOFF(%ebx), %eax
	cmpl	-80(%ebp), %eax
	ja	.L106
	.loc 1 536 0
	movl	$0, -80(%ebp)
	jmp	.L108
.L109:
	.loc 1 538 0
	movl	-80(%ebp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	allocno@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	jne	.L110
	.loc 1 539 0
	movl	-80(%ebp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	allocno@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	$1, 4(%eax)
.L110:
	.loc 1 540 0
	movl	-80(%ebp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	allocno@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	jne	.L112
	.loc 1 541 0
	movl	-80(%ebp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	allocno@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	$-1, 20(%eax)
.L112:
	.loc 1 536 0
	addl	$1, -80(%ebp)
.L108:
	movl	max_allocno@GOTOFF(%ebx), %eax
	cmpl	-80(%ebp), %eax
	ja	.L109
	.loc 1 544 0
	movl	max_allocno@GOTOFF(%ebx), %eax
	movl	%eax, %edx
	movl	allocno_order@GOTOFF(%ebx), %ecx
	leal	allocno_compare@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	movl	$4, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	qsort@PLT
	.loc 1 546 0
	call	prune_preferences
	.loc 1 548 0
	cmpl	$0, 8(%ebp)
	je	.L115
	.loc 1 549 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dump_conflicts
.L115:
	.loc 1 554 0
	movl	$0, -80(%ebp)
	jmp	.L117
.L118:
	.loc 1 555 0
	movl	-80(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	allocno_order@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	allocno@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movl	reg_renumber@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movzwl	(%eax), %eax
	testw	%ax, %ax
	jns	.L119
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	-80(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	allocno_order@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	allocno@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	16(%ecx,%eax,4), %eax
	movl	28(%eax), %eax
	testl	%eax, %eax
	js	.L119
	.loc 1 563 0
	movl	-80(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	allocno_order@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	find_reg
	.loc 1 564 0
	movl	-80(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	allocno_order@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	allocno@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movl	reg_renumber@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movzwl	(%eax), %eax
	testw	%ax, %ax
	jns	.L119
	.loc 1 567 0
	movl	-80(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	allocno_order@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	allocno@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	reg_alternate_class@PLT
	testl	%eax, %eax
	je	.L119
	.loc 1 568 0
	movl	-80(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	allocno_order@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	movl	$1, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	find_reg
.L119:
	.loc 1 554 0
	addl	$1, -80(%ebp)
.L117:
	movl	max_allocno@GOTOFF(%ebx), %eax
	cmpl	-80(%ebp), %eax
	ja	.L118
	.loc 1 571 0
	movl	allocno_order@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	free@PLT
.L100:
	.loc 1 582 0
	call	get_insns@PLT
	movl	%eax, (%esp)
	call	build_insn_chain@PLT
	.loc 1 583 0
	call	get_insns@PLT
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	reload@PLT
	movl	%eax, -88(%ebp)
	.loc 1 587 0
	movl	reg_allocno@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 588 0
	movl	reg_may_share@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 589 0
	movl	allocno@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 590 0
	movl	conflicts@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 591 0
	movl	allocnos_live@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 593 0
	movl	-88(%ebp), %eax
	.loc 1 594 0
	addl	$332, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE15:
	.size	global_alloc, .-global_alloc
	.section	.rodata
	.align 8
.LC1:
	.long	0
	.long	1076101120
	.text
	.type	allocno_compare, @function
allocno_compare:
.LFB16:
	.loc 1 603 0
	pushl	%ebp
.LCFI6:
	movl	%esp, %ebp
.LCFI7:
	pushl	%ebx
.LCFI8:
	subl	$36, %esp
.LCFI9:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 604 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 613 0
	movl	-20(%ebp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	allocno@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	12(%eax), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	floor_log2_wide@PLT
	movl	%eax, %ecx
	movl	-20(%ebp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	allocno@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	16(%eax), %eax
	imull	%ecx, %eax
	pushl	%eax
	fildl	(%esp)
	leal	4(%esp), %esp
	movl	-20(%ebp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	allocno@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	20(%eax), %eax
	pushl	%eax
	fildl	(%esp)
	leal	4(%esp), %esp
	fdivrp	%st, %st(1)
	fldl	.LC1@GOTOFF(%ebx)
	fmulp	%st, %st(1)
	movl	-20(%ebp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	allocno@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	4(%eax), %eax
	pushl	%eax
	fildl	(%esp)
	leal	4(%esp), %esp
	fmulp	%st, %st(1)
	fnstcw	-22(%ebp)
	movzwl	-22(%ebp), %eax
	movb	$12, %ah
	movw	%ax, -24(%ebp)
	fldcw	-24(%ebp)
	fistpl	-12(%ebp)
	fldcw	-22(%ebp)
	.loc 1 617 0
	movl	-16(%ebp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	allocno@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	12(%eax), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	floor_log2_wide@PLT
	movl	%eax, %ecx
	movl	-16(%ebp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	allocno@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	16(%eax), %eax
	imull	%ecx, %eax
	pushl	%eax
	fildl	(%esp)
	leal	4(%esp), %esp
	movl	-16(%ebp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	allocno@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	20(%eax), %eax
	pushl	%eax
	fildl	(%esp)
	leal	4(%esp), %esp
	fdivrp	%st, %st(1)
	fldl	.LC1@GOTOFF(%ebx)
	fmulp	%st, %st(1)
	movl	-16(%ebp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	allocno@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	4(%eax), %eax
	pushl	%eax
	fildl	(%esp)
	leal	4(%esp), %esp
	fmulp	%st, %st(1)
	fnstcw	-22(%ebp)
	movzwl	-22(%ebp), %eax
	movb	$12, %ah
	movw	%ax, -24(%ebp)
	fldcw	-24(%ebp)
	fistpl	-8(%ebp)
	fldcw	-22(%ebp)
	.loc 1 618 0
	movl	-8(%ebp), %eax
	cmpl	-12(%ebp), %eax
	je	.L131
	.loc 1 619 0
	movl	-12(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	%eax, %ecx
	subl	%edx, %ecx
	movl	%ecx, -28(%ebp)
	jmp	.L133
.L131:
	.loc 1 623 0
	movl	-16(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	%eax, %ecx
	subl	%edx, %ecx
	movl	%ecx, -28(%ebp)
.L133:
	movl	-28(%ebp), %eax
	.loc 1 624 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE16:
	.size	allocno_compare, .-allocno_compare
	.type	global_conflicts, @function
global_conflicts:
.LFB17:
	.loc 1 631 0
	pushl	%ebp
.LCFI10:
	movl	%esp, %ebp
.LCFI11:
	pushl	%edi
.LCFI12:
	pushl	%esi
.LCFI13:
	pushl	%ebx
.LCFI14:
	subl	$140, %esp
.LCFI15:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 638 0
	movl	max_parallel@GOT(%ebx), %eax
	movl	(%eax), %eax
	sall	$3, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, regs_set@GOTOFF(%ebx)
	.loc 1 640 0
	movl	max_allocno@GOTOFF(%ebx), %eax
	sall	$2, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, -88(%ebp)
	.loc 1 642 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	52(%eax), %eax
	movl	%eax, -96(%ebp)
	jmp	.L136
.L137:
	.loc 1 644 0
	movl	allocno_row_words@GOTOFF(%ebx), %eax
	leal	0(,%eax,8), %edx
	movl	allocnos_live@GOTOFF(%ebx), %eax
	movl	%eax, %edi
	cld
	movl	%edx, %ecx
	movl	$0, %eax
	rep
	stosb
.LBB10:
	.loc 1 661 0
	movl	-96(%ebp), %eax
	movl	32(%eax), %eax
	movl	%eax, -84(%ebp)
	.loc 1 662 0
	movl	$0, -80(%ebp)
.LBB11:
	.loc 1 664 0
	leal	hard_regs_live@GOTOFF(%ebx), %eax
	movl	%eax, -76(%ebp)
	movl	-76(%ebp), %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	-76(%ebp), %eax
	addl	$8, %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	-76(%ebp), %eax
	addl	$16, %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
.LBE11:
	movl	-84(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	hard_regs_live@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	reg_set_to_hard_reg_set@PLT
.LBB12:
	.loc 1 665 0
	movl	-84(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -72(%ebp)
	movl	$1, -68(%ebp)
	movl	$16, -64(%ebp)
	movl	$1, -60(%ebp)
	jmp	.L138
.L139:
	movl	-72(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -72(%ebp)
.L138:
	cmpl	$0, -72(%ebp)
	je	.L140
	movl	-72(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	-68(%ebp), %eax
	jb	.L139
.L140:
	cmpl	$0, -72(%ebp)
	je	.L145
	movl	-72(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	-68(%ebp), %eax
	je	.L145
	movl	$0, -64(%ebp)
	movl	$0, -60(%ebp)
	jmp	.L145
.L148:
.LBB13:
	movl	-60(%ebp), %eax
	movl	-72(%ebp), %edx
	movl	12(%edx,%eax,4), %eax
	movl	%eax, -56(%ebp)
	cmpl	$0, -56(%ebp)
	je	.L149
	jmp	.L151
.L152:
.LBB14:
	movl	-64(%ebp), %ecx
	movl	$1, %eax
	sall	%cl, %eax
	movl	%eax, -52(%ebp)
	movl	-52(%ebp), %eax
	andl	-56(%ebp), %eax
	testl	%eax, %eax
	je	.L153
	movl	-52(%ebp), %eax
	notl	%eax
	andl	%eax, -56(%ebp)
	movl	-72(%ebp), %eax
	movl	8(%eax), %eax
	sall	$2, %eax
	addl	-60(%ebp), %eax
	sall	$5, %eax
	addl	-64(%ebp), %eax
	movl	%eax, -100(%ebp)
.LBB15:
	movl	-100(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_allocno@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -48(%ebp)
	cmpl	$0, -48(%ebp)
	js	.L155
	movl	-48(%ebp), %eax
	movl	%eax, %ecx
	shrl	$6, %ecx
	leal	0(,%ecx,8), %eax
	movl	%eax, %edx
	movl	allocnos_live@GOTOFF(%ebx), %eax
	addl	%eax, %edx
	movl	%edx, -124(%ebp)
	leal	0(,%ecx,8), %eax
	movl	%eax, %edx
	movl	allocnos_live@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	movl	4(%eax), %ecx
	movl	%edx, -120(%ebp)
	movl	%ecx, -116(%ebp)
	movl	-48(%ebp), %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L195
	movl	%esi, %edi
	xorl	%esi, %esi
.L195:
	movl	-120(%ebp), %eax
	orl	%esi, %eax
	movl	-116(%ebp), %edx
	orl	%edi, %edx
	movl	-124(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-80(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	addl	-88(%ebp), %edx
	movl	-48(%ebp), %eax
	movl	%eax, (%edx)
	addl	$1, -80(%ebp)
	jmp	.L157
.L155:
	movl	-100(%ebp), %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movl	reg_renumber@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movzwl	(%eax), %eax
	cwtl
	movl	%eax, -48(%ebp)
	cmpl	$0, -48(%ebp)
	js	.L157
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movl	48(%eax), %edx
	movl	-100(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	mark_reg_live_nc
.L157:
.LBE15:
	cmpl	$0, -56(%ebp)
	je	.L149
.L153:
.LBE14:
	addl	$1, -64(%ebp)
.L151:
	cmpl	$31, -64(%ebp)
	jbe	.L152
.L149:
	movl	$0, -64(%ebp)
.LBE13:
	addl	$1, -60(%ebp)
.L147:
	cmpl	$3, -60(%ebp)
	jbe	.L148
	movl	$0, -60(%ebp)
	movl	-72(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -72(%ebp)
.L145:
	cmpl	$0, -72(%ebp)
	jne	.L147
.LBE12:
	.loc 1 702 0
	movl	-80(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-88(%ebp), %eax
	movl	%eax, (%esp)
	call	record_conflicts
.LBE10:
	.loc 1 726 0
	movl	-96(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -92(%ebp)
.L161:
.LBB16:
	.loc 1 734 0
	movl	-92(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -44(%ebp)
	.loc 1 739 0
	movl	$0, n_regs_set@GOTOFF(%ebx)
	.loc 1 741 0
	cmpl	$42, -44(%ebp)
	je	.L162
	cmpl	$44, -44(%ebp)
	je	.L162
	cmpl	$43, -44(%ebp)
	jne	.L165
.L162:
	.loc 1 762 0
	movl	-92(%ebp), %eax
	movl	44(%eax), %edx
	movl	$0, 8(%esp)
	leal	mark_reg_clobber@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	note_stores@PLT
	.loc 1 766 0
	movl	-92(%ebp), %eax
	movl	68(%eax), %eax
	movl	%eax, -40(%ebp)
	jmp	.L166
.L167:
	.loc 1 767 0
	movl	-40(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	$1, %al
	jne	.L168
	.loc 1 768 0
	movl	-40(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	mark_reg_death
.L168:
	.loc 1 766 0
	movl	-40(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -40(%ebp)
.L166:
	cmpl	$0, -40(%ebp)
	jne	.L167
	.loc 1 775 0
	movl	-92(%ebp), %eax
	movl	44(%eax), %edx
	movl	$0, 8(%esp)
	leal	mark_reg_store@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	note_stores@PLT
	.loc 1 794 0
	movl	-92(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$49, %ax
	jne	.L194
	movl	-92(%ebp), %eax
	movl	%eax, (%esp)
	call	multiple_sets@PLT
	testl	%eax, %eax
	je	.L194
	.loc 1 795 0
	movl	-92(%ebp), %eax
	movl	68(%eax), %eax
	movl	%eax, -40(%ebp)
	jmp	.L174
.L175:
	.loc 1 796 0
	movl	-40(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	$1, %al
	jne	.L176
.LBB17:
	.loc 1 798 0
	movl	$0, -36(%ebp)
	.loc 1 800 0
	movl	-40(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 802 0
	movl	-92(%ebp), %eax
	movl	44(%eax), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	subl	$1, %eax
	movl	%eax, -32(%ebp)
	jmp	.L178
.L179:
.LBB18:
	.loc 1 804 0
	movl	-92(%ebp), %eax
	movl	44(%eax), %eax
	movl	4(%eax), %edx
	movl	-32(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	%eax, -24(%ebp)
	.loc 1 805 0
	movl	-24(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L180
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	je	.L180
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	jne	.L180
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	reg_overlap_mentioned_p@PLT
	testl	%eax, %eax
	je	.L180
	.loc 1 809 0
	movl	$1, -36(%ebp)
.L180:
.LBE18:
	.loc 1 802 0
	subl	$1, -32(%ebp)
.L178:
	cmpl	$0, -32(%ebp)
	jns	.L179
	.loc 1 811 0
	cmpl	$0, -36(%ebp)
	je	.L176
	.loc 1 812 0
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	mark_reg_conflicts
.L176:
.LBE17:
	.loc 1 795 0
	movl	-40(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -40(%ebp)
.L174:
	cmpl	$0, -40(%ebp)
	jne	.L175
	.loc 1 817 0
	jmp	.L194
.L188:
.LBB19:
	.loc 1 820 0
	movl	n_regs_set@GOTOFF(%ebx), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	regs_set@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, 8(%esp)
	movl	$10, 4(%esp)
	movl	-92(%ebp), %eax
	movl	%eax, (%esp)
	call	find_regno_note@PLT
	movl	%eax, -20(%ebp)
	.loc 1 821 0
	cmpl	$0, -20(%ebp)
	je	.L187
	.loc 1 822 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	mark_reg_death
.L187:
.L194:
.LBE19:
	.loc 1 817 0
	movl	n_regs_set@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	setg	%dl
	subl	$1, %eax
	movl	%eax, n_regs_set@GOTOFF(%ebx)
	testb	%dl, %dl
	jne	.L188
.L165:
	.loc 1 826 0
	movl	-96(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-92(%ebp), %eax
	je	.L190
	.loc 1 828 0
	movl	-92(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -92(%ebp)
	.loc 1 829 0
	jmp	.L161
.L190:
.LBE16:
	.loc 1 642 0
	movl	-96(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -96(%ebp)
.L136:
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, -96(%ebp)
	jne	.L137
	.loc 1 833 0
	movl	-88(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 834 0
	movl	regs_set@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 835 0
	addl	$140, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE17:
	.size	global_conflicts, .-global_conflicts
	.type	expand_preferences, @function
expand_preferences:
.LFB18:
	.loc 1 842 0
	pushl	%ebp
.LCFI16:
	movl	%esp, %ebp
.LCFI17:
	pushl	%edi
.LCFI18:
	pushl	%esi
.LCFI19:
	pushl	%ebx
.LCFI20:
	subl	$252, %esp
.LCFI21:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 850 0
	call	get_insns@PLT
	movl	%eax, -84(%ebp)
	jmp	.L197
.L198:
	.loc 1 851 0
	movl	-84(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L199
	movl	-84(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L201
	movl	-84(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L203
	movl	-84(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -244(%ebp)
	jmp	.L205
.L203:
	movl	-84(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	single_set_2@PLT
	movl	%eax, -244(%ebp)
.L205:
	movl	-244(%ebp), %eax
	movl	%eax, -248(%ebp)
	jmp	.L206
.L201:
	movl	$0, -248(%ebp)
.L206:
	movl	-248(%ebp), %edx
	movl	%edx, -76(%ebp)
	cmpl	$0, -76(%ebp)
	je	.L199
	movl	-76(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L199
	movl	-76(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_allocno@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	js	.L199
	.loc 1 855 0
	movl	-84(%ebp), %eax
	movl	68(%eax), %eax
	movl	%eax, -80(%ebp)
	jmp	.L210
.L211:
	.loc 1 856 0
	movl	-80(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	$1, %al
	jne	.L212
	movl	-80(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L212
	movl	-80(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_allocno@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	js	.L212
	movl	-76(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_allocno@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	movl	allocno_row_words@GOTOFF(%ebx), %eax
	imull	%edx, %eax
	movl	%eax, %ecx
	movl	-80(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_allocno@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	shrl	$6, %eax
	leal	(%ecx,%eax), %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	conflicts@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	-80(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_allocno@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	%esi, %eax
	movl	%edi, %edx
	shrdl	%edx, %eax
	sarl	%cl, %edx
	testb	$32, %cl
	je	.L221
	movl	%edx, %eax
	sarl	$31, %edx
.L221:
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L212
.LBB20:
	.loc 1 862 0
	movl	-76(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_allocno@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -72(%ebp)
	.loc 1 863 0
	movl	-80(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_allocno@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -68(%ebp)
	.loc 1 865 0
	movl	-80(%ebp), %eax
	movl	4(%eax), %edx
	movl	-76(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	%eax, %edx
	jne	.L217
.LBB21:
	.loc 1 867 0
	movl	-72(%ebp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	allocno@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	addl	$72, %eax
	movl	%eax, -64(%ebp)
	movl	-68(%ebp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	allocno@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	addl	$72, %eax
	movl	%eax, -60(%ebp)
	movl	-64(%ebp), %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -240(%ebp)
	movl	%edi, -236(%ebp)
	movl	-60(%ebp), %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	-240(%ebp), %eax
	orl	%esi, %eax
	movl	-236(%ebp), %edx
	orl	%edi, %edx
	movl	-64(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-64(%ebp), %ecx
	addl	$8, %ecx
	movl	-64(%ebp), %eax
	addl	$8, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -232(%ebp)
	movl	%edi, -228(%ebp)
	movl	-60(%ebp), %eax
	addl	$8, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	-232(%ebp), %eax
	orl	%esi, %eax
	movl	-228(%ebp), %edx
	orl	%edi, %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-64(%ebp), %ecx
	addl	$16, %ecx
	movl	-64(%ebp), %eax
	addl	$16, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -224(%ebp)
	movl	%edi, -220(%ebp)
	movl	-60(%ebp), %eax
	addl	$16, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	-224(%ebp), %eax
	orl	%esi, %eax
	movl	-220(%ebp), %edx
	orl	%edi, %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
.LBE21:
.LBB22:
	.loc 1 869 0
	movl	-68(%ebp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	allocno@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	addl	$72, %eax
	movl	%eax, -56(%ebp)
	movl	-72(%ebp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	allocno@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	addl	$72, %eax
	movl	%eax, -52(%ebp)
	movl	-56(%ebp), %eax
	movl	(%eax), %edx
	movl	4(%eax), %ecx
	movl	%edx, -216(%ebp)
	movl	%ecx, -212(%ebp)
	movl	-52(%ebp), %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	-216(%ebp), %eax
	orl	%esi, %eax
	movl	-212(%ebp), %edx
	orl	%edi, %edx
	movl	-56(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-56(%ebp), %ecx
	addl	$8, %ecx
	movl	-56(%ebp), %eax
	addl	$8, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -208(%ebp)
	movl	%edi, -204(%ebp)
	movl	-52(%ebp), %eax
	addl	$8, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	-208(%ebp), %eax
	orl	%esi, %eax
	movl	-204(%ebp), %edx
	orl	%edi, %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-56(%ebp), %ecx
	addl	$16, %ecx
	movl	-56(%ebp), %eax
	addl	$16, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -200(%ebp)
	movl	%edi, -196(%ebp)
	movl	-52(%ebp), %eax
	addl	$16, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	-200(%ebp), %eax
	orl	%esi, %eax
	movl	-196(%ebp), %edx
	orl	%edi, %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
.L217:
.LBE22:
.LBB23:
	.loc 1 873 0
	movl	-72(%ebp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	allocno@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	addl	$48, %eax
	movl	%eax, -48(%ebp)
	movl	-68(%ebp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	allocno@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	addl	$48, %eax
	movl	%eax, -44(%ebp)
	movl	-48(%ebp), %eax
	movl	(%eax), %edx
	movl	4(%eax), %ecx
	movl	%edx, -192(%ebp)
	movl	%ecx, -188(%ebp)
	movl	-44(%ebp), %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	-192(%ebp), %eax
	orl	%esi, %eax
	movl	-188(%ebp), %edx
	orl	%edi, %edx
	movl	-48(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-48(%ebp), %ecx
	addl	$8, %ecx
	movl	-48(%ebp), %eax
	addl	$8, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -184(%ebp)
	movl	%edi, -180(%ebp)
	movl	-44(%ebp), %eax
	addl	$8, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	-184(%ebp), %eax
	orl	%esi, %eax
	movl	-180(%ebp), %edx
	orl	%edi, %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-48(%ebp), %ecx
	addl	$16, %ecx
	movl	-48(%ebp), %eax
	addl	$16, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -176(%ebp)
	movl	%edi, -172(%ebp)
	movl	-44(%ebp), %eax
	addl	$16, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	-176(%ebp), %eax
	orl	%esi, %eax
	movl	-172(%ebp), %edx
	orl	%edi, %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
.LBE23:
.LBB24:
	.loc 1 875 0
	movl	-68(%ebp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	allocno@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	addl	$48, %eax
	movl	%eax, -40(%ebp)
	movl	-72(%ebp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	allocno@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	addl	$48, %eax
	movl	%eax, -36(%ebp)
	movl	-40(%ebp), %eax
	movl	(%eax), %edx
	movl	4(%eax), %ecx
	movl	%edx, -168(%ebp)
	movl	%ecx, -164(%ebp)
	movl	-36(%ebp), %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	-168(%ebp), %eax
	orl	%esi, %eax
	movl	-164(%ebp), %edx
	orl	%edi, %edx
	movl	-40(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-40(%ebp), %ecx
	addl	$8, %ecx
	movl	-40(%ebp), %eax
	addl	$8, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -160(%ebp)
	movl	%edi, -156(%ebp)
	movl	-36(%ebp), %eax
	addl	$8, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	-160(%ebp), %eax
	orl	%esi, %eax
	movl	-156(%ebp), %edx
	orl	%edi, %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-40(%ebp), %ecx
	addl	$16, %ecx
	movl	-40(%ebp), %eax
	addl	$16, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -152(%ebp)
	movl	%edi, -148(%ebp)
	movl	-36(%ebp), %eax
	addl	$16, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	-152(%ebp), %eax
	orl	%esi, %eax
	movl	-148(%ebp), %edx
	orl	%edi, %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
.LBE24:
.LBB25:
	.loc 1 877 0
	movl	-72(%ebp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	allocno@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	addl	$96, %eax
	movl	%eax, -32(%ebp)
	movl	-68(%ebp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	allocno@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	addl	$96, %eax
	movl	%eax, -28(%ebp)
	movl	-32(%ebp), %eax
	movl	(%eax), %edx
	movl	4(%eax), %ecx
	movl	%edx, -144(%ebp)
	movl	%ecx, -140(%ebp)
	movl	-28(%ebp), %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	-144(%ebp), %eax
	orl	%esi, %eax
	movl	-140(%ebp), %edx
	orl	%edi, %edx
	movl	-32(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-32(%ebp), %ecx
	addl	$8, %ecx
	movl	-32(%ebp), %eax
	addl	$8, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -136(%ebp)
	movl	%edi, -132(%ebp)
	movl	-28(%ebp), %eax
	addl	$8, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	-136(%ebp), %eax
	orl	%esi, %eax
	movl	-132(%ebp), %edx
	orl	%edi, %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-32(%ebp), %ecx
	addl	$16, %ecx
	movl	-32(%ebp), %eax
	addl	$16, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -128(%ebp)
	movl	%edi, -124(%ebp)
	movl	-28(%ebp), %eax
	addl	$16, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	-128(%ebp), %eax
	orl	%esi, %eax
	movl	-124(%ebp), %edx
	orl	%edi, %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
.LBE25:
.LBB26:
	.loc 1 879 0
	movl	-68(%ebp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	allocno@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	addl	$96, %eax
	movl	%eax, -24(%ebp)
	movl	-72(%ebp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	allocno@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	addl	$96, %eax
	movl	%eax, -20(%ebp)
	movl	-24(%ebp), %eax
	movl	(%eax), %edx
	movl	4(%eax), %ecx
	movl	%edx, -120(%ebp)
	movl	%ecx, -116(%ebp)
	movl	-20(%ebp), %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	-120(%ebp), %eax
	orl	%esi, %eax
	movl	-116(%ebp), %edx
	orl	%edi, %edx
	movl	-24(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-24(%ebp), %ecx
	addl	$8, %ecx
	movl	-24(%ebp), %eax
	addl	$8, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -112(%ebp)
	movl	%edi, -108(%ebp)
	movl	-20(%ebp), %eax
	addl	$8, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	-112(%ebp), %eax
	orl	%esi, %eax
	movl	-108(%ebp), %edx
	orl	%edi, %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-24(%ebp), %ecx
	addl	$16, %ecx
	movl	-24(%ebp), %eax
	addl	$16, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -104(%ebp)
	movl	%edi, -100(%ebp)
	movl	-20(%ebp), %eax
	addl	$16, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	-104(%ebp), %eax
	orl	%esi, %eax
	movl	-100(%ebp), %edx
	orl	%edi, %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
.L212:
.LBE26:
.LBE20:
	.loc 1 855 0
	movl	-80(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -80(%ebp)
.L210:
	cmpl	$0, -80(%ebp)
	jne	.L211
.L199:
	.loc 1 850 0
	movl	-84(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -84(%ebp)
.L197:
	cmpl	$0, -84(%ebp)
	jne	.L198
	.loc 1 882 0
	addl	$252, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE18:
	.size	expand_preferences, .-expand_preferences
	.type	prune_preferences, @function
prune_preferences:
.LFB19:
	.loc 1 893 0
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
	subl	$444, %esp
.LCFI27:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 896 0
	movl	max_allocno@GOTOFF(%ebx), %eax
	sall	$2, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, -140(%ebp)
	.loc 1 903 0
	movl	max_allocno@GOTOFF(%ebx), %eax
	subl	$1, %eax
	movl	%eax, -148(%ebp)
	jmp	.L223
.L224:
.LBB27:
	.loc 1 907 0
	movl	-148(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	allocno_order@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -144(%ebp)
	.loc 1 908 0
	movl	-144(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	addl	-140(%ebp), %edx
	movl	-148(%ebp), %eax
	movl	%eax, (%edx)
.LBB28:
	.loc 1 909 0
	leal	-184(%ebp), %eax
	movl	%eax, -136(%ebp)
	movl	-144(%ebp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	allocno@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	addl	$24, %eax
	movl	%eax, -132(%ebp)
	movl	-132(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	-136(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-136(%ebp), %ecx
	addl	$8, %ecx
	movl	-132(%ebp), %eax
	addl	$8, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-136(%ebp), %ecx
	addl	$16, %ecx
	movl	-132(%ebp), %eax
	addl	$16, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
.LBE28:
	.loc 1 911 0
	movl	-144(%ebp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	allocno@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	jne	.L225
.LBB29:
	.loc 1 912 0
	leal	-184(%ebp), %eax
	movl	%eax, -128(%ebp)
	movl	fixed_reg_set@GOT(%ebx), %eax
	movl	%eax, -124(%ebp)
	movl	-128(%ebp), %eax
	movl	(%eax), %edx
	movl	4(%eax), %ecx
	movl	%edx, -448(%ebp)
	movl	%ecx, -444(%ebp)
	movl	-124(%ebp), %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	-448(%ebp), %eax
	orl	%esi, %eax
	movl	-444(%ebp), %edx
	orl	%edi, %edx
	movl	-128(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-128(%ebp), %ecx
	addl	$8, %ecx
	movl	-128(%ebp), %eax
	addl	$8, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -440(%ebp)
	movl	%edi, -436(%ebp)
	movl	-124(%ebp), %eax
	addl	$8, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	-440(%ebp), %eax
	orl	%esi, %eax
	movl	-436(%ebp), %edx
	orl	%edi, %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-128(%ebp), %ecx
	addl	$16, %ecx
	movl	-128(%ebp), %eax
	addl	$16, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -432(%ebp)
	movl	%edi, -428(%ebp)
	movl	-124(%ebp), %eax
	addl	$16, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	-432(%ebp), %eax
	orl	%esi, %eax
	movl	-428(%ebp), %edx
	orl	%edi, %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	jmp	.L227
.L225:
.LBE29:
.LBB30:
	.loc 1 914 0
	leal	-184(%ebp), %eax
	movl	%eax, -120(%ebp)
	movl	call_used_reg_set@GOT(%ebx), %eax
	movl	%eax, -116(%ebp)
	movl	-120(%ebp), %eax
	movl	(%eax), %edx
	movl	4(%eax), %ecx
	movl	%edx, -424(%ebp)
	movl	%ecx, -420(%ebp)
	movl	-116(%ebp), %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	-424(%ebp), %eax
	orl	%esi, %eax
	movl	-420(%ebp), %edx
	orl	%edi, %edx
	movl	-120(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-120(%ebp), %ecx
	addl	$8, %ecx
	movl	-120(%ebp), %eax
	addl	$8, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -416(%ebp)
	movl	%edi, -412(%ebp)
	movl	-116(%ebp), %eax
	addl	$8, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	-416(%ebp), %eax
	orl	%esi, %eax
	movl	-412(%ebp), %edx
	orl	%edi, %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-120(%ebp), %ecx
	addl	$16, %ecx
	movl	-120(%ebp), %eax
	addl	$16, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -408(%ebp)
	movl	%edi, -404(%ebp)
	movl	-116(%ebp), %eax
	addl	$16, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	-408(%ebp), %eax
	orl	%esi, %eax
	movl	-404(%ebp), %edx
	orl	%edi, %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
.L227:
.LBE30:
.LBB31:
	.loc 1 916 0
	leal	-184(%ebp), %eax
	movl	%eax, -112(%ebp)
	movl	-144(%ebp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	allocno@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	reg_preferred_class@PLT
	movl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	reg_class_contents@GOT(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -108(%ebp)
	movl	-112(%ebp), %eax
	movl	(%eax), %edx
	movl	4(%eax), %ecx
	movl	%edx, -400(%ebp)
	movl	%ecx, -396(%ebp)
	movl	-108(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-400(%ebp), %eax
	orl	%esi, %eax
	movl	-396(%ebp), %edx
	orl	%edi, %edx
	movl	-112(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-112(%ebp), %ecx
	addl	$8, %ecx
	movl	-112(%ebp), %eax
	addl	$8, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -392(%ebp)
	movl	%edi, -388(%ebp)
	movl	-108(%ebp), %eax
	addl	$8, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-392(%ebp), %eax
	orl	%esi, %eax
	movl	-388(%ebp), %edx
	orl	%edi, %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-112(%ebp), %ecx
	addl	$16, %ecx
	movl	-112(%ebp), %eax
	addl	$16, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -384(%ebp)
	movl	%edi, -380(%ebp)
	movl	-108(%ebp), %eax
	addl	$16, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-384(%ebp), %eax
	orl	%esi, %eax
	movl	-380(%ebp), %edx
	orl	%edi, %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
.LBE31:
.LBB32:
	.loc 1 920 0
	movl	-144(%ebp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	allocno@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	addl	$48, %eax
	movl	%eax, -104(%ebp)
	leal	-184(%ebp), %eax
	movl	%eax, -100(%ebp)
	movl	-104(%ebp), %eax
	movl	(%eax), %edx
	movl	4(%eax), %ecx
	movl	%edx, -376(%ebp)
	movl	%ecx, -372(%ebp)
	movl	-100(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-376(%ebp), %eax
	andl	%esi, %eax
	movl	-372(%ebp), %edx
	andl	%edi, %edx
	movl	-104(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-104(%ebp), %ecx
	addl	$8, %ecx
	movl	-104(%ebp), %eax
	addl	$8, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -368(%ebp)
	movl	%edi, -364(%ebp)
	movl	-100(%ebp), %eax
	addl	$8, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-368(%ebp), %eax
	andl	%esi, %eax
	movl	-364(%ebp), %edx
	andl	%edi, %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-104(%ebp), %ecx
	addl	$16, %ecx
	movl	-104(%ebp), %eax
	addl	$16, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -360(%ebp)
	movl	%edi, -356(%ebp)
	movl	-100(%ebp), %eax
	addl	$16, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-360(%ebp), %eax
	andl	%esi, %eax
	movl	-356(%ebp), %edx
	andl	%edi, %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
.LBE32:
.LBB33:
	.loc 1 921 0
	movl	-144(%ebp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	allocno@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	addl	$72, %eax
	movl	%eax, -96(%ebp)
	leal	-184(%ebp), %eax
	movl	%eax, -92(%ebp)
	movl	-96(%ebp), %eax
	movl	(%eax), %edx
	movl	4(%eax), %ecx
	movl	%edx, -352(%ebp)
	movl	%ecx, -348(%ebp)
	movl	-92(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-352(%ebp), %eax
	andl	%esi, %eax
	movl	-348(%ebp), %edx
	andl	%edi, %edx
	movl	-96(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-96(%ebp), %ecx
	addl	$8, %ecx
	movl	-96(%ebp), %eax
	addl	$8, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -344(%ebp)
	movl	%edi, -340(%ebp)
	movl	-92(%ebp), %eax
	addl	$8, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-344(%ebp), %eax
	andl	%esi, %eax
	movl	-340(%ebp), %edx
	andl	%edi, %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-96(%ebp), %ecx
	addl	$16, %ecx
	movl	-96(%ebp), %eax
	addl	$16, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -336(%ebp)
	movl	%edi, -332(%ebp)
	movl	-92(%ebp), %eax
	addl	$16, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-336(%ebp), %eax
	andl	%esi, %eax
	movl	-332(%ebp), %edx
	andl	%edi, %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
.LBE33:
.LBB34:
	.loc 1 922 0
	movl	-144(%ebp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	allocno@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	addl	$96, %eax
	movl	%eax, -88(%ebp)
	leal	-184(%ebp), %eax
	movl	%eax, -84(%ebp)
	movl	-88(%ebp), %eax
	movl	(%eax), %edx
	movl	4(%eax), %ecx
	movl	%edx, -328(%ebp)
	movl	%ecx, -324(%ebp)
	movl	-84(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-328(%ebp), %eax
	andl	%esi, %eax
	movl	-324(%ebp), %edx
	andl	%edi, %edx
	movl	-88(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-88(%ebp), %ecx
	addl	$8, %ecx
	movl	-88(%ebp), %eax
	addl	$8, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -320(%ebp)
	movl	%edi, -316(%ebp)
	movl	-84(%ebp), %eax
	addl	$8, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-320(%ebp), %eax
	andl	%esi, %eax
	movl	-316(%ebp), %edx
	andl	%edi, %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-88(%ebp), %ecx
	addl	$16, %ecx
	movl	-88(%ebp), %eax
	addl	$16, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -312(%ebp)
	movl	%edi, -308(%ebp)
	movl	-84(%ebp), %eax
	addl	$16, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-312(%ebp), %eax
	andl	%esi, %eax
	movl	-308(%ebp), %edx
	andl	%edi, %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
.LBE34:
.LBE27:
	.loc 1 903 0
	subl	$1, -148(%ebp)
.L223:
	cmpl	$0, -148(%ebp)
	jns	.L224
	.loc 1 925 0
	movl	max_allocno@GOTOFF(%ebx), %eax
	subl	$1, %eax
	movl	%eax, -148(%ebp)
	jmp	.L229
.L230:
.LBB35:
	.loc 1 935 0
	movl	-148(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	allocno_order@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -144(%ebp)
.LBB36:
	.loc 1 937 0
	leal	-184(%ebp), %eax
	movl	%eax, -76(%ebp)
	movl	-76(%ebp), %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	-76(%ebp), %eax
	addl	$8, %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	-76(%ebp), %eax
	addl	$16, %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
.LBE36:
.LBB37:
	.loc 1 938 0
	leal	-208(%ebp), %eax
	movl	%eax, -72(%ebp)
	movl	-72(%ebp), %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	-72(%ebp), %eax
	addl	$8, %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	-72(%ebp), %eax
	addl	$16, %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
.LBE37:
.LBB38:
	.loc 1 940 0
	movl	allocno_row_words@GOTOFF(%ebx), %eax
	imull	-144(%ebp), %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	conflicts@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -60(%ebp)
	movl	allocno_row_words@GOTOFF(%ebx), %eax
	subl	$1, %eax
	movl	%eax, -68(%ebp)
	movl	$0, -64(%ebp)
	jmp	.L231
.L232:
.LBB39:
	movl	-60(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, -160(%ebp)
	movl	%edx, -156(%ebp)
	addl	$8, -60(%ebp)
	movl	-64(%ebp), %eax
	movl	%eax, -80(%ebp)
	jmp	.L233
.L234:
	movl	-160(%ebp), %eax
	andl	$1, %eax
	movl	-156(%ebp), %edx
	andl	$0, %edx
	testl	%eax, %eax
	je	.L235
	movl	-80(%ebp), %eax
	sall	$2, %eax
	addl	-140(%ebp), %eax
	movl	(%eax), %eax
	cmpl	-148(%ebp), %eax
	jle	.L235
	movl	-80(%ebp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	allocno@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	4(%eax), %ecx
	movl	-144(%ebp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	allocno@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %ecx
	jg	.L238
.LBB40:
	leal	-184(%ebp), %eax
	movl	%eax, -56(%ebp)
	movl	-80(%ebp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	allocno@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	addl	$96, %eax
	movl	%eax, -52(%ebp)
	movl	-56(%ebp), %eax
	movl	(%eax), %edx
	movl	4(%eax), %ecx
	movl	%edx, -304(%ebp)
	movl	%ecx, -300(%ebp)
	movl	-52(%ebp), %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	-304(%ebp), %eax
	orl	%esi, %eax
	movl	-300(%ebp), %edx
	orl	%edi, %edx
	movl	-56(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-56(%ebp), %ecx
	addl	$8, %ecx
	movl	-56(%ebp), %eax
	addl	$8, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -296(%ebp)
	movl	%edi, -292(%ebp)
	movl	-52(%ebp), %eax
	addl	$8, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	-296(%ebp), %eax
	orl	%esi, %eax
	movl	-292(%ebp), %edx
	orl	%edi, %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-56(%ebp), %ecx
	addl	$16, %ecx
	movl	-56(%ebp), %eax
	addl	$16, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -288(%ebp)
	movl	%edi, -284(%ebp)
	movl	-52(%ebp), %eax
	addl	$16, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	-288(%ebp), %eax
	orl	%esi, %eax
	movl	-284(%ebp), %edx
	orl	%edi, %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	jmp	.L235
.L238:
.LBE40:
.LBB41:
	leal	-208(%ebp), %eax
	movl	%eax, -48(%ebp)
	movl	-80(%ebp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	allocno@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	addl	$96, %eax
	movl	%eax, -44(%ebp)
	movl	-48(%ebp), %eax
	movl	(%eax), %edx
	movl	4(%eax), %ecx
	movl	%edx, -280(%ebp)
	movl	%ecx, -276(%ebp)
	movl	-44(%ebp), %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	-280(%ebp), %eax
	orl	%esi, %eax
	movl	-276(%ebp), %edx
	orl	%edi, %edx
	movl	-48(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-48(%ebp), %ecx
	addl	$8, %ecx
	movl	-48(%ebp), %eax
	addl	$8, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -272(%ebp)
	movl	%edi, -268(%ebp)
	movl	-44(%ebp), %eax
	addl	$8, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	-272(%ebp), %eax
	orl	%esi, %eax
	movl	-268(%ebp), %edx
	orl	%edi, %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-48(%ebp), %ecx
	addl	$16, %ecx
	movl	-48(%ebp), %eax
	addl	$16, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -264(%ebp)
	movl	%edi, -260(%ebp)
	movl	-44(%ebp), %eax
	addl	$16, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	-264(%ebp), %eax
	orl	%esi, %eax
	movl	-260(%ebp), %edx
	orl	%edi, %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
.L235:
.LBE41:
	movl	-160(%ebp), %eax
	movl	-156(%ebp), %edx
	shrdl	$1, %edx, %eax
	shrl	%edx
	movl	%eax, -160(%ebp)
	movl	%edx, -156(%ebp)
	addl	$1, -80(%ebp)
.L233:
	movl	-160(%ebp), %eax
	orl	-156(%ebp), %eax
	testl	%eax, %eax
	jne	.L234
.LBE39:
	subl	$1, -68(%ebp)
	addl	$64, -64(%ebp)
.L231:
	cmpl	$0, -68(%ebp)
	jns	.L232
.LBE38:
.LBB42:
	.loc 1 954 0
	leal	-184(%ebp), %eax
	movl	%eax, -40(%ebp)
	movl	-144(%ebp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	allocno@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	addl	$96, %eax
	movl	%eax, -36(%ebp)
	movl	-40(%ebp), %eax
	movl	(%eax), %edx
	movl	4(%eax), %ecx
	movl	%edx, -256(%ebp)
	movl	%ecx, -252(%ebp)
	movl	-36(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-256(%ebp), %eax
	andl	%esi, %eax
	movl	-252(%ebp), %edx
	andl	%edi, %edx
	movl	-40(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-40(%ebp), %ecx
	addl	$8, %ecx
	movl	-40(%ebp), %eax
	addl	$8, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -248(%ebp)
	movl	%edi, -244(%ebp)
	movl	-36(%ebp), %eax
	addl	$8, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-248(%ebp), %eax
	andl	%esi, %eax
	movl	-244(%ebp), %edx
	andl	%edi, %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-40(%ebp), %ecx
	addl	$16, %ecx
	movl	-40(%ebp), %eax
	addl	$16, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -240(%ebp)
	movl	%edi, -236(%ebp)
	movl	-36(%ebp), %eax
	addl	$16, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-240(%ebp), %eax
	andl	%esi, %eax
	movl	-236(%ebp), %edx
	andl	%edi, %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
.LBE42:
.LBB43:
	.loc 1 955 0
	leal	-184(%ebp), %eax
	movl	%eax, -32(%ebp)
	leal	-208(%ebp), %eax
	movl	%eax, -28(%ebp)
	movl	-32(%ebp), %eax
	movl	(%eax), %edx
	movl	4(%eax), %ecx
	movl	%edx, -232(%ebp)
	movl	%ecx, -228(%ebp)
	movl	-28(%ebp), %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	-232(%ebp), %eax
	orl	%esi, %eax
	movl	-228(%ebp), %edx
	orl	%edi, %edx
	movl	-32(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-32(%ebp), %ecx
	addl	$8, %ecx
	movl	-32(%ebp), %eax
	addl	$8, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -224(%ebp)
	movl	%edi, -220(%ebp)
	movl	-28(%ebp), %eax
	addl	$8, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	-224(%ebp), %eax
	orl	%esi, %eax
	movl	-220(%ebp), %edx
	orl	%edi, %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-32(%ebp), %ecx
	addl	$16, %ecx
	movl	-32(%ebp), %eax
	addl	$16, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -216(%ebp)
	movl	%edi, -212(%ebp)
	movl	-28(%ebp), %eax
	addl	$16, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	-216(%ebp), %eax
	orl	%esi, %eax
	movl	-212(%ebp), %edx
	orl	%edi, %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
.LBE43:
.LBB44:
	.loc 1 956 0
	movl	-144(%ebp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	allocno@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	addl	$120, %eax
	movl	%eax, -24(%ebp)
	leal	-184(%ebp), %eax
	movl	%eax, -20(%ebp)
	movl	-20(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	-24(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-24(%ebp), %ecx
	addl	$8, %ecx
	movl	-20(%ebp), %eax
	addl	$8, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-24(%ebp), %ecx
	addl	$16, %ecx
	movl	-20(%ebp), %eax
	addl	$16, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
.LBE44:
.LBE35:
	.loc 1 925 0
	subl	$1, -148(%ebp)
.L229:
	cmpl	$0, -148(%ebp)
	jns	.L230
	.loc 1 958 0
	movl	-140(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 959 0
	addl	$444, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE19:
	.size	prune_preferences, .-prune_preferences
	.type	find_reg, @function
find_reg:
.LFB20:
	.loc 1 986 0
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
	subl	$732, %esp
.LCFI33:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 992 0
	cmpl	$0, 16(%ebp)
	je	.L245
	movl	8(%ebp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	allocno@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	reg_alternate_class@PLT
	movl	%eax, -708(%ebp)
	jmp	.L247
.L245:
	movl	8(%ebp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	allocno@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	reg_preferred_class@PLT
	movl	%eax, -708(%ebp)
.L247:
	movl	-708(%ebp), %eax
	movl	%eax, -248(%ebp)
	.loc 1 993 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movl	48(%eax), %ecx
	movl	8(%ebp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	allocno@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %eax
	movl	(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -244(%ebp)
	.loc 1 995 0
	cmpl	$0, 20(%ebp)
	je	.L248
.LBB45:
	.loc 1 996 0
	leal	-336(%ebp), %eax
	movl	%eax, -240(%ebp)
	movl	call_fixed_reg_set@GOT(%ebx), %eax
	movl	%eax, -236(%ebp)
	movl	-236(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	-240(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-240(%ebp), %ecx
	addl	$8, %ecx
	movl	-236(%ebp), %eax
	addl	$8, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-240(%ebp), %ecx
	addl	$16, %ecx
	movl	-236(%ebp), %eax
	addl	$16, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	jmp	.L250
.L248:
.LBE45:
	.loc 1 997 0
	movl	8(%ebp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	allocno@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	jne	.L251
.LBB46:
	.loc 1 998 0
	leal	-336(%ebp), %eax
	movl	%eax, -232(%ebp)
	movl	fixed_reg_set@GOT(%ebx), %eax
	movl	%eax, -228(%ebp)
	movl	-228(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	-232(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-232(%ebp), %ecx
	addl	$8, %ecx
	movl	-228(%ebp), %eax
	addl	$8, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-232(%ebp), %ecx
	addl	$16, %ecx
	movl	-228(%ebp), %eax
	addl	$16, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	jmp	.L250
.L251:
.LBE46:
.LBB47:
	.loc 1 1000 0
	leal	-336(%ebp), %eax
	movl	%eax, -224(%ebp)
	movl	call_used_reg_set@GOT(%ebx), %eax
	movl	%eax, -220(%ebp)
	movl	-220(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	-224(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-224(%ebp), %ecx
	addl	$8, %ecx
	movl	-220(%ebp), %eax
	addl	$8, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-224(%ebp), %ecx
	addl	$16, %ecx
	movl	-220(%ebp), %eax
	addl	$16, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
.L250:
.LBE47:
.LBB48:
	.loc 1 1003 0
	leal	-336(%ebp), %eax
	movl	%eax, -216(%ebp)
	leal	no_global_alloc_regs@GOTOFF(%ebx), %eax
	movl	%eax, -212(%ebp)
	movl	-216(%ebp), %eax
	movl	(%eax), %edx
	movl	4(%eax), %ecx
	movl	%edx, -704(%ebp)
	movl	%ecx, -700(%ebp)
	movl	-212(%ebp), %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	-704(%ebp), %eax
	orl	%esi, %eax
	movl	-700(%ebp), %edx
	orl	%edi, %edx
	movl	-216(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-216(%ebp), %ecx
	addl	$8, %ecx
	movl	-216(%ebp), %eax
	addl	$8, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -696(%ebp)
	movl	%edi, -692(%ebp)
	movl	-212(%ebp), %eax
	addl	$8, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	-696(%ebp), %eax
	orl	%esi, %eax
	movl	-692(%ebp), %edx
	orl	%edi, %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-216(%ebp), %ecx
	addl	$16, %ecx
	movl	-216(%ebp), %eax
	addl	$16, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -688(%ebp)
	movl	%edi, -684(%ebp)
	movl	-212(%ebp), %eax
	addl	$16, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	-688(%ebp), %eax
	orl	%esi, %eax
	movl	-684(%ebp), %edx
	orl	%edi, %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
.LBE48:
	.loc 1 1004 0
	cmpl	$0, 12(%ebp)
	je	.L253
.LBB49:
	.loc 1 1005 0
	leal	-336(%ebp), %eax
	movl	%eax, -208(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -204(%ebp)
	movl	-208(%ebp), %eax
	movl	(%eax), %edx
	movl	4(%eax), %ecx
	movl	%edx, -680(%ebp)
	movl	%ecx, -676(%ebp)
	movl	-204(%ebp), %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	-680(%ebp), %eax
	orl	%esi, %eax
	movl	-676(%ebp), %edx
	orl	%edi, %edx
	movl	-208(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-208(%ebp), %ecx
	addl	$8, %ecx
	movl	-208(%ebp), %eax
	addl	$8, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -672(%ebp)
	movl	%edi, -668(%ebp)
	movl	-204(%ebp), %eax
	addl	$8, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	-672(%ebp), %eax
	orl	%esi, %eax
	movl	-668(%ebp), %edx
	orl	%edi, %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-208(%ebp), %ecx
	addl	$16, %ecx
	movl	-208(%ebp), %eax
	addl	$16, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -664(%ebp)
	movl	%edi, -660(%ebp)
	movl	-204(%ebp), %eax
	addl	$16, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	-664(%ebp), %eax
	orl	%esi, %eax
	movl	-660(%ebp), %edx
	orl	%edi, %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
.L253:
.LBE49:
.LBB50:
	.loc 1 1007 0
	leal	-336(%ebp), %eax
	movl	%eax, -200(%ebp)
	movl	-248(%ebp), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	reg_class_contents@GOT(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -196(%ebp)
	movl	-200(%ebp), %eax
	movl	(%eax), %edx
	movl	4(%eax), %ecx
	movl	%edx, -656(%ebp)
	movl	%ecx, -652(%ebp)
	movl	-196(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-656(%ebp), %eax
	orl	%esi, %eax
	movl	-652(%ebp), %edx
	orl	%edi, %edx
	movl	-200(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-200(%ebp), %ecx
	addl	$8, %ecx
	movl	-200(%ebp), %eax
	addl	$8, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -648(%ebp)
	movl	%edi, -644(%ebp)
	movl	-196(%ebp), %eax
	addl	$8, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-648(%ebp), %eax
	orl	%esi, %eax
	movl	-644(%ebp), %edx
	orl	%edi, %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-200(%ebp), %ecx
	addl	$16, %ecx
	movl	-200(%ebp), %eax
	addl	$16, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -640(%ebp)
	movl	%edi, -636(%ebp)
	movl	-196(%ebp), %eax
	addl	$16, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-640(%ebp), %eax
	orl	%esi, %eax
	movl	-636(%ebp), %edx
	orl	%edi, %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
.LBE50:
.LBB51:
	.loc 1 1008 0
	leal	-360(%ebp), %eax
	movl	%eax, -192(%ebp)
	leal	-336(%ebp), %eax
	movl	%eax, -188(%ebp)
	movl	-188(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	-192(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-192(%ebp), %ecx
	addl	$8, %ecx
	movl	-188(%ebp), %eax
	addl	$8, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-192(%ebp), %ecx
	addl	$16, %ecx
	movl	-188(%ebp), %eax
	addl	$16, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
.LBE51:
.LBB52:
	.loc 1 1010 0
	leal	-336(%ebp), %eax
	movl	%eax, -184(%ebp)
	movl	8(%ebp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	allocno@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	addl	$24, %eax
	movl	%eax, -180(%ebp)
	movl	-184(%ebp), %eax
	movl	(%eax), %edx
	movl	4(%eax), %ecx
	movl	%edx, -632(%ebp)
	movl	%ecx, -628(%ebp)
	movl	-180(%ebp), %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	-632(%ebp), %eax
	orl	%esi, %eax
	movl	-628(%ebp), %edx
	orl	%edi, %edx
	movl	-184(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-184(%ebp), %ecx
	addl	$8, %ecx
	movl	-184(%ebp), %eax
	addl	$8, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -624(%ebp)
	movl	%edi, -620(%ebp)
	movl	-180(%ebp), %eax
	addl	$8, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	-624(%ebp), %eax
	orl	%esi, %eax
	movl	-620(%ebp), %edx
	orl	%edi, %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-184(%ebp), %ecx
	addl	$16, %ecx
	movl	-184(%ebp), %eax
	addl	$16, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -616(%ebp)
	movl	%edi, -612(%ebp)
	movl	-180(%ebp), %eax
	addl	$16, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	-616(%ebp), %eax
	orl	%esi, %eax
	movl	-612(%ebp), %edx
	orl	%edi, %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
.LBE52:
	.loc 1 1013 0
	movl	8(%ebp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	allocno@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%esp)
	movl	-244(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-336(%ebp), %eax
	movl	%eax, (%esp)
	call	cannot_change_mode_set_regs@PLT
.LBB53:
	.loc 1 1022 0
	leal	-312(%ebp), %eax
	movl	%eax, -176(%ebp)
	leal	-336(%ebp), %eax
	movl	%eax, -172(%ebp)
	movl	-172(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	-176(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-176(%ebp), %ecx
	addl	$8, %ecx
	movl	-172(%ebp), %eax
	addl	$8, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-176(%ebp), %ecx
	addl	$16, %ecx
	movl	-172(%ebp), %eax
	addl	$16, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
.LBE53:
.LBB54:
	.loc 1 1023 0
	leal	-312(%ebp), %eax
	movl	%eax, -168(%ebp)
	leal	regs_used_so_far@GOTOFF(%ebx), %eax
	movl	%eax, -164(%ebp)
	movl	-168(%ebp), %eax
	movl	(%eax), %edx
	movl	4(%eax), %ecx
	movl	%edx, -608(%ebp)
	movl	%ecx, -604(%ebp)
	movl	-164(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-608(%ebp), %eax
	orl	%esi, %eax
	movl	-604(%ebp), %edx
	orl	%edi, %edx
	movl	-168(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-168(%ebp), %ecx
	addl	$8, %ecx
	movl	-168(%ebp), %eax
	addl	$8, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -600(%ebp)
	movl	%edi, -596(%ebp)
	movl	-164(%ebp), %eax
	addl	$8, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-600(%ebp), %eax
	orl	%esi, %eax
	movl	-596(%ebp), %edx
	orl	%edi, %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-168(%ebp), %ecx
	addl	$16, %ecx
	movl	-168(%ebp), %eax
	addl	$16, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -592(%ebp)
	movl	%edi, -588(%ebp)
	movl	-164(%ebp), %eax
	addl	$16, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-592(%ebp), %eax
	orl	%esi, %eax
	movl	-588(%ebp), %edx
	orl	%edi, %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
.LBE54:
.LBB55:
	.loc 1 1024 0
	leal	-312(%ebp), %eax
	movl	%eax, -160(%ebp)
	movl	8(%ebp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	allocno@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	addl	$120, %eax
	movl	%eax, -156(%ebp)
	movl	-160(%ebp), %eax
	movl	(%eax), %edx
	movl	4(%eax), %ecx
	movl	%edx, -584(%ebp)
	movl	%ecx, -580(%ebp)
	movl	-156(%ebp), %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	-584(%ebp), %eax
	orl	%esi, %eax
	movl	-580(%ebp), %edx
	orl	%edi, %edx
	movl	-160(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-160(%ebp), %ecx
	addl	$8, %ecx
	movl	-160(%ebp), %eax
	addl	$8, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -576(%ebp)
	movl	%edi, -572(%ebp)
	movl	-156(%ebp), %eax
	addl	$8, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	-576(%ebp), %eax
	orl	%esi, %eax
	movl	-572(%ebp), %edx
	orl	%edi, %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-160(%ebp), %ecx
	addl	$16, %ecx
	movl	-160(%ebp), %eax
	addl	$16, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -568(%ebp)
	movl	%edi, -564(%ebp)
	movl	-156(%ebp), %eax
	addl	$16, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	-568(%ebp), %eax
	orl	%esi, %eax
	movl	-564(%ebp), %edx
	orl	%edi, %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
.LBE55:
	.loc 1 1026 0
	movl	$-1, -256(%ebp)
	.loc 1 1027 0
	movl	$176, -260(%ebp)
	movl	$0, -252(%ebp)
	.loc 1 1028 0
	jmp	.L255
.L256:
	.loc 1 1031 0
	cmpl	$1, -252(%ebp)
	jne	.L257
.LBB56:
	.loc 1 1032 0
	leal	-312(%ebp), %eax
	movl	%eax, -152(%ebp)
	leal	-336(%ebp), %eax
	movl	%eax, -148(%ebp)
	movl	-148(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	-152(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-152(%ebp), %ecx
	addl	$8, %ecx
	movl	-148(%ebp), %eax
	addl	$8, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-152(%ebp), %ecx
	addl	$16, %ecx
	movl	-148(%ebp), %eax
	addl	$16, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
.L257:
.LBE56:
	.loc 1 1033 0
	movl	$0, -260(%ebp)
	jmp	.L259
.L260:
.LBB57:
	.loc 1 1036 0
	movl	-260(%ebp), %edx
	movl	reg_alloc_order@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -144(%ebp)
	.loc 1 1040 0
	movl	-144(%ebp), %eax
	shrl	$6, %eax
	movl	-308(%ebp,%eax,8), %edx
	movl	-312(%ebp,%eax,8), %eax
	movl	-144(%ebp), %ecx
	andl	$63, %ecx
	shrdl	%edx, %eax
	shrl	%cl, %edx
	testb	$32, %cl
	je	.L372
	movl	%edx, %eax
	xorl	%edx, %edx
.L372:
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L261
	movl	-244(%ebp), %eax
	movl	-144(%ebp), %ecx
	movl	mips_hard_regno_mode_ok@GOT(%ebx), %edx
	imull	$176, %eax, %eax
	addl	%edx, %eax
	movzbl	(%eax,%ecx), %eax
	testb	%al, %al
	je	.L261
.LBB58:
	.loc 1 1047 0
	movl	-244(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-144(%ebp), %eax
	movl	%eax, (%esp)
	call	mips_hard_regno_nregs@PLT
	movl	%eax, %edx
	movl	-144(%ebp), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -136(%ebp)
	.loc 1 1048 0
	movl	-144(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -140(%ebp)
	.loc 1 1049 0
	jmp	.L264
.L265:
	.loc 1 1051 0
	addl	$1, -140(%ebp)
.L264:
	.loc 1 1049 0
	movl	-140(%ebp), %eax
	cmpl	-136(%ebp), %eax
	jge	.L266
	movl	-140(%ebp), %eax
	shrl	$6, %eax
	movl	-308(%ebp,%eax,8), %edx
	movl	-312(%ebp,%eax,8), %eax
	movl	-140(%ebp), %ecx
	andl	$63, %ecx
	shrdl	%edx, %eax
	shrl	%cl, %edx
	testb	$32, %cl
	je	.L371
	movl	%edx, %eax
	xorl	%edx, %edx
.L371:
	andl	$1, %eax
	testl	%eax, %eax
	je	.L265
.L266:
	.loc 1 1052 0
	movl	-140(%ebp), %eax
	cmpl	-136(%ebp), %eax
	jne	.L261
	.loc 1 1054 0
	movl	-144(%ebp), %eax
	movl	%eax, -256(%ebp)
	.loc 1 1055 0
	jmp	.L269
.L261:
.LBE58:
.LBE57:
	.loc 1 1033 0
	addl	$1, -260(%ebp)
.L259:
	cmpl	$175, -260(%ebp)
	jle	.L260
.L269:
	.loc 1 1029 0
	addl	$1, -252(%ebp)
.L255:
	.loc 1 1028 0
	cmpl	$1, -252(%ebp)
	jg	.L270
	cmpl	$175, -260(%ebp)
	jg	.L256
.L270:
.LBB59:
	.loc 1 1075 0
	movl	8(%ebp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	allocno@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	addl	$72, %eax
	movl	%eax, -132(%ebp)
	leal	-312(%ebp), %eax
	movl	%eax, -128(%ebp)
	movl	-132(%ebp), %eax
	movl	(%eax), %edx
	movl	4(%eax), %ecx
	movl	%edx, -560(%ebp)
	movl	%ecx, -556(%ebp)
	movl	-128(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-560(%ebp), %eax
	andl	%esi, %eax
	movl	-556(%ebp), %edx
	andl	%edi, %edx
	movl	-132(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-132(%ebp), %ecx
	addl	$8, %ecx
	movl	-132(%ebp), %eax
	addl	$8, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -552(%ebp)
	movl	%edi, -548(%ebp)
	movl	-128(%ebp), %eax
	addl	$8, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-552(%ebp), %eax
	andl	%esi, %eax
	movl	-548(%ebp), %edx
	andl	%edi, %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-132(%ebp), %ecx
	addl	$16, %ecx
	movl	-132(%ebp), %eax
	addl	$16, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -544(%ebp)
	movl	%edi, -540(%ebp)
	movl	-128(%ebp), %eax
	addl	$16, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-544(%ebp), %eax
	andl	%esi, %eax
	movl	-540(%ebp), %edx
	andl	%edi, %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
.LBE59:
.LBB60:
	.loc 1 1076 0
	movl	8(%ebp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	allocno@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	addl	$72, %eax
	movl	%eax, -124(%ebp)
	movl	reg_class_contents@GOT(%ebx), %eax
	movl	%eax, -120(%ebp)
	movl	-124(%ebp), %eax
	movl	(%eax), %edx
	movl	4(%eax), %ecx
	movl	%edx, -536(%ebp)
	movl	%ecx, -532(%ebp)
	movl	-120(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-536(%ebp), %eax
	andl	%esi, %eax
	movl	-532(%ebp), %edx
	andl	%edi, %edx
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L272
	movl	-124(%ebp), %eax
	addl	$8, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -528(%ebp)
	movl	%edi, -524(%ebp)
	movl	-120(%ebp), %eax
	addl	$8, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-528(%ebp), %eax
	andl	%esi, %eax
	movl	-524(%ebp), %edx
	andl	%edi, %edx
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L272
	movl	-124(%ebp), %eax
	addl	$16, %eax
	movl	(%eax), %edx
	movl	4(%eax), %ecx
	movl	%edx, -520(%ebp)
	movl	%ecx, -516(%ebp)
	movl	-120(%ebp), %eax
	addl	$16, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-520(%ebp), %eax
	andl	%esi, %eax
	movl	-516(%ebp), %edx
	andl	%edi, %edx
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L275
.L272:
.LBE60:
	.loc 1 1079 0
	cmpl	$0, -256(%ebp)
	js	.L275
	.loc 1 1081 0
	movl	$0, -260(%ebp)
	jmp	.L277
.L278:
	.loc 1 1082 0
	movl	8(%ebp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	allocno@GOTOFF(%ebx), %eax
	addl	%eax, %edx
	movl	-260(%ebp), %eax
	shrl	$6, %eax
	leal	72(%edx,%eax,8), %edx
	movl	(%edx), %eax
	movl	4(%edx), %edx
	movl	-260(%ebp), %ecx
	andl	$63, %ecx
	shrdl	%edx, %eax
	shrl	%cl, %edx
	testb	$32, %cl
	je	.L370
	movl	%edx, %eax
	xorl	%edx, %edx
.L370:
	andl	$1, %eax
	testl	%eax, %eax
	je	.L279
	movl	-244(%ebp), %eax
	movl	-260(%ebp), %ecx
	movl	mips_hard_regno_mode_ok@GOT(%ebx), %edx
	imull	$176, %eax, %eax
	addl	%edx, %eax
	movzbl	(%eax,%ecx), %eax
	testb	%al, %al
	je	.L279
	movl	-260(%ebp), %edx
	movl	mips_regno_to_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %ecx
	movl	-256(%ebp), %edx
	movl	mips_regno_to_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	%eax, %ecx
	je	.L282
	movl	-256(%ebp), %edx
	movl	mips_regno_to_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %ecx
	movl	-260(%ebp), %edx
	movl	mips_regno_to_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	reg_class_subset_p@PLT
	testl	%eax, %eax
	jne	.L282
	movl	-260(%ebp), %edx
	movl	mips_regno_to_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %ecx
	movl	-256(%ebp), %edx
	movl	mips_regno_to_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	reg_class_subset_p@PLT
	testl	%eax, %eax
	je	.L279
.L282:
.LBB61:
	.loc 1 1094 0
	movl	-244(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-260(%ebp), %eax
	movl	%eax, (%esp)
	call	mips_hard_regno_nregs@PLT
	movl	%eax, %edx
	movl	-260(%ebp), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -112(%ebp)
	.loc 1 1095 0
	movl	-260(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -116(%ebp)
	.loc 1 1096 0
	jmp	.L285
.L286:
	.loc 1 1104 0
	addl	$1, -116(%ebp)
.L285:
	.loc 1 1096 0
	movl	-116(%ebp), %eax
	cmpl	-112(%ebp), %eax
	jge	.L287
	movl	-116(%ebp), %eax
	shrl	$6, %eax
	movl	-308(%ebp,%eax,8), %edx
	movl	-312(%ebp,%eax,8), %eax
	movl	-116(%ebp), %ecx
	andl	$63, %ecx
	shrdl	%edx, %eax
	shrl	%cl, %edx
	testb	$32, %cl
	je	.L369
	movl	%edx, %eax
	xorl	%edx, %edx
.L369:
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L287
	movl	-116(%ebp), %edx
	movl	mips_regno_to_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %ecx
	movl	-260(%ebp), %edx
	movl	-116(%ebp), %eax
	subl	%edx, %eax
	movl	%eax, %edx
	addl	-256(%ebp), %edx
	movl	mips_regno_to_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	%eax, %ecx
	je	.L286
	movl	-260(%ebp), %edx
	movl	-116(%ebp), %eax
	subl	%edx, %eax
	movl	%eax, %edx
	addl	-256(%ebp), %edx
	movl	mips_regno_to_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %ecx
	movl	-116(%ebp), %edx
	movl	mips_regno_to_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	reg_class_subset_p@PLT
	testl	%eax, %eax
	jne	.L286
	movl	-116(%ebp), %edx
	movl	mips_regno_to_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %ecx
	movl	-260(%ebp), %edx
	movl	-116(%ebp), %eax
	subl	%edx, %eax
	movl	%eax, %edx
	addl	-256(%ebp), %edx
	movl	mips_regno_to_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	reg_class_subset_p@PLT
	testl	%eax, %eax
	jne	.L286
.L287:
	.loc 1 1105 0
	movl	-116(%ebp), %eax
	cmpl	-112(%ebp), %eax
	jne	.L279
	.loc 1 1107 0
	movl	-260(%ebp), %eax
	movl	%eax, -256(%ebp)
	.loc 1 1108 0
	jmp	.L293
.L279:
.LBE61:
	.loc 1 1081 0
	addl	$1, -260(%ebp)
.L277:
	cmpl	$175, -260(%ebp)
	jle	.L278
.L275:
.LBB62:
	.loc 1 1114 0
	movl	8(%ebp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	allocno@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	addl	$48, %eax
	movl	%eax, -108(%ebp)
	leal	-312(%ebp), %eax
	movl	%eax, -104(%ebp)
	movl	-108(%ebp), %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -512(%ebp)
	movl	%edi, -508(%ebp)
	movl	-104(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-512(%ebp), %eax
	andl	%esi, %eax
	movl	-508(%ebp), %edx
	andl	%edi, %edx
	movl	-108(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-108(%ebp), %ecx
	addl	$8, %ecx
	movl	-108(%ebp), %eax
	addl	$8, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -504(%ebp)
	movl	%edi, -500(%ebp)
	movl	-104(%ebp), %eax
	addl	$8, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-504(%ebp), %eax
	andl	%esi, %eax
	movl	-500(%ebp), %edx
	andl	%edi, %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-108(%ebp), %ecx
	addl	$16, %ecx
	movl	-108(%ebp), %eax
	addl	$16, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -496(%ebp)
	movl	%edi, -492(%ebp)
	movl	-104(%ebp), %eax
	addl	$16, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-496(%ebp), %eax
	andl	%esi, %eax
	movl	-492(%ebp), %edx
	andl	%edi, %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
.LBE62:
.LBB63:
	.loc 1 1115 0
	movl	8(%ebp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	allocno@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	addl	$48, %eax
	movl	%eax, -100(%ebp)
	movl	reg_class_contents@GOT(%ebx), %eax
	movl	%eax, -96(%ebp)
	movl	-100(%ebp), %eax
	movl	(%eax), %edx
	movl	4(%eax), %ecx
	movl	%edx, -488(%ebp)
	movl	%ecx, -484(%ebp)
	movl	-96(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-488(%ebp), %eax
	andl	%esi, %eax
	movl	-484(%ebp), %edx
	andl	%edi, %edx
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L294
	movl	-100(%ebp), %eax
	addl	$8, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -480(%ebp)
	movl	%edi, -476(%ebp)
	movl	-96(%ebp), %eax
	addl	$8, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-480(%ebp), %eax
	andl	%esi, %eax
	movl	-476(%ebp), %edx
	andl	%edi, %edx
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L294
	movl	-100(%ebp), %eax
	addl	$16, %eax
	movl	(%eax), %edx
	movl	4(%eax), %ecx
	movl	%edx, -472(%ebp)
	movl	%ecx, -468(%ebp)
	movl	-96(%ebp), %eax
	addl	$16, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-472(%ebp), %eax
	andl	%esi, %eax
	movl	-468(%ebp), %edx
	andl	%edi, %edx
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L293
.L294:
.LBE63:
	.loc 1 1118 0
	cmpl	$0, -256(%ebp)
	js	.L293
	.loc 1 1120 0
	movl	$0, -260(%ebp)
	jmp	.L298
.L299:
	.loc 1 1121 0
	movl	8(%ebp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	allocno@GOTOFF(%ebx), %eax
	addl	%eax, %edx
	movl	-260(%ebp), %eax
	shrl	$6, %eax
	leal	48(%edx,%eax,8), %edx
	movl	(%edx), %eax
	movl	4(%edx), %edx
	movl	-260(%ebp), %ecx
	andl	$63, %ecx
	shrdl	%edx, %eax
	shrl	%cl, %edx
	testb	$32, %cl
	je	.L368
	movl	%edx, %eax
	xorl	%edx, %edx
.L368:
	andl	$1, %eax
	testl	%eax, %eax
	je	.L300
	movl	-244(%ebp), %eax
	movl	-260(%ebp), %ecx
	movl	mips_hard_regno_mode_ok@GOT(%ebx), %edx
	imull	$176, %eax, %eax
	addl	%edx, %eax
	movzbl	(%eax,%ecx), %eax
	testb	%al, %al
	je	.L300
	movl	-260(%ebp), %edx
	movl	mips_regno_to_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %ecx
	movl	-256(%ebp), %edx
	movl	mips_regno_to_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	%eax, %ecx
	je	.L303
	movl	-256(%ebp), %edx
	movl	mips_regno_to_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %ecx
	movl	-260(%ebp), %edx
	movl	mips_regno_to_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	reg_class_subset_p@PLT
	testl	%eax, %eax
	jne	.L303
	movl	-260(%ebp), %edx
	movl	mips_regno_to_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %ecx
	movl	-256(%ebp), %edx
	movl	mips_regno_to_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	reg_class_subset_p@PLT
	testl	%eax, %eax
	je	.L300
.L303:
.LBB64:
	.loc 1 1133 0
	movl	-244(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-260(%ebp), %eax
	movl	%eax, (%esp)
	call	mips_hard_regno_nregs@PLT
	movl	%eax, %edx
	movl	-260(%ebp), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -88(%ebp)
	.loc 1 1134 0
	movl	-260(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -92(%ebp)
	.loc 1 1135 0
	jmp	.L306
.L307:
	.loc 1 1143 0
	addl	$1, -92(%ebp)
.L306:
	.loc 1 1135 0
	movl	-92(%ebp), %eax
	cmpl	-88(%ebp), %eax
	jge	.L308
	movl	-92(%ebp), %eax
	shrl	$6, %eax
	movl	-308(%ebp,%eax,8), %edx
	movl	-312(%ebp,%eax,8), %eax
	movl	-92(%ebp), %ecx
	andl	$63, %ecx
	shrdl	%edx, %eax
	shrl	%cl, %edx
	testb	$32, %cl
	je	.L367
	movl	%edx, %eax
	xorl	%edx, %edx
.L367:
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L308
	movl	-92(%ebp), %edx
	movl	mips_regno_to_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %ecx
	movl	-260(%ebp), %edx
	movl	-92(%ebp), %eax
	subl	%edx, %eax
	movl	%eax, %edx
	addl	-256(%ebp), %edx
	movl	mips_regno_to_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	%eax, %ecx
	je	.L307
	movl	-260(%ebp), %edx
	movl	-92(%ebp), %eax
	subl	%edx, %eax
	movl	%eax, %edx
	addl	-256(%ebp), %edx
	movl	mips_regno_to_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %ecx
	movl	-92(%ebp), %edx
	movl	mips_regno_to_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	reg_class_subset_p@PLT
	testl	%eax, %eax
	jne	.L307
	movl	-92(%ebp), %edx
	movl	mips_regno_to_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %ecx
	movl	-260(%ebp), %edx
	movl	-92(%ebp), %eax
	subl	%edx, %eax
	movl	%eax, %edx
	addl	-256(%ebp), %edx
	movl	mips_regno_to_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	reg_class_subset_p@PLT
	testl	%eax, %eax
	jne	.L307
.L308:
	.loc 1 1144 0
	movl	-92(%ebp), %eax
	cmpl	-88(%ebp), %eax
	jne	.L300
	.loc 1 1146 0
	movl	-260(%ebp), %eax
	movl	%eax, -256(%ebp)
	.loc 1 1147 0
	jmp	.L293
.L300:
.LBE64:
	.loc 1 1120 0
	addl	$1, -260(%ebp)
.L298:
	cmpl	$175, -260(%ebp)
	jle	.L299
.L293:
	.loc 1 1158 0
	movl	flag_caller_saves@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L314
	cmpl	$0, -256(%ebp)
	jns	.L314
	.loc 1 1163 0
	cmpl	$0, 20(%ebp)
	jne	.L314
	movl	8(%ebp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	allocno@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	je	.L314
	movl	8(%ebp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	allocno@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	8(%eax), %eax
	leal	0(,%eax,4), %ecx
	movl	8(%ebp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	allocno@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	12(%eax), %eax
	cmpl	%eax, %ecx
	jge	.L314
.LBB65:
	.loc 1 1169 0
	cmpl	$0, 12(%ebp)
	jne	.L320
.LBB66:
	.loc 1 1170 0
	leal	-384(%ebp), %eax
	movl	%eax, -84(%ebp)
	movl	-84(%ebp), %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	-84(%ebp), %eax
	addl	$8, %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	-84(%ebp), %eax
	addl	$16, %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	jmp	.L322
.L320:
.LBE66:
.LBB67:
	.loc 1 1172 0
	leal	-384(%ebp), %eax
	movl	%eax, -80(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -76(%ebp)
	movl	-76(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	-80(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-80(%ebp), %ecx
	addl	$8, %ecx
	movl	-76(%ebp), %eax
	addl	$8, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-80(%ebp), %ecx
	addl	$16, %ecx
	movl	-76(%ebp), %eax
	addl	$16, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
.L322:
.LBE67:
.LBB68:
	.loc 1 1174 0
	leal	-384(%ebp), %eax
	movl	%eax, -72(%ebp)
	movl	losing_caller_save_reg_set@GOT(%ebx), %eax
	movl	%eax, -68(%ebp)
	movl	-72(%ebp), %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -464(%ebp)
	movl	%edi, -460(%ebp)
	movl	-68(%ebp), %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	-464(%ebp), %eax
	orl	%esi, %eax
	movl	-460(%ebp), %edx
	orl	%edi, %edx
	movl	-72(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-72(%ebp), %ecx
	addl	$8, %ecx
	movl	-72(%ebp), %eax
	addl	$8, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -456(%ebp)
	movl	%edi, -452(%ebp)
	movl	-68(%ebp), %eax
	addl	$8, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	-456(%ebp), %eax
	orl	%esi, %eax
	movl	-452(%ebp), %edx
	orl	%edi, %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-72(%ebp), %ecx
	addl	$16, %ecx
	movl	-72(%ebp), %eax
	addl	$16, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -448(%ebp)
	movl	%edi, -444(%ebp)
	movl	-68(%ebp), %eax
	addl	$16, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	-448(%ebp), %eax
	orl	%esi, %eax
	movl	-444(%ebp), %edx
	orl	%edi, %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
.LBE68:
	.loc 1 1175 0
	movl	24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	$1, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-384(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg
	.loc 1 1176 0
	movl	8(%ebp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	allocno@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movl	reg_renumber@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movzwl	(%eax), %eax
	testw	%ax, %ax
	js	.L314
	.loc 1 1178 0
	movl	caller_save_needed@GOT(%ebx), %eax
	movl	$1, (%eax)
	.loc 1 1179 0
	jmp	.L363
.L314:
.LBE65:
	.loc 1 1189 0
	cmpl	$0, -256(%ebp)
	jns	.L325
	cmpl	$0, 24(%ebp)
	jne	.L325
	movl	8(%ebp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	allocno@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	4(%eax), %eax
	cmpl	$1, %eax
	jne	.L325
	.loc 1 1194 0
	movl	$175, -260(%ebp)
	jmp	.L329
.L330:
.LBB69:
	.loc 1 1197 0
	movl	-260(%ebp), %edx
	movl	reg_alloc_order@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -64(%ebp)
	.loc 1 1202 0
	movl	-64(%ebp), %eax
	movl	local_reg_n_refs@GOTOFF(%ebx,%eax,4), %eax
	testl	%eax, %eax
	je	.L331
	movl	-64(%ebp), %eax
	shrl	$6, %eax
	movl	-356(%ebp,%eax,8), %edx
	movl	-360(%ebp,%eax,8), %eax
	movl	-64(%ebp), %ecx
	andl	$63, %ecx
	shrdl	%edx, %eax
	shrl	%cl, %edx
	testb	$32, %cl
	je	.L366
	movl	%edx, %eax
	xorl	%edx, %edx
.L366:
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L331
	movl	-244(%ebp), %eax
	movl	-64(%ebp), %ecx
	movl	mips_hard_regno_mode_ok@GOT(%ebx), %edx
	imull	$176, %eax, %eax
	addl	%edx, %eax
	movzbl	(%eax,%ecx), %eax
	testb	%al, %al
	je	.L331
	movl	-244(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	mips_hard_regno_nregs@PLT
	cmpl	$1, %eax
	jne	.L331
	movl	-64(%ebp), %edx
	movl	mips_regno_to_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %edx
	movl	-64(%ebp), %ecx
	movl	-244(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	invalid_mode_change_p@PLT
	xorl	$1, %eax
	testb	%al, %al
	je	.L331
.LBB70:
	.loc 1 1229 0
	movl	-64(%ebp), %eax
	movl	local_reg_freq@GOTOFF(%ebx,%eax,4), %eax
	pushl	%eax
	fildl	(%esp)
	leal	4(%esp), %esp
	movl	-64(%ebp), %eax
	movl	local_reg_live_length@GOTOFF(%ebx,%eax,4), %eax
	pushl	%eax
	fildl	(%esp)
	leal	4(%esp), %esp
	fdivrp	%st, %st(1)
	fstpl	-288(%ebp)
	.loc 1 1231 0
	movl	8(%ebp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	allocno@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	16(%eax), %eax
	pushl	%eax
	fildl	(%esp)
	leal	4(%esp), %esp
	movl	8(%ebp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	allocno@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	20(%eax), %eax
	pushl	%eax
	fildl	(%esp)
	leal	4(%esp), %esp
	fdivrp	%st, %st(1)
	fstpl	-280(%ebp)
	.loc 1 1233 0
	fldl	-288(%ebp)
	fldl	-280(%ebp)
	fucompp
	fnstsw	%ax
	sahf
	ja	.L338
	jmp	.L331
.L338:
.LBB71:
	.loc 1 1238 0
	movl	$0, -60(%ebp)
	jmp	.L339
.L340:
	.loc 1 1239 0
	movl	-60(%ebp), %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movl	reg_renumber@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movzwl	(%eax), %eax
	testw	%ax, %ax
	js	.L341
.LBB72:
	.loc 1 1241 0
	movl	-60(%ebp), %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movl	reg_renumber@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movzwl	(%eax), %eax
	cwtl
	movl	%eax, -56(%ebp)
	.loc 1 1243 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movl	48(%eax), %edx
	movl	-60(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, 4(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	mips_hard_regno_nregs@PLT
	movl	%eax, %edx
	movl	-56(%ebp), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -52(%ebp)
	.loc 1 1245 0
	movl	-64(%ebp), %eax
	cmpl	-56(%ebp), %eax
	jl	.L341
	movl	-64(%ebp), %eax
	cmpl	-52(%ebp), %eax
	jge	.L341
	.loc 1 1246 0
	movl	-60(%ebp), %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movl	reg_renumber@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movw	$-1, (%eax)
.L341:
.LBE72:
	.loc 1 1238 0
	addl	$1, -60(%ebp)
.L339:
	movl	max_regno@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, -60(%ebp)
	jl	.L340
	.loc 1 1249 0
	movl	-64(%ebp), %eax
	movl	%eax, -256(%ebp)
	.loc 1 1250 0
	jmp	.L325
.L331:
.LBE71:
.LBE70:
.LBE69:
	.loc 1 1194 0
	subl	$1, -260(%ebp)
.L329:
	cmpl	$0, -260(%ebp)
	jns	.L330
.L325:
	.loc 1 1258 0
	cmpl	$0, -256(%ebp)
	js	.L363
.LBB73:
	.loc 1 1264 0
	movl	8(%ebp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	allocno@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movl	reg_renumber@GOT(%ebx), %eax
	movl	(%eax), %eax
	addl	%eax, %edx
	movl	-256(%ebp), %eax
	movw	%ax, (%edx)
	.loc 1 1266 0
	movl	8(%ebp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	allocno@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_may_share@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L347
	.loc 1 1267 0
	movl	$176, -44(%ebp)
	jmp	.L349
.L350:
	.loc 1 1268 0
	movl	-44(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_allocno@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L351
	.loc 1 1269 0
	movl	-44(%ebp), %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movl	reg_renumber@GOT(%ebx), %eax
	movl	(%eax), %eax
	addl	%eax, %edx
	movl	-256(%ebp), %eax
	movw	%ax, (%edx)
.L351:
	.loc 1 1267 0
	addl	$1, -44(%ebp)
.L349:
	movl	max_regno@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, -44(%ebp)
	jl	.L350
.L347:
.LBB74:
	.loc 1 1272 0
	leal	-384(%ebp), %eax
	movl	%eax, -40(%ebp)
	movl	-40(%ebp), %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	-40(%ebp), %eax
	addl	$8, %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	-40(%ebp), %eax
	addl	$16, %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
.LBE74:
	.loc 1 1273 0
	movl	-244(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-256(%ebp), %eax
	movl	%eax, (%esp)
	call	mips_hard_regno_nregs@PLT
	movl	%eax, %edx
	movl	-256(%ebp), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -48(%ebp)
	.loc 1 1274 0
	movl	-256(%ebp), %eax
	movl	%eax, -44(%ebp)
	jmp	.L353
.L354:
	.loc 1 1276 0
	movl	-44(%ebp), %eax
	shrl	$6, %eax
	movl	%eax, -436(%ebp)
	movl	-384(%ebp,%eax,8), %edx
	movl	-380(%ebp,%eax,8), %ecx
	movl	%edx, -432(%ebp)
	movl	%ecx, -428(%ebp)
	movl	-44(%ebp), %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L364
	movl	%esi, %edi
	xorl	%esi, %esi
.L364:
	movl	-432(%ebp), %eax
	orl	%esi, %eax
	movl	-428(%ebp), %edx
	orl	%edi, %edx
	movl	-436(%ebp), %ecx
	movl	%eax, -384(%ebp,%ecx,8)
	movl	%edx, -380(%ebp,%ecx,8)
	.loc 1 1277 0
	movl	-44(%ebp), %eax
	shrl	$6, %eax
	movl	%eax, -420(%ebp)
	movl	regs_used_so_far@GOTOFF(%ebx,%eax,8), %esi
	movl	4+regs_used_so_far@GOTOFF(%ebx,%eax,8), %edi
	movl	%esi, -416(%ebp)
	movl	%edi, -412(%ebp)
	movl	-44(%ebp), %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L365
	movl	%esi, %edi
	xorl	%esi, %esi
.L365:
	movl	-416(%ebp), %eax
	orl	%esi, %eax
	movl	-412(%ebp), %edx
	orl	%edi, %edx
	movl	-420(%ebp), %edi
	movl	%eax, regs_used_so_far@GOTOFF(%ebx,%edi,8)
	movl	%edx, 4+regs_used_so_far@GOTOFF(%ebx,%edi,8)
	.loc 1 1279 0
	movl	-44(%ebp), %eax
	movl	$0, local_reg_n_refs@GOTOFF(%ebx,%eax,4)
	.loc 1 1280 0
	movl	-44(%ebp), %eax
	movl	$0, local_reg_freq@GOTOFF(%ebx,%eax,4)
	.loc 1 1274 0
	addl	$1, -44(%ebp)
.L353:
	movl	-44(%ebp), %eax
	cmpl	-48(%ebp), %eax
	jl	.L354
	.loc 1 1284 0
	movl	8(%ebp), %eax
	movl	%eax, -48(%ebp)
.LBB75:
	.loc 1 1285 0
	movl	allocno_row_words@GOTOFF(%ebx), %eax
	imull	-48(%ebp), %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	conflicts@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -28(%ebp)
	movl	allocno_row_words@GOTOFF(%ebx), %eax
	subl	$1, %eax
	movl	%eax, -36(%ebp)
	movl	$0, -32(%ebp)
	jmp	.L356
.L357:
.LBB76:
	movl	-28(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, -272(%ebp)
	movl	%edx, -268(%ebp)
	addl	$8, -28(%ebp)
	movl	-32(%ebp), %eax
	movl	%eax, -44(%ebp)
	jmp	.L358
.L359:
	movl	-272(%ebp), %eax
	andl	$1, %eax
	movl	-268(%ebp), %edx
	andl	$0, %edx
	testl	%eax, %eax
	je	.L360
.LBB77:
	movl	-44(%ebp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	allocno@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	addl	$24, %eax
	movl	%eax, -24(%ebp)
	leal	-384(%ebp), %eax
	movl	%eax, -20(%ebp)
	movl	-24(%ebp), %eax
	movl	(%eax), %edx
	movl	4(%eax), %ecx
	movl	%edx, -408(%ebp)
	movl	%ecx, -404(%ebp)
	movl	-20(%ebp), %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	-408(%ebp), %eax
	orl	%esi, %eax
	movl	-404(%ebp), %edx
	orl	%edi, %edx
	movl	-24(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-24(%ebp), %ecx
	addl	$8, %ecx
	movl	-24(%ebp), %eax
	addl	$8, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -400(%ebp)
	movl	%edi, -396(%ebp)
	movl	-20(%ebp), %eax
	addl	$8, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	-400(%ebp), %eax
	orl	%esi, %eax
	movl	-396(%ebp), %edx
	orl	%edi, %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-24(%ebp), %ecx
	addl	$16, %ecx
	movl	-24(%ebp), %eax
	addl	$16, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -392(%ebp)
	movl	%edi, -388(%ebp)
	movl	-20(%ebp), %eax
	addl	$16, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	-392(%ebp), %eax
	orl	%esi, %eax
	movl	-388(%ebp), %edx
	orl	%edi, %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
.L360:
.LBE77:
	movl	-272(%ebp), %eax
	movl	-268(%ebp), %edx
	shrdl	$1, %edx, %eax
	shrl	%edx
	movl	%eax, -272(%ebp)
	movl	%edx, -268(%ebp)
	addl	$1, -44(%ebp)
.L358:
	movl	-272(%ebp), %eax
	orl	-268(%ebp), %eax
	testl	%eax, %eax
	jne	.L359
.LBE76:
	subl	$1, -36(%ebp)
	addl	$64, -32(%ebp)
.L356:
	cmpl	$0, -36(%ebp)
	jns	.L357
.L363:
.LBE75:
.LBE73:
	.loc 1 1290 0
	addl	$732, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE20:
	.size	find_reg, .-find_reg
.globl retry_global_alloc
	.type	retry_global_alloc, @function
retry_global_alloc:
.LFB21:
	.loc 1 1303 0
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
	.loc 1 1304 0
	movl	8(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_allocno@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 1305 0
	cmpl	$0, -8(%ebp)
	js	.L380
	.loc 1 1311 0
	movl	$1, 16(%esp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg
	.loc 1 1312 0
	movl	8(%ebp), %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movl	reg_renumber@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movzwl	(%eax), %eax
	testw	%ax, %ax
	jns	.L376
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	reg_alternate_class@PLT
	testl	%eax, %eax
	je	.L376
	.loc 1 1314 0
	movl	$1, 16(%esp)
	movl	$0, 12(%esp)
	movl	$1, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg
.L376:
	.loc 1 1318 0
	movl	8(%ebp), %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movl	reg_renumber@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movzwl	(%eax), %eax
	testw	%ax, %ax
	js	.L380
	.loc 1 1320 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movl	48(%eax), %edx
	movl	8(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %ecx
	movl	8(%ebp), %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movl	reg_renumber@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movzwl	(%eax), %eax
	cwtl
	movl	%eax, 4(%ecx)
	.loc 1 1321 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	mark_home_live@PLT
.L380:
	.loc 1 1324 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE21:
	.size	retry_global_alloc, .-retry_global_alloc
	.type	record_one_conflict, @function
record_one_conflict:
.LFB22:
	.loc 1 1335 0
	pushl	%ebp
.LCFI38:
	movl	%esp, %ebp
.LCFI39:
	pushl	%edi
.LCFI40:
	pushl	%esi
.LCFI41:
	pushl	%ebx
.LCFI42:
	subl	$100, %esp
.LCFI43:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1338 0
	cmpl	$175, 8(%ebp)
	jg	.L382
.LBB78:
	.loc 1 1341 0
	movl	allocnos_live@GOTOFF(%ebx), %eax
	movl	%eax, -36(%ebp)
	movl	allocno_row_words@GOTOFF(%ebx), %eax
	subl	$1, %eax
	movl	%eax, -44(%ebp)
	movl	$0, -40(%ebp)
	jmp	.L384
.L385:
.LBB79:
	movl	-36(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, -56(%ebp)
	movl	%edx, -52(%ebp)
	addl	$8, -36(%ebp)
	movl	-40(%ebp), %eax
	movl	%eax, -48(%ebp)
	jmp	.L386
.L387:
	movl	-56(%ebp), %eax
	andl	$1, %eax
	movl	-52(%ebp), %edx
	andl	$0, %edx
	testl	%eax, %eax
	je	.L388
	movl	-48(%ebp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	allocno@GOTOFF(%ebx), %eax
	addl	%eax, %edx
	movl	%edx, -112(%ebp)
	movl	8(%ebp), %eax
	movl	%eax, %ecx
	shrl	$6, %ecx
	movl	%ecx, -108(%ebp)
	movl	-48(%ebp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	allocno@GOTOFF(%ebx), %eax
	addl	%eax, %edx
	movl	%ecx, %eax
	movl	24(%edx,%eax,8), %esi
	movl	28(%edx,%eax,8), %edi
	movl	%esi, -104(%ebp)
	movl	%edi, -100(%ebp)
	movl	8(%ebp), %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L396
	movl	%esi, %edi
	xorl	%esi, %esi
.L396:
	movl	-104(%ebp), %eax
	orl	%esi, %eax
	movl	-100(%ebp), %edx
	orl	%edi, %edx
	movl	-108(%ebp), %edi
	movl	-112(%ebp), %ecx
	movl	%eax, 24(%ecx,%edi,8)
	movl	%edx, 28(%ecx,%edi,8)
.L388:
	movl	-56(%ebp), %eax
	movl	-52(%ebp), %edx
	shrdl	$1, %edx, %eax
	shrl	%edx
	movl	%eax, -56(%ebp)
	movl	%edx, -52(%ebp)
	addl	$1, -48(%ebp)
.L386:
	movl	-56(%ebp), %eax
	orl	-52(%ebp), %eax
	testl	%eax, %eax
	jne	.L387
.LBE79:
	subl	$1, -44(%ebp)
	addl	$64, -40(%ebp)
.L384:
	cmpl	$0, -44(%ebp)
	jns	.L385
	jmp	.L395
.L382:
.LBE78:
.LBB80:
	.loc 1 1350 0
	movl	8(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_allocno@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 1351 0
	movl	allocno_row_words@GOTOFF(%ebx), %edx
	movl	-32(%ebp), %eax
	imull	%edx, %eax
	movl	%eax, -28(%ebp)
.LBB81:
	.loc 1 1353 0
	movl	-32(%ebp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	allocno@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	addl	$24, %eax
	movl	%eax, -24(%ebp)
	leal	hard_regs_live@GOTOFF(%ebx), %eax
	movl	%eax, -20(%ebp)
	movl	-24(%ebp), %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -96(%ebp)
	movl	%edi, -92(%ebp)
	movl	-20(%ebp), %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	-96(%ebp), %eax
	orl	%esi, %eax
	movl	-92(%ebp), %edx
	orl	%edi, %edx
	movl	-24(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-24(%ebp), %ecx
	addl	$8, %ecx
	movl	-24(%ebp), %eax
	addl	$8, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -88(%ebp)
	movl	%edi, -84(%ebp)
	movl	-20(%ebp), %eax
	addl	$8, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	-88(%ebp), %eax
	orl	%esi, %eax
	movl	-84(%ebp), %edx
	orl	%edi, %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-24(%ebp), %ecx
	addl	$16, %ecx
	movl	-24(%ebp), %eax
	addl	$16, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -80(%ebp)
	movl	%edi, -76(%ebp)
	movl	-20(%ebp), %eax
	addl	$16, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	-80(%ebp), %eax
	orl	%esi, %eax
	movl	-76(%ebp), %edx
	orl	%edi, %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
.LBE81:
	.loc 1 1354 0
	movl	allocno_row_words@GOTOFF(%ebx), %eax
	subl	$1, %eax
	movl	%eax, -48(%ebp)
	jmp	.L393
.L394:
	.loc 1 1365 0
	movl	-48(%ebp), %eax
	addl	-28(%ebp), %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	conflicts@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %ecx
	movl	-48(%ebp), %eax
	addl	-28(%ebp), %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	conflicts@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -72(%ebp)
	movl	%edi, -68(%ebp)
	movl	-48(%ebp), %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	allocnos_live@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	-72(%ebp), %eax
	orl	%esi, %eax
	movl	-68(%ebp), %edx
	orl	%edi, %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	.loc 1 1354 0
	subl	$1, -48(%ebp)
.L393:
	cmpl	$0, -48(%ebp)
	jns	.L394
.L395:
.LBE80:
	.loc 1 1368 0
	addl	$100, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE22:
	.size	record_one_conflict, .-record_one_conflict
	.type	record_conflicts, @function
record_conflicts:
.LFB23:
	.loc 1 1380 0
	pushl	%ebp
.LCFI44:
	movl	%esp, %ebp
.LCFI45:
	pushl	%edi
.LCFI46:
	pushl	%esi
.LCFI47:
	pushl	%ebx
.LCFI48:
	subl	$44, %esp
.LCFI49:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1384 0
	jmp	.L398
.L399:
	.loc 1 1386 0
	movl	12(%ebp), %eax
	sall	$2, %eax
	addl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 1387 0
	movl	allocno_row_words@GOTOFF(%ebx), %edx
	movl	-32(%ebp), %eax
	imull	%edx, %eax
	movl	%eax, -28(%ebp)
.LBB82:
	.loc 1 1388 0
	movl	-32(%ebp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	allocno@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	addl	$24, %eax
	movl	%eax, -24(%ebp)
	leal	hard_regs_live@GOTOFF(%ebx), %eax
	movl	%eax, -20(%ebp)
	movl	-24(%ebp), %eax
	movl	(%eax), %edx
	movl	4(%eax), %ecx
	movl	%edx, -56(%ebp)
	movl	%ecx, -52(%ebp)
	movl	-20(%ebp), %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	-56(%ebp), %eax
	orl	%esi, %eax
	movl	-52(%ebp), %edx
	orl	%edi, %edx
	movl	-24(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-24(%ebp), %ecx
	addl	$8, %ecx
	movl	-24(%ebp), %eax
	addl	$8, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -48(%ebp)
	movl	%edi, -44(%ebp)
	movl	-20(%ebp), %eax
	addl	$8, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	-48(%ebp), %eax
	orl	%esi, %eax
	movl	-44(%ebp), %edx
	orl	%edi, %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-24(%ebp), %ecx
	addl	$16, %ecx
	movl	-24(%ebp), %eax
	addl	$16, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -40(%ebp)
	movl	%edi, -36(%ebp)
	movl	-20(%ebp), %eax
	addl	$16, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	-40(%ebp), %eax
	orl	%esi, %eax
	movl	-36(%ebp), %edx
	orl	%edi, %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
.L398:
.LBE82:
	.loc 1 1384 0
	subl	$1, 12(%ebp)
	cmpl	$0, 12(%ebp)
	jns	.L399
	.loc 1 1390 0
	addl	$44, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE23:
	.size	record_conflicts, .-record_conflicts
	.type	mirror_conflicts, @function
mirror_conflicts:
.LFB24:
	.loc 1 1395 0
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
	subl	$52, %esp
.LCFI55:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1397 0
	movl	allocno_row_words@GOTOFF(%ebx), %eax
	movl	%eax, -40(%ebp)
	.loc 1 1398 0
	movl	-40(%ebp), %eax
	sall	$6, %eax
	movl	%eax, -36(%ebp)
	.loc 1 1399 0
	movl	conflicts@GOTOFF(%ebx), %eax
	movl	%eax, -32(%ebp)
	.loc 1 1400 0
	movl	conflicts@GOTOFF(%ebx), %eax
	movl	%eax, -28(%ebp)
	.loc 1 1403 0
	movl	max_allocno@GOTOFF(%ebx), %eax
	subl	$1, %eax
	movl	%eax, -48(%ebp)
	movl	$1, -64(%ebp)
	movl	$0, -60(%ebp)
	jmp	.L403
.L404:
	.loc 1 1405 0
	movl	-64(%ebp), %eax
	orl	-60(%ebp), %eax
	testl	%eax, %eax
	jne	.L405
	.loc 1 1407 0
	movl	$1, -64(%ebp)
	movl	$0, -60(%ebp)
	.loc 1 1408 0
	addl	$8, -28(%ebp)
.L405:
	.loc 1 1410 0
	movl	allocno_row_words@GOTOFF(%ebx), %eax
	subl	$1, %eax
	movl	%eax, -44(%ebp)
	movl	-28(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L407
.L408:
.LBB83:
	.loc 1 1414 0
	movl	-32(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, -56(%ebp)
	movl	%edx, -52(%ebp)
	addl	$8, -32(%ebp)
	movl	-24(%ebp), %eax
	movl	%eax, -20(%ebp)
	jmp	.L409
.L410:
	.loc 1 1417 0
	movl	-56(%ebp), %eax
	andl	$1, %eax
	movl	-52(%ebp), %edx
	andl	$0, %edx
	testl	%eax, %eax
	je	.L411
	.loc 1 1418 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, %esi
	movl	%edx, %edi
	movl	%esi, %eax
	orl	-64(%ebp), %eax
	movl	%edi, %edx
	orl	-60(%ebp), %edx
	movl	-20(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
.L411:
	.loc 1 1415 0
	movl	-56(%ebp), %eax
	movl	-52(%ebp), %edx
	shrdl	$1, %edx, %eax
	shrl	%edx
	movl	%eax, -56(%ebp)
	movl	%edx, -52(%ebp)
	movl	-40(%ebp), %eax
	sall	$3, %eax
	addl	%eax, -20(%ebp)
.L409:
	.loc 1 1414 0
	movl	-56(%ebp), %eax
	orl	-52(%ebp), %eax
	testl	%eax, %eax
	jne	.L410
.LBE83:
	.loc 1 1410 0
	subl	$1, -44(%ebp)
	movl	-36(%ebp), %eax
	sall	$3, %eax
	addl	%eax, -24(%ebp)
.L407:
	cmpl	$0, -44(%ebp)
	jns	.L408
	.loc 1 1403 0
	subl	$1, -48(%ebp)
	movl	-64(%ebp), %eax
	movl	-60(%ebp), %edx
	shldl	$1, %eax, %edx
	addl	%eax, %eax
	movl	%eax, -64(%ebp)
	movl	%edx, -60(%ebp)
.L403:
	cmpl	$0, -48(%ebp)
	jns	.L404
	.loc 1 1422 0
	addl	$52, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE24:
	.size	mirror_conflicts, .-mirror_conflicts
	.type	mark_reg_store, @function
mark_reg_store:
.LFB25:
	.loc 1 1445 0
	pushl	%ebp
.LCFI56:
	movl	%esp, %ebp
.LCFI57:
	pushl	%edi
.LCFI58:
	pushl	%esi
.LCFI59:
	pushl	%ebx
.LCFI60:
	subl	$60, %esp
.LCFI61:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1448 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L418
	.loc 1 1449 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 8(%ebp)
.L418:
	.loc 1 1451 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L434
	.loc 1 1454 0
	movl	n_regs_set@GOTOFF(%ebx), %ecx
	movl	%ecx, %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	regs_set@GOTOFF(%ebx), %eax
	addl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%eax, (%edx)
	leal	1(%ecx), %eax
	movl	%eax, n_regs_set@GOTOFF(%ebx)
	.loc 1 1456 0
	cmpl	$0, 12(%ebp)
	je	.L422
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$59, %ax
	je	.L422
	.loc 1 1457 0
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	set_preference
.L422:
	.loc 1 1459 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 1463 0
	cmpl	$175, -24(%ebp)
	jle	.L425
	.loc 1 1465 0
	movl	-24(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_allocno@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	js	.L425
	.loc 1 1467 0
	movl	-24(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_allocno@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, %ecx
	shrl	$6, %ecx
	leal	0(,%ecx,8), %eax
	movl	%eax, %edx
	movl	allocnos_live@GOTOFF(%ebx), %eax
	addl	%eax, %edx
	movl	%edx, -60(%ebp)
	leal	0(,%ecx,8), %eax
	movl	%eax, %edx
	movl	allocnos_live@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	movl	4(%eax), %ecx
	movl	%edx, -56(%ebp)
	movl	%ecx, -52(%ebp)
	movl	-24(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_allocno@GOTOFF(%ebx), %eax
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
	je	.L436
	movl	%esi, %edi
	xorl	%esi, %esi
.L436:
	movl	-56(%ebp), %eax
	orl	%esi, %eax
	movl	-52(%ebp), %edx
	orl	%edi, %edx
	movl	-60(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	.loc 1 1468 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	record_one_conflict
.L425:
	.loc 1 1472 0
	movl	-24(%ebp), %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movl	reg_renumber@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movzwl	(%eax), %eax
	testw	%ax, %ax
	js	.L428
	.loc 1 1473 0
	movl	-24(%ebp), %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movl	reg_renumber@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movzwl	(%eax), %eax
	cwtl
	movl	%eax, -24(%ebp)
.L428:
	.loc 1 1476 0
	cmpl	$175, -24(%ebp)
	jg	.L434
	movl	-24(%ebp), %eax
	movl	fixed_regs@GOT(%ebx), %edx
	movzbl	(%edx,%eax), %eax
	testb	%al, %al
	jne	.L434
.LBB84:
	.loc 1 1478 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	mips_hard_regno_nregs@PLT
	movl	%eax, %edx
	movl	-24(%ebp), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 1479 0
	jmp	.L432
.L433:
	.loc 1 1481 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	record_one_conflict
	.loc 1 1482 0
	movl	-24(%ebp), %eax
	shrl	$6, %eax
	movl	%eax, -44(%ebp)
	movl	hard_regs_live@GOTOFF(%ebx,%eax,8), %edx
	movl	4+hard_regs_live@GOTOFF(%ebx,%eax,8), %ecx
	movl	%edx, -40(%ebp)
	movl	%ecx, -36(%ebp)
	movl	-24(%ebp), %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L435
	movl	%esi, %edi
	xorl	%esi, %esi
.L435:
	movl	-40(%ebp), %eax
	orl	%esi, %eax
	movl	-36(%ebp), %edx
	orl	%edi, %edx
	movl	-44(%ebp), %ecx
	movl	%eax, hard_regs_live@GOTOFF(%ebx,%ecx,8)
	movl	%edx, 4+hard_regs_live@GOTOFF(%ebx,%ecx,8)
	.loc 1 1483 0
	addl	$1, -24(%ebp)
.L432:
	.loc 1 1479 0
	movl	-24(%ebp), %eax
	cmpl	-20(%ebp), %eax
	jl	.L433
.L434:
.LBE84:
	.loc 1 1486 0
	addl	$60, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE25:
	.size	mark_reg_store, .-mark_reg_store
	.type	mark_reg_clobber, @function
mark_reg_clobber:
.LFB26:
	.loc 1 1494 0
	pushl	%ebp
.LCFI62:
	movl	%esp, %ebp
.LCFI63:
	subl	$24, %esp
.LCFI64:
	.loc 1 1495 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$59, %ax
	jne	.L440
	.loc 1 1496 0
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	mark_reg_store
.L440:
	.loc 1 1497 0
	leave
	ret
.LFE26:
	.size	mark_reg_clobber, .-mark_reg_clobber
	.type	mark_reg_conflicts, @function
mark_reg_conflicts:
.LFB27:
	.loc 1 1505 0
	pushl	%ebp
.LCFI65:
	movl	%esp, %ebp
.LCFI66:
	pushl	%ebx
.LCFI67:
	subl	$36, %esp
.LCFI68:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1508 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L442
	.loc 1 1509 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 8(%ebp)
.L442:
	.loc 1 1511 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L455
	.loc 1 1514 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1518 0
	cmpl	$175, -12(%ebp)
	jle	.L446
	.loc 1 1520 0
	movl	-12(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_allocno@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	js	.L446
	.loc 1 1521 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	record_one_conflict
.L446:
	.loc 1 1524 0
	movl	-12(%ebp), %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movl	reg_renumber@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movzwl	(%eax), %eax
	testw	%ax, %ax
	js	.L449
	.loc 1 1525 0
	movl	-12(%ebp), %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movl	reg_renumber@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movzwl	(%eax), %eax
	cwtl
	movl	%eax, -12(%ebp)
.L449:
	.loc 1 1528 0
	cmpl	$175, -12(%ebp)
	jg	.L455
	movl	-12(%ebp), %eax
	movl	fixed_regs@GOT(%ebx), %edx
	movzbl	(%edx,%eax), %eax
	testb	%al, %al
	jne	.L455
.LBB85:
	.loc 1 1530 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	mips_hard_regno_nregs@PLT
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 1531 0
	jmp	.L453
.L454:
	.loc 1 1533 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	record_one_conflict
	.loc 1 1534 0
	addl	$1, -12(%ebp)
.L453:
	.loc 1 1531 0
	movl	-12(%ebp), %eax
	cmpl	-8(%ebp), %eax
	jl	.L454
.L455:
.LBE85:
	.loc 1 1537 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE27:
	.size	mark_reg_conflicts, .-mark_reg_conflicts
	.type	mark_reg_death, @function
mark_reg_death:
.LFB28:
	.loc 1 1545 0
	pushl	%ebp
.LCFI69:
	movl	%esp, %ebp
.LCFI70:
	pushl	%edi
.LCFI71:
	pushl	%esi
.LCFI72:
	pushl	%ebx
.LCFI73:
	subl	$60, %esp
.LCFI74:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1546 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 1550 0
	cmpl	$175, -24(%ebp)
	jle	.L457
	.loc 1 1552 0
	movl	-24(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_allocno@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	js	.L457
	.loc 1 1553 0
	movl	-24(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_allocno@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, %ecx
	shrl	$6, %ecx
	leal	0(,%ecx,8), %eax
	movl	%eax, %edx
	movl	allocnos_live@GOTOFF(%ebx), %eax
	addl	%eax, %edx
	movl	%edx, -60(%ebp)
	leal	0(,%ecx,8), %eax
	movl	%eax, %edx
	movl	allocnos_live@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	movl	4(%eax), %ecx
	movl	%edx, -56(%ebp)
	movl	%ecx, -52(%ebp)
	movl	-24(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_allocno@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	shldl	%eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	je	.L469
	movl	%eax, %edx
	xorl	%eax, %eax
.L469:
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-56(%ebp), %eax
	andl	%esi, %eax
	movl	-52(%ebp), %edx
	andl	%edi, %edx
	movl	-60(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
.L457:
	.loc 1 1557 0
	movl	-24(%ebp), %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movl	reg_renumber@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movzwl	(%eax), %eax
	testw	%ax, %ax
	js	.L460
	.loc 1 1558 0
	movl	-24(%ebp), %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movl	reg_renumber@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movzwl	(%eax), %eax
	cwtl
	movl	%eax, -24(%ebp)
.L460:
	.loc 1 1561 0
	cmpl	$175, -24(%ebp)
	jg	.L467
	movl	-24(%ebp), %eax
	movl	fixed_regs@GOT(%ebx), %edx
	movzbl	(%edx,%eax), %eax
	testb	%al, %al
	jne	.L467
.LBB86:
	.loc 1 1565 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	mips_hard_regno_nregs@PLT
	movl	%eax, %edx
	movl	-24(%ebp), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 1566 0
	jmp	.L465
.L466:
	.loc 1 1568 0
	movl	-24(%ebp), %eax
	shrl	$6, %eax
	movl	%eax, -44(%ebp)
	movl	hard_regs_live@GOTOFF(%ebx,%eax,8), %edx
	movl	4+hard_regs_live@GOTOFF(%ebx,%eax,8), %ecx
	movl	%edx, -40(%ebp)
	movl	%ecx, -36(%ebp)
	movl	-24(%ebp), %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	shldl	%eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	je	.L468
	movl	%eax, %edx
	xorl	%eax, %eax
.L468:
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-40(%ebp), %eax
	andl	%esi, %eax
	movl	-36(%ebp), %edx
	andl	%edi, %edx
	movl	-44(%ebp), %ecx
	movl	%eax, hard_regs_live@GOTOFF(%ebx,%ecx,8)
	movl	%edx, 4+hard_regs_live@GOTOFF(%ebx,%ecx,8)
	.loc 1 1569 0
	addl	$1, -24(%ebp)
.L465:
	.loc 1 1566 0
	movl	-24(%ebp), %eax
	cmpl	-20(%ebp), %eax
	jl	.L466
.L467:
.LBE86:
	.loc 1 1572 0
	addl	$60, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE28:
	.size	mark_reg_death, .-mark_reg_death
	.type	mark_reg_live_nc, @function
mark_reg_live_nc:
.LFB29:
	.loc 1 1583 0
	pushl	%ebp
.LCFI75:
	movl	%esp, %ebp
.LCFI76:
	pushl	%edi
.LCFI77:
	pushl	%esi
.LCFI78:
	pushl	%ebx
.LCFI79:
	subl	$44, %esp
.LCFI80:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1584 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	mips_hard_regno_nregs@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 1585 0
	jmp	.L471
.L472:
	.loc 1 1587 0
	movl	8(%ebp), %eax
	shrl	$6, %eax
	movl	%eax, -44(%ebp)
	movl	hard_regs_live@GOTOFF(%ebx,%eax,8), %edx
	movl	4+hard_regs_live@GOTOFF(%ebx,%eax,8), %ecx
	movl	%edx, -40(%ebp)
	movl	%ecx, -36(%ebp)
	movl	8(%ebp), %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L475
	movl	%esi, %edi
	xorl	%esi, %esi
.L475:
	movl	-40(%ebp), %eax
	orl	%esi, %eax
	movl	-36(%ebp), %edx
	orl	%edi, %edx
	movl	-44(%ebp), %ecx
	movl	%eax, hard_regs_live@GOTOFF(%ebx,%ecx,8)
	movl	%edx, 4+hard_regs_live@GOTOFF(%ebx,%ecx,8)
	.loc 1 1588 0
	addl	$1, 8(%ebp)
.L471:
	.loc 1 1585 0
	movl	8(%ebp), %eax
	cmpl	-20(%ebp), %eax
	jl	.L472
	.loc 1 1590 0
	addl	$44, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE29:
	.size	mark_reg_live_nc, .-mark_reg_live_nc
	.type	set_preference, @function
set_preference:
.LFB30:
	.loc 1 1604 0
	pushl	%ebp
.LCFI81:
	movl	%esp, %ebp
.LCFI82:
	pushl	%edi
.LCFI83:
	pushl	%esi
.LCFI84:
	pushl	%ebx
.LCFI85:
	subl	$172, %esp
.LCFI86:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1608 0
	movl	$0, -28(%ebp)
	.loc 1 1610 0
	movl	$1, -20(%ebp)
	.loc 1 1612 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_format@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movzbl	(%eax), %eax
	cmpb	$101, %al
	jne	.L477
	.loc 1 1613 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 12(%ebp)
	movl	$0, -20(%ebp)
.L477:
	.loc 1 1618 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L479
	.loc 1 1619 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -36(%ebp)
	jmp	.L481
.L479:
	.loc 1 1620 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L525
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L525
	.loc 1 1622 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -36(%ebp)
	.loc 1 1624 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	ja	.L485
	.loc 1 1625 0
	movl	12(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	12(%ebp), %eax
	movl	12(%eax), %ecx
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %esi
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%edx, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	call	subreg_regno_offset@PLT
	movl	%eax, %edx
	movl	-28(%ebp), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L481
.L485:
	.loc 1 1630 0
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -164(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L488
	movl	$8, -160(%ebp)
	jmp	.L490
.L488:
	movl	$4, -160(%ebp)
.L490:
	movl	-164(%ebp), %eax
	movl	$0, %edx
	divl	-160(%ebp)
	movl	%eax, %edx
	movl	-28(%ebp), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -28(%ebp)
.L481:
	.loc 1 1636 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L492
	.loc 1 1637 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -32(%ebp)
	jmp	.L494
.L492:
	.loc 1 1638 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L525
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L525
	.loc 1 1640 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 1642 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	ja	.L498
	.loc 1 1643 0
	movl	-28(%ebp), %edi
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	8(%ebp), %eax
	movl	12(%eax), %ecx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %esi
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%edx, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	call	subreg_regno_offset@PLT
	movl	%edi, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -28(%ebp)
	jmp	.L494
.L498:
	.loc 1 1648 0
	movl	-28(%ebp), %ecx
	movl	%ecx, -156(%ebp)
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -152(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L501
	movl	$8, -148(%ebp)
	jmp	.L503
.L501:
	movl	$4, -148(%ebp)
.L503:
	movl	-152(%ebp), %eax
	movl	$0, %edx
	divl	-148(%ebp)
	movl	-156(%ebp), %esi
	subl	%eax, %esi
	movl	%esi, %eax
	movl	%eax, -28(%ebp)
.L494:
	.loc 1 1656 0
	movl	-36(%ebp), %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movl	reg_renumber@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movzwl	(%eax), %eax
	testw	%ax, %ax
	js	.L504
	.loc 1 1657 0
	movl	-36(%ebp), %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movl	reg_renumber@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movzwl	(%eax), %eax
	cwtl
	movl	%eax, -36(%ebp)
.L504:
	.loc 1 1659 0
	movl	-32(%ebp), %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movl	reg_renumber@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movzwl	(%eax), %eax
	testw	%ax, %ax
	js	.L506
	.loc 1 1660 0
	movl	-32(%ebp), %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movl	reg_renumber@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movzwl	(%eax), %eax
	cwtl
	movl	%eax, -32(%ebp)
.L506:
	.loc 1 1665 0
	cmpl	$175, -32(%ebp)
	ja	.L508
	cmpl	$175, -36(%ebp)
	jbe	.L508
	movl	-36(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_allocno@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	js	.L508
	.loc 1 1668 0
	movl	-28(%ebp), %eax
	subl	%eax, -32(%ebp)
	.loc 1 1669 0
	cmpl	$175, -32(%ebp)
	ja	.L508
	.loc 1 1671 0
	cmpl	$0, -20(%ebp)
	je	.L513
	.loc 1 1672 0
	movl	-36(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_allocno@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	allocno@GOTOFF(%ebx), %eax
	addl	%eax, %edx
	movl	%edx, -144(%ebp)
	movl	-32(%ebp), %eax
	movl	%eax, %ecx
	shrl	$6, %ecx
	movl	%ecx, -140(%ebp)
	movl	-36(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_allocno@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	allocno@GOTOFF(%ebx), %eax
	addl	%eax, %edx
	movl	%ecx, %eax
	movl	72(%edx,%eax,8), %esi
	movl	76(%edx,%eax,8), %edi
	movl	%esi, -136(%ebp)
	movl	%edi, -132(%ebp)
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
	je	.L531
	movl	%esi, %edi
	xorl	%esi, %esi
.L531:
	movl	-136(%ebp), %eax
	orl	%esi, %eax
	movl	-132(%ebp), %edx
	orl	%edi, %edx
	movl	-140(%ebp), %edi
	movl	-144(%ebp), %ecx
	movl	%eax, 72(%ecx,%edi,8)
	movl	%edx, 76(%ecx,%edi,8)
.L513:
	.loc 1 1675 0
	movl	-36(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_allocno@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	allocno@GOTOFF(%ebx), %eax
	addl	%eax, %edx
	movl	%edx, -128(%ebp)
	movl	-32(%ebp), %eax
	movl	%eax, %ecx
	shrl	$6, %ecx
	movl	%ecx, -124(%ebp)
	movl	-36(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_allocno@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	allocno@GOTOFF(%ebx), %eax
	addl	%eax, %edx
	movl	%ecx, %eax
	movl	48(%edx,%eax,8), %esi
	movl	52(%edx,%eax,8), %edi
	movl	%esi, -120(%ebp)
	movl	%edi, -116(%ebp)
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
	je	.L530
	movl	%esi, %edi
	xorl	%esi, %esi
.L530:
	movl	-120(%ebp), %eax
	orl	%esi, %eax
	movl	-116(%ebp), %edx
	orl	%edi, %edx
	movl	-124(%ebp), %edi
	movl	-128(%ebp), %ecx
	movl	%eax, 48(%ecx,%edi,8)
	movl	%edx, 52(%ecx,%edi,8)
	.loc 1 1677 0
	movl	-32(%ebp), %eax
	movl	%eax, -24(%ebp)
	.loc 1 1678 0
	jmp	.L515
.L516:
	.loc 1 1680 0
	movl	-36(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_allocno@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	allocno@GOTOFF(%ebx), %eax
	addl	%eax, %edx
	movl	%edx, -112(%ebp)
	movl	-24(%ebp), %eax
	movl	%eax, %ecx
	shrl	$6, %ecx
	movl	%ecx, -108(%ebp)
	movl	-36(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_allocno@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	allocno@GOTOFF(%ebx), %eax
	addl	%eax, %edx
	movl	%ecx, %eax
	movl	96(%edx,%eax,8), %esi
	movl	100(%edx,%eax,8), %edi
	movl	%esi, -104(%ebp)
	movl	%edi, -100(%ebp)
	movl	-24(%ebp), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L529
	movl	%esi, %edi
	xorl	%esi, %esi
.L529:
	movl	-104(%ebp), %eax
	orl	%esi, %eax
	movl	-100(%ebp), %edx
	orl	%edi, %edx
	movl	-108(%ebp), %edi
	movl	-112(%ebp), %ecx
	movl	%eax, 96(%ecx,%edi,8)
	movl	%edx, 100(%ecx,%edi,8)
	.loc 1 1679 0
	addl	$1, -24(%ebp)
.L515:
	.loc 1 1678 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	-32(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	mips_hard_regno_nregs@PLT
	addl	-32(%ebp), %eax
	cmpl	-24(%ebp), %eax
	ja	.L516
.L508:
	.loc 1 1684 0
	cmpl	$175, -36(%ebp)
	ja	.L525
	cmpl	$175, -32(%ebp)
	jbe	.L525
	movl	-32(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_allocno@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	js	.L525
	.loc 1 1687 0
	movl	-28(%ebp), %eax
	addl	%eax, -36(%ebp)
	.loc 1 1688 0
	cmpl	$175, -36(%ebp)
	ja	.L525
	.loc 1 1690 0
	cmpl	$0, -20(%ebp)
	je	.L521
	.loc 1 1691 0
	movl	-32(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_allocno@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	allocno@GOTOFF(%ebx), %eax
	addl	%eax, %edx
	movl	%edx, -96(%ebp)
	movl	-36(%ebp), %eax
	movl	%eax, %ecx
	shrl	$6, %ecx
	movl	%ecx, -92(%ebp)
	movl	-32(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_allocno@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	allocno@GOTOFF(%ebx), %eax
	addl	%eax, %edx
	movl	%ecx, %eax
	movl	72(%edx,%eax,8), %esi
	movl	76(%edx,%eax,8), %edi
	movl	%esi, -88(%ebp)
	movl	%edi, -84(%ebp)
	movl	-36(%ebp), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L528
	movl	%esi, %edi
	xorl	%esi, %esi
.L528:
	movl	-88(%ebp), %eax
	orl	%esi, %eax
	movl	-84(%ebp), %edx
	orl	%edi, %edx
	movl	-92(%ebp), %edi
	movl	-96(%ebp), %ecx
	movl	%eax, 72(%ecx,%edi,8)
	movl	%edx, 76(%ecx,%edi,8)
.L521:
	.loc 1 1694 0
	movl	-32(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_allocno@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	allocno@GOTOFF(%ebx), %eax
	addl	%eax, %edx
	movl	%edx, -80(%ebp)
	movl	-36(%ebp), %eax
	movl	%eax, %ecx
	shrl	$6, %ecx
	movl	%ecx, -76(%ebp)
	movl	-32(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_allocno@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	allocno@GOTOFF(%ebx), %eax
	addl	%eax, %edx
	movl	%ecx, %eax
	movl	48(%edx,%eax,8), %esi
	movl	52(%edx,%eax,8), %edi
	movl	%esi, -72(%ebp)
	movl	%edi, -68(%ebp)
	movl	-36(%ebp), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L527
	movl	%esi, %edi
	xorl	%esi, %esi
.L527:
	movl	-72(%ebp), %eax
	orl	%esi, %eax
	movl	-68(%ebp), %edx
	orl	%edi, %edx
	movl	-76(%ebp), %edi
	movl	-80(%ebp), %ecx
	movl	%eax, 48(%ecx,%edi,8)
	movl	%edx, 52(%ecx,%edi,8)
	.loc 1 1696 0
	movl	-36(%ebp), %eax
	movl	%eax, -24(%ebp)
	.loc 1 1697 0
	jmp	.L523
.L524:
	.loc 1 1699 0
	movl	-32(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_allocno@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	allocno@GOTOFF(%ebx), %eax
	addl	%eax, %edx
	movl	%edx, -64(%ebp)
	movl	-24(%ebp), %eax
	movl	%eax, %ecx
	shrl	$6, %ecx
	movl	%ecx, -60(%ebp)
	movl	-32(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_allocno@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	allocno@GOTOFF(%ebx), %eax
	addl	%eax, %edx
	movl	%ecx, %eax
	movl	96(%edx,%eax,8), %esi
	movl	100(%edx,%eax,8), %edi
	movl	%esi, -56(%ebp)
	movl	%edi, -52(%ebp)
	movl	-24(%ebp), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L526
	movl	%esi, %edi
	xorl	%esi, %esi
.L526:
	movl	-56(%ebp), %eax
	orl	%esi, %eax
	movl	-52(%ebp), %edx
	orl	%edi, %edx
	movl	-60(%ebp), %edi
	movl	-64(%ebp), %ecx
	movl	%eax, 96(%ecx,%edi,8)
	movl	%edx, 100(%ecx,%edi,8)
	.loc 1 1698 0
	addl	$1, -24(%ebp)
.L523:
	.loc 1 1697 0
	movl	12(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	-36(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	mips_hard_regno_nregs@PLT
	addl	-36(%ebp), %eax
	cmpl	-24(%ebp), %eax
	ja	.L524
.L525:
	.loc 1 1702 0
	addl	$172, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE30:
	.size	set_preference, .-set_preference
.globl mark_elimination
	.type	mark_elimination, @function
mark_elimination:
.LFB31:
	.loc 1 1712 0
	pushl	%ebp
.LCFI87:
	movl	%esp, %ebp
.LCFI88:
	pushl	%ebx
.LCFI89:
	subl	$36, %esp
.LCFI90:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1715 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	52(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L533
.L534:
.LBB87:
	.loc 1 1717 0
	movl	-12(%ebp), %eax
	movl	32(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 1718 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_bit_p@PLT
	testl	%eax, %eax
	je	.L535
	.loc 1 1720 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_clear_bit@PLT
	.loc 1 1721 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_set_bit@PLT
.L535:
.LBE87:
	.loc 1 1715 0
	movl	-12(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -12(%ebp)
.L533:
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, -12(%ebp)
	jne	.L534
	.loc 1 1724 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE31:
	.size	mark_elimination, .-mark_elimination
	.type	reg_becomes_live, @function
reg_becomes_live:
.LFB32:
	.loc 1 1737 0
	pushl	%ebp
.LCFI91:
	movl	%esp, %ebp
.LCFI92:
	pushl	%ebx
.LCFI93:
	subl	$36, %esp
.LCFI94:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1740 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L540
	.loc 1 1741 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 8(%ebp)
.L540:
	.loc 1 1743 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L552
	.loc 1 1746 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1747 0
	cmpl	$175, -12(%ebp)
	jg	.L544
.LBB88:
	.loc 1 1749 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	mips_hard_regno_nregs@PLT
	movl	%eax, -8(%ebp)
	.loc 1 1750 0
	jmp	.L546
.L547:
	.loc 1 1752 0
	movl	live_relevant_regs@GOTOFF(%ebx), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	bitmap_set_bit@PLT
	.loc 1 1753 0
	movl	-12(%ebp), %edx
	movl	fixed_regs@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	testb	%al, %al
	jne	.L548
	.loc 1 1754 0
	movl	16(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	bitmap_set_bit@PLT
.L548:
	.loc 1 1755 0
	addl	$1, -12(%ebp)
.L546:
	.loc 1 1750 0
	cmpl	$0, -8(%ebp)
	setg	%al
	subl	$1, -8(%ebp)
	testb	%al, %al
	jne	.L547
	jmp	.L552
.L544:
.LBE88:
	.loc 1 1758 0
	movl	-12(%ebp), %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movl	reg_renumber@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movzwl	(%eax), %eax
	testw	%ax, %ax
	js	.L552
	.loc 1 1760 0
	movl	live_relevant_regs@GOTOFF(%ebx), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	bitmap_set_bit@PLT
	.loc 1 1761 0
	movl	16(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	bitmap_set_bit@PLT
.L552:
	.loc 1 1763 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE32:
	.size	reg_becomes_live, .-reg_becomes_live
	.type	reg_dies, @function
reg_dies:
.LFB33:
	.loc 1 1771 0
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
	.loc 1 1772 0
	cmpl	$175, 8(%ebp)
	jg	.L554
.LBB89:
	.loc 1 1774 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	mips_hard_regno_nregs@PLT
	movl	%eax, -8(%ebp)
	.loc 1 1775 0
	jmp	.L556
.L557:
	.loc 1 1777 0
	movl	live_relevant_regs@GOTOFF(%ebx), %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	bitmap_clear_bit@PLT
	.loc 1 1778 0
	movl	8(%ebp), %edx
	movl	fixed_regs@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	testb	%al, %al
	jne	.L558
	.loc 1 1779 0
	movl	16(%ebp), %edx
	addl	$36, %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	bitmap_set_bit@PLT
.L558:
	.loc 1 1780 0
	addl	$1, 8(%ebp)
.L556:
	.loc 1 1775 0
	cmpl	$0, -8(%ebp)
	setg	%al
	subl	$1, -8(%ebp)
	testb	%al, %al
	jne	.L557
	jmp	.L563
.L554:
.LBE89:
	.loc 1 1785 0
	movl	live_relevant_regs@GOTOFF(%ebx), %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	bitmap_clear_bit@PLT
	.loc 1 1786 0
	movl	8(%ebp), %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movl	reg_renumber@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movzwl	(%eax), %eax
	testw	%ax, %ax
	js	.L563
	.loc 1 1787 0
	movl	16(%ebp), %edx
	addl	$36, %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	bitmap_set_bit@PLT
.L563:
	.loc 1 1789 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE33:
	.size	reg_dies, .-reg_dies
	.section	.rodata
	.type	__FUNCTION__.13660, @object
	.size	__FUNCTION__.13660, 17
__FUNCTION__.13660:
	.string	"build_insn_chain"
	.text
.globl build_insn_chain
	.type	build_insn_chain, @function
build_insn_chain:
.LFB34:
	.loc 1 1796 0
	pushl	%ebp
.LCFI99:
	movl	%esp, %ebp
.LCFI100:
	pushl	%ebx
.LCFI101:
	subl	$100, %esp
.LCFI102:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1797 0
	movl	reload_insn_chain@GOT(%ebx), %eax
	movl	%eax, -56(%ebp)
	.loc 1 1798 0
	movl	$0, -52(%ebp)
	.loc 1 1799 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	52(%eax), %eax
	movl	%eax, -48(%ebp)
	.loc 1 1802 0
	movl	$1, 4(%esp)
	leal	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_initialize@PLT
	movl	%eax, live_relevant_regs@GOTOFF(%ebx)
	.loc 1 1804 0
	jmp	.L565
.L566:
.LBB90:
	.loc 1 1808 0
	movl	-48(%ebp), %eax
	movl	(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L567
.LBB91:
	.loc 1 1812 0
	movl	live_relevant_regs@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	bitmap_clear@PLT
.LBB92:
	.loc 1 1814 0
	movl	-48(%ebp), %eax
	movl	32(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -36(%ebp)
	movl	$0, -32(%ebp)
	movl	$0, -28(%ebp)
	movl	$0, -24(%ebp)
	jmp	.L569
.L570:
	movl	-36(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -36(%ebp)
.L569:
	cmpl	$0, -36(%ebp)
	je	.L571
	movl	-36(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	-32(%ebp), %eax
	jb	.L570
.L571:
	cmpl	$0, -36(%ebp)
	je	.L576
	movl	-36(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	-32(%ebp), %eax
	je	.L576
	movl	$0, -28(%ebp)
	movl	$0, -24(%ebp)
	jmp	.L576
.L579:
.LBB93:
	movl	-24(%ebp), %eax
	movl	-36(%ebp), %edx
	movl	12(%edx,%eax,4), %eax
	movl	%eax, -20(%ebp)
	cmpl	$0, -20(%ebp)
	je	.L580
	jmp	.L582
.L583:
.LBB94:
	movl	-28(%ebp), %ecx
	movl	$1, %eax
	sall	%cl, %eax
	movl	%eax, -16(%ebp)
	movl	-16(%ebp), %eax
	andl	-20(%ebp), %eax
	testl	%eax, %eax
	je	.L584
	movl	-16(%ebp), %eax
	notl	%eax
	andl	%eax, -20(%ebp)
	movl	-36(%ebp), %eax
	movl	8(%eax), %eax
	sall	$2, %eax
	addl	-24(%ebp), %eax
	sall	$5, %eax
	addl	-28(%ebp), %eax
	movl	%eax, -40(%ebp)
	cmpl	$175, -40(%ebp)
	jg	.L586
	movl	-40(%ebp), %eax
	shrl	$6, %eax
	movl	4+eliminable_regset@GOTOFF(%ebx,%eax,8), %edx
	movl	eliminable_regset@GOTOFF(%ebx,%eax,8), %eax
	movl	-40(%ebp), %ecx
	andl	$63, %ecx
	shrdl	%edx, %eax
	shrl	%cl, %edx
	testb	$32, %cl
	je	.L628
	movl	%edx, %eax
	xorl	%edx, %edx
.L628:
	andl	$1, %eax
	testl	%eax, %eax
	sete	-85(%ebp)
	jmp	.L588
.L586:
	movl	-40(%ebp), %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movl	reg_renumber@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movzwl	(%eax), %eax
	notl	%eax
	shrw	$15, %ax
	movb	%al, -85(%ebp)
.L588:
	cmpb	$0, -85(%ebp)
	je	.L589
	movl	live_relevant_regs@GOTOFF(%ebx), %edx
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	bitmap_set_bit@PLT
.L589:
	cmpl	$0, -20(%ebp)
	je	.L580
.L584:
.LBE94:
	addl	$1, -28(%ebp)
.L582:
	cmpl	$31, -28(%ebp)
	jbe	.L583
.L580:
	movl	$0, -28(%ebp)
.LBE93:
	addl	$1, -24(%ebp)
.L578:
	cmpl	$3, -24(%ebp)
	jbe	.L579
	movl	$0, -24(%ebp)
	movl	-36(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -36(%ebp)
.L576:
	cmpl	$0, -36(%ebp)
	jne	.L578
.L567:
.LBE92:
.LBE91:
	.loc 1 1824 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	je	.L592
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$45, %ax
	je	.L592
	.loc 1 1826 0
	call	new_insn_chain@PLT
	movl	%eax, -44(%ebp)
	.loc 1 1827 0
	movl	-44(%ebp), %edx
	movl	-52(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 1828 0
	movl	-44(%ebp), %eax
	movl	%eax, -52(%ebp)
	.loc 1 1829 0
	movl	-56(%ebp), %edx
	movl	-44(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 1830 0
	movl	-44(%ebp), %eax
	movl	%eax, -56(%ebp)
	.loc 1 1831 0
	movl	-44(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, 16(%edx)
	.loc 1 1832 0
	movl	-48(%ebp), %eax
	movl	44(%eax), %edx
	movl	-44(%ebp), %eax
	movl	%edx, 12(%eax)
	.loc 1 1834 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L595
.LBB95:
	.loc 1 1840 0
	movl	8(%ebp), %eax
	movl	68(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L597
.L598:
	.loc 1 1841 0
	movl	-12(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	$1, %al
	jne	.L599
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L599
	.loc 1 1843 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %ecx
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	movl	-44(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	reg_dies
.L599:
	.loc 1 1840 0
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -12(%ebp)
.L597:
	cmpl	$0, -12(%ebp)
	jne	.L598
	.loc 1 1846 0
	movl	live_relevant_regs@GOTOFF(%ebx), %eax
	movl	-44(%ebp), %edx
	addl	$20, %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	bitmap_copy@PLT
	.loc 1 1850 0
	movl	-44(%ebp), %edx
	addl	$36, %edx
	movl	8(%ebp), %eax
	movl	44(%eax), %ecx
	movl	%edx, 8(%esp)
	leal	reg_becomes_live@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	note_stores@PLT
	jmp	.L603
.L595:
.LBE95:
	.loc 1 1854 0
	movl	live_relevant_regs@GOTOFF(%ebx), %eax
	movl	-44(%ebp), %edx
	addl	$20, %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	bitmap_copy@PLT
.L603:
	.loc 1 1856 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L592
.LBB96:
	.loc 1 1862 0
	movl	8(%ebp), %eax
	movl	68(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L605
.L606:
	.loc 1 1863 0
	movl	-8(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	$10, %al
	jne	.L607
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L607
	.loc 1 1865 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %ecx
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	movl	-44(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	reg_dies
.L607:
	.loc 1 1862 0
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -8(%ebp)
.L605:
	cmpl	$0, -8(%ebp)
	jne	.L606
.L592:
.LBE96:
	.loc 1 1870 0
	movl	-48(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L610
	.loc 1 1871 0
	movl	-48(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -48(%ebp)
.L610:
	.loc 1 1879 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, -48(%ebp)
	jne	.L612
	.loc 1 1881 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 8(%ebp)
	jmp	.L614
.L615:
	.loc 1 1882 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L616
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$58, %ax
	je	.L616
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$54, %ax
	je	.L619
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$55, %ax
	jne	.L621
.L619:
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	prev_real_insn@PLT
	testl	%eax, %eax
	je	.L621
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	prev_real_insn@PLT
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	je	.L616
.L621:
	.loc 1 1888 0
	leal	__FUNCTION__.13660@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1888, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L616:
	.loc 1 1881 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 8(%ebp)
.L614:
	cmpl	$0, 8(%ebp)
	jne	.L615
	.loc 1 1889 0
	jmp	.L624
.L612:
.LBE90:
	.loc 1 1804 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 8(%ebp)
.L565:
	cmpl	$0, 8(%ebp)
	jne	.L566
.L624:
	.loc 1 1892 0
	movl	live_relevant_regs@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L625
	movl	live_relevant_regs@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	bitmap_clear@PLT
	movl	$0, live_relevant_regs@GOTOFF(%ebx)
.L625:
	.loc 1 1893 0
	movl	-56(%ebp), %eax
	movl	$0, (%eax)
	.loc 1 1894 0
	addl	$100, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE34:
	.size	build_insn_chain, .-build_insn_chain
	.section	.rodata
.LC2:
	.string	";; %d regs to allocate:"
.LC3:
	.string	" %d"
.LC4:
	.string	"+%d"
.LC5:
	.string	" (%d)"
.LC6:
	.string	";; %d conflicts:"
.LC7:
	.string	";; %d preferences:"
	.text
	.type	dump_conflicts, @function
dump_conflicts:
.LFB35:
	.loc 1 1902 0
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
	.loc 1 1906 0
	movl	$0, -16(%ebp)
	.loc 1 1907 0
	movl	$0, -24(%ebp)
	jmp	.L630
.L631:
	.loc 1 1909 0
	movl	-24(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	allocno_order@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	allocno@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movl	reg_renumber@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movzwl	(%eax), %eax
	testw	%ax, %ax
	jns	.L632
	.loc 1 1911 0
	addl	$1, -16(%ebp)
.L632:
	.loc 1 1907 0
	addl	$1, -24(%ebp)
.L630:
	movl	max_allocno@GOTOFF(%ebx), %eax
	cmpl	%eax, -24(%ebp)
	jl	.L631
	.loc 1 1913 0
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 1914 0
	movl	$0, -24(%ebp)
	jmp	.L635
.L636:
.LBB97:
	.loc 1 1917 0
	movl	-24(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	allocno_order@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	allocno@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movl	reg_renumber@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movzwl	(%eax), %eax
	testw	%ax, %ax
	jns	.L637
	.loc 1 1919 0
	movl	-24(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	allocno_order@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	allocno@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%esp)
	leal	.LC3@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 1920 0
	movl	$0, -12(%ebp)
	jmp	.L639
.L640:
	.loc 1 1921 0
	movl	-12(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_allocno@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %ecx
	movl	-24(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	allocno_order@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	cmpl	%eax, %ecx
	jne	.L641
	movl	-24(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	allocno_order@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	allocno@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	cmpl	-12(%ebp), %eax
	je	.L641
	.loc 1 1923 0
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC4@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
.L641:
	.loc 1 1920 0
	addl	$1, -12(%ebp)
.L639:
	movl	max_regno@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, -12(%ebp)
	jl	.L640
	.loc 1 1924 0
	movl	-24(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	allocno_order@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	allocno@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	4(%eax), %eax
	cmpl	$1, %eax
	je	.L637
	.loc 1 1925 0
	movl	-24(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	allocno_order@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	allocno@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, 8(%esp)
	leal	.LC5@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
.L637:
.LBE97:
	.loc 1 1914 0
	addl	$1, -24(%ebp)
.L635:
	movl	max_allocno@GOTOFF(%ebx), %eax
	cmpl	%eax, -24(%ebp)
	jl	.L636
	.loc 1 1927 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	fputc@PLT
	.loc 1 1929 0
	movl	$0, -24(%ebp)
	jmp	.L647
.L648:
.LBB98:
	.loc 1 1932 0
	movl	-24(%ebp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	allocno@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%esp)
	leal	.LC6@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 1933 0
	movl	$0, -8(%ebp)
	jmp	.L649
.L650:
	.loc 1 1934 0
	movl	allocno_row_words@GOTOFF(%ebx), %eax
	imull	-8(%ebp), %eax
	movl	%eax, %edx
	movl	-24(%ebp), %eax
	shrl	$6, %eax
	leal	(%edx,%eax), %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	conflicts@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	-24(%ebp), %ecx
	andl	$63, %ecx
	shrdl	%edx, %eax
	sarl	%cl, %edx
	testb	$32, %cl
	je	.L676
	movl	%edx, %eax
	sarl	$31, %edx
.L676:
	andl	$1, %eax
	testb	%al, %al
	je	.L651
	.loc 1 1935 0
	movl	-8(%ebp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	allocno@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%esp)
	leal	.LC3@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
.L651:
	.loc 1 1933 0
	addl	$1, -8(%ebp)
.L649:
	movl	max_allocno@GOTOFF(%ebx), %eax
	cmpl	%eax, -8(%ebp)
	jl	.L650
	.loc 1 1936 0
	movl	$0, -8(%ebp)
	jmp	.L654
.L655:
	.loc 1 1937 0
	movl	-24(%ebp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	allocno@GOTOFF(%ebx), %eax
	addl	%eax, %edx
	movl	-8(%ebp), %eax
	shrl	$6, %eax
	leal	24(%edx,%eax,8), %edx
	movl	(%edx), %eax
	movl	4(%edx), %edx
	movl	-8(%ebp), %ecx
	andl	$63, %ecx
	shrdl	%edx, %eax
	shrl	%cl, %edx
	testb	$32, %cl
	je	.L675
	movl	%edx, %eax
	xorl	%edx, %edx
.L675:
	andl	$1, %eax
	testl	%eax, %eax
	je	.L656
	.loc 1 1938 0
	movl	-8(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC3@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
.L656:
	.loc 1 1936 0
	addl	$1, -8(%ebp)
.L654:
	cmpl	$175, -8(%ebp)
	jle	.L655
	.loc 1 1939 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	fputc@PLT
	.loc 1 1941 0
	movl	$0, -20(%ebp)
	.loc 1 1942 0
	movl	$0, -8(%ebp)
	jmp	.L659
.L660:
	.loc 1 1943 0
	movl	-24(%ebp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	allocno@GOTOFF(%ebx), %eax
	addl	%eax, %edx
	movl	-8(%ebp), %eax
	shrl	$6, %eax
	leal	48(%edx,%eax,8), %edx
	movl	(%edx), %eax
	movl	4(%edx), %edx
	movl	-8(%ebp), %ecx
	andl	$63, %ecx
	shrdl	%edx, %eax
	shrl	%cl, %edx
	testb	$32, %cl
	je	.L674
	movl	%edx, %eax
	xorl	%edx, %edx
.L674:
	andl	$1, %eax
	testl	%eax, %eax
	je	.L661
	.loc 1 1944 0
	movl	$1, -20(%ebp)
.L661:
	.loc 1 1942 0
	addl	$1, -8(%ebp)
.L659:
	cmpl	$175, -8(%ebp)
	jle	.L660
	.loc 1 1946 0
	cmpl	$0, -20(%ebp)
	je	.L664
	.loc 1 1948 0
	movl	-24(%ebp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	allocno@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%esp)
	leal	.LC7@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 1949 0
	movl	$0, -8(%ebp)
	jmp	.L666
.L667:
	.loc 1 1950 0
	movl	-24(%ebp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	allocno@GOTOFF(%ebx), %eax
	addl	%eax, %edx
	movl	-8(%ebp), %eax
	shrl	$6, %eax
	leal	48(%edx,%eax,8), %edx
	movl	(%edx), %eax
	movl	4(%edx), %edx
	movl	-8(%ebp), %ecx
	andl	$63, %ecx
	shrdl	%edx, %eax
	shrl	%cl, %edx
	testb	$32, %cl
	je	.L673
	movl	%edx, %eax
	xorl	%edx, %edx
.L673:
	andl	$1, %eax
	testl	%eax, %eax
	je	.L668
	.loc 1 1951 0
	movl	-8(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC3@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
.L668:
	.loc 1 1949 0
	addl	$1, -8(%ebp)
.L666:
	cmpl	$175, -8(%ebp)
	jle	.L667
	.loc 1 1952 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	fputc@PLT
.L664:
.LBE98:
	.loc 1 1929 0
	addl	$1, -24(%ebp)
.L647:
	movl	max_allocno@GOTOFF(%ebx), %eax
	cmpl	%eax, -24(%ebp)
	jl	.L648
	.loc 1 1954 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	fputc@PLT
	.loc 1 1955 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE35:
	.size	dump_conflicts, .-dump_conflicts
	.section	.rodata
.LC8:
	.string	";; Register dispositions:\n"
.LC9:
	.string	"%d in %d  "
.LC10:
	.string	"\n\n;; Hard regs used: "
.LC11:
	.string	"\n\n"
	.text
.globl dump_global_regs
	.type	dump_global_regs, @function
dump_global_regs:
.LFB36:
	.loc 1 1960 0
	pushl	%ebp
.LCFI107:
	movl	%esp, %ebp
.LCFI108:
	pushl	%esi
.LCFI109:
	pushl	%ebx
.LCFI110:
	subl	$48, %esp
.LCFI111:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1963 0
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$26, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC8@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 1964 0
	movl	$176, -16(%ebp)
	movl	$0, -12(%ebp)
	jmp	.L678
.L679:
	.loc 1 1965 0
	movl	-16(%ebp), %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movl	reg_renumber@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movzwl	(%eax), %eax
	testw	%ax, %ax
	js	.L680
	.loc 1 1967 0
	movl	-16(%ebp), %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movl	reg_renumber@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movzwl	(%eax), %eax
	cwtl
	movl	%eax, 12(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC9@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 1968 0
	addl	$1, -12(%ebp)
	movl	-12(%ebp), %ecx
	movl	$715827883, -32(%ebp)
	movl	-32(%ebp), %eax
	imull	%ecx
	movl	%ecx, %eax
	sarl	$31, %eax
	movl	%edx, %esi
	subl	%eax, %esi
	movl	%esi, -28(%ebp)
	movl	-28(%ebp), %eax
	addl	%eax, %eax
	addl	-28(%ebp), %eax
	addl	%eax, %eax
	movl	%ecx, %edx
	subl	%eax, %edx
	movl	%edx, -28(%ebp)
	cmpl	$0, -28(%ebp)
	jne	.L680
	.loc 1 1969 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	fputc@PLT
.L680:
	.loc 1 1964 0
	addl	$1, -16(%ebp)
.L678:
	movl	max_regno@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, -16(%ebp)
	jl	.L679
	.loc 1 1972 0
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$21, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC10@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 1973 0
	movl	$0, -16(%ebp)
	jmp	.L684
.L685:
	.loc 1 1974 0
	movl	-16(%ebp), %eax
	movl	regs_ever_live@GOT(%ebx), %edx
	movzbl	(%edx,%eax), %eax
	testb	%al, %al
	je	.L686
	.loc 1 1975 0
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC3@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
.L686:
	.loc 1 1973 0
	addl	$1, -16(%ebp)
.L684:
	cmpl	$175, -16(%ebp)
	jle	.L685
	.loc 1 1976 0
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$2, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC11@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 1977 0
	addl	$48, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE36:
	.size	dump_global_regs, .-dump_global_regs
	.local	max_allocno
	.comm	max_allocno,4,4
	.local	reg_allocno
	.comm	reg_allocno,4,4
	.local	allocno
	.comm	allocno,4,4
	.local	allocno_order
	.comm	allocno_order,4,4
	.local	reg_may_share
	.comm	reg_may_share,4,4
	.local	conflicts
	.comm	conflicts,4,4
	.local	allocno_row_words
	.comm	allocno_row_words,4,4
	.local	hard_regs_live
	.comm	hard_regs_live,24,8
	.local	no_global_alloc_regs
	.comm	no_global_alloc_regs,24,8
	.local	regs_used_so_far
	.comm	regs_used_so_far,24,8
	.local	local_reg_n_refs
	.comm	local_reg_n_refs,704,32
	.local	local_reg_freq
	.comm	local_reg_freq,704,32
	.local	local_reg_live_length
	.comm	local_reg_live_length,704,32
	.local	allocnos_live
	.comm	allocnos_live,4,4
	.local	regs_set
	.comm	regs_set,4,4
	.local	n_regs_set
	.comm	n_regs_set,4,4
	.local	eliminable_regset
	.comm	eliminable_regset,24,8
	.local	live_relevant_regs
	.comm	live_relevant_regs,4,4
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
	.long	.LCFI5-.LCFI1
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
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
	.long	.LCFI6-.LFB16
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI7-.LCFI6
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI9-.LCFI7
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
	.long	.LCFI15-.LCFI11
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
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
	.long	.LCFI16-.LFB18
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI17-.LCFI16
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI21-.LCFI17
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
	.long	.LCFI22-.LFB19
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
.LEFDE8:
.LSFDE10:
	.long	.LEFDE10-.LASFDE10
.LASFDE10:
	.long	.Lframe0
	.long	.LFB20
	.long	.LFE20-.LFB20
	.byte	0x4
	.long	.LCFI28-.LFB20
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
.LEFDE10:
.LSFDE12:
	.long	.LEFDE12-.LASFDE12
.LASFDE12:
	.long	.Lframe0
	.long	.LFB21
	.long	.LFE21-.LFB21
	.byte	0x4
	.long	.LCFI34-.LFB21
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
.LEFDE12:
.LSFDE14:
	.long	.LEFDE14-.LASFDE14
.LASFDE14:
	.long	.Lframe0
	.long	.LFB22
	.long	.LFE22-.LFB22
	.byte	0x4
	.long	.LCFI38-.LFB22
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI39-.LCFI38
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI43-.LCFI39
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
	.long	.LFB23
	.long	.LFE23-.LFB23
	.byte	0x4
	.long	.LCFI44-.LFB23
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI45-.LCFI44
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI49-.LCFI45
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
	.long	.LCFI50-.LFB24
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
.LEFDE18:
.LSFDE20:
	.long	.LEFDE20-.LASFDE20
.LASFDE20:
	.long	.Lframe0
	.long	.LFB25
	.long	.LFE25-.LFB25
	.byte	0x4
	.long	.LCFI56-.LFB25
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI57-.LCFI56
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI61-.LCFI57
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
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
	.long	.LCFI62-.LFB26
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI63-.LCFI62
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE22:
.LSFDE24:
	.long	.LEFDE24-.LASFDE24
.LASFDE24:
	.long	.Lframe0
	.long	.LFB27
	.long	.LFE27-.LFB27
	.byte	0x4
	.long	.LCFI65-.LFB27
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI66-.LCFI65
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI68-.LCFI66
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
	.long	.LCFI69-.LFB28
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI70-.LCFI69
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI74-.LCFI70
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
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
	.long	.LCFI75-.LFB29
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI76-.LCFI75
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI80-.LCFI76
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
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
	.long	.LCFI81-.LFB30
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI82-.LCFI81
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI86-.LCFI82
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
	.long	.LFB31
	.long	.LFE31-.LFB31
	.byte	0x4
	.long	.LCFI87-.LFB31
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
.LEFDE32:
.LSFDE34:
	.long	.LEFDE34-.LASFDE34
.LASFDE34:
	.long	.Lframe0
	.long	.LFB32
	.long	.LFE32-.LFB32
	.byte	0x4
	.long	.LCFI91-.LFB32
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI92-.LCFI91
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI94-.LCFI92
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
	.long	.LCFI95-.LFB33
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
.LEFDE36:
.LSFDE38:
	.long	.LEFDE38-.LASFDE38
.LASFDE38:
	.long	.Lframe0
	.long	.LFB34
	.long	.LFE34-.LFB34
	.byte	0x4
	.long	.LCFI99-.LFB34
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
.LEFDE38:
.LSFDE40:
	.long	.LEFDE40-.LASFDE40
.LASFDE40:
	.long	.Lframe0
	.long	.LFB35
	.long	.LFE35-.LFB35
	.byte	0x4
	.long	.LCFI103-.LFB35
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
.LEFDE40:
.LSFDE42:
	.long	.LEFDE42-.LASFDE42
.LASFDE42:
	.long	.Lframe0
	.long	.LFB36
	.long	.LFE36-.LFB36
	.byte	0x4
	.long	.LCFI107-.LFB36
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI108-.LCFI107
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI111-.LCFI108
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x3
	.align 4
.LEFDE42:
	.file 2 "/usr/include/stdio.h"
	.file 3 "/usr/include/libio.h"
	.file 4 "/usr/include/bits/types.h"
	.file 5 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h"
	.file 6 "../../../kg++fe/gnu/MIPS/config.h"
	.file 7 "../../../kg++fe/gnu/rtl.h"
	.file 8 "../../../kg++fe/gnu/machmode.h"
	.file 9 "../../../kg++fe/gnu/bitmap.h"
	.file 10 "../../../kg++fe/gnu/basic-block.h"
	.file 11 "../../../kg++fe/gnu/sbitmap.h"
	.file 12 "../../../kg++fe/gnu/hard-reg-set.h"
	.file 13 "../../../kg++fe/gnu/MIPS/mips.h"
	.file 14 "../../../kg++fe/gnu/reload.h"
	.file 15 "../../../kg++fe/gnu/flags.h"
	.file 16 "../../../kg++fe/gnu/regs.h"
	.file 17 "../../../kg++fe/gnu/varray.h"
	.file 18 "../../../kg++fe/gnu/function.h"
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
	.long	.LCFI6-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI6-.Ltext0
	.long	.LCFI7-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI7-.Ltext0
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
	.long	.LFE18-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST4:
	.long	.LFB19-.Ltext0
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
	.long	.LFE19-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST5:
	.long	.LFB20-.Ltext0
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
	.long	.LFE20-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST6:
	.long	.LFB21-.Ltext0
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
	.long	.LFE21-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST7:
	.long	.LFB22-.Ltext0
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
	.long	.LFE22-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST8:
	.long	.LFB23-.Ltext0
	.long	.LCFI44-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI44-.Ltext0
	.long	.LCFI45-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI45-.Ltext0
	.long	.LFE23-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST9:
	.long	.LFB24-.Ltext0
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
	.long	.LFE24-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST10:
	.long	.LFB25-.Ltext0
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
	.long	.LFE25-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST11:
	.long	.LFB26-.Ltext0
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
	.long	.LFE26-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST12:
	.long	.LFB27-.Ltext0
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
	.long	.LFE27-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST13:
	.long	.LFB28-.Ltext0
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
	.long	.LFE28-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST14:
	.long	.LFB29-.Ltext0
	.long	.LCFI75-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI75-.Ltext0
	.long	.LCFI76-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI76-.Ltext0
	.long	.LFE29-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST15:
	.long	.LFB30-.Ltext0
	.long	.LCFI81-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI81-.Ltext0
	.long	.LCFI82-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI82-.Ltext0
	.long	.LFE30-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST16:
	.long	.LFB31-.Ltext0
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
	.long	.LFE31-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST17:
	.long	.LFB32-.Ltext0
	.long	.LCFI91-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI91-.Ltext0
	.long	.LCFI92-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI92-.Ltext0
	.long	.LFE32-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST18:
	.long	.LFB33-.Ltext0
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
	.long	.LFE33-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST19:
	.long	.LFB34-.Ltext0
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
	.long	.LFE34-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST20:
	.long	.LFB35-.Ltext0
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
	.long	.LFE35-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST21:
	.long	.LFB36-.Ltext0
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
	.long	.LFE36-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
	.section	.debug_info
	.long	0x50e7
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.Ldebug_line0
	.long	.Letext0
	.long	.Ltext0
	.string	"GNU C 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.byte	0x1
	.string	"../../../kg++fe/gnu/global.c"
	.string	"/usa/handong/simplnano/cmplr-open64-merge/targia32_sl1/g++fe/gnu"
	.uleb128 0x2
	.string	"rtx"
	.byte	0x6
	.byte	0xc
	.long	0xa6
	.uleb128 0x3
	.byte	0x4
	.long	0xac
	.uleb128 0x4
	.long	0x19c
	.string	"rtx_def"
	.byte	0xc
	.byte	0x6
	.byte	0xb
	.uleb128 0x5
	.string	"code"
	.byte	0x7
	.byte	0x84
	.long	0xb17
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"mode"
	.byte	0x7
	.byte	0x87
	.long	0x891
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"jump"
	.byte	0x7
	.byte	0x8e
	.long	0x464
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"call"
	.byte	0x7
	.byte	0x91
	.long	0x464
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"unchanging"
	.byte	0x7
	.byte	0x99
	.long	0x464
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"volatil"
	.byte	0x7
	.byte	0xa2
	.long	0x464
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"in_struct"
	.byte	0x7
	.byte	0xb4
	.long	0x464
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"used"
	.byte	0x7
	.byte	0xbb
	.long	0x464
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"integrated"
	.byte	0x7
	.byte	0xc0
	.long	0x464
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"frame_related"
	.byte	0x7
	.byte	0xc9
	.long	0x464
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"fld"
	.byte	0x7
	.byte	0xce
	.long	0x1734
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"rtvec"
	.byte	0x6
	.byte	0xe
	.long	0x1a9
	.uleb128 0x3
	.byte	0x4
	.long	0x1af
	.uleb128 0x4
	.long	0x1e4
	.string	"rtvec_def"
	.byte	0x8
	.byte	0x6
	.byte	0xd
	.uleb128 0x6
	.string	"num_elem"
	.byte	0x7
	.byte	0xf2
	.long	0x215
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"elem"
	.byte	0x7
	.byte	0xf3
	.long	0x1744
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"tree"
	.byte	0x6
	.byte	0x10
	.long	0x1f0
	.uleb128 0x3
	.byte	0x4
	.long	0x1f6
	.uleb128 0x7
	.string	"tree_node"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x208
	.uleb128 0x8
	.long	0x20d
	.uleb128 0x9
	.string	"char"
	.byte	0x1
	.byte	0x8
	.uleb128 0x9
	.string	"int"
	.byte	0x4
	.byte	0x5
	.uleb128 0xa
	.long	0x392
	.string	"reg_class"
	.byte	0x4
	.byte	0xd
	.value	0x7ec
	.uleb128 0xb
	.string	"NO_REGS"
	.sleb128 0
	.uleb128 0xb
	.string	"M16_NA_REGS"
	.sleb128 1
	.uleb128 0xb
	.string	"M16_REGS"
	.sleb128 2
	.uleb128 0xb
	.string	"T_REG"
	.sleb128 3
	.uleb128 0xb
	.string	"M16_T_REGS"
	.sleb128 4
	.uleb128 0xb
	.string	"GR_REGS"
	.sleb128 5
	.uleb128 0xb
	.string	"FP_REGS"
	.sleb128 6
	.uleb128 0xb
	.string	"HI_REG"
	.sleb128 7
	.uleb128 0xb
	.string	"LO_REG"
	.sleb128 8
	.uleb128 0xb
	.string	"HILO_REG"
	.sleb128 9
	.uleb128 0xb
	.string	"MD_REGS"
	.sleb128 10
	.uleb128 0xb
	.string	"COP0_REGS"
	.sleb128 11
	.uleb128 0xb
	.string	"COP2_REGS"
	.sleb128 12
	.uleb128 0xb
	.string	"COP3_REGS"
	.sleb128 13
	.uleb128 0xb
	.string	"HI_AND_GR_REGS"
	.sleb128 14
	.uleb128 0xb
	.string	"LO_AND_GR_REGS"
	.sleb128 15
	.uleb128 0xb
	.string	"HILO_AND_GR_REGS"
	.sleb128 16
	.uleb128 0xb
	.string	"HI_AND_FP_REGS"
	.sleb128 17
	.uleb128 0xb
	.string	"COP0_AND_GR_REGS"
	.sleb128 18
	.uleb128 0xb
	.string	"COP2_AND_GR_REGS"
	.sleb128 19
	.uleb128 0xb
	.string	"COP3_AND_GR_REGS"
	.sleb128 20
	.uleb128 0xb
	.string	"ALL_COP_REGS"
	.sleb128 21
	.uleb128 0xb
	.string	"ALL_COP_AND_GR_REGS"
	.sleb128 22
	.uleb128 0xb
	.string	"ST_REGS"
	.sleb128 23
	.uleb128 0xb
	.string	"ALL_REGS"
	.sleb128 24
	.uleb128 0xb
	.string	"LIM_REG_CLASSES"
	.sleb128 25
	.byte	0x0
	.uleb128 0xc
	.long	0x464
	.string	"mips_args"
	.byte	0x40
	.byte	0xd
	.value	0xaaa
	.uleb128 0xd
	.string	"gp_reg_found"
	.byte	0xd
	.value	0xaad
	.long	0x215
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"arg_number"
	.byte	0xd
	.value	0xab0
	.long	0x464
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"num_gprs"
	.byte	0xd
	.value	0xab5
	.long	0x464
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"num_fprs"
	.byte	0xd
	.value	0xab8
	.long	0x464
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.string	"stack_words"
	.byte	0xd
	.value	0xabb
	.long	0x464
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"fp_code"
	.byte	0xd
	.value	0xac8
	.long	0x215
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.string	"prototype"
	.byte	0xd
	.value	0xacb
	.long	0x215
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.string	"num_adjusts"
	.byte	0xd
	.value	0xad3
	.long	0x464
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xd
	.string	"adjust"
	.byte	0xd
	.value	0xad4
	.long	0x46b
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0xe
	.long	.LASF0
	.byte	0x4
	.byte	0x7
	.uleb128 0xf
	.long	0x47b
	.long	0x9b
	.uleb128 0x10
	.long	0x47b
	.byte	0x7
	.byte	0x0
	.uleb128 0xe
	.long	.LASF0
	.byte	0x4
	.byte	0x7
	.uleb128 0x11
	.string	"CUMULATIVE_ARGS"
	.byte	0xd
	.value	0xad5
	.long	0x392
	.uleb128 0x2
	.string	"size_t"
	.byte	0x5
	.byte	0xd6
	.long	0x464
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
	.byte	0x4
	.byte	0x3b
	.long	0x500
	.uleb128 0x2
	.string	"__off_t"
	.byte	0x4
	.byte	0x90
	.long	0x54a
	.uleb128 0x9
	.string	"long int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x2
	.string	"__off64_t"
	.byte	0x4
	.byte	0x91
	.long	0x52b
	.uleb128 0x12
	.byte	0x4
	.uleb128 0x3
	.byte	0x4
	.long	0x20d
	.uleb128 0x2
	.string	"FILE"
	.byte	0x2
	.byte	0x2e
	.long	0x57b
	.uleb128 0x13
	.long	0x7f6
	.long	.LASF1
	.byte	0x94
	.byte	0x2
	.byte	0x2e
	.uleb128 0xd
	.string	"_flags"
	.byte	0x3
	.value	0x10c
	.long	0x215
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"_IO_read_ptr"
	.byte	0x3
	.value	0x111
	.long	0x569
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"_IO_read_end"
	.byte	0x3
	.value	0x112
	.long	0x569
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"_IO_read_base"
	.byte	0x3
	.value	0x113
	.long	0x569
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.string	"_IO_write_base"
	.byte	0x3
	.value	0x114
	.long	0x569
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"_IO_write_ptr"
	.byte	0x3
	.value	0x115
	.long	0x569
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.string	"_IO_write_end"
	.byte	0x3
	.value	0x116
	.long	0x569
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.string	"_IO_buf_base"
	.byte	0x3
	.value	0x117
	.long	0x569
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xd
	.string	"_IO_buf_end"
	.byte	0x3
	.value	0x118
	.long	0x569
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.string	"_IO_save_base"
	.byte	0x3
	.value	0x11a
	.long	0x569
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xd
	.string	"_IO_backup_base"
	.byte	0x3
	.value	0x11b
	.long	0x569
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xd
	.string	"_IO_save_end"
	.byte	0x3
	.value	0x11c
	.long	0x569
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xd
	.string	"_markers"
	.byte	0x3
	.value	0x11e
	.long	0x84d
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.string	"_chain"
	.byte	0x3
	.value	0x120
	.long	0x853
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xd
	.string	"_fileno"
	.byte	0x3
	.value	0x122
	.long	0x215
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.string	"_flags2"
	.byte	0x3
	.value	0x126
	.long	0x215
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xd
	.string	"_old_offset"
	.byte	0x3
	.value	0x128
	.long	0x53b
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.string	"_cur_column"
	.byte	0x3
	.value	0x12c
	.long	0x4b9
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xd
	.string	"_vtable_offset"
	.byte	0x3
	.value	0x12d
	.long	0x4e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0xd
	.string	"_shortbuf"
	.byte	0x3
	.value	0x12e
	.long	0x859
	.byte	0x2
	.byte	0x23
	.uleb128 0x47
	.uleb128 0xd
	.string	"_lock"
	.byte	0x3
	.value	0x132
	.long	0x869
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xd
	.string	"_offset"
	.byte	0x3
	.value	0x13b
	.long	0x556
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xd
	.string	"__pad1"
	.byte	0x3
	.value	0x144
	.long	0x567
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xd
	.string	"__pad2"
	.byte	0x3
	.value	0x145
	.long	0x567
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xd
	.string	"__pad3"
	.byte	0x3
	.value	0x146
	.long	0x567
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xd
	.string	"__pad4"
	.byte	0x3
	.value	0x147
	.long	0x567
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xd
	.string	"__pad5"
	.byte	0x3
	.value	0x148
	.long	0x49a
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xd
	.string	"_mode"
	.byte	0x3
	.value	0x14a
	.long	0x215
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xd
	.string	"_unused2"
	.byte	0x3
	.value	0x14c
	.long	0x86f
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x4a8
	.uleb128 0x14
	.string	"_IO_lock_t"
	.byte	0x3
	.byte	0xb0
	.uleb128 0x4
	.long	0x84d
	.string	"_IO_marker"
	.byte	0xc
	.byte	0x3
	.byte	0xb6
	.uleb128 0x6
	.string	"_next"
	.byte	0x3
	.byte	0xb7
	.long	0x84d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"_sbuf"
	.byte	0x3
	.byte	0xb8
	.long	0x853
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"_pos"
	.byte	0x3
	.byte	0xbc
	.long	0x215
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x80a
	.uleb128 0x3
	.byte	0x4
	.long	0x57b
	.uleb128 0xf
	.long	0x869
	.long	0x20d
	.uleb128 0x10
	.long	0x47b
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7fc
	.uleb128 0xf
	.long	0x87f
	.long	0x20d
	.uleb128 0x10
	.long	0x47b
	.byte	0x27
	.byte	0x0
	.uleb128 0x8
	.long	0x215
	.uleb128 0x3
	.byte	0x4
	.long	0x215
	.uleb128 0x3
	.byte	0x4
	.long	0x890
	.uleb128 0x15
	.uleb128 0x16
	.long	0xada
	.string	"machine_mode"
	.byte	0x4
	.byte	0x8
	.byte	0x1d
	.uleb128 0xb
	.string	"VOIDmode"
	.sleb128 0
	.uleb128 0xb
	.string	"BImode"
	.sleb128 1
	.uleb128 0xb
	.string	"QImode"
	.sleb128 2
	.uleb128 0xb
	.string	"HImode"
	.sleb128 3
	.uleb128 0xb
	.string	"SImode"
	.sleb128 4
	.uleb128 0xb
	.string	"DImode"
	.sleb128 5
	.uleb128 0xb
	.string	"TImode"
	.sleb128 6
	.uleb128 0xb
	.string	"OImode"
	.sleb128 7
	.uleb128 0xb
	.string	"PQImode"
	.sleb128 8
	.uleb128 0xb
	.string	"PHImode"
	.sleb128 9
	.uleb128 0xb
	.string	"PSImode"
	.sleb128 10
	.uleb128 0xb
	.string	"PDImode"
	.sleb128 11
	.uleb128 0xb
	.string	"QFmode"
	.sleb128 12
	.uleb128 0xb
	.string	"HFmode"
	.sleb128 13
	.uleb128 0xb
	.string	"TQFmode"
	.sleb128 14
	.uleb128 0xb
	.string	"SFmode"
	.sleb128 15
	.uleb128 0xb
	.string	"DFmode"
	.sleb128 16
	.uleb128 0xb
	.string	"XFmode"
	.sleb128 17
	.uleb128 0xb
	.string	"TFmode"
	.sleb128 18
	.uleb128 0xb
	.string	"QCmode"
	.sleb128 19
	.uleb128 0xb
	.string	"HCmode"
	.sleb128 20
	.uleb128 0xb
	.string	"SCmode"
	.sleb128 21
	.uleb128 0xb
	.string	"DCmode"
	.sleb128 22
	.uleb128 0xb
	.string	"XCmode"
	.sleb128 23
	.uleb128 0xb
	.string	"TCmode"
	.sleb128 24
	.uleb128 0xb
	.string	"CQImode"
	.sleb128 25
	.uleb128 0xb
	.string	"CHImode"
	.sleb128 26
	.uleb128 0xb
	.string	"CSImode"
	.sleb128 27
	.uleb128 0xb
	.string	"CDImode"
	.sleb128 28
	.uleb128 0xb
	.string	"CTImode"
	.sleb128 29
	.uleb128 0xb
	.string	"COImode"
	.sleb128 30
	.uleb128 0xb
	.string	"V1DImode"
	.sleb128 31
	.uleb128 0xb
	.string	"V2QImode"
	.sleb128 32
	.uleb128 0xb
	.string	"V2HImode"
	.sleb128 33
	.uleb128 0xb
	.string	"V2SImode"
	.sleb128 34
	.uleb128 0xb
	.string	"V2DImode"
	.sleb128 35
	.uleb128 0xb
	.string	"V4QImode"
	.sleb128 36
	.uleb128 0xb
	.string	"V4HImode"
	.sleb128 37
	.uleb128 0xb
	.string	"V4SImode"
	.sleb128 38
	.uleb128 0xb
	.string	"V4DImode"
	.sleb128 39
	.uleb128 0xb
	.string	"V8QImode"
	.sleb128 40
	.uleb128 0xb
	.string	"V8HImode"
	.sleb128 41
	.uleb128 0xb
	.string	"V8SImode"
	.sleb128 42
	.uleb128 0xb
	.string	"V8DImode"
	.sleb128 43
	.uleb128 0xb
	.string	"V16QImode"
	.sleb128 44
	.uleb128 0xb
	.string	"V2SFmode"
	.sleb128 45
	.uleb128 0xb
	.string	"V2DFmode"
	.sleb128 46
	.uleb128 0xb
	.string	"V4SFmode"
	.sleb128 47
	.uleb128 0xb
	.string	"V4DFmode"
	.sleb128 48
	.uleb128 0xb
	.string	"V8SFmode"
	.sleb128 49
	.uleb128 0xb
	.string	"V8DFmode"
	.sleb128 50
	.uleb128 0xb
	.string	"V16SFmode"
	.sleb128 51
	.uleb128 0xb
	.string	"BLKmode"
	.sleb128 52
	.uleb128 0xb
	.string	"CCmode"
	.sleb128 53
	.uleb128 0xb
	.string	"MAX_MACHINE_MODE"
	.sleb128 54
	.byte	0x0
	.uleb128 0x2
	.string	"HARD_REG_ELT_TYPE"
	.byte	0xc
	.byte	0x29
	.long	0x511
	.uleb128 0x2
	.string	"HARD_REG_SET"
	.byte	0xc
	.byte	0x34
	.long	0xb07
	.uleb128 0xf
	.long	0xb17
	.long	0xada
	.uleb128 0x10
	.long	0x47b
	.byte	0x2
	.byte	0x0
	.uleb128 0x16
	.long	0x12e6
	.string	"rtx_code"
	.byte	0x4
	.byte	0x7
	.byte	0x29
	.uleb128 0xb
	.string	"UNKNOWN"
	.sleb128 0
	.uleb128 0xb
	.string	"NIL"
	.sleb128 1
	.uleb128 0xb
	.string	"INCLUDE"
	.sleb128 2
	.uleb128 0xb
	.string	"EXPR_LIST"
	.sleb128 3
	.uleb128 0xb
	.string	"INSN_LIST"
	.sleb128 4
	.uleb128 0xb
	.string	"MATCH_OPERAND"
	.sleb128 5
	.uleb128 0xb
	.string	"MATCH_SCRATCH"
	.sleb128 6
	.uleb128 0xb
	.string	"MATCH_DUP"
	.sleb128 7
	.uleb128 0xb
	.string	"MATCH_OPERATOR"
	.sleb128 8
	.uleb128 0xb
	.string	"MATCH_PARALLEL"
	.sleb128 9
	.uleb128 0xb
	.string	"MATCH_OP_DUP"
	.sleb128 10
	.uleb128 0xb
	.string	"MATCH_PAR_DUP"
	.sleb128 11
	.uleb128 0xb
	.string	"MATCH_INSN"
	.sleb128 12
	.uleb128 0xb
	.string	"DEFINE_INSN"
	.sleb128 13
	.uleb128 0xb
	.string	"DEFINE_PEEPHOLE"
	.sleb128 14
	.uleb128 0xb
	.string	"DEFINE_SPLIT"
	.sleb128 15
	.uleb128 0xb
	.string	"DEFINE_INSN_AND_SPLIT"
	.sleb128 16
	.uleb128 0xb
	.string	"DEFINE_PEEPHOLE2"
	.sleb128 17
	.uleb128 0xb
	.string	"DEFINE_COMBINE"
	.sleb128 18
	.uleb128 0xb
	.string	"DEFINE_EXPAND"
	.sleb128 19
	.uleb128 0xb
	.string	"DEFINE_DELAY"
	.sleb128 20
	.uleb128 0xb
	.string	"DEFINE_FUNCTION_UNIT"
	.sleb128 21
	.uleb128 0xb
	.string	"DEFINE_ASM_ATTRIBUTES"
	.sleb128 22
	.uleb128 0xb
	.string	"DEFINE_COND_EXEC"
	.sleb128 23
	.uleb128 0xb
	.string	"SEQUENCE"
	.sleb128 24
	.uleb128 0xb
	.string	"ADDRESS"
	.sleb128 25
	.uleb128 0xb
	.string	"DEFINE_CPU_UNIT"
	.sleb128 26
	.uleb128 0xb
	.string	"DEFINE_QUERY_CPU_UNIT"
	.sleb128 27
	.uleb128 0xb
	.string	"EXCLUSION_SET"
	.sleb128 28
	.uleb128 0xb
	.string	"PRESENCE_SET"
	.sleb128 29
	.uleb128 0xb
	.string	"ABSENCE_SET"
	.sleb128 30
	.uleb128 0xb
	.string	"DEFINE_BYPASS"
	.sleb128 31
	.uleb128 0xb
	.string	"DEFINE_AUTOMATON"
	.sleb128 32
	.uleb128 0xb
	.string	"AUTOMATA_OPTION"
	.sleb128 33
	.uleb128 0xb
	.string	"DEFINE_RESERVATION"
	.sleb128 34
	.uleb128 0xb
	.string	"DEFINE_INSN_RESERVATION"
	.sleb128 35
	.uleb128 0xb
	.string	"DEFINE_ATTR"
	.sleb128 36
	.uleb128 0xb
	.string	"ATTR"
	.sleb128 37
	.uleb128 0xb
	.string	"SET_ATTR"
	.sleb128 38
	.uleb128 0xb
	.string	"SET_ATTR_ALTERNATIVE"
	.sleb128 39
	.uleb128 0xb
	.string	"EQ_ATTR"
	.sleb128 40
	.uleb128 0xb
	.string	"ATTR_FLAG"
	.sleb128 41
	.uleb128 0xb
	.string	"INSN"
	.sleb128 42
	.uleb128 0xb
	.string	"JUMP_INSN"
	.sleb128 43
	.uleb128 0xb
	.string	"CALL_INSN"
	.sleb128 44
	.uleb128 0xb
	.string	"BARRIER"
	.sleb128 45
	.uleb128 0xb
	.string	"CODE_LABEL"
	.sleb128 46
	.uleb128 0xb
	.string	"NOTE"
	.sleb128 47
	.uleb128 0xb
	.string	"COND_EXEC"
	.sleb128 48
	.uleb128 0xb
	.string	"PARALLEL"
	.sleb128 49
	.uleb128 0xb
	.string	"ASM_INPUT"
	.sleb128 50
	.uleb128 0xb
	.string	"ASM_OPERANDS"
	.sleb128 51
	.uleb128 0xb
	.string	"UNSPEC"
	.sleb128 52
	.uleb128 0xb
	.string	"UNSPEC_VOLATILE"
	.sleb128 53
	.uleb128 0xb
	.string	"ADDR_VEC"
	.sleb128 54
	.uleb128 0xb
	.string	"ADDR_DIFF_VEC"
	.sleb128 55
	.uleb128 0xb
	.string	"PREFETCH"
	.sleb128 56
	.uleb128 0xb
	.string	"SET"
	.sleb128 57
	.uleb128 0xb
	.string	"USE"
	.sleb128 58
	.uleb128 0xb
	.string	"CLOBBER"
	.sleb128 59
	.uleb128 0xb
	.string	"CALL"
	.sleb128 60
	.uleb128 0xb
	.string	"RETURN"
	.sleb128 61
	.uleb128 0xb
	.string	"TRAP_IF"
	.sleb128 62
	.uleb128 0xb
	.string	"RESX"
	.sleb128 63
	.uleb128 0xb
	.string	"CONST_INT"
	.sleb128 64
	.uleb128 0xb
	.string	"CONST_DOUBLE"
	.sleb128 65
	.uleb128 0xb
	.string	"CONST_VECTOR"
	.sleb128 66
	.uleb128 0xb
	.string	"CONST_STRING"
	.sleb128 67
	.uleb128 0xb
	.string	"CONST"
	.sleb128 68
	.uleb128 0xb
	.string	"PC"
	.sleb128 69
	.uleb128 0xb
	.string	"VALUE"
	.sleb128 70
	.uleb128 0xb
	.string	"REG"
	.sleb128 71
	.uleb128 0xb
	.string	"SCRATCH"
	.sleb128 72
	.uleb128 0xb
	.string	"SUBREG"
	.sleb128 73
	.uleb128 0xb
	.string	"STRICT_LOW_PART"
	.sleb128 74
	.uleb128 0xb
	.string	"CONCAT"
	.sleb128 75
	.uleb128 0xb
	.string	"MEM"
	.sleb128 76
	.uleb128 0xb
	.string	"LABEL_REF"
	.sleb128 77
	.uleb128 0xb
	.string	"SYMBOL_REF"
	.sleb128 78
	.uleb128 0xb
	.string	"CC0"
	.sleb128 79
	.uleb128 0xb
	.string	"ADDRESSOF"
	.sleb128 80
	.uleb128 0xb
	.string	"QUEUED"
	.sleb128 81
	.uleb128 0xb
	.string	"IF_THEN_ELSE"
	.sleb128 82
	.uleb128 0xb
	.string	"COND"
	.sleb128 83
	.uleb128 0xb
	.string	"COMPARE"
	.sleb128 84
	.uleb128 0xb
	.string	"PLUS"
	.sleb128 85
	.uleb128 0xb
	.string	"MINUS"
	.sleb128 86
	.uleb128 0xb
	.string	"NEG"
	.sleb128 87
	.uleb128 0xb
	.string	"MULT"
	.sleb128 88
	.uleb128 0xb
	.string	"DIV"
	.sleb128 89
	.uleb128 0xb
	.string	"MOD"
	.sleb128 90
	.uleb128 0xb
	.string	"UDIV"
	.sleb128 91
	.uleb128 0xb
	.string	"UMOD"
	.sleb128 92
	.uleb128 0xb
	.string	"AND"
	.sleb128 93
	.uleb128 0xb
	.string	"IOR"
	.sleb128 94
	.uleb128 0xb
	.string	"XOR"
	.sleb128 95
	.uleb128 0xb
	.string	"NOT"
	.sleb128 96
	.uleb128 0xb
	.string	"ASHIFT"
	.sleb128 97
	.uleb128 0xb
	.string	"ROTATE"
	.sleb128 98
	.uleb128 0xb
	.string	"ASHIFTRT"
	.sleb128 99
	.uleb128 0xb
	.string	"LSHIFTRT"
	.sleb128 100
	.uleb128 0xb
	.string	"ROTATERT"
	.sleb128 101
	.uleb128 0xb
	.string	"SMIN"
	.sleb128 102
	.uleb128 0xb
	.string	"SMAX"
	.sleb128 103
	.uleb128 0xb
	.string	"UMIN"
	.sleb128 104
	.uleb128 0xb
	.string	"UMAX"
	.sleb128 105
	.uleb128 0xb
	.string	"PRE_DEC"
	.sleb128 106
	.uleb128 0xb
	.string	"PRE_INC"
	.sleb128 107
	.uleb128 0xb
	.string	"POST_DEC"
	.sleb128 108
	.uleb128 0xb
	.string	"POST_INC"
	.sleb128 109
	.uleb128 0xb
	.string	"PRE_MODIFY"
	.sleb128 110
	.uleb128 0xb
	.string	"POST_MODIFY"
	.sleb128 111
	.uleb128 0xb
	.string	"NE"
	.sleb128 112
	.uleb128 0xb
	.string	"EQ"
	.sleb128 113
	.uleb128 0xb
	.string	"GE"
	.sleb128 114
	.uleb128 0xb
	.string	"GT"
	.sleb128 115
	.uleb128 0xb
	.string	"LE"
	.sleb128 116
	.uleb128 0xb
	.string	"LT"
	.sleb128 117
	.uleb128 0xb
	.string	"GEU"
	.sleb128 118
	.uleb128 0xb
	.string	"GTU"
	.sleb128 119
	.uleb128 0xb
	.string	"LEU"
	.sleb128 120
	.uleb128 0xb
	.string	"LTU"
	.sleb128 121
	.uleb128 0xb
	.string	"UNORDERED"
	.sleb128 122
	.uleb128 0xb
	.string	"ORDERED"
	.sleb128 123
	.uleb128 0xb
	.string	"UNEQ"
	.sleb128 124
	.uleb128 0xb
	.string	"UNGE"
	.sleb128 125
	.uleb128 0xb
	.string	"UNGT"
	.sleb128 126
	.uleb128 0xb
	.string	"UNLE"
	.sleb128 127
	.uleb128 0xb
	.string	"UNLT"
	.sleb128 128
	.uleb128 0xb
	.string	"LTGT"
	.sleb128 129
	.uleb128 0xb
	.string	"SIGN_EXTEND"
	.sleb128 130
	.uleb128 0xb
	.string	"ZERO_EXTEND"
	.sleb128 131
	.uleb128 0xb
	.string	"TRUNCATE"
	.sleb128 132
	.uleb128 0xb
	.string	"FLOAT_EXTEND"
	.sleb128 133
	.uleb128 0xb
	.string	"FLOAT_TRUNCATE"
	.sleb128 134
	.uleb128 0xb
	.string	"FLOAT"
	.sleb128 135
	.uleb128 0xb
	.string	"FIX"
	.sleb128 136
	.uleb128 0xb
	.string	"UNSIGNED_FLOAT"
	.sleb128 137
	.uleb128 0xb
	.string	"UNSIGNED_FIX"
	.sleb128 138
	.uleb128 0xb
	.string	"ABS"
	.sleb128 139
	.uleb128 0xb
	.string	"SQRT"
	.sleb128 140
	.uleb128 0xb
	.string	"FFS"
	.sleb128 141
	.uleb128 0xb
	.string	"SIGN_EXTRACT"
	.sleb128 142
	.uleb128 0xb
	.string	"ZERO_EXTRACT"
	.sleb128 143
	.uleb128 0xb
	.string	"HIGH"
	.sleb128 144
	.uleb128 0xb
	.string	"LO_SUM"
	.sleb128 145
	.uleb128 0xb
	.string	"RANGE_INFO"
	.sleb128 146
	.uleb128 0xb
	.string	"RANGE_REG"
	.sleb128 147
	.uleb128 0xb
	.string	"RANGE_VAR"
	.sleb128 148
	.uleb128 0xb
	.string	"RANGE_LIVE"
	.sleb128 149
	.uleb128 0xb
	.string	"CONSTANT_P_RTX"
	.sleb128 150
	.uleb128 0xb
	.string	"CALL_PLACEHOLDER"
	.sleb128 151
	.uleb128 0xb
	.string	"VEC_MERGE"
	.sleb128 152
	.uleb128 0xb
	.string	"VEC_SELECT"
	.sleb128 153
	.uleb128 0xb
	.string	"VEC_CONCAT"
	.sleb128 154
	.uleb128 0xb
	.string	"VEC_DUPLICATE"
	.sleb128 155
	.uleb128 0xb
	.string	"SS_PLUS"
	.sleb128 156
	.uleb128 0xb
	.string	"US_PLUS"
	.sleb128 157
	.uleb128 0xb
	.string	"SS_MINUS"
	.sleb128 158
	.uleb128 0xb
	.string	"US_MINUS"
	.sleb128 159
	.uleb128 0xb
	.string	"SS_TRUNCATE"
	.sleb128 160
	.uleb128 0xb
	.string	"US_TRUNCATE"
	.sleb128 161
	.uleb128 0xb
	.string	"PHI"
	.sleb128 162
	.uleb128 0xb
	.string	"LAST_AND_UNUSED_RTX_CODE"
	.sleb128 163
	.byte	0x0
	.uleb128 0x17
	.long	0x13c0
	.byte	0x4
	.byte	0x7
	.byte	0x47
	.uleb128 0x5
	.string	"min_align"
	.byte	0x7
	.byte	0x49
	.long	0x464
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"base_after_vec"
	.byte	0x7
	.byte	0x4b
	.long	0x464
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"min_after_vec"
	.byte	0x7
	.byte	0x4c
	.long	0x464
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"max_after_vec"
	.byte	0x7
	.byte	0x4e
	.long	0x464
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"min_after_base"
	.byte	0x7
	.byte	0x50
	.long	0x464
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"max_after_base"
	.byte	0x7
	.byte	0x52
	.long	0x464
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"offset_unsigned"
	.byte	0x7
	.byte	0x55
	.long	0x464
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"scale"
	.byte	0x7
	.byte	0x57
	.long	0x464
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x2
	.string	"addr_diff_vec_flags"
	.byte	0x7
	.byte	0x58
	.long	0x12e6
	.uleb128 0x13
	.long	0x1437
	.long	.LASF2
	.byte	0x18
	.byte	0x7
	.byte	0x62
	.uleb128 0x6
	.string	"alias"
	.byte	0x7
	.byte	0x63
	.long	0x500
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"expr"
	.byte	0x7
	.byte	0x64
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"offset"
	.byte	0x7
	.byte	0x65
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"size"
	.byte	0x7
	.byte	0x66
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"align"
	.byte	0x7
	.byte	0x67
	.long	0x464
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x18
	.long	.LASF2
	.byte	0x7
	.byte	0x68
	.long	0x13db
	.uleb128 0x19
	.long	0x1514
	.string	"rtunion_def"
	.byte	0x8
	.byte	0x7
	.byte	0x6d
	.uleb128 0x1a
	.string	"rtwint"
	.byte	0x7
	.byte	0x6e
	.long	0x500
	.uleb128 0x1a
	.string	"rtint"
	.byte	0x7
	.byte	0x6f
	.long	0x215
	.uleb128 0x1a
	.string	"rtuint"
	.byte	0x7
	.byte	0x70
	.long	0x464
	.uleb128 0x1a
	.string	"rtstr"
	.byte	0x7
	.byte	0x71
	.long	0x202
	.uleb128 0x1a
	.string	"rtx"
	.byte	0x7
	.byte	0x72
	.long	0x9b
	.uleb128 0x1a
	.string	"rtvec"
	.byte	0x7
	.byte	0x73
	.long	0x19c
	.uleb128 0x1a
	.string	"rttype"
	.byte	0x7
	.byte	0x74
	.long	0x891
	.uleb128 0x1a
	.string	"rt_addr_diff_vec_flags"
	.byte	0x7
	.byte	0x75
	.long	0x13c0
	.uleb128 0x1a
	.string	"rt_cselib"
	.byte	0x7
	.byte	0x76
	.long	0x1528
	.uleb128 0x1a
	.string	"rtbit"
	.byte	0x7
	.byte	0x77
	.long	0x158e
	.uleb128 0x1a
	.string	"rttree"
	.byte	0x7
	.byte	0x78
	.long	0x1e4
	.uleb128 0x1a
	.string	"bb"
	.byte	0x7
	.byte	0x79
	.long	0x1719
	.uleb128 0x1a
	.string	"rtmem"
	.byte	0x7
	.byte	0x7a
	.long	0x171f
	.byte	0x0
	.uleb128 0x1b
	.string	"cselib_val_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x1514
	.uleb128 0x4
	.long	0x158e
	.string	"bitmap_head_def"
	.byte	0x10
	.byte	0x7
	.byte	0x77
	.uleb128 0x1c
	.long	.LASF3
	.byte	0x9
	.byte	0x3d
	.long	0x17f1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"current"
	.byte	0x9
	.byte	0x3e
	.long	0x17f1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"indx"
	.byte	0x9
	.byte	0x3f
	.long	0x464
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"using_obstack"
	.byte	0x9
	.byte	0x40
	.long	0x215
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x152e
	.uleb128 0x4
	.long	0x1719
	.string	"basic_block_def"
	.byte	0x50
	.byte	0x7
	.byte	0x79
	.uleb128 0x6
	.string	"head"
	.byte	0xa
	.byte	0xb5
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"end"
	.byte	0xa
	.byte	0xb5
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"head_tree"
	.byte	0xa
	.byte	0xb8
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"end_tree"
	.byte	0xa
	.byte	0xb9
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"pred"
	.byte	0xa
	.byte	0xbc
	.long	0x1ef3
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"succ"
	.byte	0xa
	.byte	0xbc
	.long	0x1ef3
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"local_set"
	.byte	0xa
	.byte	0xc1
	.long	0x1e23
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"cond_local_set"
	.byte	0xa
	.byte	0xc5
	.long	0x1e23
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"global_live_at_start"
	.byte	0xa
	.byte	0xcb
	.long	0x1e23
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.string	"global_live_at_end"
	.byte	0xa
	.byte	0xcd
	.long	0x1e23
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.string	"aux"
	.byte	0xa
	.byte	0xd0
	.long	0x567
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x6
	.string	"index"
	.byte	0xa
	.byte	0xd3
	.long	0x215
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x6
	.string	"prev_bb"
	.byte	0xa
	.byte	0xd6
	.long	0x1719
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x6
	.string	"next_bb"
	.byte	0xa
	.byte	0xd6
	.long	0x1719
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x6
	.string	"loop_depth"
	.byte	0xa
	.byte	0xd9
	.long	0x215
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x6
	.string	"loop_father"
	.byte	0xa
	.byte	0xdc
	.long	0x216c
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x6
	.string	"count"
	.byte	0xa
	.byte	0xdf
	.long	0x1e31
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x6
	.string	"frequency"
	.byte	0xa
	.byte	0xe2
	.long	0x215
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x6
	.string	"flags"
	.byte	0xa
	.byte	0xe5
	.long	0x215
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1594
	.uleb128 0x3
	.byte	0x4
	.long	0x1437
	.uleb128 0x2
	.string	"rtunion"
	.byte	0x7
	.byte	0x7c
	.long	0x1442
	.uleb128 0xf
	.long	0x1744
	.long	0x1725
	.uleb128 0x10
	.long	0x47b
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x1754
	.long	0x9b
	.uleb128 0x10
	.long	0x47b
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x9b
	.uleb128 0x2
	.string	"BITMAP_WORD"
	.byte	0x9
	.byte	0x1d
	.long	0x4cf
	.uleb128 0x4
	.long	0x17c5
	.string	"bitmap_element_def"
	.byte	0x1c
	.byte	0x9
	.byte	0x34
	.uleb128 0x6
	.string	"next"
	.byte	0x9
	.byte	0x35
	.long	0x17c5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"prev"
	.byte	0x9
	.byte	0x36
	.long	0x17c5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"indx"
	.byte	0x9
	.byte	0x37
	.long	0x464
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"bits"
	.byte	0x9
	.byte	0x38
	.long	0x17cb
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x176d
	.uleb128 0xf
	.long	0x17db
	.long	0x175a
	.uleb128 0x10
	.long	0x47b
	.byte	0x3
	.byte	0x0
	.uleb128 0x2
	.string	"bitmap_element"
	.byte	0x9
	.byte	0x39
	.long	0x176d
	.uleb128 0x3
	.byte	0x4
	.long	0x17db
	.uleb128 0x2
	.string	"bitmap_head"
	.byte	0x9
	.byte	0x42
	.long	0x152e
	.uleb128 0x2
	.string	"bitmap"
	.byte	0x9
	.byte	0x43
	.long	0x158e
	.uleb128 0x4
	.long	0x1872
	.string	"simple_bitmap_def"
	.byte	0x14
	.byte	0xb
	.byte	0x20
	.uleb128 0x6
	.string	"n_bits"
	.byte	0xb
	.byte	0x21
	.long	0x464
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"size"
	.byte	0xb
	.byte	0x22
	.long	0x464
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"bytes"
	.byte	0xb
	.byte	0x23
	.long	0x464
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"elms"
	.byte	0xb
	.byte	0x24
	.long	0x1872
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0xf
	.long	0x1882
	.long	0x511
	.uleb128 0x10
	.long	0x47b
	.byte	0x0
	.byte	0x0
	.uleb128 0x2
	.string	"sbitmap"
	.byte	0xb
	.byte	0x25
	.long	0x1891
	.uleb128 0x3
	.byte	0x4
	.long	0x1818
	.uleb128 0x4
	.long	0x18cd
	.string	"const_equiv_data"
	.byte	0x8
	.byte	0x11
	.byte	0x24
	.uleb128 0x6
	.string	"rtx"
	.byte	0x11
	.byte	0x32
	.long	0xa6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"age"
	.byte	0x11
	.byte	0x36
	.long	0x464
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x16
	.long	0x1a68
	.string	"varray_data_enum"
	.byte	0x4
	.byte	0x11
	.byte	0x3c
	.uleb128 0xb
	.string	"VARRAY_DATA_C"
	.sleb128 0
	.uleb128 0xb
	.string	"VARRAY_DATA_UC"
	.sleb128 1
	.uleb128 0xb
	.string	"VARRAY_DATA_S"
	.sleb128 2
	.uleb128 0xb
	.string	"VARRAY_DATA_US"
	.sleb128 3
	.uleb128 0xb
	.string	"VARRAY_DATA_I"
	.sleb128 4
	.uleb128 0xb
	.string	"VARRAY_DATA_U"
	.sleb128 5
	.uleb128 0xb
	.string	"VARRAY_DATA_L"
	.sleb128 6
	.uleb128 0xb
	.string	"VARRAY_DATA_UL"
	.sleb128 7
	.uleb128 0xb
	.string	"VARRAY_DATA_HINT"
	.sleb128 8
	.uleb128 0xb
	.string	"VARRAY_DATA_UHINT"
	.sleb128 9
	.uleb128 0xb
	.string	"VARRAY_DATA_GENERIC"
	.sleb128 10
	.uleb128 0xb
	.string	"VARRAY_DATA_CPTR"
	.sleb128 11
	.uleb128 0xb
	.string	"VARRAY_DATA_RTX"
	.sleb128 12
	.uleb128 0xb
	.string	"VARRAY_DATA_RTVEC"
	.sleb128 13
	.uleb128 0xb
	.string	"VARRAY_DATA_TREE"
	.sleb128 14
	.uleb128 0xb
	.string	"VARRAY_DATA_BITMAP"
	.sleb128 15
	.uleb128 0xb
	.string	"VARRAY_DATA_REG"
	.sleb128 16
	.uleb128 0xb
	.string	"VARRAY_DATA_CONST_EQUIV"
	.sleb128 17
	.uleb128 0xb
	.string	"VARRAY_DATA_BB"
	.sleb128 18
	.uleb128 0xb
	.string	"VARRAY_DATA_TE"
	.sleb128 19
	.uleb128 0xb
	.string	"NUM_VARRAY_DATA"
	.sleb128 20
	.byte	0x0
	.uleb128 0x19
	.long	0x1b64
	.string	"varray_data_tag"
	.byte	0x8
	.byte	0x11
	.byte	0x55
	.uleb128 0x1a
	.string	"c"
	.byte	0x11
	.byte	0x56
	.long	0x859
	.uleb128 0x1a
	.string	"uc"
	.byte	0x11
	.byte	0x58
	.long	0x1b64
	.uleb128 0x1a
	.string	"s"
	.byte	0x11
	.byte	0x5a
	.long	0x1b74
	.uleb128 0x1a
	.string	"us"
	.byte	0x11
	.byte	0x5c
	.long	0x1b84
	.uleb128 0x1a
	.string	"i"
	.byte	0x11
	.byte	0x5e
	.long	0x1b94
	.uleb128 0x1a
	.string	"u"
	.byte	0x11
	.byte	0x60
	.long	0x1ba4
	.uleb128 0x1a
	.string	"l"
	.byte	0x11
	.byte	0x62
	.long	0x1bb4
	.uleb128 0x1a
	.string	"ul"
	.byte	0x11
	.byte	0x64
	.long	0x1bc4
	.uleb128 0x1a
	.string	"hint"
	.byte	0x11
	.byte	0x66
	.long	0x1bd4
	.uleb128 0x1a
	.string	"uhint"
	.byte	0x11
	.byte	0x68
	.long	0x1872
	.uleb128 0x1a
	.string	"generic"
	.byte	0x11
	.byte	0x6a
	.long	0x1be4
	.uleb128 0x1a
	.string	"cptr"
	.byte	0x11
	.byte	0x6c
	.long	0x1bf4
	.uleb128 0x1a
	.string	"rtx"
	.byte	0x11
	.byte	0x6e
	.long	0x1c04
	.uleb128 0x1a
	.string	"rtvec"
	.byte	0x11
	.byte	0x70
	.long	0x1c14
	.uleb128 0x1a
	.string	"tree"
	.byte	0x11
	.byte	0x72
	.long	0x1c24
	.uleb128 0x1a
	.string	"bitmap"
	.byte	0x11
	.byte	0x74
	.long	0x1c34
	.uleb128 0x1a
	.string	"reg"
	.byte	0x11
	.byte	0x76
	.long	0x1c44
	.uleb128 0x1a
	.string	"const_equiv"
	.byte	0x11
	.byte	0x78
	.long	0x1d2e
	.uleb128 0x1a
	.string	"bb"
	.byte	0x11
	.byte	0x7a
	.long	0x1d3e
	.uleb128 0x1a
	.string	"te"
	.byte	0x11
	.byte	0x7c
	.long	0x1d4e
	.byte	0x0
	.uleb128 0xf
	.long	0x1b74
	.long	0x4a8
	.uleb128 0x10
	.long	0x47b
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x1b84
	.long	0x4f3
	.uleb128 0x10
	.long	0x47b
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x1b94
	.long	0x4b9
	.uleb128 0x10
	.long	0x47b
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x1ba4
	.long	0x215
	.uleb128 0x10
	.long	0x47b
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x1bb4
	.long	0x464
	.uleb128 0x10
	.long	0x47b
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x1bc4
	.long	0x54a
	.uleb128 0x10
	.long	0x47b
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x1bd4
	.long	0x4cf
	.uleb128 0x10
	.long	0x47b
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x1be4
	.long	0x500
	.uleb128 0x10
	.long	0x47b
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x1bf4
	.long	0x567
	.uleb128 0x10
	.long	0x47b
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x1c04
	.long	0x569
	.uleb128 0x10
	.long	0x47b
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x1c14
	.long	0xa6
	.uleb128 0x10
	.long	0x47b
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x1c24
	.long	0x1a9
	.uleb128 0x10
	.long	0x47b
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x1c34
	.long	0x1f0
	.uleb128 0x10
	.long	0x47b
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x1c44
	.long	0x158e
	.uleb128 0x10
	.long	0x47b
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x1c54
	.long	0x1d28
	.uleb128 0x10
	.long	0x47b
	.byte	0x0
	.byte	0x0
	.uleb128 0x4
	.long	0x1d28
	.string	"reg_info_def"
	.byte	0x2c
	.byte	0x11
	.byte	0x76
	.uleb128 0x6
	.string	"first_uid"
	.byte	0x10
	.byte	0x31
	.long	0x215
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"last_uid"
	.byte	0x10
	.byte	0x32
	.long	0x215
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"last_note_uid"
	.byte	0x10
	.byte	0x33
	.long	0x215
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"sets"
	.byte	0x10
	.byte	0x36
	.long	0x215
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"refs"
	.byte	0x10
	.byte	0x39
	.long	0x215
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"freq"
	.byte	0x10
	.byte	0x3a
	.long	0x215
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"deaths"
	.byte	0x10
	.byte	0x3b
	.long	0x215
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x1c
	.long	.LASF4
	.byte	0x10
	.byte	0x3c
	.long	0x215
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x1c
	.long	.LASF5
	.byte	0x10
	.byte	0x3d
	.long	0x215
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1c
	.long	.LASF6
	.byte	0x10
	.byte	0x3e
	.long	0x215
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.string	"changes_mode"
	.byte	0x10
	.byte	0x3f
	.long	0x20d
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1c54
	.uleb128 0xf
	.long	0x1d3e
	.long	0x1897
	.uleb128 0x10
	.long	0x47b
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x1d4e
	.long	0x1719
	.uleb128 0x10
	.long	0x47b
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x1d5e
	.long	0x1d69
	.uleb128 0x10
	.long	0x47b
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.string	"elt_list"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x1d5e
	.uleb128 0x2
	.string	"varray_data"
	.byte	0x11
	.byte	0x7e
	.long	0x1a68
	.uleb128 0x4
	.long	0x1df7
	.string	"varray_head_tag"
	.byte	0x18
	.byte	0x11
	.byte	0x81
	.uleb128 0x6
	.string	"num_elements"
	.byte	0x11
	.byte	0x82
	.long	0x49a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"elements_used"
	.byte	0x11
	.byte	0x83
	.long	0x49a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"type"
	.byte	0x11
	.byte	0x85
	.long	0x18cd
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"name"
	.byte	0x11
	.byte	0x86
	.long	0x202
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"data"
	.byte	0x11
	.byte	0x87
	.long	0x1d6f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x2
	.string	"varray_type"
	.byte	0x11
	.byte	0x8a
	.long	0x1e0a
	.uleb128 0x3
	.byte	0x4
	.long	0x1d82
	.uleb128 0x2
	.string	"regset_head"
	.byte	0xa
	.byte	0x20
	.long	0x17f7
	.uleb128 0x2
	.string	"regset"
	.byte	0xa
	.byte	0x22
	.long	0x180a
	.uleb128 0x2
	.string	"gcov_type"
	.byte	0xa
	.byte	0x75
	.long	0x500
	.uleb128 0x4
	.long	0x1eed
	.string	"edge_def"
	.byte	0x28
	.byte	0xa
	.byte	0x78
	.uleb128 0x6
	.string	"pred_next"
	.byte	0xa
	.byte	0x7a
	.long	0x1eed
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"succ_next"
	.byte	0xa
	.byte	0x7a
	.long	0x1eed
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"src"
	.byte	0xa
	.byte	0x7d
	.long	0x1719
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"dest"
	.byte	0xa
	.byte	0x7d
	.long	0x1719
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"insns"
	.byte	0xa
	.byte	0x80
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"aux"
	.byte	0xa
	.byte	0x83
	.long	0x567
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"flags"
	.byte	0xa
	.byte	0x85
	.long	0x215
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"probability"
	.byte	0xa
	.byte	0x86
	.long	0x215
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"count"
	.byte	0xa
	.byte	0x87
	.long	0x1e31
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1e42
	.uleb128 0x2
	.string	"edge"
	.byte	0xa
	.byte	0x89
	.long	0x1eed
	.uleb128 0x4
	.long	0x216c
	.string	"loop"
	.byte	0x80
	.byte	0xa
	.byte	0xdc
	.uleb128 0xd
	.string	"num"
	.byte	0xa
	.value	0x176
	.long	0x215
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"header"
	.byte	0xa
	.value	0x179
	.long	0x2172
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"latch"
	.byte	0xa
	.value	0x17c
	.long	0x2172
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"pre_header"
	.byte	0xa
	.value	0x17f
	.long	0x2172
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.string	"pre_header_edges"
	.byte	0xa
	.value	0x184
	.long	0x217d
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"num_pre_header_edges"
	.byte	0xa
	.value	0x187
	.long	0x215
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x1d
	.long	.LASF3
	.byte	0xa
	.value	0x18b
	.long	0x2172
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x1d
	.long	.LASF7
	.byte	0xa
	.value	0x18f
	.long	0x2172
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xd
	.string	"nodes"
	.byte	0xa
	.value	0x192
	.long	0x1882
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.string	"num_nodes"
	.byte	0xa
	.value	0x195
	.long	0x215
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xd
	.string	"entry_edges"
	.byte	0xa
	.value	0x198
	.long	0x217d
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xd
	.string	"num_entries"
	.byte	0xa
	.value	0x19b
	.long	0x215
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xd
	.string	"exit_edges"
	.byte	0xa
	.value	0x19e
	.long	0x217d
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.string	"num_exits"
	.byte	0xa
	.value	0x1a1
	.long	0x215
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xd
	.string	"exits_doms"
	.byte	0xa
	.value	0x1a4
	.long	0x1882
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.string	"depth"
	.byte	0xa
	.value	0x1a7
	.long	0x215
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xd
	.string	"pred"
	.byte	0xa
	.value	0x1aa
	.long	0x2183
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.string	"level"
	.byte	0xa
	.value	0x1ae
	.long	0x215
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xd
	.string	"outer"
	.byte	0xa
	.value	0x1b1
	.long	0x216c
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xd
	.string	"inner"
	.byte	0xa
	.value	0x1b4
	.long	0x216c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xd
	.string	"next"
	.byte	0xa
	.value	0x1b7
	.long	0x216c
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xd
	.string	"invalid"
	.byte	0xa
	.value	0x1ba
	.long	0x215
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xd
	.string	"aux"
	.byte	0xa
	.value	0x1bd
	.long	0x567
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xd
	.string	"vtop"
	.byte	0xa
	.value	0x1c3
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xd
	.string	"cont"
	.byte	0xa
	.value	0x1c7
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xd
	.string	"start"
	.byte	0xa
	.value	0x1ca
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xd
	.string	"end"
	.byte	0xa
	.value	0x1cd
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xd
	.string	"top"
	.byte	0xa
	.value	0x1d1
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0xd
	.string	"scan_start"
	.byte	0xa
	.value	0x1d4
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xd
	.string	"sink"
	.byte	0xa
	.value	0x1d7
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0xd
	.string	"exit_labels"
	.byte	0xa
	.value	0x1e2
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xd
	.string	"exit_count"
	.byte	0xa
	.value	0x1e6
	.long	0x215
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1eff
	.uleb128 0x18
	.long	.LASF6
	.byte	0xa
	.byte	0xe6
	.long	0x1719
	.uleb128 0x3
	.byte	0x4
	.long	0x1ef3
	.uleb128 0x3
	.byte	0x4
	.long	0x216c
	.uleb128 0x4
	.long	0x21ef
	.string	"var_refs_queue"
	.byte	0x10
	.byte	0x12
	.byte	0x17
	.uleb128 0x6
	.string	"modified"
	.byte	0x12
	.byte	0x18
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"promoted_mode"
	.byte	0x12
	.byte	0x19
	.long	0x891
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"unsignedp"
	.byte	0x12
	.byte	0x1a
	.long	0x215
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"next"
	.byte	0x12
	.byte	0x1b
	.long	0x21ef
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x2189
	.uleb128 0x13
	.long	0x223b
	.long	.LASF8
	.byte	0x10
	.byte	0x12
	.byte	0x24
	.uleb128 0x1c
	.long	.LASF3
	.byte	0x12
	.byte	0x26
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1c
	.long	.LASF7
	.byte	0x12
	.byte	0x27
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1c
	.long	.LASF9
	.byte	0x12
	.byte	0x28
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"next"
	.byte	0x12
	.byte	0x29
	.long	0x223b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x21f5
	.uleb128 0x4
	.long	0x2390
	.string	"emit_status"
	.byte	0x34
	.byte	0x12
	.byte	0x37
	.uleb128 0x6
	.string	"x_reg_rtx_no"
	.byte	0x12
	.byte	0x3a
	.long	0x215
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"x_first_label_num"
	.byte	0x12
	.byte	0x3d
	.long	0x215
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"x_first_insn"
	.byte	0x12
	.byte	0x44
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"x_last_insn"
	.byte	0x12
	.byte	0x45
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x1c
	.long	.LASF9
	.byte	0x12
	.byte	0x4a
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x1c
	.long	.LASF8
	.byte	0x12
	.byte	0x50
	.long	0x223b
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"x_cur_insn_uid"
	.byte	0x12
	.byte	0x54
	.long	0x215
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"x_last_linenum"
	.byte	0x12
	.byte	0x58
	.long	0x215
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"x_last_filename"
	.byte	0x12
	.byte	0x59
	.long	0x202
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.string	"regno_pointer_align_length"
	.byte	0x12
	.byte	0x5f
	.long	0x215
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.string	"regno_pointer_align"
	.byte	0x12
	.byte	0x65
	.long	0x7f6
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x6
	.string	"regno_decl"
	.byte	0x12
	.byte	0x69
	.long	0x2390
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x6
	.string	"x_regno_reg_rtx"
	.byte	0x12
	.byte	0x70
	.long	0x1754
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1e4
	.uleb128 0x4
	.long	0x2476
	.string	"expr_status"
	.byte	0x1c
	.byte	0x12
	.byte	0x7d
	.uleb128 0x6
	.string	"x_pending_stack_adjust"
	.byte	0x12
	.byte	0x80
	.long	0x215
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"x_inhibit_defer_pop"
	.byte	0x12
	.byte	0x91
	.long	0x215
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"x_stack_pointer_delta"
	.byte	0x12
	.byte	0x97
	.long	0x215
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"x_saveregs_value"
	.byte	0x12
	.byte	0x9c
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"x_apply_args_value"
	.byte	0x12
	.byte	0x9f
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"x_forced_labels"
	.byte	0x12
	.byte	0xa2
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"x_pending_chain"
	.byte	0x12
	.byte	0xa5
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x1e
	.long	0x24e0
	.long	.LASF10
	.byte	0x4
	.byte	0x12
	.value	0x1f1
	.uleb128 0xb
	.string	"FUNCTION_FREQUENCY_UNLIKELY_EXECUTED"
	.sleb128 0
	.uleb128 0xb
	.string	"FUNCTION_FREQUENCY_NORMAL"
	.sleb128 1
	.uleb128 0xb
	.string	"FUNCTION_FREQUENCY_HOT"
	.sleb128 2
	.byte	0x0
	.uleb128 0x1f
	.long	0x2e9f
	.string	"function"
	.value	0x134
	.byte	0x7
	.byte	0x19
	.uleb128 0x6
	.string	"eh"
	.byte	0x12
	.byte	0xb5
	.long	0x2eab
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"stmt"
	.byte	0x12
	.byte	0xb6
	.long	0x2ebf
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"expr"
	.byte	0x12
	.byte	0xb7
	.long	0x2ec5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"emit"
	.byte	0x12
	.byte	0xb8
	.long	0x2ecb
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"varasm"
	.byte	0x12
	.byte	0xb9
	.long	0x2ee1
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"name"
	.byte	0x12
	.byte	0xbe
	.long	0x202
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"decl"
	.byte	0x12
	.byte	0xc1
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"outer"
	.byte	0x12
	.byte	0xc4
	.long	0x2ee7
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"pops_args"
	.byte	0x12
	.byte	0xc9
	.long	0x215
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.string	"args_size"
	.byte	0x12
	.byte	0xce
	.long	0x215
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.string	"pretend_args_size"
	.byte	0x12
	.byte	0xd3
	.long	0x215
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x6
	.string	"outgoing_args_size"
	.byte	0x12
	.byte	0xd7
	.long	0x215
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x6
	.string	"arg_offset_rtx"
	.byte	0x12
	.byte	0xdb
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x6
	.string	"args_info"
	.byte	0x12
	.byte	0xdf
	.long	0x482
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x6
	.string	"return_rtx"
	.byte	0x12
	.byte	0xe5
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x6
	.string	"internal_arg_pointer"
	.byte	0x12
	.byte	0xe8
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x6
	.string	"cannot_inline"
	.byte	0x12
	.byte	0xec
	.long	0x202
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x6
	.string	"hard_reg_initial_vals"
	.byte	0x12
	.byte	0xf0
	.long	0x2f04
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x6
	.string	"x_function_call_count"
	.byte	0x12
	.byte	0xf3
	.long	0x215
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0x6
	.string	"x_nonlocal_labels"
	.byte	0x12
	.byte	0xf8
	.long	0x1e4
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x6
	.string	"x_nonlocal_goto_handler_slots"
	.byte	0x12
	.byte	0xfe
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0xd
	.string	"x_nonlocal_goto_handler_labels"
	.byte	0x12
	.value	0x102
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xd
	.string	"x_nonlocal_goto_stack_level"
	.byte	0x12
	.value	0x107
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0xd
	.string	"x_cleanup_label"
	.byte	0x12
	.value	0x10d
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0xd
	.string	"x_return_label"
	.byte	0x12
	.value	0x112
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.uleb128 0xd
	.string	"computed_goto_common_label"
	.byte	0x12
	.value	0x115
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0xd
	.string	"computed_goto_common_reg"
	.byte	0x12
	.value	0x116
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0xa4
	.uleb128 0xd
	.string	"x_save_expr_regs"
	.byte	0x12
	.value	0x11a
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0xd
	.string	"x_stack_slot_list"
	.byte	0x12
	.value	0x11e
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0xac
	.uleb128 0xd
	.string	"x_rtl_expr_chain"
	.byte	0x12
	.value	0x121
	.long	0x1e4
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0xd
	.string	"x_tail_recursion_label"
	.byte	0x12
	.value	0x125
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0xb4
	.uleb128 0xd
	.string	"x_tail_recursion_reentry"
	.byte	0x12
	.value	0x128
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0xd
	.string	"x_arg_pointer_save_area"
	.byte	0x12
	.value	0x12e
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0xbc
	.uleb128 0xd
	.string	"x_clobber_return_insn"
	.byte	0x12
	.value	0x133
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0xd
	.string	"x_frame_offset"
	.byte	0x12
	.value	0x138
	.long	0x500
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.uleb128 0xd
	.string	"x_context_display"
	.byte	0x12
	.value	0x13d
	.long	0x1e4
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.uleb128 0xd
	.string	"x_trampoline_list"
	.byte	0x12
	.value	0x146
	.long	0x1e4
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0xd
	.string	"x_parm_birth_insn"
	.byte	0x12
	.value	0x149
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0xd
	.string	"x_last_parm_insn"
	.byte	0x12
	.value	0x14d
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0xd
	.string	"x_max_parm_reg"
	.byte	0x12
	.value	0x151
	.long	0x464
	.byte	0x3
	.byte	0x23
	.uleb128 0xdc
	.uleb128 0xd
	.string	"x_parm_reg_stack_loc"
	.byte	0x12
	.value	0x157
	.long	0x1754
	.byte	0x3
	.byte	0x23
	.uleb128 0xe0
	.uleb128 0xd
	.string	"x_temp_slots"
	.byte	0x12
	.value	0x15a
	.long	0x2f16
	.byte	0x3
	.byte	0x23
	.uleb128 0xe4
	.uleb128 0xd
	.string	"x_temp_slot_level"
	.byte	0x12
	.value	0x15d
	.long	0x215
	.byte	0x3
	.byte	0x23
	.uleb128 0xe8
	.uleb128 0xd
	.string	"x_var_temp_slot_level"
	.byte	0x12
	.value	0x160
	.long	0x215
	.byte	0x3
	.byte	0x23
	.uleb128 0xec
	.uleb128 0xd
	.string	"x_target_temp_slot_level"
	.byte	0x12
	.value	0x166
	.long	0x215
	.byte	0x3
	.byte	0x23
	.uleb128 0xf0
	.uleb128 0xd
	.string	"fixup_var_refs_queue"
	.byte	0x12
	.value	0x16a
	.long	0x21ef
	.byte	0x3
	.byte	0x23
	.uleb128 0xf4
	.uleb128 0xd
	.string	"inlinable"
	.byte	0x12
	.value	0x16d
	.long	0x215
	.byte	0x3
	.byte	0x23
	.uleb128 0xf8
	.uleb128 0xd
	.string	"no_debugging_symbols"
	.byte	0x12
	.value	0x16e
	.long	0x215
	.byte	0x3
	.byte	0x23
	.uleb128 0xfc
	.uleb128 0xd
	.string	"original_arg_vector"
	.byte	0x12
	.value	0x16f
	.long	0x19c
	.byte	0x3
	.byte	0x23
	.uleb128 0x100
	.uleb128 0xd
	.string	"original_decl_initial"
	.byte	0x12
	.value	0x170
	.long	0x1e4
	.byte	0x3
	.byte	0x23
	.uleb128 0x104
	.uleb128 0xd
	.string	"inl_last_parm_insn"
	.byte	0x12
	.value	0x173
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0x108
	.uleb128 0xd
	.string	"inl_max_label_num"
	.byte	0x12
	.value	0x175
	.long	0x215
	.byte	0x3
	.byte	0x23
	.uleb128 0x10c
	.uleb128 0xd
	.string	"funcdef_no"
	.byte	0x12
	.value	0x178
	.long	0x215
	.byte	0x3
	.byte	0x23
	.uleb128 0x110
	.uleb128 0xd
	.string	"machine"
	.byte	0x12
	.value	0x17d
	.long	0x2f2f
	.byte	0x3
	.byte	0x23
	.uleb128 0x114
	.uleb128 0xd
	.string	"stack_alignment_needed"
	.byte	0x12
	.value	0x17f
	.long	0x215
	.byte	0x3
	.byte	0x23
	.uleb128 0x118
	.uleb128 0xd
	.string	"preferred_stack_boundary"
	.byte	0x12
	.value	0x181
	.long	0x215
	.byte	0x3
	.byte	0x23
	.uleb128 0x11c
	.uleb128 0xd
	.string	"language"
	.byte	0x12
	.value	0x184
	.long	0x2f49
	.byte	0x3
	.byte	0x23
	.uleb128 0x120
	.uleb128 0xd
	.string	"epilogue_delay_list"
	.byte	0x12
	.value	0x18a
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0x124
	.uleb128 0x20
	.string	"returns_struct"
	.byte	0x12
	.value	0x190
	.long	0x464
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x20
	.string	"returns_pcc_struct"
	.byte	0x12
	.value	0x194
	.long	0x464
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x20
	.string	"returns_pointer"
	.byte	0x12
	.value	0x197
	.long	0x464
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x20
	.string	"needs_context"
	.byte	0x12
	.value	0x19a
	.long	0x464
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x20
	.string	"calls_setjmp"
	.byte	0x12
	.value	0x19d
	.long	0x464
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x20
	.string	"calls_longjmp"
	.byte	0x12
	.value	0x1a0
	.long	0x464
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x20
	.string	"calls_alloca"
	.byte	0x12
	.value	0x1a4
	.long	0x464
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x20
	.string	"calls_eh_return"
	.byte	0x12
	.value	0x1a7
	.long	0x464
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x20
	.string	"has_nonlocal_label"
	.byte	0x12
	.value	0x1ab
	.long	0x464
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x20
	.string	"has_nonlocal_goto"
	.byte	0x12
	.value	0x1af
	.long	0x464
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x20
	.string	"contains_functions"
	.byte	0x12
	.value	0x1b2
	.long	0x464
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x20
	.string	"has_computed_jump"
	.byte	0x12
	.value	0x1b5
	.long	0x464
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x20
	.string	"is_thunk"
	.byte	0x12
	.value	0x1ba
	.long	0x464
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x20
	.string	"all_throwers_are_sibcalls"
	.byte	0x12
	.value	0x1c1
	.long	0x464
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x20
	.string	"instrument_entry_exit"
	.byte	0x12
	.value	0x1c5
	.long	0x464
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x20
	.string	"arc_profile"
	.byte	0x12
	.value	0x1c8
	.long	0x464
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x20
	.string	"profile"
	.byte	0x12
	.value	0x1cb
	.long	0x464
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x20
	.string	"limit_stack"
	.byte	0x12
	.value	0x1cf
	.long	0x464
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x20
	.string	"stdarg"
	.byte	0x12
	.value	0x1d2
	.long	0x464
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x20
	.string	"x_whole_function_mode_p"
	.byte	0x12
	.value	0x1d8
	.long	0x464
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x20
	.string	"x_dont_save_pending_sizes_p"
	.byte	0x12
	.value	0x1e1
	.long	0x464
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x20
	.string	"uses_const_pool"
	.byte	0x12
	.value	0x1e4
	.long	0x464
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x20
	.string	"uses_pic_offset_table"
	.byte	0x12
	.value	0x1e7
	.long	0x464
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x20
	.string	"uses_eh_lsda"
	.byte	0x12
	.value	0x1ea
	.long	0x464
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x20
	.string	"arg_pointer_save_area_init"
	.byte	0x12
	.value	0x1ed
	.long	0x464
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1d
	.long	.LASF10
	.byte	0x12
	.value	0x1fa
	.long	0x2476
	.byte	0x3
	.byte	0x23
	.uleb128 0x12c
	.uleb128 0xd
	.string	"max_jumptable_ents"
	.byte	0x12
	.value	0x1fe
	.long	0x215
	.byte	0x3
	.byte	0x23
	.uleb128 0x130
	.byte	0x0
	.uleb128 0x1b
	.string	"eh_status"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x2e9f
	.uleb128 0x1b
	.string	"stmt_status"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x2eb1
	.uleb128 0x3
	.byte	0x4
	.long	0x2396
	.uleb128 0x3
	.byte	0x4
	.long	0x2241
	.uleb128 0x1b
	.string	"varasm_status"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x2ed1
	.uleb128 0x3
	.byte	0x4
	.long	0x24e0
	.uleb128 0x1b
	.string	"initial_value_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x2eed
	.uleb128 0x1b
	.string	"temp_slot"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x2f0a
	.uleb128 0x1b
	.string	"machine_function"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x2f1c
	.uleb128 0x1b
	.string	"language_function"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x2f35
	.uleb128 0x4
	.long	0x2f7e
	.string	"needs"
	.byte	0x96
	.byte	0xe
	.byte	0xc4
	.uleb128 0x6
	.string	"regs"
	.byte	0xe
	.byte	0xc6
	.long	0x2f7e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"groups"
	.byte	0xe
	.byte	0xc7
	.long	0x2f94
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.byte	0x0
	.uleb128 0xf
	.long	0x2f94
	.long	0x4f3
	.uleb128 0x10
	.long	0x47b
	.byte	0x1
	.uleb128 0x10
	.long	0x47b
	.byte	0x18
	.byte	0x0
	.uleb128 0xf
	.long	0x2fa4
	.long	0x4f3
	.uleb128 0x10
	.long	0x47b
	.byte	0x18
	.byte	0x0
	.uleb128 0x4
	.long	0x3101
	.string	"insn_chain"
	.byte	0xec
	.byte	0xe
	.byte	0xcf
	.uleb128 0x6
	.string	"next"
	.byte	0xe
	.byte	0xd1
	.long	0x3101
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"prev"
	.byte	0xe
	.byte	0xd1
	.long	0x3101
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"next_need_reload"
	.byte	0xe
	.byte	0xd5
	.long	0x3101
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"block"
	.byte	0xe
	.byte	0xd8
	.long	0x215
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"insn"
	.byte	0xe
	.byte	0xda
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"live_throughout"
	.byte	0xe
	.byte	0xdd
	.long	0x1e10
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"dead_or_set"
	.byte	0xe
	.byte	0xde
	.long	0x1e10
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.string	"rld"
	.byte	0xe
	.byte	0xe1
	.long	0x3110
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x6
	.string	"n_reloads"
	.byte	0xe
	.byte	0xe2
	.long	0x215
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x6
	.string	"used_spill_regs"
	.byte	0xe
	.byte	0xe5
	.long	0xaf3
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x6
	.string	"need"
	.byte	0xe
	.byte	0xe8
	.long	0x2f4f
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x5
	.string	"need_reload"
	.byte	0xe
	.byte	0xeb
	.long	0x464
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x3
	.byte	0x23
	.uleb128 0xe8
	.uleb128 0x5
	.string	"need_operand_change"
	.byte	0xe
	.byte	0xee
	.long	0x464
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x3
	.byte	0x23
	.uleb128 0xe8
	.uleb128 0x5
	.string	"need_elim"
	.byte	0xe
	.byte	0xf0
	.long	0x464
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x3
	.byte	0x23
	.uleb128 0xe8
	.uleb128 0x5
	.string	"is_caller_save_insn"
	.byte	0xe
	.byte	0xf2
	.long	0x464
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x3
	.byte	0x23
	.uleb128 0xe8
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x2fa4
	.uleb128 0x1b
	.string	"reload"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x3107
	.uleb128 0x4
	.long	0x3223
	.string	"allocno"
	.byte	0x90
	.byte	0x1
	.byte	0x58
	.uleb128 0x6
	.string	"reg"
	.byte	0x1
	.byte	0x59
	.long	0x215
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"size"
	.byte	0x1
	.byte	0x5c
	.long	0x215
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1c
	.long	.LASF5
	.byte	0x1
	.byte	0x5f
	.long	0x215
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"n_refs"
	.byte	0x1
	.byte	0x62
	.long	0x215
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"freq"
	.byte	0x1
	.byte	0x65
	.long	0x215
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x1c
	.long	.LASF4
	.byte	0x1
	.byte	0x69
	.long	0x215
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"hard_reg_conflicts"
	.byte	0x1
	.byte	0x6d
	.long	0xaf3
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"hard_reg_preferences"
	.byte	0x1
	.byte	0x73
	.long	0xaf3
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x6
	.string	"hard_reg_copy_preferences"
	.byte	0x1
	.byte	0x7a
	.long	0xaf3
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x6
	.string	"hard_reg_full_preferences"
	.byte	0x1
	.byte	0x80
	.long	0xaf3
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x6
	.string	"regs_someone_prefers"
	.byte	0x1
	.byte	0x84
	.long	0xaf3
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.byte	0x0
	.uleb128 0x21
	.long	0x3432
	.byte	0x1
	.string	"global_alloc"
	.byte	0x1
	.value	0x13f
	.byte	0x1
	.long	0x215
	.long	.LFB15
	.long	.LFE15
	.long	.LLST0
	.uleb128 0x22
	.string	"file"
	.byte	0x1
	.value	0x13e
	.long	0x3432
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x23
	.string	"retval"
	.byte	0x1
	.value	0x140
	.long	0x215
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x24
	.long	0x3295
	.byte	0x8
	.byte	0x1
	.value	0x142
	.uleb128 0xd
	.string	"from"
	.byte	0x1
	.value	0x142
	.long	0x87f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"to"
	.byte	0x1
	.value	0x142
	.long	0x87f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x23
	.string	"need_fp"
	.byte	0x1
	.value	0x144
	.long	0x215
	.byte	0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x23
	.string	"i"
	.byte	0x1
	.value	0x14b
	.long	0x49a
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x23
	.string	"x"
	.byte	0x1
	.value	0x14c
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x25
	.long	0x32e3
	.long	.LBB2
	.long	.LBE2
	.uleb128 0x26
	.long	.LASF11
	.byte	0x1
	.value	0x153
	.long	0x3438
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.byte	0x0
	.uleb128 0x25
	.long	0x3301
	.long	.LBB3
	.long	.LBE3
	.uleb128 0x26
	.long	.LASF11
	.byte	0x1
	.value	0x170
	.long	0x3438
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.byte	0x0
	.uleb128 0x25
	.long	0x332d
	.long	.LBB4
	.long	.LBE4
	.uleb128 0x23
	.string	"r1"
	.byte	0x1
	.value	0x19b
	.long	0x215
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x23
	.string	"r2"
	.byte	0x1
	.value	0x19c
	.long	0x215
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.byte	0x0
	.uleb128 0x25
	.long	0x334a
	.long	.LBB5
	.long	.LBE5
	.uleb128 0x23
	.string	"num"
	.byte	0x1
	.value	0x1bc
	.long	0x215
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.byte	0x0
	.uleb128 0x25
	.long	0x3383
	.long	.LBB6
	.long	.LBE6
	.uleb128 0x26
	.long	.LASF12
	.byte	0x1
	.value	0x1cf
	.long	0x215
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x26
	.long	.LASF13
	.byte	0x1
	.value	0x1d0
	.long	0x215
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x23
	.string	"j"
	.byte	0x1
	.value	0x1d1
	.long	0x215
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.byte	0x0
	.uleb128 0x25
	.long	0x33af
	.long	.LBB7
	.long	.LBE7
	.uleb128 0x26
	.long	.LASF11
	.byte	0x1
	.value	0x1ff
	.long	0x3438
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x26
	.long	.LASF14
	.byte	0x1
	.value	0x1ff
	.long	0x3438
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.byte	0x0
	.uleb128 0x25
	.long	0x33db
	.long	.LBB8
	.long	.LBE8
	.uleb128 0x26
	.long	.LASF11
	.byte	0x1
	.value	0x201
	.long	0x3438
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.long	.LASF14
	.byte	0x1
	.value	0x201
	.long	0x3438
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.uleb128 0x25
	.long	0x3407
	.long	.LBB9
	.long	.LBE9
	.uleb128 0x26
	.long	.LASF11
	.byte	0x1
	.value	0x203
	.long	0x3438
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x26
	.long	.LASF14
	.byte	0x1
	.value	0x203
	.long	0x3438
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x23
	.string	"eliminables"
	.byte	0x1
	.value	0x142
	.long	0x4b7e
	.byte	0x5
	.byte	0x3
	.long	eliminables.10227
	.uleb128 0x27
	.long	.LASF15
	.long	0x4b93
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.10250
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x56f
	.uleb128 0x3
	.byte	0x4
	.long	0xada
	.uleb128 0x28
	.long	0x34c2
	.string	"allocno_compare"
	.byte	0x1
	.value	0x25b
	.byte	0x1
	.long	0x215
	.long	.LFB16
	.long	.LFE16
	.long	.LLST1
	.uleb128 0x22
	.string	"v1p"
	.byte	0x1
	.value	0x259
	.long	0x88a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x22
	.string	"v2p"
	.byte	0x1
	.value	0x25a
	.long	0x88a
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x23
	.string	"v1"
	.byte	0x1
	.value	0x25c
	.long	0x215
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x23
	.string	"v2"
	.byte	0x1
	.value	0x25c
	.long	0x215
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x23
	.string	"pri1"
	.byte	0x1
	.value	0x262
	.long	0x215
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x23
	.string	"pri2"
	.byte	0x1
	.value	0x266
	.long	0x215
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x29
	.long	0x36bb
	.string	"global_conflicts"
	.byte	0x1
	.value	0x277
	.byte	0x1
	.long	.LFB17
	.long	.LFE17
	.long	.LLST2
	.uleb128 0x23
	.string	"i"
	.byte	0x1
	.value	0x278
	.long	0x215
	.byte	0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x23
	.string	"b"
	.byte	0x1
	.value	0x279
	.long	0x2172
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x23
	.string	"insn"
	.byte	0x1
	.value	0x27a
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x23
	.string	"block_start_allocnos"
	.byte	0x1
	.value	0x27b
	.long	0x884
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x25
	.long	0x3619
	.long	.LBB10
	.long	.LBE10
	.uleb128 0x23
	.string	"old"
	.byte	0x1
	.value	0x295
	.long	0x1e23
	.byte	0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x23
	.string	"ax"
	.byte	0x1
	.value	0x296
	.long	0x215
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x25
	.long	0x3580
	.long	.LBB11
	.long	.LBE11
	.uleb128 0x26
	.long	.LASF11
	.byte	0x1
	.value	0x298
	.long	0x3438
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.byte	0x0
	.uleb128 0x2a
	.long	.LBB12
	.long	.LBE12
	.uleb128 0x23
	.string	"ptr_"
	.byte	0x1
	.value	0x299
	.long	0x17f1
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x23
	.string	"indx_"
	.byte	0x1
	.value	0x299
	.long	0x464
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x26
	.long	.LASF16
	.byte	0x1
	.value	0x299
	.long	0x464
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x26
	.long	.LASF17
	.byte	0x1
	.value	0x299
	.long	0x464
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2a
	.long	.LBB13
	.long	.LBE13
	.uleb128 0x26
	.long	.LASF18
	.byte	0x1
	.value	0x299
	.long	0x175a
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2a
	.long	.LBB14
	.long	.LBE14
	.uleb128 0x23
	.string	"mask_"
	.byte	0x1
	.value	0x299
	.long	0x175a
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2a
	.long	.LBB15
	.long	.LBE15
	.uleb128 0x23
	.string	"a"
	.byte	0x1
	.value	0x299
	.long	0x215
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2a
	.long	.LBB16
	.long	.LBE16
	.uleb128 0x23
	.string	"code"
	.byte	0x1
	.value	0x2de
	.long	0xb17
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x23
	.string	"link"
	.byte	0x1
	.value	0x2df
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x25
	.long	0x369f
	.long	.LBB17
	.long	.LBE17
	.uleb128 0x23
	.string	"used_in_output"
	.byte	0x1
	.value	0x31e
	.long	0x215
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x23
	.string	"i"
	.byte	0x1
	.value	0x31f
	.long	0x215
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x23
	.string	"reg"
	.byte	0x1
	.value	0x320
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2a
	.long	.LBB18
	.long	.LBE18
	.uleb128 0x23
	.string	"set"
	.byte	0x1
	.value	0x324
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.byte	0x0
	.uleb128 0x2a
	.long	.LBB19
	.long	.LBE19
	.uleb128 0x23
	.string	"note"
	.byte	0x1
	.value	0x333
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x29
	.long	0x3844
	.string	"expand_preferences"
	.byte	0x1
	.value	0x34a
	.byte	0x1
	.long	.LFB18
	.long	.LFE18
	.long	.LLST3
	.uleb128 0x23
	.string	"insn"
	.byte	0x1
	.value	0x34b
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x23
	.string	"link"
	.byte	0x1
	.value	0x34c
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x23
	.string	"set"
	.byte	0x1
	.value	0x34d
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2a
	.long	.LBB20
	.long	.LBE20
	.uleb128 0x23
	.string	"a1"
	.byte	0x1
	.value	0x35e
	.long	0x215
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x23
	.string	"a2"
	.byte	0x1
	.value	0x35f
	.long	0x215
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x25
	.long	0x376a
	.long	.LBB21
	.long	.LBE21
	.uleb128 0x26
	.long	.LASF11
	.byte	0x1
	.value	0x363
	.long	0x3438
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x26
	.long	.LASF14
	.byte	0x1
	.value	0x363
	.long	0x3438
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.byte	0x0
	.uleb128 0x25
	.long	0x3796
	.long	.LBB22
	.long	.LBE22
	.uleb128 0x26
	.long	.LASF11
	.byte	0x1
	.value	0x365
	.long	0x3438
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x26
	.long	.LASF14
	.byte	0x1
	.value	0x365
	.long	0x3438
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.byte	0x0
	.uleb128 0x25
	.long	0x37c2
	.long	.LBB23
	.long	.LBE23
	.uleb128 0x26
	.long	.LASF11
	.byte	0x1
	.value	0x369
	.long	0x3438
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x26
	.long	.LASF14
	.byte	0x1
	.value	0x369
	.long	0x3438
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.byte	0x0
	.uleb128 0x25
	.long	0x37ee
	.long	.LBB24
	.long	.LBE24
	.uleb128 0x26
	.long	.LASF11
	.byte	0x1
	.value	0x36b
	.long	0x3438
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x26
	.long	.LASF14
	.byte	0x1
	.value	0x36b
	.long	0x3438
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.byte	0x0
	.uleb128 0x25
	.long	0x381a
	.long	.LBB25
	.long	.LBE25
	.uleb128 0x26
	.long	.LASF11
	.byte	0x1
	.value	0x36d
	.long	0x3438
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.long	.LASF14
	.byte	0x1
	.value	0x36d
	.long	0x3438
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.uleb128 0x2a
	.long	.LBB26
	.long	.LBE26
	.uleb128 0x26
	.long	.LASF11
	.byte	0x1
	.value	0x36f
	.long	0x3438
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x26
	.long	.LASF14
	.byte	0x1
	.value	0x36f
	.long	0x3438
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x29
	.long	0x3bac
	.string	"prune_preferences"
	.byte	0x1
	.value	0x37d
	.byte	0x1
	.long	.LFB19
	.long	.LFE19
	.long	.LLST4
	.uleb128 0x23
	.string	"i"
	.byte	0x1
	.value	0x37e
	.long	0x215
	.byte	0x3
	.byte	0x91
	.sleb128 -156
	.uleb128 0x23
	.string	"num"
	.byte	0x1
	.value	0x37f
	.long	0x215
	.byte	0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x23
	.string	"allocno_to_order"
	.byte	0x1
	.value	0x380
	.long	0x884
	.byte	0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0x25
	.long	0x3a03
	.long	.LBB27
	.long	.LBE27
	.uleb128 0x23
	.string	"temp"
	.byte	0x1
	.value	0x389
	.long	0xaf3
	.byte	0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x25
	.long	0x38f2
	.long	.LBB28
	.long	.LBE28
	.uleb128 0x26
	.long	.LASF11
	.byte	0x1
	.value	0x38d
	.long	0x3438
	.byte	0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x26
	.long	.LASF14
	.byte	0x1
	.value	0x38d
	.long	0x3438
	.byte	0x3
	.byte	0x91
	.sleb128 -140
	.byte	0x0
	.uleb128 0x25
	.long	0x3920
	.long	.LBB29
	.long	.LBE29
	.uleb128 0x26
	.long	.LASF11
	.byte	0x1
	.value	0x390
	.long	0x3438
	.byte	0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x26
	.long	.LASF14
	.byte	0x1
	.value	0x390
	.long	0x3438
	.byte	0x3
	.byte	0x91
	.sleb128 -132
	.byte	0x0
	.uleb128 0x25
	.long	0x394e
	.long	.LBB30
	.long	.LBE30
	.uleb128 0x26
	.long	.LASF11
	.byte	0x1
	.value	0x392
	.long	0x3438
	.byte	0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x26
	.long	.LASF14
	.byte	0x1
	.value	0x392
	.long	0x3438
	.byte	0x3
	.byte	0x91
	.sleb128 -124
	.byte	0x0
	.uleb128 0x25
	.long	0x397c
	.long	.LBB31
	.long	.LBE31
	.uleb128 0x26
	.long	.LASF11
	.byte	0x1
	.value	0x394
	.long	0x3438
	.byte	0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x26
	.long	.LASF14
	.byte	0x1
	.value	0x394
	.long	0x3438
	.byte	0x3
	.byte	0x91
	.sleb128 -116
	.byte	0x0
	.uleb128 0x25
	.long	0x39aa
	.long	.LBB32
	.long	.LBE32
	.uleb128 0x26
	.long	.LASF11
	.byte	0x1
	.value	0x398
	.long	0x3438
	.byte	0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x26
	.long	.LASF14
	.byte	0x1
	.value	0x398
	.long	0x3438
	.byte	0x3
	.byte	0x91
	.sleb128 -108
	.byte	0x0
	.uleb128 0x25
	.long	0x39d8
	.long	.LBB33
	.long	.LBE33
	.uleb128 0x26
	.long	.LASF11
	.byte	0x1
	.value	0x399
	.long	0x3438
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x26
	.long	.LASF14
	.byte	0x1
	.value	0x399
	.long	0x3438
	.byte	0x3
	.byte	0x91
	.sleb128 -100
	.byte	0x0
	.uleb128 0x2a
	.long	.LBB34
	.long	.LBE34
	.uleb128 0x26
	.long	.LASF11
	.byte	0x1
	.value	0x39a
	.long	0x3438
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x26
	.long	.LASF14
	.byte	0x1
	.value	0x39a
	.long	0x3438
	.byte	0x3
	.byte	0x91
	.sleb128 -92
	.byte	0x0
	.byte	0x0
	.uleb128 0x2a
	.long	.LBB35
	.long	.LBE35
	.uleb128 0x23
	.string	"temp"
	.byte	0x1
	.value	0x3a4
	.long	0xaf3
	.byte	0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x23
	.string	"temp2"
	.byte	0x1
	.value	0x3a4
	.long	0xaf3
	.byte	0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x23
	.string	"allocno2"
	.byte	0x1
	.value	0x3a5
	.long	0x215
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x25
	.long	0x3a62
	.long	.LBB36
	.long	.LBE36
	.uleb128 0x26
	.long	.LASF11
	.byte	0x1
	.value	0x3a9
	.long	0x3438
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.byte	0x0
	.uleb128 0x25
	.long	0x3a80
	.long	.LBB37
	.long	.LBE37
	.uleb128 0x26
	.long	.LASF11
	.byte	0x1
	.value	0x3aa
	.long	0x3438
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.byte	0x0
	.uleb128 0x25
	.long	0x3b2a
	.long	.LBB38
	.long	.LBE38
	.uleb128 0x23
	.string	"i_"
	.byte	0x1
	.value	0x3ac
	.long	0x215
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x26
	.long	.LASF19
	.byte	0x1
	.value	0x3ac
	.long	0x215
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x23
	.string	"p_"
	.byte	0x1
	.value	0x3ac
	.long	0x3bac
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2a
	.long	.LBB39
	.long	.LBE39
	.uleb128 0x26
	.long	.LASF18
	.byte	0x1
	.value	0x3ac
	.long	0x511
	.byte	0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x25
	.long	0x3b00
	.long	.LBB40
	.long	.LBE40
	.uleb128 0x26
	.long	.LASF11
	.byte	0x1
	.value	0x3ac
	.long	0x3438
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x26
	.long	.LASF14
	.byte	0x1
	.value	0x3ac
	.long	0x3438
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.byte	0x0
	.uleb128 0x2a
	.long	.LBB41
	.long	.LBE41
	.uleb128 0x26
	.long	.LASF11
	.byte	0x1
	.value	0x3ac
	.long	0x3438
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x26
	.long	.LASF14
	.byte	0x1
	.value	0x3ac
	.long	0x3438
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x25
	.long	0x3b56
	.long	.LBB42
	.long	.LBE42
	.uleb128 0x26
	.long	.LASF11
	.byte	0x1
	.value	0x3ba
	.long	0x3438
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x26
	.long	.LASF14
	.byte	0x1
	.value	0x3ba
	.long	0x3438
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.byte	0x0
	.uleb128 0x25
	.long	0x3b82
	.long	.LBB43
	.long	.LBE43
	.uleb128 0x26
	.long	.LASF11
	.byte	0x1
	.value	0x3bb
	.long	0x3438
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.long	.LASF14
	.byte	0x1
	.value	0x3bb
	.long	0x3438
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.uleb128 0x2a
	.long	.LBB44
	.long	.LBE44
	.uleb128 0x26
	.long	.LASF11
	.byte	0x1
	.value	0x3bc
	.long	0x3438
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x26
	.long	.LASF14
	.byte	0x1
	.value	0x3bc
	.long	0x3438
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x500
	.uleb128 0x29
	.long	0x4260
	.string	"find_reg"
	.byte	0x1
	.value	0x3da
	.byte	0x1
	.long	.LFB20
	.long	.LFE20
	.long	.LLST5
	.uleb128 0x22
	.string	"num"
	.byte	0x1
	.value	0x3d5
	.long	0x215
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x22
	.string	"losers"
	.byte	0x1
	.value	0x3d6
	.long	0x3438
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x22
	.string	"alt_regs_p"
	.byte	0x1
	.value	0x3d7
	.long	0x215
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x22
	.string	"accept_call_clobbered"
	.byte	0x1
	.value	0x3d8
	.long	0x215
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x22
	.string	"retrying"
	.byte	0x1
	.value	0x3d9
	.long	0x215
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x23
	.string	"i"
	.byte	0x1
	.value	0x3db
	.long	0x215
	.byte	0x3
	.byte	0x91
	.sleb128 -268
	.uleb128 0x23
	.string	"best_reg"
	.byte	0x1
	.value	0x3db
	.long	0x215
	.byte	0x3
	.byte	0x91
	.sleb128 -264
	.uleb128 0x23
	.string	"pass"
	.byte	0x1
	.value	0x3db
	.long	0x215
	.byte	0x3
	.byte	0x91
	.sleb128 -260
	.uleb128 0x23
	.string	"used"
	.byte	0x1
	.value	0x3dc
	.long	0xaf3
	.byte	0x3
	.byte	0x91
	.sleb128 -320
	.uleb128 0x23
	.string	"used1"
	.byte	0x1
	.value	0x3dc
	.long	0xaf3
	.byte	0x3
	.byte	0x91
	.sleb128 -344
	.uleb128 0x23
	.string	"used2"
	.byte	0x1
	.value	0x3dc
	.long	0xaf3
	.byte	0x3
	.byte	0x91
	.sleb128 -368
	.uleb128 0x23
	.string	"class"
	.byte	0x1
	.value	0x3de
	.long	0x21c
	.byte	0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0x23
	.string	"mode"
	.byte	0x1
	.value	0x3e1
	.long	0x891
	.byte	0x3
	.byte	0x91
	.sleb128 -252
	.uleb128 0x2b
	.string	"no_copy_prefs"
	.byte	0x1
	.value	0x458
	.long	.L275
	.uleb128 0x2b
	.string	"no_prefs"
	.byte	0x1
	.value	0x47f
	.long	.L293
	.uleb128 0x25
	.long	0x3d1d
	.long	.LBB45
	.long	.LBE45
	.uleb128 0x26
	.long	.LASF11
	.byte	0x1
	.value	0x3e4
	.long	0x3438
	.byte	0x3
	.byte	0x91
	.sleb128 -248
	.uleb128 0x26
	.long	.LASF14
	.byte	0x1
	.value	0x3e4
	.long	0x3438
	.byte	0x3
	.byte	0x91
	.sleb128 -244
	.byte	0x0
	.uleb128 0x25
	.long	0x3d4b
	.long	.LBB46
	.long	.LBE46
	.uleb128 0x26
	.long	.LASF11
	.byte	0x1
	.value	0x3e6
	.long	0x3438
	.byte	0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x26
	.long	.LASF14
	.byte	0x1
	.value	0x3e6
	.long	0x3438
	.byte	0x3
	.byte	0x91
	.sleb128 -236
	.byte	0x0
	.uleb128 0x25
	.long	0x3d79
	.long	.LBB47
	.long	.LBE47
	.uleb128 0x26
	.long	.LASF11
	.byte	0x1
	.value	0x3e8
	.long	0x3438
	.byte	0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x26
	.long	.LASF14
	.byte	0x1
	.value	0x3e8
	.long	0x3438
	.byte	0x3
	.byte	0x91
	.sleb128 -228
	.byte	0x0
	.uleb128 0x25
	.long	0x3da7
	.long	.LBB48
	.long	.LBE48
	.uleb128 0x26
	.long	.LASF11
	.byte	0x1
	.value	0x3eb
	.long	0x3438
	.byte	0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x26
	.long	.LASF14
	.byte	0x1
	.value	0x3eb
	.long	0x3438
	.byte	0x3
	.byte	0x91
	.sleb128 -220
	.byte	0x0
	.uleb128 0x25
	.long	0x3dd5
	.long	.LBB49
	.long	.LBE49
	.uleb128 0x26
	.long	.LASF11
	.byte	0x1
	.value	0x3ed
	.long	0x3438
	.byte	0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x26
	.long	.LASF14
	.byte	0x1
	.value	0x3ed
	.long	0x3438
	.byte	0x3
	.byte	0x91
	.sleb128 -212
	.byte	0x0
	.uleb128 0x25
	.long	0x3e03
	.long	.LBB50
	.long	.LBE50
	.uleb128 0x26
	.long	.LASF11
	.byte	0x1
	.value	0x3ef
	.long	0x3438
	.byte	0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x26
	.long	.LASF14
	.byte	0x1
	.value	0x3ef
	.long	0x3438
	.byte	0x3
	.byte	0x91
	.sleb128 -204
	.byte	0x0
	.uleb128 0x25
	.long	0x3e31
	.long	.LBB51
	.long	.LBE51
	.uleb128 0x26
	.long	.LASF11
	.byte	0x1
	.value	0x3f0
	.long	0x3438
	.byte	0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x26
	.long	.LASF14
	.byte	0x1
	.value	0x3f0
	.long	0x3438
	.byte	0x3
	.byte	0x91
	.sleb128 -196
	.byte	0x0
	.uleb128 0x25
	.long	0x3e5f
	.long	.LBB52
	.long	.LBE52
	.uleb128 0x26
	.long	.LASF11
	.byte	0x1
	.value	0x3f2
	.long	0x3438
	.byte	0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x26
	.long	.LASF14
	.byte	0x1
	.value	0x3f2
	.long	0x3438
	.byte	0x3
	.byte	0x91
	.sleb128 -188
	.byte	0x0
	.uleb128 0x25
	.long	0x3e8d
	.long	.LBB53
	.long	.LBE53
	.uleb128 0x26
	.long	.LASF11
	.byte	0x1
	.value	0x3fe
	.long	0x3438
	.byte	0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x26
	.long	.LASF14
	.byte	0x1
	.value	0x3fe
	.long	0x3438
	.byte	0x3
	.byte	0x91
	.sleb128 -180
	.byte	0x0
	.uleb128 0x25
	.long	0x3ebb
	.long	.LBB54
	.long	.LBE54
	.uleb128 0x26
	.long	.LASF11
	.byte	0x1
	.value	0x3ff
	.long	0x3438
	.byte	0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x26
	.long	.LASF14
	.byte	0x1
	.value	0x3ff
	.long	0x3438
	.byte	0x3
	.byte	0x91
	.sleb128 -172
	.byte	0x0
	.uleb128 0x25
	.long	0x3ee9
	.long	.LBB55
	.long	.LBE55
	.uleb128 0x26
	.long	.LASF11
	.byte	0x1
	.value	0x400
	.long	0x3438
	.byte	0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x26
	.long	.LASF14
	.byte	0x1
	.value	0x400
	.long	0x3438
	.byte	0x3
	.byte	0x91
	.sleb128 -164
	.byte	0x0
	.uleb128 0x25
	.long	0x3f17
	.long	.LBB56
	.long	.LBE56
	.uleb128 0x26
	.long	.LASF11
	.byte	0x1
	.value	0x408
	.long	0x3438
	.byte	0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x26
	.long	.LASF14
	.byte	0x1
	.value	0x408
	.long	0x3438
	.byte	0x3
	.byte	0x91
	.sleb128 -156
	.byte	0x0
	.uleb128 0x25
	.long	0x3f5d
	.long	.LBB57
	.long	.LBE57
	.uleb128 0x26
	.long	.LASF12
	.byte	0x1
	.value	0x40c
	.long	0x215
	.byte	0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x2a
	.long	.LBB58
	.long	.LBE58
	.uleb128 0x23
	.string	"j"
	.byte	0x1
	.value	0x416
	.long	0x215
	.byte	0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0x23
	.string	"lim"
	.byte	0x1
	.value	0x417
	.long	0x215
	.byte	0x3
	.byte	0x91
	.sleb128 -144
	.byte	0x0
	.byte	0x0
	.uleb128 0x25
	.long	0x3f8b
	.long	.LBB59
	.long	.LBE59
	.uleb128 0x26
	.long	.LASF11
	.byte	0x1
	.value	0x433
	.long	0x3438
	.byte	0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x26
	.long	.LASF14
	.byte	0x1
	.value	0x433
	.long	0x3438
	.byte	0x3
	.byte	0x91
	.sleb128 -136
	.byte	0x0
	.uleb128 0x25
	.long	0x3fb9
	.long	.LBB60
	.long	.LBE60
	.uleb128 0x26
	.long	.LASF20
	.byte	0x1
	.value	0x434
	.long	0x3438
	.byte	0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x26
	.long	.LASF21
	.byte	0x1
	.value	0x434
	.long	0x3438
	.byte	0x3
	.byte	0x91
	.sleb128 -128
	.byte	0x0
	.uleb128 0x25
	.long	0x3fe5
	.long	.LBB61
	.long	.LBE61
	.uleb128 0x23
	.string	"j"
	.byte	0x1
	.value	0x445
	.long	0x215
	.byte	0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x23
	.string	"lim"
	.byte	0x1
	.value	0x446
	.long	0x215
	.byte	0x3
	.byte	0x91
	.sleb128 -120
	.byte	0x0
	.uleb128 0x25
	.long	0x4013
	.long	.LBB62
	.long	.LBE62
	.uleb128 0x26
	.long	.LASF11
	.byte	0x1
	.value	0x45a
	.long	0x3438
	.byte	0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x26
	.long	.LASF14
	.byte	0x1
	.value	0x45a
	.long	0x3438
	.byte	0x3
	.byte	0x91
	.sleb128 -112
	.byte	0x0
	.uleb128 0x25
	.long	0x4041
	.long	.LBB63
	.long	.LBE63
	.uleb128 0x26
	.long	.LASF20
	.byte	0x1
	.value	0x45b
	.long	0x3438
	.byte	0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x26
	.long	.LASF21
	.byte	0x1
	.value	0x45b
	.long	0x3438
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.byte	0x0
	.uleb128 0x25
	.long	0x406d
	.long	.LBB64
	.long	.LBE64
	.uleb128 0x23
	.string	"j"
	.byte	0x1
	.value	0x46c
	.long	0x215
	.byte	0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x23
	.string	"lim"
	.byte	0x1
	.value	0x46d
	.long	0x215
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.byte	0x0
	.uleb128 0x25
	.long	0x4108
	.long	.LBB65
	.long	.LBE65
	.uleb128 0x23
	.string	"new_losers"
	.byte	0x1
	.value	0x490
	.long	0xaf3
	.byte	0x3
	.byte	0x91
	.sleb128 -392
	.uleb128 0x25
	.long	0x40af
	.long	.LBB66
	.long	.LBE66
	.uleb128 0x26
	.long	.LASF11
	.byte	0x1
	.value	0x492
	.long	0x3438
	.byte	0x3
	.byte	0x91
	.sleb128 -92
	.byte	0x0
	.uleb128 0x25
	.long	0x40dd
	.long	.LBB67
	.long	.LBE67
	.uleb128 0x26
	.long	.LASF11
	.byte	0x1
	.value	0x494
	.long	0x3438
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x26
	.long	.LASF14
	.byte	0x1
	.value	0x494
	.long	0x3438
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.byte	0x0
	.uleb128 0x2a
	.long	.LBB68
	.long	.LBE68
	.uleb128 0x26
	.long	.LASF11
	.byte	0x1
	.value	0x496
	.long	0x3438
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x26
	.long	.LASF14
	.byte	0x1
	.value	0x496
	.long	0x3438
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.byte	0x0
	.byte	0x0
	.uleb128 0x25
	.long	0x4190
	.long	.LBB69
	.long	.LBE69
	.uleb128 0x26
	.long	.LASF12
	.byte	0x1
	.value	0x4ad
	.long	0x215
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2a
	.long	.LBB70
	.long	.LBE70
	.uleb128 0x23
	.string	"tmp1"
	.byte	0x1
	.value	0x4cc
	.long	0x4260
	.byte	0x3
	.byte	0x91
	.sleb128 -296
	.uleb128 0x23
	.string	"tmp2"
	.byte	0x1
	.value	0x4ce
	.long	0x4260
	.byte	0x3
	.byte	0x91
	.sleb128 -288
	.uleb128 0x2a
	.long	.LBB71
	.long	.LBE71
	.uleb128 0x23
	.string	"k"
	.byte	0x1
	.value	0x4d5
	.long	0x215
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2a
	.long	.LBB72
	.long	.LBE72
	.uleb128 0x23
	.string	"r"
	.byte	0x1
	.value	0x4d9
	.long	0x215
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x26
	.long	.LASF13
	.byte	0x1
	.value	0x4da
	.long	0x215
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2a
	.long	.LBB73
	.long	.LBE73
	.uleb128 0x23
	.string	"lim"
	.byte	0x1
	.value	0x4ec
	.long	0x215
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x23
	.string	"j"
	.byte	0x1
	.value	0x4ec
	.long	0x215
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x23
	.string	"this_reg"
	.byte	0x1
	.value	0x4ed
	.long	0xaf3
	.byte	0x3
	.byte	0x91
	.sleb128 -392
	.uleb128 0x25
	.long	0x41e7
	.long	.LBB74
	.long	.LBE74
	.uleb128 0x26
	.long	.LASF11
	.byte	0x1
	.value	0x4f8
	.long	0x3438
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.byte	0x0
	.uleb128 0x2a
	.long	.LBB75
	.long	.LBE75
	.uleb128 0x23
	.string	"i_"
	.byte	0x1
	.value	0x505
	.long	0x215
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x26
	.long	.LASF19
	.byte	0x1
	.value	0x505
	.long	0x215
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x23
	.string	"p_"
	.byte	0x1
	.value	0x505
	.long	0x3bac
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2a
	.long	.LBB76
	.long	.LBE76
	.uleb128 0x26
	.long	.LASF18
	.byte	0x1
	.value	0x505
	.long	0x511
	.byte	0x3
	.byte	0x91
	.sleb128 -280
	.uleb128 0x2a
	.long	.LBB77
	.long	.LBE77
	.uleb128 0x26
	.long	.LASF11
	.byte	0x1
	.value	0x505
	.long	0x3438
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x26
	.long	.LASF14
	.byte	0x1
	.value	0x505
	.long	0x3438
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x9
	.string	"double"
	.byte	0x8
	.byte	0x4
	.uleb128 0x2c
	.long	0x42d1
	.byte	0x1
	.string	"retry_global_alloc"
	.byte	0x1
	.value	0x517
	.byte	0x1
	.long	.LFB21
	.long	.LFE21
	.long	.LLST6
	.uleb128 0x2d
	.long	.LASF12
	.byte	0x1
	.value	0x515
	.long	0x215
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x22
	.string	"forbidden_regs"
	.byte	0x1
	.value	0x516
	.long	0x3438
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x23
	.string	"alloc_no"
	.byte	0x1
	.value	0x518
	.long	0x215
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x29
	.long	0x43bc
	.string	"record_one_conflict"
	.byte	0x1
	.value	0x537
	.byte	0x1
	.long	.LFB22
	.long	.LFE22
	.long	.LLST7
	.uleb128 0x2d
	.long	.LASF12
	.byte	0x1
	.value	0x536
	.long	0x215
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x23
	.string	"j"
	.byte	0x1
	.value	0x538
	.long	0x215
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x25
	.long	0x4368
	.long	.LBB78
	.long	.LBE78
	.uleb128 0x23
	.string	"i_"
	.byte	0x1
	.value	0x53d
	.long	0x215
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x26
	.long	.LASF19
	.byte	0x1
	.value	0x53d
	.long	0x215
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x23
	.string	"p_"
	.byte	0x1
	.value	0x53d
	.long	0x3bac
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2a
	.long	.LBB79
	.long	.LBE79
	.uleb128 0x26
	.long	.LASF18
	.byte	0x1
	.value	0x53d
	.long	0x511
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.byte	0x0
	.byte	0x0
	.uleb128 0x2a
	.long	.LBB80
	.long	.LBE80
	.uleb128 0x23
	.string	"ialloc"
	.byte	0x1
	.value	0x546
	.long	0x215
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.long	.LASF22
	.byte	0x1
	.value	0x547
	.long	0x215
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2a
	.long	.LBB81
	.long	.LBE81
	.uleb128 0x26
	.long	.LASF11
	.byte	0x1
	.value	0x549
	.long	0x3438
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x26
	.long	.LASF14
	.byte	0x1
	.value	0x549
	.long	0x3438
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x29
	.long	0x444f
	.string	"record_conflicts"
	.byte	0x1
	.value	0x564
	.byte	0x1
	.long	.LFB23
	.long	.LFE23
	.long	.LLST8
	.uleb128 0x22
	.string	"allocno_vec"
	.byte	0x1
	.value	0x562
	.long	0x884
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x22
	.string	"len"
	.byte	0x1
	.value	0x563
	.long	0x215
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x23
	.string	"num"
	.byte	0x1
	.value	0x565
	.long	0x215
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.long	.LASF22
	.byte	0x1
	.value	0x566
	.long	0x215
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2a
	.long	.LBB82
	.long	.LBE82
	.uleb128 0x26
	.long	.LASF11
	.byte	0x1
	.value	0x56c
	.long	0x3438
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x26
	.long	.LASF14
	.byte	0x1
	.value	0x56c
	.long	0x3438
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.uleb128 0x29
	.long	0x450f
	.string	"mirror_conflicts"
	.byte	0x1
	.value	0x573
	.byte	0x1
	.long	.LFB24
	.long	.LFE24
	.long	.LLST9
	.uleb128 0x23
	.string	"i"
	.byte	0x1
	.value	0x574
	.long	0x215
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x23
	.string	"j"
	.byte	0x1
	.value	0x574
	.long	0x215
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x23
	.string	"rw"
	.byte	0x1
	.value	0x575
	.long	0x215
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x23
	.string	"rwb"
	.byte	0x1
	.value	0x576
	.long	0x215
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x23
	.string	"p"
	.byte	0x1
	.value	0x577
	.long	0x3bac
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x23
	.string	"q0"
	.byte	0x1
	.value	0x578
	.long	0x3bac
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x23
	.string	"q1"
	.byte	0x1
	.value	0x578
	.long	0x3bac
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x23
	.string	"q2"
	.byte	0x1
	.value	0x578
	.long	0x3bac
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x23
	.string	"mask"
	.byte	0x1
	.value	0x579
	.long	0x511
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2a
	.long	.LBB83
	.long	.LBE83
	.uleb128 0x23
	.string	"word"
	.byte	0x1
	.value	0x584
	.long	0x511
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.byte	0x0
	.byte	0x0
	.uleb128 0x29
	.long	0x458a
	.string	"mark_reg_store"
	.byte	0x1
	.value	0x5a5
	.byte	0x1
	.long	.LFB25
	.long	.LFE25
	.long	.LLST10
	.uleb128 0x22
	.string	"reg"
	.byte	0x1
	.value	0x5a3
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.long	.LASF23
	.byte	0x1
	.value	0x5a3
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x22
	.string	"data"
	.byte	0x1
	.value	0x5a4
	.long	0x567
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x26
	.long	.LASF12
	.byte	0x1
	.value	0x5a6
	.long	0x215
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2a
	.long	.LBB84
	.long	.LBE84
	.uleb128 0x26
	.long	.LASF7
	.byte	0x1
	.value	0x5c6
	.long	0x215
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.uleb128 0x29
	.long	0x45df
	.string	"mark_reg_clobber"
	.byte	0x1
	.value	0x5d6
	.byte	0x1
	.long	.LFB26
	.long	.LFE26
	.long	.LLST11
	.uleb128 0x22
	.string	"reg"
	.byte	0x1
	.value	0x5d4
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.long	.LASF23
	.byte	0x1
	.value	0x5d4
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x22
	.string	"data"
	.byte	0x1
	.value	0x5d5
	.long	0x567
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.byte	0x0
	.uleb128 0x29
	.long	0x463f
	.string	"mark_reg_conflicts"
	.byte	0x1
	.value	0x5e1
	.byte	0x1
	.long	.LFB27
	.long	.LFE27
	.long	.LLST12
	.uleb128 0x22
	.string	"reg"
	.byte	0x1
	.value	0x5e0
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x26
	.long	.LASF12
	.byte	0x1
	.value	0x5e2
	.long	0x215
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2a
	.long	.LBB85
	.long	.LBE85
	.uleb128 0x26
	.long	.LASF7
	.byte	0x1
	.value	0x5fa
	.long	0x215
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x29
	.long	0x469b
	.string	"mark_reg_death"
	.byte	0x1
	.value	0x609
	.byte	0x1
	.long	.LFB28
	.long	.LFE28
	.long	.LLST13
	.uleb128 0x22
	.string	"reg"
	.byte	0x1
	.value	0x608
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x26
	.long	.LASF12
	.byte	0x1
	.value	0x60a
	.long	0x215
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2a
	.long	.LBB86
	.long	.LBE86
	.uleb128 0x26
	.long	.LASF7
	.byte	0x1
	.value	0x61d
	.long	0x215
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.uleb128 0x29
	.long	0x46f0
	.string	"mark_reg_live_nc"
	.byte	0x1
	.value	0x62f
	.byte	0x1
	.long	.LFB29
	.long	.LFE29
	.long	.LLST14
	.uleb128 0x2d
	.long	.LASF12
	.byte	0x1
	.value	0x62d
	.long	0x215
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x22
	.string	"mode"
	.byte	0x1
	.value	0x62e
	.long	0x891
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x26
	.long	.LASF7
	.byte	0x1
	.value	0x630
	.long	0x215
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x29
	.long	0x478e
	.string	"set_preference"
	.byte	0x1
	.value	0x644
	.byte	0x1
	.long	.LFB30
	.long	.LFE30
	.long	.LLST15
	.uleb128 0x22
	.string	"dest"
	.byte	0x1
	.value	0x643
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x22
	.string	"src"
	.byte	0x1
	.value	0x643
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x23
	.string	"src_regno"
	.byte	0x1
	.value	0x645
	.long	0x464
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x23
	.string	"dest_regno"
	.byte	0x1
	.value	0x645
	.long	0x464
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x23
	.string	"offset"
	.byte	0x1
	.value	0x648
	.long	0x215
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x23
	.string	"i"
	.byte	0x1
	.value	0x649
	.long	0x464
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x23
	.string	"copy"
	.byte	0x1
	.value	0x64a
	.long	0x215
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x2c
	.long	0x47f9
	.byte	0x1
	.string	"mark_elimination"
	.byte	0x1
	.value	0x6b0
	.byte	0x1
	.long	.LFB31
	.long	.LFE31
	.long	.LLST16
	.uleb128 0x22
	.string	"from"
	.byte	0x1
	.value	0x6af
	.long	0x215
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x22
	.string	"to"
	.byte	0x1
	.value	0x6af
	.long	0x215
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x23
	.string	"bb"
	.byte	0x1
	.value	0x6b1
	.long	0x2172
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2a
	.long	.LBB87
	.long	.LBE87
	.uleb128 0x23
	.string	"r"
	.byte	0x1
	.value	0x6b5
	.long	0x1e23
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x29
	.long	0x4877
	.string	"reg_becomes_live"
	.byte	0x1
	.value	0x6c9
	.byte	0x1
	.long	.LFB32
	.long	.LFE32
	.long	.LLST17
	.uleb128 0x22
	.string	"reg"
	.byte	0x1
	.value	0x6c6
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.long	.LASF23
	.byte	0x1
	.value	0x6c7
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2d
	.long	.LASF24
	.byte	0x1
	.value	0x6c8
	.long	0x567
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x26
	.long	.LASF12
	.byte	0x1
	.value	0x6ca
	.long	0x215
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2a
	.long	.LBB88
	.long	.LBE88
	.uleb128 0x23
	.string	"nregs"
	.byte	0x1
	.value	0x6d5
	.long	0x215
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x29
	.long	0x48e1
	.string	"reg_dies"
	.byte	0x1
	.value	0x6eb
	.byte	0x1
	.long	.LFB33
	.long	.LFE33
	.long	.LLST18
	.uleb128 0x2d
	.long	.LASF12
	.byte	0x1
	.value	0x6e8
	.long	0x215
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x22
	.string	"mode"
	.byte	0x1
	.value	0x6e9
	.long	0x891
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x22
	.string	"chain"
	.byte	0x1
	.value	0x6ea
	.long	0x3101
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2a
	.long	.LBB89
	.long	.LBE89
	.uleb128 0x23
	.string	"nregs"
	.byte	0x1
	.value	0x6ee
	.long	0x215
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x2c
	.long	0x4a61
	.byte	0x1
	.string	"build_insn_chain"
	.byte	0x1
	.value	0x704
	.byte	0x1
	.long	.LFB34
	.long	.LFE34
	.long	.LLST19
	.uleb128 0x2d
	.long	.LASF3
	.byte	0x1
	.value	0x703
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x23
	.string	"p"
	.byte	0x1
	.value	0x705
	.long	0x4a61
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x23
	.string	"prev"
	.byte	0x1
	.value	0x706
	.long	0x3101
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x23
	.string	"b"
	.byte	0x1
	.value	0x707
	.long	0x2172
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x23
	.string	"live_relevant_regs_head"
	.byte	0x1
	.value	0x708
	.long	0x1e10
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x25
	.long	0x4a50
	.long	.LBB90
	.long	.LBE90
	.uleb128 0x23
	.string	"c"
	.byte	0x1
	.value	0x70e
	.long	0x3101
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x25
	.long	0x4a17
	.long	.LBB91
	.long	.LBE91
	.uleb128 0x23
	.string	"i"
	.byte	0x1
	.value	0x712
	.long	0x215
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2a
	.long	.LBB92
	.long	.LBE92
	.uleb128 0x23
	.string	"ptr_"
	.byte	0x1
	.value	0x716
	.long	0x17f1
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x23
	.string	"indx_"
	.byte	0x1
	.value	0x716
	.long	0x464
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.long	.LASF16
	.byte	0x1
	.value	0x716
	.long	0x464
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x26
	.long	.LASF17
	.byte	0x1
	.value	0x716
	.long	0x464
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2a
	.long	.LBB93
	.long	.LBE93
	.uleb128 0x26
	.long	.LASF18
	.byte	0x1
	.value	0x716
	.long	0x175a
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2a
	.long	.LBB94
	.long	.LBE94
	.uleb128 0x23
	.string	"mask_"
	.byte	0x1
	.value	0x716
	.long	0x175a
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x25
	.long	0x4a35
	.long	.LBB95
	.long	.LBE95
	.uleb128 0x23
	.string	"link"
	.byte	0x1
	.value	0x72c
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x2a
	.long	.LBB96
	.long	.LBE96
	.uleb128 0x23
	.string	"link"
	.byte	0x1
	.value	0x742
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x27
	.long	.LASF15
	.long	0x4b69
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.13660
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x3101
	.uleb128 0x29
	.long	0x4b07
	.string	"dump_conflicts"
	.byte	0x1
	.value	0x76e
	.byte	0x1
	.long	.LFB35
	.long	.LFE35
	.long	.LLST20
	.uleb128 0x22
	.string	"file"
	.byte	0x1
	.value	0x76d
	.long	0x3432
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x23
	.string	"i"
	.byte	0x1
	.value	0x76f
	.long	0x215
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x23
	.string	"has_preferences"
	.byte	0x1
	.value	0x770
	.long	0x215
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x23
	.string	"nregs"
	.byte	0x1
	.value	0x771
	.long	0x215
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x25
	.long	0x4aef
	.long	.LBB97
	.long	.LBE97
	.uleb128 0x23
	.string	"j"
	.byte	0x1
	.value	0x77c
	.long	0x215
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x2a
	.long	.LBB98
	.long	.LBE98
	.uleb128 0x23
	.string	"j"
	.byte	0x1
	.value	0x78b
	.long	0x215
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x2c
	.long	0x4b59
	.byte	0x1
	.string	"dump_global_regs"
	.byte	0x1
	.value	0x7a8
	.byte	0x1
	.long	.LFB36
	.long	.LFE36
	.long	.LLST21
	.uleb128 0x22
	.string	"file"
	.byte	0x1
	.value	0x7a7
	.long	0x3432
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x23
	.string	"i"
	.byte	0x1
	.value	0x7a9
	.long	0x215
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x23
	.string	"j"
	.byte	0x1
	.value	0x7a9
	.long	0x215
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0xf
	.long	0x4b69
	.long	0x20d
	.uleb128 0x10
	.long	0x47b
	.byte	0x10
	.byte	0x0
	.uleb128 0x8
	.long	0x4b59
	.uleb128 0xf
	.long	0x4b7e
	.long	0x326d
	.uleb128 0x10
	.long	0x47b
	.byte	0x8
	.byte	0x0
	.uleb128 0x8
	.long	0x4b6e
	.uleb128 0xf
	.long	0x4b93
	.long	0x20d
	.uleb128 0x10
	.long	0x47b
	.byte	0xc
	.byte	0x0
	.uleb128 0x8
	.long	0x4b83
	.uleb128 0x2e
	.string	"max_allocno"
	.byte	0x1
	.byte	0x50
	.long	0x215
	.byte	0x5
	.byte	0x3
	.long	max_allocno
	.uleb128 0x2e
	.string	"reg_allocno"
	.byte	0x1
	.byte	0x55
	.long	0x884
	.byte	0x5
	.byte	0x3
	.long	reg_allocno
	.uleb128 0x2e
	.string	"allocno"
	.byte	0x1
	.byte	0x8c
	.long	0x4bdf
	.byte	0x5
	.byte	0x3
	.long	allocno
	.uleb128 0x3
	.byte	0x4
	.long	0x3116
	.uleb128 0x2e
	.string	"allocno_order"
	.byte	0x1
	.byte	0x91
	.long	0x884
	.byte	0x5
	.byte	0x3
	.long	allocno_order
	.uleb128 0x2e
	.string	"reg_may_share"
	.byte	0x1
	.byte	0x97
	.long	0x884
	.byte	0x5
	.byte	0x3
	.long	reg_may_share
	.uleb128 0x2e
	.string	"conflicts"
	.byte	0x1
	.byte	0xa6
	.long	0x3bac
	.byte	0x5
	.byte	0x3
	.long	conflicts
	.uleb128 0x2e
	.string	"allocno_row_words"
	.byte	0x1
	.byte	0xab
	.long	0x215
	.byte	0x5
	.byte	0x3
	.long	allocno_row_words
	.uleb128 0x2e
	.string	"hard_regs_live"
	.byte	0x1
	.byte	0xd4
	.long	0xaf3
	.byte	0x5
	.byte	0x3
	.long	hard_regs_live
	.uleb128 0x2e
	.string	"no_global_alloc_regs"
	.byte	0x1
	.byte	0xd8
	.long	0xaf3
	.byte	0x5
	.byte	0x3
	.long	no_global_alloc_regs
	.uleb128 0x2e
	.string	"regs_used_so_far"
	.byte	0x1
	.byte	0xdc
	.long	0xaf3
	.byte	0x5
	.byte	0x3
	.long	regs_used_so_far
	.uleb128 0xf
	.long	0x4cbd
	.long	0x215
	.uleb128 0x10
	.long	0x47b
	.byte	0xaf
	.byte	0x0
	.uleb128 0x2e
	.string	"local_reg_n_refs"
	.byte	0x1
	.byte	0xe1
	.long	0x4cad
	.byte	0x5
	.byte	0x3
	.long	local_reg_n_refs
	.uleb128 0x2e
	.string	"local_reg_freq"
	.byte	0x1
	.byte	0xe4
	.long	0x4cad
	.byte	0x5
	.byte	0x3
	.long	local_reg_freq
	.uleb128 0x2e
	.string	"local_reg_live_length"
	.byte	0x1
	.byte	0xe9
	.long	0x4cad
	.byte	0x5
	.byte	0x3
	.long	local_reg_live_length
	.uleb128 0x2e
	.string	"allocnos_live"
	.byte	0x1
	.byte	0xf2
	.long	0x3bac
	.byte	0x5
	.byte	0x3
	.long	allocnos_live
	.uleb128 0x26
	.long	.LASF24
	.byte	0x1
	.value	0x11b
	.long	0x1754
	.byte	0x5
	.byte	0x3
	.long	regs_set
	.uleb128 0x23
	.string	"n_regs_set"
	.byte	0x1
	.value	0x11c
	.long	0x215
	.byte	0x5
	.byte	0x3
	.long	n_regs_set
	.uleb128 0x23
	.string	"eliminable_regset"
	.byte	0x1
	.value	0x120
	.long	0xaf3
	.byte	0x5
	.byte	0x3
	.long	eliminable_regset
	.uleb128 0x23
	.string	"live_relevant_regs"
	.byte	0x1
	.value	0x6c0
	.long	0x1e23
	.byte	0x5
	.byte	0x3
	.long	live_relevant_regs
	.uleb128 0xf
	.long	0x4db1
	.long	0x20d
	.uleb128 0x10
	.long	0x47b
	.byte	0xaf
	.byte	0x0
	.uleb128 0x2f
	.string	"call_used_regs"
	.byte	0xc
	.value	0x196
	.long	0x4da1
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.string	"target_flags"
	.byte	0xd
	.byte	0x21
	.long	0x215
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.long	0x4df1
	.long	0x20d
	.uleb128 0x31
	.uleb128 0x10
	.long	0x47b
	.byte	0xaf
	.byte	0x0
	.uleb128 0x2f
	.string	"mips_hard_regno_mode_ok"
	.byte	0xd
	.value	0x778
	.long	0x4de0
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.long	0x4e1e
	.long	0x21c
	.uleb128 0x31
	.byte	0x0
	.uleb128 0x2f
	.string	"mips_regno_to_class"
	.byte	0xd
	.value	0x85d
	.long	0x4e3c
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.long	0x4e13
	.uleb128 0xf
	.long	0x4e51
	.long	0x4a8
	.uleb128 0x10
	.long	0x47b
	.byte	0x35
	.byte	0x0
	.uleb128 0x30
	.string	"mode_size"
	.byte	0x8
	.byte	0x59
	.long	0x4e64
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.long	0x4e41
	.uleb128 0x2f
	.string	"fixed_regs"
	.byte	0xc
	.value	0x18b
	.long	0x4da1
	.byte	0x1
	.byte	0x1
	.uleb128 0x2f
	.string	"fixed_reg_set"
	.byte	0xc
	.value	0x18f
	.long	0xaf3
	.byte	0x1
	.byte	0x1
	.uleb128 0x2f
	.string	"call_used_reg_set"
	.byte	0xc
	.value	0x19e
	.long	0xaf3
	.byte	0x1
	.byte	0x1
	.uleb128 0x2f
	.string	"losing_caller_save_reg_set"
	.byte	0xc
	.value	0x1a1
	.long	0xaf3
	.byte	0x1
	.byte	0x1
	.uleb128 0x2f
	.string	"call_fixed_reg_set"
	.byte	0xc
	.value	0x1ad
	.long	0xaf3
	.byte	0x1
	.byte	0x1
	.uleb128 0x2f
	.string	"reg_alloc_order"
	.byte	0xc
	.value	0x1c2
	.long	0x4cad
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.long	0x4f24
	.long	0xada
	.uleb128 0x10
	.long	0x47b
	.byte	0x18
	.uleb128 0x10
	.long	0x47b
	.byte	0x2
	.byte	0x0
	.uleb128 0x2f
	.string	"reg_class_contents"
	.byte	0xc
	.value	0x1cb
	.long	0x4f0e
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.long	0x4f51
	.long	0x202
	.uleb128 0x10
	.long	0x47b
	.byte	0xa2
	.byte	0x0
	.uleb128 0x30
	.string	"rtx_format"
	.byte	0x7
	.byte	0x3c
	.long	0x4f65
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.long	0x4f41
	.uleb128 0xf
	.long	0x4f7a
	.long	0x20d
	.uleb128 0x10
	.long	0x47b
	.byte	0xa2
	.byte	0x0
	.uleb128 0x30
	.string	"rtx_class"
	.byte	0x7
	.byte	0x3f
	.long	0x4f8d
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.long	0x4f6a
	.uleb128 0x2f
	.string	"max_parallel"
	.byte	0x7
	.value	0x68a
	.long	0x215
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.string	"flag_caller_saves"
	.byte	0xf
	.byte	0xfd
	.long	0x215
	.byte	0x1
	.byte	0x1
	.uleb128 0x2f
	.string	"flag_omit_frame_pointer"
	.byte	0xf
	.value	0x151
	.long	0x215
	.byte	0x1
	.byte	0x1
	.uleb128 0x2f
	.string	"frame_pointer_needed"
	.byte	0xf
	.value	0x26a
	.long	0x215
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.long	0x5015
	.long	0x1594
	.uleb128 0x10
	.long	0x47b
	.byte	0x1
	.byte	0x0
	.uleb128 0x2f
	.string	"entry_exit_blocks"
	.byte	0xa
	.value	0x139
	.long	0x5005
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.string	"max_regno"
	.byte	0x10
	.byte	0x2c
	.long	0x215
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.string	"reg_n_info"
	.byte	0x10
	.byte	0x43
	.long	0x1df7
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.string	"reg_renumber"
	.byte	0x10
	.byte	0x9a
	.long	0x506e
	.byte	0x1
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x4f3
	.uleb128 0x30
	.string	"regs_ever_live"
	.byte	0x10
	.byte	0x9f
	.long	0x4da1
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.string	"regs_may_share"
	.byte	0x10
	.byte	0xc1
	.long	0x9b
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.string	"caller_save_needed"
	.byte	0x10
	.byte	0xc6
	.long	0x215
	.byte	0x1
	.byte	0x1
	.uleb128 0x2f
	.string	"cfun"
	.byte	0x12
	.value	0x202
	.long	0x2ee7
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.string	"reload_insn_chain"
	.byte	0xe
	.byte	0xf7
	.long	0x3101
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
	.uleb128 0xb
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
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
	.uleb128 0x12
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0x26
	.byte	0x0
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
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0x13
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3c
	.uleb128 0xc
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
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x13
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x2a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
	.uleb128 0x21
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.long	0x75
	.value	0x2
	.long	.Ldebug_info0
	.long	0x50eb
	.long	0x3223
	.string	"global_alloc"
	.long	0x426a
	.string	"retry_global_alloc"
	.long	0x478e
	.string	"mark_elimination"
	.long	0x48e1
	.string	"build_insn_chain"
	.long	0x4b07
	.string	"dump_global_regs"
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
.LASF19:
	.string	"allocno_"
.LASF13:
	.string	"endregno"
.LASF6:
	.string	"basic_block"
.LASF11:
	.string	"scan_tp_"
.LASF22:
	.string	"ialloc_prod"
.LASF17:
	.string	"word_num_"
.LASF2:
	.string	"mem_attrs"
.LASF3:
	.string	"first"
.LASF5:
	.string	"calls_crossed"
.LASF4:
	.string	"live_length"
.LASF8:
	.string	"sequence_stack"
.LASF7:
	.string	"last"
.LASF15:
	.string	"__FUNCTION__"
.LASF20:
	.string	"scan_xp_"
.LASF1:
	.string	"_IO_FILE"
.LASF23:
	.string	"setter"
.LASF18:
	.string	"word_"
.LASF21:
	.string	"scan_yp_"
.LASF24:
	.string	"regs_set"
.LASF16:
	.string	"bit_num_"
.LASF10:
	.string	"function_frequency"
.LASF9:
	.string	"sequence_rtl_expr"
.LASF14:
	.string	"scan_fp_"
.LASF0:
	.string	"unsigned int"
.LASF12:
	.string	"regno"
	.ident	"GCC: (GNU) 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.section	.text.__i686.get_pc_thunk.bx,"axG",@progbits,__i686.get_pc_thunk.bx,comdat
.globl __i686.get_pc_thunk.bx
	.hidden	__i686.get_pc_thunk.bx
	.type	__i686.get_pc_thunk.bx, @function
__i686.get_pc_thunk.bx:
	movl	(%esp), %ebx
	ret
	.section	.note.GNU-stack,"",@progbits
