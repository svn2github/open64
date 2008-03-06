	.file	"dwarf_die_deliv.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
	.type	_dwarf_find_CU_Context, @function
_dwarf_find_CU_Context:
.LFB5:
	.file 1 "../../libdwarf/libdwarf/dwarf_die_deliv.c"
	.loc 1 67 0
	pushl	%ebp
.LCFI0:
	movl	%esp, %ebp
.LCFI1:
	subl	$80, %esp
.LCFI2:
	movl	12(%ebp), %eax
	movl	%eax, -24(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 70 0
	movl	8(%ebp), %eax
	movl	40(%eax), %eax
	movl	%eax, -80(%ebp)
	movl	$0, -76(%ebp)
	movl	-76(%ebp), %eax
	cmpl	-20(%ebp), %eax
	ja	.L2
	movl	-76(%ebp), %eax
	cmpl	-20(%ebp), %eax
	jb	.L4
	movl	-80(%ebp), %eax
	cmpl	-24(%ebp), %eax
	ja	.L2
.L4:
	.loc 1 71 0
	movl	$0, -68(%ebp)
	jmp	.L5
.L2:
	.loc 1 73 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L6
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	32(%eax), %eax
	testl	%eax, %eax
	je	.L6
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	32(%eax), %eax
	movl	20(%eax), %eax
	movl	$0, %edx
	movl	%edx, %ecx
	xorl	-20(%ebp), %ecx
	xorl	-24(%ebp), %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	jne	.L6
	.loc 1 77 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	32(%eax), %eax
	movl	%eax, -68(%ebp)
	jmp	.L5
.L6:
	.loc 1 80 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L10
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -64(%ebp)
	movl	$0, -60(%ebp)
	movl	-60(%ebp), %eax
	cmpl	-20(%ebp), %eax
	ja	.L10
	movl	-60(%ebp), %eax
	cmpl	-20(%ebp), %eax
	jb	.L13
	movl	-64(%ebp), %eax
	cmpl	-24(%ebp), %eax
	ja	.L10
.L13:
	.loc 1 83 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -4(%ebp)
	.loc 1 84 0
	jmp	.L14
.L15:
	.loc 1 86 0
	movl	-4(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -56(%ebp)
	movl	$0, -52(%ebp)
	movl	-52(%ebp), %eax
	cmpl	-20(%ebp), %eax
	ja	.L16
	movl	-52(%ebp), %eax
	cmpl	-20(%ebp), %eax
	jb	.L18
	movl	-56(%ebp), %eax
	cmpl	-24(%ebp), %eax
	ja	.L16
.L18:
	movl	-4(%ebp), %eax
	movl	20(%eax), %edx
	movl	-4(%ebp), %eax
	movl	4(%eax), %eax
	addl	%eax, %edx
	movl	-4(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	addl	%eax, %edx
	movl	-4(%ebp), %eax
	movzbl	9(%eax), %eax
	movzbl	%al, %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -48(%ebp)
	movl	$0, -44(%ebp)
	movl	-44(%ebp), %eax
	cmpl	-20(%ebp), %eax
	jb	.L16
	movl	-44(%ebp), %eax
	cmpl	-20(%ebp), %eax
	ja	.L20
	movl	-48(%ebp), %eax
	cmpl	-24(%ebp), %eax
	jbe	.L16
.L20:
	.loc 1 91 0
	movl	-4(%ebp), %eax
	movl	%eax, -68(%ebp)
	jmp	.L5
.L16:
	.loc 1 84 0
	movl	-4(%ebp), %eax
	movl	32(%eax), %eax
	movl	%eax, -4(%ebp)
.L14:
	cmpl	$0, -4(%ebp)
	jne	.L15
.L10:
	.loc 1 96 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -4(%ebp)
	.loc 1 97 0
	jmp	.L21
.L22:
	.loc 1 99 0
	movl	-4(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -40(%ebp)
	movl	$0, -36(%ebp)
	movl	-36(%ebp), %eax
	cmpl	-20(%ebp), %eax
	ja	.L23
	movl	-36(%ebp), %eax
	cmpl	-20(%ebp), %eax
	jb	.L25
	movl	-40(%ebp), %eax
	cmpl	-24(%ebp), %eax
	ja	.L23
.L25:
	movl	-4(%ebp), %eax
	movl	20(%eax), %edx
	movl	-4(%ebp), %eax
	movl	4(%eax), %eax
	addl	%eax, %edx
	movl	-4(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	addl	%eax, %edx
	movl	-4(%ebp), %eax
	movzbl	9(%eax), %eax
	movzbl	%al, %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -32(%ebp)
	movl	$0, -28(%ebp)
	movl	-28(%ebp), %eax
	cmpl	-20(%ebp), %eax
	jb	.L23
	movl	-28(%ebp), %eax
	cmpl	-20(%ebp), %eax
	ja	.L27
	movl	-32(%ebp), %eax
	cmpl	-24(%ebp), %eax
	jbe	.L23
.L27:
	.loc 1 104 0
	movl	-4(%ebp), %eax
	movl	%eax, -68(%ebp)
	jmp	.L5
.L23:
	.loc 1 97 0
	movl	-4(%ebp), %eax
	movl	32(%eax), %eax
	movl	%eax, -4(%ebp)
.L21:
	cmpl	$0, -4(%ebp)
	jne	.L22
	.loc 1 108 0
	movl	$0, -68(%ebp)
.L5:
	movl	-68(%ebp), %eax
	.loc 1 109 0
	leave
	ret
.LFE5:
	.size	_dwarf_find_CU_Context, .-_dwarf_find_CU_Context
	.type	_dwarf_find_offdie_CU_Context, @function
_dwarf_find_offdie_CU_Context:
.LFB6:
	.loc 1 118 0
	pushl	%ebp
.LCFI3:
	movl	%esp, %ebp
.LCFI4:
	subl	$48, %esp
.LCFI5:
	movl	12(%ebp), %eax
	movl	%eax, -24(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 121 0
	movl	8(%ebp), %eax
	movl	32(%eax), %eax
	movl	%eax, -4(%ebp)
	.loc 1 122 0
	jmp	.L31
.L32:
	.loc 1 124 0
	movl	-4(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -48(%ebp)
	movl	$0, -44(%ebp)
	movl	-44(%ebp), %eax
	cmpl	-20(%ebp), %eax
	ja	.L33
	movl	-44(%ebp), %eax
	cmpl	-20(%ebp), %eax
	jb	.L35
	movl	-48(%ebp), %eax
	cmpl	-24(%ebp), %eax
	ja	.L33
.L35:
	movl	-4(%ebp), %eax
	movl	20(%eax), %edx
	movl	-4(%ebp), %eax
	movl	4(%eax), %eax
	addl	%eax, %edx
	movl	-4(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	addl	%eax, %edx
	movl	-4(%ebp), %eax
	movzbl	9(%eax), %eax
	movzbl	%al, %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -40(%ebp)
	movl	$0, -36(%ebp)
	movl	-36(%ebp), %eax
	cmpl	-20(%ebp), %eax
	jb	.L33
	movl	-36(%ebp), %eax
	cmpl	-20(%ebp), %eax
	ja	.L37
	movl	-40(%ebp), %eax
	cmpl	-24(%ebp), %eax
	jbe	.L33
.L37:
	.loc 1 129 0
	movl	-4(%ebp), %eax
	movl	%eax, -28(%ebp)
	jmp	.L38
.L33:
	.loc 1 122 0
	movl	-4(%ebp), %eax
	movl	32(%eax), %eax
	movl	%eax, -4(%ebp)
.L31:
	cmpl	$0, -4(%ebp)
	jne	.L32
	.loc 1 131 0
	movl	$0, -28(%ebp)
.L38:
	movl	-28(%ebp), %eax
	.loc 1 132 0
	leave
	ret
.LFE6:
	.size	_dwarf_find_offdie_CU_Context, .-_dwarf_find_offdie_CU_Context
	.type	_dwarf_make_CU_Context, @function
_dwarf_make_CU_Context:
.LFB7:
	.loc 1 152 0
	pushl	%ebp
.LCFI6:
	movl	%esp, %ebp
.LCFI7:
	pushl	%edi
.LCFI8:
	pushl	%esi
.LCFI9:
	pushl	%ebx
.LCFI10:
	subl	$140, %esp
.LCFI11:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	12(%ebp), %eax
	movl	%eax, -72(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, -68(%ebp)
	.loc 1 157 0
	movl	$0, -24(%ebp)
	.loc 1 160 0
	movl	$1, 8(%esp)
	movl	$0, 12(%esp)
	movl	$31, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_dwarf_get_alloc@PLT
	movl	%eax, -32(%ebp)
	.loc 1 162 0
	cmpl	$0, -32(%ebp)
	jne	.L42
	.loc 1 163 0
	movl	$62, 8(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_dwarf_error@PLT
	.loc 1 164 0
	movl	$0, -116(%ebp)
	jmp	.L44
.L42:
	.loc 1 166 0
	movl	-32(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 168 0
	movl	8(%ebp), %eax
	movl	940(%eax), %edx
	movl	-72(%ebp), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -28(%ebp)
.LBB2:
	.loc 1 171 0
	movl	$0, -56(%ebp)
	movl	$0, -52(%ebp)
	movl	8(%ebp), %eax
	movl	1108(%eax), %ecx
	leal	-56(%ebp), %edx
	movl	$4, 8(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	*%ecx
	movl	-56(%ebp), %eax
	movl	-52(%ebp), %edx
	movl	%eax, -48(%ebp)
	movl	%edx, -44(%ebp)
.LBE2:
	movl	-48(%ebp), %eax
	xorl	$-1, %eax
	orl	-44(%ebp), %eax
	testl	%eax, %eax
	jne	.L45
	movl	$8, -20(%ebp)
	addl	$4, -28(%ebp)
	movl	$4, -24(%ebp)
.LBB3:
	movl	$0, -56(%ebp)
	movl	$0, -52(%ebp)
	movl	8(%ebp), %eax
	movl	1108(%eax), %ecx
	leal	-56(%ebp), %edx
	movl	$8, 8(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	*%ecx
	movl	-56(%ebp), %eax
	movl	-52(%ebp), %edx
	movl	%eax, -48(%ebp)
	movl	%edx, -44(%ebp)
.LBE3:
	addl	$8, -28(%ebp)
	jmp	.L47
.L45:
	movl	-48(%ebp), %eax
	orl	-44(%ebp), %eax
	testl	%eax, %eax
	jne	.L48
	movl	8(%ebp), %eax
	movzbl	1142(%eax), %eax
	testb	%al, %al
	je	.L48
.LBB4:
	movl	$0, -56(%ebp)
	movl	$0, -52(%ebp)
	movl	8(%ebp), %eax
	movl	1108(%eax), %ecx
	leal	-56(%ebp), %edx
	movl	$8, 8(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	*%ecx
	movl	-56(%ebp), %eax
	movl	-52(%ebp), %edx
	movl	%eax, -48(%ebp)
	movl	%edx, -44(%ebp)
.LBE4:
	movl	$8, -20(%ebp)
	addl	$8, -28(%ebp)
	movl	$0, -24(%ebp)
	jmp	.L47
.L48:
	movl	$0, -24(%ebp)
	movl	$4, -20(%ebp)
	movl	-20(%ebp), %eax
	addl	%eax, -28(%ebp)
.L47:
	.loc 1 173 0
	movl	-20(%ebp), %eax
	movl	%eax, %edx
	movl	-32(%ebp), %eax
	movb	%dl, 8(%eax)
	.loc 1 174 0
	movl	-24(%ebp), %eax
	movl	%eax, %edx
	movl	-32(%ebp), %eax
	movb	%dl, 9(%eax)
	.loc 1 177 0
	movl	-48(%ebp), %edx
	movl	-32(%ebp), %eax
	movl	%edx, 4(%eax)
.LBB5:
	.loc 1 179 0
	movl	$0, -56(%ebp)
	movl	$0, -52(%ebp)
	movl	8(%ebp), %eax
	movl	1108(%eax), %ecx
	leal	-56(%ebp), %edx
	movl	$2, 8(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	*%ecx
	movl	-56(%ebp), %eax
	movl	-52(%ebp), %edx
	movl	%eax, %edx
	movl	-32(%ebp), %eax
	movw	%dx, 10(%eax)
.LBE5:
	.loc 1 181 0
	addl	$2, -28(%ebp)
.LBB6:
	.loc 1 183 0
	movl	$0, -56(%ebp)
	movl	$0, -52(%ebp)
	movl	8(%ebp), %eax
	movl	1108(%eax), %ecx
	movl	-20(%ebp), %eax
	leal	-56(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	*%ecx
	movl	-56(%ebp), %eax
	movl	-52(%ebp), %edx
	movl	%eax, -40(%ebp)
	movl	%edx, -36(%ebp)
.LBE6:
	.loc 1 185 0
	movl	-20(%ebp), %eax
	addl	%eax, -28(%ebp)
	.loc 1 186 0
	movl	-40(%ebp), %edx
	movl	-32(%ebp), %eax
	movl	%edx, 12(%eax)
	.loc 1 188 0
	movl	-28(%ebp), %eax
	movzbl	(%eax), %edx
	movl	-32(%ebp), %eax
	movb	%dl, 16(%eax)
	.loc 1 190 0
	movl	-20(%ebp), %eax
	addl	$3, %eax
	movl	%eax, -112(%ebp)
	movl	$0, -108(%ebp)
	movl	-108(%ebp), %eax
	cmpl	-44(%ebp), %eax
	ja	.L51
	movl	-108(%ebp), %edx
	cmpl	-44(%ebp), %edx
	jb	.L53
	movl	-112(%ebp), %ecx
	cmpl	-48(%ebp), %ecx
	ja	.L51
.L53:
	movl	-48(%ebp), %eax
	movl	-44(%ebp), %edx
	movl	-72(%ebp), %esi
	movl	-68(%ebp), %edi
	addl	%eax, %esi
	adcl	%edx, %edi
	movl	%esi, -128(%ebp)
	movl	%edi, -124(%ebp)
	movl	-20(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	-128(%ebp), %esi
	movl	-124(%ebp), %edi
	addl	%eax, %esi
	adcl	%edx, %edi
	movl	%esi, -128(%ebp)
	movl	%edi, -124(%ebp)
	movl	-24(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	-128(%ebp), %esi
	movl	-124(%ebp), %edi
	addl	%eax, %esi
	adcl	%edx, %edi
	movl	%esi, -104(%ebp)
	movl	%edi, -100(%ebp)
	movl	8(%ebp), %eax
	movl	996(%eax), %edx
	movl	1000(%eax), %ecx
	movl	%edx, -96(%ebp)
	movl	%ecx, -92(%ebp)
	movl	-92(%ebp), %ecx
	cmpl	%ecx, -100(%ebp)
	jb	.L54
	movl	-92(%ebp), %esi
	cmpl	%esi, -100(%ebp)
	ja	.L51
	movl	-96(%ebp), %edi
	cmpl	%edi, -104(%ebp)
	jbe	.L54
.L51:
	.loc 1 195 0
	movl	$47, 8(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_dwarf_error@PLT
	.loc 1 196 0
	movl	$0, -116(%ebp)
	jmp	.L44
.L54:
	.loc 1 199 0
	movl	-32(%ebp), %eax
	movzbl	16(%eax), %edx
	movl	8(%ebp), %eax
	movzbl	45(%eax), %eax
	cmpb	%al, %dl
	je	.L56
	.loc 1 200 0
	movl	$142, 8(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_dwarf_error@PLT
	.loc 1 201 0
	movl	$0, -116(%ebp)
	jmp	.L44
.L56:
	.loc 1 204 0
	movl	-32(%ebp), %eax
	movzwl	10(%eax), %eax
	cmpw	$2, %ax
	je	.L58
	movl	-32(%ebp), %eax
	movzwl	10(%eax), %eax
	cmpw	$3, %ax
	je	.L58
	.loc 1 206 0
	movl	$48, 8(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_dwarf_error@PLT
	.loc 1 207 0
	movl	$0, -116(%ebp)
	jmp	.L44
.L58:
	.loc 1 210 0
	movl	-40(%ebp), %eax
	movl	-36(%ebp), %edx
	movl	%eax, -88(%ebp)
	movl	%edx, -84(%ebp)
	movl	8(%ebp), %eax
	movl	1004(%eax), %edx
	movl	1008(%eax), %ecx
	movl	%edx, -80(%ebp)
	movl	%ecx, -76(%ebp)
	movl	-76(%ebp), %ecx
	cmpl	%ecx, -84(%ebp)
	jb	.L61
	movl	-76(%ebp), %esi
	cmpl	%esi, -84(%ebp)
	ja	.L63
	movl	-80(%ebp), %edi
	cmpl	%edi, -88(%ebp)
	jb	.L61
.L63:
	.loc 1 211 0
	movl	$49, 8(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_dwarf_error@PLT
	.loc 1 212 0
	movl	$0, -116(%ebp)
	jmp	.L44
.L61:
	.loc 1 215 0
	movl	$1, 8(%esp)
	movl	$0, 12(%esp)
	movl	$37, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_dwarf_get_alloc@PLT
	movl	%eax, %edx
	movl	-32(%ebp), %eax
	movl	%edx, 28(%eax)
	.loc 1 217 0
	movl	-32(%ebp), %eax
	movl	28(%eax), %eax
	testl	%eax, %eax
	jne	.L64
	.loc 1 218 0
	movl	$62, 8(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_dwarf_error@PLT
	.loc 1 219 0
	movl	$0, -116(%ebp)
	jmp	.L44
.L64:
	.loc 1 222 0
	movl	-72(%ebp), %edx
	movl	-32(%ebp), %eax
	movl	%edx, 20(%eax)
	.loc 1 223 0
	movl	-72(%ebp), %edx
	movl	-48(%ebp), %eax
	addl	%eax, %edx
	movl	-24(%ebp), %eax
	addl	%eax, %edx
	movl	-20(%ebp), %eax
	addl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 40(%eax)
	.loc 1 227 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	testl	%eax, %eax
	jne	.L66
	.loc 1 228 0
	movl	8(%ebp), %edx
	movl	-32(%ebp), %eax
	movl	%eax, 24(%edx)
	.loc 1 229 0
	movl	8(%ebp), %edx
	movl	-32(%ebp), %eax
	movl	%eax, 28(%edx)
	jmp	.L68
.L66:
	.loc 1 231 0
	movl	8(%ebp), %eax
	movl	28(%eax), %edx
	movl	-32(%ebp), %eax
	movl	%eax, 32(%edx)
	.loc 1 232 0
	movl	8(%ebp), %edx
	movl	-32(%ebp), %eax
	movl	%eax, 28(%edx)
.L68:
	.loc 1 235 0
	movl	-32(%ebp), %eax
	movl	%eax, -116(%ebp)
.L44:
	movl	-116(%ebp), %eax
	.loc 1 236 0
	addl	$140, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE7:
	.size	_dwarf_make_CU_Context, .-_dwarf_make_CU_Context
.globl dwarf_next_cu_header
	.type	dwarf_next_cu_header, @function
dwarf_next_cu_header:
.LFB8:
	.loc 1 254 0
	pushl	%ebp
.LCFI12:
	movl	%esp, %ebp
.LCFI13:
	pushl	%edi
.LCFI14:
	pushl	%esi
.LCFI15:
	pushl	%ebx
.LCFI16:
	subl	$60, %esp
.LCFI17:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 263 0
	cmpl	$0, 8(%ebp)
	jne	.L71
	.loc 1 264 0
	movl	$81, 8(%esp)
	movl	32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	_dwarf_error@PLT
	.loc 1 265 0
	movl	$1, -52(%ebp)
	jmp	.L73
.L71:
	.loc 1 270 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	jne	.L74
	.loc 1 271 0
	movl	$0, -32(%ebp)
	movl	$0, -28(%ebp)
	.loc 1 272 0
	movl	8(%ebp), %eax
	movl	940(%eax), %eax
	testl	%eax, %eax
	jne	.L79
.LBB7:
	.loc 1 273 0
	movl	32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_dwarf_load_debug_info@PLT
	movl	%eax, -20(%ebp)
	.loc 1 275 0
	cmpl	$0, -20(%ebp)
	je	.L79
	.loc 1 276 0
	movl	-20(%ebp), %eax
	movl	%eax, -52(%ebp)
	jmp	.L73
.L74:
.LBE7:
	.loc 1 281 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	20(%eax), %edx
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	addl	%eax, %edx
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	addl	%eax, %edx
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	9(%eax), %eax
	movzbl	%al, %eax
	leal	(%edx,%eax), %eax
	movl	$0, %edx
	movl	%eax, -32(%ebp)
	movl	%edx, -28(%ebp)
.L79:
	.loc 1 292 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_dwarf_length_of_cu_header_simple@PLT
	movl	%eax, %esi
	movl	%edx, %edi
	addl	-32(%ebp), %esi
	adcl	-28(%ebp), %edi
	movl	%esi, -48(%ebp)
	movl	%edi, -44(%ebp)
	movl	8(%ebp), %eax
	movl	996(%eax), %edx
	movl	1000(%eax), %ecx
	movl	%edx, -40(%ebp)
	movl	%ecx, -36(%ebp)
	movl	-36(%ebp), %ecx
	cmpl	%ecx, -44(%ebp)
	jb	.L80
	movl	-36(%ebp), %esi
	cmpl	%esi, -44(%ebp)
	ja	.L82
	movl	-40(%ebp), %edi
	cmpl	%edi, -48(%ebp)
	jb	.L80
.L82:
	.loc 1 294 0
	movl	8(%ebp), %eax
	movl	$0, 20(%eax)
	.loc 1 295 0
	movl	$-1, -52(%ebp)
	jmp	.L73
.L80:
	.loc 1 299 0
	movl	-32(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_dwarf_find_CU_Context
	movl	%eax, -24(%ebp)
	.loc 1 302 0
	cmpl	$0, -24(%ebp)
	jne	.L83
	.loc 1 303 0
	movl	32(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-32(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_dwarf_make_CU_Context
	movl	%eax, -24(%ebp)
	.loc 1 304 0
	cmpl	$0, -24(%ebp)
	jne	.L83
	.loc 1 309 0
	movl	$1, -52(%ebp)
	jmp	.L73
.L83:
	.loc 1 313 0
	movl	8(%ebp), %edx
	movl	-24(%ebp), %eax
	movl	%eax, 20(%edx)
	.loc 1 315 0
	cmpl	$0, 12(%ebp)
	je	.L86
	.loc 1 316 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, %edx
	movl	12(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
.L86:
	.loc 1 318 0
	cmpl	$0, 16(%ebp)
	je	.L88
	.loc 1 319 0
	movl	-24(%ebp), %eax
	movzwl	10(%eax), %edx
	movl	16(%ebp), %eax
	movw	%dx, (%eax)
.L88:
	.loc 1 321 0
	cmpl	$0, 20(%ebp)
	je	.L90
	.loc 1 322 0
	movl	-24(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	20(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
.L90:
	.loc 1 324 0
	cmpl	$0, 24(%ebp)
	je	.L92
	.loc 1 325 0
	movl	-24(%ebp), %eax
	movzbl	16(%eax), %eax
	movzbw	%al, %dx
	movl	24(%ebp), %eax
	movw	%dx, (%eax)
.L92:
	.loc 1 327 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	addl	-32(%ebp), %esi
	adcl	-28(%ebp), %edi
	movl	-24(%ebp), %eax
	movzbl	8(%eax), %ecx
	movzbl	%cl, %eax
	movl	$0, %edx
	addl	%eax, %esi
	adcl	%edx, %edi
	movl	-24(%ebp), %eax
	movzbl	9(%eax), %ecx
	movzbl	%cl, %eax
	movl	$0, %edx
	addl	%esi, %eax
	adcl	%edi, %edx
	movl	%eax, -32(%ebp)
	movl	%edx, -28(%ebp)
	.loc 1 329 0
	movl	28(%ebp), %ecx
	movl	-32(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	.loc 1 330 0
	movl	$0, -52(%ebp)
.L73:
	movl	-52(%ebp), %eax
	.loc 1 331 0
	addl	$60, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE8:
	.size	dwarf_next_cu_header, .-dwarf_next_cu_header
	.type	_dwarf_next_die_info_ptr, @function
_dwarf_next_die_info_ptr:
.LFB9:
	.loc 1 367 0
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
	subl	$124, %esp
.LCFI23:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 379 0
	movl	8(%ebp), %eax
	movl	%eax, -40(%ebp)
.LBB8:
	.loc 1 380 0
	leal	-88(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	_dwarf_decode_u_leb128@PLT
	movl	%eax, -72(%ebp)
	movl	%edx, -68(%ebp)
	movl	-88(%ebp), %eax
	addl	%eax, -40(%ebp)
.LBE8:
	.loc 1 381 0
	movl	-72(%ebp), %eax
	movl	%eax, -32(%ebp)
	.loc 1 382 0
	cmpl	$0, -32(%ebp)
	jne	.L96
	.loc 1 383 0
	movl	$0, -100(%ebp)
	jmp	.L98
.L96:
	.loc 1 386 0
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_dwarf_get_abbrev_for_code@PLT
	movl	%eax, -28(%ebp)
	.loc 1 387 0
	cmpl	$0, -28(%ebp)
	jne	.L99
	.loc 1 388 0
	movl	$0, -100(%ebp)
	jmp	.L98
.L99:
	.loc 1 390 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 392 0
	movl	-28(%ebp), %eax
	movzwl	6(%eax), %eax
	movzwl	%ax, %edx
	movl	28(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 394 0
	movl	-28(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -36(%ebp)
	jmp	.L123
.L101:
.L123:
.LBB9:
.LBB10:
	.loc 1 398 0
	leal	-88(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	_dwarf_decode_u_leb128@PLT
	movl	%eax, -64(%ebp)
	movl	%edx, -60(%ebp)
	movl	-88(%ebp), %eax
	addl	%eax, -36(%ebp)
.LBE10:
	.loc 1 399 0
	movl	-64(%ebp), %eax
	movw	%ax, -20(%ebp)
.LBB11:
	.loc 1 400 0
	leal	-88(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	_dwarf_decode_u_leb128@PLT
	movl	%eax, -64(%ebp)
	movl	%edx, -60(%ebp)
	movl	-88(%ebp), %eax
	addl	%eax, -36(%ebp)
.LBE11:
	.loc 1 401 0
	movl	-64(%ebp), %eax
	movw	%ax, -18(%ebp)
	.loc 1 402 0
	cmpw	$22, -18(%ebp)
	jne	.L102
.LBB12:
.LBB13:
	.loc 1 406 0
	leal	-88(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	_dwarf_decode_u_leb128@PLT
	movl	%eax, -56(%ebp)
	movl	%edx, -52(%ebp)
	movl	-88(%ebp), %eax
	addl	%eax, -40(%ebp)
.LBE13:
	.loc 1 407 0
	movl	-56(%ebp), %eax
	movw	%ax, -18(%ebp)
.L102:
.LBE12:
	.loc 1 411 0
	cmpl	$0, 24(%ebp)
	je	.L104
	cmpw	$1, -20(%ebp)
	jne	.L104
	.loc 1 412 0
	movzwl	-18(%ebp), %eax
	subl	$17, %eax
	movl	%eax, -104(%ebp)
	cmpl	$4, -104(%ebp)
	ja	.L107
	movl	-104(%ebp), %eax
	sall	$2, %eax
	movl	.L113@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L113:
	.long	.L108@GOTOFF
	.long	.L109@GOTOFF
	.long	.L110@GOTOFF
	.long	.L111@GOTOFF
	.long	.L112@GOTOFF
	.text
.L108:
	.loc 1 414 0
	movl	-40(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -80(%ebp)
	movl	-80(%ebp), %eax
	movl	$0, %edx
	movl	%eax, -80(%ebp)
	movl	%edx, -76(%ebp)
	.loc 1 415 0
	jmp	.L114
.L109:
.LBB14:
	.loc 1 417 0
	movl	$0, -88(%ebp)
	movl	$0, -84(%ebp)
	movl	-24(%ebp), %eax
	movl	1108(%eax), %ecx
	leal	-88(%ebp), %edx
	movl	$2, 8(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	*%ecx
	movl	-88(%ebp), %eax
	movl	-84(%ebp), %edx
	movl	%eax, -80(%ebp)
	movl	%edx, -76(%ebp)
	.loc 1 419 0
	jmp	.L114
.L110:
.LBE14:
.LBB15:
	.loc 1 421 0
	movl	$0, -88(%ebp)
	movl	$0, -84(%ebp)
	movl	-24(%ebp), %eax
	movl	1108(%eax), %ecx
	leal	-88(%ebp), %edx
	movl	$4, 8(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	*%ecx
	movl	-88(%ebp), %eax
	movl	-84(%ebp), %edx
	movl	%eax, -80(%ebp)
	movl	%edx, -76(%ebp)
	.loc 1 423 0
	jmp	.L114
.L111:
.LBE15:
.LBB16:
	.loc 1 425 0
	movl	$0, -88(%ebp)
	movl	$0, -84(%ebp)
	movl	-24(%ebp), %eax
	movl	1108(%eax), %ecx
	leal	-88(%ebp), %edx
	movl	$8, 8(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	*%ecx
	movl	-88(%ebp), %eax
	movl	-84(%ebp), %edx
	movl	%eax, -80(%ebp)
	movl	%edx, -76(%ebp)
	.loc 1 427 0
	jmp	.L114
.L112:
.LBE16:
	.loc 1 429 0
	leal	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	_dwarf_decode_u_leb128@PLT
	movl	%eax, -80(%ebp)
	movl	%edx, -76(%ebp)
	.loc 1 431 0
	jmp	.L114
.L107:
	.loc 1 433 0
	movl	$0, -100(%ebp)
	jmp	.L98
.L114:
	.loc 1 437 0
	movl	28(%ebp), %eax
	movl	$0, (%eax)
	.loc 1 439 0
	movl	-80(%ebp), %eax
	addl	20(%ebp), %eax
	cmpl	16(%ebp), %eax
	jbe	.L115
	.loc 1 440 0
	movl	$0, -100(%ebp)
	jmp	.L98
.L115:
	.loc 1 442 0
	movl	-80(%ebp), %eax
	movl	20(%ebp), %edx
	addl	%eax, %edx
	movl	%edx, -100(%ebp)
	jmp	.L98
.L104:
	.loc 1 446 0
	cmpw	$0, -18(%ebp)
	je	.L117
	.loc 1 447 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edi
	movzwl	-18(%ebp), %eax
	movl	$0, %edx
	movl	12(%ebp), %ecx
	movl	(%ecx), %esi
	movl	%edi, 16(%esp)
	movl	-40(%ebp), %ecx
	movl	%ecx, 12(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	%esi, (%esp)
	call	_dwarf_get_size_of_val@PLT
	addl	%eax, -40(%ebp)
	.loc 1 451 0
	movl	-40(%ebp), %eax
	cmpl	16(%ebp), %eax
	jbe	.L117
	.loc 1 452 0
	movl	$0, -100(%ebp)
	jmp	.L98
.L117:
.LBE9:
	.loc 1 455 0
	cmpw	$0, -20(%ebp)
	jne	.L101
	cmpw	$0, -18(%ebp)
	jne	.L101
	.loc 1 457 0
	movl	-40(%ebp), %eax
	movl	%eax, -100(%ebp)
.L98:
	movl	-100(%ebp), %eax
	.loc 1 458 0
	addl	$124, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE9:
	.size	_dwarf_next_die_info_ptr, .-_dwarf_next_die_info_ptr
.globl dwarf_siblingof
	.type	dwarf_siblingof, @function
dwarf_siblingof:
.LFB10:
	.loc 1 487 0
	pushl	%ebp
.LCFI24:
	movl	%esp, %ebp
.LCFI25:
	pushl	%esi
.LCFI26:
	pushl	%ebx
.LCFI27:
	subl	$96, %esp
.LCFI28:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 490 0
	movl	$0, -24(%ebp)
	.loc 1 491 0
	movl	$0, -20(%ebp)
	.loc 1 496 0
	cmpl	$0, 8(%ebp)
	jne	.L125
	.loc 1 497 0
	movl	$81, 8(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	_dwarf_error@PLT
	.loc 1 498 0
	movl	$1, -68(%ebp)
	jmp	.L127
.L125:
	.loc 1 501 0
	cmpl	$0, 12(%ebp)
	jne	.L128
.LBB17:
	.loc 1 510 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	jne	.L130
	.loc 1 511 0
	movl	$103, 8(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_dwarf_error@PLT
	.loc 1 512 0
	movl	$1, -68(%ebp)
	jmp	.L127
.L130:
	.loc 1 515 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	20(%eax), %eax
	movl	$0, %edx
	movl	%eax, -48(%ebp)
	movl	%edx, -44(%ebp)
	.loc 1 516 0
	movl	8(%ebp), %eax
	movl	940(%eax), %edx
	movl	-48(%ebp), %eax
	leal	(%edx,%eax), %esi
	movl	-48(%ebp), %eax
	movl	-44(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_dwarf_length_of_cu_header@PLT
	leal	(%esi,%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L132
.L128:
.LBE17:
.LBB18:
	.loc 1 525 0
	cmpl	$0, 12(%ebp)
	jne	.L133
	movl	$52, 8(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	_dwarf_error@PLT
	movl	$1, -68(%ebp)
	jmp	.L127
.L133:
	movl	12(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	jne	.L135
	movl	$104, 8(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	_dwarf_error@PLT
	movl	$1, -68(%ebp)
	jmp	.L127
.L135:
	movl	12(%ebp), %eax
	movl	8(%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L137
	movl	$81, 8(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	_dwarf_error@PLT
	movl	$1, -68(%ebp)
	jmp	.L127
.L137:
	.loc 1 527 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 528 0
	movl	-28(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L139
	.loc 1 529 0
	movl	$-1, -68(%ebp)
	jmp	.L127
.L139:
	.loc 1 531 0
	movl	8(%ebp), %eax
	movl	940(%eax), %edx
	movl	12(%ebp), %eax
	movl	8(%eax), %eax
	movl	20(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 533 0
	movl	12(%ebp), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	addl	-24(%ebp), %edx
	movl	12(%ebp), %eax
	movl	8(%eax), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	addl	%eax, %edx
	movl	12(%ebp), %eax
	movl	8(%eax), %eax
	movzbl	9(%eax), %eax
	movzbl	%al, %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 537 0
	movl	-28(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L141
	.loc 1 538 0
	movl	$-1, -68(%ebp)
	jmp	.L127
.L141:
	.loc 1 540 0
	movl	$0, -16(%ebp)
.L143:
	.loc 1 542 0
	movl	12(%ebp), %eax
	movl	8(%eax), %edx
	leal	-36(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	$1, 16(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	_dwarf_next_die_info_ptr
	movl	%eax, -28(%ebp)
	.loc 1 547 0
	cmpl	$0, -28(%ebp)
	jne	.L144
	.loc 1 548 0
	movl	$106, 8(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_dwarf_error@PLT
	.loc 1 549 0
	movl	$1, -68(%ebp)
	jmp	.L127
.L144:
	.loc 1 552 0
	movl	-28(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L146
	movl	-36(%ebp), %eax
	testl	%eax, %eax
	je	.L146
	.loc 1 553 0
	addl	$1, -28(%ebp)
	.loc 1 554 0
	movl	$0, -36(%ebp)
.L146:
	.loc 1 557 0
	movl	-28(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L149
	.loc 1 558 0
	jmp	.L151
.L152:
	.loc 1 559 0
	subl	$1, -16(%ebp)
	addl	$1, -28(%ebp)
.L151:
	.loc 1 558 0
	cmpl	$0, -16(%ebp)
	jle	.L155
	movl	-28(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L152
	jmp	.L155
.L149:
	.loc 1 561 0
	movl	-36(%ebp), %eax
	testl	%eax, %eax
	je	.L156
	movl	-16(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -64(%ebp)
	jmp	.L158
.L156:
	movl	-16(%ebp), %edx
	movl	%edx, -64(%ebp)
.L158:
	movl	-64(%ebp), %eax
	movl	%eax, -16(%ebp)
.L155:
	.loc 1 563 0
	cmpl	$0, -16(%ebp)
	jne	.L143
.L132:
.LBE18:
	.loc 1 566 0
	cmpl	$0, 12(%ebp)
	je	.L159
	movl	-28(%ebp), %eax
	cmpl	-20(%ebp), %eax
	jb	.L159
	.loc 1 567 0
	movl	$-1, -68(%ebp)
	jmp	.L127
.L159:
	.loc 1 570 0
	movl	-28(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L162
	.loc 1 571 0
	movl	$-1, -68(%ebp)
	jmp	.L127
.L162:
	.loc 1 574 0
	movl	$1, 8(%esp)
	movl	$0, 12(%esp)
	movl	$8, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_dwarf_get_alloc@PLT
	movl	%eax, -32(%ebp)
	.loc 1 575 0
	cmpl	$0, -32(%ebp)
	jne	.L164
	.loc 1 576 0
	movl	$62, 8(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_dwarf_error@PLT
	.loc 1 577 0
	movl	$1, -68(%ebp)
	jmp	.L127
.L164:
	.loc 1 580 0
	movl	-32(%ebp), %edx
	movl	-28(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 581 0
	cmpl	$0, 12(%ebp)
	jne	.L166
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -60(%ebp)
	jmp	.L168
.L166:
	movl	12(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -60(%ebp)
.L168:
	movl	-32(%ebp), %eax
	movl	-60(%ebp), %edx
	movl	%edx, 8(%eax)
.LBB19:
	.loc 1 584 0
	leal	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	_dwarf_decode_u_leb128@PLT
	movl	%eax, -56(%ebp)
	movl	%edx, -52(%ebp)
	movl	-36(%ebp), %eax
	addl	%eax, -28(%ebp)
.LBE19:
	.loc 1 585 0
	movl	-56(%ebp), %eax
	movw	%ax, -10(%ebp)
	.loc 1 586 0
	cmpw	$0, -10(%ebp)
	jne	.L169
	.loc 1 588 0
	movl	$-1, -68(%ebp)
	jmp	.L127
.L169:
	.loc 1 590 0
	movzwl	-10(%ebp), %edx
	movl	-32(%ebp), %eax
	movl	8(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_dwarf_get_abbrev_for_code@PLT
	movl	%eax, %edx
	movl	-32(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 592 0
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L171
	cmpl	$0, 12(%ebp)
	jne	.L173
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	4(%eax), %eax
	cmpw	$17, %ax
	je	.L173
.L171:
	.loc 1 596 0
	movl	$105, 8(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_dwarf_error@PLT
	.loc 1 597 0
	movl	$1, -68(%ebp)
	jmp	.L127
.L173:
	.loc 1 600 0
	movl	16(%ebp), %edx
	movl	-32(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 601 0
	movl	$0, -68(%ebp)
.L127:
	movl	-68(%ebp), %eax
	.loc 1 602 0
	addl	$96, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE10:
	.size	dwarf_siblingof, .-dwarf_siblingof
.globl dwarf_child
	.type	dwarf_child, @function
dwarf_child:
.LFB11:
	.loc 1 608 0
	pushl	%ebp
.LCFI29:
	movl	%esp, %ebp
.LCFI30:
	pushl	%ebx
.LCFI31:
	subl	$84, %esp
.LCFI32:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 618 0
	cmpl	$0, 8(%ebp)
	jne	.L177
	movl	$52, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	_dwarf_error@PLT
	movl	$1, -60(%ebp)
	jmp	.L179
.L177:
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	jne	.L180
	movl	$104, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	_dwarf_error@PLT
	movl	$1, -60(%ebp)
	jmp	.L179
.L180:
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L182
	movl	$81, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	_dwarf_error@PLT
	movl	$1, -60(%ebp)
	jmp	.L179
.L182:
	.loc 1 619 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 620 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 623 0
	movl	-28(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L184
	.loc 1 624 0
	movl	$-1, -60(%ebp)
	jmp	.L179
.L184:
	.loc 1 626 0
	movl	-16(%ebp), %eax
	movl	940(%eax), %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	20(%eax), %eax
	addl	%eax, %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %eax
	addl	%eax, %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	addl	%eax, %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movzbl	9(%eax), %eax
	movzbl	%al, %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 632 0
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	leal	-32(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	_dwarf_next_die_info_ptr
	movl	%eax, -28(%ebp)
	.loc 1 636 0
	cmpl	$0, -28(%ebp)
	jne	.L186
	.loc 1 637 0
	movl	$106, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_dwarf_error@PLT
	.loc 1 638 0
	movl	$1, -60(%ebp)
	jmp	.L179
.L186:
	.loc 1 641 0
	movl	-32(%ebp), %eax
	testl	%eax, %eax
	jne	.L188
	.loc 1 642 0
	movl	$-1, -60(%ebp)
	jmp	.L179
.L188:
	.loc 1 644 0
	movl	$1, 8(%esp)
	movl	$0, 12(%esp)
	movl	$8, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_dwarf_get_alloc@PLT
	movl	%eax, -20(%ebp)
	.loc 1 645 0
	cmpl	$0, -20(%ebp)
	jne	.L190
	.loc 1 646 0
	movl	$62, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_dwarf_error@PLT
	.loc 1 647 0
	movl	$1, -60(%ebp)
	jmp	.L179
.L190:
	.loc 1 649 0
	movl	-20(%ebp), %edx
	movl	-28(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 650 0
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%edx, 8(%eax)
.LBB20:
	.loc 1 652 0
	leal	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	_dwarf_decode_u_leb128@PLT
	movl	%eax, -48(%ebp)
	movl	%edx, -44(%ebp)
	movl	-36(%ebp), %eax
	addl	%eax, -28(%ebp)
.LBE20:
	.loc 1 653 0
	movl	-48(%ebp), %eax
	movw	%ax, -10(%ebp)
	.loc 1 654 0
	cmpw	$0, -10(%ebp)
	jne	.L192
	.loc 1 657 0
	movl	12(%ebp), %eax
	movl	$0, (%eax)
	.loc 1 658 0
	movl	$-1, -60(%ebp)
	jmp	.L179
.L192:
	.loc 1 660 0
	movzwl	-10(%ebp), %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_dwarf_get_abbrev_for_code@PLT
	movl	%eax, %edx
	movl	-20(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 662 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	jne	.L194
	.loc 1 663 0
	movl	$112, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_dwarf_error@PLT
	.loc 1 664 0
	movl	$1, -60(%ebp)
	jmp	.L179
.L194:
	.loc 1 667 0
	movl	12(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 668 0
	movl	$0, -60(%ebp)
.L179:
	movl	-60(%ebp), %eax
	.loc 1 669 0
	addl	$84, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE11:
	.size	dwarf_child, .-dwarf_child
.globl dwarf_offdie
	.type	dwarf_offdie, @function
dwarf_offdie:
.LFB12:
	.loc 1 680 0
	pushl	%ebp
.LCFI33:
	movl	%esp, %ebp
.LCFI34:
	pushl	%edi
.LCFI35:
	pushl	%esi
.LCFI36:
	pushl	%ebx
.LCFI37:
	subl	$108, %esp
.LCFI38:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	12(%ebp), %eax
	movl	%eax, -72(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, -68(%ebp)
	.loc 1 682 0
	movl	$0, -56(%ebp)
	movl	$0, -52(%ebp)
	.loc 1 688 0
	cmpl	$0, 8(%ebp)
	jne	.L198
	.loc 1 689 0
	movl	$81, 8(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	_dwarf_error@PLT
	.loc 1 690 0
	movl	$1, -92(%ebp)
	jmp	.L200
.L198:
	.loc 1 693 0
	movl	-72(%ebp), %eax
	movl	-68(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_dwarf_find_CU_Context
	movl	%eax, -36(%ebp)
	.loc 1 694 0
	cmpl	$0, -36(%ebp)
	jne	.L201
	.loc 1 695 0
	movl	-72(%ebp), %eax
	movl	-68(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_dwarf_find_offdie_CU_Context
	movl	%eax, -36(%ebp)
.L201:
	.loc 1 697 0
	cmpl	$0, -36(%ebp)
	jne	.L203
.LBB21:
	.loc 1 698 0
	movl	24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_dwarf_load_debug_info@PLT
	movl	%eax, -24(%ebp)
	.loc 1 700 0
	cmpl	$0, -24(%ebp)
	je	.L205
	.loc 1 701 0
	movl	-24(%ebp), %eax
	movl	%eax, -92(%ebp)
	jmp	.L200
.L205:
	.loc 1 704 0
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	testl	%eax, %eax
	je	.L225
	.loc 1 705 0
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	20(%eax), %edx
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	4(%eax), %eax
	addl	%eax, %edx
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	addl	%eax, %edx
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movzbl	9(%eax), %eax
	movzbl	%al, %eax
	leal	(%edx,%eax), %eax
	movl	$0, %edx
	movl	%eax, -56(%ebp)
	movl	%edx, -52(%ebp)
	jmp	.L225
.L207:
.L225:
	.loc 1 712 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_dwarf_length_of_cu_header_simple@PLT
	movl	%eax, %esi
	movl	%edx, %edi
	addl	-56(%ebp), %esi
	adcl	-52(%ebp), %edi
	movl	%esi, -88(%ebp)
	movl	%edi, -84(%ebp)
	movl	8(%ebp), %eax
	movl	996(%eax), %edx
	movl	1000(%eax), %ecx
	movl	%edx, -80(%ebp)
	movl	%ecx, -76(%ebp)
	movl	-76(%ebp), %ecx
	cmpl	%ecx, -84(%ebp)
	jb	.L209
	movl	-76(%ebp), %esi
	cmpl	%esi, -84(%ebp)
	ja	.L211
	movl	-80(%ebp), %edi
	cmpl	%edi, -88(%ebp)
	jb	.L209
.L211:
	.loc 1 715 0
	movl	$131, 8(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_dwarf_error@PLT
	.loc 1 716 0
	movl	$1, -92(%ebp)
	jmp	.L200
.L209:
	.loc 1 719 0
	movl	24(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-56(%ebp), %eax
	movl	-52(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_dwarf_make_CU_Context
	movl	%eax, -36(%ebp)
	.loc 1 721 0
	cmpl	$0, -36(%ebp)
	jne	.L212
	.loc 1 727 0
	movl	$1, -92(%ebp)
	jmp	.L200
.L212:
	.loc 1 730 0
	movl	8(%ebp), %eax
	movl	32(%eax), %eax
	testl	%eax, %eax
	jne	.L214
	.loc 1 731 0
	movl	8(%ebp), %edx
	movl	-36(%ebp), %eax
	movl	%eax, 32(%edx)
	.loc 1 732 0
	movl	8(%ebp), %edx
	movl	-36(%ebp), %eax
	movl	%eax, 36(%edx)
	jmp	.L216
.L214:
	.loc 1 734 0
	movl	8(%ebp), %eax
	movl	36(%eax), %edx
	movl	-36(%ebp), %eax
	movl	%eax, 32(%edx)
	.loc 1 735 0
	movl	8(%ebp), %edx
	movl	-36(%ebp), %eax
	movl	%eax, 36(%edx)
.L216:
	.loc 1 738 0
	movl	-36(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	addl	-56(%ebp), %esi
	adcl	-52(%ebp), %edi
	movl	-36(%ebp), %eax
	movzbl	8(%eax), %ecx
	movzbl	%cl, %eax
	movl	$0, %edx
	addl	%esi, %eax
	adcl	%edi, %edx
	movl	%eax, -56(%ebp)
	movl	%edx, -52(%ebp)
	.loc 1 741 0
	movl	-72(%ebp), %eax
	movl	-68(%ebp), %edx
	movl	%eax, -104(%ebp)
	movl	%edx, -100(%ebp)
	movl	-100(%ebp), %edx
	cmpl	-52(%ebp), %edx
	ja	.L207
	movl	-100(%ebp), %ecx
	cmpl	-52(%ebp), %ecx
	jb	.L203
	movl	-104(%ebp), %esi
	cmpl	-56(%ebp), %esi
	jae	.L207
.L203:
.LBE21:
	.loc 1 744 0
	movl	$1, 8(%esp)
	movl	$0, 12(%esp)
	movl	$8, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_dwarf_get_alloc@PLT
	movl	%eax, -32(%ebp)
	.loc 1 745 0
	cmpl	$0, -32(%ebp)
	jne	.L218
	.loc 1 746 0
	movl	$62, 8(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_dwarf_error@PLT
	.loc 1 747 0
	movl	$1, -92(%ebp)
	jmp	.L200
.L218:
	.loc 1 749 0
	movl	-32(%ebp), %edx
	movl	-36(%ebp), %eax
	movl	%eax, 8(%edx)
	.loc 1 751 0
	movl	8(%ebp), %eax
	movl	940(%eax), %edx
	movl	-72(%ebp), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 752 0
	movl	-32(%ebp), %edx
	movl	-28(%ebp), %eax
	movl	%eax, (%edx)
.LBB22:
	.loc 1 753 0
	leal	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	_dwarf_decode_u_leb128@PLT
	movl	%eax, -48(%ebp)
	movl	%edx, -44(%ebp)
	movl	-40(%ebp), %eax
	addl	%eax, -28(%ebp)
.LBE22:
	.loc 1 754 0
	movl	-48(%ebp), %eax
	movw	%ax, -18(%ebp)
	.loc 1 755 0
	cmpw	$0, -18(%ebp)
	jne	.L220
	.loc 1 757 0
	movl	20(%ebp), %eax
	movl	$0, (%eax)
	.loc 1 758 0
	movl	$-1, -92(%ebp)
	jmp	.L200
.L220:
	.loc 1 761 0
	movzwl	-18(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	_dwarf_get_abbrev_for_code@PLT
	movl	%eax, %edx
	movl	-32(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 763 0
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	jne	.L222
	.loc 1 764 0
	movl	$151, 8(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_dwarf_error@PLT
	.loc 1 765 0
	movl	$1, -92(%ebp)
	jmp	.L200
.L222:
	.loc 1 768 0
	movl	20(%ebp), %edx
	movl	-32(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 769 0
	movl	$0, -92(%ebp)
.L200:
	movl	-92(%ebp), %eax
	.loc 1 770 0
	addl	$108, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE12:
	.size	dwarf_offdie, .-dwarf_offdie
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
	.long	.LCFI3-.LFB6
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI4-.LCFI3
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE2:
.LSFDE4:
	.long	.LEFDE4-.LASFDE4
.LASFDE4:
	.long	.Lframe0
	.long	.LFB7
	.long	.LFE7-.LFB7
	.byte	0x4
	.long	.LCFI6-.LFB7
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI7-.LCFI6
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI11-.LCFI7
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
	.long	.LFB8
	.long	.LFE8-.LFB8
	.byte	0x4
	.long	.LCFI12-.LFB8
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI13-.LCFI12
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI17-.LCFI13
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
	.long	.LFB9
	.long	.LFE9-.LFB9
	.byte	0x4
	.long	.LCFI18-.LFB9
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
	.long	.LFB10
	.long	.LFE10-.LFB10
	.byte	0x4
	.long	.LCFI24-.LFB10
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI25-.LCFI24
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI28-.LCFI25
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
	.long	.LFB11
	.long	.LFE11-.LFB11
	.byte	0x4
	.long	.LCFI29-.LFB11
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI30-.LCFI29
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI32-.LCFI30
	.byte	0x83
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
	.long	.LCFI33-.LFB12
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI34-.LCFI33
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI38-.LCFI34
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE14:
	.file 2 "../../libdwarf/libdwarf/dwarf_base_types.h"
	.file 3 "../../libdwarf/libdwarf/dwarf_opaque.h"
	.file 4 "../../include/libdwarf.h"
	.file 5 "../../libdwarf/libdwarf/dwarf_error.h"
	.file 6 "../../libdwarf/libdwarf/dwarf_alloc.h"
	.file 7 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h"
	.file 8 "../../libdwarf/libdwarf/dwarf_util.h"
	.file 9 "../../libdwarf/libdwarf/dwarf_die_deliv.h"
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
	.long	.LCFI3-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI3-.Ltext0
	.long	.LCFI4-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI4-.Ltext0
	.long	.LFE6-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST2:
	.long	.LFB7-.Ltext0
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
	.long	.LFE7-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST3:
	.long	.LFB8-.Ltext0
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
	.long	.LFE8-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST4:
	.long	.LFB9-.Ltext0
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
	.long	.LFE9-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST5:
	.long	.LFB10-.Ltext0
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
	.long	.LFE10-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST6:
	.long	.LFB11-.Ltext0
	.long	.LCFI29-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI29-.Ltext0
	.long	.LCFI30-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI30-.Ltext0
	.long	.LFE11-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST7:
	.long	.LFB12-.Ltext0
	.long	.LCFI33-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI33-.Ltext0
	.long	.LCFI34-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI34-.Ltext0
	.long	.LFE12-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
	.section	.debug_info
	.long	0x1859
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.Ldebug_line0
	.long	.Letext0
	.long	.Ltext0
	.string	"GNU C 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.byte	0x1
	.string	"../../libdwarf/libdwarf/dwarf_die_deliv.c"
	.string	"/usa/handong/simplnano/cmplr-open64-merge/targia32_sl1/libdwarf"
	.uleb128 0x2
	.string	"size_t"
	.byte	0x7
	.byte	0xd6
	.long	0xb5
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
	.uleb128 0x4
	.string	"char"
	.byte	0x1
	.byte	0x8
	.uleb128 0x2
	.string	"dwarf_elf_handle"
	.byte	0x4
	.byte	0x47
	.long	0x17b
	.uleb128 0x6
	.byte	0x4
	.long	0x181
	.uleb128 0x7
	.string	"Elf"
	.byte	0x1
	.uleb128 0x2
	.string	"Dwarf_Bool"
	.byte	0x4
	.byte	0x5a
	.long	0x114
	.uleb128 0x2
	.string	"Dwarf_Off"
	.byte	0x4
	.byte	0x5b
	.long	0x12c
	.uleb128 0x2
	.string	"Dwarf_Unsigned"
	.byte	0x4
	.byte	0x5c
	.long	0x12c
	.uleb128 0x2
	.string	"Dwarf_Half"
	.byte	0x4
	.byte	0x5d
	.long	0xcd
	.uleb128 0x2
	.string	"Dwarf_Small"
	.byte	0x4
	.byte	0x5e
	.long	0xbc
	.uleb128 0x2
	.string	"Dwarf_Signed"
	.byte	0x4
	.byte	0x5f
	.long	0x11b
	.uleb128 0x2
	.string	"Dwarf_Ptr"
	.byte	0x4
	.byte	0x62
	.long	0x159
	.uleb128 0x2
	.string	"Dwarf_Debug"
	.byte	0x4
	.byte	0xc2
	.long	0x21d
	.uleb128 0x6
	.byte	0x4
	.long	0x223
	.uleb128 0x8
	.long	0x9a1
	.string	"Dwarf_Debug_s"
	.value	0x478
	.byte	0x4
	.byte	0xc2
	.uleb128 0x9
	.string	"de_elf"
	.byte	0x3
	.byte	0x77
	.long	0x163
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.string	"de_access"
	.byte	0x3
	.byte	0x79
	.long	0x1aa
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.string	"de_errhand"
	.byte	0x3
	.byte	0x7a
	.long	0xaa8
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.string	"de_errarg"
	.byte	0x3
	.byte	0x7b
	.long	0x1f9
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.string	"de_cu_context"
	.byte	0x3
	.byte	0x81
	.long	0xbbb
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x9
	.string	"de_cu_context_list"
	.byte	0x3
	.byte	0x86
	.long	0xbbb
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.string	"de_cu_context_list_end"
	.byte	0x3
	.byte	0x8b
	.long	0xbbb
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x9
	.string	"de_offdie_cu_context"
	.byte	0x3
	.byte	0x90
	.long	0xbbb
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.string	"de_offdie_cu_context_end"
	.byte	0x3
	.byte	0x91
	.long	0xbbb
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x9
	.string	"de_info_last_offset"
	.byte	0x3
	.byte	0x94
	.long	0xada
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.string	"de_length_size"
	.byte	0x3
	.byte	0x9a
	.long	0x1d2
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x9
	.string	"de_pointer_size"
	.byte	0x3
	.byte	0x9e
	.long	0x1d2
	.byte	0x2
	.byte	0x23
	.uleb128 0x2d
	.uleb128 0x9
	.string	"de_assume_string_in_bounds"
	.byte	0x3
	.byte	0xa3
	.long	0x1d2
	.byte	0x2
	.byte	0x23
	.uleb128 0x2e
	.uleb128 0x9
	.string	"de_alloc_hdr"
	.byte	0x3
	.byte	0xa8
	.long	0xf73
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x9
	.string	"de_cie_data"
	.byte	0x3
	.byte	0xb4
	.long	0xf83
	.byte	0x3
	.byte	0x23
	.uleb128 0x394
	.uleb128 0x9
	.string	"de_cie_count"
	.byte	0x3
	.byte	0xb6
	.long	0x1e5
	.byte	0x3
	.byte	0x23
	.uleb128 0x398
	.uleb128 0x9
	.string	"de_fde_data"
	.byte	0x3
	.byte	0xb9
	.long	0xf89
	.byte	0x3
	.byte	0x23
	.uleb128 0x3a0
	.uleb128 0x9
	.string	"de_fde_count"
	.byte	0x3
	.byte	0xbb
	.long	0x1e5
	.byte	0x3
	.byte	0x23
	.uleb128 0x3a4
	.uleb128 0x9
	.string	"de_debug_info"
	.byte	0x3
	.byte	0xbd
	.long	0xb15
	.byte	0x3
	.byte	0x23
	.uleb128 0x3ac
	.uleb128 0x9
	.string	"de_debug_abbrev"
	.byte	0x3
	.byte	0xbe
	.long	0xb15
	.byte	0x3
	.byte	0x23
	.uleb128 0x3b0
	.uleb128 0x9
	.string	"de_debug_line"
	.byte	0x3
	.byte	0xbf
	.long	0xb15
	.byte	0x3
	.byte	0x23
	.uleb128 0x3b4
	.uleb128 0x9
	.string	"de_debug_loc"
	.byte	0x3
	.byte	0xc0
	.long	0xb15
	.byte	0x3
	.byte	0x23
	.uleb128 0x3b8
	.uleb128 0x9
	.string	"de_debug_aranges"
	.byte	0x3
	.byte	0xc1
	.long	0xb15
	.byte	0x3
	.byte	0x23
	.uleb128 0x3bc
	.uleb128 0x9
	.string	"de_debug_macinfo"
	.byte	0x3
	.byte	0xc2
	.long	0xb15
	.byte	0x3
	.byte	0x23
	.uleb128 0x3c0
	.uleb128 0x9
	.string	"de_debug_pubnames"
	.byte	0x3
	.byte	0xc3
	.long	0xb15
	.byte	0x3
	.byte	0x23
	.uleb128 0x3c4
	.uleb128 0x9
	.string	"de_debug_str"
	.byte	0x3
	.byte	0xc4
	.long	0xb15
	.byte	0x3
	.byte	0x23
	.uleb128 0x3c8
	.uleb128 0x9
	.string	"de_debug_frame"
	.byte	0x3
	.byte	0xc5
	.long	0xb15
	.byte	0x3
	.byte	0x23
	.uleb128 0x3cc
	.uleb128 0x9
	.string	"de_debug_frame_eh_gnu"
	.byte	0x3
	.byte	0xc6
	.long	0xb15
	.byte	0x3
	.byte	0x23
	.uleb128 0x3d0
	.uleb128 0x9
	.string	"de_debug_funcnames"
	.byte	0x3
	.byte	0xc9
	.long	0xb15
	.byte	0x3
	.byte	0x23
	.uleb128 0x3d4
	.uleb128 0x9
	.string	"de_debug_typenames"
	.byte	0x3
	.byte	0xca
	.long	0xb15
	.byte	0x3
	.byte	0x23
	.uleb128 0x3d8
	.uleb128 0x9
	.string	"de_debug_varnames"
	.byte	0x3
	.byte	0xcb
	.long	0xb15
	.byte	0x3
	.byte	0x23
	.uleb128 0x3dc
	.uleb128 0x9
	.string	"de_debug_weaknames"
	.byte	0x3
	.byte	0xcc
	.long	0xb15
	.byte	0x3
	.byte	0x23
	.uleb128 0x3e0
	.uleb128 0x9
	.string	"de_debug_info_size"
	.byte	0x3
	.byte	0xce
	.long	0x1aa
	.byte	0x3
	.byte	0x23
	.uleb128 0x3e4
	.uleb128 0x9
	.string	"de_debug_abbrev_size"
	.byte	0x3
	.byte	0xcf
	.long	0x1aa
	.byte	0x3
	.byte	0x23
	.uleb128 0x3ec
	.uleb128 0x9
	.string	"de_debug_line_size"
	.byte	0x3
	.byte	0xd0
	.long	0x1aa
	.byte	0x3
	.byte	0x23
	.uleb128 0x3f4
	.uleb128 0x9
	.string	"de_debug_loc_size"
	.byte	0x3
	.byte	0xd1
	.long	0x1aa
	.byte	0x3
	.byte	0x23
	.uleb128 0x3fc
	.uleb128 0x9
	.string	"de_debug_aranges_size"
	.byte	0x3
	.byte	0xd2
	.long	0x1aa
	.byte	0x3
	.byte	0x23
	.uleb128 0x404
	.uleb128 0x9
	.string	"de_debug_macinfo_size"
	.byte	0x3
	.byte	0xd3
	.long	0x1aa
	.byte	0x3
	.byte	0x23
	.uleb128 0x40c
	.uleb128 0x9
	.string	"de_debug_pubnames_size"
	.byte	0x3
	.byte	0xd4
	.long	0x1aa
	.byte	0x3
	.byte	0x23
	.uleb128 0x414
	.uleb128 0x9
	.string	"de_debug_str_size"
	.byte	0x3
	.byte	0xd5
	.long	0x1aa
	.byte	0x3
	.byte	0x23
	.uleb128 0x41c
	.uleb128 0x9
	.string	"de_debug_frame_size"
	.byte	0x3
	.byte	0xd8
	.long	0x1aa
	.byte	0x3
	.byte	0x23
	.uleb128 0x424
	.uleb128 0x9
	.string	"de_debug_frame_size_eh_gnu"
	.byte	0x3
	.byte	0xda
	.long	0x1aa
	.byte	0x3
	.byte	0x23
	.uleb128 0x42c
	.uleb128 0x9
	.string	"de_debug_funcnames_size"
	.byte	0x3
	.byte	0xdd
	.long	0x1aa
	.byte	0x3
	.byte	0x23
	.uleb128 0x434
	.uleb128 0x9
	.string	"de_debug_typenames_size"
	.byte	0x3
	.byte	0xde
	.long	0x1aa
	.byte	0x3
	.byte	0x23
	.uleb128 0x43c
	.uleb128 0x9
	.string	"de_debug_varnames_size"
	.byte	0x3
	.byte	0xdf
	.long	0x1aa
	.byte	0x3
	.byte	0x23
	.uleb128 0x444
	.uleb128 0x9
	.string	"de_debug_weaknames_size"
	.byte	0x3
	.byte	0xe0
	.long	0x1aa
	.byte	0x3
	.byte	0x23
	.uleb128 0x44c
	.uleb128 0x9
	.string	"de_copy_word"
	.byte	0x3
	.byte	0xe2
	.long	0xfb0
	.byte	0x3
	.byte	0x23
	.uleb128 0x454
	.uleb128 0x9
	.string	"de_same_endian"
	.byte	0x3
	.byte	0xe3
	.long	0xbc
	.byte	0x3
	.byte	0x23
	.uleb128 0x458
	.uleb128 0x9
	.string	"de_elf_must_close"
	.byte	0x3
	.byte	0xe4
	.long	0xbc
	.byte	0x3
	.byte	0x23
	.uleb128 0x459
	.uleb128 0x9
	.string	"de_debug_aranges_index"
	.byte	0x3
	.byte	0xf1
	.long	0x1c0
	.byte	0x3
	.byte	0x23
	.uleb128 0x45a
	.uleb128 0x9
	.string	"de_debug_line_index"
	.byte	0x3
	.byte	0xf2
	.long	0x1c0
	.byte	0x3
	.byte	0x23
	.uleb128 0x45c
	.uleb128 0x9
	.string	"de_debug_loc_index"
	.byte	0x3
	.byte	0xf3
	.long	0x1c0
	.byte	0x3
	.byte	0x23
	.uleb128 0x45e
	.uleb128 0x9
	.string	"de_debug_macinfo_index"
	.byte	0x3
	.byte	0xf4
	.long	0x1c0
	.byte	0x3
	.byte	0x23
	.uleb128 0x460
	.uleb128 0x9
	.string	"de_debug_pubnames_index"
	.byte	0x3
	.byte	0xf5
	.long	0x1c0
	.byte	0x3
	.byte	0x23
	.uleb128 0x462
	.uleb128 0x9
	.string	"de_debug_funcnames_index"
	.byte	0x3
	.byte	0xf6
	.long	0x1c0
	.byte	0x3
	.byte	0x23
	.uleb128 0x464
	.uleb128 0x9
	.string	"de_debug_typenames_index"
	.byte	0x3
	.byte	0xf7
	.long	0x1c0
	.byte	0x3
	.byte	0x23
	.uleb128 0x466
	.uleb128 0x9
	.string	"de_debug_varnames_index"
	.byte	0x3
	.byte	0xf8
	.long	0x1c0
	.byte	0x3
	.byte	0x23
	.uleb128 0x468
	.uleb128 0x9
	.string	"de_debug_weaknames_index"
	.byte	0x3
	.byte	0xf9
	.long	0x1c0
	.byte	0x3
	.byte	0x23
	.uleb128 0x46a
	.uleb128 0x9
	.string	"de_debug_frame_index"
	.byte	0x3
	.byte	0xfa
	.long	0x1c0
	.byte	0x3
	.byte	0x23
	.uleb128 0x46c
	.uleb128 0x9
	.string	"de_debug_frame_eh_gnu_index"
	.byte	0x3
	.byte	0xfb
	.long	0x1c0
	.byte	0x3
	.byte	0x23
	.uleb128 0x46e
	.uleb128 0x9
	.string	"de_debug_str_index"
	.byte	0x3
	.byte	0xfc
	.long	0x1c0
	.byte	0x3
	.byte	0x23
	.uleb128 0x470
	.uleb128 0x9
	.string	"de_debug_info_index"
	.byte	0x3
	.byte	0xfd
	.long	0x1c0
	.byte	0x3
	.byte	0x23
	.uleb128 0x472
	.uleb128 0x9
	.string	"de_debug_abbrev_index"
	.byte	0x3
	.byte	0xfe
	.long	0x1c0
	.byte	0x3
	.byte	0x23
	.uleb128 0x474
	.uleb128 0x9
	.string	"de_big_endian_object"
	.byte	0x3
	.byte	0xff
	.long	0xbc
	.byte	0x3
	.byte	0x23
	.uleb128 0x476
	.byte	0x0
	.uleb128 0x2
	.string	"Dwarf_Die"
	.byte	0x4
	.byte	0xc3
	.long	0x9b2
	.uleb128 0x6
	.byte	0x4
	.long	0x9b8
	.uleb128 0xa
	.long	0xa1a
	.string	"Dwarf_Die_s"
	.byte	0xc
	.byte	0x4
	.byte	0xc3
	.uleb128 0x9
	.string	"di_debug_info_ptr"
	.byte	0x3
	.byte	0x3d
	.long	0xaff
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.string	"di_abbrev_list"
	.byte	0x3
	.byte	0x3f
	.long	0xb1b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.string	"di_cu_context"
	.byte	0x3
	.byte	0x42
	.long	0xbbb
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x2
	.string	"Dwarf_Error"
	.byte	0x4
	.byte	0xca
	.long	0xa2d
	.uleb128 0x6
	.byte	0x4
	.long	0xa33
	.uleb128 0xa
	.long	0xa5e
	.string	"Dwarf_Error_s"
	.byte	0x4
	.byte	0x4
	.byte	0xca
	.uleb128 0x9
	.string	"er_errval"
	.byte	0x5
	.byte	0x2e
	.long	0xaec
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x2
	.string	"Dwarf_Fde"
	.byte	0x4
	.byte	0xcd
	.long	0xa6f
	.uleb128 0x6
	.byte	0x4
	.long	0xa75
	.uleb128 0x7
	.string	"Dwarf_Fde_s"
	.byte	0x1
	.uleb128 0x2
	.string	"Dwarf_Cie"
	.byte	0x4
	.byte	0xce
	.long	0xa94
	.uleb128 0x6
	.byte	0x4
	.long	0xa9a
	.uleb128 0x7
	.string	"Dwarf_Cie_s"
	.byte	0x1
	.uleb128 0x2
	.string	"Dwarf_Handler"
	.byte	0x4
	.byte	0xdc
	.long	0xabd
	.uleb128 0x6
	.byte	0x4
	.long	0xac3
	.uleb128 0xb
	.long	0xad4
	.byte	0x1
	.uleb128 0xc
	.long	0xa1a
	.uleb128 0xc
	.long	0x1f9
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.long	0x1aa
	.uleb128 0x2
	.string	"Dwarf_Word"
	.byte	0x2
	.byte	0x52
	.long	0xe3
	.uleb128 0x2
	.string	"Dwarf_Sword"
	.byte	0x2
	.byte	0x53
	.long	0x146
	.uleb128 0x2
	.string	"Dwarf_Byte_Ptr"
	.byte	0x2
	.byte	0x58
	.long	0xb15
	.uleb128 0x6
	.byte	0x4
	.long	0x1d2
	.uleb128 0x2
	.string	"Dwarf_Abbrev_List"
	.byte	0x2
	.byte	0x6a
	.long	0xb34
	.uleb128 0x6
	.byte	0x4
	.long	0xb3a
	.uleb128 0xa
	.long	0xbbb
	.string	"Dwarf_Abbrev_List_s"
	.byte	0x10
	.byte	0x2
	.byte	0x6a
	.uleb128 0x9
	.string	"ab_code"
	.byte	0x9
	.byte	0x32
	.long	0xada
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.string	"ab_tag"
	.byte	0x9
	.byte	0x33
	.long	0x1c0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.string	"ab_has_child"
	.byte	0x9
	.byte	0x34
	.long	0x1c0
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x9
	.string	"ab_abbrev_ptr"
	.byte	0x9
	.byte	0x39
	.long	0xaff
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.string	"ab_next"
	.byte	0x9
	.byte	0x3b
	.long	0xb34
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x2
	.string	"Dwarf_CU_Context"
	.byte	0x2
	.byte	0x6c
	.long	0xbd3
	.uleb128 0x6
	.byte	0x4
	.long	0xbd9
	.uleb128 0xa
	.long	0xd27
	.string	"Dwarf_CU_Context_s"
	.byte	0x28
	.byte	0x2
	.byte	0x6c
	.uleb128 0x9
	.string	"cc_dbg"
	.byte	0x3
	.byte	0x67
	.long	0x20a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.string	"cc_length"
	.byte	0x3
	.byte	0x68
	.long	0xada
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.string	"cc_length_size"
	.byte	0x3
	.byte	0x69
	.long	0x1d2
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.string	"cc_extension_size"
	.byte	0x3
	.byte	0x6a
	.long	0x1d2
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0x9
	.string	"cc_version_stamp"
	.byte	0x3
	.byte	0x6b
	.long	0x1c0
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x9
	.string	"cc_abbrev_offset"
	.byte	0x3
	.byte	0x6c
	.long	0xaec
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.string	"cc_address_size"
	.byte	0x3
	.byte	0x6d
	.long	0x1d2
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.string	"cc_debug_info_offset"
	.byte	0x3
	.byte	0x6e
	.long	0xada
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x9
	.string	"cc_last_abbrev_ptr"
	.byte	0x3
	.byte	0x6f
	.long	0xaff
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.string	"cc_abbrev_hash_table"
	.byte	0x3
	.byte	0x70
	.long	0xd27
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x9
	.string	"cc_next"
	.byte	0x3
	.byte	0x71
	.long	0xbbb
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.string	"cc_offset_length"
	.byte	0x3
	.byte	0x72
	.long	0xbc
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.byte	0x0
	.uleb128 0x2
	.string	"Dwarf_Hash_Table"
	.byte	0x2
	.byte	0x6d
	.long	0xd3f
	.uleb128 0x6
	.byte	0x4
	.long	0xd45
	.uleb128 0xa
	.long	0xd86
	.string	"Dwarf_Hash_Table_s"
	.byte	0x8
	.byte	0x2
	.byte	0x6d
	.uleb128 0x9
	.string	"at_head"
	.byte	0x8
	.byte	0xff
	.long	0xb1b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"at_tail"
	.byte	0x8
	.value	0x100
	.long	0xb1b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"Dwarf_Alloc_Hdr"
	.byte	0x2
	.byte	0x70
	.long	0xd9d
	.uleb128 0x6
	.byte	0x4
	.long	0xda3
	.uleb128 0xa
	.long	0xe96
	.string	"Dwarf_Alloc_Hdr_s"
	.byte	0x1c
	.byte	0x2
	.byte	0x70
	.uleb128 0x9
	.string	"ah_struct_user_holds"
	.byte	0x6
	.byte	0x49
	.long	0xaec
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.string	"ah_bytes_one_struct"
	.byte	0x6
	.byte	0x4e
	.long	0x1c0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.string	"ah_structs_per_chunk"
	.byte	0x6
	.byte	0x53
	.long	0xada
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.string	"ah_bytes_malloc_per_chunk"
	.byte	0x6
	.byte	0x58
	.long	0xada
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.string	"ah_chunks_allocated"
	.byte	0x6
	.byte	0x5b
	.long	0xaec
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.string	"ah_alloc_area_head"
	.byte	0x6
	.byte	0x60
	.long	0xe96
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x9
	.string	"ah_last_alloc_area"
	.byte	0x6
	.byte	0x65
	.long	0xe96
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x2
	.string	"Dwarf_Alloc_Area"
	.byte	0x6
	.byte	0x2f
	.long	0xeae
	.uleb128 0x6
	.byte	0x4
	.long	0xeb4
	.uleb128 0xa
	.long	0xf73
	.string	"Dwarf_Alloc_Area_s"
	.byte	0x1c
	.byte	0x6
	.byte	0x2f
	.uleb128 0x9
	.string	"aa_free_list"
	.byte	0x6
	.byte	0x72
	.long	0x1f9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.string	"aa_free_structs_in_chunk"
	.byte	0x6
	.byte	0x77
	.long	0xaec
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.string	"aa_blob_start"
	.byte	0x6
	.byte	0x7d
	.long	0xb15
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.string	"aa_blob_end"
	.byte	0x6
	.byte	0x80
	.long	0xb15
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.string	"aa_alloc_hdr"
	.byte	0x6
	.byte	0x84
	.long	0xd86
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.string	"aa_next"
	.byte	0x6
	.byte	0x89
	.long	0xe96
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x9
	.string	"aa_prev"
	.byte	0x6
	.byte	0x8a
	.long	0xe96
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0xe
	.long	0xf83
	.long	0xda3
	.uleb128 0xf
	.long	0x152
	.byte	0x1e
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.long	0xa83
	.uleb128 0x6
	.byte	0x4
	.long	0xa5e
	.uleb128 0x10
	.long	0xfa9
	.byte	0x1
	.long	0x159
	.uleb128 0xc
	.long	0x159
	.uleb128 0xc
	.long	0xfa9
	.uleb128 0xc
	.long	0xa7
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.long	0xfaf
	.uleb128 0x11
	.uleb128 0x6
	.byte	0x4
	.long	0xf8f
	.uleb128 0x2
	.string	"BIGGEST_UINT"
	.byte	0x8
	.byte	0x72
	.long	0x1aa
	.uleb128 0x12
	.long	0x1024
	.string	"_dwarf_find_CU_Context"
	.byte	0x1
	.byte	0x43
	.byte	0x1
	.long	0xbbb
	.long	.LFB5
	.long	.LFE5
	.long	.LLST0
	.uleb128 0x13
	.string	"dbg"
	.byte	0x1
	.byte	0x42
	.long	0x20a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x14
	.long	.LASF1
	.byte	0x1
	.byte	0x42
	.long	0x199
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x15
	.long	.LASF2
	.byte	0x1
	.byte	0x44
	.long	0xbbb
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x12
	.long	0x1085
	.string	"_dwarf_find_offdie_CU_Context"
	.byte	0x1
	.byte	0x76
	.byte	0x1
	.long	0xbbb
	.long	.LFB6
	.long	.LFE6
	.long	.LLST1
	.uleb128 0x13
	.string	"dbg"
	.byte	0x1
	.byte	0x75
	.long	0x20a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x14
	.long	.LASF1
	.byte	0x1
	.byte	0x75
	.long	0x199
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x15
	.long	.LASF2
	.byte	0x1
	.byte	0x77
	.long	0xbbb
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x12
	.long	0x11e1
	.string	"_dwarf_make_CU_Context"
	.byte	0x1
	.byte	0x98
	.byte	0x1
	.long	0xbbb
	.long	.LFB7
	.long	.LFE7
	.long	.LLST2
	.uleb128 0x13
	.string	"dbg"
	.byte	0x1
	.byte	0x96
	.long	0x20a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x14
	.long	.LASF1
	.byte	0x1
	.byte	0x97
	.long	0x199
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x14
	.long	.LASF3
	.byte	0x1
	.byte	0x97
	.long	0x11e1
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x15
	.long	.LASF2
	.byte	0x1
	.byte	0x99
	.long	0xbbb
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x16
	.string	"length"
	.byte	0x1
	.byte	0x9a
	.long	0x1aa
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x15
	.long	.LASF4
	.byte	0x1
	.byte	0x9b
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x16
	.string	"cu_ptr"
	.byte	0x1
	.byte	0x9c
	.long	0xaff
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x16
	.string	"local_extension_size"
	.byte	0x1
	.byte	0x9d
	.long	0x114
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x16
	.string	"local_length_size"
	.byte	0x1
	.byte	0x9e
	.long	0x114
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x17
	.long	0x1174
	.long	.LBB2
	.long	.LBE2
	.uleb128 0x15
	.long	.LASF5
	.byte	0x1
	.byte	0xab
	.long	0xfb6
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.byte	0x0
	.uleb128 0x17
	.long	0x1190
	.long	.LBB3
	.long	.LBE3
	.uleb128 0x15
	.long	.LASF5
	.byte	0x1
	.byte	0xab
	.long	0xfb6
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.byte	0x0
	.uleb128 0x17
	.long	0x11ac
	.long	.LBB4
	.long	.LBE4
	.uleb128 0x15
	.long	.LASF5
	.byte	0x1
	.byte	0xab
	.long	0xfb6
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.byte	0x0
	.uleb128 0x17
	.long	0x11c8
	.long	.LBB5
	.long	.LBE5
	.uleb128 0x15
	.long	.LASF5
	.byte	0x1
	.byte	0xb3
	.long	0xfb6
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.byte	0x0
	.uleb128 0x18
	.long	.LBB6
	.long	.LBE6
	.uleb128 0x15
	.long	.LASF5
	.byte	0x1
	.byte	0xb7
	.long	0xfb6
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.long	0xa1a
	.uleb128 0x19
	.long	0x12e1
	.byte	0x1
	.string	"dwarf_next_cu_header"
	.byte	0x1
	.byte	0xfe
	.byte	0x1
	.long	0x114
	.long	.LFB8
	.long	.LFE8
	.long	.LLST3
	.uleb128 0x13
	.string	"dbg"
	.byte	0x1
	.byte	0xf7
	.long	0x20a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x13
	.string	"cu_header_length"
	.byte	0x1
	.byte	0xf8
	.long	0xad4
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x13
	.string	"version_stamp"
	.byte	0x1
	.byte	0xf9
	.long	0x12e1
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x14
	.long	.LASF4
	.byte	0x1
	.byte	0xfa
	.long	0xad4
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x13
	.string	"address_size"
	.byte	0x1
	.byte	0xfb
	.long	0x12e1
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x13
	.string	"next_cu_offset"
	.byte	0x1
	.byte	0xfc
	.long	0xad4
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x14
	.long	.LASF3
	.byte	0x1
	.byte	0xfd
	.long	0x11e1
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x1a
	.string	"new_offset"
	.byte	0x1
	.value	0x100
	.long	0x1aa
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1b
	.long	.LASF2
	.byte	0x1
	.value	0x103
	.long	0xbbb
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x18
	.long	.LBB7
	.long	.LBE7
	.uleb128 0x1a
	.string	"res"
	.byte	0x1
	.value	0x111
	.long	0x114
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.long	0x1c0
	.uleb128 0x1c
	.long	0x153e
	.string	"_dwarf_next_die_info_ptr"
	.byte	0x1
	.value	0x16f
	.byte	0x1
	.long	0xaff
	.long	.LFB9
	.long	.LFE9
	.long	.LLST4
	.uleb128 0x1d
	.long	.LASF6
	.byte	0x1
	.value	0x169
	.long	0xaff
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1d
	.long	.LASF2
	.byte	0x1
	.value	0x16a
	.long	0xbbb
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1d
	.long	.LASF7
	.byte	0x1
	.value	0x16b
	.long	0xaff
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1d
	.long	.LASF8
	.byte	0x1
	.value	0x16c
	.long	0xaff
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x1e
	.string	"want_AT_sibling"
	.byte	0x1
	.value	0x16d
	.long	0x187
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x1d
	.long	.LASF9
	.byte	0x1
	.value	0x16e
	.long	0x153e
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x1b
	.long	.LASF10
	.byte	0x1
	.value	0x170
	.long	0xaff
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1a
	.string	"abbrev_ptr"
	.byte	0x1
	.value	0x171
	.long	0xaff
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1b
	.long	.LASF11
	.byte	0x1
	.value	0x172
	.long	0xada
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1a
	.string	"abbrev_list"
	.byte	0x1
	.value	0x173
	.long	0xb1b
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1a
	.string	"attr"
	.byte	0x1
	.value	0x174
	.long	0x1c0
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1a
	.string	"attr_form"
	.byte	0x1
	.value	0x175
	.long	0x1c0
	.byte	0x2
	.byte	0x91
	.sleb128 -26
	.uleb128 0x1b
	.long	.LASF1
	.byte	0x1
	.value	0x176
	.long	0x1aa
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x1a
	.string	"leb128_length"
	.byte	0x1
	.value	0x177
	.long	0xada
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1a
	.string	"utmp"
	.byte	0x1
	.value	0x178
	.long	0x1aa
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1a
	.string	"dbg"
	.byte	0x1
	.value	0x179
	.long	0x20a
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x17
	.long	0x1456
	.long	.LBB8
	.long	.LBE8
	.uleb128 0x1b
	.long	.LASF12
	.byte	0x1
	.value	0x17c
	.long	0xada
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.byte	0x0
	.uleb128 0x18
	.long	.LBB9
	.long	.LBE9
	.uleb128 0x1a
	.string	"utmp2"
	.byte	0x1
	.value	0x18c
	.long	0x1aa
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x17
	.long	0x148f
	.long	.LBB10
	.long	.LBE10
	.uleb128 0x1b
	.long	.LASF12
	.byte	0x1
	.value	0x18e
	.long	0xada
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.byte	0x0
	.uleb128 0x17
	.long	0x14ad
	.long	.LBB11
	.long	.LBE11
	.uleb128 0x1b
	.long	.LASF12
	.byte	0x1
	.value	0x190
	.long	0xada
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.byte	0x0
	.uleb128 0x17
	.long	0x14e6
	.long	.LBB12
	.long	.LBE12
	.uleb128 0x1a
	.string	"utmp6"
	.byte	0x1
	.value	0x193
	.long	0x1aa
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x18
	.long	.LBB13
	.long	.LBE13
	.uleb128 0x1b
	.long	.LASF12
	.byte	0x1
	.value	0x196
	.long	0xada
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.byte	0x0
	.byte	0x0
	.uleb128 0x17
	.long	0x1504
	.long	.LBB14
	.long	.LBE14
	.uleb128 0x1b
	.long	.LASF5
	.byte	0x1
	.value	0x1a1
	.long	0xfb6
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.byte	0x0
	.uleb128 0x17
	.long	0x1522
	.long	.LBB15
	.long	.LBE15
	.uleb128 0x1b
	.long	.LASF5
	.byte	0x1
	.value	0x1a5
	.long	0xfb6
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.byte	0x0
	.uleb128 0x18
	.long	.LBB16
	.long	.LBE16
	.uleb128 0x1b
	.long	.LASF5
	.byte	0x1
	.value	0x1a9
	.long	0xfb6
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.long	0x187
	.uleb128 0x1f
	.long	0x167b
	.byte	0x1
	.string	"dwarf_siblingof"
	.byte	0x1
	.value	0x1e7
	.byte	0x1
	.long	0x114
	.long	.LFB10
	.long	.LFE10
	.long	.LLST5
	.uleb128 0x1e
	.string	"dbg"
	.byte	0x1
	.value	0x1e4
	.long	0x20a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1e
	.string	"die"
	.byte	0x1
	.value	0x1e5
	.long	0x9a1
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1d
	.long	.LASF13
	.byte	0x1
	.value	0x1e6
	.long	0x167b
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1d
	.long	.LASF3
	.byte	0x1
	.value	0x1e6
	.long	0x11e1
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x1a
	.string	"ret_die"
	.byte	0x1
	.value	0x1e8
	.long	0x9a1
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1b
	.long	.LASF6
	.byte	0x1
	.value	0x1e9
	.long	0xaff
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1b
	.long	.LASF8
	.byte	0x1
	.value	0x1ea
	.long	0xaff
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1b
	.long	.LASF7
	.byte	0x1
	.value	0x1eb
	.long	0xaff
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1b
	.long	.LASF11
	.byte	0x1
	.value	0x1ec
	.long	0x1c0
	.byte	0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x1a
	.string	"utmp"
	.byte	0x1
	.value	0x1ed
	.long	0x1aa
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x17
	.long	0x1627
	.long	.LBB17
	.long	.LBE17
	.uleb128 0x1a
	.string	"off2"
	.byte	0x1
	.value	0x1f9
	.long	0x199
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.byte	0x0
	.uleb128 0x17
	.long	0x1661
	.long	.LBB18
	.long	.LBE18
	.uleb128 0x1a
	.string	"has_child"
	.byte	0x1
	.value	0x208
	.long	0x187
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1a
	.string	"child_depth"
	.byte	0x1
	.value	0x209
	.long	0xaec
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x18
	.long	.LBB19
	.long	.LBE19
	.uleb128 0x1b
	.long	.LASF12
	.byte	0x1
	.value	0x248
	.long	0xada
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.long	0x9a1
	.uleb128 0x1f
	.long	0x175c
	.byte	0x1
	.string	"dwarf_child"
	.byte	0x1
	.value	0x260
	.byte	0x1
	.long	0x114
	.long	.LFB11
	.long	.LFE11
	.long	.LLST6
	.uleb128 0x1e
	.string	"die"
	.byte	0x1
	.value	0x25e
	.long	0x9a1
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1d
	.long	.LASF13
	.byte	0x1
	.value	0x25f
	.long	0x167b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1d
	.long	.LASF3
	.byte	0x1
	.value	0x25f
	.long	0x11e1
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1b
	.long	.LASF6
	.byte	0x1
	.value	0x261
	.long	0xaff
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1b
	.long	.LASF7
	.byte	0x1
	.value	0x262
	.long	0xaff
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1a
	.string	"ret_die"
	.byte	0x1
	.value	0x263
	.long	0x9a1
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1b
	.long	.LASF9
	.byte	0x1
	.value	0x264
	.long	0x187
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1a
	.string	"dbg"
	.byte	0x1
	.value	0x265
	.long	0x20a
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1b
	.long	.LASF11
	.byte	0x1
	.value	0x266
	.long	0x1c0
	.byte	0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x1a
	.string	"utmp"
	.byte	0x1
	.value	0x267
	.long	0x1aa
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x18
	.long	.LBB20
	.long	.LBE20
	.uleb128 0x1b
	.long	.LASF12
	.byte	0x1
	.value	0x28c
	.long	0xada
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.byte	0x0
	.byte	0x0
	.uleb128 0x20
	.byte	0x1
	.string	"dwarf_offdie"
	.byte	0x1
	.value	0x2a8
	.byte	0x1
	.long	0x114
	.long	.LFB12
	.long	.LFE12
	.long	.LLST7
	.uleb128 0x1e
	.string	"dbg"
	.byte	0x1
	.value	0x2a6
	.long	0x20a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1d
	.long	.LASF1
	.byte	0x1
	.value	0x2a7
	.long	0x199
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1e
	.string	"new_die"
	.byte	0x1
	.value	0x2a7
	.long	0x167b
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x1d
	.long	.LASF3
	.byte	0x1
	.value	0x2a7
	.long	0x11e1
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x1b
	.long	.LASF2
	.byte	0x1
	.value	0x2a9
	.long	0xbbb
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1a
	.string	"new_cu_offset"
	.byte	0x1
	.value	0x2aa
	.long	0x199
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1a
	.string	"die"
	.byte	0x1
	.value	0x2ab
	.long	0x9a1
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1b
	.long	.LASF10
	.byte	0x1
	.value	0x2ac
	.long	0xaff
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1b
	.long	.LASF11
	.byte	0x1
	.value	0x2ad
	.long	0x1c0
	.byte	0x2
	.byte	0x91
	.sleb128 -26
	.uleb128 0x1a
	.string	"utmp"
	.byte	0x1
	.value	0x2ae
	.long	0x1aa
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x17
	.long	0x1842
	.long	.LBB21
	.long	.LBE21
	.uleb128 0x1a
	.string	"res"
	.byte	0x1
	.value	0x2ba
	.long	0x114
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x18
	.long	.LBB22
	.long	.LBE22
	.uleb128 0x1b
	.long	.LASF12
	.byte	0x1
	.value	0x2f1
	.long	0xada
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.byte	0x0
	.byte	0x0
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x7
	.uleb128 0x13
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x27
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x11
	.uleb128 0x26
	.byte	0x0
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0x2e
	.byte	0x1
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
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.long	0x5c
	.value	0x2
	.long	.Ldebug_info0
	.long	0x185d
	.long	0x11e7
	.string	"dwarf_next_cu_header"
	.long	0x1544
	.string	"dwarf_siblingof"
	.long	0x1681
	.string	"dwarf_child"
	.long	0x175c
	.string	"dwarf_offdie"
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
.LASF8:
	.string	"cu_info_start"
.LASF7:
	.string	"die_info_end"
.LASF3:
	.string	"error"
.LASF12:
	.string	"uleblen"
.LASF5:
	.string	"_ltmp"
.LASF6:
	.string	"die_info_ptr"
.LASF0:
	.string	"unsigned int"
.LASF4:
	.string	"abbrev_offset"
.LASF1:
	.string	"offset"
.LASF10:
	.string	"info_ptr"
.LASF13:
	.string	"caller_ret_die"
.LASF11:
	.string	"abbrev_code"
.LASF9:
	.string	"has_die_child"
.LASF2:
	.string	"cu_context"
	.ident	"GCC: (GNU) 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.section	.text.__i686.get_pc_thunk.bx,"axG",@progbits,__i686.get_pc_thunk.bx,comdat
.globl __i686.get_pc_thunk.bx
	.hidden	__i686.get_pc_thunk.bx
	.type	__i686.get_pc_thunk.bx, @function
__i686.get_pc_thunk.bx:
	movl	(%esp), %ebx
	ret
	.section	.note.GNU-stack,"",@progbits
