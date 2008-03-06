	.file	"ggc-page.c"
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
	.type	extra_order_size_table, @object
	.size	extra_order_size_table, 16
extra_order_size_table:
	.long	160
	.long	24
	.long	20
	.long	84
	.text
	.type	set_page_table_entry, @function
set_page_table_entry:
.LFB19:
	.file 1 "../../../kg++fe/gnu/ggc-page.c"
	.loc 1 536 0
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
	.loc 1 541 0
	leal	288+G@GOTOFF(%ebx), %eax
	movl	%eax, -20(%ebp)
	.loc 1 559 0
	movl	8(%ebp), %eax
	shrl	$24, %eax
	andl	$255, %eax
	movl	%eax, -16(%ebp)
	.loc 1 560 0
	movl	8(%ebp), %eax
	movl	%eax, %edx
	movl	1316+G@GOTOFF(%ebx), %eax
	movl	%eax, %ecx
	movl	%edx, %esi
	shrl	%cl, %esi
	movl	1316+G@GOTOFF(%ebx), %edx
	movl	$24, %eax
	subl	%edx, %eax
	movl	%eax, %ecx
	movl	$1, %eax
	sall	%cl, %eax
	subl	$1, %eax
	andl	%esi, %eax
	movl	%eax, -12(%ebp)
	.loc 1 562 0
	movl	-16(%ebp), %eax
	sall	$2, %eax
	addl	-20(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L2
	.loc 1 563 0
	movl	-16(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %esi
	addl	-20(%ebp), %esi
	movl	1316+G@GOTOFF(%ebx), %edx
	movl	$24, %eax
	subl	%edx, %eax
	movl	%eax, %ecx
	movl	$1, %eax
	sall	%cl, %eax
	movl	$4, 4(%esp)
	movl	%eax, (%esp)
	call	xcalloc@PLT
	movl	%eax, (%esi)
.L2:
	.loc 1 565 0
	movl	-16(%ebp), %eax
	sall	$2, %eax
	addl	-20(%ebp), %eax
	movl	(%eax), %edx
	movl	-12(%ebp), %eax
	sall	$2, %eax
	addl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 566 0
	addl	$32, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE19:
	.size	set_page_table_entry, .-set_page_table_entry
	.section	.rodata
.LC0:
	.string	"Head=%p, Tail=%p:\n"
.LC1:
	.string	"%p(%1d|%3d) -> "
.LC2:
	.string	"NULL"
	.text
.globl debug_print_page_list
	.type	debug_print_page_list, @function
debug_print_page_list:
.LFB20:
	.loc 1 573 0
	pushl	%ebp
.LCFI5:
	movl	%esp, %ebp
.LCFI6:
	pushl	%ebx
.LCFI7:
	subl	$36, %esp
.LCFI8:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 575 0
	movl	8(%ebp), %eax
	movl	144+G@GOTOFF(%ebx,%eax,4), %edx
	movl	8(%ebp), %eax
	movl	G@GOTOFF(%ebx,%eax,4), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 577 0
	movl	8(%ebp), %eax
	movl	G@GOTOFF(%ebx,%eax,4), %eax
	movl	%eax, -8(%ebp)
	.loc 1 578 0
	jmp	.L6
.L7:
	.loc 1 580 0
	movl	-8(%ebp), %eax
	movzwl	18(%eax), %eax
	movzwl	%ax, %edx
	movl	-8(%ebp), %eax
	movzwl	16(%eax), %eax
	movzwl	%ax, %eax
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 582 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
.L6:
	.loc 1 578 0
	cmpl	$0, -8(%ebp)
	jne	.L7
	.loc 1 584 0
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 585 0
	movl	stdout@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	fflush@PLT
	.loc 1 586 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE20:
	.size	debug_print_page_list, .-debug_print_page_list
	.type	release_pages, @function
release_pages:
.LFB25:
	.loc 1 911 0
	pushl	%ebp
.LCFI9:
	movl	%esp, %ebp
.LCFI10:
	pushl	%ebx
.LCFI11:
	subl	$36, %esp
.LCFI12:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 918 0
	movl	1344+G@GOTOFF(%ebx), %eax
	movl	%eax, -20(%ebp)
	.loc 1 920 0
	jmp	.L11
.L12:
	.loc 1 922 0
	movl	-20(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 923 0
	movl	-20(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 924 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 925 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 926 0
	movl	-16(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 928 0
	jmp	.L13
.L14:
	.loc 1 930 0
	movl	-20(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 931 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	addl	%eax, -8(%ebp)
	.loc 1 932 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 933 0
	movl	-16(%ebp), %eax
	movl	%eax, -20(%ebp)
.L13:
	.loc 1 928 0
	cmpl	$0, -20(%ebp)
	je	.L15
	movl	-20(%ebp), %eax
	movl	8(%eax), %edx
	movl	-8(%ebp), %eax
	addl	-12(%ebp), %eax
	cmpl	%eax, %edx
	je	.L14
.L15:
	.loc 1 936 0
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	munmap@PLT
	.loc 1 937 0
	movl	1328+G@GOTOFF(%ebx), %eax
	subl	-8(%ebp), %eax
	movl	%eax, 1328+G@GOTOFF(%ebx)
.L11:
	.loc 1 920 0
	cmpl	$0, -20(%ebp)
	jne	.L12
	.loc 1 940 0
	movl	$0, 1344+G@GOTOFF(%ebx)
	.loc 1 969 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE25:
	.size	release_pages, .-release_pages
	.data
	.align 32
	.type	size_lookup, @object
	.size	size_lookup, 257
size_lookup:
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.text
.globl ggc_alloc
	.type	ggc_alloc, @function
ggc_alloc:
.LFB26:
	.loc 1 1001 0
	pushl	%ebp
.LCFI13:
	movl	%esp, %ebp
.LCFI14:
	pushl	%esi
.LCFI15:
	pushl	%ebx
.LCFI16:
	subl	$48, %esp
.LCFI17:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1006 0
	cmpl	$256, 8(%ebp)
	ja	.L20
	.loc 1 1007 0
	movl	8(%ebp), %eax
	movzbl	size_lookup@GOTOFF(%ebx,%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -40(%ebp)
	jmp	.L22
.L20:
	.loc 1 1010 0
	movl	$9, -40(%ebp)
	.loc 1 1011 0
	jmp	.L23
.L24:
	.loc 1 1012 0
	addl	$1, -40(%ebp)
.L23:
	.loc 1 1011 0
	movl	-40(%ebp), %eax
	movl	object_size_table@GOTOFF(%ebx,%eax,4), %eax
	cmpl	8(%ebp), %eax
	jb	.L24
.L22:
	.loc 1 1017 0
	movl	-40(%ebp), %eax
	movl	G@GOTOFF(%ebx,%eax,4), %eax
	movl	%eax, -24(%ebp)
	.loc 1 1021 0
	cmpl	$0, -24(%ebp)
	je	.L25
	movl	-24(%ebp), %eax
	movzwl	18(%eax), %eax
	testw	%ax, %ax
	jne	.L27
.L25:
.LBB2:
	.loc 1 1024 0
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	alloc_page
	movl	%eax, -16(%ebp)
	.loc 1 1026 0
	movl	1364+G@GOTOFF(%ebx), %edx
	movl	-16(%ebp), %eax
	movl	%edx, 12(%eax)
	.loc 1 1027 0
	movl	$0, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	push_by_depth
	.loc 1 1031 0
	jmp	.L28
.L29:
	.loc 1 1032 0
	movl	1364+G@GOTOFF(%ebx), %eax
	subl	$1, %eax
	movl	%eax, (%esp)
	call	push_depth
.L28:
	.loc 1 1031 0
	movl	-16(%ebp), %eax
	movzwl	16(%eax), %eax
	movzwl	%ax, %edx
	movl	1352+G@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	jae	.L29
	.loc 1 1035 0
	cmpl	$0, -24(%ebp)
	jne	.L31
	.loc 1 1036 0
	movl	-40(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 144+G@GOTOFF(%ebx,%edx,4)
.L31:
	.loc 1 1039 0
	movl	-16(%ebp), %edx
	movl	-24(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 1040 0
	movl	-16(%ebp), %eax
	movl	%eax, -24(%ebp)
	.loc 1 1041 0
	movl	-40(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	%eax, G@GOTOFF(%ebx,%edx,4)
	.loc 1 1045 0
	movl	-16(%ebp), %eax
	movw	$1, 20(%eax)
	.loc 1 1046 0
	movl	$0, -36(%ebp)
	.loc 1 1047 0
	movl	$0, -32(%ebp)
	.loc 1 1048 0
	movl	$0, -28(%ebp)
	.loc 1 1021 0
	jmp	.L33
.L27:
.LBE2:
.LBB3:
	.loc 1 1056 0
	movl	-24(%ebp), %eax
	movzwl	20(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -12(%ebp)
	.loc 1 1057 0
	movl	-12(%ebp), %eax
	shrl	$5, %eax
	movl	%eax, -36(%ebp)
	.loc 1 1058 0
	movl	-12(%ebp), %eax
	andl	$31, %eax
	movl	%eax, -32(%ebp)
	.loc 1 1061 0
	movl	-36(%ebp), %edx
	movl	-24(%ebp), %eax
	movl	24(%eax,%edx,4), %eax
	movl	-32(%ebp), %ecx
	shrl	%cl, %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L34
	.loc 1 1063 0
	movl	$0, -32(%ebp)
	movl	-32(%ebp), %eax
	movl	%eax, -36(%ebp)
	.loc 1 1064 0
	jmp	.L36
.L37:
	.loc 1 1065 0
	addl	$1, -36(%ebp)
.L36:
	.loc 1 1064 0
	movl	-36(%ebp), %edx
	movl	-24(%ebp), %eax
	movl	24(%eax,%edx,4), %eax
	notl	%eax
	testl	%eax, %eax
	je	.L37
	.loc 1 1066 0
	jmp	.L39
.L40:
	.loc 1 1067 0
	addl	$1, -32(%ebp)
.L39:
	.loc 1 1066 0
	movl	-36(%ebp), %edx
	movl	-24(%ebp), %eax
	movl	24(%eax,%edx,4), %eax
	movl	-32(%ebp), %ecx
	shrl	%cl, %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L40
	.loc 1 1068 0
	movl	-36(%ebp), %eax
	sall	$5, %eax
	addl	-32(%ebp), %eax
	movl	%eax, -12(%ebp)
.L34:
	.loc 1 1072 0
	movl	-12(%ebp), %eax
	leal	1(%eax), %edx
	movl	-24(%ebp), %eax
	movw	%dx, 20(%eax)
	.loc 1 1074 0
	movl	-40(%ebp), %eax
	movl	object_size_table@GOTOFF(%ebx,%eax,4), %eax
	imull	-12(%ebp), %eax
	movl	%eax, -28(%ebp)
.L33:
.LBE3:
	.loc 1 1078 0
	movl	-36(%ebp), %esi
	movl	-36(%ebp), %edx
	movl	-24(%ebp), %eax
	movl	24(%eax,%edx,4), %edx
	movl	-32(%ebp), %ecx
	movl	$1, %eax
	sall	%cl, %eax
	orl	%eax, %edx
	movl	-24(%ebp), %eax
	movl	%edx, 24(%eax,%esi,4)
	.loc 1 1084 0
	movl	-24(%ebp), %eax
	movzwl	18(%eax), %eax
	leal	-1(%eax), %edx
	movl	-24(%ebp), %eax
	movw	%dx, 18(%eax)
	movl	-24(%ebp), %eax
	movzwl	18(%eax), %eax
	testw	%ax, %ax
	jne	.L42
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L42
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	movzwl	18(%eax), %eax
	testw	%ax, %ax
	je	.L42
	.loc 1 1088 0
	movl	-40(%ebp), %edx
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, G@GOTOFF(%ebx,%edx,4)
	.loc 1 1089 0
	movl	-24(%ebp), %eax
	movl	$0, (%eax)
	.loc 1 1090 0
	movl	-40(%ebp), %eax
	movl	144+G@GOTOFF(%ebx,%eax,4), %edx
	movl	-24(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 1091 0
	movl	-40(%ebp), %edx
	movl	-24(%ebp), %eax
	movl	%eax, 144+G@GOTOFF(%ebx,%edx,4)
.L42:
	.loc 1 1095 0
	movl	-24(%ebp), %eax
	movl	8(%eax), %edx
	movl	-28(%ebp), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 1121 0
	movl	1320+G@GOTOFF(%ebx), %edx
	movl	-40(%ebp), %eax
	movl	object_size_table@GOTOFF(%ebx,%eax,4), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, 1320+G@GOTOFF(%ebx)
	.loc 1 1129 0
	movl	-20(%ebp), %eax
	.loc 1 1130 0
	addl	$48, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE26:
	.size	ggc_alloc, .-ggc_alloc
	.type	alloc_page, @function
alloc_page:
.LFB22:
	.loc 1 660 0
	pushl	%ebp
.LCFI18:
	movl	%esp, %ebp
.LCFI19:
	pushl	%edi
.LCFI20:
	pushl	%esi
.LCFI21:
	pushl	%ebx
.LCFI22:
	subl	$60, %esp
.LCFI23:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 671 0
	movl	8(%ebp), %eax
	movl	objects_per_page_table@GOTOFF(%ebx,%eax,4), %eax
	movl	%eax, -40(%ebp)
	.loc 1 672 0
	movl	-40(%ebp), %eax
	addl	$32, %eax
	shrl	$5, %eax
	sall	$2, %eax
	movl	%eax, -36(%ebp)
	.loc 1 673 0
	movl	-36(%ebp), %eax
	addl	$24, %eax
	movl	%eax, -32(%ebp)
	.loc 1 674 0
	movl	8(%ebp), %eax
	movl	object_size_table@GOTOFF(%ebx,%eax,4), %eax
	imull	-40(%ebp), %eax
	movl	%eax, -28(%ebp)
	.loc 1 675 0
	movl	1312+G@GOTOFF(%ebx), %eax
	cmpl	-28(%ebp), %eax
	jbe	.L48
	.loc 1 676 0
	movl	1312+G@GOTOFF(%ebx), %eax
	movl	%eax, -28(%ebp)
.L48:
	.loc 1 678 0
	movl	$0, -56(%ebp)
	.loc 1 679 0
	movl	$0, -44(%ebp)
	.loc 1 682 0
	leal	1344+G@GOTOFF(%ebx), %eax
	movl	%eax, -48(%ebp)
	movl	-48(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -52(%ebp)
	jmp	.L50
.L51:
	.loc 1 683 0
	movl	-52(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-28(%ebp), %eax
	je	.L52
	.loc 1 682 0
	movl	-52(%ebp), %eax
	movl	%eax, -48(%ebp)
	movl	-48(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -52(%ebp)
.L50:
	cmpl	$0, -52(%ebp)
	jne	.L51
.L52:
	.loc 1 686 0
	cmpl	$0, -52(%ebp)
	je	.L54
	.loc 1 689 0
	movl	-52(%ebp), %eax
	movl	(%eax), %edx
	movl	-48(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 690 0
	movl	-52(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -44(%ebp)
	.loc 1 697 0
	movl	-52(%ebp), %eax
	movzbl	22(%eax), %eax
	movzbl	%al, %eax
	cmpl	8(%ebp), %eax
	jne	.L56
	.loc 1 699 0
	movl	-52(%ebp), %eax
	movl	%eax, -56(%ebp)
	.loc 1 700 0
	movl	-56(%ebp), %eax
	movl	-32(%ebp), %edx
	movl	%eax, %edi
	cld
	movl	%edx, %ecx
	movl	$0, %eax
	rep
	stosb
	jmp	.L59
.L56:
	.loc 1 703 0
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	jmp	.L59
.L54:
	.loc 1 706 0
	movl	1312+G@GOTOFF(%ebx), %eax
	cmpl	-28(%ebp), %eax
	jne	.L60
.LBB4:
	.loc 1 711 0
	movl	1344+G@GOTOFF(%ebx), %eax
	movl	%eax, -20(%ebp)
	.loc 1 714 0
	movl	1312+G@GOTOFF(%ebx), %eax
	sall	$4, %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	alloc_anon
	movl	%eax, -44(%ebp)
	.loc 1 718 0
	movl	$15, -16(%ebp)
	jmp	.L62
.L63:
	.loc 1 720 0
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	xcalloc@PLT
	movl	%eax, -24(%ebp)
	.loc 1 721 0
	movl	8(%ebp), %eax
	movl	%eax, %edx
	movl	-24(%ebp), %eax
	movb	%dl, 22(%eax)
	.loc 1 722 0
	movl	1312+G@GOTOFF(%ebx), %edx
	movl	-24(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 723 0
	movl	1316+G@GOTOFF(%ebx), %eax
	movl	%eax, %ecx
	movl	-16(%ebp), %eax
	sall	%cl, %eax
	movl	%eax, %edx
	addl	-44(%ebp), %edx
	movl	-24(%ebp), %eax
	movl	%edx, 8(%eax)
	.loc 1 724 0
	movl	-24(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 725 0
	movl	-24(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 718 0
	subl	$1, -16(%ebp)
.L62:
	cmpl	$0, -16(%ebp)
	jg	.L63
	.loc 1 728 0
	movl	-20(%ebp), %eax
	movl	%eax, 1344+G@GOTOFF(%ebx)
	jmp	.L59
.L60:
.LBE4:
	.loc 1 731 0
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	alloc_anon
	movl	%eax, -44(%ebp)
.L59:
	.loc 1 805 0
	cmpl	$0, -56(%ebp)
	jne	.L65
	.loc 1 806 0
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	xcalloc@PLT
	movl	%eax, -56(%ebp)
.L65:
	.loc 1 808 0
	movl	-56(%ebp), %edx
	movl	-28(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 809 0
	movl	-56(%ebp), %edx
	movl	-44(%ebp), %eax
	movl	%eax, 8(%edx)
	.loc 1 810 0
	movzwl	1340+G@GOTOFF(%ebx), %edx
	movl	-56(%ebp), %eax
	movw	%dx, 16(%eax)
	.loc 1 811 0
	movl	8(%ebp), %eax
	movl	%eax, %edx
	movl	-56(%ebp), %eax
	movb	%dl, 22(%eax)
	.loc 1 812 0
	movl	-40(%ebp), %eax
	movl	%eax, %edx
	movl	-56(%ebp), %eax
	movw	%dx, 18(%eax)
	.loc 1 813 0
	movl	-56(%ebp), %eax
	movw	$1, 20(%eax)
	.loc 1 815 0
	movl	1332+G@GOTOFF(%ebx), %edx
	movzwl	1340+G@GOTOFF(%ebx), %eax
	movzwl	%ax, %ecx
	movl	$1, %eax
	sall	%cl, %eax
	orl	%edx, %eax
	movl	%eax, 1332+G@GOTOFF(%ebx)
	.loc 1 824 0
	movl	-40(%ebp), %eax
	movl	%eax, %esi
	shrl	$5, %esi
	movl	-40(%ebp), %eax
	movl	%eax, %ecx
	andl	$31, %ecx
	movl	$1, %eax
	movl	%eax, %edx
	sall	%cl, %edx
	movl	-56(%ebp), %eax
	movl	%edx, 24(%eax,%esi,4)
	.loc 1 827 0
	movl	-56(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	set_page_table_entry
	.loc 1 835 0
	movl	-56(%ebp), %eax
	.loc 1 836 0
	addl	$60, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE22:
	.size	alloc_page, .-alloc_page
	.section	.rodata
.LC3:
	.string	"virtual memory exhausted"
	.text
	.type	alloc_anon, @function
alloc_anon:
.LFB21:
	.loc 1 597 0
	pushl	%ebp
.LCFI24:
	movl	%esp, %ebp
.LCFI25:
	pushl	%ebx
.LCFI26:
	subl	$52, %esp
.LCFI27:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 600 0
	movl	$0, 20(%esp)
	movl	$-1, 16(%esp)
	movl	$34, 12(%esp)
	movl	$3, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	mmap@PLT
	movl	%eax, -8(%ebp)
	.loc 1 607 0
	cmpl	$-1, -8(%ebp)
	jne	.L69
	.loc 1 609 0
	leal	.LC3@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	perror@PLT
	.loc 1 610 0
	movl	$1, (%esp)
	call	exit@PLT
.L69:
	.loc 1 614 0
	movl	1328+G@GOTOFF(%ebx), %eax
	addl	12(%ebp), %eax
	movl	%eax, 1328+G@GOTOFF(%ebx)
	.loc 1 621 0
	movl	-8(%ebp), %eax
	.loc 1 622 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE21:
	.size	alloc_anon, .-alloc_anon
	.type	push_by_depth, @function
push_by_depth:
.LFB16:
	.loc 1 450 0
	pushl	%ebp
.LCFI28:
	movl	%esp, %ebp
.LCFI29:
	pushl	%ebx
.LCFI30:
	subl	$20, %esp
.LCFI31:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 451 0
	movl	1364+G@GOTOFF(%ebx), %edx
	movl	1368+G@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	jb	.L73
	.loc 1 453 0
	movl	1368+G@GOTOFF(%ebx), %eax
	addl	%eax, %eax
	movl	%eax, 1368+G@GOTOFF(%ebx)
	.loc 1 454 0
	movl	1368+G@GOTOFF(%ebx), %eax
	leal	0(,%eax,4), %edx
	movl	1372+G@GOTOFF(%ebx), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	xrealloc@PLT
	movl	%eax, 1372+G@GOTOFF(%ebx)
	.loc 1 456 0
	movl	1368+G@GOTOFF(%ebx), %eax
	leal	0(,%eax,4), %edx
	movl	1376+G@GOTOFF(%ebx), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	xrealloc@PLT
	movl	%eax, 1376+G@GOTOFF(%ebx)
.L73:
	.loc 1 459 0
	movl	1372+G@GOTOFF(%ebx), %edx
	movl	1364+G@GOTOFF(%ebx), %eax
	sall	$2, %eax
	addl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 460 0
	movl	1376+G@GOTOFF(%ebx), %edx
	movl	1364+G@GOTOFF(%ebx), %ecx
	leal	0(,%ecx,4), %eax
	addl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%eax, (%edx)
	leal	1(%ecx), %eax
	movl	%eax, 1364+G@GOTOFF(%ebx)
	.loc 1 461 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE16:
	.size	push_by_depth, .-push_by_depth
	.type	push_depth, @function
push_depth:
.LFB15:
	.loc 1 434 0
	pushl	%ebp
.LCFI32:
	movl	%esp, %ebp
.LCFI33:
	pushl	%ebx
.LCFI34:
	subl	$20, %esp
.LCFI35:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 435 0
	movl	1352+G@GOTOFF(%ebx), %edx
	movl	1356+G@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	jb	.L77
	.loc 1 437 0
	movl	1356+G@GOTOFF(%ebx), %eax
	addl	%eax, %eax
	movl	%eax, 1356+G@GOTOFF(%ebx)
	.loc 1 438 0
	movl	1356+G@GOTOFF(%ebx), %eax
	leal	0(,%eax,4), %edx
	movl	1360+G@GOTOFF(%ebx), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	xrealloc@PLT
	movl	%eax, 1360+G@GOTOFF(%ebx)
.L77:
	.loc 1 441 0
	movl	1360+G@GOTOFF(%ebx), %edx
	movl	1352+G@GOTOFF(%ebx), %ecx
	leal	0(,%ecx,4), %eax
	addl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%eax, (%edx)
	leal	1(%ecx), %eax
	movl	%eax, 1352+G@GOTOFF(%ebx)
	.loc 1 442 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE15:
	.size	push_depth, .-push_depth
.globl ggc_set_mark
	.type	ggc_set_mark, @function
ggc_set_mark:
.LFB27:
	.loc 1 1139 0
	pushl	%ebp
.LCFI36:
	movl	%esp, %ebp
.LCFI37:
	pushl	%ebx
.LCFI38:
	subl	$36, %esp
.LCFI39:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1146 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	lookup_page_table_entry
	movl	%eax, -20(%ebp)
	.loc 1 1154 0
	movl	8(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	8(%eax), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, %edx
	movl	-20(%ebp), %eax
	movzbl	22(%eax), %eax
	movzbl	%al, %eax
	movl	inverse_table@GOTOFF(%ebx,%eax,8), %eax
	imull	%eax, %edx
	movl	-20(%ebp), %eax
	movzbl	22(%eax), %eax
	movzbl	%al, %eax
	movl	4+inverse_table@GOTOFF(%ebx,%eax,8), %eax
	movl	%eax, %ecx
	movl	%edx, %eax
	shrl	%cl, %eax
	movl	%eax, -16(%ebp)
	.loc 1 1155 0
	movl	-16(%ebp), %eax
	shrl	$5, %eax
	movl	%eax, -12(%ebp)
	.loc 1 1156 0
	movl	-16(%ebp), %eax
	movl	%eax, %ecx
	andl	$31, %ecx
	movl	$1, %eax
	sall	%cl, %eax
	movl	%eax, -8(%ebp)
	.loc 1 1159 0
	movl	-12(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	24(%eax,%edx,4), %eax
	andl	-8(%ebp), %eax
	testl	%eax, %eax
	je	.L81
	.loc 1 1160 0
	movl	$1, -24(%ebp)
	jmp	.L83
.L81:
	.loc 1 1163 0
	movl	-12(%ebp), %ecx
	movl	-12(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	24(%eax,%edx,4), %eax
	movl	%eax, %edx
	orl	-8(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	%edx, 24(%eax,%ecx,4)
	.loc 1 1164 0
	movl	-20(%ebp), %eax
	movzwl	18(%eax), %eax
	leal	-1(%eax), %edx
	movl	-20(%ebp), %eax
	movw	%dx, 18(%eax)
	.loc 1 1169 0
	movl	$0, -24(%ebp)
.L83:
	movl	-24(%ebp), %eax
	.loc 1 1170 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE27:
	.size	ggc_set_mark, .-ggc_set_mark
	.type	lookup_page_table_entry, @function
lookup_page_table_entry:
.LFB18:
	.loc 1 509 0
	pushl	%ebp
.LCFI40:
	movl	%esp, %ebp
.LCFI41:
	pushl	%esi
.LCFI42:
	pushl	%ebx
.LCFI43:
	subl	$16, %esp
.LCFI44:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 514 0
	leal	288+G@GOTOFF(%ebx), %eax
	movl	%eax, -20(%ebp)
	.loc 1 524 0
	movl	8(%ebp), %eax
	shrl	$24, %eax
	andl	$255, %eax
	movl	%eax, -16(%ebp)
	.loc 1 525 0
	movl	8(%ebp), %eax
	movl	%eax, %edx
	movl	1316+G@GOTOFF(%ebx), %eax
	movl	%eax, %ecx
	movl	%edx, %esi
	shrl	%cl, %esi
	movl	1316+G@GOTOFF(%ebx), %edx
	movl	$24, %eax
	subl	%edx, %eax
	movl	%eax, %ecx
	movl	$1, %eax
	sall	%cl, %eax
	subl	$1, %eax
	andl	%esi, %eax
	movl	%eax, -12(%ebp)
	.loc 1 527 0
	movl	-16(%ebp), %eax
	sall	$2, %eax
	addl	-20(%ebp), %eax
	movl	(%eax), %edx
	movl	-12(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	.loc 1 528 0
	addl	$16, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE18:
	.size	lookup_page_table_entry, .-lookup_page_table_entry
.globl ggc_marked_p
	.type	ggc_marked_p, @function
ggc_marked_p:
.LFB28:
	.loc 1 1179 0
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
	.loc 1 1186 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	lookup_page_table_entry
	movl	%eax, -20(%ebp)
	.loc 1 1194 0
	movl	8(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	8(%eax), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, %edx
	movl	-20(%ebp), %eax
	movzbl	22(%eax), %eax
	movzbl	%al, %eax
	movl	inverse_table@GOTOFF(%ebx,%eax,8), %eax
	imull	%eax, %edx
	movl	-20(%ebp), %eax
	movzbl	22(%eax), %eax
	movzbl	%al, %eax
	movl	4+inverse_table@GOTOFF(%ebx,%eax,8), %eax
	movl	%eax, %ecx
	movl	%edx, %eax
	shrl	%cl, %eax
	movl	%eax, -16(%ebp)
	.loc 1 1195 0
	movl	-16(%ebp), %eax
	shrl	$5, %eax
	movl	%eax, -12(%ebp)
	.loc 1 1196 0
	movl	-16(%ebp), %eax
	movl	%eax, %ecx
	andl	$31, %ecx
	movl	$1, %eax
	sall	%cl, %eax
	movl	%eax, -8(%ebp)
	.loc 1 1198 0
	movl	-12(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	24(%eax,%edx,4), %eax
	andl	-8(%ebp), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	.loc 1 1199 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE28:
	.size	ggc_marked_p, .-ggc_marked_p
.globl ggc_get_size
	.type	ggc_get_size, @function
ggc_get_size:
.LFB29:
	.loc 1 1206 0
	pushl	%ebp
.LCFI49:
	movl	%esp, %ebp
.LCFI50:
	pushl	%ebx
.LCFI51:
	subl	$20, %esp
.LCFI52:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1207 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	lookup_page_table_entry
	movl	%eax, -8(%ebp)
	.loc 1 1208 0
	movl	-8(%ebp), %eax
	movzbl	22(%eax), %eax
	movzbl	%al, %eax
	movl	object_size_table@GOTOFF(%ebx,%eax,4), %eax
	.loc 1 1209 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE29:
	.size	ggc_get_size, .-ggc_get_size
	.section	.rodata
	.type	__FUNCTION__.11922, @object
	.size	__FUNCTION__.11922, 16
__FUNCTION__.11922:
	.string	"compute_inverse"
	.align 4
.LC4:
	.string	"../../../kg++fe/gnu/ggc-page.c"
	.text
	.type	compute_inverse, @function
compute_inverse:
.LFB30:
	.loc 1 1222 0
	pushl	%ebp
.LCFI53:
	movl	%esp, %ebp
.LCFI54:
	pushl	%ebx
.LCFI55:
	subl	$36, %esp
.LCFI56:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1227 0
	movl	8(%ebp), %eax
	movl	object_size_table@GOTOFF(%ebx,%eax,4), %edx
	movl	1312+G@GOTOFF(%ebx), %eax
	shrl	%eax
	cmpl	%eax, %edx
	jbe	.L92
	.loc 1 1229 0
	movl	8(%ebp), %eax
	movl	objects_per_page_table@GOTOFF(%ebx,%eax,4), %eax
	cmpl	$1, %eax
	je	.L94
	.loc 1 1230 0
	leal	__FUNCTION__.11922@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1230, 4(%esp)
	leal	.LC4@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L94:
	.loc 1 1232 0
	movl	8(%ebp), %eax
	movl	$1, inverse_table@GOTOFF(%ebx,%eax,8)
	.loc 1 1233 0
	movl	8(%ebp), %eax
	movl	$0, 4+inverse_table@GOTOFF(%ebx,%eax,8)
	.loc 1 1234 0
	jmp	.L103
.L92:
	.loc 1 1237 0
	movl	8(%ebp), %eax
	movl	object_size_table@GOTOFF(%ebx,%eax,4), %eax
	movl	%eax, -16(%ebp)
	.loc 1 1238 0
	movl	$0, -8(%ebp)
	.loc 1 1239 0
	jmp	.L97
.L98:
	.loc 1 1241 0
	addl	$1, -8(%ebp)
	.loc 1 1242 0
	shrl	-16(%ebp)
.L97:
	.loc 1 1239 0
	movl	-16(%ebp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L98
	.loc 1 1245 0
	movl	-16(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1246 0
	jmp	.L100
.L101:
	.loc 1 1247 0
	movl	-12(%ebp), %eax
	movl	%eax, %edx
	imull	-16(%ebp), %edx
	movl	$2, %eax
	movl	%eax, %ecx
	subl	%edx, %ecx
	movl	%ecx, %edx
	movl	-12(%ebp), %eax
	imull	%edx, %eax
	movl	%eax, -12(%ebp)
.L100:
	.loc 1 1246 0
	movl	-12(%ebp), %eax
	imull	-16(%ebp), %eax
	cmpl	$1, %eax
	jne	.L101
	.loc 1 1249 0
	movl	8(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%eax, inverse_table@GOTOFF(%ebx,%edx,8)
	.loc 1 1250 0
	movl	8(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	%eax, 4+inverse_table@GOTOFF(%ebx,%edx,8)
.L103:
	.loc 1 1251 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE30:
	.size	compute_inverse, .-compute_inverse
	.section	.rodata
	.type	__FUNCTION__.11954, @object
	.size	__FUNCTION__.11954, 9
__FUNCTION__.11954:
	.string	"init_ggc"
	.text
.globl init_ggc
	.type	init_ggc, @function
init_ggc:
.LFB31:
	.loc 1 1256 0
	pushl	%ebp
.LCFI57:
	movl	%esp, %ebp
.LCFI58:
	pushl	%ebx
.LCFI59:
	subl	$52, %esp
.LCFI60:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1259 0
	call	getpagesize@PLT
	movl	%eax, 1312+G@GOTOFF(%ebx)
	.loc 1 1260 0
	movl	1312+G@GOTOFF(%ebx), %eax
	movl	$0, %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	exact_log2_wide@PLT
	movl	%eax, 1316+G@GOTOFF(%ebx)
	.loc 1 1271 0
	movl	stdout@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 1348+G@GOTOFF(%ebx)
.LBB5:
	.loc 1 1280 0
	movl	1312+G@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	alloc_anon
	movl	%eax, -24(%ebp)
	.loc 1 1282 0
	movl	1312+G@GOTOFF(%ebx), %eax
	leal	-1(%eax), %edx
	movl	-24(%ebp), %eax
	andl	%edx, %eax
	testl	%eax, %eax
	je	.L105
	.loc 1 1287 0
	movl	1312+G@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	alloc_anon
	movl	%eax, -24(%ebp)
	.loc 1 1288 0
	movl	1312+G@GOTOFF(%ebx), %eax
	leal	-1(%eax), %edx
	movl	-24(%ebp), %eax
	andl	%edx, %eax
	testl	%eax, %eax
	je	.L105
	.loc 1 1289 0
	leal	__FUNCTION__.11954@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1289, 4(%esp)
	leal	.LC4@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L105:
	.loc 1 1293 0
	movl	$28, 4(%esp)
	movl	$1, (%esp)
	call	xcalloc@PLT
	movl	%eax, -20(%ebp)
	.loc 1 1294 0
	movl	1312+G@GOTOFF(%ebx), %edx
	movl	-20(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 1295 0
	movl	-20(%ebp), %edx
	movl	-24(%ebp), %eax
	movl	%eax, 8(%edx)
	.loc 1 1296 0
	movl	1344+G@GOTOFF(%ebx), %edx
	movl	-20(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 1297 0
	movl	-20(%ebp), %eax
	movl	%eax, 1344+G@GOTOFF(%ebx)
.LBE5:
	.loc 1 1302 0
	movl	$0, -28(%ebp)
	jmp	.L108
.L109:
	.loc 1 1303 0
	movl	-28(%ebp), %edx
	movl	-28(%ebp), %ecx
	movl	$1, %eax
	sall	%cl, %eax
	movl	%eax, object_size_table@GOTOFF(%ebx,%edx,4)
	.loc 1 1302 0
	addl	$1, -28(%ebp)
.L108:
	cmpl	$31, -28(%ebp)
	jbe	.L109
	.loc 1 1304 0
	movl	$32, -28(%ebp)
	jmp	.L111
.L112:
.LBB6:
	.loc 1 1306 0
	movl	-28(%ebp), %eax
	subl	$32, %eax
	movl	extra_order_size_table@GOTOFF(%ebx,%eax,4), %eax
	movl	%eax, -16(%ebp)
	.loc 1 1310 0
	movl	-16(%ebp), %eax
	addl	$3, %eax
	shrl	$2, %eax
	sall	$2, %eax
	movl	%eax, -16(%ebp)
	.loc 1 1311 0
	movl	-28(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	%eax, object_size_table@GOTOFF(%ebx,%edx,4)
.LBE6:
	.loc 1 1304 0
	addl	$1, -28(%ebp)
.L111:
	cmpl	$35, -28(%ebp)
	jbe	.L112
	.loc 1 1315 0
	movl	$0, -28(%ebp)
	jmp	.L114
.L115:
	.loc 1 1317 0
	movl	-28(%ebp), %ecx
	movl	1312+G@GOTOFF(%ebx), %edx
	movl	-28(%ebp), %eax
	movl	object_size_table@GOTOFF(%ebx,%eax,4), %eax
	movl	%eax, -40(%ebp)
	movl	%edx, %eax
	movl	$0, %edx
	divl	-40(%ebp)
	movl	%eax, -40(%ebp)
	movl	-40(%ebp), %eax
	movl	%eax, objects_per_page_table@GOTOFF(%ebx,%ecx,4)
	.loc 1 1318 0
	movl	-28(%ebp), %eax
	movl	objects_per_page_table@GOTOFF(%ebx,%eax,4), %eax
	testl	%eax, %eax
	jne	.L116
	.loc 1 1319 0
	movl	-28(%ebp), %eax
	movl	$1, objects_per_page_table@GOTOFF(%ebx,%eax,4)
.L116:
	.loc 1 1320 0
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	compute_inverse
	.loc 1 1315 0
	addl	$1, -28(%ebp)
.L114:
	cmpl	$35, -28(%ebp)
	jbe	.L115
	.loc 1 1327 0
	movl	$32, -28(%ebp)
	jmp	.L119
.L120:
.LBB7:
	.loc 1 1332 0
	movl	-28(%ebp), %eax
	movl	object_size_table@GOTOFF(%ebx,%eax,4), %eax
	movzbl	size_lookup@GOTOFF(%ebx,%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -12(%ebp)
	.loc 1 1333 0
	movl	-28(%ebp), %eax
	movl	object_size_table@GOTOFF(%ebx,%eax,4), %eax
	movl	%eax, -8(%ebp)
	jmp	.L121
.L122:
	.loc 1 1334 0
	movl	-8(%ebp), %eax
	movl	-28(%ebp), %edx
	movb	%dl, size_lookup@GOTOFF(%ebx,%eax)
	.loc 1 1333 0
	subl	$1, -8(%ebp)
.L121:
	movl	-8(%ebp), %eax
	movzbl	size_lookup@GOTOFF(%ebx,%eax), %eax
	movzbl	%al, %eax
	cmpl	-12(%ebp), %eax
	je	.L122
.LBE7:
	.loc 1 1327 0
	addl	$1, -28(%ebp)
.L119:
	cmpl	$35, -28(%ebp)
	jbe	.L120
	.loc 1 1337 0
	movl	$0, 1352+G@GOTOFF(%ebx)
	.loc 1 1338 0
	movl	$10, 1356+G@GOTOFF(%ebx)
	.loc 1 1339 0
	movl	1356+G@GOTOFF(%ebx), %eax
	sall	$2, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, 1360+G@GOTOFF(%ebx)
	.loc 1 1341 0
	movl	$0, 1364+G@GOTOFF(%ebx)
	.loc 1 1342 0
	movl	$128, 1368+G@GOTOFF(%ebx)
	.loc 1 1343 0
	movl	1368+G@GOTOFF(%ebx), %eax
	sall	$2, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, 1372+G@GOTOFF(%ebx)
	.loc 1 1344 0
	movl	1368+G@GOTOFF(%ebx), %eax
	sall	$2, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, 1376+G@GOTOFF(%ebx)
	.loc 1 1345 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE31:
	.size	init_ggc, .-init_ggc
	.section	.rodata
	.type	__FUNCTION__.12042, @object
	.size	__FUNCTION__.12042, 17
__FUNCTION__.12042:
	.string	"ggc_push_context"
	.text
.globl ggc_push_context
	.type	ggc_push_context, @function
ggc_push_context:
.LFB32:
	.loc 1 1352 0
	pushl	%ebp
.LCFI61:
	movl	%esp, %ebp
.LCFI62:
	pushl	%ebx
.LCFI63:
	subl	$20, %esp
.LCFI64:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1353 0
	movzwl	1340+G@GOTOFF(%ebx), %eax
	addl	$1, %eax
	movw	%ax, 1340+G@GOTOFF(%ebx)
	.loc 1 1356 0
	movzwl	1340+G@GOTOFF(%ebx), %eax
	cmpw	$31, %ax
	jbe	.L129
	.loc 1 1357 0
	leal	__FUNCTION__.12042@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1357, 4(%esp)
	leal	.LC4@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L129:
	.loc 1 1358 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE32:
	.size	ggc_push_context, .-ggc_push_context
	.section	.rodata
	.type	__FUNCTION__.12060, @object
	.size	__FUNCTION__.12060, 25
__FUNCTION__.12060:
	.string	"ggc_recalculate_in_use_p"
	.text
	.type	ggc_recalculate_in_use_p, @function
ggc_recalculate_in_use_p:
.LFB33:
	.loc 1 1366 0
	pushl	%ebp
.LCFI65:
	movl	%esp, %ebp
.LCFI66:
	pushl	%esi
.LCFI67:
	pushl	%ebx
.LCFI68:
	subl	$32, %esp
.LCFI69:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1372 0
	movl	8(%ebp), %eax
	movzbl	22(%eax), %eax
	movzbl	%al, %eax
	movl	objects_per_page_table@GOTOFF(%ebx,%eax,4), %eax
	addl	$1, %eax
	movl	%eax, -16(%ebp)
	.loc 1 1375 0
	movl	-16(%ebp), %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movw	%dx, 18(%eax)
	.loc 1 1378 0
	movl	$0, -20(%ebp)
	.loc 1 1379 0
	jmp	.L131
.L132:
.LBB8:
	.loc 1 1387 0
	movl	-20(%ebp), %ecx
	movl	-20(%ebp), %edx
	movl	8(%ebp), %eax
	movl	24(%eax,%edx,4), %esi
	movl	1376+G@GOTOFF(%ebx), %edx
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	movl	-20(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%esi, %edx
	orl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 24(%eax,%ecx,4)
	.loc 1 1390 0
	movl	-20(%ebp), %edx
	movl	8(%ebp), %eax
	movl	24(%eax,%edx,4), %eax
	movl	%eax, -12(%ebp)
	jmp	.L133
.L134:
	.loc 1 1391 0
	movl	8(%ebp), %eax
	movzwl	18(%eax), %edx
	movl	-12(%ebp), %eax
	andl	$1, %eax
	subw	%ax, %dx
	movl	8(%ebp), %eax
	movw	%dx, 18(%eax)
	.loc 1 1390 0
	shrl	-12(%ebp)
.L133:
	cmpl	$0, -12(%ebp)
	jne	.L134
.LBE8:
	.loc 1 1381 0
	addl	$1, -20(%ebp)
.L131:
	.loc 1 1379 0
	movl	-16(%ebp), %eax
	addl	$31, %eax
	shrl	$5, %eax
	sall	$2, %eax
	addl	$3, %eax
	shrl	$2, %eax
	cmpl	-20(%ebp), %eax
	ja	.L132
	.loc 1 1394 0
	movl	8(%ebp), %eax
	movzwl	18(%eax), %eax
	movzwl	%ax, %eax
	cmpl	-16(%ebp), %eax
	jb	.L139
	.loc 1 1395 0
	leal	__FUNCTION__.12060@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1395, 4(%esp)
	leal	.LC4@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L139:
	.loc 1 1396 0
	addl	$32, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE33:
	.size	ggc_recalculate_in_use_p, .-ggc_recalculate_in_use_p
.globl ggc_pop_context
	.type	ggc_pop_context, @function
ggc_pop_context:
.LFB34:
	.loc 1 1403 0
	pushl	%ebp
.LCFI70:
	movl	%esp, %ebp
.LCFI71:
	pushl	%ebx
.LCFI72:
	subl	$36, %esp
.LCFI73:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1410 0
	movzwl	1340+G@GOTOFF(%ebx), %eax
	subl	$1, %eax
	movw	%ax, 1340+G@GOTOFF(%ebx)
	movzwl	1340+G@GOTOFF(%ebx), %eax
	movzwl	%ax, %eax
	movl	%eax, -24(%ebp)
	.loc 1 1411 0
	movl	-24(%ebp), %eax
	addl	$1, %eax
	movl	%eax, %ecx
	movl	$1, %eax
	sall	%cl, %eax
	movl	%eax, -28(%ebp)
	.loc 1 1413 0
	movl	1332+G@GOTOFF(%ebx), %edx
	movl	1336+G@GOTOFF(%ebx), %eax
	orl	%edx, %eax
	andl	-28(%ebp), %eax
	testl	%eax, %eax
	je	.L155
	.loc 1 1416 0
	movl	1332+G@GOTOFF(%ebx), %edx
	movl	1332+G@GOTOFF(%ebx), %eax
	andl	-28(%ebp), %eax
	shrl	%eax
	orl	%edx, %eax
	movl	%eax, 1332+G@GOTOFF(%ebx)
	.loc 1 1417 0
	movl	1332+G@GOTOFF(%ebx), %edx
	movl	-28(%ebp), %eax
	subl	$1, %eax
	andl	%edx, %eax
	movl	%eax, 1332+G@GOTOFF(%ebx)
	.loc 1 1418 0
	movl	1336+G@GOTOFF(%ebx), %edx
	movl	-28(%ebp), %eax
	subl	$1, %eax
	andl	%edx, %eax
	movl	%eax, 1336+G@GOTOFF(%ebx)
	.loc 1 1422 0
	movl	-24(%ebp), %edx
	addl	$1, %edx
	movl	1352+G@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	jae	.L143
	.loc 1 1423 0
	movl	1360+G@GOTOFF(%ebx), %edx
	movl	-24(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	addl	$4, %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
	jmp	.L145
.L143:
	.loc 1 1425 0
	movl	1364+G@GOTOFF(%ebx), %eax
	movl	%eax, -16(%ebp)
.L145:
	.loc 1 1428 0
	movl	1352+G@GOTOFF(%ebx), %eax
	cmpl	-24(%ebp), %eax
	jbe	.L146
	.loc 1 1433 0
	movl	1360+G@GOTOFF(%ebx), %edx
	movl	-24(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
	jmp	.L148
.L149:
.LBB9:
	.loc 1 1450 0
	movl	1376+G@GOTOFF(%ebx), %edx
	movl	-20(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L150
	.loc 1 1452 0
	movl	1372+G@GOTOFF(%ebx), %edx
	movl	-20(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1453 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	ggc_recalculate_in_use_p
	.loc 1 1454 0
	movl	1376+G@GOTOFF(%ebx), %edx
	movl	-20(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 1455 0
	movl	1376+G@GOTOFF(%ebx), %edx
	movl	-20(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	$0, (%eax)
.L150:
.LBE9:
	.loc 1 1433 0
	addl	$1, -20(%ebp)
.L148:
	movl	-20(%ebp), %eax
	cmpl	-16(%ebp), %eax
	jb	.L149
.L146:
	.loc 1 1462 0
	movl	-16(%ebp), %eax
	movl	%eax, -20(%ebp)
	jmp	.L152
.L153:
.LBB10:
	.loc 1 1464 0
	movl	1372+G@GOTOFF(%ebx), %edx
	movl	-20(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 1474 0
	movl	-24(%ebp), %eax
	movl	%eax, %edx
	movl	-8(%ebp), %eax
	movw	%dx, 16(%eax)
.LBE10:
	.loc 1 1462 0
	addl	$1, -20(%ebp)
.L152:
	movl	1364+G@GOTOFF(%ebx), %eax
	cmpl	-20(%ebp), %eax
	ja	.L153
	.loc 1 1477 0
	call	adjust_depth
.L155:
	.loc 1 1493 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE34:
	.size	ggc_pop_context, .-ggc_pop_context
	.type	adjust_depth, @function
adjust_depth:
.LFB23:
	.loc 1 843 0
	pushl	%ebp
.LCFI74:
	movl	%esp, %ebp
.LCFI75:
	subl	$16, %esp
.LCFI76:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 846 0
	movl	1364+G@GOTOFF(%ecx), %eax
	testl	%eax, %eax
	je	.L161
	.loc 1 848 0
	movl	1372+G@GOTOFF(%ecx), %edx
	movl	1364+G@GOTOFF(%ecx), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	subl	$4, %eax
	movl	(%eax), %eax
	movl	%eax, -4(%ebp)
	.loc 1 853 0
	jmp	.L159
.L160:
	.loc 1 854 0
	movl	1352+G@GOTOFF(%ecx), %eax
	subl	$1, %eax
	movl	%eax, 1352+G@GOTOFF(%ecx)
.L159:
	.loc 1 853 0
	movl	1352+G@GOTOFF(%ecx), %edx
	movl	-4(%ebp), %eax
	movzwl	16(%eax), %eax
	movzwl	%ax, %eax
	addl	$1, %eax
	cmpl	%eax, %edx
	ja	.L160
.L161:
	.loc 1 856 0
	leave
	ret
.LFE23:
	.size	adjust_depth, .-adjust_depth
	.section	.rodata
.LC6:
	.string	" {GC %luk -> "
.LC7:
	.string	"%luk}"
	.align 4
.LC5:
	.long	1120403456
	.text
.globl ggc_collect
	.type	ggc_collect, @function
ggc_collect:
.LFB37:
	.loc 1 1699 0
	pushl	%ebp
.LCFI77:
	movl	%esp, %ebp
.LCFI78:
	pushl	%ebx
.LCFI79:
	subl	$36, %esp
.LCFI80:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1704 0
	movl	compiler_params@GOT(%ebx), %eax
	movl	(%eax), %eax
	addl	$264, %eax
	movl	4(%eax), %eax
	sall	$10, %eax
	movl	1324+G@GOTOFF(%ebx), %edx
	movl	%edx, -28(%ebp)
	movl	%eax, -24(%ebp)
	movl	-28(%ebp), %eax
	cmpl	%eax, -24(%ebp)
	jae	.L163
	movl	-28(%ebp), %edx
	movl	%edx, -24(%ebp)
.L163:
	movl	-24(%ebp), %eax
	movl	$0, %edx
	pushl	%edx
	pushl	%eax
	fildll	(%esp)
	leal	8(%esp), %esp
	fstps	-12(%ebp)
	.loc 1 1706 0
	movl	compiler_params@GOT(%ebx), %eax
	movl	(%eax), %eax
	addl	$252, %eax
	movl	4(%eax), %eax
	pushl	%eax
	fildl	(%esp)
	leal	4(%esp), %esp
	fmuls	-12(%ebp)
	flds	.LC5@GOTOFF(%ebx)
	fdivrp	%st, %st(1)
	fstps	-8(%ebp)
	.loc 1 1708 0
	movl	1320+G@GOTOFF(%ebx), %eax
	movl	$0, %edx
	pushl	%edx
	pushl	%eax
	fildll	(%esp)
	leal	8(%esp), %esp
	flds	-12(%ebp)
	fadds	-8(%ebp)
	fucompp
	fnstsw	%ax
	sahf
	ja	.L169
	.loc 1 1711 0
	movl	$1, (%esp)
	call	timevar_push@PLT
	.loc 1 1712 0
	movl	quiet_flag@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L166
	.loc 1 1713 0
	movl	1320+G@GOTOFF(%ebx), %eax
	movl	%eax, %edx
	shrl	$10, %edx
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 8(%esp)
	leal	.LC6@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
.L166:
	.loc 1 1717 0
	movl	$0, 1320+G@GOTOFF(%ebx)
	.loc 1 1721 0
	call	release_pages
	.loc 1 1724 0
	movzwl	1340+G@GOTOFF(%ebx), %eax
	movzwl	%ax, %eax
	leal	1(%eax), %ecx
	movl	$1, %eax
	sall	%cl, %eax
	subl	$1, %eax
	movl	%eax, 1336+G@GOTOFF(%ebx)
	.loc 1 1726 0
	call	clear_marks
	.loc 1 1727 0
	call	ggc_mark_roots@PLT
	.loc 1 1733 0
	call	sweep_pages
	.loc 1 1735 0
	movl	1320+G@GOTOFF(%ebx), %eax
	movl	%eax, 1324+G@GOTOFF(%ebx)
	.loc 1 1737 0
	movl	$1, (%esp)
	call	timevar_pop@PLT
	.loc 1 1739 0
	movl	quiet_flag@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L169
	.loc 1 1740 0
	movl	1320+G@GOTOFF(%ebx), %eax
	movl	%eax, %edx
	shrl	$10, %edx
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 8(%esp)
	leal	.LC7@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
.L169:
	.loc 1 1741 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE37:
	.size	ggc_collect, .-ggc_collect
	.type	clear_marks, @function
clear_marks:
.LFB35:
	.loc 1 1499 0
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
	subl	$28, %esp
.LCFI86:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1502 0
	movl	$2, -28(%ebp)
	jmp	.L171
.L172:
.LBB11:
	.loc 1 1504 0
	movl	-28(%ebp), %eax
	movl	objects_per_page_table@GOTOFF(%ebx,%eax,4), %eax
	movl	%eax, -24(%ebp)
	.loc 1 1505 0
	movl	-24(%ebp), %eax
	addl	$32, %eax
	shrl	$5, %eax
	sall	$2, %eax
	movl	%eax, -20(%ebp)
	.loc 1 1508 0
	movl	-28(%ebp), %eax
	movl	G@GOTOFF(%ebx,%eax,4), %eax
	movl	%eax, -16(%ebp)
	jmp	.L173
.L174:
	.loc 1 1519 0
	movl	-16(%ebp), %eax
	movzwl	16(%eax), %edx
	movzwl	1340+G@GOTOFF(%ebx), %eax
	cmpw	%ax, %dx
	jae	.L175
	.loc 1 1521 0
	movl	1376+G@GOTOFF(%ebx), %edx
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L177
	.loc 1 1522 0
	movl	1376+G@GOTOFF(%ebx), %edx
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %esi
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, (%esi)
.L177:
	.loc 1 1523 0
	movl	-16(%ebp), %ecx
	addl	$24, %ecx
	movl	1376+G@GOTOFF(%ebx), %edx
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	-20(%ebp), %edx
	movl	%eax, %edi
	movl	%ecx, %esi
	cld
	movl	%edx, %ecx
	rep
	movsb
.L175:
	.loc 1 1528 0
	movl	-24(%ebp), %eax
	movl	%eax, %edx
	movl	-16(%ebp), %eax
	movw	%dx, 18(%eax)
	.loc 1 1529 0
	movl	-16(%ebp), %eax
	addl	$24, %eax
	movl	-20(%ebp), %edx
	movl	%eax, %edi
	cld
	movl	%edx, %ecx
	movl	$0, %eax
	rep
	stosb
	.loc 1 1532 0
	movl	-24(%ebp), %eax
	movl	%eax, %esi
	shrl	$5, %esi
	movl	-24(%ebp), %eax
	movl	%eax, %ecx
	andl	$31, %ecx
	movl	$1, %eax
	movl	%eax, %edx
	sall	%cl, %edx
	movl	-16(%ebp), %eax
	movl	%edx, 24(%eax,%esi,4)
	.loc 1 1508 0
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
.L173:
	cmpl	$0, -16(%ebp)
	jne	.L174
.LBE11:
	.loc 1 1502 0
	addl	$1, -28(%ebp)
.L171:
	cmpl	$35, -28(%ebp)
	jbe	.L172
	.loc 1 1536 0
	addl	$28, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE35:
	.size	clear_marks, .-clear_marks
	.type	sweep_pages, @function
sweep_pages:
.LFB36:
	.loc 1 1543 0
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
	.loc 1 1546 0
	movl	$2, -36(%ebp)
	jmp	.L183
.L184:
.LBB12:
	.loc 1 1550 0
	movl	-36(%ebp), %eax
	movl	144+G@GOTOFF(%ebx,%eax,4), %eax
	movl	%eax, -32(%ebp)
	.loc 1 1552 0
	movl	-36(%ebp), %eax
	movl	objects_per_page_table@GOTOFF(%ebx,%eax,4), %eax
	movl	%eax, -28(%ebp)
	.loc 1 1557 0
	movl	-36(%ebp), %eax
	movl	G@GOTOFF(%ebx,%eax,4), %eax
	movl	%eax, -20(%ebp)
	.loc 1 1558 0
	cmpl	$0, -20(%ebp)
	je	.L185
	.loc 1 1561 0
	movl	$0, -16(%ebp)
.L187:
.LBB13:
	.loc 1 1564 0
	movl	-20(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 1567 0
	movl	-20(%ebp), %eax
	cmpl	-32(%ebp), %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -12(%ebp)
	.loc 1 1571 0
	movl	-20(%ebp), %eax
	movzwl	18(%eax), %eax
	movzwl	%ax, %edx
	movl	-28(%ebp), %eax
	subl	%edx, %eax
	movl	%eax, -24(%ebp)
	.loc 1 1573 0
	movl	1320+G@GOTOFF(%ebx), %edx
	movl	-36(%ebp), %eax
	movl	object_size_table@GOTOFF(%ebx,%eax,4), %eax
	imull	-24(%ebp), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, 1320+G@GOTOFF(%ebx)
	.loc 1 1577 0
	movl	-20(%ebp), %eax
	movzwl	16(%eax), %edx
	movzwl	1340+G@GOTOFF(%ebx), %eax
	cmpw	%ax, %dx
	jb	.L188
	.loc 1 1581 0
	cmpl	$0, -24(%ebp)
	jne	.L190
	.loc 1 1583 0
	cmpl	$0, -16(%ebp)
	jne	.L192
	.loc 1 1584 0
	movl	-36(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	%eax, G@GOTOFF(%ebx,%edx,4)
	jmp	.L194
.L192:
	.loc 1 1586 0
	movl	-16(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	%eax, (%edx)
.L194:
	.loc 1 1589 0
	movl	-36(%ebp), %eax
	movl	144+G@GOTOFF(%ebx,%eax,4), %eax
	cmpl	-20(%ebp), %eax
	jne	.L195
	.loc 1 1590 0
	movl	-36(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 144+G@GOTOFF(%ebx,%edx,4)
.L195:
	.loc 1 1591 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	free_page
	.loc 1 1592 0
	movl	-16(%ebp), %eax
	movl	%eax, -20(%ebp)
	jmp	.L188
.L190:
	.loc 1 1596 0
	movl	-20(%ebp), %eax
	movzwl	18(%eax), %eax
	testw	%ax, %ax
	jne	.L197
	.loc 1 1599 0
	movl	-36(%ebp), %eax
	movl	144+G@GOTOFF(%ebx,%eax,4), %eax
	cmpl	-20(%ebp), %eax
	je	.L188
	.loc 1 1602 0
	movl	-20(%ebp), %eax
	movl	$0, (%eax)
	.loc 1 1603 0
	movl	-36(%ebp), %eax
	movl	144+G@GOTOFF(%ebx,%eax,4), %edx
	movl	-20(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 1606 0
	movl	-36(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	%eax, 144+G@GOTOFF(%ebx,%edx,4)
	.loc 1 1609 0
	cmpl	$0, -16(%ebp)
	jne	.L201
	.loc 1 1610 0
	movl	-36(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	%eax, G@GOTOFF(%ebx,%edx,4)
	jmp	.L203
.L201:
	.loc 1 1612 0
	movl	-16(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	%eax, (%edx)
.L203:
	.loc 1 1613 0
	movl	-16(%ebp), %eax
	movl	%eax, -20(%ebp)
	jmp	.L188
.L197:
	.loc 1 1621 0
	movl	-36(%ebp), %eax
	movl	G@GOTOFF(%ebx,%eax,4), %eax
	cmpl	-20(%ebp), %eax
	je	.L188
	.loc 1 1623 0
	movl	-20(%ebp), %eax
	movl	(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 1624 0
	movl	-36(%ebp), %eax
	movl	G@GOTOFF(%ebx,%eax,4), %edx
	movl	-20(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 1625 0
	movl	-36(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	%eax, G@GOTOFF(%ebx,%edx,4)
	.loc 1 1627 0
	movl	-36(%ebp), %eax
	movl	144+G@GOTOFF(%ebx,%eax,4), %eax
	cmpl	-20(%ebp), %eax
	jne	.L205
	.loc 1 1628 0
	movl	-36(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 144+G@GOTOFF(%ebx,%edx,4)
.L205:
	.loc 1 1629 0
	movl	-16(%ebp), %eax
	movl	%eax, -20(%ebp)
.L188:
	.loc 1 1632 0
	movl	-20(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 1633 0
	movl	-8(%ebp), %eax
	movl	%eax, -20(%ebp)
.LBE13:
	.loc 1 1635 0
	cmpl	$0, -12(%ebp)
	je	.L187
	.loc 1 1639 0
	movl	-36(%ebp), %eax
	movl	G@GOTOFF(%ebx,%eax,4), %eax
	movl	%eax, -20(%ebp)
	jmp	.L208
.L209:
	.loc 1 1640 0
	movl	-20(%ebp), %eax
	movzwl	16(%eax), %edx
	movzwl	1340+G@GOTOFF(%ebx), %eax
	cmpw	%ax, %dx
	je	.L210
	.loc 1 1641 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	ggc_recalculate_in_use_p
.L210:
	.loc 1 1639 0
	movl	-20(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
.L208:
	cmpl	$0, -20(%ebp)
	jne	.L209
.L185:
.LBE12:
	.loc 1 1546 0
	addl	$1, -36(%ebp)
.L183:
	cmpl	$35, -36(%ebp)
	jbe	.L184
	.loc 1 1643 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE36:
	.size	sweep_pages, .-sweep_pages
	.section	.rodata
	.type	__FUNCTION__.11673, @object
	.size	__FUNCTION__.11673, 10
__FUNCTION__.11673:
	.string	"free_page"
	.text
	.type	free_page, @function
free_page:
.LFB24:
	.loc 1 863 0
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
	.loc 1 873 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	set_page_table_entry
	.loc 1 879 0
	movl	1364+G@GOTOFF(%ebx), %eax
	cmpl	$1, %eax
	jbe	.L215
.LBB14:
	.loc 1 881 0
	movl	1372+G@GOTOFF(%ebx), %edx
	movl	1364+G@GOTOFF(%ebx), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	subl	$4, %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 885 0
	movl	8(%ebp), %eax
	movzwl	16(%eax), %edx
	movl	-12(%ebp), %eax
	movzwl	16(%eax), %eax
	cmpw	%ax, %dx
	jne	.L217
.LBB15:
	.loc 1 887 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 888 0
	movl	1372+G@GOTOFF(%ebx), %edx
	movl	-8(%ebp), %eax
	sall	$2, %eax
	addl	%eax, %edx
	movl	-12(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 889 0
	movl	1376+G@GOTOFF(%ebx), %edx
	movl	-8(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %ecx
	movl	1376+G@GOTOFF(%ebx), %edx
	movl	1364+G@GOTOFF(%ebx), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	subl	$4, %eax
	movl	(%eax), %eax
	movl	%eax, (%ecx)
	.loc 1 890 0
	movl	-8(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%edx, 12(%eax)
	jmp	.L215
.L217:
.LBE15:
	.loc 1 896 0
	leal	__FUNCTION__.11673@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$896, 4(%esp)
	leal	.LC4@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L215:
.LBE14:
	.loc 1 899 0
	movl	1364+G@GOTOFF(%ebx), %eax
	subl	$1, %eax
	movl	%eax, 1364+G@GOTOFF(%ebx)
	.loc 1 901 0
	call	adjust_depth
	.loc 1 903 0
	movl	1344+G@GOTOFF(%ebx), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 904 0
	movl	8(%ebp), %eax
	movl	%eax, 1344+G@GOTOFF(%ebx)
	.loc 1 905 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE24:
	.size	free_page, .-free_page
	.section	.rodata
.LC8:
	.string	"Overhead"
.LC9:
	.string	"Used"
.LC10:
	.string	"Allocated"
.LC11:
	.string	"Size"
.LC12:
	.string	"\n%-5s %10s  %10s  %10s\n"
	.align 4
.LC13:
	.string	"%-5lu %10lu%c %10lu%c %10lu%c\n"
.LC14:
	.string	"Total"
.LC15:
	.string	"%-5s %10lu%c %10lu%c %10lu%c\n"
	.text
.globl ggc_print_statistics
	.type	ggc_print_statistics, @function
ggc_print_statistics:
.LFB38:
	.loc 1 1753 0
	pushl	%ebp
.LCFI95:
	movl	%esp, %ebp
.LCFI96:
	pushl	%ebx
.LCFI97:
	subl	$4276, %esp
.LCFI98:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1756 0
	movl	$0, -24(%ebp)
	.loc 1 1759 0
	leal	-4140(%ebp), %eax
	movl	%eax, %edx
	movl	$4112, %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	%edx, (%esp)
	call	memset@PLT
	.loc 1 1762 0
	movl	$0, 1324+G@GOTOFF(%ebx)
	.loc 1 1765 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %edx
	leal	-4140(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	ggc_print_common_statistics@PLT
	.loc 1 1769 0
	call	release_pages
	.loc 1 1773 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %edx
	leal	.LC8@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	leal	.LC9@GOTOFF(%ebx), %eax
	movl	%eax, 16(%esp)
	leal	.LC10@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	leal	.LC11@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	.LC12@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
	.loc 1 1775 0
	movl	$0, -28(%ebp)
	jmp	.L221
.L222:
.LBB16:
	.loc 1 1783 0
	movl	-28(%ebp), %eax
	movl	G@GOTOFF(%ebx,%eax,4), %eax
	testl	%eax, %eax
	je	.L223
	.loc 1 1786 0
	movl	$0, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	%eax, -16(%ebp)
	movl	-16(%ebp), %eax
	movl	%eax, -8(%ebp)
	.loc 1 1791 0
	movl	-28(%ebp), %eax
	movl	G@GOTOFF(%ebx,%eax,4), %eax
	movl	%eax, -20(%ebp)
	jmp	.L225
.L226:
	.loc 1 1793 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	addl	%eax, -16(%ebp)
	.loc 1 1794 0
	movl	-28(%ebp), %eax
	movl	objects_per_page_table@GOTOFF(%ebx,%eax,4), %edx
	movl	-20(%ebp), %eax
	movzwl	18(%eax), %eax
	movzwl	%ax, %eax
	subl	%eax, %edx
	movl	-28(%ebp), %eax
	movl	object_size_table@GOTOFF(%ebx,%eax,4), %eax
	imull	%edx, %eax
	addl	%eax, -12(%ebp)
	.loc 1 1797 0
	movl	-28(%ebp), %eax
	movl	objects_per_page_table@GOTOFF(%ebx,%eax,4), %eax
	addl	$32, %eax
	shrl	$5, %eax
	sall	$2, %eax
	addl	-8(%ebp), %eax
	addl	$24, %eax
	movl	%eax, -8(%ebp)
	.loc 1 1791 0
	movl	-20(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
.L225:
	cmpl	$0, -20(%ebp)
	jne	.L226
	.loc 1 1800 0
	cmpl	$10239, -8(%ebp)
	jbe	.L228
	cmpl	$10485759, -8(%ebp)
	ja	.L230
	movl	$107, -4240(%ebp)
	jmp	.L232
.L230:
	movl	$77, -4240(%ebp)
.L232:
	movl	-4240(%ebp), %eax
	movl	%eax, -4244(%ebp)
	jmp	.L233
.L228:
	movl	$32, -4244(%ebp)
.L233:
	cmpl	$10239, -8(%ebp)
	jbe	.L234
	cmpl	$10485759, -8(%ebp)
	ja	.L236
	movl	-8(%ebp), %eax
	movl	%eax, %edx
	shrl	$10, %edx
	movl	%edx, -4232(%ebp)
	jmp	.L238
.L236:
	movl	-8(%ebp), %eax
	movl	%eax, %edx
	shrl	$20, %edx
	movl	%edx, -4232(%ebp)
.L238:
	movl	-4232(%ebp), %eax
	movl	%eax, -4236(%ebp)
	jmp	.L239
.L234:
	movl	-8(%ebp), %edx
	movl	%edx, -4236(%ebp)
.L239:
	cmpl	$10239, -12(%ebp)
	jbe	.L240
	cmpl	$10485759, -12(%ebp)
	ja	.L242
	movl	$107, -4224(%ebp)
	jmp	.L244
.L242:
	movl	$77, -4224(%ebp)
.L244:
	movl	-4224(%ebp), %eax
	movl	%eax, -4228(%ebp)
	jmp	.L245
.L240:
	movl	$32, -4228(%ebp)
.L245:
	cmpl	$10239, -12(%ebp)
	jbe	.L246
	cmpl	$10485759, -12(%ebp)
	ja	.L248
	movl	-12(%ebp), %eax
	movl	%eax, %edx
	shrl	$10, %edx
	movl	%edx, -4216(%ebp)
	jmp	.L250
.L248:
	movl	-12(%ebp), %eax
	movl	%eax, %edx
	shrl	$20, %edx
	movl	%edx, -4216(%ebp)
.L250:
	movl	-4216(%ebp), %eax
	movl	%eax, -4220(%ebp)
	jmp	.L251
.L246:
	movl	-12(%ebp), %edx
	movl	%edx, -4220(%ebp)
.L251:
	cmpl	$10239, -16(%ebp)
	jbe	.L252
	cmpl	$10485759, -16(%ebp)
	ja	.L254
	movl	$107, -4208(%ebp)
	jmp	.L256
.L254:
	movl	$77, -4208(%ebp)
.L256:
	movl	-4208(%ebp), %eax
	movl	%eax, -4212(%ebp)
	jmp	.L257
.L252:
	movl	$32, -4212(%ebp)
.L257:
	cmpl	$10239, -16(%ebp)
	jbe	.L258
	cmpl	$10485759, -16(%ebp)
	ja	.L260
	movl	-16(%ebp), %eax
	movl	%eax, %edx
	shrl	$10, %edx
	movl	%edx, -4200(%ebp)
	jmp	.L262
.L260:
	movl	-16(%ebp), %eax
	movl	%eax, %edx
	shrl	$20, %edx
	movl	%edx, -4200(%ebp)
.L262:
	movl	-4200(%ebp), %eax
	movl	%eax, -4204(%ebp)
	jmp	.L263
.L258:
	movl	-16(%ebp), %edx
	movl	%edx, -4204(%ebp)
.L263:
	movl	-28(%ebp), %eax
	movl	object_size_table@GOTOFF(%ebx,%eax,4), %edx
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	-4244(%ebp), %eax
	movl	%eax, 32(%esp)
	movl	-4236(%ebp), %eax
	movl	%eax, 28(%esp)
	movl	-4228(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	-4220(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	-4212(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-4204(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	leal	.LC13@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
	.loc 1 1805 0
	movl	-8(%ebp), %eax
	addl	%eax, -24(%ebp)
.L223:
.LBE16:
	.loc 1 1775 0
	addl	$1, -28(%ebp)
.L221:
	cmpl	$35, -28(%ebp)
	jbe	.L222
	.loc 1 1807 0
	cmpl	$10239, -24(%ebp)
	jbe	.L265
	cmpl	$10485759, -24(%ebp)
	ja	.L267
	movl	$107, -4192(%ebp)
	jmp	.L269
.L267:
	movl	$77, -4192(%ebp)
.L269:
	movl	-4192(%ebp), %edx
	movl	%edx, -4196(%ebp)
	jmp	.L270
.L265:
	movl	$32, -4196(%ebp)
.L270:
	cmpl	$10239, -24(%ebp)
	jbe	.L271
	cmpl	$10485759, -24(%ebp)
	ja	.L273
	movl	-24(%ebp), %eax
	movl	%eax, %edx
	shrl	$10, %edx
	movl	%edx, -4184(%ebp)
	jmp	.L275
.L273:
	movl	-24(%ebp), %eax
	movl	%eax, %edx
	shrl	$20, %edx
	movl	%edx, -4184(%ebp)
.L275:
	movl	-4184(%ebp), %eax
	movl	%eax, -4188(%ebp)
	jmp	.L276
.L271:
	movl	-24(%ebp), %edx
	movl	%edx, -4188(%ebp)
.L276:
	movl	1320+G@GOTOFF(%ebx), %eax
	cmpl	$10239, %eax
	jbe	.L277
	movl	1320+G@GOTOFF(%ebx), %eax
	cmpl	$10485759, %eax
	ja	.L279
	movl	$107, -4176(%ebp)
	jmp	.L281
.L279:
	movl	$77, -4176(%ebp)
.L281:
	movl	-4176(%ebp), %eax
	movl	%eax, -4180(%ebp)
	jmp	.L282
.L277:
	movl	$32, -4180(%ebp)
.L282:
	movl	1320+G@GOTOFF(%ebx), %eax
	cmpl	$10239, %eax
	ja	.L283
	movl	1320+G@GOTOFF(%ebx), %edx
	movl	%edx, -4172(%ebp)
	jmp	.L285
.L283:
	movl	1320+G@GOTOFF(%ebx), %eax
	cmpl	$10485759, %eax
	ja	.L286
	movl	1320+G@GOTOFF(%ebx), %eax
	movl	%eax, %edx
	shrl	$10, %edx
	movl	%edx, -4168(%ebp)
	jmp	.L288
.L286:
	movl	1320+G@GOTOFF(%ebx), %eax
	movl	%eax, %edx
	shrl	$20, %edx
	movl	%edx, -4168(%ebp)
.L288:
	movl	-4168(%ebp), %eax
	movl	%eax, -4172(%ebp)
.L285:
	movl	1328+G@GOTOFF(%ebx), %eax
	cmpl	$10239, %eax
	jbe	.L289
	movl	1328+G@GOTOFF(%ebx), %eax
	cmpl	$10485759, %eax
	ja	.L291
	movl	$107, -4160(%ebp)
	jmp	.L293
.L291:
	movl	$77, -4160(%ebp)
.L293:
	movl	-4160(%ebp), %edx
	movl	%edx, -4164(%ebp)
	jmp	.L294
.L289:
	movl	$32, -4164(%ebp)
.L294:
	movl	1328+G@GOTOFF(%ebx), %eax
	cmpl	$10239, %eax
	ja	.L295
	movl	1328+G@GOTOFF(%ebx), %eax
	movl	%eax, -4156(%ebp)
	jmp	.L297
.L295:
	movl	1328+G@GOTOFF(%ebx), %eax
	cmpl	$10485759, %eax
	ja	.L298
	movl	1328+G@GOTOFF(%ebx), %eax
	movl	%eax, %edx
	shrl	$10, %edx
	movl	%edx, -4152(%ebp)
	jmp	.L300
.L298:
	movl	1328+G@GOTOFF(%ebx), %eax
	movl	%eax, %edx
	shrl	$20, %edx
	movl	%edx, -4152(%ebp)
.L300:
	movl	-4152(%ebp), %eax
	movl	%eax, -4156(%ebp)
.L297:
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-4196(%ebp), %eax
	movl	%eax, 32(%esp)
	movl	-4188(%ebp), %eax
	movl	%eax, 28(%esp)
	movl	-4180(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	-4172(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	-4164(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-4156(%ebp), %eax
	movl	%eax, 12(%esp)
	leal	.LC14@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	.LC15@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
	.loc 1 1811 0
	addl	$4276, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE38:
	.size	ggc_print_statistics, .-ggc_print_statistics
	.local	objects_per_page_table
	.comm	objects_per_page_table,144,32
	.local	object_size_table
	.comm	object_size_table,144,32
	.local	inverse_table
	.comm	inverse_table,288,32
	.local	G
	.comm	G,1380,32
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
	.long	.LFB19
	.long	.LFE19-.LFB19
	.byte	0x4
	.long	.LCFI0-.LFB19
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
	.long	.LFB20
	.long	.LFE20-.LFB20
	.byte	0x4
	.long	.LCFI5-.LFB20
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI6-.LCFI5
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI8-.LCFI6
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE2:
.LSFDE4:
	.long	.LEFDE4-.LASFDE4
.LASFDE4:
	.long	.Lframe0
	.long	.LFB25
	.long	.LFE25-.LFB25
	.byte	0x4
	.long	.LCFI9-.LFB25
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI10-.LCFI9
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI12-.LCFI10
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE4:
.LSFDE6:
	.long	.LEFDE6-.LASFDE6
.LASFDE6:
	.long	.Lframe0
	.long	.LFB26
	.long	.LFE26-.LFB26
	.byte	0x4
	.long	.LCFI13-.LFB26
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI14-.LCFI13
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI17-.LCFI14
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x3
	.align 4
.LEFDE6:
.LSFDE8:
	.long	.LEFDE8-.LASFDE8
.LASFDE8:
	.long	.Lframe0
	.long	.LFB22
	.long	.LFE22-.LFB22
	.byte	0x4
	.long	.LCFI18-.LFB22
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI19-.LCFI18
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI23-.LCFI19
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
	.long	.LCFI27-.LCFI25
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE10:
.LSFDE12:
	.long	.LEFDE12-.LASFDE12
.LASFDE12:
	.long	.Lframe0
	.long	.LFB16
	.long	.LFE16-.LFB16
	.byte	0x4
	.long	.LCFI28-.LFB16
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
	.long	.LFB15
	.long	.LFE15-.LFB15
	.byte	0x4
	.long	.LCFI32-.LFB15
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI33-.LCFI32
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI35-.LCFI33
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE14:
.LSFDE16:
	.long	.LEFDE16-.LASFDE16
.LASFDE16:
	.long	.Lframe0
	.long	.LFB27
	.long	.LFE27-.LFB27
	.byte	0x4
	.long	.LCFI36-.LFB27
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI37-.LCFI36
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI39-.LCFI37
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE16:
.LSFDE18:
	.long	.LEFDE18-.LASFDE18
.LASFDE18:
	.long	.Lframe0
	.long	.LFB18
	.long	.LFE18-.LFB18
	.byte	0x4
	.long	.LCFI40-.LFB18
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI41-.LCFI40
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI44-.LCFI41
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x3
	.align 4
.LEFDE18:
.LSFDE20:
	.long	.LEFDE20-.LASFDE20
.LASFDE20:
	.long	.Lframe0
	.long	.LFB28
	.long	.LFE28-.LFB28
	.byte	0x4
	.long	.LCFI45-.LFB28
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
.LEFDE20:
.LSFDE22:
	.long	.LEFDE22-.LASFDE22
.LASFDE22:
	.long	.Lframe0
	.long	.LFB29
	.long	.LFE29-.LFB29
	.byte	0x4
	.long	.LCFI49-.LFB29
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI50-.LCFI49
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI52-.LCFI50
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE22:
.LSFDE24:
	.long	.LEFDE24-.LASFDE24
.LASFDE24:
	.long	.Lframe0
	.long	.LFB30
	.long	.LFE30-.LFB30
	.byte	0x4
	.long	.LCFI53-.LFB30
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI54-.LCFI53
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI56-.LCFI54
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE24:
.LSFDE26:
	.long	.LEFDE26-.LASFDE26
.LASFDE26:
	.long	.Lframe0
	.long	.LFB31
	.long	.LFE31-.LFB31
	.byte	0x4
	.long	.LCFI57-.LFB31
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
.LEFDE26:
.LSFDE28:
	.long	.LEFDE28-.LASFDE28
.LASFDE28:
	.long	.Lframe0
	.long	.LFB32
	.long	.LFE32-.LFB32
	.byte	0x4
	.long	.LCFI61-.LFB32
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
.LEFDE28:
.LSFDE30:
	.long	.LEFDE30-.LASFDE30
.LASFDE30:
	.long	.Lframe0
	.long	.LFB33
	.long	.LFE33-.LFB33
	.byte	0x4
	.long	.LCFI65-.LFB33
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
.LEFDE30:
.LSFDE32:
	.long	.LEFDE32-.LASFDE32
.LASFDE32:
	.long	.Lframe0
	.long	.LFB34
	.long	.LFE34-.LFB34
	.byte	0x4
	.long	.LCFI70-.LFB34
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
.LEFDE32:
.LSFDE34:
	.long	.LEFDE34-.LASFDE34
.LASFDE34:
	.long	.Lframe0
	.long	.LFB23
	.long	.LFE23-.LFB23
	.byte	0x4
	.long	.LCFI74-.LFB23
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI75-.LCFI74
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE34:
.LSFDE36:
	.long	.LEFDE36-.LASFDE36
.LASFDE36:
	.long	.Lframe0
	.long	.LFB37
	.long	.LFE37-.LFB37
	.byte	0x4
	.long	.LCFI77-.LFB37
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI78-.LCFI77
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI80-.LCFI78
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE36:
.LSFDE38:
	.long	.LEFDE38-.LASFDE38
.LASFDE38:
	.long	.Lframe0
	.long	.LFB35
	.long	.LFE35-.LFB35
	.byte	0x4
	.long	.LCFI81-.LFB35
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
.LEFDE38:
.LSFDE40:
	.long	.LEFDE40-.LASFDE40
.LASFDE40:
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
.LEFDE40:
.LSFDE42:
	.long	.LEFDE42-.LASFDE42
.LASFDE42:
	.long	.Lframe0
	.long	.LFB24
	.long	.LFE24-.LFB24
	.byte	0x4
	.long	.LCFI91-.LFB24
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
.LEFDE42:
.LSFDE44:
	.long	.LEFDE44-.LASFDE44
.LASFDE44:
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
.LEFDE44:
	.file 2 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h"
	.file 3 "../../../kg++fe/gnu/ggc.h"
	.file 4 "/usr/include/stdio.h"
	.file 5 "/usr/include/libio.h"
	.file 6 "/usr/include/bits/types.h"
	.file 7 "../../../kg++fe/gnu/flags.h"
	.file 8 "../../../kg++fe/gnu/params.h"
	.text
.Letext0:
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LFB19-.Ltext0
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
	.long	.LFE19-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST1:
	.long	.LFB20-.Ltext0
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
	.long	.LFE20-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST2:
	.long	.LFB25-.Ltext0
	.long	.LCFI9-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI9-.Ltext0
	.long	.LCFI10-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI10-.Ltext0
	.long	.LFE25-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST3:
	.long	.LFB26-.Ltext0
	.long	.LCFI13-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI13-.Ltext0
	.long	.LCFI14-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI14-.Ltext0
	.long	.LFE26-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST4:
	.long	.LFB22-.Ltext0
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
	.long	.LFE22-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST5:
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
.LLST6:
	.long	.LFB16-.Ltext0
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
	.long	.LFE16-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST7:
	.long	.LFB15-.Ltext0
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
	.long	.LFE15-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST8:
	.long	.LFB27-.Ltext0
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
	.long	.LFE27-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST9:
	.long	.LFB18-.Ltext0
	.long	.LCFI40-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI40-.Ltext0
	.long	.LCFI41-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI41-.Ltext0
	.long	.LFE18-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST10:
	.long	.LFB28-.Ltext0
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
	.long	.LFE28-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST11:
	.long	.LFB29-.Ltext0
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
	.long	.LFE29-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST12:
	.long	.LFB30-.Ltext0
	.long	.LCFI53-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI53-.Ltext0
	.long	.LCFI54-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI54-.Ltext0
	.long	.LFE30-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST13:
	.long	.LFB31-.Ltext0
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
	.long	.LFE31-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST14:
	.long	.LFB32-.Ltext0
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
	.long	.LFE32-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST15:
	.long	.LFB33-.Ltext0
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
	.long	.LFE33-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST16:
	.long	.LFB34-.Ltext0
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
	.long	.LFE34-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST17:
	.long	.LFB23-.Ltext0
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
	.long	.LFE23-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST18:
	.long	.LFB37-.Ltext0
	.long	.LCFI77-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI77-.Ltext0
	.long	.LCFI78-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI78-.Ltext0
	.long	.LFE37-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST19:
	.long	.LFB35-.Ltext0
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
	.long	.LFE35-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST20:
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
.LLST21:
	.long	.LFB24-.Ltext0
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
	.long	.LFE24-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST22:
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
	.section	.debug_info
	.long	0x1572
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.Ldebug_line0
	.long	.Letext0
	.long	.Ltext0
	.string	"GNU C 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.byte	0x1
	.string	"../../../kg++fe/gnu/ggc-page.c"
	.string	"/usa/handong/simplnano/cmplr-open64-merge/targia32_sl1/g++fe/gnu"
	.uleb128 0x2
	.byte	0x4
	.long	0xa3
	.uleb128 0x3
	.long	0xa8
	.uleb128 0x4
	.string	"char"
	.byte	0x1
	.byte	0x8
	.uleb128 0x4
	.string	"int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x5
	.long	.LASF0
	.byte	0x4
	.byte	0x7
	.uleb128 0x5
	.long	.LASF0
	.byte	0x4
	.byte	0x7
	.uleb128 0x6
	.string	"size_t"
	.byte	0x2
	.byte	0xd6
	.long	0xb7
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
	.string	"long long int"
	.byte	0x8
	.byte	0x5
	.uleb128 0x4
	.string	"long long unsigned int"
	.byte	0x8
	.byte	0x7
	.uleb128 0x6
	.string	"__quad_t"
	.byte	0x6
	.byte	0x3b
	.long	0x12b
	.uleb128 0x6
	.string	"__off_t"
	.byte	0x6
	.byte	0x90
	.long	0x175
	.uleb128 0x4
	.string	"long int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x6
	.string	"__off64_t"
	.byte	0x6
	.byte	0x91
	.long	0x156
	.uleb128 0x7
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.long	0xa8
	.uleb128 0x6
	.string	"FILE"
	.byte	0x4
	.byte	0x2e
	.long	0x1a6
	.uleb128 0x8
	.long	0x421
	.long	.LASF1
	.byte	0x94
	.byte	0x4
	.byte	0x2e
	.uleb128 0x9
	.string	"_flags"
	.byte	0x5
	.value	0x10c
	.long	0xb0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.string	"_IO_read_ptr"
	.byte	0x5
	.value	0x111
	.long	0x194
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.string	"_IO_read_end"
	.byte	0x5
	.value	0x112
	.long	0x194
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.string	"_IO_read_base"
	.byte	0x5
	.value	0x113
	.long	0x194
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.string	"_IO_write_base"
	.byte	0x5
	.value	0x114
	.long	0x194
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.string	"_IO_write_ptr"
	.byte	0x5
	.value	0x115
	.long	0x194
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x9
	.string	"_IO_write_end"
	.byte	0x5
	.value	0x116
	.long	0x194
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.string	"_IO_buf_base"
	.byte	0x5
	.value	0x117
	.long	0x194
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x9
	.string	"_IO_buf_end"
	.byte	0x5
	.value	0x118
	.long	0x194
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.string	"_IO_save_base"
	.byte	0x5
	.value	0x11a
	.long	0x194
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x9
	.string	"_IO_backup_base"
	.byte	0x5
	.value	0x11b
	.long	0x194
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.string	"_IO_save_end"
	.byte	0x5
	.value	0x11c
	.long	0x194
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x9
	.string	"_markers"
	.byte	0x5
	.value	0x11e
	.long	0x472
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x9
	.string	"_chain"
	.byte	0x5
	.value	0x120
	.long	0x478
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x9
	.string	"_fileno"
	.byte	0x5
	.value	0x122
	.long	0xb0
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x9
	.string	"_flags2"
	.byte	0x5
	.value	0x126
	.long	0xb0
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x9
	.string	"_old_offset"
	.byte	0x5
	.value	0x128
	.long	0x166
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x9
	.string	"_cur_column"
	.byte	0x5
	.value	0x12c
	.long	0xe4
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x9
	.string	"_vtable_offset"
	.byte	0x5
	.value	0x12d
	.long	0x10f
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0x9
	.string	"_shortbuf"
	.byte	0x5
	.value	0x12e
	.long	0x47e
	.byte	0x2
	.byte	0x23
	.uleb128 0x47
	.uleb128 0x9
	.string	"_lock"
	.byte	0x5
	.value	0x132
	.long	0x48e
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x9
	.string	"_offset"
	.byte	0x5
	.value	0x13b
	.long	0x181
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x9
	.string	"__pad1"
	.byte	0x5
	.value	0x144
	.long	0x192
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x9
	.string	"__pad2"
	.byte	0x5
	.value	0x145
	.long	0x192
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x9
	.string	"__pad3"
	.byte	0x5
	.value	0x146
	.long	0x192
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x9
	.string	"__pad4"
	.byte	0x5
	.value	0x147
	.long	0x192
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x9
	.string	"__pad5"
	.byte	0x5
	.value	0x148
	.long	0xc5
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x9
	.string	"_mode"
	.byte	0x5
	.value	0x14a
	.long	0xb0
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x9
	.string	"_unused2"
	.byte	0x5
	.value	0x14c
	.long	0x494
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.byte	0x0
	.uleb128 0xa
	.string	"_IO_lock_t"
	.byte	0x5
	.byte	0xb0
	.uleb128 0xb
	.long	0x472
	.string	"_IO_marker"
	.byte	0xc
	.byte	0x5
	.byte	0xb6
	.uleb128 0xc
	.string	"_next"
	.byte	0x5
	.byte	0xb7
	.long	0x472
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.string	"_sbuf"
	.byte	0x5
	.byte	0xb8
	.long	0x478
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.string	"_pos"
	.byte	0x5
	.byte	0xbc
	.long	0xb0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x42f
	.uleb128 0x2
	.byte	0x4
	.long	0x1a6
	.uleb128 0xd
	.long	0x48e
	.long	0xa8
	.uleb128 0xe
	.long	0xbe
	.byte	0x0
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x421
	.uleb128 0xd
	.long	0x4a4
	.long	0xa8
	.uleb128 0xe
	.long	0xbe
	.byte	0x27
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x4aa
	.uleb128 0xf
	.uleb128 0x3
	.long	0x9d
	.uleb128 0x4
	.string	"_Bool"
	.byte	0x1
	.byte	0x2
	.uleb128 0xd
	.long	0x4c9
	.long	0xfa
	.uleb128 0xe
	.long	0xbe
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	0x596
	.long	.LASF2
	.value	0x1010
	.byte	0x3
	.byte	0x9f
	.uleb128 0xc
	.string	"num_trees"
	.byte	0x3
	.byte	0xa1
	.long	0x596
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.string	"size_trees"
	.byte	0x3
	.byte	0xa4
	.long	0x5a6
	.byte	0x3
	.byte	0x23
	.uleb128 0x400
	.uleb128 0xc
	.string	"num_rtxs"
	.byte	0x3
	.byte	0xa6
	.long	0x596
	.byte	0x3
	.byte	0x23
	.uleb128 0x800
	.uleb128 0xc
	.string	"size_rtxs"
	.byte	0x3
	.byte	0xa9
	.long	0x5a6
	.byte	0x3
	.byte	0x23
	.uleb128 0xc00
	.uleb128 0xc
	.string	"total_size_trees"
	.byte	0x3
	.byte	0xab
	.long	0xc5
	.byte	0x3
	.byte	0x23
	.uleb128 0x1000
	.uleb128 0xc
	.string	"total_size_rtxs"
	.byte	0x3
	.byte	0xad
	.long	0xc5
	.byte	0x3
	.byte	0x23
	.uleb128 0x1004
	.uleb128 0xc
	.string	"total_num_trees"
	.byte	0x3
	.byte	0xaf
	.long	0xb7
	.byte	0x3
	.byte	0x23
	.uleb128 0x1008
	.uleb128 0xc
	.string	"total_num_rtxs"
	.byte	0x3
	.byte	0xb1
	.long	0xb7
	.byte	0x3
	.byte	0x23
	.uleb128 0x100c
	.byte	0x0
	.uleb128 0xd
	.long	0x5a6
	.long	0xb7
	.uleb128 0xe
	.long	0xbe
	.byte	0xff
	.byte	0x0
	.uleb128 0xd
	.long	0x5b6
	.long	0xc5
	.uleb128 0xe
	.long	0xbe
	.byte	0xff
	.byte	0x0
	.uleb128 0x4
	.string	"float"
	.byte	0x4
	.byte	0x4
	.uleb128 0x8
	.long	0x5fc
	.long	.LASF3
	.byte	0xc
	.byte	0x8
	.byte	0x2d
	.uleb128 0xc
	.string	"option"
	.byte	0x8
	.byte	0x30
	.long	0x4ab
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.string	"value"
	.byte	0x8
	.byte	0x32
	.long	0xb0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.string	"help"
	.byte	0x8
	.byte	0x34
	.long	0x4ab
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x11
	.long	.LASF3
	.byte	0x8
	.byte	0x35
	.long	0x5bf
	.uleb128 0x4
	.string	"long double"
	.byte	0xc
	.byte	0x4
	.uleb128 0x12
	.long	0x63e
	.byte	0x8
	.byte	0x1
	.byte	0xd7
	.uleb128 0xc
	.string	"mult"
	.byte	0x1
	.byte	0xd8
	.long	0xb7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.string	"shift"
	.byte	0x1
	.byte	0xd9
	.long	0xb7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x8
	.long	0x6f6
	.long	.LASF4
	.byte	0x1c
	.byte	0x1
	.byte	0xe0
	.uleb128 0xc
	.string	"next"
	.byte	0x1
	.byte	0xe3
	.long	0x6f6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.string	"bytes"
	.byte	0x1
	.byte	0xe7
	.long	0xc5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.string	"page"
	.byte	0x1
	.byte	0xea
	.long	0x194
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.string	"index_by_depth"
	.byte	0x1
	.byte	0xf3
	.long	0xfa
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x13
	.long	.LASF5
	.byte	0x1
	.byte	0xf6
	.long	0xe4
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xc
	.string	"num_free_objects"
	.byte	0x1
	.byte	0xf9
	.long	0xe4
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.uleb128 0xc
	.string	"next_bit_hint"
	.byte	0x1
	.byte	0xfd
	.long	0xe4
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x14
	.long	.LASF6
	.byte	0x1
	.value	0x100
	.long	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x16
	.uleb128 0x9
	.string	"in_use_p"
	.byte	0x1
	.value	0x105
	.long	0x4b9
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x63e
	.uleb128 0x15
	.long	.LASF4
	.byte	0x1
	.value	0x106
	.long	0x63e
	.uleb128 0x16
	.string	"page_table"
	.byte	0x1
	.value	0x11e
	.long	0x71b
	.uleb128 0xd
	.long	0x72b
	.long	0x72b
	.uleb128 0xe
	.long	0xbe
	.byte	0xff
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x731
	.uleb128 0x2
	.byte	0x4
	.long	0x6fc
	.uleb128 0x17
	.long	0x918
	.string	"globals"
	.value	0x564
	.byte	0x1
	.value	0x130
	.uleb128 0x9
	.string	"pages"
	.byte	0x1
	.value	0x135
	.long	0x918
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.string	"page_tails"
	.byte	0x1
	.value	0x13a
	.long	0x918
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x9
	.string	"lookup"
	.byte	0x1
	.value	0x13d
	.long	0x708
	.byte	0x3
	.byte	0x23
	.uleb128 0x120
	.uleb128 0x9
	.string	"pagesize"
	.byte	0x1
	.value	0x140
	.long	0xc5
	.byte	0x3
	.byte	0x23
	.uleb128 0x520
	.uleb128 0x9
	.string	"lg_pagesize"
	.byte	0x1
	.value	0x141
	.long	0xc5
	.byte	0x3
	.byte	0x23
	.uleb128 0x524
	.uleb128 0x14
	.long	.LASF7
	.byte	0x1
	.value	0x144
	.long	0xc5
	.byte	0x3
	.byte	0x23
	.uleb128 0x528
	.uleb128 0x14
	.long	.LASF8
	.byte	0x1
	.value	0x147
	.long	0xc5
	.byte	0x3
	.byte	0x23
	.uleb128 0x52c
	.uleb128 0x9
	.string	"bytes_mapped"
	.byte	0x1
	.value	0x14a
	.long	0xc5
	.byte	0x3
	.byte	0x23
	.uleb128 0x530
	.uleb128 0x9
	.string	"context_depth_allocations"
	.byte	0x1
	.value	0x14d
	.long	0xfa
	.byte	0x3
	.byte	0x23
	.uleb128 0x534
	.uleb128 0x9
	.string	"context_depth_collections"
	.byte	0x1
	.value	0x150
	.long	0xfa
	.byte	0x3
	.byte	0x23
	.uleb128 0x538
	.uleb128 0x14
	.long	.LASF5
	.byte	0x1
	.value	0x153
	.long	0xe4
	.byte	0x3
	.byte	0x23
	.uleb128 0x53c
	.uleb128 0x9
	.string	"free_pages"
	.byte	0x1
	.value	0x15b
	.long	0x731
	.byte	0x3
	.byte	0x23
	.uleb128 0x540
	.uleb128 0x9
	.string	"debug_file"
	.byte	0x1
	.value	0x162
	.long	0x928
	.byte	0x3
	.byte	0x23
	.uleb128 0x544
	.uleb128 0x9
	.string	"depth_in_use"
	.byte	0x1
	.value	0x165
	.long	0xb7
	.byte	0x3
	.byte	0x23
	.uleb128 0x548
	.uleb128 0x9
	.string	"depth_max"
	.byte	0x1
	.value	0x168
	.long	0xb7
	.byte	0x3
	.byte	0x23
	.uleb128 0x54c
	.uleb128 0x9
	.string	"depth"
	.byte	0x1
	.value	0x16d
	.long	0x92e
	.byte	0x3
	.byte	0x23
	.uleb128 0x550
	.uleb128 0x9
	.string	"by_depth_in_use"
	.byte	0x1
	.value	0x170
	.long	0xb7
	.byte	0x3
	.byte	0x23
	.uleb128 0x554
	.uleb128 0x9
	.string	"by_depth_max"
	.byte	0x1
	.value	0x173
	.long	0xb7
	.byte	0x3
	.byte	0x23
	.uleb128 0x558
	.uleb128 0x9
	.string	"by_depth"
	.byte	0x1
	.value	0x17a
	.long	0x72b
	.byte	0x3
	.byte	0x23
	.uleb128 0x55c
	.uleb128 0x9
	.string	"save_in_use"
	.byte	0x1
	.value	0x17f
	.long	0x934
	.byte	0x3
	.byte	0x23
	.uleb128 0x560
	.byte	0x0
	.uleb128 0xd
	.long	0x928
	.long	0x731
	.uleb128 0xe
	.long	0xbe
	.byte	0x23
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x19a
	.uleb128 0x2
	.byte	0x4
	.long	0xb7
	.uleb128 0x2
	.byte	0x4
	.long	0x93a
	.uleb128 0x2
	.byte	0x4
	.long	0xfa
	.uleb128 0x18
	.long	0x9b3
	.string	"set_page_table_entry"
	.byte	0x1
	.value	0x218
	.byte	0x1
	.long	.LFB19
	.long	.LFE19
	.long	.LLST0
	.uleb128 0x19
	.string	"p"
	.byte	0x1
	.value	0x216
	.long	0x192
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1a
	.long	.LASF9
	.byte	0x1
	.value	0x217
	.long	0x731
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1b
	.string	"base"
	.byte	0x1
	.value	0x219
	.long	0x9b3
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1b
	.string	"L1"
	.byte	0x1
	.value	0x21a
	.long	0xc5
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1b
	.string	"L2"
	.byte	0x1
	.value	0x21a
	.long	0xc5
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x72b
	.uleb128 0x1c
	.long	0xa02
	.byte	0x1
	.string	"debug_print_page_list"
	.byte	0x1
	.value	0x23d
	.byte	0x1
	.long	.LFB20
	.long	.LFE20
	.long	.LLST1
	.uleb128 0x1a
	.long	.LASF6
	.byte	0x1
	.value	0x23c
	.long	0xb0
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1b
	.string	"p"
	.byte	0x1
	.value	0x23e
	.long	0x731
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x18
	.long	0xa63
	.string	"release_pages"
	.byte	0x1
	.value	0x38f
	.byte	0x1
	.long	.LFB25
	.long	.LFE25
	.long	.LLST2
	.uleb128 0x1b
	.string	"p"
	.byte	0x1
	.value	0x391
	.long	0x731
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1b
	.string	"next"
	.byte	0x1
	.value	0x391
	.long	0x731
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1b
	.string	"start"
	.byte	0x1
	.value	0x392
	.long	0x194
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1b
	.string	"len"
	.byte	0x1
	.value	0x393
	.long	0xc5
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x1d
	.long	0xb3d
	.byte	0x1
	.string	"ggc_alloc"
	.byte	0x1
	.value	0x3e9
	.byte	0x1
	.long	0x192
	.long	.LFB26
	.long	.LFE26
	.long	.LLST3
	.uleb128 0x19
	.string	"size"
	.byte	0x1
	.value	0x3e8
	.long	0xc5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1e
	.long	.LASF6
	.byte	0x1
	.value	0x3ea
	.long	0xb7
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1b
	.string	"word"
	.byte	0x1
	.value	0x3ea
	.long	0xb7
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1b
	.string	"bit"
	.byte	0x1
	.value	0x3ea
	.long	0xb7
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1b
	.string	"object_offset"
	.byte	0x1
	.value	0x3ea
	.long	0xb7
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1e
	.long	.LASF9
	.byte	0x1
	.value	0x3eb
	.long	0x6f6
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1b
	.string	"result"
	.byte	0x1
	.value	0x3ec
	.long	0x192
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1f
	.long	0xb22
	.long	.LBB2
	.long	.LBE2
	.uleb128 0x1b
	.string	"new_entry"
	.byte	0x1
	.value	0x3ff
	.long	0x6f6
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x20
	.long	.LBB3
	.long	.LBE3
	.uleb128 0x1b
	.string	"hint"
	.byte	0x1
	.value	0x420
	.long	0xb7
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x21
	.long	0xc2b
	.string	"alloc_page"
	.byte	0x1
	.value	0x294
	.byte	0x1
	.long	0x6f6
	.long	.LFB22
	.long	.LFE22
	.long	.LLST4
	.uleb128 0x1a
	.long	.LASF6
	.byte	0x1
	.value	0x293
	.long	0xb7
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1e
	.long	.LASF9
	.byte	0x1
	.value	0x295
	.long	0x6f6
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1b
	.string	"p"
	.byte	0x1
	.value	0x295
	.long	0x6f6
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1b
	.string	"pp"
	.byte	0x1
	.value	0x295
	.long	0xc2b
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1b
	.string	"page"
	.byte	0x1
	.value	0x296
	.long	0x194
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1e
	.long	.LASF10
	.byte	0x1
	.value	0x297
	.long	0xc5
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1e
	.long	.LASF11
	.byte	0x1
	.value	0x298
	.long	0xc5
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1b
	.string	"page_entry_size"
	.byte	0x1
	.value	0x299
	.long	0xc5
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1b
	.string	"entry_size"
	.byte	0x1
	.value	0x29a
	.long	0xc5
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x20
	.long	.LBB4
	.long	.LBE4
	.uleb128 0x1b
	.string	"e"
	.byte	0x1
	.value	0x2c7
	.long	0x6f6
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1b
	.string	"f"
	.byte	0x1
	.value	0x2c7
	.long	0x6f6
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1b
	.string	"i"
	.byte	0x1
	.value	0x2c8
	.long	0xb0
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x6f6
	.uleb128 0x21
	.long	0xc86
	.string	"alloc_anon"
	.byte	0x1
	.value	0x255
	.byte	0x1
	.long	0x194
	.long	.LFB21
	.long	.LFE21
	.long	.LLST5
	.uleb128 0x19
	.string	"pref"
	.byte	0x1
	.value	0x253
	.long	0x194
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x19
	.string	"size"
	.byte	0x1
	.value	0x254
	.long	0xc5
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1b
	.string	"page"
	.byte	0x1
	.value	0x257
	.long	0x194
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x18
	.long	0xcc4
	.string	"push_by_depth"
	.byte	0x1
	.value	0x1c2
	.byte	0x1
	.long	.LFB16
	.long	.LFE16
	.long	.LLST6
	.uleb128 0x19
	.string	"p"
	.byte	0x1
	.value	0x1c0
	.long	0x731
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x19
	.string	"s"
	.byte	0x1
	.value	0x1c1
	.long	0x93a
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x18
	.long	0xcf2
	.string	"push_depth"
	.byte	0x1
	.value	0x1b2
	.byte	0x1
	.long	.LFB15
	.long	.LFE15
	.long	.LLST7
	.uleb128 0x19
	.string	"i"
	.byte	0x1
	.value	0x1b1
	.long	0xb7
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x1d
	.long	0xd65
	.byte	0x1
	.string	"ggc_set_mark"
	.byte	0x1
	.value	0x473
	.byte	0x1
	.long	0xb0
	.long	.LFB27
	.long	.LFE27
	.long	.LLST8
	.uleb128 0x19
	.string	"p"
	.byte	0x1
	.value	0x472
	.long	0x4a4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1e
	.long	.LASF9
	.byte	0x1
	.value	0x474
	.long	0x731
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1b
	.string	"bit"
	.byte	0x1
	.value	0x475
	.long	0xb7
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1b
	.string	"word"
	.byte	0x1
	.value	0x475
	.long	0xb7
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1b
	.string	"mask"
	.byte	0x1
	.value	0x476
	.long	0xfa
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x21
	.long	0xdd0
	.string	"lookup_page_table_entry"
	.byte	0x1
	.value	0x1fd
	.byte	0x1
	.long	0x731
	.long	.LFB18
	.long	.LFE18
	.long	.LLST9
	.uleb128 0x19
	.string	"p"
	.byte	0x1
	.value	0x1fc
	.long	0x4a4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1b
	.string	"base"
	.byte	0x1
	.value	0x1fe
	.long	0x9b3
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1b
	.string	"L1"
	.byte	0x1
	.value	0x1ff
	.long	0xc5
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1b
	.string	"L2"
	.byte	0x1
	.value	0x1ff
	.long	0xc5
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x1d
	.long	0xe43
	.byte	0x1
	.string	"ggc_marked_p"
	.byte	0x1
	.value	0x49b
	.byte	0x1
	.long	0xb0
	.long	.LFB28
	.long	.LFE28
	.long	.LLST10
	.uleb128 0x19
	.string	"p"
	.byte	0x1
	.value	0x49a
	.long	0x4a4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1e
	.long	.LASF9
	.byte	0x1
	.value	0x49c
	.long	0x731
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1b
	.string	"bit"
	.byte	0x1
	.value	0x49d
	.long	0xb7
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1b
	.string	"word"
	.byte	0x1
	.value	0x49d
	.long	0xb7
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1b
	.string	"mask"
	.byte	0x1
	.value	0x49e
	.long	0xfa
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x1d
	.long	0xe86
	.byte	0x1
	.string	"ggc_get_size"
	.byte	0x1
	.value	0x4b6
	.byte	0x1
	.long	0xc5
	.long	.LFB29
	.long	.LFE29
	.long	.LLST11
	.uleb128 0x19
	.string	"p"
	.byte	0x1
	.value	0x4b5
	.long	0x4a4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1b
	.string	"pe"
	.byte	0x1
	.value	0x4b7
	.long	0x731
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x18
	.long	0xef7
	.string	"compute_inverse"
	.byte	0x1
	.value	0x4c6
	.byte	0x1
	.long	.LFB30
	.long	.LFE30
	.long	.LLST12
	.uleb128 0x1a
	.long	.LASF6
	.byte	0x1
	.value	0x4c5
	.long	0xb7
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1b
	.string	"size"
	.byte	0x1
	.value	0x4c7
	.long	0xb7
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1b
	.string	"inv"
	.byte	0x1
	.value	0x4c7
	.long	0xb7
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1b
	.string	"e"
	.byte	0x1
	.value	0x4c7
	.long	0xb7
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x22
	.long	.LASF12
	.long	0x141b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.11922
	.byte	0x0
	.uleb128 0x1c
	.long	0xfa1
	.byte	0x1
	.string	"init_ggc"
	.byte	0x1
	.value	0x4e8
	.byte	0x1
	.long	.LFB31
	.long	.LFE31
	.long	.LLST13
	.uleb128 0x1e
	.long	.LASF6
	.byte	0x1
	.value	0x4e9
	.long	0xb7
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1f
	.long	0xf4d
	.long	.LBB5
	.long	.LBE5
	.uleb128 0x1b
	.string	"p"
	.byte	0x1
	.value	0x500
	.long	0x194
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1b
	.string	"e"
	.byte	0x1
	.value	0x501
	.long	0x6f6
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x1f
	.long	0xf68
	.long	.LBB6
	.long	.LBE6
	.uleb128 0x1b
	.string	"s"
	.byte	0x1
	.value	0x51a
	.long	0xc5
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x1f
	.long	0xf90
	.long	.LBB7
	.long	.LBE7
	.uleb128 0x1b
	.string	"o"
	.byte	0x1
	.value	0x531
	.long	0xb0
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1b
	.string	"i"
	.byte	0x1
	.value	0x532
	.long	0xb0
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x22
	.long	.LASF12
	.long	0x1406
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.11954
	.byte	0x0
	.uleb128 0x1c
	.long	0xfd9
	.byte	0x1
	.string	"ggc_push_context"
	.byte	0x1
	.value	0x548
	.byte	0x1
	.long	.LFB32
	.long	.LFE32
	.long	.LLST14
	.uleb128 0x22
	.long	.LASF12
	.long	0x13f1
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.12042
	.byte	0x0
	.uleb128 0x18
	.long	0x105c
	.string	"ggc_recalculate_in_use_p"
	.byte	0x1
	.value	0x556
	.byte	0x1
	.long	.LFB33
	.long	.LFE33
	.long	.LLST15
	.uleb128 0x19
	.string	"p"
	.byte	0x1
	.value	0x555
	.long	0x731
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1b
	.string	"i"
	.byte	0x1
	.value	0x557
	.long	0xb7
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1e
	.long	.LASF10
	.byte	0x1
	.value	0x558
	.long	0xc5
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1f
	.long	0x104b
	.long	.LBB8
	.long	.LBE8
	.uleb128 0x1b
	.string	"j"
	.byte	0x1
	.value	0x567
	.long	0xfa
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x22
	.long	.LASF12
	.long	0x13dc
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.12060
	.byte	0x0
	.uleb128 0x1c
	.long	0x10f1
	.byte	0x1
	.string	"ggc_pop_context"
	.byte	0x1
	.value	0x57b
	.byte	0x1
	.long	.LFB34
	.long	.LFE34
	.long	.LLST16
	.uleb128 0x1b
	.string	"omask"
	.byte	0x1
	.value	0x57c
	.long	0xfa
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1b
	.string	"depth"
	.byte	0x1
	.value	0x57d
	.long	0xb7
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1b
	.string	"i"
	.byte	0x1
	.value	0x57d
	.long	0xb7
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1b
	.string	"e"
	.byte	0x1
	.value	0x57d
	.long	0xb7
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1f
	.long	0x10d9
	.long	.LBB9
	.long	.LBE9
	.uleb128 0x1b
	.string	"p"
	.byte	0x1
	.value	0x59b
	.long	0x731
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x20
	.long	.LBB10
	.long	.LBE10
	.uleb128 0x1b
	.string	"p"
	.byte	0x1
	.value	0x5b8
	.long	0x731
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x18
	.long	0x1123
	.string	"adjust_depth"
	.byte	0x1
	.value	0x34b
	.byte	0x1
	.long	.LFB23
	.long	.LFE23
	.long	.LLST17
	.uleb128 0x1b
	.string	"top"
	.byte	0x1
	.value	0x34c
	.long	0x731
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x1c
	.long	0x116b
	.byte	0x1
	.string	"ggc_collect"
	.byte	0x1
	.value	0x6a3
	.byte	0x1
	.long	.LFB37
	.long	.LFE37
	.long	.LLST18
	.uleb128 0x1e
	.long	.LASF8
	.byte	0x1
	.value	0x6a7
	.long	0x5b6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1b
	.string	"min_expand"
	.byte	0x1
	.value	0x6aa
	.long	0x5b6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x18
	.long	0x11d1
	.string	"clear_marks"
	.byte	0x1
	.value	0x5db
	.byte	0x1
	.long	.LFB35
	.long	.LFE35
	.long	.LLST19
	.uleb128 0x1e
	.long	.LASF6
	.byte	0x1
	.value	0x5dc
	.long	0xb7
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x20
	.long	.LBB11
	.long	.LBE11
	.uleb128 0x1e
	.long	.LASF10
	.byte	0x1
	.value	0x5e0
	.long	0xc5
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1e
	.long	.LASF11
	.byte	0x1
	.value	0x5e1
	.long	0xc5
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1b
	.string	"p"
	.byte	0x1
	.value	0x5e2
	.long	0x731
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.uleb128 0x18
	.long	0x128e
	.string	"sweep_pages"
	.byte	0x1
	.value	0x607
	.byte	0x1
	.long	.LFB36
	.long	.LFE36
	.long	.LLST20
	.uleb128 0x1e
	.long	.LASF6
	.byte	0x1
	.value	0x608
	.long	0xb7
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x20
	.long	.LBB12
	.long	.LBE12
	.uleb128 0x1b
	.string	"last"
	.byte	0x1
	.value	0x60e
	.long	0x128e
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1e
	.long	.LASF10
	.byte	0x1
	.value	0x610
	.long	0xc5
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1b
	.string	"live_objects"
	.byte	0x1
	.value	0x611
	.long	0xc5
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1b
	.string	"p"
	.byte	0x1
	.value	0x612
	.long	0x731
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1b
	.string	"previous"
	.byte	0x1
	.value	0x612
	.long	0x731
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1b
	.string	"done"
	.byte	0x1
	.value	0x613
	.long	0xb0
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x20
	.long	.LBB13
	.long	.LBE13
	.uleb128 0x1b
	.string	"next"
	.byte	0x1
	.value	0x61c
	.long	0x731
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.long	0x731
	.uleb128 0x18
	.long	0x1306
	.string	"free_page"
	.byte	0x1
	.value	0x35f
	.byte	0x1
	.long	.LFB24
	.long	.LFE24
	.long	.LLST21
	.uleb128 0x1a
	.long	.LASF9
	.byte	0x1
	.value	0x35e
	.long	0x731
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1f
	.long	0x12f5
	.long	.LBB14
	.long	.LBE14
	.uleb128 0x1b
	.string	"top"
	.byte	0x1
	.value	0x371
	.long	0x731
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x20
	.long	.LBB15
	.long	.LBE15
	.uleb128 0x1b
	.string	"i"
	.byte	0x1
	.value	0x377
	.long	0xb0
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x22
	.long	.LASF12
	.long	0x13c7
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.11673
	.byte	0x0
	.uleb128 0x1c
	.long	0x13b7
	.byte	0x1
	.string	"ggc_print_statistics"
	.byte	0x1
	.value	0x6d9
	.byte	0x1
	.long	.LFB38
	.long	.LFE38
	.long	.LLST22
	.uleb128 0x1b
	.string	"stats"
	.byte	0x1
	.value	0x6da
	.long	0x4c9
	.byte	0x3
	.byte	0x91
	.sleb128 -4148
	.uleb128 0x1b
	.string	"i"
	.byte	0x1
	.value	0x6db
	.long	0xb7
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1b
	.string	"total_overhead"
	.byte	0x1
	.value	0x6dc
	.long	0xc5
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x20
	.long	.LBB16
	.long	.LBE16
	.uleb128 0x1b
	.string	"p"
	.byte	0x1
	.value	0x6f1
	.long	0x731
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1e
	.long	.LASF7
	.byte	0x1
	.value	0x6f2
	.long	0xc5
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1b
	.string	"in_use"
	.byte	0x1
	.value	0x6f3
	.long	0xc5
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1b
	.string	"overhead"
	.byte	0x1
	.value	0x6f4
	.long	0xc5
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x13c7
	.long	0xa8
	.uleb128 0xe
	.long	0xbe
	.byte	0x9
	.byte	0x0
	.uleb128 0x3
	.long	0x13b7
	.uleb128 0xd
	.long	0x13dc
	.long	0xa8
	.uleb128 0xe
	.long	0xbe
	.byte	0x18
	.byte	0x0
	.uleb128 0x3
	.long	0x13cc
	.uleb128 0xd
	.long	0x13f1
	.long	0xa8
	.uleb128 0xe
	.long	0xbe
	.byte	0x10
	.byte	0x0
	.uleb128 0x3
	.long	0x13e1
	.uleb128 0xd
	.long	0x1406
	.long	0xa8
	.uleb128 0xe
	.long	0xbe
	.byte	0x8
	.byte	0x0
	.uleb128 0x3
	.long	0x13f6
	.uleb128 0xd
	.long	0x141b
	.long	0xa8
	.uleb128 0xe
	.long	0xbe
	.byte	0xf
	.byte	0x0
	.uleb128 0x3
	.long	0x140b
	.uleb128 0xd
	.long	0x1430
	.long	0xc5
	.uleb128 0xe
	.long	0xbe
	.byte	0x3
	.byte	0x0
	.uleb128 0x23
	.string	"extra_order_size_table"
	.byte	0x1
	.byte	0xab
	.long	0x1454
	.byte	0x5
	.byte	0x3
	.long	extra_order_size_table
	.uleb128 0x3
	.long	0x1420
	.uleb128 0xd
	.long	0x1469
	.long	0xb7
	.uleb128 0xe
	.long	0xbe
	.byte	0x23
	.byte	0x0
	.uleb128 0x23
	.string	"objects_per_page_table"
	.byte	0x1
	.byte	0xcc
	.long	0x1459
	.byte	0x5
	.byte	0x3
	.long	objects_per_page_table
	.uleb128 0xd
	.long	0x149d
	.long	0xc5
	.uleb128 0xe
	.long	0xbe
	.byte	0x23
	.byte	0x0
	.uleb128 0x23
	.string	"object_size_table"
	.byte	0x1
	.byte	0xd0
	.long	0x148d
	.byte	0x5
	.byte	0x3
	.long	object_size_table
	.uleb128 0xd
	.long	0x14cc
	.long	0x616
	.uleb128 0xe
	.long	0xbe
	.byte	0x23
	.byte	0x0
	.uleb128 0x23
	.string	"inverse_table"
	.byte	0x1
	.byte	0xdb
	.long	0x14bc
	.byte	0x5
	.byte	0x3
	.long	inverse_table
	.uleb128 0x1b
	.string	"G"
	.byte	0x1
	.value	0x181
	.long	0x737
	.byte	0x5
	.byte	0x3
	.long	G
	.uleb128 0xd
	.long	0x1508
	.long	0xd3
	.uleb128 0x24
	.long	0xbe
	.value	0x100
	.byte	0x0
	.uleb128 0x1b
	.string	"size_lookup"
	.byte	0x1
	.value	0x3ce
	.long	0x14f7
	.byte	0x5
	.byte	0x3
	.long	size_lookup
	.uleb128 0x25
	.string	"stdout"
	.byte	0x4
	.byte	0x8f
	.long	0x478
	.byte	0x1
	.byte	0x1
	.uleb128 0x25
	.string	"stderr"
	.byte	0x4
	.byte	0x90
	.long	0x478
	.byte	0x1
	.byte	0x1
	.uleb128 0x25
	.string	"quiet_flag"
	.byte	0x7
	.byte	0x4a
	.long	0xb0
	.byte	0x1
	.byte	0x1
	.uleb128 0x25
	.string	"compiler_params"
	.byte	0x8
	.byte	0x3a
	.long	0x156f
	.byte	0x1
	.byte	0x1
	.uleb128 0x2
	.byte	0x4
	.long	0x5fc
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
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x6
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
	.uleb128 0x7
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x8
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
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.uleb128 0x26
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0x5
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1e
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
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
	.long	0xc8
	.value	0x2
	.long	.Ldebug_info0
	.long	0x1576
	.long	0x9b9
	.string	"debug_print_page_list"
	.long	0xa63
	.string	"ggc_alloc"
	.long	0xcf2
	.string	"ggc_set_mark"
	.long	0xdd0
	.string	"ggc_marked_p"
	.long	0xe43
	.string	"ggc_get_size"
	.long	0xef7
	.string	"init_ggc"
	.long	0xfa1
	.string	"ggc_push_context"
	.long	0x105c
	.string	"ggc_pop_context"
	.long	0x1123
	.string	"ggc_collect"
	.long	0x1306
	.string	"ggc_print_statistics"
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
	.string	"ggc_statistics"
.LASF3:
	.string	"param_info"
.LASF9:
	.string	"entry"
.LASF11:
	.string	"bitmap_size"
.LASF7:
	.string	"allocated"
.LASF10:
	.string	"num_objects"
.LASF12:
	.string	"__FUNCTION__"
.LASF8:
	.string	"allocated_last_gc"
.LASF6:
	.string	"order"
.LASF1:
	.string	"_IO_FILE"
.LASF5:
	.string	"context_depth"
.LASF4:
	.string	"page_entry"
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
	.section	.text.__i686.get_pc_thunk.bx,"axG",@progbits,__i686.get_pc_thunk.bx,comdat
.globl __i686.get_pc_thunk.bx
	.hidden	__i686.get_pc_thunk.bx
	.type	__i686.get_pc_thunk.bx, @function
__i686.get_pc_thunk.bx:
	movl	(%esp), %ebx
	ret
	.section	.note.GNU-stack,"",@progbits
