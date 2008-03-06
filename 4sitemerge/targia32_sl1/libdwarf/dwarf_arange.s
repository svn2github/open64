	.file	"dwarf_arange.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
.globl __umoddi3
.globl dwarf_get_aranges
	.type	dwarf_get_aranges, @function
dwarf_get_aranges:
.LFB5:
	.file 1 "../../libdwarf/libdwarf/dwarf_arange.c"
	.loc 1 63 0
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
	subl	$156, %esp
.LCFI5:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 88 0
	movl	$0, -112(%ebp)
	movl	$0, -108(%ebp)
	.loc 1 101 0
	movl	$0, -44(%ebp)
	.loc 1 107 0
	cmpl	$0, 8(%ebp)
	jne	.L2
	.loc 1 108 0
	movl	$81, 8(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	_dwarf_error@PLT
	.loc 1 109 0
	movl	$1, -140(%ebp)
	jmp	.L4
.L2:
	.loc 1 112 0
	movl	8(%ebp), %ecx
	addl	$956, %ecx
	movl	8(%ebp), %eax
	movzwl	1114(%eax), %eax
	movzwl	%ax, %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_dwarf_load_section@PLT
	movl	%eax, -40(%ebp)
	.loc 1 117 0
	cmpl	$0, -40(%ebp)
	je	.L5
	.loc 1 118 0
	movl	-40(%ebp), %eax
	movl	%eax, -140(%ebp)
	jmp	.L4
.L5:
	.loc 1 121 0
	movl	8(%ebp), %eax
	movl	956(%eax), %eax
	movl	%eax, -68(%ebp)
.L7:
.LBB2:
	.loc 1 125 0
	movl	$0, -36(%ebp)
	.loc 1 131 0
	movl	-68(%ebp), %eax
	movl	%eax, -64(%ebp)
.LBB3:
	.loc 1 134 0
	movl	$0, -128(%ebp)
	movl	$0, -124(%ebp)
	movl	8(%ebp), %eax
	movl	1108(%eax), %ecx
	leal	-128(%ebp), %edx
	movl	$4, 8(%esp)
	movl	-68(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	*%ecx
	movl	-128(%ebp), %eax
	movl	-124(%ebp), %edx
	movl	%eax, -80(%ebp)
	movl	%edx, -76(%ebp)
.LBE3:
	movl	-80(%ebp), %eax
	xorl	$-1, %eax
	orl	-76(%ebp), %eax
	testl	%eax, %eax
	jne	.L8
	movl	$8, -32(%ebp)
	addl	$4, -68(%ebp)
	movl	$4, -28(%ebp)
.LBB4:
	movl	$0, -128(%ebp)
	movl	$0, -124(%ebp)
	movl	8(%ebp), %eax
	movl	1108(%eax), %ecx
	leal	-128(%ebp), %edx
	movl	$8, 8(%esp)
	movl	-68(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	*%ecx
	movl	-128(%ebp), %eax
	movl	-124(%ebp), %edx
	movl	%eax, -80(%ebp)
	movl	%edx, -76(%ebp)
.LBE4:
	addl	$8, -68(%ebp)
	jmp	.L10
.L8:
	movl	-80(%ebp), %eax
	orl	-76(%ebp), %eax
	testl	%eax, %eax
	jne	.L11
	movl	8(%ebp), %eax
	movzbl	1142(%eax), %eax
	testb	%al, %al
	je	.L11
.LBB5:
	movl	$0, -128(%ebp)
	movl	$0, -124(%ebp)
	movl	8(%ebp), %eax
	movl	1108(%eax), %ecx
	leal	-128(%ebp), %edx
	movl	$8, 8(%esp)
	movl	-68(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	*%ecx
	movl	-128(%ebp), %eax
	movl	-124(%ebp), %edx
	movl	%eax, -80(%ebp)
	movl	%edx, -76(%ebp)
.LBE5:
	movl	$8, -32(%ebp)
	addl	$8, -68(%ebp)
	movl	$0, -28(%ebp)
	jmp	.L10
.L11:
	movl	$0, -28(%ebp)
	movl	$4, -32(%ebp)
	movl	-32(%ebp), %eax
	addl	%eax, -68(%ebp)
.L10:
	.loc 1 137 0
	movl	-80(%ebp), %eax
	addl	-68(%ebp), %eax
	movl	%eax, -36(%ebp)
.LBB6:
	.loc 1 140 0
	movl	$0, -128(%ebp)
	movl	$0, -124(%ebp)
	movl	8(%ebp), %eax
	movl	1108(%eax), %ecx
	leal	-128(%ebp), %edx
	movl	$2, 8(%esp)
	movl	-68(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	*%ecx
	movl	-128(%ebp), %eax
	movl	-124(%ebp), %edx
	movw	%ax, -22(%ebp)
.LBE6:
	.loc 1 142 0
	addl	$2, -68(%ebp)
	.loc 1 143 0
	addl	$-2, -80(%ebp)
	adcl	$-1, -76(%ebp)
	.loc 1 144 0
	cmpw	$2, -22(%ebp)
	je	.L14
	.loc 1 145 0
	movl	$48, 8(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_dwarf_error@PLT
	.loc 1 146 0
	movl	$1, -140(%ebp)
	jmp	.L4
.L14:
.LBB7:
	.loc 1 149 0
	movl	$0, -128(%ebp)
	movl	$0, -124(%ebp)
	movl	8(%ebp), %eax
	movl	1108(%eax), %ecx
	movl	-32(%ebp), %eax
	leal	-128(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	-68(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	*%ecx
	movl	-128(%ebp), %eax
	movl	-124(%ebp), %edx
	movl	%eax, -120(%ebp)
	movl	%edx, -116(%ebp)
.LBE7:
	.loc 1 151 0
	movl	-32(%ebp), %eax
	addl	%eax, -68(%ebp)
	.loc 1 152 0
	movl	-32(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	subl	%eax, -80(%ebp)
	sbbl	%edx, -76(%ebp)
	.loc 1 153 0
	movl	8(%ebp), %eax
	movl	996(%eax), %edx
	movl	1000(%eax), %ecx
	movl	%edx, -136(%ebp)
	movl	%ecx, -132(%ebp)
	movl	-132(%ebp), %ecx
	cmpl	-116(%ebp), %ecx
	ja	.L16
	movl	-132(%ebp), %eax
	cmpl	-116(%ebp), %eax
	jb	.L18
	movl	-136(%ebp), %edx
	cmpl	-120(%ebp), %edx
	ja	.L16
.L18:
	.loc 1 154 0
	movl	$134, 8(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_dwarf_error@PLT
	.loc 1 155 0
	movl	$1, -140(%ebp)
	jmp	.L4
.L16:
	.loc 1 158 0
	movl	-68(%ebp), %eax
	movzbl	(%eax), %eax
	movb	%al, -19(%ebp)
	.loc 1 159 0
	movl	8(%ebp), %eax
	movzbl	45(%eax), %eax
	cmpb	-19(%ebp), %al
	je	.L19
	.loc 1 161 0
	movl	$22, 8(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_dwarf_error@PLT
	.loc 1 162 0
	movl	$1, -140(%ebp)
	jmp	.L4
.L19:
	.loc 1 164 0
	addl	$1, -68(%ebp)
	.loc 1 165 0
	addl	$-1, -80(%ebp)
	adcl	$-1, -76(%ebp)
	.loc 1 167 0
	movl	-68(%ebp), %eax
	movzbl	(%eax), %eax
	movb	%al, -18(%ebp)
	.loc 1 168 0
	addl	$1, -68(%ebp)
	.loc 1 169 0
	addl	$-1, -80(%ebp)
	adcl	$-1, -76(%ebp)
	.loc 1 170 0
	cmpb	$0, -18(%ebp)
	je	.L21
	.loc 1 171 0
	movl	$135, 8(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_dwarf_error@PLT
	.loc 1 172 0
	movl	$1, -140(%ebp)
	jmp	.L4
.L21:
	.loc 1 176 0
	movl	-68(%ebp), %edx
	movl	-64(%ebp), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, %esi
	movl	%eax, %edi
	sarl	$31, %edi
	movzbl	-19(%ebp), %eax
	addl	%eax, %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	%esi, (%esp)
	movl	%edi, 4(%esp)
	call	__umoddi3@PLT
	movb	%al, -17(%ebp)
	.loc 1 178 0
	cmpb	$0, -17(%ebp)
	je	.L48
	.loc 1 179 0
	movzbl	-19(%ebp), %eax
	addl	%eax, %eax
	movl	%eax, %edx
	addl	-68(%ebp), %edx
	movzbl	-17(%ebp), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, -68(%ebp)
	.loc 1 180 0
	movzbl	-19(%ebp), %eax
	leal	(%eax,%eax), %edx
	movzbl	-17(%ebp), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, %edx
	sarl	$31, %edx
	subl	%eax, -80(%ebp)
	sbbl	%edx, -76(%ebp)
	jmp	.L48
.L23:
.L48:
.LBB8:
	.loc 1 184 0
	movl	$0, -128(%ebp)
	movl	$0, -124(%ebp)
	movl	8(%ebp), %eax
	movl	1108(%eax), %ecx
	movzbl	-19(%ebp), %eax
	leal	-128(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	-68(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	*%ecx
	movl	-128(%ebp), %eax
	movl	-124(%ebp), %edx
	movl	%eax, -104(%ebp)
	movl	%edx, -100(%ebp)
.LBE8:
	.loc 1 186 0
	movzbl	-19(%ebp), %eax
	addl	%eax, -68(%ebp)
	.loc 1 187 0
	movzbl	-19(%ebp), %eax
	movl	$0, %edx
	subl	%eax, -80(%ebp)
	sbbl	%edx, -76(%ebp)
.LBB9:
	.loc 1 189 0
	movl	$0, -128(%ebp)
	movl	$0, -124(%ebp)
	movl	8(%ebp), %eax
	movl	1108(%eax), %ecx
	movzbl	-19(%ebp), %eax
	leal	-128(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	-68(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	*%ecx
	movl	-128(%ebp), %eax
	movl	-124(%ebp), %edx
	movl	%eax, -96(%ebp)
	movl	%edx, -92(%ebp)
.LBE9:
	.loc 1 191 0
	movzbl	-19(%ebp), %eax
	addl	%eax, -68(%ebp)
	.loc 1 192 0
	movzbl	-19(%ebp), %eax
	movl	$0, %edx
	subl	%eax, -80(%ebp)
	sbbl	%edx, -76(%ebp)
	.loc 1 194 0
	movl	-104(%ebp), %eax
	orl	-100(%ebp), %eax
	testl	%eax, %eax
	jne	.L25
	movl	-96(%ebp), %eax
	orl	-92(%ebp), %eax
	testl	%eax, %eax
	je	.L27
.L25:
	.loc 1 196 0
	movl	$1, 8(%esp)
	movl	$0, 12(%esp)
	movl	$17, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_dwarf_get_alloc@PLT
	movl	%eax, -60(%ebp)
	.loc 1 198 0
	cmpl	$0, -60(%ebp)
	jne	.L28
	.loc 1 199 0
	movl	$62, 8(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_dwarf_error@PLT
	.loc 1 200 0
	movl	$1, -140(%ebp)
	jmp	.L4
.L28:
	.loc 1 203 0
	movl	-60(%ebp), %ecx
	movl	-104(%ebp), %eax
	movl	-100(%ebp), %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	.loc 1 204 0
	movl	-60(%ebp), %ecx
	movl	-96(%ebp), %eax
	movl	-92(%ebp), %edx
	movl	%eax, 8(%ecx)
	movl	%edx, 12(%ecx)
	.loc 1 205 0
	movl	-60(%ebp), %ecx
	movl	-120(%ebp), %eax
	movl	-116(%ebp), %edx
	movl	%eax, 16(%ecx)
	movl	%edx, 20(%ecx)
	.loc 1 206 0
	movl	-60(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, 24(%edx)
	.loc 1 207 0
	addl	$1, -112(%ebp)
	adcl	$0, -108(%ebp)
	.loc 1 209 0
	movl	$1, 8(%esp)
	movl	$0, 12(%esp)
	movl	$30, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_dwarf_get_alloc@PLT
	movl	%eax, -52(%ebp)
	.loc 1 211 0
	cmpl	$0, -52(%ebp)
	jne	.L30
	.loc 1 212 0
	movl	$62, 8(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_dwarf_error@PLT
	.loc 1 213 0
	movl	$1, -140(%ebp)
	jmp	.L4
.L30:
	.loc 1 216 0
	movl	-52(%ebp), %edx
	movl	-60(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 217 0
	cmpl	$0, -44(%ebp)
	jne	.L32
	.loc 1 218 0
	movl	-52(%ebp), %eax
	movl	%eax, -48(%ebp)
	movl	-48(%ebp), %eax
	movl	%eax, -44(%ebp)
	jmp	.L27
.L32:
	.loc 1 220 0
	movl	-48(%ebp), %eax
	movl	-52(%ebp), %edx
	movl	%edx, 4(%eax)
	.loc 1 221 0
	movl	-52(%ebp), %eax
	movl	%eax, -48(%ebp)
.L27:
	.loc 1 224 0
	movl	-104(%ebp), %eax
	orl	-100(%ebp), %eax
	testl	%eax, %eax
	jne	.L23
	movl	-96(%ebp), %eax
	orl	-92(%ebp), %eax
	testl	%eax, %eax
	jne	.L23
	.loc 1 229 0
	movl	-36(%ebp), %eax
	cmpl	-68(%ebp), %eax
	jae	.L36
	.loc 1 230 0
	movl	$136, 8(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_dwarf_error@PLT
	.loc 1 231 0
	movl	$1, -140(%ebp)
	jmp	.L4
.L36:
	.loc 1 235 0
	movl	-36(%ebp), %eax
	movl	%eax, -68(%ebp)
.LBE2:
	.loc 1 237 0
	movl	8(%ebp), %eax
	movl	956(%eax), %ecx
	movl	8(%ebp), %eax
	movl	1032(%eax), %edx
	movl	1028(%eax), %eax
	leal	(%ecx,%eax), %eax
	.loc 1 238 0
	cmpl	-68(%ebp), %eax
	ja	.L7
	.loc 1 240 0
	movl	8(%ebp), %eax
	movl	956(%eax), %ecx
	movl	8(%ebp), %eax
	movl	1032(%eax), %edx
	movl	1028(%eax), %eax
	leal	(%ecx,%eax), %eax
	cmpl	-68(%ebp), %eax
	je	.L39
	.loc 1 242 0
	movl	$137, 8(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_dwarf_error@PLT
	.loc 1 243 0
	movl	$1, -140(%ebp)
	jmp	.L4
.L39:
	.loc 1 246 0
	movl	-112(%ebp), %eax
	movl	-108(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	$15, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_dwarf_get_alloc@PLT
	movl	%eax, -56(%ebp)
	.loc 1 248 0
	cmpl	$0, -56(%ebp)
	jne	.L41
	.loc 1 249 0
	movl	$62, 8(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_dwarf_error@PLT
	.loc 1 250 0
	movl	$1, -140(%ebp)
	jmp	.L4
.L41:
	.loc 1 253 0
	movl	-44(%ebp), %eax
	movl	%eax, -52(%ebp)
	.loc 1 254 0
	movl	$0, -88(%ebp)
	movl	$0, -84(%ebp)
	jmp	.L43
.L44:
	.loc 1 255 0
	movl	-88(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	addl	-56(%ebp), %edx
	movl	-52(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%edx)
	.loc 1 256 0
	movl	-52(%ebp), %eax
	movl	%eax, -48(%ebp)
	.loc 1 257 0
	movl	-52(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -52(%ebp)
	.loc 1 258 0
	movl	$30, 8(%esp)
	movl	$0, 12(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dwarf_dealloc@PLT
	.loc 1 254 0
	addl	$1, -88(%ebp)
	adcl	$0, -84(%ebp)
.L43:
	movl	-88(%ebp), %eax
	movl	-84(%ebp), %edx
	movl	%eax, -152(%ebp)
	movl	%edx, -148(%ebp)
	movl	-148(%ebp), %edx
	cmpl	-108(%ebp), %edx
	jb	.L44
	movl	-148(%ebp), %ecx
	cmpl	-108(%ebp), %ecx
	ja	.L46
	movl	-152(%ebp), %eax
	cmpl	-112(%ebp), %eax
	jb	.L44
.L46:
	.loc 1 261 0
	movl	12(%ebp), %edx
	movl	-56(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 262 0
	movl	-112(%ebp), %eax
	movl	-108(%ebp), %edx
	movl	16(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	.loc 1 263 0
	movl	$0, -140(%ebp)
.L4:
	movl	-140(%ebp), %eax
	.loc 1 264 0
	addl	$156, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE5:
	.size	dwarf_get_aranges, .-dwarf_get_aranges
.globl _dwarf_get_aranges_addr_offsets
	.type	_dwarf_get_aranges_addr_offsets, @function
_dwarf_get_aranges_addr_offsets:
.LFB6:
	.loc 1 283 0
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
	subl	$172, %esp
.LCFI11:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 311 0
	movl	$0, -112(%ebp)
	movl	$0, -108(%ebp)
	.loc 1 324 0
	movl	$0, -52(%ebp)
	.loc 1 333 0
	cmpl	$0, 24(%ebp)
	je	.L50
	.loc 1 334 0
	movl	24(%ebp), %eax
	movl	$0, (%eax)
.L50:
	.loc 1 336 0
	cmpl	$0, 8(%ebp)
	jne	.L52
	.loc 1 337 0
	movl	$81, 8(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	_dwarf_error@PLT
	.loc 1 338 0
	movl	$1, -156(%ebp)
	jmp	.L54
.L52:
	.loc 1 341 0
	movl	8(%ebp), %ecx
	addl	$956, %ecx
	movl	8(%ebp), %eax
	movzwl	1114(%eax), %eax
	movzwl	%ax, %edx
	movl	24(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_dwarf_load_section@PLT
	movl	%eax, -40(%ebp)
	.loc 1 346 0
	cmpl	$0, -40(%ebp)
	je	.L55
	.loc 1 347 0
	movl	-40(%ebp), %eax
	movl	%eax, -156(%ebp)
	jmp	.L54
.L55:
	.loc 1 350 0
	movl	8(%ebp), %eax
	movl	956(%eax), %eax
	movl	%eax, -76(%ebp)
.L57:
.LBB10:
	.loc 1 356 0
	movl	-76(%ebp), %eax
	movl	%eax, -68(%ebp)
.LBB11:
	.loc 1 360 0
	movl	$0, -136(%ebp)
	movl	$0, -132(%ebp)
	movl	8(%ebp), %eax
	movl	1108(%eax), %ecx
	leal	-136(%ebp), %edx
	movl	$4, 8(%esp)
	movl	-76(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	*%ecx
	movl	-136(%ebp), %eax
	movl	-132(%ebp), %edx
	movl	%eax, -128(%ebp)
	movl	%edx, -124(%ebp)
.LBE11:
	movl	-128(%ebp), %eax
	xorl	$-1, %eax
	orl	-124(%ebp), %eax
	testl	%eax, %eax
	jne	.L58
	movl	$8, -36(%ebp)
	addl	$4, -76(%ebp)
	movl	$4, -32(%ebp)
.LBB12:
	movl	$0, -136(%ebp)
	movl	$0, -132(%ebp)
	movl	8(%ebp), %eax
	movl	1108(%eax), %ecx
	leal	-136(%ebp), %edx
	movl	$8, 8(%esp)
	movl	-76(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	*%ecx
	movl	-136(%ebp), %eax
	movl	-132(%ebp), %edx
	movl	%eax, -128(%ebp)
	movl	%edx, -124(%ebp)
.LBE12:
	addl	$8, -76(%ebp)
	jmp	.L60
.L58:
	movl	-128(%ebp), %eax
	orl	-124(%ebp), %eax
	testl	%eax, %eax
	jne	.L61
	movl	8(%ebp), %eax
	movzbl	1142(%eax), %eax
	testb	%al, %al
	je	.L61
.LBB13:
	movl	$0, -136(%ebp)
	movl	$0, -132(%ebp)
	movl	8(%ebp), %eax
	movl	1108(%eax), %ecx
	leal	-136(%ebp), %edx
	movl	$8, 8(%esp)
	movl	-76(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	*%ecx
	movl	-136(%ebp), %eax
	movl	-132(%ebp), %edx
	movl	%eax, -128(%ebp)
	movl	%edx, -124(%ebp)
.LBE13:
	movl	$8, -36(%ebp)
	addl	$8, -76(%ebp)
	movl	$0, -32(%ebp)
	jmp	.L60
.L61:
	movl	$0, -32(%ebp)
	movl	$4, -36(%ebp)
	movl	-36(%ebp), %eax
	addl	%eax, -76(%ebp)
.L60:
.LBB14:
	.loc 1 365 0
	movl	$0, -136(%ebp)
	movl	$0, -132(%ebp)
	movl	8(%ebp), %eax
	movl	1108(%eax), %ecx
	leal	-136(%ebp), %edx
	movl	$2, 8(%esp)
	movl	-76(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	*%ecx
	movl	-136(%ebp), %eax
	movl	-132(%ebp), %edx
	movw	%ax, -22(%ebp)
.LBE14:
	.loc 1 367 0
	addl	$2, -76(%ebp)
	.loc 1 368 0
	addl	$-2, -128(%ebp)
	adcl	$-1, -124(%ebp)
	.loc 1 369 0
	cmpw	$2, -22(%ebp)
	je	.L64
	.loc 1 370 0
	movl	$48, 8(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_dwarf_error@PLT
	.loc 1 371 0
	movl	$1, -156(%ebp)
	jmp	.L54
.L64:
.LBB15:
	.loc 1 374 0
	movl	$0, -136(%ebp)
	movl	$0, -132(%ebp)
	movl	8(%ebp), %eax
	movl	1108(%eax), %ecx
	movl	-36(%ebp), %eax
	leal	-136(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	-76(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	*%ecx
	movl	-136(%ebp), %eax
	movl	-132(%ebp), %edx
	movl	%eax, -120(%ebp)
	movl	%edx, -116(%ebp)
.LBE15:
	.loc 1 376 0
	movl	-36(%ebp), %eax
	addl	%eax, -76(%ebp)
	.loc 1 377 0
	movl	-36(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	subl	%eax, -128(%ebp)
	sbbl	%edx, -124(%ebp)
	.loc 1 378 0
	movl	8(%ebp), %eax
	movl	996(%eax), %edx
	movl	1000(%eax), %ecx
	movl	%edx, -152(%ebp)
	movl	%ecx, -148(%ebp)
	movl	-148(%ebp), %ecx
	cmpl	-116(%ebp), %ecx
	ja	.L66
	movl	-148(%ebp), %eax
	cmpl	-116(%ebp), %eax
	jb	.L68
	movl	-152(%ebp), %edx
	cmpl	-120(%ebp), %edx
	ja	.L66
.L68:
	.loc 1 379 0
	movl	$134, 8(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_dwarf_error@PLT
	.loc 1 380 0
	movl	$1, -156(%ebp)
	jmp	.L54
.L66:
	.loc 1 383 0
	movl	-76(%ebp), %eax
	movzbl	(%eax), %eax
	movb	%al, -19(%ebp)
	.loc 1 384 0
	addl	$1, -76(%ebp)
	.loc 1 385 0
	addl	$-1, -128(%ebp)
	adcl	$-1, -124(%ebp)
	.loc 1 387 0
	movl	-76(%ebp), %eax
	movzbl	(%eax), %eax
	movb	%al, -18(%ebp)
	.loc 1 388 0
	addl	$1, -76(%ebp)
	.loc 1 389 0
	addl	$-1, -128(%ebp)
	adcl	$-1, -124(%ebp)
	.loc 1 390 0
	cmpb	$0, -18(%ebp)
	je	.L69
	.loc 1 391 0
	movl	$135, 8(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_dwarf_error@PLT
	.loc 1 392 0
	movl	$1, -156(%ebp)
	jmp	.L54
.L69:
	.loc 1 396 0
	movl	-76(%ebp), %edx
	movl	-68(%ebp), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, %esi
	movl	%eax, %edi
	sarl	$31, %edi
	movzbl	-19(%ebp), %eax
	addl	%eax, %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	%esi, (%esp)
	movl	%edi, 4(%esp)
	call	__umoddi3@PLT
	movb	%al, -17(%ebp)
	.loc 1 398 0
	cmpb	$0, -17(%ebp)
	je	.L98
	.loc 1 399 0
	movzbl	-19(%ebp), %eax
	addl	%eax, %eax
	movl	%eax, %edx
	addl	-76(%ebp), %edx
	movzbl	-17(%ebp), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, -76(%ebp)
	.loc 1 400 0
	movzbl	-19(%ebp), %eax
	leal	(%eax,%eax), %edx
	movzbl	-17(%ebp), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, %edx
	sarl	$31, %edx
	subl	%eax, -128(%ebp)
	sbbl	%edx, -124(%ebp)
	jmp	.L98
.L71:
.L98:
	.loc 1 404 0
	movl	-76(%ebp), %eax
	movl	%eax, -72(%ebp)
.LBB16:
	.loc 1 405 0
	movl	$0, -136(%ebp)
	movl	$0, -132(%ebp)
	movl	8(%ebp), %eax
	movl	1108(%eax), %ecx
	movl	8(%ebp), %eax
	movzbl	45(%eax), %eax
	movzbl	%al, %eax
	leal	-136(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	-76(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	*%ecx
	movl	-136(%ebp), %eax
	movl	-132(%ebp), %edx
	movl	%eax, -104(%ebp)
	movl	%edx, -100(%ebp)
.LBE16:
	.loc 1 407 0
	movl	8(%ebp), %eax
	movzbl	45(%eax), %eax
	movzbl	%al, %eax
	addl	%eax, -76(%ebp)
	.loc 1 408 0
	movl	8(%ebp), %eax
	movzbl	45(%eax), %ecx
	movzbl	%cl, %eax
	movl	$0, %edx
	subl	%eax, -128(%ebp)
	sbbl	%edx, -124(%ebp)
.LBB17:
	.loc 1 410 0
	movl	$0, -136(%ebp)
	movl	$0, -132(%ebp)
	movl	8(%ebp), %eax
	movl	1108(%eax), %ecx
	movl	-36(%ebp), %eax
	leal	-136(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	-76(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	*%ecx
	movl	-136(%ebp), %eax
	movl	-132(%ebp), %edx
	movl	%eax, -96(%ebp)
	movl	%edx, -92(%ebp)
.LBE17:
	.loc 1 412 0
	movl	-36(%ebp), %eax
	addl	%eax, -76(%ebp)
	.loc 1 413 0
	movl	-36(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	subl	%eax, -128(%ebp)
	sbbl	%edx, -124(%ebp)
	.loc 1 415 0
	movl	-104(%ebp), %eax
	orl	-100(%ebp), %eax
	testl	%eax, %eax
	jne	.L73
	movl	-96(%ebp), %eax
	orl	-92(%ebp), %eax
	testl	%eax, %eax
	je	.L75
.L73:
	.loc 1 417 0
	movl	$1, 8(%esp)
	movl	$0, 12(%esp)
	movl	$17, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_dwarf_get_alloc@PLT
	movl	%eax, -64(%ebp)
	.loc 1 419 0
	cmpl	$0, -64(%ebp)
	jne	.L76
	.loc 1 420 0
	movl	$62, 8(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_dwarf_error@PLT
	.loc 1 421 0
	movl	$1, -156(%ebp)
	jmp	.L54
.L76:
	.loc 1 424 0
	movl	-64(%ebp), %ecx
	movl	-104(%ebp), %eax
	movl	-100(%ebp), %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	.loc 1 425 0
	movl	-64(%ebp), %ecx
	movl	-96(%ebp), %eax
	movl	-92(%ebp), %edx
	movl	%eax, 8(%ecx)
	movl	%edx, 12(%ecx)
	.loc 1 426 0
	movl	-72(%ebp), %edx
	movl	8(%ebp), %eax
	movl	956(%eax), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	-64(%ebp), %ecx
	movl	%eax, 16(%ecx)
	movl	%edx, 20(%ecx)
	.loc 1 428 0
	movl	-64(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, 24(%edx)
	.loc 1 429 0
	addl	$1, -112(%ebp)
	adcl	$0, -108(%ebp)
	.loc 1 431 0
	movl	$1, 8(%esp)
	movl	$0, 12(%esp)
	movl	$30, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_dwarf_get_alloc@PLT
	movl	%eax, -60(%ebp)
	.loc 1 433 0
	cmpl	$0, -60(%ebp)
	jne	.L78
	.loc 1 434 0
	movl	$62, 8(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_dwarf_error@PLT
	.loc 1 435 0
	movl	$1, -156(%ebp)
	jmp	.L54
.L78:
	.loc 1 438 0
	movl	-60(%ebp), %edx
	movl	-64(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 439 0
	cmpl	$0, -52(%ebp)
	jne	.L80
	.loc 1 440 0
	movl	-60(%ebp), %eax
	movl	%eax, -56(%ebp)
	movl	-56(%ebp), %eax
	movl	%eax, -52(%ebp)
	jmp	.L75
.L80:
	.loc 1 442 0
	movl	-56(%ebp), %eax
	movl	-60(%ebp), %edx
	movl	%edx, 4(%eax)
	.loc 1 443 0
	movl	-60(%ebp), %eax
	movl	%eax, -56(%ebp)
.L75:
	.loc 1 446 0
	movl	-104(%ebp), %eax
	orl	-100(%ebp), %eax
	testl	%eax, %eax
	jne	.L71
	movl	-96(%ebp), %eax
	orl	-92(%ebp), %eax
	testl	%eax, %eax
	jne	.L71
	.loc 1 448 0
	movl	-128(%ebp), %eax
	orl	-124(%ebp), %eax
	testl	%eax, %eax
	je	.L84
	.loc 1 449 0
	movl	$136, 8(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_dwarf_error@PLT
	.loc 1 450 0
	movl	$1, -156(%ebp)
	jmp	.L54
.L84:
.LBE10:
	.loc 1 453 0
	movl	8(%ebp), %eax
	movl	956(%eax), %ecx
	movl	8(%ebp), %eax
	movl	1032(%eax), %edx
	movl	1028(%eax), %eax
	leal	(%ecx,%eax), %eax
	.loc 1 454 0
	cmpl	-76(%ebp), %eax
	ja	.L57
	.loc 1 456 0
	movl	8(%ebp), %eax
	movl	956(%eax), %ecx
	movl	8(%ebp), %eax
	movl	1032(%eax), %edx
	movl	1028(%eax), %eax
	leal	(%ecx,%eax), %eax
	cmpl	-76(%ebp), %eax
	je	.L87
	.loc 1 458 0
	movl	$137, 8(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_dwarf_error@PLT
	.loc 1 459 0
	movl	$1, -156(%ebp)
	jmp	.L54
.L87:
	.loc 1 462 0
	movl	-112(%ebp), %eax
	movl	-108(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	$28, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_dwarf_get_alloc@PLT
	movl	%eax, -48(%ebp)
	.loc 1 464 0
	cmpl	$0, -48(%ebp)
	jne	.L89
	.loc 1 465 0
	movl	$62, 8(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_dwarf_error@PLT
	.loc 1 466 0
	movl	$1, -156(%ebp)
	jmp	.L54
.L89:
	.loc 1 468 0
	movl	-112(%ebp), %eax
	movl	-108(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	$28, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_dwarf_get_alloc@PLT
	movl	%eax, -44(%ebp)
	.loc 1 470 0
	cmpl	$0, -44(%ebp)
	jne	.L91
	.loc 1 471 0
	movl	$62, 8(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_dwarf_error@PLT
	.loc 1 472 0
	movl	$1, -156(%ebp)
	jmp	.L54
.L91:
	.loc 1 475 0
	movl	-52(%ebp), %eax
	movl	%eax, -60(%ebp)
	.loc 1 476 0
	movl	$0, -88(%ebp)
	movl	$0, -84(%ebp)
	jmp	.L93
.L94:
.LBB18:
	.loc 1 477 0
	movl	-60(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 479 0
	movl	-88(%ebp), %eax
	sall	$3, %eax
	movl	%eax, %ecx
	addl	-48(%ebp), %ecx
	movl	-28(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	.loc 1 480 0
	movl	-88(%ebp), %eax
	sall	$3, %eax
	movl	%eax, %ecx
	addl	-44(%ebp), %ecx
	movl	-28(%ebp), %eax
	movl	20(%eax), %edx
	movl	16(%eax), %eax
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	.loc 1 481 0
	movl	-60(%ebp), %eax
	movl	%eax, -56(%ebp)
	.loc 1 482 0
	movl	-60(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -60(%ebp)
	.loc 1 483 0
	movl	$17, 8(%esp)
	movl	$0, 12(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dwarf_dealloc@PLT
	.loc 1 484 0
	movl	$30, 8(%esp)
	movl	$0, 12(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dwarf_dealloc@PLT
.LBE18:
	.loc 1 476 0
	addl	$1, -88(%ebp)
	adcl	$0, -84(%ebp)
.L93:
	movl	-88(%ebp), %eax
	movl	-84(%ebp), %edx
	movl	%eax, -168(%ebp)
	movl	%edx, -164(%ebp)
	movl	-164(%ebp), %edx
	cmpl	-108(%ebp), %edx
	jb	.L94
	movl	-164(%ebp), %ecx
	cmpl	-108(%ebp), %ecx
	ja	.L96
	movl	-168(%ebp), %eax
	cmpl	-112(%ebp), %eax
	jb	.L94
.L96:
	.loc 1 486 0
	movl	-112(%ebp), %eax
	movl	-108(%ebp), %edx
	movl	20(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	.loc 1 487 0
	movl	16(%ebp), %edx
	movl	-44(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 488 0
	movl	12(%ebp), %edx
	movl	-48(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 489 0
	movl	$0, -156(%ebp)
.L54:
	movl	-156(%ebp), %eax
	.loc 1 490 0
	addl	$172, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE6:
	.size	_dwarf_get_aranges_addr_offsets, .-_dwarf_get_aranges_addr_offsets
.globl dwarf_get_arange
	.type	dwarf_get_arange, @function
dwarf_get_arange:
.LFB7:
	.loc 1 507 0
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
	subl	$92, %esp
.LCFI17:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	12(%ebp), %eax
	movl	%eax, -40(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, -36(%ebp)
	movl	20(%ebp), %eax
	movl	%eax, -48(%ebp)
	movl	24(%ebp), %eax
	movl	%eax, -44(%ebp)
	.loc 1 511 0
	cmpl	$0, 8(%ebp)
	jne	.L100
	.loc 1 512 0
	movl	$138, 8(%esp)
	movl	32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	_dwarf_error@PLT
	.loc 1 513 0
	movl	$1, -68(%ebp)
	jmp	.L102
.L100:
	.loc 1 516 0
	movl	$0, -32(%ebp)
	movl	$0, -28(%ebp)
	jmp	.L103
.L104:
	.loc 1 517 0
	movl	-32(%ebp), %eax
	sall	$2, %eax
	addl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 518 0
	movl	-20(%ebp), %eax
	movl	(%eax), %edx
	movl	4(%eax), %ecx
	movl	%edx, -64(%ebp)
	movl	%ecx, -60(%ebp)
	movl	-60(%ebp), %ecx
	cmpl	-44(%ebp), %ecx
	ja	.L105
	movl	-60(%ebp), %esi
	cmpl	-44(%ebp), %esi
	jb	.L107
	movl	-64(%ebp), %edi
	cmpl	-48(%ebp), %edi
	ja	.L105
.L107:
	movl	-20(%ebp), %eax
	movl	(%eax), %edx
	movl	4(%eax), %ecx
	movl	%edx, -88(%ebp)
	movl	%ecx, -84(%ebp)
	movl	-20(%ebp), %eax
	movl	12(%eax), %edx
	movl	8(%eax), %eax
	movl	-88(%ebp), %esi
	movl	-84(%ebp), %edi
	addl	%eax, %esi
	adcl	%edx, %edi
	movl	%esi, -56(%ebp)
	movl	%edi, -52(%ebp)
	movl	-52(%ebp), %edi
	cmpl	-44(%ebp), %edi
	jb	.L105
	movl	-52(%ebp), %eax
	cmpl	-44(%ebp), %eax
	ja	.L109
	movl	-56(%ebp), %edx
	cmpl	-48(%ebp), %edx
	jbe	.L105
.L109:
	.loc 1 521 0
	movl	28(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 522 0
	movl	$0, -68(%ebp)
	jmp	.L102
.L105:
	.loc 1 516 0
	addl	$1, -32(%ebp)
	adcl	$0, -28(%ebp)
.L103:
	movl	-32(%ebp), %esi
	movl	-28(%ebp), %edi
	movl	%esi, -80(%ebp)
	movl	%edi, -76(%ebp)
	movl	-76(%ebp), %edi
	cmpl	-36(%ebp), %edi
	jb	.L104
	movl	-76(%ebp), %eax
	cmpl	-36(%ebp), %eax
	ja	.L111
	movl	-80(%ebp), %edx
	cmpl	-40(%ebp), %edx
	jb	.L104
.L111:
	.loc 1 526 0
	movl	$-1, -68(%ebp)
.L102:
	movl	-68(%ebp), %eax
	.loc 1 527 0
	addl	$92, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE7:
	.size	dwarf_get_arange, .-dwarf_get_arange
.globl dwarf_get_cu_die_offset
	.type	dwarf_get_cu_die_offset, @function
dwarf_get_cu_die_offset:
.LFB8:
	.loc 1 541 0
	pushl	%ebp
.LCFI18:
	movl	%esp, %ebp
.LCFI19:
	pushl	%ebx
.LCFI20:
	subl	$52, %esp
.LCFI21:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 545 0
	cmpl	$0, 8(%ebp)
	jne	.L114
	.loc 1 546 0
	movl	$139, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	_dwarf_error@PLT
	.loc 1 547 0
	movl	$1, -28(%ebp)
	jmp	.L116
.L114:
	.loc 1 551 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 554 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	16(%eax), %eax
	movl	%eax, -24(%ebp)
	movl	%edx, -20(%ebp)
	.loc 1 555 0
	movl	-16(%ebp), %eax
	movl	940(%eax), %eax
	testl	%eax, %eax
	jne	.L117
.LBB19:
	.loc 1 556 0
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_dwarf_load_debug_info@PLT
	movl	%eax, -12(%ebp)
	.loc 1 557 0
	cmpl	$0, -12(%ebp)
	je	.L117
	.loc 1 558 0
	movl	-12(%ebp), %eax
	movl	%eax, -28(%ebp)
	jmp	.L116
.L117:
.LBE19:
	.loc 1 562 0
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_dwarf_length_of_cu_header@PLT
	addl	-24(%ebp), %eax
	adcl	-20(%ebp), %edx
	movl	12(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	.loc 1 563 0
	movl	$0, -28(%ebp)
.L116:
	movl	-28(%ebp), %eax
	.loc 1 564 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE8:
	.size	dwarf_get_cu_die_offset, .-dwarf_get_cu_die_offset
.globl dwarf_get_arange_cu_header_offset
	.type	dwarf_get_arange_cu_header_offset, @function
dwarf_get_arange_cu_header_offset:
.LFB9:
	.loc 1 577 0
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
	.loc 1 578 0
	cmpl	$0, 8(%ebp)
	jne	.L122
	.loc 1 579 0
	movl	$139, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	_dwarf_error@PLT
	.loc 1 580 0
	movl	$1, -8(%ebp)
	jmp	.L124
.L122:
	.loc 1 583 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	16(%eax), %eax
	movl	12(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	.loc 1 584 0
	movl	$0, -8(%ebp)
.L124:
	movl	-8(%ebp), %eax
	.loc 1 585 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE9:
	.size	dwarf_get_arange_cu_header_offset, .-dwarf_get_arange_cu_header_offset
.globl dwarf_get_arange_info
	.type	dwarf_get_arange_info, @function
dwarf_get_arange_info:
.LFB10:
	.loc 1 602 0
	pushl	%ebp
.LCFI26:
	movl	%esp, %ebp
.LCFI27:
	pushl	%ebx
.LCFI28:
	subl	$52, %esp
.LCFI29:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 603 0
	cmpl	$0, 8(%ebp)
	jne	.L127
	.loc 1 604 0
	movl	$139, 8(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	_dwarf_error@PLT
	.loc 1 605 0
	movl	$1, -28(%ebp)
	jmp	.L129
.L127:
	.loc 1 608 0
	cmpl	$0, 12(%ebp)
	je	.L130
	.loc 1 609 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	12(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
.L130:
	.loc 1 610 0
	cmpl	$0, 16(%ebp)
	je	.L132
	.loc 1 611 0
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	8(%eax), %eax
	movl	16(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
.L132:
	.loc 1 612 0
	cmpl	$0, 20(%ebp)
	je	.L134
.LBB20:
	.loc 1 613 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 614 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	16(%eax), %eax
	movl	%eax, -24(%ebp)
	movl	%edx, -20(%ebp)
	.loc 1 616 0
	movl	-16(%ebp), %eax
	movl	940(%eax), %eax
	testl	%eax, %eax
	jne	.L136
.LBB21:
	.loc 1 617 0
	movl	24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_dwarf_load_debug_info@PLT
	movl	%eax, -12(%ebp)
	.loc 1 618 0
	cmpl	$0, -12(%ebp)
	je	.L136
	.loc 1 619 0
	movl	-12(%ebp), %eax
	movl	%eax, -28(%ebp)
	jmp	.L129
.L136:
.LBE21:
	.loc 1 623 0
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_dwarf_length_of_cu_header@PLT
	addl	-24(%ebp), %eax
	adcl	-20(%ebp), %edx
	movl	20(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
.L134:
.LBE20:
	.loc 1 626 0
	movl	$0, -28(%ebp)
.L129:
	movl	-28(%ebp), %eax
	.loc 1 627 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE10:
	.size	dwarf_get_arange_info, .-dwarf_get_arange_info
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
	.long	.LFB6
	.long	.LFE6-.LFB6
	.byte	0x4
	.long	.LCFI6-.LFB6
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
.LEFDE2:
.LSFDE4:
	.long	.LEFDE4-.LASFDE4
.LASFDE4:
	.long	.Lframe0
	.long	.LFB7
	.long	.LFE7-.LFB7
	.byte	0x4
	.long	.LCFI12-.LFB7
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
.LEFDE4:
.LSFDE6:
	.long	.LEFDE6-.LASFDE6
.LASFDE6:
	.long	.Lframe0
	.long	.LFB8
	.long	.LFE8-.LFB8
	.byte	0x4
	.long	.LCFI18-.LFB8
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
.LEFDE6:
.LSFDE8:
	.long	.LEFDE8-.LASFDE8
.LASFDE8:
	.long	.Lframe0
	.long	.LFB9
	.long	.LFE9-.LFB9
	.byte	0x4
	.long	.LCFI22-.LFB9
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
.LEFDE8:
.LSFDE10:
	.long	.LEFDE10-.LASFDE10
.LASFDE10:
	.long	.Lframe0
	.long	.LFB10
	.long	.LFE10-.LFB10
	.byte	0x4
	.long	.LCFI26-.LFB10
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
.LEFDE10:
	.file 2 "../../include/libdwarf.h"
	.file 3 "../../libdwarf/libdwarf/dwarf_opaque.h"
	.file 4 "../../libdwarf/libdwarf/dwarf_error.h"
	.file 5 "../../libdwarf/libdwarf/dwarf_base_types.h"
	.file 6 "../../libdwarf/libdwarf/dwarf_util.h"
	.file 7 "../../libdwarf/libdwarf/dwarf_alloc.h"
	.file 8 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h"
	.file 9 "../../libdwarf/libdwarf/dwarf_arange.h"
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
	.long	.LFE6-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST2:
	.long	.LFB7-.Ltext0
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
	.long	.LFE7-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST3:
	.long	.LFB8-.Ltext0
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
	.long	.LFE8-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST4:
	.long	.LFB9-.Ltext0
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
	.long	.LFE9-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST5:
	.long	.LFB10-.Ltext0
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
	.long	.LFE10-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
	.section	.debug_info
	.long	0x1812
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.Ldebug_line0
	.long	.Letext0
	.long	.Ltext0
	.string	"GNU C 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.byte	0x1
	.string	"../../libdwarf/libdwarf/dwarf_arange.c"
	.string	"/usa/handong/simplnano/cmplr-open64-merge/targia32_sl1/libdwarf"
	.uleb128 0x2
	.string	"size_t"
	.byte	0x8
	.byte	0xd6
	.long	0xb2
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
	.byte	0x2
	.byte	0x47
	.long	0x178
	.uleb128 0x6
	.byte	0x4
	.long	0x17e
	.uleb128 0x7
	.string	"Elf"
	.byte	0x1
	.uleb128 0x2
	.string	"Dwarf_Off"
	.byte	0x2
	.byte	0x5b
	.long	0x129
	.uleb128 0x2
	.string	"Dwarf_Unsigned"
	.byte	0x2
	.byte	0x5c
	.long	0x129
	.uleb128 0x2
	.string	"Dwarf_Half"
	.byte	0x2
	.byte	0x5d
	.long	0xca
	.uleb128 0x2
	.string	"Dwarf_Small"
	.byte	0x2
	.byte	0x5e
	.long	0xb9
	.uleb128 0x2
	.string	"Dwarf_Signed"
	.byte	0x2
	.byte	0x5f
	.long	0x118
	.uleb128 0x2
	.string	"Dwarf_Addr"
	.byte	0x2
	.byte	0x60
	.long	0x129
	.uleb128 0x2
	.string	"Dwarf_Ptr"
	.byte	0x2
	.byte	0x62
	.long	0x156
	.uleb128 0x2
	.string	"Dwarf_Debug"
	.byte	0x2
	.byte	0xc2
	.long	0x21a
	.uleb128 0x6
	.byte	0x4
	.long	0x220
	.uleb128 0x8
	.long	0x99e
	.string	"Dwarf_Debug_s"
	.value	0x478
	.byte	0x2
	.byte	0xc2
	.uleb128 0x9
	.string	"de_elf"
	.byte	0x3
	.byte	0x77
	.long	0x160
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.string	"de_access"
	.byte	0x3
	.byte	0x79
	.long	0x195
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.string	"de_errhand"
	.byte	0x3
	.byte	0x7a
	.long	0xab1
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.string	"de_errarg"
	.byte	0x3
	.byte	0x7b
	.long	0x1f6
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.string	"de_cu_context"
	.byte	0x3
	.byte	0x81
	.long	0xb59
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x9
	.string	"de_cu_context_list"
	.byte	0x3
	.byte	0x86
	.long	0xb59
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.string	"de_cu_context_list_end"
	.byte	0x3
	.byte	0x8b
	.long	0xb59
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x9
	.string	"de_offdie_cu_context"
	.byte	0x3
	.byte	0x90
	.long	0xb59
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.string	"de_offdie_cu_context_end"
	.byte	0x3
	.byte	0x91
	.long	0xb59
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x9
	.string	"de_info_last_offset"
	.byte	0x3
	.byte	0x94
	.long	0xae3
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.string	"de_length_size"
	.byte	0x3
	.byte	0x9a
	.long	0x1bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x9
	.string	"de_pointer_size"
	.byte	0x3
	.byte	0x9e
	.long	0x1bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x2d
	.uleb128 0x9
	.string	"de_assume_string_in_bounds"
	.byte	0x3
	.byte	0xa3
	.long	0x1bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x2e
	.uleb128 0x9
	.string	"de_alloc_hdr"
	.byte	0x3
	.byte	0xa8
	.long	0xf11
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x9
	.string	"de_cie_data"
	.byte	0x3
	.byte	0xb4
	.long	0xf21
	.byte	0x3
	.byte	0x23
	.uleb128 0x394
	.uleb128 0x9
	.string	"de_cie_count"
	.byte	0x3
	.byte	0xb6
	.long	0x1d0
	.byte	0x3
	.byte	0x23
	.uleb128 0x398
	.uleb128 0x9
	.string	"de_fde_data"
	.byte	0x3
	.byte	0xb9
	.long	0xf27
	.byte	0x3
	.byte	0x23
	.uleb128 0x3a0
	.uleb128 0x9
	.string	"de_fde_count"
	.byte	0x3
	.byte	0xbb
	.long	0x1d0
	.byte	0x3
	.byte	0x23
	.uleb128 0x3a4
	.uleb128 0x9
	.string	"de_debug_info"
	.byte	0x3
	.byte	0xbd
	.long	0xb1e
	.byte	0x3
	.byte	0x23
	.uleb128 0x3ac
	.uleb128 0x9
	.string	"de_debug_abbrev"
	.byte	0x3
	.byte	0xbe
	.long	0xb1e
	.byte	0x3
	.byte	0x23
	.uleb128 0x3b0
	.uleb128 0x9
	.string	"de_debug_line"
	.byte	0x3
	.byte	0xbf
	.long	0xb1e
	.byte	0x3
	.byte	0x23
	.uleb128 0x3b4
	.uleb128 0x9
	.string	"de_debug_loc"
	.byte	0x3
	.byte	0xc0
	.long	0xb1e
	.byte	0x3
	.byte	0x23
	.uleb128 0x3b8
	.uleb128 0x9
	.string	"de_debug_aranges"
	.byte	0x3
	.byte	0xc1
	.long	0xb1e
	.byte	0x3
	.byte	0x23
	.uleb128 0x3bc
	.uleb128 0x9
	.string	"de_debug_macinfo"
	.byte	0x3
	.byte	0xc2
	.long	0xb1e
	.byte	0x3
	.byte	0x23
	.uleb128 0x3c0
	.uleb128 0x9
	.string	"de_debug_pubnames"
	.byte	0x3
	.byte	0xc3
	.long	0xb1e
	.byte	0x3
	.byte	0x23
	.uleb128 0x3c4
	.uleb128 0x9
	.string	"de_debug_str"
	.byte	0x3
	.byte	0xc4
	.long	0xb1e
	.byte	0x3
	.byte	0x23
	.uleb128 0x3c8
	.uleb128 0x9
	.string	"de_debug_frame"
	.byte	0x3
	.byte	0xc5
	.long	0xb1e
	.byte	0x3
	.byte	0x23
	.uleb128 0x3cc
	.uleb128 0x9
	.string	"de_debug_frame_eh_gnu"
	.byte	0x3
	.byte	0xc6
	.long	0xb1e
	.byte	0x3
	.byte	0x23
	.uleb128 0x3d0
	.uleb128 0x9
	.string	"de_debug_funcnames"
	.byte	0x3
	.byte	0xc9
	.long	0xb1e
	.byte	0x3
	.byte	0x23
	.uleb128 0x3d4
	.uleb128 0x9
	.string	"de_debug_typenames"
	.byte	0x3
	.byte	0xca
	.long	0xb1e
	.byte	0x3
	.byte	0x23
	.uleb128 0x3d8
	.uleb128 0x9
	.string	"de_debug_varnames"
	.byte	0x3
	.byte	0xcb
	.long	0xb1e
	.byte	0x3
	.byte	0x23
	.uleb128 0x3dc
	.uleb128 0x9
	.string	"de_debug_weaknames"
	.byte	0x3
	.byte	0xcc
	.long	0xb1e
	.byte	0x3
	.byte	0x23
	.uleb128 0x3e0
	.uleb128 0x9
	.string	"de_debug_info_size"
	.byte	0x3
	.byte	0xce
	.long	0x195
	.byte	0x3
	.byte	0x23
	.uleb128 0x3e4
	.uleb128 0x9
	.string	"de_debug_abbrev_size"
	.byte	0x3
	.byte	0xcf
	.long	0x195
	.byte	0x3
	.byte	0x23
	.uleb128 0x3ec
	.uleb128 0x9
	.string	"de_debug_line_size"
	.byte	0x3
	.byte	0xd0
	.long	0x195
	.byte	0x3
	.byte	0x23
	.uleb128 0x3f4
	.uleb128 0x9
	.string	"de_debug_loc_size"
	.byte	0x3
	.byte	0xd1
	.long	0x195
	.byte	0x3
	.byte	0x23
	.uleb128 0x3fc
	.uleb128 0x9
	.string	"de_debug_aranges_size"
	.byte	0x3
	.byte	0xd2
	.long	0x195
	.byte	0x3
	.byte	0x23
	.uleb128 0x404
	.uleb128 0x9
	.string	"de_debug_macinfo_size"
	.byte	0x3
	.byte	0xd3
	.long	0x195
	.byte	0x3
	.byte	0x23
	.uleb128 0x40c
	.uleb128 0x9
	.string	"de_debug_pubnames_size"
	.byte	0x3
	.byte	0xd4
	.long	0x195
	.byte	0x3
	.byte	0x23
	.uleb128 0x414
	.uleb128 0x9
	.string	"de_debug_str_size"
	.byte	0x3
	.byte	0xd5
	.long	0x195
	.byte	0x3
	.byte	0x23
	.uleb128 0x41c
	.uleb128 0x9
	.string	"de_debug_frame_size"
	.byte	0x3
	.byte	0xd8
	.long	0x195
	.byte	0x3
	.byte	0x23
	.uleb128 0x424
	.uleb128 0x9
	.string	"de_debug_frame_size_eh_gnu"
	.byte	0x3
	.byte	0xda
	.long	0x195
	.byte	0x3
	.byte	0x23
	.uleb128 0x42c
	.uleb128 0x9
	.string	"de_debug_funcnames_size"
	.byte	0x3
	.byte	0xdd
	.long	0x195
	.byte	0x3
	.byte	0x23
	.uleb128 0x434
	.uleb128 0x9
	.string	"de_debug_typenames_size"
	.byte	0x3
	.byte	0xde
	.long	0x195
	.byte	0x3
	.byte	0x23
	.uleb128 0x43c
	.uleb128 0x9
	.string	"de_debug_varnames_size"
	.byte	0x3
	.byte	0xdf
	.long	0x195
	.byte	0x3
	.byte	0x23
	.uleb128 0x444
	.uleb128 0x9
	.string	"de_debug_weaknames_size"
	.byte	0x3
	.byte	0xe0
	.long	0x195
	.byte	0x3
	.byte	0x23
	.uleb128 0x44c
	.uleb128 0x9
	.string	"de_copy_word"
	.byte	0x3
	.byte	0xe2
	.long	0xf4e
	.byte	0x3
	.byte	0x23
	.uleb128 0x454
	.uleb128 0x9
	.string	"de_same_endian"
	.byte	0x3
	.byte	0xe3
	.long	0xb9
	.byte	0x3
	.byte	0x23
	.uleb128 0x458
	.uleb128 0x9
	.string	"de_elf_must_close"
	.byte	0x3
	.byte	0xe4
	.long	0xb9
	.byte	0x3
	.byte	0x23
	.uleb128 0x459
	.uleb128 0x9
	.string	"de_debug_aranges_index"
	.byte	0x3
	.byte	0xf1
	.long	0x1ab
	.byte	0x3
	.byte	0x23
	.uleb128 0x45a
	.uleb128 0x9
	.string	"de_debug_line_index"
	.byte	0x3
	.byte	0xf2
	.long	0x1ab
	.byte	0x3
	.byte	0x23
	.uleb128 0x45c
	.uleb128 0x9
	.string	"de_debug_loc_index"
	.byte	0x3
	.byte	0xf3
	.long	0x1ab
	.byte	0x3
	.byte	0x23
	.uleb128 0x45e
	.uleb128 0x9
	.string	"de_debug_macinfo_index"
	.byte	0x3
	.byte	0xf4
	.long	0x1ab
	.byte	0x3
	.byte	0x23
	.uleb128 0x460
	.uleb128 0x9
	.string	"de_debug_pubnames_index"
	.byte	0x3
	.byte	0xf5
	.long	0x1ab
	.byte	0x3
	.byte	0x23
	.uleb128 0x462
	.uleb128 0x9
	.string	"de_debug_funcnames_index"
	.byte	0x3
	.byte	0xf6
	.long	0x1ab
	.byte	0x3
	.byte	0x23
	.uleb128 0x464
	.uleb128 0x9
	.string	"de_debug_typenames_index"
	.byte	0x3
	.byte	0xf7
	.long	0x1ab
	.byte	0x3
	.byte	0x23
	.uleb128 0x466
	.uleb128 0x9
	.string	"de_debug_varnames_index"
	.byte	0x3
	.byte	0xf8
	.long	0x1ab
	.byte	0x3
	.byte	0x23
	.uleb128 0x468
	.uleb128 0x9
	.string	"de_debug_weaknames_index"
	.byte	0x3
	.byte	0xf9
	.long	0x1ab
	.byte	0x3
	.byte	0x23
	.uleb128 0x46a
	.uleb128 0x9
	.string	"de_debug_frame_index"
	.byte	0x3
	.byte	0xfa
	.long	0x1ab
	.byte	0x3
	.byte	0x23
	.uleb128 0x46c
	.uleb128 0x9
	.string	"de_debug_frame_eh_gnu_index"
	.byte	0x3
	.byte	0xfb
	.long	0x1ab
	.byte	0x3
	.byte	0x23
	.uleb128 0x46e
	.uleb128 0x9
	.string	"de_debug_str_index"
	.byte	0x3
	.byte	0xfc
	.long	0x1ab
	.byte	0x3
	.byte	0x23
	.uleb128 0x470
	.uleb128 0x9
	.string	"de_debug_info_index"
	.byte	0x3
	.byte	0xfd
	.long	0x1ab
	.byte	0x3
	.byte	0x23
	.uleb128 0x472
	.uleb128 0x9
	.string	"de_debug_abbrev_index"
	.byte	0x3
	.byte	0xfe
	.long	0x1ab
	.byte	0x3
	.byte	0x23
	.uleb128 0x474
	.uleb128 0x9
	.string	"de_big_endian_object"
	.byte	0x3
	.byte	0xff
	.long	0xb9
	.byte	0x3
	.byte	0x23
	.uleb128 0x476
	.byte	0x0
	.uleb128 0x2
	.string	"Dwarf_Error"
	.byte	0x2
	.byte	0xca
	.long	0x9b1
	.uleb128 0x6
	.byte	0x4
	.long	0x9b7
	.uleb128 0xa
	.long	0x9e2
	.string	"Dwarf_Error_s"
	.byte	0x4
	.byte	0x2
	.byte	0xca
	.uleb128 0x9
	.string	"er_errval"
	.byte	0x4
	.byte	0x2e
	.long	0xaf5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x2
	.string	"Dwarf_Fde"
	.byte	0x2
	.byte	0xcd
	.long	0x9f3
	.uleb128 0x6
	.byte	0x4
	.long	0x9f9
	.uleb128 0x7
	.string	"Dwarf_Fde_s"
	.byte	0x1
	.uleb128 0x2
	.string	"Dwarf_Cie"
	.byte	0x2
	.byte	0xce
	.long	0xa18
	.uleb128 0x6
	.byte	0x4
	.long	0xa1e
	.uleb128 0x7
	.string	"Dwarf_Cie_s"
	.byte	0x1
	.uleb128 0x2
	.string	"Dwarf_Arange"
	.byte	0x2
	.byte	0xcf
	.long	0xa40
	.uleb128 0x6
	.byte	0x4
	.long	0xa46
	.uleb128 0xa
	.long	0xab1
	.string	"Dwarf_Arange_s"
	.byte	0x1c
	.byte	0x2
	.byte	0xcf
	.uleb128 0x9
	.string	"ar_address"
	.byte	0x9
	.byte	0x2e
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.string	"ar_length"
	.byte	0x9
	.byte	0x31
	.long	0x195
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.string	"ar_info_offset"
	.byte	0x9
	.byte	0x36
	.long	0x184
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.string	"ar_dbg"
	.byte	0x9
	.byte	0x39
	.long	0x207
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x2
	.string	"Dwarf_Handler"
	.byte	0x2
	.byte	0xdc
	.long	0xac6
	.uleb128 0x6
	.byte	0x4
	.long	0xacc
	.uleb128 0xb
	.long	0xadd
	.byte	0x1
	.uleb128 0xc
	.long	0x99e
	.uleb128 0xc
	.long	0x1f6
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.long	0x195
	.uleb128 0x2
	.string	"Dwarf_Word"
	.byte	0x5
	.byte	0x52
	.long	0xe0
	.uleb128 0x2
	.string	"Dwarf_Sword"
	.byte	0x5
	.byte	0x53
	.long	0x143
	.uleb128 0x2
	.string	"Dwarf_Byte_Ptr"
	.byte	0x5
	.byte	0x58
	.long	0xb1e
	.uleb128 0x6
	.byte	0x4
	.long	0x1bd
	.uleb128 0x2
	.string	"Dwarf_Abbrev_List"
	.byte	0x5
	.byte	0x6a
	.long	0xb3d
	.uleb128 0x6
	.byte	0x4
	.long	0xb43
	.uleb128 0x7
	.string	"Dwarf_Abbrev_List_s"
	.byte	0x1
	.uleb128 0x2
	.string	"Dwarf_CU_Context"
	.byte	0x5
	.byte	0x6c
	.long	0xb71
	.uleb128 0x6
	.byte	0x4
	.long	0xb77
	.uleb128 0xa
	.long	0xcc5
	.string	"Dwarf_CU_Context_s"
	.byte	0x28
	.byte	0x5
	.byte	0x6c
	.uleb128 0x9
	.string	"cc_dbg"
	.byte	0x3
	.byte	0x67
	.long	0x207
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.string	"cc_length"
	.byte	0x3
	.byte	0x68
	.long	0xae3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.string	"cc_length_size"
	.byte	0x3
	.byte	0x69
	.long	0x1bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.string	"cc_extension_size"
	.byte	0x3
	.byte	0x6a
	.long	0x1bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0x9
	.string	"cc_version_stamp"
	.byte	0x3
	.byte	0x6b
	.long	0x1ab
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x9
	.string	"cc_abbrev_offset"
	.byte	0x3
	.byte	0x6c
	.long	0xaf5
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.string	"cc_address_size"
	.byte	0x3
	.byte	0x6d
	.long	0x1bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.string	"cc_debug_info_offset"
	.byte	0x3
	.byte	0x6e
	.long	0xae3
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x9
	.string	"cc_last_abbrev_ptr"
	.byte	0x3
	.byte	0x6f
	.long	0xb08
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.string	"cc_abbrev_hash_table"
	.byte	0x3
	.byte	0x70
	.long	0xcc5
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x9
	.string	"cc_next"
	.byte	0x3
	.byte	0x71
	.long	0xb59
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.string	"cc_offset_length"
	.byte	0x3
	.byte	0x72
	.long	0xb9
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.byte	0x0
	.uleb128 0x2
	.string	"Dwarf_Hash_Table"
	.byte	0x5
	.byte	0x6d
	.long	0xcdd
	.uleb128 0x6
	.byte	0x4
	.long	0xce3
	.uleb128 0xa
	.long	0xd24
	.string	"Dwarf_Hash_Table_s"
	.byte	0x8
	.byte	0x5
	.byte	0x6d
	.uleb128 0x9
	.string	"at_head"
	.byte	0x6
	.byte	0xff
	.long	0xb24
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"at_tail"
	.byte	0x6
	.value	0x100
	.long	0xb24
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"Dwarf_Alloc_Hdr"
	.byte	0x5
	.byte	0x70
	.long	0xd3b
	.uleb128 0x6
	.byte	0x4
	.long	0xd41
	.uleb128 0xa
	.long	0xe34
	.string	"Dwarf_Alloc_Hdr_s"
	.byte	0x1c
	.byte	0x5
	.byte	0x70
	.uleb128 0x9
	.string	"ah_struct_user_holds"
	.byte	0x7
	.byte	0x49
	.long	0xaf5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.string	"ah_bytes_one_struct"
	.byte	0x7
	.byte	0x4e
	.long	0x1ab
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.string	"ah_structs_per_chunk"
	.byte	0x7
	.byte	0x53
	.long	0xae3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.string	"ah_bytes_malloc_per_chunk"
	.byte	0x7
	.byte	0x58
	.long	0xae3
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.string	"ah_chunks_allocated"
	.byte	0x7
	.byte	0x5b
	.long	0xaf5
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.string	"ah_alloc_area_head"
	.byte	0x7
	.byte	0x60
	.long	0xe34
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x9
	.string	"ah_last_alloc_area"
	.byte	0x7
	.byte	0x65
	.long	0xe34
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x2
	.string	"Dwarf_Alloc_Area"
	.byte	0x7
	.byte	0x2f
	.long	0xe4c
	.uleb128 0x6
	.byte	0x4
	.long	0xe52
	.uleb128 0xa
	.long	0xf11
	.string	"Dwarf_Alloc_Area_s"
	.byte	0x1c
	.byte	0x7
	.byte	0x2f
	.uleb128 0x9
	.string	"aa_free_list"
	.byte	0x7
	.byte	0x72
	.long	0x1f6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.string	"aa_free_structs_in_chunk"
	.byte	0x7
	.byte	0x77
	.long	0xaf5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.string	"aa_blob_start"
	.byte	0x7
	.byte	0x7d
	.long	0xb1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.string	"aa_blob_end"
	.byte	0x7
	.byte	0x80
	.long	0xb1e
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.string	"aa_alloc_hdr"
	.byte	0x7
	.byte	0x84
	.long	0xd24
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.string	"aa_next"
	.byte	0x7
	.byte	0x89
	.long	0xe34
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x9
	.string	"aa_prev"
	.byte	0x7
	.byte	0x8a
	.long	0xe34
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0xe
	.long	0xf21
	.long	0xd41
	.uleb128 0xf
	.long	0x14f
	.byte	0x1e
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.long	0xa07
	.uleb128 0x6
	.byte	0x4
	.long	0x9e2
	.uleb128 0x10
	.long	0xf47
	.byte	0x1
	.long	0x156
	.uleb128 0xc
	.long	0x156
	.uleb128 0xc
	.long	0xf47
	.uleb128 0xc
	.long	0xa4
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.long	0xf4d
	.uleb128 0x11
	.uleb128 0x6
	.byte	0x4
	.long	0xf2d
	.uleb128 0x12
	.string	"Dwarf_Chain"
	.byte	0x3
	.value	0x103
	.long	0xf68
	.uleb128 0x6
	.byte	0x4
	.long	0xf6e
	.uleb128 0x13
	.long	0xfac
	.string	"Dwarf_Chain_s"
	.byte	0x8
	.byte	0x3
	.value	0x103
	.uleb128 0xd
	.string	"ch_item"
	.byte	0x3
	.value	0x105
	.long	0x156
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"ch_next"
	.byte	0x3
	.value	0x106
	.long	0xf54
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"BIGGEST_UINT"
	.byte	0x6
	.byte	0x72
	.long	0x195
	.uleb128 0x14
	.long	0x124e
	.byte	0x1
	.string	"dwarf_get_aranges"
	.byte	0x1
	.byte	0x3f
	.byte	0x1
	.long	0x111
	.long	.LFB5
	.long	.LFE5
	.long	.LLST0
	.uleb128 0x15
	.string	"dbg"
	.byte	0x1
	.byte	0x3c
	.long	0x207
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x15
	.string	"aranges"
	.byte	0x1
	.byte	0x3d
	.long	0x124e
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x15
	.string	"returned_count"
	.byte	0x1
	.byte	0x3e
	.long	0x125a
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x16
	.long	.LASF1
	.byte	0x1
	.byte	0x3e
	.long	0x1260
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x17
	.long	.LASF2
	.byte	0x1
	.byte	0x41
	.long	0xb1e
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x17
	.long	.LASF3
	.byte	0x1
	.byte	0x46
	.long	0xb1e
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x18
	.string	"version"
	.byte	0x1
	.byte	0x4a
	.long	0x1ab
	.byte	0x2
	.byte	0x91
	.sleb128 -30
	.uleb128 0x17
	.long	.LASF4
	.byte	0x1
	.byte	0x4d
	.long	0x184
	.byte	0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x17
	.long	.LASF5
	.byte	0x1
	.byte	0x50
	.long	0x1bd
	.byte	0x2
	.byte	0x91
	.sleb128 -27
	.uleb128 0x17
	.long	.LASF6
	.byte	0x1
	.byte	0x53
	.long	0x1bd
	.byte	0x2
	.byte	0x91
	.sleb128 -26
	.uleb128 0x17
	.long	.LASF7
	.byte	0x1
	.byte	0x55
	.long	0x1bd
	.byte	0x2
	.byte	0x91
	.sleb128 -25
	.uleb128 0x17
	.long	.LASF8
	.byte	0x1
	.byte	0x58
	.long	0x195
	.byte	0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x17
	.long	.LASF9
	.byte	0x1
	.byte	0x5b
	.long	0x1e4
	.byte	0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x17
	.long	.LASF10
	.byte	0x1
	.byte	0x5e
	.long	0x195
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x17
	.long	.LASF11
	.byte	0x1
	.byte	0x60
	.long	0xa2c
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x18
	.string	"arange_block"
	.byte	0x1
	.byte	0x60
	.long	0x1254
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x18
	.string	"i"
	.byte	0x1
	.byte	0x62
	.long	0x195
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x17
	.long	.LASF12
	.byte	0x1
	.byte	0x65
	.long	0xf54
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x17
	.long	.LASF13
	.byte	0x1
	.byte	0x65
	.long	0xf54
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x17
	.long	.LASF14
	.byte	0x1
	.byte	0x65
	.long	0xf54
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x18
	.string	"res"
	.byte	0x1
	.byte	0x67
	.long	0x111
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x19
	.long	.LBB2
	.long	.LBE2
	.uleb128 0x17
	.long	.LASF15
	.byte	0x1
	.byte	0x7c
	.long	0x195
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x18
	.string	"arange_ptr_past_end"
	.byte	0x1
	.byte	0x7d
	.long	0xb1e
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x17
	.long	.LASF16
	.byte	0x1
	.byte	0x7f
	.long	0x111
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x17
	.long	.LASF17
	.byte	0x1
	.byte	0x81
	.long	0x111
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1a
	.long	0x11a2
	.long	.LBB3
	.long	.LBE3
	.uleb128 0x17
	.long	.LASF18
	.byte	0x1
	.byte	0x86
	.long	0xfac
	.byte	0x3
	.byte	0x91
	.sleb128 -136
	.byte	0x0
	.uleb128 0x1a
	.long	0x11bf
	.long	.LBB4
	.long	.LBE4
	.uleb128 0x17
	.long	.LASF18
	.byte	0x1
	.byte	0x86
	.long	0xfac
	.byte	0x3
	.byte	0x91
	.sleb128 -136
	.byte	0x0
	.uleb128 0x1a
	.long	0x11dc
	.long	.LBB5
	.long	.LBE5
	.uleb128 0x17
	.long	.LASF18
	.byte	0x1
	.byte	0x86
	.long	0xfac
	.byte	0x3
	.byte	0x91
	.sleb128 -136
	.byte	0x0
	.uleb128 0x1a
	.long	0x11f9
	.long	.LBB6
	.long	.LBE6
	.uleb128 0x17
	.long	.LASF18
	.byte	0x1
	.byte	0x8c
	.long	0xfac
	.byte	0x3
	.byte	0x91
	.sleb128 -136
	.byte	0x0
	.uleb128 0x1a
	.long	0x1216
	.long	.LBB7
	.long	.LBE7
	.uleb128 0x17
	.long	.LASF18
	.byte	0x1
	.byte	0x95
	.long	0xfac
	.byte	0x3
	.byte	0x91
	.sleb128 -136
	.byte	0x0
	.uleb128 0x1a
	.long	0x1233
	.long	.LBB8
	.long	.LBE8
	.uleb128 0x17
	.long	.LASF18
	.byte	0x1
	.byte	0xb8
	.long	0xfac
	.byte	0x3
	.byte	0x91
	.sleb128 -136
	.byte	0x0
	.uleb128 0x19
	.long	.LBB9
	.long	.LBE9
	.uleb128 0x17
	.long	.LASF18
	.byte	0x1
	.byte	0xbd
	.long	0xfac
	.byte	0x3
	.byte	0x91
	.sleb128 -136
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.long	0x1254
	.uleb128 0x6
	.byte	0x4
	.long	0xa2c
	.uleb128 0x6
	.byte	0x4
	.long	0x1d0
	.uleb128 0x6
	.byte	0x4
	.long	0x99e
	.uleb128 0x1b
	.long	0x1560
	.byte	0x1
	.string	"_dwarf_get_aranges_addr_offsets"
	.byte	0x1
	.value	0x11b
	.byte	0x1
	.long	0x111
	.long	.LFB6
	.long	.LFE6
	.long	.LLST1
	.uleb128 0x1c
	.string	"dbg"
	.byte	0x1
	.value	0x116
	.long	0x207
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1c
	.string	"addrs"
	.byte	0x1
	.value	0x117
	.long	0x1560
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1c
	.string	"offsets"
	.byte	0x1
	.value	0x118
	.long	0x156c
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1c
	.string	"count"
	.byte	0x1
	.value	0x119
	.long	0x125a
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x1d
	.long	.LASF1
	.byte	0x1
	.value	0x11a
	.long	0x1260
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x1e
	.long	.LASF2
	.byte	0x1
	.value	0x11d
	.long	0xb1e
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x1f
	.string	"arange_start_ptr"
	.byte	0x1
	.value	0x11e
	.long	0xb1e
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1e
	.long	.LASF3
	.byte	0x1
	.value	0x123
	.long	0xb1e
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x1e
	.long	.LASF15
	.byte	0x1
	.value	0x126
	.long	0x195
	.byte	0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x1f
	.string	"version"
	.byte	0x1
	.value	0x129
	.long	0x1ab
	.byte	0x2
	.byte	0x91
	.sleb128 -30
	.uleb128 0x1e
	.long	.LASF4
	.byte	0x1
	.value	0x12c
	.long	0x184
	.byte	0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x1e
	.long	.LASF5
	.byte	0x1
	.value	0x12f
	.long	0x1bd
	.byte	0x2
	.byte	0x91
	.sleb128 -27
	.uleb128 0x1e
	.long	.LASF6
	.byte	0x1
	.value	0x132
	.long	0x1bd
	.byte	0x2
	.byte	0x91
	.sleb128 -26
	.uleb128 0x1e
	.long	.LASF7
	.byte	0x1
	.value	0x134
	.long	0x1bd
	.byte	0x2
	.byte	0x91
	.sleb128 -25
	.uleb128 0x1e
	.long	.LASF8
	.byte	0x1
	.value	0x137
	.long	0x195
	.byte	0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x1e
	.long	.LASF9
	.byte	0x1
	.value	0x13a
	.long	0x1e4
	.byte	0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x1e
	.long	.LASF10
	.byte	0x1
	.value	0x13d
	.long	0x195
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x1e
	.long	.LASF11
	.byte	0x1
	.value	0x13f
	.long	0xa2c
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1f
	.string	"i"
	.byte	0x1
	.value	0x141
	.long	0x195
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x1e
	.long	.LASF12
	.byte	0x1
	.value	0x144
	.long	0xf54
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x1e
	.long	.LASF13
	.byte	0x1
	.value	0x144
	.long	0xf54
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1e
	.long	.LASF14
	.byte	0x1
	.value	0x144
	.long	0xf54
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1f
	.string	"arange_addrs"
	.byte	0x1
	.value	0x146
	.long	0x1566
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1f
	.string	"arange_offsets"
	.byte	0x1
	.value	0x147
	.long	0x1572
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1f
	.string	"res"
	.byte	0x1
	.value	0x149
	.long	0x111
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1a
	.long	0x1547
	.long	.LBB10
	.long	.LBE10
	.uleb128 0x1e
	.long	.LASF16
	.byte	0x1
	.value	0x160
	.long	0x111
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1e
	.long	.LASF17
	.byte	0x1
	.value	0x162
	.long	0x111
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1a
	.long	0x1496
	.long	.LBB11
	.long	.LBE11
	.uleb128 0x1e
	.long	.LASF18
	.byte	0x1
	.value	0x168
	.long	0xfac
	.byte	0x3
	.byte	0x91
	.sleb128 -144
	.byte	0x0
	.uleb128 0x1a
	.long	0x14b4
	.long	.LBB12
	.long	.LBE12
	.uleb128 0x1e
	.long	.LASF18
	.byte	0x1
	.value	0x168
	.long	0xfac
	.byte	0x3
	.byte	0x91
	.sleb128 -144
	.byte	0x0
	.uleb128 0x1a
	.long	0x14d2
	.long	.LBB13
	.long	.LBE13
	.uleb128 0x1e
	.long	.LASF18
	.byte	0x1
	.value	0x168
	.long	0xfac
	.byte	0x3
	.byte	0x91
	.sleb128 -144
	.byte	0x0
	.uleb128 0x1a
	.long	0x14f0
	.long	.LBB14
	.long	.LBE14
	.uleb128 0x1e
	.long	.LASF18
	.byte	0x1
	.value	0x16d
	.long	0xfac
	.byte	0x3
	.byte	0x91
	.sleb128 -144
	.byte	0x0
	.uleb128 0x1a
	.long	0x150e
	.long	.LBB15
	.long	.LBE15
	.uleb128 0x1e
	.long	.LASF18
	.byte	0x1
	.value	0x176
	.long	0xfac
	.byte	0x3
	.byte	0x91
	.sleb128 -144
	.byte	0x0
	.uleb128 0x1a
	.long	0x152c
	.long	.LBB16
	.long	.LBE16
	.uleb128 0x1e
	.long	.LASF18
	.byte	0x1
	.value	0x195
	.long	0xfac
	.byte	0x3
	.byte	0x91
	.sleb128 -144
	.byte	0x0
	.uleb128 0x19
	.long	.LBB17
	.long	.LBE17
	.uleb128 0x1e
	.long	.LASF18
	.byte	0x1
	.value	0x19a
	.long	0xfac
	.byte	0x3
	.byte	0x91
	.sleb128 -144
	.byte	0x0
	.byte	0x0
	.uleb128 0x19
	.long	.LBB18
	.long	.LBE18
	.uleb128 0x1f
	.string	"ar"
	.byte	0x1
	.value	0x1dd
	.long	0xa2c
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.long	0x1566
	.uleb128 0x6
	.byte	0x4
	.long	0x1e4
	.uleb128 0x6
	.byte	0x4
	.long	0x1572
	.uleb128 0x6
	.byte	0x4
	.long	0x184
	.uleb128 0x1b
	.long	0x1627
	.byte	0x1
	.string	"dwarf_get_arange"
	.byte	0x1
	.value	0x1fb
	.byte	0x1
	.long	0x111
	.long	.LFB7
	.long	.LFE7
	.long	.LLST2
	.uleb128 0x1c
	.string	"aranges"
	.byte	0x1
	.value	0x1f7
	.long	0x1254
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1d
	.long	.LASF8
	.byte	0x1
	.value	0x1f8
	.long	0x195
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1c
	.string	"address"
	.byte	0x1
	.value	0x1f9
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1c
	.string	"returned_arange"
	.byte	0x1
	.value	0x1fa
	.long	0x1254
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x1d
	.long	.LASF1
	.byte	0x1
	.value	0x1fa
	.long	0x1260
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x1f
	.string	"curr_arange"
	.byte	0x1
	.value	0x1fc
	.long	0xa2c
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1f
	.string	"i"
	.byte	0x1
	.value	0x1fd
	.long	0x195
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0x0
	.uleb128 0x1b
	.long	0x16cd
	.byte	0x1
	.string	"dwarf_get_cu_die_offset"
	.byte	0x1
	.value	0x21d
	.byte	0x1
	.long	0x111
	.long	.LFB8
	.long	.LFE8
	.long	.LLST3
	.uleb128 0x1d
	.long	.LASF11
	.byte	0x1
	.value	0x21a
	.long	0xa2c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1c
	.string	"returned_offset"
	.byte	0x1
	.value	0x21b
	.long	0x1572
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1d
	.long	.LASF1
	.byte	0x1
	.value	0x21c
	.long	0x1260
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1f
	.string	"dbg"
	.byte	0x1
	.value	0x21e
	.long	0x207
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1f
	.string	"offset"
	.byte	0x1
	.value	0x21f
	.long	0x184
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x19
	.long	.LBB19
	.long	.LBE19
	.uleb128 0x1f
	.string	"res"
	.byte	0x1
	.value	0x22c
	.long	0x111
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.long	0x174d
	.byte	0x1
	.string	"dwarf_get_arange_cu_header_offset"
	.byte	0x1
	.value	0x241
	.byte	0x1
	.long	0x111
	.long	.LFB9
	.long	.LFE9
	.long	.LLST4
	.uleb128 0x1d
	.long	.LASF11
	.byte	0x1
	.value	0x23e
	.long	0xa2c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1c
	.string	"cu_header_offset_returned"
	.byte	0x1
	.value	0x23f
	.long	0x1572
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1d
	.long	.LASF1
	.byte	0x1
	.value	0x240
	.long	0x1260
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.byte	0x0
	.uleb128 0x20
	.byte	0x1
	.string	"dwarf_get_arange_info"
	.byte	0x1
	.value	0x25a
	.byte	0x1
	.long	0x111
	.long	.LFB10
	.long	.LFE10
	.long	.LLST5
	.uleb128 0x1d
	.long	.LASF11
	.byte	0x1
	.value	0x256
	.long	0xa2c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1c
	.string	"start"
	.byte	0x1
	.value	0x257
	.long	0x1566
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1d
	.long	.LASF15
	.byte	0x1
	.value	0x258
	.long	0xadd
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1c
	.string	"cu_die_offset"
	.byte	0x1
	.value	0x259
	.long	0x1572
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x1d
	.long	.LASF1
	.byte	0x1
	.value	0x259
	.long	0x1260
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x19
	.long	.LBB20
	.long	.LBE20
	.uleb128 0x1f
	.string	"dbg"
	.byte	0x1
	.value	0x265
	.long	0x207
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1f
	.string	"offset"
	.byte	0x1
	.value	0x266
	.long	0x184
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x19
	.long	.LBB21
	.long	.LBE21
	.uleb128 0x1f
	.string	"res"
	.byte	0x1
	.value	0x269
	.long	0x111
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.long	0xb9
	.value	0x2
	.long	.Ldebug_info0
	.long	0x1816
	.long	0xfc0
	.string	"dwarf_get_aranges"
	.long	0x1266
	.string	"_dwarf_get_aranges_addr_offsets"
	.long	0x1578
	.string	"dwarf_get_arange"
	.long	0x1627
	.string	"dwarf_get_cu_die_offset"
	.long	0x16cd
	.string	"dwarf_get_arange_cu_header_offset"
	.long	0x174d
	.string	"dwarf_get_arange_info"
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
.LASF11:
	.string	"arange"
.LASF8:
	.string	"arange_count"
.LASF15:
	.string	"length"
.LASF1:
	.string	"error"
.LASF9:
	.string	"range_address"
.LASF4:
	.string	"info_offset"
.LASF18:
	.string	"_ltmp"
.LASF3:
	.string	"header_ptr"
.LASF12:
	.string	"curr_chain"
.LASF0:
	.string	"unsigned int"
.LASF16:
	.string	"local_length_size"
.LASF14:
	.string	"head_chain"
.LASF10:
	.string	"range_length"
.LASF5:
	.string	"address_size"
.LASF17:
	.string	"local_extension_size"
.LASF13:
	.string	"prev_chain"
.LASF6:
	.string	"segment_size"
.LASF7:
	.string	"remainder"
.LASF2:
	.string	"arange_ptr"
	.ident	"GCC: (GNU) 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.section	.text.__i686.get_pc_thunk.bx,"axG",@progbits,__i686.get_pc_thunk.bx,comdat
.globl __i686.get_pc_thunk.bx
	.hidden	__i686.get_pc_thunk.bx
	.type	__i686.get_pc_thunk.bx, @function
__i686.get_pc_thunk.bx:
	movl	(%esp), %ebx
	ret
	.section	.note.GNU-stack,"",@progbits
