	.file	"xlate_pro_add_reg_info.c"
	.ident	"$Revision: 1.1 $"
	.text
.globl _xlate_pro_add_reg_info
	.type	_xlate_pro_add_reg_info, @function
_xlate_pro_add_reg_info:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$236, %esp
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	12(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, -164(%ebp)
	movb	%dl, -168(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, -176(%ebp)
	movl	20(%ebp), %eax
	movl	%eax, -172(%ebp)
	movl	24(%ebp), %eax
	movl	%eax, -184(%ebp)
	movl	28(%ebp), %eax
	movl	%eax, -180(%ebp)
	movl	%gs:20, %eax
	movl	%eax, -20(%ebp)
	xorl	%eax, %eax
	movl	$0, -136(%ebp)
	movl	-164(%ebp), %eax
	movzbl	130(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -128(%ebp)
	movl	-164(%ebp), %eax
	movl	(%eax), %eax
	cmpl	$-268984062, %eax
	je	.L2
	movl	$-43, -232(%ebp)
	jmp	.L4
.L2:
	movl	-164(%ebp), %eax
	movzbl	131(%eax), %eax
	testb	%al, %al
	je	.L5
	movl	$-35, -232(%ebp)
	jmp	.L4
.L5:
	movzbl	-168(%ebp), %eax
	movb	%al, -120(%ebp)
	movzbl	-168(%ebp), %edx
	movl	%edx, -228(%ebp)
	cmpl	$9, -228(%ebp)
	je	.L15
	cmpl	$9, -228(%ebp)
	jg	.L20
	cmpl	$3, -228(%ebp)
	je	.L11
	cmpl	$3, -228(%ebp)
	jg	.L21
	cmpl	$1, -228(%ebp)
	je	.L9
	cmpl	$1, -228(%ebp)
	jg	.L10
	cmpl	$0, -228(%ebp)
	je	.L8
	jmp	.L7
.L21:
	cmpl	$5, -228(%ebp)
	je	.L13
	cmpl	$5, -228(%ebp)
	jg	.L14
	jmp	.L12
.L20:
	cmpl	$13, -228(%ebp)
	je	.L14
	cmpl	$13, -228(%ebp)
	jg	.L22
	cmpl	$11, -228(%ebp)
	jle	.L8
	jmp	.L13
.L22:
	cmpl	$64, -228(%ebp)
	je	.L17
	cmpl	$64, -228(%ebp)
	jg	.L23
	cmpl	$14, -228(%ebp)
	je	.L16
	jmp	.L7
.L23:
	cmpl	$128, -228(%ebp)
	je	.L18
	cmpl	$192, -228(%ebp)
	je	.L19
	jmp	.L7
.L17:
	movl	-176(%ebp), %eax
	movl	-172(%ebp), %edx
	shrdl	$2, %edx, %eax
	shrl	$2, %edx
	movl	%eax, -152(%ebp)
	movl	%edx, -148(%ebp)
	cmpl	$0, -148(%ebp)
	jb	.L24
	cmpl	$0, -148(%ebp)
	ja	.L26
	cmpl	$63, -152(%ebp)
	jbe	.L24
.L26:
	movl	$-36, -232(%ebp)
	jmp	.L4
.L24:
	movzbl	-120(%ebp), %edx
	movl	-152(%ebp), %eax
	orl	%edx, %eax
	movb	%al, -120(%ebp)
	movl	$1, -136(%ebp)
	jmp	.L27
.L18:
	movl	-176(%ebp), %eax
	movl	-172(%ebp), %edx
	movl	%eax, -224(%ebp)
	movl	%edx, -220(%ebp)
	cmpl	$0, -220(%ebp)
	jb	.L28
	cmpl	$0, -220(%ebp)
	ja	.L30
	cmpl	$63, -224(%ebp)
	jbe	.L28
.L30:
	movl	$-36, -232(%ebp)
	jmp	.L4
.L28:
	movzbl	-120(%ebp), %ecx
	movl	-176(%ebp), %eax
	movl	-172(%ebp), %edx
	orl	%ecx, %eax
	movb	%al, -120(%ebp)
	cmpl	$0, -128(%ebp)
	je	.L31
	leal	-120(%ebp), %eax
	addl	$1, %eax
	movl	%eax, %ecx
	movl	-184(%ebp), %eax
	movl	-180(%ebp), %edx
	shrdl	$2, %edx, %eax
	shrl	$2, %edx
	movl	%ecx, 8(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_leb128_unsigned_encode64@PLT
	movl	%eax, -132(%ebp)
	jmp	.L33
.L31:
	leal	-120(%ebp), %eax
	addl	$1, %eax
	movl	%eax, %ecx
	movl	-184(%ebp), %eax
	movl	-180(%ebp), %edx
	shrdl	$2, %edx, %eax
	shrl	$2, %edx
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	_leb128_unsigned_encode32@PLT
	movl	%eax, -132(%ebp)
.L33:
	movl	-132(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -136(%ebp)
	jmp	.L27
.L19:
	movl	-176(%ebp), %eax
	movl	-172(%ebp), %edx
	movl	%eax, -216(%ebp)
	movl	%edx, -212(%ebp)
	cmpl	$0, -212(%ebp)
	jb	.L34
	cmpl	$0, -212(%ebp)
	ja	.L36
	cmpl	$63, -216(%ebp)
	jbe	.L34
.L36:
	movl	$-36, -232(%ebp)
	jmp	.L4
.L34:
	movzbl	-120(%ebp), %ecx
	movl	-176(%ebp), %eax
	movl	-172(%ebp), %edx
	orl	%ecx, %eax
	movb	%al, -120(%ebp)
	movl	$1, -136(%ebp)
	jmp	.L27
.L9:
	cmpl	$0, -128(%ebp)
	je	.L37
	leal	-120(%ebp), %eax
	leal	1(%eax), %ecx
	leal	-176(%ebp), %edx
	movl	(%edx), %eax
	movl	%eax, (%ecx)
	movl	4(%edx), %eax
	movl	%eax, 4(%ecx)
	movl	$9, -136(%ebp)
	jmp	.L27
.L37:
	movl	-176(%ebp), %eax
	movl	-172(%ebp), %edx
	movl	%eax, -140(%ebp)
	leal	-120(%ebp), %eax
	leal	1(%eax), %edx
	leal	-140(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%edx)
	movl	$5, -136(%ebp)
	jmp	.L27
.L10:
	movl	-176(%ebp), %eax
	movl	-172(%ebp), %edx
	shrdl	$2, %edx, %eax
	shrl	$2, %edx
	movl	%eax, -152(%ebp)
	movl	%edx, -148(%ebp)
	cmpl	$0, -148(%ebp)
	jb	.L40
	cmpl	$0, -148(%ebp)
	ja	.L42
	cmpl	$255, -152(%ebp)
	jbe	.L40
.L42:
	movl	$-36, -232(%ebp)
	jmp	.L4
.L40:
	movl	-152(%ebp), %eax
	movb	%al, -119(%ebp)
	movl	$2, -136(%ebp)
	jmp	.L27
.L11:
	movl	-176(%ebp), %eax
	movl	-172(%ebp), %edx
	shrdl	$2, %edx, %eax
	shrl	$2, %edx
	movl	%eax, -152(%ebp)
	movl	%edx, -148(%ebp)
	movl	-152(%ebp), %eax
	movw	%ax, -140(%ebp)
	cmpl	$0, -148(%ebp)
	jb	.L43
	cmpl	$0, -148(%ebp)
	ja	.L45
	cmpl	$65535, -152(%ebp)
	jbe	.L43
.L45:
	movl	$-36, -232(%ebp)
	jmp	.L4
.L43:
	leal	-120(%ebp), %eax
	leal	1(%eax), %edx
	leal	-140(%ebp), %eax
	movzwl	(%eax), %eax
	movw	%ax, (%edx)
	movl	$3, -136(%ebp)
	jmp	.L27
.L12:
	movl	-176(%ebp), %eax
	movl	-172(%ebp), %edx
	shrdl	$2, %edx, %eax
	shrl	$2, %edx
	movl	%eax, -152(%ebp)
	movl	%edx, -148(%ebp)
	movl	-152(%ebp), %eax
	movl	%eax, -140(%ebp)
	cmpl	$0, -148(%ebp)
	jb	.L46
	cmpl	$0, -148(%ebp)
	ja	.L48
	cmpl	$-1, -152(%ebp)
	jbe	.L46
.L48:
	movl	$-36, -232(%ebp)
	jmp	.L4
.L46:
	leal	-120(%ebp), %eax
	leal	1(%eax), %edx
	leal	-140(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%edx)
	movl	$5, -136(%ebp)
	jmp	.L27
.L13:
	movl	-176(%ebp), %eax
	movl	-172(%ebp), %edx
	movl	%eax, -208(%ebp)
	movl	%edx, -204(%ebp)
	cmpl	$0, -204(%ebp)
	jb	.L49
	cmpl	$0, -204(%ebp)
	ja	.L51
	cmpl	$65, -208(%ebp)
	jbe	.L49
.L51:
	movl	$-36, -232(%ebp)
	jmp	.L4
.L49:
	leal	-120(%ebp), %eax
	addl	$1, %eax
	movl	%eax, %ecx
	movl	-176(%ebp), %eax
	movl	-172(%ebp), %edx
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	_leb128_unsigned_encode32@PLT
	movl	%eax, -132(%ebp)
	movl	-132(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -136(%ebp)
	cmpl	$0, -128(%ebp)
	je	.L52
	movl	-136(%ebp), %edx
	leal	-120(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, %ecx
	movl	-184(%ebp), %eax
	movl	-180(%ebp), %edx
	shrdl	$2, %edx, %eax
	shrl	$2, %edx
	movl	%ecx, 8(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_leb128_unsigned_encode64@PLT
	movl	%eax, -132(%ebp)
	jmp	.L54
.L52:
	movl	-136(%ebp), %edx
	leal	-120(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, %ecx
	movl	-184(%ebp), %eax
	movl	-180(%ebp), %edx
	shrdl	$2, %edx, %eax
	shrl	$2, %edx
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	_leb128_unsigned_encode32@PLT
	movl	%eax, -132(%ebp)
.L54:
	movl	-132(%ebp), %eax
	addl	%eax, -136(%ebp)
	jmp	.L27
.L14:
	movl	-176(%ebp), %eax
	movl	-172(%ebp), %edx
	movl	%eax, -200(%ebp)
	movl	%edx, -196(%ebp)
	cmpl	$0, -196(%ebp)
	jb	.L55
	cmpl	$0, -196(%ebp)
	ja	.L57
	cmpl	$65, -200(%ebp)
	jbe	.L55
.L57:
	movl	$-36, -232(%ebp)
	jmp	.L4
.L55:
	leal	-120(%ebp), %eax
	addl	$1, %eax
	movl	%eax, %ecx
	movl	-176(%ebp), %eax
	movl	-172(%ebp), %edx
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	_leb128_unsigned_encode32@PLT
	movl	%eax, -132(%ebp)
	movl	-132(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -136(%ebp)
	jmp	.L27
.L15:
	movl	-176(%ebp), %eax
	movl	-172(%ebp), %edx
	movl	%eax, -192(%ebp)
	movl	%edx, -188(%ebp)
	cmpl	$0, -188(%ebp)
	jb	.L58
	cmpl	$0, -188(%ebp)
	ja	.L60
	cmpl	$65, -192(%ebp)
	jbe	.L58
.L60:
	movl	$-36, -232(%ebp)
	jmp	.L4
.L58:
	leal	-120(%ebp), %eax
	addl	$1, %eax
	movl	%eax, %ecx
	movl	-176(%ebp), %eax
	movl	-172(%ebp), %edx
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	_leb128_unsigned_encode32@PLT
	movl	%eax, -132(%ebp)
	movl	-132(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -136(%ebp)
	cmpl	$0, -180(%ebp)
	jb	.L61
	cmpl	$0, -180(%ebp)
	ja	.L63
	cmpl	$65, -184(%ebp)
	jbe	.L61
.L63:
	movl	$-36, -232(%ebp)
	jmp	.L4
.L61:
	movl	-136(%ebp), %edx
	leal	-120(%ebp), %eax
	addl	%edx, %eax
	movl	-184(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_leb128_unsigned_encode32@PLT
	movl	%eax, -132(%ebp)
	movl	-132(%ebp), %eax
	addl	%eax, -136(%ebp)
	jmp	.L27
.L8:
	movl	$1, -136(%ebp)
	jmp	.L27
.L16:
	cmpl	$0, -128(%ebp)
	je	.L64
	leal	-120(%ebp), %eax
	addl	$1, %eax
	movl	%eax, %ecx
	movl	-176(%ebp), %eax
	movl	-172(%ebp), %edx
	shrdl	$2, %edx, %eax
	shrl	$2, %edx
	movl	%ecx, 8(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_leb128_unsigned_encode64@PLT
	movl	%eax, -132(%ebp)
	jmp	.L66
.L64:
	leal	-120(%ebp), %eax
	addl	$1, %eax
	movl	%eax, %ecx
	movl	-176(%ebp), %eax
	movl	-172(%ebp), %edx
	shrdl	$2, %edx, %eax
	shrl	$2, %edx
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	_leb128_unsigned_encode32@PLT
	movl	%eax, -132(%ebp)
.L66:
	movl	-132(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -136(%ebp)
	jmp	.L27
.L7:
	movl	$-37, -232(%ebp)
	jmp	.L4
.L27:
	movl	-164(%ebp), %eax
	movl	152(%eax), %eax
	movl	%eax, %edx
	addl	-136(%ebp), %edx
	movl	-164(%ebp), %eax
	movl	148(%eax), %eax
	cmpl	%eax, %edx
	jb	.L67
	movl	$0, -124(%ebp)
	movl	-164(%ebp), %eax
	movl	148(%eax), %eax
	leal	200(%eax), %edx
	movl	-164(%ebp), %eax
	movl	%edx, 148(%eax)
	movl	-164(%ebp), %eax
	movl	148(%eax), %edx
	movl	-164(%ebp), %eax
	movl	144(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	realloc@PLT
	movl	%eax, -124(%ebp)
	cmpl	$0, -124(%ebp)
	jne	.L69
	movl	$-1, -232(%ebp)
	jmp	.L4
.L69:
	movl	-164(%ebp), %edx
	movl	-124(%ebp), %eax
	movl	%eax, 144(%edx)
.L67:
	movl	-164(%ebp), %eax
	movl	144(%eax), %edx
	movl	-164(%ebp), %eax
	movl	152(%eax), %eax
	leal	(%edx,%eax), %eax
	leal	-120(%ebp), %edx
	movl	-136(%ebp), %ecx
	movl	%eax, %edi
	movl	%edx, %esi
	cld
	rep
	movsb
	movl	-164(%ebp), %eax
	movl	152(%eax), %eax
	movl	%eax, %edx
	addl	-136(%ebp), %edx
	movl	-164(%ebp), %eax
	movl	%edx, 152(%eax)
	movl	$0, -232(%ebp)
.L4:
	movl	-232(%ebp), %eax
	movl	-20(%ebp), %edx
	xorl	%gs:20, %edx
	je	.L72
	call	__stack_chk_fail_local
.L72:
	addl	$236, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.size	_xlate_pro_add_reg_info, .-_xlate_pro_add_reg_info
	.weak	xlate_pro_add_reg_info
	.set	xlate_pro_add_reg_info,_xlate_pro_add_reg_info
	.ident	"GCC: (GNU) 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.section	.text.__i686.get_pc_thunk.bx,"axG",@progbits,__i686.get_pc_thunk.bx,comdat
.globl __i686.get_pc_thunk.bx
	.hidden	__i686.get_pc_thunk.bx
	.type	__i686.get_pc_thunk.bx, @function
__i686.get_pc_thunk.bx:
	movl	(%esp), %ebx
	ret
	.section	.note.GNU-stack,"",@progbits
