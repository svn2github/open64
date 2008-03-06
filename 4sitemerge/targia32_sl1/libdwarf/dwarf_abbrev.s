	.file	"dwarf_abbrev.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
.globl dwarf_get_abbrev
	.type	dwarf_get_abbrev, @function
dwarf_get_abbrev:
.LFB5:
	.file 1 "../../libdwarf/libdwarf/dwarf_abbrev.c"
	.loc 1 53 0
	pushl	%ebp
.LCFI0:
	movl	%esp, %ebp
.LCFI1:
	pushl	%ebx
.LCFI2:
	subl	$100, %esp
.LCFI3:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	12(%ebp), %eax
	movl	%eax, -64(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, -60(%ebp)
	.loc 1 59 0
	movl	$0, -56(%ebp)
	movl	$0, -52(%ebp)
	.loc 1 63 0
	cmpl	$0, 8(%ebp)
	jne	.L2
	.loc 1 64 0
	movl	$81, 8(%esp)
	movl	32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	_dwarf_error@PLT
	.loc 1 65 0
	movl	$1, -76(%ebp)
	jmp	.L4
.L2:
	.loc 1 67 0
	movl	8(%ebp), %eax
	movl	944(%eax), %eax
	testl	%eax, %eax
	jne	.L5
.LBB2:
	.loc 1 70 0
	movl	32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_dwarf_load_debug_info@PLT
	movl	%eax, -16(%ebp)
	.loc 1 72 0
	cmpl	$0, -16(%ebp)
	je	.L5
	.loc 1 73 0
	movl	-16(%ebp), %eax
	movl	%eax, -76(%ebp)
	jmp	.L4
.L5:
.LBE2:
	.loc 1 77 0
	movl	8(%ebp), %eax
	movl	1004(%eax), %edx
	movl	1008(%eax), %ecx
	movl	%edx, -72(%ebp)
	movl	%ecx, -68(%ebp)
	movl	-68(%ebp), %ecx
	cmpl	-60(%ebp), %ecx
	ja	.L8
	movl	-68(%ebp), %eax
	cmpl	-60(%ebp), %eax
	jb	.L10
	movl	-72(%ebp), %edx
	cmpl	-64(%ebp), %edx
	ja	.L8
.L10:
	.loc 1 78 0
	movl	$-1, -76(%ebp)
	jmp	.L4
.L8:
	.loc 1 82 0
	movl	$1, 8(%esp)
	movl	$0, 12(%esp)
	movl	$18, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_dwarf_get_alloc@PLT
	movl	%eax, -20(%ebp)
	.loc 1 83 0
	cmpl	$0, -20(%ebp)
	jne	.L11
	.loc 1 84 0
	movl	$62, 8(%esp)
	movl	32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_dwarf_error@PLT
	.loc 1 85 0
	movl	$1, -76(%ebp)
	jmp	.L4
.L11:
	.loc 1 87 0
	movl	-20(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, 12(%edx)
	.loc 1 88 0
	cmpl	$0, 20(%ebp)
	je	.L13
	cmpl	$0, 28(%ebp)
	jne	.L15
.L13:
	.loc 1 89 0
	movl	$110, 8(%esp)
	movl	32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_dwarf_error@PLT
	.loc 1 90 0
	movl	$1, -76(%ebp)
	jmp	.L4
.L15:
	.loc 1 94 0
	movl	28(%ebp), %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	.loc 1 95 0
	cmpl	$0, 24(%ebp)
	je	.L16
	.loc 1 96 0
	movl	24(%ebp), %eax
	movl	$1, (%eax)
	movl	$0, 4(%eax)
.L16:
	.loc 1 98 0
	movl	8(%ebp), %eax
	movl	944(%eax), %edx
	movl	-64(%ebp), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 99 0
	movl	8(%ebp), %eax
	movl	944(%eax), %ecx
	movl	8(%ebp), %eax
	movl	1008(%eax), %edx
	movl	1004(%eax), %eax
	leal	(%ecx,%eax), %eax
	movl	%eax, -24(%ebp)
.LBB3:
	.loc 1 102 0
	leal	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	_dwarf_decode_u_leb128@PLT
	movl	%eax, -48(%ebp)
	movl	%edx, -44(%ebp)
	movl	-32(%ebp), %eax
	addl	%eax, -28(%ebp)
.LBE3:
	.loc 1 103 0
	movl	-48(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 104 0
	movl	-20(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L18
	.loc 1 105 0
	movl	20(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	%edx, (%eax)
	.loc 1 106 0
	movl	28(%ebp), %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	.loc 1 107 0
	cmpl	$0, 24(%ebp)
	je	.L20
	.loc 1 108 0
	movl	24(%ebp), %eax
	movl	$1, (%eax)
	movl	$0, 4(%eax)
.L20:
	.loc 1 110 0
	movl	$0, -76(%ebp)
	jmp	.L4
.L18:
.LBB4:
	.loc 1 113 0
	leal	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	_dwarf_decode_u_leb128@PLT
	movl	%eax, -48(%ebp)
	movl	%edx, -44(%ebp)
	movl	-32(%ebp), %eax
	addl	%eax, -28(%ebp)
.LBE4:
	.loc 1 114 0
	movl	-48(%ebp), %eax
	movl	%eax, %edx
	movl	-20(%ebp), %eax
	movw	%dx, 4(%eax)
	.loc 1 115 0
	movl	-28(%ebp), %eax
	movzbl	(%eax), %edx
	movl	-20(%ebp), %eax
	movb	%dl, 6(%eax)
	addl	$1, -28(%ebp)
	.loc 1 116 0
	movl	-20(%ebp), %edx
	movl	-28(%ebp), %eax
	movl	%eax, 8(%edx)
	jmp	.L33
.L22:
.L33:
.LBB5:
.LBB6:
	.loc 1 121 0
	leal	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	_dwarf_decode_u_leb128@PLT
	movl	%eax, -40(%ebp)
	movl	%edx, -36(%ebp)
	movl	-32(%ebp), %eax
	addl	%eax, -28(%ebp)
.LBE6:
	.loc 1 122 0
	movl	-40(%ebp), %eax
	movw	%ax, -12(%ebp)
.LBB7:
	.loc 1 123 0
	leal	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	_dwarf_decode_u_leb128@PLT
	movl	%eax, -40(%ebp)
	movl	%edx, -36(%ebp)
	movl	-32(%ebp), %eax
	addl	%eax, -28(%ebp)
.LBE7:
	.loc 1 124 0
	movl	-40(%ebp), %eax
	movw	%ax, -10(%ebp)
	.loc 1 126 0
	cmpw	$0, -12(%ebp)
	je	.L23
	.loc 1 127 0
	addl	$1, -56(%ebp)
	adcl	$0, -52(%ebp)
.L23:
.LBE5:
	.loc 1 130 0
	movl	-28(%ebp), %eax
	cmpl	-24(%ebp), %eax
	jae	.L25
	cmpw	$0, -12(%ebp)
	jne	.L22
	cmpw	$0, -10(%ebp)
	jne	.L22
.L25:
	.loc 1 132 0
	movl	-28(%ebp), %eax
	cmpl	-24(%ebp), %eax
	jbe	.L28
	.loc 1 133 0
	movl	$109, 8(%esp)
	movl	32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_dwarf_error@PLT
	.loc 1 134 0
	movl	$1, -76(%ebp)
	jmp	.L4
.L28:
	.loc 1 137 0
	cmpl	$0, 24(%ebp)
	je	.L30
	.loc 1 138 0
	movl	-28(%ebp), %edx
	movl	8(%ebp), %eax
	movl	944(%eax), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, %edx
	sarl	$31, %edx
	subl	-64(%ebp), %eax
	sbbl	-60(%ebp), %edx
	movl	24(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
.L30:
	.loc 1 140 0
	movl	20(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 141 0
	movl	28(%ebp), %ecx
	movl	-56(%ebp), %eax
	movl	-52(%ebp), %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	.loc 1 142 0
	movl	$0, -76(%ebp)
.L4:
	movl	-76(%ebp), %eax
	.loc 1 143 0
	addl	$100, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE5:
	.size	dwarf_get_abbrev, .-dwarf_get_abbrev
.globl dwarf_get_abbrev_code
	.type	dwarf_get_abbrev_code, @function
dwarf_get_abbrev_code:
.LFB6:
	.loc 1 149 0
	pushl	%ebp
.LCFI4:
	movl	%esp, %ebp
.LCFI5:
	pushl	%ebx
.LCFI6:
	subl	$20, %esp
.LCFI7:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 150 0
	cmpl	$0, 8(%ebp)
	jne	.L35
	.loc 1 151 0
	movl	$110, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	_dwarf_error@PLT
	.loc 1 152 0
	movl	$1, -8(%ebp)
	jmp	.L37
.L35:
	.loc 1 155 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	$0, %edx
	movl	12(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	.loc 1 156 0
	movl	$0, -8(%ebp)
.L37:
	movl	-8(%ebp), %eax
	.loc 1 157 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE6:
	.size	dwarf_get_abbrev_code, .-dwarf_get_abbrev_code
.globl dwarf_get_abbrev_tag
	.type	dwarf_get_abbrev_tag, @function
dwarf_get_abbrev_tag:
.LFB7:
	.loc 1 162 0
	pushl	%ebp
.LCFI8:
	movl	%esp, %ebp
.LCFI9:
	pushl	%ebx
.LCFI10:
	subl	$20, %esp
.LCFI11:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 163 0
	cmpl	$0, 8(%ebp)
	jne	.L40
	.loc 1 164 0
	movl	$110, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	_dwarf_error@PLT
	.loc 1 165 0
	movl	$1, -8(%ebp)
	jmp	.L42
.L40:
	.loc 1 168 0
	movl	8(%ebp), %eax
	movzwl	4(%eax), %edx
	movl	12(%ebp), %eax
	movw	%dx, (%eax)
	.loc 1 169 0
	movl	$0, -8(%ebp)
.L42:
	movl	-8(%ebp), %eax
	.loc 1 170 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE7:
	.size	dwarf_get_abbrev_tag, .-dwarf_get_abbrev_tag
.globl dwarf_get_abbrev_children_flag
	.type	dwarf_get_abbrev_children_flag, @function
dwarf_get_abbrev_children_flag:
.LFB8:
	.loc 1 177 0
	pushl	%ebp
.LCFI12:
	movl	%esp, %ebp
.LCFI13:
	pushl	%ebx
.LCFI14:
	subl	$20, %esp
.LCFI15:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 178 0
	cmpl	$0, 8(%ebp)
	jne	.L45
	.loc 1 179 0
	movl	$110, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	_dwarf_error@PLT
	.loc 1 180 0
	movl	$1, -8(%ebp)
	jmp	.L47
.L45:
	.loc 1 183 0
	movl	8(%ebp), %eax
	movzbl	6(%eax), %ecx
	movzbl	%cl, %eax
	movl	$0, %edx
	movl	12(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	.loc 1 184 0
	movl	$0, -8(%ebp)
.L47:
	movl	-8(%ebp), %eax
	.loc 1 185 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE8:
	.size	dwarf_get_abbrev_children_flag, .-dwarf_get_abbrev_children_flag
.globl dwarf_get_abbrev_entry
	.type	dwarf_get_abbrev_entry, @function
dwarf_get_abbrev_entry:
.LFB9:
	.loc 1 194 0
	pushl	%ebp
.LCFI16:
	movl	%esp, %ebp
.LCFI17:
	pushl	%ebx
.LCFI18:
	subl	$68, %esp
.LCFI19:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	12(%ebp), %eax
	movl	%eax, -48(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, -44(%ebp)
	.loc 1 201 0
	cmpl	$0, -44(%ebp)
	jns	.L50
	.loc 1 202 0
	movl	$-1, -52(%ebp)
	jmp	.L52
.L50:
	.loc 1 204 0
	cmpl	$0, 8(%ebp)
	jne	.L53
	.loc 1 205 0
	movl	$110, 8(%esp)
	movl	32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	_dwarf_error@PLT
	.loc 1 206 0
	movl	$1, -52(%ebp)
	jmp	.L52
.L53:
	.loc 1 209 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L55
	.loc 1 210 0
	movl	$-1, -52(%ebp)
	jmp	.L52
.L55:
	.loc 1 213 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	jne	.L57
	.loc 1 214 0
	movl	$81, 8(%esp)
	movl	32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	_dwarf_error@PLT
	.loc 1 215 0
	movl	$1, -52(%ebp)
	jmp	.L52
.L57:
	.loc 1 218 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 219 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	944(%eax), %ecx
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	1008(%eax), %edx
	movl	1004(%eax), %eax
	leal	(%ecx,%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 223 0
	movw	$1, -12(%ebp)
	movw	$1, -10(%ebp)
	.loc 1 224 0
	jmp	.L59
.L60:
.LBB8:
	.loc 1 229 0
	movl	-24(%ebp), %eax
	movl	%eax, -16(%ebp)
.LBB9:
	.loc 1 230 0
	leal	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	_dwarf_decode_u_leb128@PLT
	movl	%eax, -40(%ebp)
	movl	%edx, -36(%ebp)
	movl	-28(%ebp), %eax
	addl	%eax, -24(%ebp)
.LBE9:
	.loc 1 231 0
	movl	-40(%ebp), %eax
	movw	%ax, -12(%ebp)
.LBB10:
	.loc 1 232 0
	leal	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	_dwarf_decode_u_leb128@PLT
	movl	%eax, -40(%ebp)
	movl	%edx, -36(%ebp)
	movl	-28(%ebp), %eax
	addl	%eax, -24(%ebp)
.LBE10:
	.loc 1 233 0
	movl	-40(%ebp), %eax
	movw	%ax, -10(%ebp)
.LBE8:
	.loc 1 226 0
	addl	$-1, -48(%ebp)
	adcl	$-1, -44(%ebp)
.L59:
	.loc 1 224 0
	cmpl	$0, -44(%ebp)
	js	.L61
	movl	-24(%ebp), %eax
	cmpl	-20(%ebp), %eax
	jae	.L61
	cmpw	$0, -12(%ebp)
	jne	.L60
	cmpw	$0, -10(%ebp)
	jne	.L60
.L61:
	.loc 1 236 0
	movl	-24(%ebp), %eax
	cmpl	-20(%ebp), %eax
	jb	.L65
	.loc 1 237 0
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	$109, 8(%esp)
	movl	32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_dwarf_error@PLT
	.loc 1 238 0
	movl	$1, -52(%ebp)
	jmp	.L52
.L65:
	.loc 1 241 0
	cmpl	$0, -44(%ebp)
	js	.L67
	.loc 1 242 0
	movl	$-1, -52(%ebp)
	jmp	.L52
.L67:
	.loc 1 245 0
	cmpl	$0, 24(%ebp)
	je	.L69
	.loc 1 246 0
	movzwl	-10(%ebp), %eax
	movl	$0, %edx
	movl	24(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
.L69:
	.loc 1 247 0
	cmpl	$0, 28(%ebp)
	je	.L71
	.loc 1 248 0
	movl	-16(%ebp), %edx
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	944(%eax), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	28(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
.L71:
	.loc 1 250 0
	movl	20(%ebp), %edx
	movzwl	-12(%ebp), %eax
	movw	%ax, (%edx)
	.loc 1 251 0
	movl	$0, -52(%ebp)
.L52:
	movl	-52(%ebp), %eax
	.loc 1 252 0
	addl	$68, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE9:
	.size	dwarf_get_abbrev_entry, .-dwarf_get_abbrev_entry
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
	.long	.LCFI3-.LCFI1
	.byte	0x83
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
	.long	.LCFI4-.LFB6
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI5-.LCFI4
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI7-.LCFI5
	.byte	0x83
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
	.long	.LCFI8-.LFB7
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI9-.LCFI8
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI11-.LCFI9
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
	.long	.LCFI15-.LCFI13
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
	.long	.LCFI16-.LFB9
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI17-.LCFI16
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI19-.LCFI17
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE8:
	.file 2 "../../include/libdwarf.h"
	.file 3 "../../libdwarf/libdwarf/dwarf_opaque.h"
	.file 4 "../../libdwarf/libdwarf/dwarf_error.h"
	.file 5 "../../libdwarf/libdwarf/dwarf_base_types.h"
	.file 6 "../../libdwarf/libdwarf/dwarf_util.h"
	.file 7 "../../libdwarf/libdwarf/dwarf_alloc.h"
	.file 8 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h"
	.file 9 "../../libdwarf/libdwarf/dwarf_abbrev.h"
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
	.long	.LFE6-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST2:
	.long	.LFB7-.Ltext0
	.long	.LCFI8-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI8-.Ltext0
	.long	.LCFI9-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI9-.Ltext0
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
	.long	.LFE9-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
	.section	.debug_info
	.long	0x139e
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.Ldebug_line0
	.long	.Letext0
	.long	.Ltext0
	.string	"GNU C 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.byte	0x1
	.string	"../../libdwarf/libdwarf/dwarf_abbrev.c"
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
	.string	"Dwarf_Ptr"
	.byte	0x2
	.byte	0x62
	.long	0x156
	.uleb128 0x2
	.string	"Dwarf_Debug"
	.byte	0x2
	.byte	0xc2
	.long	0x208
	.uleb128 0x6
	.byte	0x4
	.long	0x20e
	.uleb128 0x8
	.long	0x98c
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
	.long	0xaaf
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.string	"de_errarg"
	.byte	0x3
	.byte	0x7b
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.string	"de_cu_context"
	.byte	0x3
	.byte	0x81
	.long	0xb57
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x9
	.string	"de_cu_context_list"
	.byte	0x3
	.byte	0x86
	.long	0xb57
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.string	"de_cu_context_list_end"
	.byte	0x3
	.byte	0x8b
	.long	0xb57
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x9
	.string	"de_offdie_cu_context"
	.byte	0x3
	.byte	0x90
	.long	0xb57
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.string	"de_offdie_cu_context_end"
	.byte	0x3
	.byte	0x91
	.long	0xb57
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x9
	.string	"de_info_last_offset"
	.byte	0x3
	.byte	0x94
	.long	0xae1
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
	.long	0xf0f
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x9
	.string	"de_cie_data"
	.byte	0x3
	.byte	0xb4
	.long	0xf1f
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
	.long	0xf25
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
	.long	0xb1c
	.byte	0x3
	.byte	0x23
	.uleb128 0x3ac
	.uleb128 0x9
	.string	"de_debug_abbrev"
	.byte	0x3
	.byte	0xbe
	.long	0xb1c
	.byte	0x3
	.byte	0x23
	.uleb128 0x3b0
	.uleb128 0x9
	.string	"de_debug_line"
	.byte	0x3
	.byte	0xbf
	.long	0xb1c
	.byte	0x3
	.byte	0x23
	.uleb128 0x3b4
	.uleb128 0x9
	.string	"de_debug_loc"
	.byte	0x3
	.byte	0xc0
	.long	0xb1c
	.byte	0x3
	.byte	0x23
	.uleb128 0x3b8
	.uleb128 0x9
	.string	"de_debug_aranges"
	.byte	0x3
	.byte	0xc1
	.long	0xb1c
	.byte	0x3
	.byte	0x23
	.uleb128 0x3bc
	.uleb128 0x9
	.string	"de_debug_macinfo"
	.byte	0x3
	.byte	0xc2
	.long	0xb1c
	.byte	0x3
	.byte	0x23
	.uleb128 0x3c0
	.uleb128 0x9
	.string	"de_debug_pubnames"
	.byte	0x3
	.byte	0xc3
	.long	0xb1c
	.byte	0x3
	.byte	0x23
	.uleb128 0x3c4
	.uleb128 0x9
	.string	"de_debug_str"
	.byte	0x3
	.byte	0xc4
	.long	0xb1c
	.byte	0x3
	.byte	0x23
	.uleb128 0x3c8
	.uleb128 0x9
	.string	"de_debug_frame"
	.byte	0x3
	.byte	0xc5
	.long	0xb1c
	.byte	0x3
	.byte	0x23
	.uleb128 0x3cc
	.uleb128 0x9
	.string	"de_debug_frame_eh_gnu"
	.byte	0x3
	.byte	0xc6
	.long	0xb1c
	.byte	0x3
	.byte	0x23
	.uleb128 0x3d0
	.uleb128 0x9
	.string	"de_debug_funcnames"
	.byte	0x3
	.byte	0xc9
	.long	0xb1c
	.byte	0x3
	.byte	0x23
	.uleb128 0x3d4
	.uleb128 0x9
	.string	"de_debug_typenames"
	.byte	0x3
	.byte	0xca
	.long	0xb1c
	.byte	0x3
	.byte	0x23
	.uleb128 0x3d8
	.uleb128 0x9
	.string	"de_debug_varnames"
	.byte	0x3
	.byte	0xcb
	.long	0xb1c
	.byte	0x3
	.byte	0x23
	.uleb128 0x3dc
	.uleb128 0x9
	.string	"de_debug_weaknames"
	.byte	0x3
	.byte	0xcc
	.long	0xb1c
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
	.long	0xf4c
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
	.long	0x99f
	.uleb128 0x6
	.byte	0x4
	.long	0x9a5
	.uleb128 0xa
	.long	0x9d0
	.string	"Dwarf_Error_s"
	.byte	0x4
	.byte	0x2
	.byte	0xca
	.uleb128 0x9
	.string	"er_errval"
	.byte	0x4
	.byte	0x2e
	.long	0xaf3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x2
	.string	"Dwarf_Abbrev"
	.byte	0x2
	.byte	0xcc
	.long	0x9e4
	.uleb128 0x6
	.byte	0x4
	.long	0x9ea
	.uleb128 0xa
	.long	0xa65
	.string	"Dwarf_Abbrev_s"
	.byte	0x10
	.byte	0x2
	.byte	0xcc
	.uleb128 0x9
	.string	"ab_code"
	.byte	0x9
	.byte	0x2c
	.long	0xae1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.string	"ab_tag"
	.byte	0x9
	.byte	0x2d
	.long	0x1ab
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.string	"ab_has_child"
	.byte	0x9
	.byte	0x2e
	.long	0x1bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x9
	.string	"ab_abbrev_ptr"
	.byte	0x9
	.byte	0x2f
	.long	0xb06
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.string	"ab_dbg"
	.byte	0x9
	.byte	0x30
	.long	0x1f5
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x2
	.string	"Dwarf_Fde"
	.byte	0x2
	.byte	0xcd
	.long	0xa76
	.uleb128 0x6
	.byte	0x4
	.long	0xa7c
	.uleb128 0x7
	.string	"Dwarf_Fde_s"
	.byte	0x1
	.uleb128 0x2
	.string	"Dwarf_Cie"
	.byte	0x2
	.byte	0xce
	.long	0xa9b
	.uleb128 0x6
	.byte	0x4
	.long	0xaa1
	.uleb128 0x7
	.string	"Dwarf_Cie_s"
	.byte	0x1
	.uleb128 0x2
	.string	"Dwarf_Handler"
	.byte	0x2
	.byte	0xdc
	.long	0xac4
	.uleb128 0x6
	.byte	0x4
	.long	0xaca
	.uleb128 0xb
	.long	0xadb
	.byte	0x1
	.uleb128 0xc
	.long	0x98c
	.uleb128 0xc
	.long	0x1e4
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
	.long	0xb1c
	.uleb128 0x6
	.byte	0x4
	.long	0x1bd
	.uleb128 0x2
	.string	"Dwarf_Abbrev_List"
	.byte	0x5
	.byte	0x6a
	.long	0xb3b
	.uleb128 0x6
	.byte	0x4
	.long	0xb41
	.uleb128 0x7
	.string	"Dwarf_Abbrev_List_s"
	.byte	0x1
	.uleb128 0x2
	.string	"Dwarf_CU_Context"
	.byte	0x5
	.byte	0x6c
	.long	0xb6f
	.uleb128 0x6
	.byte	0x4
	.long	0xb75
	.uleb128 0xa
	.long	0xcc3
	.string	"Dwarf_CU_Context_s"
	.byte	0x28
	.byte	0x5
	.byte	0x6c
	.uleb128 0x9
	.string	"cc_dbg"
	.byte	0x3
	.byte	0x67
	.long	0x1f5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.string	"cc_length"
	.byte	0x3
	.byte	0x68
	.long	0xae1
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
	.long	0xaf3
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
	.long	0xae1
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x9
	.string	"cc_last_abbrev_ptr"
	.byte	0x3
	.byte	0x6f
	.long	0xb06
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.string	"cc_abbrev_hash_table"
	.byte	0x3
	.byte	0x70
	.long	0xcc3
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x9
	.string	"cc_next"
	.byte	0x3
	.byte	0x71
	.long	0xb57
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
	.long	0xcdb
	.uleb128 0x6
	.byte	0x4
	.long	0xce1
	.uleb128 0xa
	.long	0xd22
	.string	"Dwarf_Hash_Table_s"
	.byte	0x8
	.byte	0x5
	.byte	0x6d
	.uleb128 0x9
	.string	"at_head"
	.byte	0x6
	.byte	0xff
	.long	0xb22
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"at_tail"
	.byte	0x6
	.value	0x100
	.long	0xb22
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"Dwarf_Alloc_Hdr"
	.byte	0x5
	.byte	0x70
	.long	0xd39
	.uleb128 0x6
	.byte	0x4
	.long	0xd3f
	.uleb128 0xa
	.long	0xe32
	.string	"Dwarf_Alloc_Hdr_s"
	.byte	0x1c
	.byte	0x5
	.byte	0x70
	.uleb128 0x9
	.string	"ah_struct_user_holds"
	.byte	0x7
	.byte	0x49
	.long	0xaf3
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
	.long	0xae1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.string	"ah_bytes_malloc_per_chunk"
	.byte	0x7
	.byte	0x58
	.long	0xae1
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.string	"ah_chunks_allocated"
	.byte	0x7
	.byte	0x5b
	.long	0xaf3
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.string	"ah_alloc_area_head"
	.byte	0x7
	.byte	0x60
	.long	0xe32
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x9
	.string	"ah_last_alloc_area"
	.byte	0x7
	.byte	0x65
	.long	0xe32
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x2
	.string	"Dwarf_Alloc_Area"
	.byte	0x7
	.byte	0x2f
	.long	0xe4a
	.uleb128 0x6
	.byte	0x4
	.long	0xe50
	.uleb128 0xa
	.long	0xf0f
	.string	"Dwarf_Alloc_Area_s"
	.byte	0x1c
	.byte	0x7
	.byte	0x2f
	.uleb128 0x9
	.string	"aa_free_list"
	.byte	0x7
	.byte	0x72
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.string	"aa_free_structs_in_chunk"
	.byte	0x7
	.byte	0x77
	.long	0xaf3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.string	"aa_blob_start"
	.byte	0x7
	.byte	0x7d
	.long	0xb1c
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.string	"aa_blob_end"
	.byte	0x7
	.byte	0x80
	.long	0xb1c
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.string	"aa_alloc_hdr"
	.byte	0x7
	.byte	0x84
	.long	0xd22
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.string	"aa_next"
	.byte	0x7
	.byte	0x89
	.long	0xe32
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x9
	.string	"aa_prev"
	.byte	0x7
	.byte	0x8a
	.long	0xe32
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0xe
	.long	0xf1f
	.long	0xd3f
	.uleb128 0xf
	.long	0x14f
	.byte	0x1e
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.long	0xa8a
	.uleb128 0x6
	.byte	0x4
	.long	0xa65
	.uleb128 0x10
	.long	0xf45
	.byte	0x1
	.long	0x156
	.uleb128 0xc
	.long	0x156
	.uleb128 0xc
	.long	0xf45
	.uleb128 0xc
	.long	0xa4
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.long	0xf4b
	.uleb128 0x11
	.uleb128 0x6
	.byte	0x4
	.long	0xf2b
	.uleb128 0x12
	.long	0x110f
	.byte	0x1
	.string	"dwarf_get_abbrev"
	.byte	0x1
	.byte	0x35
	.byte	0x1
	.long	0x111
	.long	.LFB5
	.long	.LFE5
	.long	.LLST0
	.uleb128 0x13
	.string	"dbg"
	.byte	0x1
	.byte	0x30
	.long	0x1f5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x13
	.string	"offset"
	.byte	0x1
	.byte	0x31
	.long	0x195
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x13
	.string	"returned_abbrev"
	.byte	0x1
	.byte	0x32
	.long	0x110f
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x13
	.string	"length"
	.byte	0x1
	.byte	0x33
	.long	0xadb
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x13
	.string	"abbr_count"
	.byte	0x1
	.byte	0x34
	.long	0xadb
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x14
	.long	.LASF1
	.byte	0x1
	.byte	0x34
	.long	0x1115
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x15
	.long	.LASF2
	.byte	0x1
	.byte	0x36
	.long	0xb1c
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x16
	.string	"abbrev_section_end"
	.byte	0x1
	.byte	0x37
	.long	0xb1c
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x16
	.string	"attr"
	.byte	0x1
	.byte	0x38
	.long	0x1ab
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x15
	.long	.LASF3
	.byte	0x1
	.byte	0x39
	.long	0x1ab
	.byte	0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x16
	.string	"ret_abbrev"
	.byte	0x1
	.byte	0x3a
	.long	0x9d0
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x16
	.string	"labbr_count"
	.byte	0x1
	.byte	0x3b
	.long	0x195
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x16
	.string	"utmp"
	.byte	0x1
	.byte	0x3c
	.long	0x195
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x17
	.long	0x1088
	.long	.LBB2
	.long	.LBE2
	.uleb128 0x16
	.string	"res"
	.byte	0x1
	.byte	0x46
	.long	0x111
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x17
	.long	0x10a4
	.long	.LBB3
	.long	.LBE3
	.uleb128 0x15
	.long	.LASF4
	.byte	0x1
	.byte	0x66
	.long	0xae1
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0x0
	.uleb128 0x17
	.long	0x10c0
	.long	.LBB4
	.long	.LBE4
	.uleb128 0x15
	.long	.LASF4
	.byte	0x1
	.byte	0x71
	.long	0xae1
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0x0
	.uleb128 0x18
	.long	.LBB5
	.long	.LBE5
	.uleb128 0x16
	.string	"utmp2"
	.byte	0x1
	.byte	0x77
	.long	0x195
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x17
	.long	0x10f5
	.long	.LBB6
	.long	.LBE6
	.uleb128 0x15
	.long	.LASF4
	.byte	0x1
	.byte	0x79
	.long	0xae1
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0x0
	.uleb128 0x18
	.long	.LBB7
	.long	.LBE7
	.uleb128 0x15
	.long	.LASF4
	.byte	0x1
	.byte	0x7b
	.long	0xae1
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.long	0x9d0
	.uleb128 0x6
	.byte	0x4
	.long	0x98c
	.uleb128 0x12
	.long	0x117f
	.byte	0x1
	.string	"dwarf_get_abbrev_code"
	.byte	0x1
	.byte	0x95
	.byte	0x1
	.long	0x111
	.long	.LFB6
	.long	.LFE6
	.long	.LLST1
	.uleb128 0x14
	.long	.LASF5
	.byte	0x1
	.byte	0x92
	.long	0x9d0
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x13
	.string	"returned_code"
	.byte	0x1
	.byte	0x93
	.long	0xadb
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x14
	.long	.LASF1
	.byte	0x1
	.byte	0x94
	.long	0x1115
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.byte	0x0
	.uleb128 0x12
	.long	0x11e1
	.byte	0x1
	.string	"dwarf_get_abbrev_tag"
	.byte	0x1
	.byte	0xa2
	.byte	0x1
	.long	0x111
	.long	.LFB7
	.long	.LFE7
	.long	.LLST2
	.uleb128 0x14
	.long	.LASF5
	.byte	0x1
	.byte	0xa0
	.long	0x9d0
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x13
	.string	"returned_tag"
	.byte	0x1
	.byte	0xa1
	.long	0x11e1
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x14
	.long	.LASF1
	.byte	0x1
	.byte	0xa1
	.long	0x1115
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.long	0x1ab
	.uleb128 0x12
	.long	0x1254
	.byte	0x1
	.string	"dwarf_get_abbrev_children_flag"
	.byte	0x1
	.byte	0xb1
	.byte	0x1
	.long	0x111
	.long	.LFB8
	.long	.LFE8
	.long	.LLST3
	.uleb128 0x14
	.long	.LASF5
	.byte	0x1
	.byte	0xae
	.long	0x9d0
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x13
	.string	"returned_flag"
	.byte	0x1
	.byte	0xaf
	.long	0x1254
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x14
	.long	.LASF1
	.byte	0x1
	.byte	0xb0
	.long	0x1115
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.long	0x1d0
	.uleb128 0x12
	.long	0x139b
	.byte	0x1
	.string	"dwarf_get_abbrev_entry"
	.byte	0x1
	.byte	0xc2
	.byte	0x1
	.long	0x111
	.long	.LFB9
	.long	.LFE9
	.long	.LLST4
	.uleb128 0x14
	.long	.LASF5
	.byte	0x1
	.byte	0xbd
	.long	0x9d0
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x13
	.string	"index"
	.byte	0x1
	.byte	0xbe
	.long	0x1d0
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x13
	.string	"returned_attr_num"
	.byte	0x1
	.byte	0xbf
	.long	0x11e1
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x13
	.string	"form"
	.byte	0x1
	.byte	0xc0
	.long	0x1254
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x13
	.string	"offset"
	.byte	0x1
	.byte	0xc1
	.long	0x139b
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x14
	.long	.LASF1
	.byte	0x1
	.byte	0xc1
	.long	0x1115
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x15
	.long	.LASF2
	.byte	0x1
	.byte	0xc3
	.long	0xb06
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x16
	.string	"abbrev_end"
	.byte	0x1
	.byte	0xc4
	.long	0xb06
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x16
	.string	"mark_abbrev_ptr"
	.byte	0x1
	.byte	0xc5
	.long	0xb06
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x16
	.string	"attr"
	.byte	0x1
	.byte	0xc6
	.long	0x1ab
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x15
	.long	.LASF3
	.byte	0x1
	.byte	0xc7
	.long	0x1ab
	.byte	0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x18
	.long	.LBB8
	.long	.LBE8
	.uleb128 0x16
	.string	"utmp4"
	.byte	0x1
	.byte	0xe3
	.long	0x195
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x17
	.long	0x1381
	.long	.LBB9
	.long	.LBE9
	.uleb128 0x15
	.long	.LASF4
	.byte	0x1
	.byte	0xe6
	.long	0xae1
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.uleb128 0x18
	.long	.LBB10
	.long	.LBE10
	.uleb128 0x15
	.long	.LASF4
	.byte	0x1
	.byte	0xe8
	.long	0xae1
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.long	0x184
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
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.long	0x94
	.value	0x2
	.long	.Ldebug_info0
	.long	0x13a2
	.long	0xf52
	.string	"dwarf_get_abbrev"
	.long	0x111b
	.string	"dwarf_get_abbrev_code"
	.long	0x117f
	.string	"dwarf_get_abbrev_tag"
	.long	0x11e7
	.string	"dwarf_get_abbrev_children_flag"
	.long	0x125a
	.string	"dwarf_get_abbrev_entry"
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
.LASF3:
	.string	"attr_form"
.LASF0:
	.string	"unsigned int"
.LASF4:
	.string	"uleblen"
.LASF1:
	.string	"error"
.LASF2:
	.string	"abbrev_ptr"
.LASF5:
	.string	"abbrev"
	.ident	"GCC: (GNU) 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.section	.text.__i686.get_pc_thunk.bx,"axG",@progbits,__i686.get_pc_thunk.bx,comdat
.globl __i686.get_pc_thunk.bx
	.hidden	__i686.get_pc_thunk.bx
	.type	__i686.get_pc_thunk.bx, @function
__i686.get_pc_thunk.bx:
	movl	(%esp), %ebx
	ret
	.section	.note.GNU-stack,"",@progbits
