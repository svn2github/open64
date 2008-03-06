	.file	"array_alloc.c"
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
	.string	"array_alloc no error."
	.align 4
.LC1:
	.string	"array_alloc Cannot malloc a struct fore aa_handle to point to"
	.align 4
.LC2:
	.string	"array_alloc Initial allocation amount is not usable (<= 1)"
	.align 4
.LC3:
	.string	"array_alloc Initial element size is not usable ( < 1 )"
	.align 4
.LC4:
	.string	"array_alloc Initial numerator is not usable ( < 2)"
	.align 4
.LC5:
	.string	"array_alloc Initial denominator is not usable (< 1 )"
	.align 4
.LC6:
	.string	"array_alloc consistency checks fail in freeing memory"
	.align 4
.LC7:
	.string	"array_alloc initial word of aa structure destroyed"
	.align 4
.LC8:
	.string	"array_alloc middle word of aa structure destroyed"
	.align 4
.LC9:
	.string	"array_alloc final word of aa structure destroyed"
	.align 4
.LC10:
	.string	"array_alloc elements-to-alloc given <= 0"
.LC11:
	.string	"array_alloc malloc failure"
.LC12:
	.string	"array_alloc realloc failure"
	.align 4
.LC13:
	.string	"array_alloc: null pointer passed to aa_alloc"
	.section	.data.rel.local,"aw",@progbits
	.align 32
	.type	aa_error, @object
	.size	aa_error, 56
aa_error:
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
	.text
.globl aa_initialize
	.type	aa_initialize, @function
aa_initialize:
.LFB5:
	.file 1 "../../libcmplrs/array_alloc.c"
	.loc 1 119 0
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
	.loc 1 123 0
	movl	$52, (%esp)
	call	malloc@PLT
	movl	%eax, -8(%ebp)
	.loc 1 124 0
	cmpl	$0, -8(%ebp)
	jne	.L2
	.loc 1 125 0
	movl	$1, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	error
.L2:
	.loc 1 126 0
	movl	-8(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	%eax, 48(%edx)
	movl	-8(%ebp), %eax
	movl	48(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%edx, 24(%eax)
	movl	-8(%ebp), %eax
	movl	24(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 129 0
	movl	-8(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 130 0
	movl	12(%ebp), %eax
	movl	$0, (%eax)
	.loc 1 131 0
	movl	-8(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, 8(%edx)
	.loc 1 132 0
	movl	16(%ebp), %eax
	movl	$0, (%eax)
	.loc 1 133 0
	movl	-8(%ebp), %edx
	movl	16(%ebp), %eax
	movl	%eax, 12(%edx)
	.loc 1 134 0
	movl	-8(%ebp), %edx
	movl	20(%ebp), %eax
	movl	%eax, 16(%edx)
	.loc 1 135 0
	cmpl	$0, 24(%ebp)
	jg	.L4
	.loc 1 136 0
	movl	$3, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	error
.L4:
	.loc 1 137 0
	movl	-8(%ebp), %edx
	movl	24(%ebp), %eax
	movl	%eax, 20(%edx)
	.loc 1 138 0
	cmpl	$0, 24(%ebp)
	jg	.L6
	.loc 1 139 0
	movl	$2, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	error
.L6:
	.loc 1 140 0
	movl	-8(%ebp), %edx
	movl	28(%ebp), %eax
	movl	%eax, 28(%edx)
	.loc 1 141 0
	movl	-8(%ebp), %edx
	movl	32(%ebp), %eax
	movl	%eax, 32(%edx)
	.loc 1 145 0
	cmpl	$1, 28(%ebp)
	jg	.L8
	.loc 1 146 0
	movl	$4, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	error
.L8:
	.loc 1 147 0
	cmpl	$0, 32(%ebp)
	jle	.L10
	movl	32(%ebp), %eax
	cmpl	28(%ebp), %eax
	jl	.L12
.L10:
	.loc 1 148 0
	movl	$5, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	error
.L12:
	.loc 1 149 0
	movl	-8(%ebp), %edx
	movl	36(%ebp), %eax
	movl	%eax, 36(%edx)
	.loc 1 150 0
	movl	-8(%ebp), %edx
	movl	40(%ebp), %eax
	movl	%eax, 40(%edx)
	.loc 1 151 0
	movl	-8(%ebp), %edx
	movl	44(%ebp), %eax
	movl	%eax, 44(%edx)
	.loc 1 156 0
	movl	-8(%ebp), %eax
	.loc 1 157 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE5:
	.size	aa_initialize, .-aa_initialize
.globl aa_alloc
	.type	aa_alloc, @function
aa_alloc:
.LFB6:
	.loc 1 169 0
	pushl	%ebp
.LCFI4:
	movl	%esp, %ebp
.LCFI5:
	pushl	%ebx
.LCFI6:
	subl	$52, %esp
.LCFI7:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 181 0
	cmpl	$0, 8(%ebp)
	jne	.L15
	.loc 1 182 0
	movl	$13, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	error
.L15:
	.loc 1 183 0
	cmpl	$0, 12(%ebp)
	jg	.L17
	.loc 1 184 0
	movl	$10, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	error
.L17:
	.loc 1 193 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 194 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 195 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 197 0
	movl	12(%ebp), %eax
	addl	-32(%ebp), %eax
	cmpl	-28(%ebp), %eax
	jge	.L19
	.loc 1 201 0
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	12(%ebp), %eax
	addl	-32(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 202 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %edx
	movl	-32(%ebp), %eax
	imull	-8(%ebp), %eax
	addl	%eax, %edx
	movl	%edx, -40(%ebp)
	jmp	.L21
.L19:
	.loc 1 211 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 212 0
	cmpl	$0, -20(%ebp)
	jne	.L22
	.loc 1 214 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	12(%ebp), %eax
	jge	.L24
	.loc 1 215 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	addl	12(%ebp), %eax
	movl	%eax, -28(%ebp)
	jmp	.L26
.L24:
	.loc 1 217 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -28(%ebp)
.L26:
	.loc 1 219 0
	movl	-28(%ebp), %eax
	imull	-8(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 221 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	malloc@PLT
	movl	%eax, -24(%ebp)
	.loc 1 222 0
	cmpl	$0, -24(%ebp)
	jne	.L27
	.loc 1 223 0
	movl	$11, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	error
.L27:
	.loc 1 224 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	-24(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 225 0
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 226 0
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	-28(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 230 0
	movl	-24(%ebp), %eax
	movl	%eax, -40(%ebp)
	jmp	.L21
.L22:
	.loc 1 235 0
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	imull	-28(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 236 0
	movl	8(%ebp), %eax
	movl	32(%eax), %eax
	movl	-12(%ebp), %edx
	movl	%eax, %ecx
	movl	%edx, %eax
	sarl	$31, %edx
	idivl	%ecx
	movl	%eax, -12(%ebp)
	.loc 1 237 0
	movl	12(%ebp), %eax
	addl	-32(%ebp), %eax
	cmpl	-12(%ebp), %eax
	jl	.L29
	.loc 1 238 0
	movl	12(%ebp), %eax
	addl	%eax, -12(%ebp)
.L29:
	.loc 1 239 0
	movl	-12(%ebp), %eax
	imull	-8(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 240 0
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	realloc@PLT
	movl	%eax, -24(%ebp)
	.loc 1 241 0
	cmpl	$0, -24(%ebp)
	jne	.L31
	.loc 1 242 0
	movl	$12, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	error
.L31:
	.loc 1 243 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	-24(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 244 0
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	12(%ebp), %eax
	addl	-32(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 245 0
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 249 0
	movl	-32(%ebp), %eax
	imull	-8(%ebp), %eax
	movl	-24(%ebp), %edx
	addl	%eax, %edx
	movl	%edx, -40(%ebp)
.L21:
	movl	-40(%ebp), %eax
	.loc 1 250 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE6:
	.size	aa_alloc, .-aa_alloc
.globl aa_discard
	.type	aa_discard, @function
aa_discard:
.LFB7:
	.loc 1 263 0
	pushl	%ebp
.LCFI8:
	movl	%esp, %ebp
.LCFI9:
	pushl	%edi
.LCFI10:
	pushl	%ebx
.LCFI11:
	subl	$16, %esp
.LCFI12:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 264 0
	cmpl	$0, 8(%ebp)
	je	.L35
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L35
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L35
	movl	8(%ebp), %eax
	movl	48(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L35
	.loc 1 267 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L40
	.loc 1 268 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	free@PLT
.L40:
	.loc 1 269 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, (%eax)
	.loc 1 270 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	je	.L42
	.loc 1 271 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	$0, (%eax)
.L42:
	.loc 1 272 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	.L44
	.loc 1 273 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	$0, (%eax)
.L44:
	.loc 1 274 0
	movl	8(%ebp), %eax
	movl	%eax, %edi
	cld
	movl	$0, %edx
	movl	$13, %eax
	movl	%eax, %ecx
	movl	%edx, %eax
	rep
	stosl
	.loc 1 275 0
	jmp	.L47
.L35:
	.loc 1 277 0
	movl	$6, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	error
.L47:
	.loc 1 278 0
	addl	$16, %esp
	popl	%ebx
	popl	%edi
	popl	%ebp
	ret
.LFE7:
	.size	aa_discard, .-aa_discard
	.section	.rodata
.LC14:
	.string	"%s. aa_handle %p. error %d\n"
.LC15:
	.string	""
	.align 4
.LC16:
	.string	"%s. aa_handle %p. error %d. Handle_info: %d %s\n"
	.text
	.type	error, @function
error:
.LFB8:
	.loc 1 280 0
	pushl	%ebp
.LCFI13:
	movl	%esp, %ebp
.LCFI14:
	pushl	%edi
.LCFI15:
	pushl	%esi
.LCFI16:
	pushl	%ebx
.LCFI17:
	subl	$44, %esp
.LCFI18:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 281 0
	cmpl	$0, 8(%ebp)
	jne	.L49
	.loc 1 282 0
	movl	12(%ebp), %eax
	movl	aa_error@GOTOFF(%ebx,%eax,4), %edx
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	12(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	leal	.LC14@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
	.loc 1 284 0
	call	abort@PLT
.L49:
	.loc 1 286 0
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	testl	%eax, %eax
	je	.L51
	.loc 1 287 0
	movl	8(%ebp), %eax
	movl	36(%eax), %edi
	movl	12(%ebp), %eax
	movl	aa_error@GOTOFF(%ebx,%eax,4), %edx
	movl	8(%ebp), %eax
	movl	44(%eax), %esi
	movl	8(%ebp), %eax
	movl	40(%eax), %ecx
	movl	%edx, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%esi, 4(%esp)
	movl	%ecx, (%esp)
	call	*%edi
	jmp	.L53
.L51:
	.loc 1 290 0
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	testl	%eax, %eax
	je	.L54
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -16(%ebp)
	jmp	.L56
.L54:
	leal	.LC15@GOTOFF(%ebx), %eax
	movl	%eax, -16(%ebp)
.L56:
	movl	8(%ebp), %eax
	movl	40(%eax), %edx
	movl	12(%ebp), %eax
	movl	aa_error@GOTOFF(%ebx,%eax,4), %ecx
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %esi
	movl	-16(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	%edx, 20(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%ecx, 8(%esp)
	leal	.LC16@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	call	fprintf@PLT
.L53:
	.loc 1 297 0
	call	abort@PLT
.LFE8:
	.size	error, .-error
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
	.long	.LCFI12-.LCFI9
	.byte	0x83
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
	.long	.LCFI13-.LFB8
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI14-.LCFI13
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI18-.LCFI14
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE6:
	.file 2 "../../include/cmplrs/array_alloc.h"
	.file 3 "/usr/include/stdio.h"
	.file 4 "/usr/include/libio.h"
	.file 5 "/usr/include/bits/types.h"
	.file 6 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h"
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
	.long	.LFE8-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
	.section	.debug_info
	.long	0x8b9
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.Ldebug_line0
	.long	.Letext0
	.long	.Ltext0
	.string	"GNU C 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.byte	0x1
	.string	"../../libcmplrs/array_alloc.c"
	.string	"/usa/handong/simplnano/cmplr-open64-merge/targia32_sl1/libcmplrs"
	.uleb128 0x2
	.string	"size_t"
	.byte	0x6
	.byte	0xd6
	.long	0xaa
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
	.uleb128 0x2
	.string	"__quad_t"
	.byte	0x5
	.byte	0x3b
	.long	0x110
	.uleb128 0x2
	.string	"__off_t"
	.byte	0x5
	.byte	0x90
	.long	0x15a
	.uleb128 0x4
	.string	"long int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x2
	.string	"__off64_t"
	.byte	0x5
	.byte	0x91
	.long	0x13b
	.uleb128 0x3
	.long	.LASF0
	.byte	0x4
	.byte	0x7
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x6
	.byte	0x4
	.long	0x186
	.uleb128 0x4
	.string	"char"
	.byte	0x1
	.byte	0x8
	.uleb128 0x7
	.long	0x409
	.long	.LASF1
	.byte	0x94
	.byte	0x3
	.byte	0x2e
	.uleb128 0x8
	.string	"_flags"
	.byte	0x4
	.value	0x10c
	.long	0x109
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.string	"_IO_read_ptr"
	.byte	0x4
	.value	0x111
	.long	0x180
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.string	"_IO_read_end"
	.byte	0x4
	.value	0x112
	.long	0x180
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.string	"_IO_read_base"
	.byte	0x4
	.value	0x113
	.long	0x180
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.string	"_IO_write_base"
	.byte	0x4
	.value	0x114
	.long	0x180
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.string	"_IO_write_ptr"
	.byte	0x4
	.value	0x115
	.long	0x180
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x8
	.string	"_IO_write_end"
	.byte	0x4
	.value	0x116
	.long	0x180
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x8
	.string	"_IO_buf_base"
	.byte	0x4
	.value	0x117
	.long	0x180
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x8
	.string	"_IO_buf_end"
	.byte	0x4
	.value	0x118
	.long	0x180
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x8
	.string	"_IO_save_base"
	.byte	0x4
	.value	0x11a
	.long	0x180
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x8
	.string	"_IO_backup_base"
	.byte	0x4
	.value	0x11b
	.long	0x180
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x8
	.string	"_IO_save_end"
	.byte	0x4
	.value	0x11c
	.long	0x180
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x8
	.string	"_markers"
	.byte	0x4
	.value	0x11e
	.long	0x45a
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x8
	.string	"_chain"
	.byte	0x4
	.value	0x120
	.long	0x460
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x8
	.string	"_fileno"
	.byte	0x4
	.value	0x122
	.long	0x109
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x8
	.string	"_flags2"
	.byte	0x4
	.value	0x126
	.long	0x109
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x8
	.string	"_old_offset"
	.byte	0x4
	.value	0x128
	.long	0x14b
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x8
	.string	"_cur_column"
	.byte	0x4
	.value	0x12c
	.long	0xc2
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x8
	.string	"_vtable_offset"
	.byte	0x4
	.value	0x12d
	.long	0xed
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0x8
	.string	"_shortbuf"
	.byte	0x4
	.value	0x12e
	.long	0x466
	.byte	0x2
	.byte	0x23
	.uleb128 0x47
	.uleb128 0x8
	.string	"_lock"
	.byte	0x4
	.value	0x132
	.long	0x476
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x8
	.string	"_offset"
	.byte	0x4
	.value	0x13b
	.long	0x166
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x8
	.string	"__pad1"
	.byte	0x4
	.value	0x144
	.long	0x17e
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x8
	.string	"__pad2"
	.byte	0x4
	.value	0x145
	.long	0x17e
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x8
	.string	"__pad3"
	.byte	0x4
	.value	0x146
	.long	0x17e
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x8
	.string	"__pad4"
	.byte	0x4
	.value	0x147
	.long	0x17e
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x8
	.string	"__pad5"
	.byte	0x4
	.value	0x148
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x8
	.string	"_mode"
	.byte	0x4
	.value	0x14a
	.long	0x109
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x8
	.string	"_unused2"
	.byte	0x4
	.value	0x14c
	.long	0x47c
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.byte	0x0
	.uleb128 0x9
	.string	"_IO_lock_t"
	.byte	0x4
	.byte	0xb0
	.uleb128 0xa
	.long	0x45a
	.string	"_IO_marker"
	.byte	0xc
	.byte	0x4
	.byte	0xb6
	.uleb128 0xb
	.string	"_next"
	.byte	0x4
	.byte	0xb7
	.long	0x45a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.string	"_sbuf"
	.byte	0x4
	.byte	0xb8
	.long	0x460
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.string	"_pos"
	.byte	0x4
	.byte	0xbc
	.long	0x109
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.long	0x417
	.uleb128 0x6
	.byte	0x4
	.long	0x18e
	.uleb128 0xc
	.long	0x476
	.long	0x186
	.uleb128 0xd
	.long	0x177
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.long	0x409
	.uleb128 0xc
	.long	0x48c
	.long	0x186
	.uleb128 0xd
	.long	0x177
	.byte	0x27
	.byte	0x0
	.uleb128 0x2
	.string	"aa_handle"
	.byte	0x2
	.byte	0x46
	.long	0x49d
	.uleb128 0x6
	.byte	0x4
	.long	0x4a3
	.uleb128 0xa
	.long	0x612
	.string	"aa_data_st"
	.byte	0x34
	.byte	0x2
	.byte	0x46
	.uleb128 0xb
	.string	"aa_handle_consistency1"
	.byte	0x1
	.byte	0x59
	.long	0x49d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.string	"aa_base"
	.byte	0x1
	.byte	0x5a
	.long	0x612
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.string	"aa_next_to_use"
	.byte	0x1
	.byte	0x5b
	.long	0x618
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.string	"aa_max"
	.byte	0x1
	.byte	0x5c
	.long	0x618
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.string	"aa_initial_alloc"
	.byte	0x1
	.byte	0x5d
	.long	0x15a
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.string	"aa_element_size"
	.byte	0x1
	.byte	0x5e
	.long	0x15a
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xb
	.string	"aa_handle_consistency2"
	.byte	0x1
	.byte	0x5f
	.long	0x49d
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.string	"aa_realloc_numerator"
	.byte	0x1
	.byte	0x60
	.long	0x15a
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xb
	.string	"aa_realloc_denominator"
	.byte	0x1
	.byte	0x61
	.long	0x15a
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xb
	.string	"aa_error_func"
	.byte	0x1
	.byte	0x62
	.long	0x639
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xb
	.string	"aa_user_num"
	.byte	0x1
	.byte	0x63
	.long	0x109
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xb
	.string	"aa_user_string"
	.byte	0x1
	.byte	0x64
	.long	0x180
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xb
	.string	"aa_handle_consistency3"
	.byte	0x1
	.byte	0x65
	.long	0x49d
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.long	0x180
	.uleb128 0x6
	.byte	0x4
	.long	0x15a
	.uleb128 0xe
	.long	0x639
	.byte	0x1
	.uleb128 0xf
	.long	0x109
	.uleb128 0xf
	.long	0x180
	.uleb128 0xf
	.long	0x109
	.uleb128 0xf
	.long	0x180
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.long	0x61e
	.uleb128 0x10
	.long	0x758
	.byte	0x1
	.string	"aa_initialize"
	.byte	0x1
	.byte	0x77
	.byte	0x1
	.long	0x48c
	.long	.LFB5
	.long	.LFE5
	.long	.LLST0
	.uleb128 0x11
	.string	"base"
	.byte	0x1
	.byte	0x6d
	.long	0x612
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x11
	.string	"next_to_use"
	.byte	0x1
	.byte	0x6e
	.long	0x618
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x11
	.string	"max_allocated"
	.byte	0x1
	.byte	0x6f
	.long	0x618
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x11
	.string	"initial_allocation"
	.byte	0x1
	.byte	0x70
	.long	0x109
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x11
	.string	"element_size"
	.byte	0x1
	.byte	0x71
	.long	0x109
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x11
	.string	"change_numerator"
	.byte	0x1
	.byte	0x72
	.long	0x109
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x11
	.string	"change_denominator"
	.byte	0x1
	.byte	0x73
	.long	0x109
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x11
	.string	"err_func"
	.byte	0x1
	.byte	0x74
	.long	0x639
	.byte	0x2
	.byte	0x91
	.sleb128 28
	.uleb128 0x11
	.string	"user_num"
	.byte	0x1
	.byte	0x75
	.long	0x109
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x11
	.string	"user_string"
	.byte	0x1
	.byte	0x76
	.long	0x180
	.byte	0x2
	.byte	0x91
	.sleb128 36
	.uleb128 0x12
	.string	"l"
	.byte	0x1
	.byte	0x79
	.long	0x48c
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x10
	.long	0x819
	.byte	0x1
	.string	"aa_alloc"
	.byte	0x1
	.byte	0xa9
	.byte	0x1
	.long	0x17e
	.long	.LFB6
	.long	.LFE6
	.long	.LLST1
	.uleb128 0x11
	.string	"lclaa"
	.byte	0x1
	.byte	0xa8
	.long	0x48c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x11
	.string	"elements_to_alloc"
	.byte	0x1
	.byte	0xa8
	.long	0x15a
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x12
	.string	"count"
	.byte	0x1
	.byte	0xaa
	.long	0x15a
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x12
	.string	"max"
	.byte	0x1
	.byte	0xab
	.long	0x15a
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x12
	.string	"newbase"
	.byte	0x1
	.byte	0xac
	.long	0x180
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x12
	.string	"oldbase"
	.byte	0x1
	.byte	0xad
	.long	0x180
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x12
	.string	"len"
	.byte	0x1
	.byte	0xae
	.long	0x15a
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x12
	.string	"newmax"
	.byte	0x1
	.byte	0xaf
	.long	0x15a
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x12
	.string	"elsize"
	.byte	0x1
	.byte	0xb0
	.long	0x15a
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x13
	.long	0x84c
	.byte	0x1
	.string	"aa_discard"
	.byte	0x1
	.value	0x107
	.byte	0x1
	.long	.LFB7
	.long	.LFE7
	.long	.LLST2
	.uleb128 0x14
	.string	"lclaa"
	.byte	0x1
	.value	0x106
	.long	0x48c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x15
	.long	0x886
	.string	"error"
	.byte	0x1
	.value	0x118
	.byte	0x1
	.long	.LFB8
	.long	.LFE8
	.long	.LLST3
	.uleb128 0x14
	.string	"lclaa"
	.byte	0x1
	.value	0x117
	.long	0x48c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x14
	.string	"i"
	.byte	0x1
	.value	0x117
	.long	0x109
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0xc
	.long	0x896
	.long	0x180
	.uleb128 0xd
	.long	0x177
	.byte	0xd
	.byte	0x0
	.uleb128 0x12
	.string	"aa_error"
	.byte	0x1
	.byte	0x43
	.long	0x886
	.byte	0x5
	.byte	0x3
	.long	aa_error
	.uleb128 0x16
	.string	"stderr"
	.byte	0x3
	.byte	0x90
	.long	0x460
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x27
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.long	0x3c
	.value	0x2
	.long	.Ldebug_info0
	.long	0x8bd
	.long	0x63f
	.string	"aa_initialize"
	.long	0x758
	.string	"aa_alloc"
	.long	0x819
	.string	"aa_discard"
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
.LASF0:
	.string	"unsigned int"
.LASF1:
	.string	"_IO_FILE"
	.ident	"GCC: (GNU) 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.section	.text.__i686.get_pc_thunk.bx,"axG",@progbits,__i686.get_pc_thunk.bx,comdat
.globl __i686.get_pc_thunk.bx
	.hidden	__i686.get_pc_thunk.bx
	.type	__i686.get_pc_thunk.bx, @function
__i686.get_pc_thunk.bx:
	movl	(%esp), %ebx
	ret
	.section	.note.GNU-stack,"",@progbits
