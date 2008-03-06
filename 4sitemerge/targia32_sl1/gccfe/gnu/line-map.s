	.file	"line-map.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
.globl init_line_maps
	.type	init_line_maps, @function
init_line_maps:
.LFB15:
	.file 1 "../../../kgccfe/gnu/line-map.c"
	.loc 1 36 0
	pushl	%ebp
.LCFI0:
	movl	%esp, %ebp
.LCFI1:
	.loc 1 37 0
	movl	8(%ebp), %eax
	movl	$0, (%eax)
	.loc 1 38 0
	movl	8(%ebp), %eax
	movl	$0, 4(%eax)
	.loc 1 39 0
	movl	8(%ebp), %eax
	movl	$0, 8(%eax)
	.loc 1 40 0
	movl	8(%ebp), %eax
	movl	$-1, 12(%eax)
	.loc 1 41 0
	movl	8(%ebp), %eax
	movb	$0, 20(%eax)
	.loc 1 42 0
	movl	8(%ebp), %eax
	movl	$0, 16(%eax)
	.loc 1 43 0
	popl	%ebp
	ret
.LFE15:
	.size	init_line_maps, .-init_line_maps
	.section	.rodata
	.align 4
.LC0:
	.string	"line-map.c: file \"%s\" entered but not left\n"
	.text
.globl free_line_maps
	.type	free_line_maps, @function
free_line_maps:
.LFB16:
	.loc 1 50 0
	pushl	%ebp
.LCFI2:
	movl	%esp, %ebp
.LCFI3:
	pushl	%ebx
.LCFI4:
	subl	$36, %esp
.LCFI5:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 51 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L9
.LBB2:
	.loc 1 57 0
	movl	8(%ebp), %eax
	movl	(%eax), %ecx
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %eax
	subl	$20, %eax
	movl	%eax, -8(%ebp)
	jmp	.L6
.L7:
	.loc 1 59 0
	movl	-8(%ebp), %eax
	movl	(%eax), %edx
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 8(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
	.loc 1 58 0
	movl	8(%ebp), %eax
	movl	(%eax), %ecx
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %eax
	movl	%eax, -8(%ebp)
.L6:
	.loc 1 57 0
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	jns	.L7
	.loc 1 62 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	free@PLT
.L9:
.LBE2:
	.loc 1 64 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE16:
	.size	free_line_maps, .-free_line_maps
	.section	.rodata
	.align 4
.LC1:
	.string	"line-map.c: file \"%s\" left but not entered\n"
	.text
.globl add_line_map
	.type	add_line_map, @function
add_line_map:
.LFB17:
	.loc 1 81 0
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
	.loc 1 84 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	je	.L11
	movl	8(%ebp), %eax
	movl	(%eax), %ecx
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %eax
	subl	$20, %eax
	movl	8(%eax), %eax
	cmpl	20(%ebp), %eax
	jbe	.L11
	.loc 1 85 0
	call	abort@PLT
.L11:
	.loc 1 87 0
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	jne	.L14
	.loc 1 89 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	addl	%eax, %eax
	leal	256(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 90 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	xrealloc@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
.L14:
	.loc 1 94 0
	movl	8(%ebp), %eax
	movl	(%eax), %ecx
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %eax
	movl	%eax, -16(%ebp)
	addl	$1, %edx
	movl	8(%ebp), %eax
	movl	%edx, 8(%eax)
	.loc 1 98 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	jne	.L16
	.loc 1 99 0
	movl	$0, 12(%ebp)
	jmp	.L18
.L16:
	.loc 1 100 0
	cmpl	$1, 12(%ebp)
	jne	.L18
.LBB3:
	.loc 1 105 0
	movl	-16(%ebp), %eax
	subl	$20, %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	jns	.L20
	.loc 1 107 0
	movb	$1, -5(%ebp)
	.loc 1 108 0
	movl	$2, 12(%ebp)
	.loc 1 109 0
	movl	-16(%ebp), %eax
	subl	$20, %eax
	movl	%eax, -12(%ebp)
	jmp	.L22
.L20:
	.loc 1 113 0
	movl	8(%ebp), %eax
	movl	(%eax), %ecx
	movl	-16(%ebp), %eax
	subl	$20, %eax
	movl	12(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 114 0
	cmpl	$0, 24(%ebp)
	je	.L23
	movl	-12(%ebp), %eax
	movl	(%eax), %edx
	movl	24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L23
	movl	$1, -24(%ebp)
	jmp	.L26
.L23:
	movl	$0, -24(%ebp)
.L26:
	movzbl	-24(%ebp), %eax
	movb	%al, -5(%ebp)
.L22:
	.loc 1 119 0
	cmpb	$0, -5(%ebp)
	je	.L27
	.loc 1 120 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	24(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
.L27:
	.loc 1 124 0
	cmpb	$0, -5(%ebp)
	jne	.L29
	cmpl	$0, 24(%ebp)
	jne	.L18
.L29:
	.loc 1 126 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 24(%ebp)
	.loc 1 127 0
	movl	-12(%ebp), %eax
	addl	$20, %eax
	movl	8(%eax), %edx
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	addl	%eax, %edx
	movl	-12(%ebp), %eax
	movl	8(%eax), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, 28(%ebp)
	.loc 1 128 0
	movl	-12(%ebp), %eax
	movzbl	17(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, 16(%ebp)
.L18:
.LBE3:
	.loc 1 132 0
	movl	12(%ebp), %eax
	movl	%eax, %edx
	movl	-16(%ebp), %eax
	movb	%dl, 16(%eax)
	.loc 1 133 0
	movl	16(%ebp), %eax
	movl	%eax, %edx
	movl	-16(%ebp), %eax
	movb	%dl, 17(%eax)
	.loc 1 134 0
	movl	-16(%ebp), %edx
	movl	20(%ebp), %eax
	movl	%eax, 8(%edx)
	.loc 1 135 0
	movl	-16(%ebp), %edx
	movl	24(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 136 0
	movl	-16(%ebp), %edx
	movl	28(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 138 0
	cmpl	$0, 12(%ebp)
	jne	.L31
	.loc 1 140 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 16(%eax)
	.loc 1 141 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	subl	$2, %eax
	movl	%eax, %edx
	movl	-16(%ebp), %eax
	movl	%edx, 12(%eax)
	.loc 1 142 0
	movl	8(%ebp), %eax
	movzbl	20(%eax), %eax
	testb	%al, %al
	je	.L35
	.loc 1 143 0
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	trace_include
	jmp	.L35
.L31:
	.loc 1 145 0
	cmpl	$2, 12(%ebp)
	jne	.L36
	.loc 1 146 0
	movl	-16(%ebp), %eax
	subl	$20, %eax
	movl	12(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%edx, 12(%eax)
	jmp	.L35
.L36:
	.loc 1 147 0
	cmpl	$1, 12(%ebp)
	jne	.L35
	.loc 1 149 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	leal	-1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 16(%eax)
	.loc 1 150 0
	movl	8(%ebp), %eax
	movl	(%eax), %ecx
	movl	-16(%ebp), %eax
	subl	$20, %eax
	movl	12(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %eax
	movl	12(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%edx, 12(%eax)
.L35:
	.loc 1 153 0
	movl	-16(%ebp), %eax
	.loc 1 154 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE17:
	.size	add_line_map, .-add_line_map
.globl lookup_line
	.type	lookup_line, @function
lookup_line:
.LFB18:
	.loc 1 165 0
	pushl	%ebp
.LCFI10:
	movl	%esp, %ebp
.LCFI11:
	pushl	%ebx
.LCFI12:
	subl	$20, %esp
.LCFI13:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 166 0
	movl	$0, -12(%ebp)
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 168 0
	cmpl	$0, -8(%ebp)
	jne	.L49
	.loc 1 169 0
	call	abort@PLT
.L44:
	.loc 1 173 0
	movl	-8(%ebp), %eax
	addl	-12(%ebp), %eax
	shrl	%eax
	movl	%eax, -16(%ebp)
	.loc 1 174 0
	movl	8(%ebp), %eax
	movl	(%eax), %ecx
	movl	-16(%ebp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %eax
	movl	8(%eax), %eax
	cmpl	12(%ebp), %eax
	jbe	.L45
	.loc 1 175 0
	movl	-16(%ebp), %eax
	movl	%eax, -8(%ebp)
	jmp	.L43
.L45:
	.loc 1 177 0
	movl	-16(%ebp), %eax
	movl	%eax, -12(%ebp)
.L43:
.L49:
	.loc 1 171 0
	movl	-12(%ebp), %eax
	movl	-8(%ebp), %edx
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	cmpl	$1, %eax
	ja	.L44
	.loc 1 180 0
	movl	8(%ebp), %eax
	movl	(%eax), %ecx
	movl	-12(%ebp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %eax
	.loc 1 181 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE18:
	.size	lookup_line, .-lookup_line
	.section	.rodata
.LC2:
	.string	"In file included from %s:%u"
.LC3:
	.string	",\n                 from %s:%u"
.LC4:
	.string	":\n"
	.text
.globl print_containing_files
	.type	print_containing_files, @function
print_containing_files:
.LFB19:
	.loc 1 191 0
	pushl	%ebp
.LCFI14:
	movl	%esp, %ebp
.LCFI15:
	pushl	%esi
.LCFI16:
	pushl	%ebx
.LCFI17:
	subl	$16, %esp
.LCFI18:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 192 0
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	js	.L58
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	%eax, %edx
	jne	.L53
	.loc 1 193 0
	jmp	.L58
.L53:
	.loc 1 195 0
	movl	12(%ebp), %eax
	movl	12(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 12(%eax)
	.loc 1 196 0
	movl	8(%ebp), %eax
	movl	(%eax), %ecx
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %eax
	movl	%eax, 12(%ebp)
	.loc 1 198 0
	movl	12(%ebp), %eax
	addl	$20, %eax
	movl	8(%eax), %edx
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	addl	%eax, %edx
	movl	12(%ebp), %eax
	movl	8(%eax), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	leal	-1(%eax), %edx
	movl	12(%ebp), %eax
	movl	(%eax), %ecx
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %esi
	movl	%edx, 12(%esp)
	movl	%ecx, 8(%esp)
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	call	fprintf@PLT
	.loc 1 201 0
	jmp	.L55
.L56:
	.loc 1 203 0
	movl	8(%ebp), %eax
	movl	(%eax), %ecx
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %eax
	movl	%eax, 12(%ebp)
	.loc 1 216 0
	movl	12(%ebp), %eax
	addl	$20, %eax
	movl	8(%eax), %edx
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	addl	%eax, %edx
	movl	12(%ebp), %eax
	movl	8(%eax), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	leal	-1(%eax), %edx
	movl	12(%ebp), %eax
	movl	(%eax), %ecx
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %esi
	movl	%edx, 12(%esp)
	movl	%ecx, 8(%esp)
	leal	.LC3@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	call	fprintf@PLT
.L55:
	.loc 1 201 0
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	jns	.L56
	.loc 1 220 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$2, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC4@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite_unlocked@PLT
.L58:
	.loc 1 221 0
	addl	$16, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE19:
	.size	print_containing_files, .-print_containing_files
	.section	.rodata
.LC5:
	.string	" %s\n"
	.text
	.type	trace_include, @function
trace_include:
.LFB20:
	.loc 1 229 0
	pushl	%ebp
.LCFI19:
	movl	%esp, %ebp
.LCFI20:
	pushl	%ebx
.LCFI21:
	subl	$36, %esp
.LCFI22:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 230 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 232 0
	jmp	.L60
.L61:
	.loc 1 233 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$46, (%esp)
	call	putc_unlocked@PLT
.L60:
	.loc 1 232 0
	subl	$1, -8(%ebp)
	cmpl	$0, -8(%ebp)
	jne	.L61
	.loc 1 234 0
	movl	12(%ebp), %eax
	movl	(%eax), %edx
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 8(%esp)
	leal	.LC5@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
	.loc 1 235 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE20:
	.size	trace_include, .-trace_include
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
	.align 4
.LEFDE0:
.LSFDE2:
	.long	.LEFDE2-.LASFDE2
.LASFDE2:
	.long	.Lframe0
	.long	.LFB16
	.long	.LFE16-.LFB16
	.byte	0x4
	.long	.LCFI2-.LFB16
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI3-.LCFI2
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI5-.LCFI3
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
	.long	.LCFI6-.LFB17
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
.LEFDE4:
.LSFDE6:
	.long	.LEFDE6-.LASFDE6
.LASFDE6:
	.long	.Lframe0
	.long	.LFB18
	.long	.LFE18-.LFB18
	.byte	0x4
	.long	.LCFI10-.LFB18
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
	.long	.LCFI18-.LCFI15
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
	.long	.LCFI19-.LFB20
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI20-.LCFI19
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI22-.LCFI20
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE10:
	.file 2 "../../../kgccfe/gnu/line-map.h"
	.file 3 "/usr/include/stdio.h"
	.file 4 "/usr/include/libio.h"
	.file 5 "/usr/include/bits/types.h"
	.file 6 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h"
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
	.long	.LFE16-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST2:
	.long	.LFB17-.Ltext0
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
	.long	.LFE17-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST3:
	.long	.LFB18-.Ltext0
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
	.long	.LFE20-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
	.section	.debug_info
	.long	0x842
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.Ldebug_line0
	.long	.Letext0
	.long	.Ltext0
	.string	"GNU C 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.byte	0x1
	.string	"../../../kgccfe/gnu/line-map.c"
	.string	"/usa/handong/simplnano/cmplr-open64-merge/targia32_sl1/gccfe/gnu"
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
	.byte	0x6
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
	.byte	0x5
	.byte	0x3b
	.long	0x12b
	.uleb128 0x6
	.string	"__off_t"
	.byte	0x5
	.byte	0x90
	.long	0x175
	.uleb128 0x4
	.string	"long int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x6
	.string	"__off64_t"
	.byte	0x5
	.byte	0x91
	.long	0x156
	.uleb128 0x7
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.long	0xa8
	.uleb128 0x8
	.long	0x415
	.long	.LASF1
	.byte	0x94
	.byte	0x3
	.byte	0x2e
	.uleb128 0x9
	.string	"_flags"
	.byte	0x4
	.value	0x10c
	.long	0xb0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.string	"_IO_read_ptr"
	.byte	0x4
	.value	0x111
	.long	0x194
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.string	"_IO_read_end"
	.byte	0x4
	.value	0x112
	.long	0x194
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.string	"_IO_read_base"
	.byte	0x4
	.value	0x113
	.long	0x194
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.string	"_IO_write_base"
	.byte	0x4
	.value	0x114
	.long	0x194
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.string	"_IO_write_ptr"
	.byte	0x4
	.value	0x115
	.long	0x194
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x9
	.string	"_IO_write_end"
	.byte	0x4
	.value	0x116
	.long	0x194
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.string	"_IO_buf_base"
	.byte	0x4
	.value	0x117
	.long	0x194
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x9
	.string	"_IO_buf_end"
	.byte	0x4
	.value	0x118
	.long	0x194
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.string	"_IO_save_base"
	.byte	0x4
	.value	0x11a
	.long	0x194
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x9
	.string	"_IO_backup_base"
	.byte	0x4
	.value	0x11b
	.long	0x194
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.string	"_IO_save_end"
	.byte	0x4
	.value	0x11c
	.long	0x194
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x9
	.string	"_markers"
	.byte	0x4
	.value	0x11e
	.long	0x466
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x9
	.string	"_chain"
	.byte	0x4
	.value	0x120
	.long	0x46c
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x9
	.string	"_fileno"
	.byte	0x4
	.value	0x122
	.long	0xb0
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x9
	.string	"_flags2"
	.byte	0x4
	.value	0x126
	.long	0xb0
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x9
	.string	"_old_offset"
	.byte	0x4
	.value	0x128
	.long	0x166
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x9
	.string	"_cur_column"
	.byte	0x4
	.value	0x12c
	.long	0xe4
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x9
	.string	"_vtable_offset"
	.byte	0x4
	.value	0x12d
	.long	0x10f
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0x9
	.string	"_shortbuf"
	.byte	0x4
	.value	0x12e
	.long	0x472
	.byte	0x2
	.byte	0x23
	.uleb128 0x47
	.uleb128 0x9
	.string	"_lock"
	.byte	0x4
	.value	0x132
	.long	0x482
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x9
	.string	"_offset"
	.byte	0x4
	.value	0x13b
	.long	0x181
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x9
	.string	"__pad1"
	.byte	0x4
	.value	0x144
	.long	0x192
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x9
	.string	"__pad2"
	.byte	0x4
	.value	0x145
	.long	0x192
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x9
	.string	"__pad3"
	.byte	0x4
	.value	0x146
	.long	0x192
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x9
	.string	"__pad4"
	.byte	0x4
	.value	0x147
	.long	0x192
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x9
	.string	"__pad5"
	.byte	0x4
	.value	0x148
	.long	0xc5
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x9
	.string	"_mode"
	.byte	0x4
	.value	0x14a
	.long	0xb0
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x9
	.string	"_unused2"
	.byte	0x4
	.value	0x14c
	.long	0x488
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.byte	0x0
	.uleb128 0xa
	.string	"_IO_lock_t"
	.byte	0x4
	.byte	0xb0
	.uleb128 0xb
	.long	0x466
	.string	"_IO_marker"
	.byte	0xc
	.byte	0x4
	.byte	0xb6
	.uleb128 0xc
	.string	"_next"
	.byte	0x4
	.byte	0xb7
	.long	0x466
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.string	"_sbuf"
	.byte	0x4
	.byte	0xb8
	.long	0x46c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.string	"_pos"
	.byte	0x4
	.byte	0xbc
	.long	0xb0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x423
	.uleb128 0x2
	.byte	0x4
	.long	0x19a
	.uleb128 0xd
	.long	0x482
	.long	0xa8
	.uleb128 0xe
	.long	0xbe
	.byte	0x0
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x415
	.uleb128 0xd
	.long	0x498
	.long	0xa8
	.uleb128 0xe
	.long	0xbe
	.byte	0x27
	.byte	0x0
	.uleb128 0xf
	.long	0x4cd
	.string	"lc_reason"
	.byte	0x4
	.byte	0x2
	.byte	0x1f
	.uleb128 0x10
	.string	"LC_ENTER"
	.sleb128 0
	.uleb128 0x10
	.string	"LC_LEAVE"
	.sleb128 1
	.uleb128 0x10
	.string	"LC_RENAME"
	.sleb128 2
	.byte	0x0
	.uleb128 0xb
	.long	0x54c
	.string	"line_map"
	.byte	0x14
	.byte	0x2
	.byte	0x2a
	.uleb128 0xc
	.string	"to_file"
	.byte	0x2
	.byte	0x2b
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.string	"to_line"
	.byte	0x2
	.byte	0x2c
	.long	0xb7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x11
	.long	.LASF2
	.byte	0x2
	.byte	0x2d
	.long	0xb7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.string	"included_from"
	.byte	0x2
	.byte	0x2e
	.long	0xb0
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x12
	.string	"reason"
	.byte	0x2
	.byte	0x2f
	.long	0x498
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xc
	.string	"sysp"
	.byte	0x2
	.byte	0x30
	.long	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.byte	0x0
	.uleb128 0xb
	.long	0x5d0
	.string	"line_maps"
	.byte	0x18
	.byte	0x2
	.byte	0x35
	.uleb128 0xc
	.string	"maps"
	.byte	0x2
	.byte	0x36
	.long	0x5d0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.string	"allocated"
	.byte	0x2
	.byte	0x37
	.long	0xb7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.string	"used"
	.byte	0x2
	.byte	0x38
	.long	0xb7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.string	"last_listed"
	.byte	0x2
	.byte	0x3d
	.long	0xb0
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xc
	.string	"depth"
	.byte	0x2
	.byte	0x40
	.long	0xb7
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xc
	.string	"trace_includes"
	.byte	0x2
	.byte	0x43
	.long	0x5d6
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x4cd
	.uleb128 0x4
	.string	"_Bool"
	.byte	0x1
	.byte	0x2
	.uleb128 0x13
	.long	0x612
	.byte	0x1
	.string	"init_line_maps"
	.byte	0x1
	.byte	0x24
	.byte	0x1
	.long	.LFB15
	.long	.LFE15
	.long	.LLST0
	.uleb128 0x14
	.string	"set"
	.byte	0x1
	.byte	0x23
	.long	0x612
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x54c
	.uleb128 0x13
	.long	0x663
	.byte	0x1
	.string	"free_line_maps"
	.byte	0x1
	.byte	0x32
	.byte	0x1
	.long	.LFB16
	.long	.LFE16
	.long	.LLST1
	.uleb128 0x14
	.string	"set"
	.byte	0x1
	.byte	0x31
	.long	0x612
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x15
	.long	.LBB2
	.long	.LBE2
	.uleb128 0x16
	.string	"map"
	.byte	0x1
	.byte	0x35
	.long	0x5d0
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x17
	.long	0x721
	.byte	0x1
	.string	"add_line_map"
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.long	0x721
	.long	.LFB17
	.long	.LFE17
	.long	.LLST2
	.uleb128 0x14
	.string	"set"
	.byte	0x1
	.byte	0x4b
	.long	0x612
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x14
	.string	"reason"
	.byte	0x1
	.byte	0x4c
	.long	0x498
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x14
	.string	"sysp"
	.byte	0x1
	.byte	0x4d
	.long	0xb7
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x18
	.long	.LASF2
	.byte	0x1
	.byte	0x4e
	.long	0xb7
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x14
	.string	"to_file"
	.byte	0x1
	.byte	0x4f
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x14
	.string	"to_line"
	.byte	0x1
	.byte	0x50
	.long	0xb7
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x16
	.string	"map"
	.byte	0x1
	.byte	0x52
	.long	0x5d0
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x15
	.long	.LBB3
	.long	.LBE3
	.uleb128 0x16
	.string	"from"
	.byte	0x1
	.byte	0x66
	.long	0x5d0
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x16
	.string	"error"
	.byte	0x1
	.byte	0x67
	.long	0x5d6
	.byte	0x2
	.byte	0x91
	.sleb128 -13
	.byte	0x0
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x727
	.uleb128 0x3
	.long	0x4cd
	.uleb128 0x17
	.long	0x796
	.byte	0x1
	.string	"lookup_line"
	.byte	0x1
	.byte	0xa5
	.byte	0x1
	.long	0x721
	.long	.LFB18
	.long	.LFE18
	.long	.LLST3
	.uleb128 0x14
	.string	"set"
	.byte	0x1
	.byte	0xa3
	.long	0x612
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x14
	.string	"line"
	.byte	0x1
	.byte	0xa4
	.long	0xb7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x16
	.string	"md"
	.byte	0x1
	.byte	0xa6
	.long	0xb7
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x16
	.string	"mn"
	.byte	0x1
	.byte	0xa6
	.long	0xb7
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x16
	.string	"mx"
	.byte	0x1
	.byte	0xa6
	.long	0xb7
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x13
	.long	0x7df
	.byte	0x1
	.string	"print_containing_files"
	.byte	0x1
	.byte	0xbf
	.byte	0x1
	.long	.LFB19
	.long	.LFE19
	.long	.LLST4
	.uleb128 0x14
	.string	"set"
	.byte	0x1
	.byte	0xbd
	.long	0x612
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x14
	.string	"map"
	.byte	0x1
	.byte	0xbe
	.long	0x721
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x19
	.long	0x82a
	.string	"trace_include"
	.byte	0x1
	.byte	0xe5
	.byte	0x1
	.long	.LFB20
	.long	.LFE20
	.long	.LLST5
	.uleb128 0x14
	.string	"set"
	.byte	0x1
	.byte	0xe3
	.long	0x82a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x14
	.string	"map"
	.byte	0x1
	.byte	0xe4
	.long	0x721
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x16
	.string	"i"
	.byte	0x1
	.byte	0xe6
	.long	0xb7
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x830
	.uleb128 0x3
	.long	0x54c
	.uleb128 0x1a
	.string	"stderr"
	.byte	0x3
	.byte	0x90
	.long	0x46c
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
	.uleb128 0x10
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
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
	.uleb128 0x18
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
	.long	0x70
	.value	0x2
	.long	.Ldebug_info0
	.long	0x846
	.long	0x5df
	.string	"init_line_maps"
	.long	0x618
	.string	"free_line_maps"
	.long	0x663
	.string	"add_line_map"
	.long	0x72c
	.string	"lookup_line"
	.long	0x796
	.string	"print_containing_files"
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
.LASF0:
	.string	"unsigned int"
.LASF2:
	.string	"from_line"
	.ident	"GCC: (GNU) 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.section	.text.__i686.get_pc_thunk.bx,"axG",@progbits,__i686.get_pc_thunk.bx,comdat
.globl __i686.get_pc_thunk.bx
	.hidden	__i686.get_pc_thunk.bx
	.type	__i686.get_pc_thunk.bx, @function
__i686.get_pc_thunk.bx:
	movl	(%esp), %ebx
	ret
	.section	.note.GNU-stack,"",@progbits
