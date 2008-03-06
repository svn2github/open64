	.file	"objalloc.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
.globl objalloc_create
	.type	objalloc_create, @function
objalloc_create:
.LFB5:
	.file 1 "../../libiberty/objalloc.c"
	.loc 1 89 0
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
	.loc 1 93 0
	movl	$12, (%esp)
	call	malloc@PLT
	movl	%eax, -12(%ebp)
	.loc 1 94 0
	cmpl	$0, -12(%ebp)
	jne	.L2
	.loc 1 95 0
	movl	$0, -24(%ebp)
	jmp	.L4
.L2:
	.loc 1 97 0
	movl	$4064, (%esp)
	call	malloc@PLT
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	movl	%edx, 8(%eax)
	.loc 1 98 0
	movl	-12(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	jne	.L5
	.loc 1 100 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 101 0
	movl	$0, -24(%ebp)
	jmp	.L4
.L5:
	.loc 1 104 0
	movl	-12(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 105 0
	movl	-8(%ebp), %eax
	movl	$0, (%eax)
	.loc 1 106 0
	movl	-8(%ebp), %eax
	movl	$0, 4(%eax)
	.loc 1 108 0
	movl	-8(%ebp), %eax
	leal	8(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 109 0
	movl	-12(%ebp), %eax
	movl	$4056, 4(%eax)
	.loc 1 111 0
	movl	-12(%ebp), %eax
	movl	%eax, -24(%ebp)
.L4:
	movl	-24(%ebp), %eax
	.loc 1 112 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE5:
	.size	objalloc_create, .-objalloc_create
.globl _objalloc_alloc
	.type	_objalloc_alloc, @function
_objalloc_alloc:
.LFB6:
	.loc 1 120 0
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
	.loc 1 123 0
	cmpl	$0, 12(%ebp)
	jne	.L9
	.loc 1 124 0
	movl	$1, 12(%ebp)
.L9:
	.loc 1 126 0
	movl	12(%ebp), %eax
	addl	$3, %eax
	andl	$-4, %eax
	movl	%eax, 12(%ebp)
	.loc 1 128 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	12(%ebp), %eax
	jb	.L11
	.loc 1 130 0
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	12(%ebp), %eax
	addl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 131 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	subl	12(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 132 0
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, -44(%ebp)
	jmp	.L13
.L11:
	.loc 1 135 0
	cmpl	$511, 12(%ebp)
	jbe	.L14
.LBB2:
	.loc 1 140 0
	movl	12(%ebp), %eax
	addl	$8, %eax
	movl	%eax, (%esp)
	call	malloc@PLT
	movl	%eax, -24(%ebp)
	.loc 1 141 0
	cmpl	$0, -24(%ebp)
	jne	.L16
	.loc 1 142 0
	movl	$0, -44(%ebp)
	jmp	.L13
.L16:
	.loc 1 144 0
	movl	-24(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 145 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, %edx
	movl	-20(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 146 0
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 148 0
	movl	8(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	%eax, 8(%edx)
	.loc 1 150 0
	movl	-24(%ebp), %eax
	addl	$8, %eax
	movl	%eax, -44(%ebp)
	jmp	.L13
.L14:
.LBE2:
.LBB3:
	.loc 1 156 0
	movl	$4064, (%esp)
	call	malloc@PLT
	movl	%eax, -16(%ebp)
	.loc 1 157 0
	cmpl	$0, -16(%ebp)
	jne	.L18
	.loc 1 158 0
	movl	$0, -44(%ebp)
	jmp	.L13
.L18:
	.loc 1 159 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, %edx
	movl	-16(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 160 0
	movl	-16(%ebp), %eax
	movl	$0, 4(%eax)
	.loc 1 162 0
	movl	-16(%ebp), %eax
	leal	8(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 163 0
	movl	8(%ebp), %eax
	movl	$4056, 4(%eax)
	.loc 1 165 0
	movl	8(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 8(%edx)
.LBB4:
	.loc 1 167 0
	movl	8(%ebp), %eax
	movl	%eax, -12(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -8(%ebp)
	cmpl	$0, -8(%ebp)
	jne	.L20
	movl	$1, -8(%ebp)
.L20:
	movl	-8(%ebp), %eax
	addl	$3, %eax
	andl	$-4, %eax
	movl	%eax, -8(%ebp)
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-8(%ebp), %eax
	jb	.L22
	movl	-12(%ebp), %eax
	movl	(%eax), %edx
	movl	-8(%ebp), %eax
	addl	%eax, %edx
	movl	-12(%ebp), %eax
	movl	%edx, (%eax)
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	subl	-8(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%edx, 4(%eax)
	movl	-12(%ebp), %eax
	movl	(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, -40(%ebp)
	jmp	.L24
.L22:
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_objalloc_alloc@PLT
	movl	%eax, -40(%ebp)
.L24:
	movl	-40(%ebp), %eax
.LBE4:
	movl	%eax, -44(%ebp)
.L13:
	movl	-44(%ebp), %eax
.LBE3:
	.loc 1 169 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE6:
	.size	_objalloc_alloc, .-_objalloc_alloc
.globl objalloc_free
	.type	objalloc_free, @function
objalloc_free:
.LFB7:
	.loc 1 176 0
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
	.loc 1 179 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 180 0
	jmp	.L27
.L28:
.LBB5:
	.loc 1 184 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 185 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 186 0
	movl	-8(%ebp), %eax
	movl	%eax, -12(%ebp)
.L27:
.LBE5:
	.loc 1 180 0
	cmpl	$0, -12(%ebp)
	jne	.L28
	.loc 1 189 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 190 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE7:
	.size	objalloc_free, .-objalloc_free
.globl objalloc_free_block
	.type	objalloc_free_block, @function
objalloc_free_block:
.LFB8:
	.loc 1 199 0
	pushl	%ebp
.LCFI12:
	movl	%esp, %ebp
.LCFI13:
	pushl	%ebx
.LCFI14:
	subl	$52, %esp
.LCFI15:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 201 0
	movl	12(%ebp), %eax
	movl	%eax, -32(%ebp)
	.loc 1 205 0
	movl	$0, -36(%ebp)
	.loc 1 206 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -40(%ebp)
	jmp	.L32
.L33:
	.loc 1 208 0
	movl	-40(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	jne	.L34
	.loc 1 210 0
	movl	-40(%ebp), %eax
	cmpl	%eax, -32(%ebp)
	jbe	.L36
	movl	-40(%ebp), %eax
	addl	$4064, %eax
	cmpl	-32(%ebp), %eax
	ja	.L38
.L36:
	.loc 1 212 0
	movl	-40(%ebp), %eax
	movl	%eax, -36(%ebp)
	jmp	.L39
.L34:
	.loc 1 216 0
	movl	-40(%ebp), %eax
	addl	$8, %eax
	cmpl	-32(%ebp), %eax
	je	.L38
.L39:
	.loc 1 206 0
	movl	-40(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -40(%ebp)
.L32:
	cmpl	$0, -40(%ebp)
	jne	.L33
.L38:
	.loc 1 222 0
	cmpl	$0, -40(%ebp)
	jne	.L40
	.loc 1 223 0
	call	abort@PLT
.L40:
	.loc 1 225 0
	movl	-40(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	jne	.L42
.LBB6:
	.loc 1 237 0
	movl	$0, -24(%ebp)
	.loc 1 238 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 239 0
	jmp	.L44
.L45:
.LBB7:
	.loc 1 243 0
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 244 0
	cmpl	$0, -36(%ebp)
	je	.L46
	.loc 1 246 0
	movl	-36(%ebp), %eax
	cmpl	-28(%ebp), %eax
	jne	.L48
	.loc 1 247 0
	movl	$0, -36(%ebp)
.L48:
	.loc 1 248 0
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	jmp	.L50
.L46:
	.loc 1 250 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-32(%ebp), %eax
	jbe	.L51
	.loc 1 251 0
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	jmp	.L50
.L51:
	.loc 1 252 0
	cmpl	$0, -24(%ebp)
	jne	.L50
	.loc 1 253 0
	movl	-28(%ebp), %eax
	movl	%eax, -24(%ebp)
.L50:
	.loc 1 255 0
	movl	-20(%ebp), %eax
	movl	%eax, -28(%ebp)
.L44:
.LBE7:
	.loc 1 239 0
	movl	-28(%ebp), %eax
	cmpl	-40(%ebp), %eax
	jne	.L45
	.loc 1 258 0
	cmpl	$0, -24(%ebp)
	jne	.L55
	.loc 1 259 0
	movl	-40(%ebp), %eax
	movl	%eax, -24(%ebp)
.L55:
	.loc 1 260 0
	movl	8(%ebp), %edx
	movl	-24(%ebp), %eax
	movl	%eax, 8(%edx)
	.loc 1 263 0
	movl	8(%ebp), %edx
	movl	-32(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 264 0
	movl	-40(%ebp), %edx
	movl	-32(%ebp), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	addl	$4064, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 4(%eax)
	jmp	.L64
.L42:
.LBE6:
.LBB8:
	.loc 1 277 0
	movl	-40(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 278 0
	movl	-40(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 280 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 281 0
	jmp	.L58
.L59:
.LBB9:
	.loc 1 285 0
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 286 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 287 0
	movl	-8(%ebp), %eax
	movl	%eax, -16(%ebp)
.L58:
.LBE9:
	.loc 1 281 0
	movl	-16(%ebp), %eax
	cmpl	-40(%ebp), %eax
	jne	.L59
	.loc 1 290 0
	movl	8(%ebp), %edx
	movl	-40(%ebp), %eax
	movl	%eax, 8(%edx)
	.loc 1 292 0
	jmp	.L61
.L62:
	.loc 1 293 0
	movl	-40(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -40(%ebp)
.L61:
	.loc 1 292 0
	movl	-40(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	jne	.L62
	.loc 1 295 0
	movl	8(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 296 0
	movl	-40(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	addl	$4064, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 4(%eax)
.L64:
.LBE8:
	.loc 1 298 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE8:
	.size	objalloc_free_block, .-objalloc_free_block
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
	.file 2 "../../include/gnu/objalloc.h"
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
	.section	.debug_info
	.long	0x41a
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.Ldebug_line0
	.long	.Letext0
	.long	.Ltext0
	.string	"GNU C 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.byte	0x1
	.string	"../../libiberty/objalloc.c"
	.string	"/usa/handong/simplnano/cmplr-open64-merge/targia32_sl1/libiberty"
	.uleb128 0x2
	.long	0xe2
	.string	"objalloc"
	.byte	0xc
	.byte	0x2
	.byte	0x2d
	.uleb128 0x3
	.long	.LASF0
	.byte	0x2
	.byte	0x2e
	.long	0xe2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x4
	.string	"current_space"
	.byte	0x2
	.byte	0x2f
	.long	0xf0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x4
	.string	"chunks"
	.byte	0x2
	.byte	0x30
	.long	0xf7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.long	0xe8
	.uleb128 0x6
	.string	"char"
	.byte	0x1
	.byte	0x8
	.uleb128 0x7
	.long	.LASF1
	.byte	0x4
	.byte	0x7
	.uleb128 0x8
	.byte	0x4
	.uleb128 0x6
	.string	"double"
	.byte	0x8
	.byte	0x4
	.uleb128 0x6
	.string	"int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x6
	.string	"unsigned char"
	.byte	0x1
	.byte	0x8
	.uleb128 0x6
	.string	"short unsigned int"
	.byte	0x2
	.byte	0x7
	.uleb128 0x6
	.string	"long unsigned int"
	.byte	0x4
	.byte	0x7
	.uleb128 0x6
	.string	"signed char"
	.byte	0x1
	.byte	0x6
	.uleb128 0x6
	.string	"short int"
	.byte	0x2
	.byte	0x5
	.uleb128 0x6
	.string	"long long int"
	.byte	0x8
	.byte	0x5
	.uleb128 0x6
	.string	"long long unsigned int"
	.byte	0x8
	.byte	0x7
	.uleb128 0x6
	.string	"long int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x7
	.long	.LASF1
	.byte	0x4
	.byte	0x7
	.uleb128 0x2
	.long	0x1d5
	.string	"objalloc_chunk"
	.byte	0x8
	.byte	0x1
	.byte	0x3d
	.uleb128 0x4
	.string	"next"
	.byte	0x1
	.byte	0x3f
	.long	0x1d5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x3
	.long	.LASF0
	.byte	0x1
	.byte	0x43
	.long	0xe2
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.long	0x1a0
	.uleb128 0x9
	.long	0x223
	.byte	0x1
	.string	"objalloc_create"
	.byte	0x1
	.byte	0x59
	.byte	0x1
	.long	0x223
	.long	.LFB5
	.long	.LFE5
	.long	.LLST0
	.uleb128 0xa
	.string	"ret"
	.byte	0x1
	.byte	0x5a
	.long	0x223
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xa
	.string	"chunk"
	.byte	0x1
	.byte	0x5b
	.long	0x1d5
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.long	0x99
	.uleb128 0x9
	.long	0x2db
	.byte	0x1
	.string	"_objalloc_alloc"
	.byte	0x1
	.byte	0x78
	.byte	0x1
	.long	0xf7
	.long	.LFB6
	.long	.LFE6
	.long	.LLST1
	.uleb128 0xb
	.string	"o"
	.byte	0x1
	.byte	0x76
	.long	0x223
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xb
	.string	"len"
	.byte	0x1
	.byte	0x77
	.long	0x131
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0xc
	.long	0x298
	.long	.LBB2
	.long	.LBE2
	.uleb128 0xa
	.string	"ret"
	.byte	0x1
	.byte	0x89
	.long	0xe2
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xa
	.string	"chunk"
	.byte	0x1
	.byte	0x8a
	.long	0x1d5
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0xd
	.long	.LBB3
	.long	.LBE3
	.uleb128 0xa
	.string	"chunk"
	.byte	0x1
	.byte	0x9a
	.long	0x1d5
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xd
	.long	.LBB4
	.long	.LBE4
	.uleb128 0xa
	.string	"__o"
	.byte	0x1
	.byte	0xa7
	.long	0x223
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xa
	.string	"__len"
	.byte	0x1
	.byte	0xa7
	.long	0x131
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.long	0x330
	.byte	0x1
	.string	"objalloc_free"
	.byte	0x1
	.byte	0xb0
	.byte	0x1
	.long	.LFB7
	.long	.LFE7
	.long	.LLST2
	.uleb128 0xb
	.string	"o"
	.byte	0x1
	.byte	0xaf
	.long	0x223
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xa
	.string	"l"
	.byte	0x1
	.byte	0xb1
	.long	0x1d5
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xd
	.long	.LBB5
	.long	.LBE5
	.uleb128 0xa
	.string	"next"
	.byte	0x1
	.byte	0xb6
	.long	0x1d5
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.byte	0x1
	.string	"objalloc_free_block"
	.byte	0x1
	.byte	0xc7
	.byte	0x1
	.long	.LFB8
	.long	.LFE8
	.long	.LLST3
	.uleb128 0xb
	.string	"o"
	.byte	0x1
	.byte	0xc5
	.long	0x223
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xb
	.string	"block"
	.byte	0x1
	.byte	0xc6
	.long	0xf7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0xa
	.string	"p"
	.byte	0x1
	.byte	0xc8
	.long	0x1d5
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xa
	.string	"small"
	.byte	0x1
	.byte	0xc8
	.long	0x1d5
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xa
	.string	"b"
	.byte	0x1
	.byte	0xc9
	.long	0xe2
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xc
	.long	0x3dc
	.long	.LBB6
	.long	.LBE6
	.uleb128 0xa
	.string	"q"
	.byte	0x1
	.byte	0xe3
	.long	0x1d5
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xa
	.string	"first"
	.byte	0x1
	.byte	0xe4
	.long	0x1d5
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xd
	.long	.LBB7
	.long	.LBE7
	.uleb128 0xa
	.string	"next"
	.byte	0x1
	.byte	0xf1
	.long	0x1d5
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	.LBB8
	.long	.LBE8
	.uleb128 0x10
	.string	"q"
	.byte	0x1
	.value	0x10c
	.long	0x1d5
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x11
	.long	.LASF0
	.byte	0x1
	.value	0x10d
	.long	0xe2
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xd
	.long	.LBB9
	.long	.LBE9
	.uleb128 0x10
	.string	"next"
	.byte	0x1
	.value	0x11b
	.long	0x1d5
	.byte	0x2
	.byte	0x91
	.sleb128 -16
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
	.uleb128 0x3
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
	.uleb128 0x4
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
	.uleb128 0x5
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.long	0x60
	.value	0x2
	.long	.Ldebug_info0
	.long	0x41e
	.long	0x1db
	.string	"objalloc_create"
	.long	0x229
	.string	"_objalloc_alloc"
	.long	0x2db
	.string	"objalloc_free"
	.long	0x330
	.string	"objalloc_free_block"
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
	.string	"unsigned int"
.LASF0:
	.string	"current_ptr"
	.ident	"GCC: (GNU) 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.section	.text.__i686.get_pc_thunk.bx,"axG",@progbits,__i686.get_pc_thunk.bx,comdat
.globl __i686.get_pc_thunk.bx
	.hidden	__i686.get_pc_thunk.bx
	.type	__i686.get_pc_thunk.bx, @function
__i686.get_pc_thunk.bx:
	movl	(%esp), %ebx
	ret
	.section	.note.GNU-stack,"",@progbits
