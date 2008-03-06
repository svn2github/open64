	.file	"splay-tree.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
	.type	splay_tree_delete_helper, @function
splay_tree_delete_helper:
.LFB5:
	.file 1 "../../libiberty/splay-tree.c"
	.loc 1 65 0
	pushl	%ebp
.LCFI0:
	movl	%esp, %ebp
.LCFI1:
	subl	$8, %esp
.LCFI2:
	.loc 1 66 0
	cmpl	$0, 12(%ebp)
	je	.L8
	.loc 1 69 0
	movl	12(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	splay_tree_delete_helper
	.loc 1 70 0
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	splay_tree_delete_helper
	.loc 1 72 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	je	.L4
	.loc 1 73 0
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	*%edx
.L4:
	.loc 1 74 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	.L6
	.loc 1 75 0
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	*%edx
.L6:
	.loc 1 77 0
	movl	8(%ebp), %eax
	movl	20(%eax), %ecx
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	12(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	*%ecx
.L8:
	.loc 1 78 0
	leave
	ret
.LFE5:
	.size	splay_tree_delete_helper, .-splay_tree_delete_helper
	.type	splay_tree_splay_helper, @function
splay_tree_splay_helper:
.LFB6:
	.loc 1 90 0
	pushl	%ebp
.LCFI3:
	movl	%esp, %ebp
.LCFI4:
	subl	$56, %esp
.LCFI5:
	.loc 1 95 0
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 97 0
	cmpl	$0, -16(%ebp)
	jne	.L10
	.loc 1 98 0
	movl	20(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -36(%ebp)
	jmp	.L12
.L10:
	.loc 1 100 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	movl	%eax, -12(%ebp)
	.loc 1 102 0
	cmpl	$0, -12(%ebp)
	jne	.L13
	.loc 1 104 0
	movl	$0, -20(%ebp)
	jmp	.L15
.L13:
	.loc 1 105 0
	cmpl	$0, -12(%ebp)
	jns	.L16
	.loc 1 107 0
	movl	-16(%ebp), %eax
	addl	$8, %eax
	movl	%eax, -20(%ebp)
	jmp	.L15
.L16:
	.loc 1 110 0
	movl	-16(%ebp), %eax
	addl	$12, %eax
	movl	%eax, -20(%ebp)
.L15:
	.loc 1 112 0
	cmpl	$0, -20(%ebp)
	je	.L18
	.loc 1 115 0
	movl	20(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	splay_tree_splay_helper
	movl	%eax, -16(%ebp)
	.loc 1 119 0
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	cmpl	-16(%ebp), %eax
	je	.L18
	.loc 1 120 0
	movl	-16(%ebp), %eax
	movl	%eax, -36(%ebp)
	jmp	.L12
.L18:
	.loc 1 123 0
	cmpl	$0, 20(%ebp)
	jne	.L21
	.loc 1 125 0
	movl	-16(%ebp), %eax
	movl	%eax, -36(%ebp)
	jmp	.L12
.L21:
	.loc 1 129 0
	cmpl	$0, 24(%ebp)
	jne	.L23
	.loc 1 131 0
	movl	20(%ebp), %eax
	movl	(%eax), %eax
	movl	8(%eax), %eax
	cmpl	-16(%ebp), %eax
	jne	.L25
	.loc 1 133 0
	movl	-16(%ebp), %eax
	movl	12(%eax), %edx
	movl	16(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 134 0
	movl	20(%ebp), %eax
	movl	(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%edx, 12(%eax)
	jmp	.L27
.L25:
	.loc 1 138 0
	movl	-16(%ebp), %eax
	movl	8(%eax), %edx
	movl	16(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 139 0
	movl	20(%ebp), %eax
	movl	(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%edx, 8(%eax)
.L27:
	.loc 1 141 0
	movl	20(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 142 0
	movl	-16(%ebp), %eax
	movl	%eax, -36(%ebp)
	jmp	.L12
.L23:
	.loc 1 147 0
	movl	20(%ebp), %eax
	movl	(%eax), %eax
	movl	8(%eax), %eax
	cmpl	-16(%ebp), %eax
	jne	.L28
	movl	20(%ebp), %eax
	movl	(%eax), %edx
	movl	24(%ebp), %eax
	movl	(%eax), %eax
	movl	8(%eax), %eax
	cmpl	%eax, %edx
	jne	.L28
.LBB2:
	.loc 1 149 0
	movl	20(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 151 0
	movl	24(%ebp), %eax
	movl	(%eax), %edx
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, 8(%edx)
	.loc 1 152 0
	movl	24(%ebp), %eax
	movl	(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%edx, 12(%eax)
	.loc 1 153 0
	movl	-16(%ebp), %eax
	movl	12(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%edx, 8(%eax)
	.loc 1 154 0
	movl	-16(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	%eax, 12(%edx)
	.loc 1 155 0
	movl	24(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 156 0
	movl	-16(%ebp), %eax
	movl	%eax, -36(%ebp)
	jmp	.L12
.L28:
.LBE2:
	.loc 1 158 0
	movl	20(%ebp), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	cmpl	-16(%ebp), %eax
	jne	.L31
	movl	20(%ebp), %eax
	movl	(%eax), %edx
	movl	24(%ebp), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	cmpl	%eax, %edx
	jne	.L31
.LBB3:
	.loc 1 160 0
	movl	20(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -4(%ebp)
	.loc 1 162 0
	movl	24(%ebp), %eax
	movl	(%eax), %edx
	movl	-4(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, 12(%edx)
	.loc 1 163 0
	movl	24(%ebp), %eax
	movl	(%eax), %edx
	movl	-4(%ebp), %eax
	movl	%edx, 8(%eax)
	.loc 1 164 0
	movl	-16(%ebp), %eax
	movl	8(%eax), %edx
	movl	-4(%ebp), %eax
	movl	%edx, 12(%eax)
	.loc 1 165 0
	movl	-16(%ebp), %edx
	movl	-4(%ebp), %eax
	movl	%eax, 8(%edx)
	.loc 1 166 0
	movl	24(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 167 0
	movl	-16(%ebp), %eax
	movl	%eax, -36(%ebp)
	jmp	.L12
.L31:
.LBE3:
	.loc 1 172 0
	movl	20(%ebp), %eax
	movl	(%eax), %eax
	movl	8(%eax), %eax
	cmpl	-16(%ebp), %eax
	jne	.L34
	.loc 1 174 0
	movl	20(%ebp), %eax
	movl	(%eax), %edx
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, 8(%edx)
	.loc 1 175 0
	movl	20(%ebp), %eax
	movl	(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%edx, 12(%eax)
	.loc 1 176 0
	movl	24(%ebp), %eax
	movl	(%eax), %edx
	movl	-16(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, 12(%edx)
	.loc 1 177 0
	movl	24(%ebp), %eax
	movl	(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%edx, 8(%eax)
	.loc 1 178 0
	movl	24(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 179 0
	movl	-16(%ebp), %eax
	movl	%eax, -36(%ebp)
	jmp	.L12
.L34:
	.loc 1 183 0
	movl	20(%ebp), %eax
	movl	(%eax), %edx
	movl	-16(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, 12(%edx)
	.loc 1 184 0
	movl	20(%ebp), %eax
	movl	(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%edx, 8(%eax)
	.loc 1 185 0
	movl	24(%ebp), %eax
	movl	(%eax), %edx
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, 8(%edx)
	.loc 1 186 0
	movl	24(%ebp), %eax
	movl	(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%edx, 12(%eax)
	.loc 1 187 0
	movl	24(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 188 0
	movl	-16(%ebp), %eax
	movl	%eax, -36(%ebp)
.L12:
	movl	-36(%ebp), %eax
	.loc 1 190 0
	leave
	ret
.LFE6:
	.size	splay_tree_splay_helper, .-splay_tree_splay_helper
	.type	splay_tree_splay, @function
splay_tree_splay:
.LFB7:
	.loc 1 198 0
	pushl	%ebp
.LCFI6:
	movl	%esp, %ebp
.LCFI7:
	subl	$24, %esp
.LCFI8:
	.loc 1 199 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L40
	.loc 1 202 0
	movl	8(%ebp), %eax
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	splay_tree_splay_helper
.L40:
	.loc 1 204 0
	leave
	ret
.LFE7:
	.size	splay_tree_splay, .-splay_tree_splay
	.type	splay_tree_foreach_helper, @function
splay_tree_foreach_helper:
.LFB8:
	.loc 1 217 0
	pushl	%ebp
.LCFI9:
	movl	%esp, %ebp
.LCFI10:
	subl	$40, %esp
.LCFI11:
	.loc 1 220 0
	cmpl	$0, 12(%ebp)
	jne	.L42
	.loc 1 221 0
	movl	$0, -20(%ebp)
	jmp	.L44
.L42:
	.loc 1 223 0
	movl	12(%ebp), %eax
	movl	8(%eax), %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	splay_tree_foreach_helper
	movl	%eax, -4(%ebp)
	.loc 1 224 0
	cmpl	$0, -4(%ebp)
	je	.L45
	.loc 1 225 0
	movl	-4(%ebp), %eax
	movl	%eax, -20(%ebp)
	jmp	.L44
.L45:
	.loc 1 227 0
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	movl	16(%ebp), %eax
	call	*%eax
	movl	%eax, -4(%ebp)
	.loc 1 228 0
	cmpl	$0, -4(%ebp)
	je	.L47
	.loc 1 229 0
	movl	-4(%ebp), %eax
	movl	%eax, -20(%ebp)
	jmp	.L44
.L47:
	.loc 1 231 0
	movl	12(%ebp), %eax
	movl	12(%eax), %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	splay_tree_foreach_helper
	movl	%eax, -20(%ebp)
.L44:
	movl	-20(%ebp), %eax
	.loc 1 232 0
	leave
	ret
.LFE8:
	.size	splay_tree_foreach_helper, .-splay_tree_foreach_helper
	.type	splay_tree_xmalloc_allocate, @function
splay_tree_xmalloc_allocate:
.LFB9:
	.loc 1 240 0
	pushl	%ebp
.LCFI12:
	movl	%esp, %ebp
.LCFI13:
	pushl	%ebx
.LCFI14:
	subl	$4, %esp
.LCFI15:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 241 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	.loc 1 242 0
	addl	$4, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE9:
	.size	splay_tree_xmalloc_allocate, .-splay_tree_xmalloc_allocate
	.type	splay_tree_xmalloc_deallocate, @function
splay_tree_xmalloc_deallocate:
.LFB10:
	.loc 1 248 0
	pushl	%ebp
.LCFI16:
	movl	%esp, %ebp
.LCFI17:
	pushl	%ebx
.LCFI18:
	subl	$4, %esp
.LCFI19:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 249 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 250 0
	addl	$4, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE10:
	.size	splay_tree_xmalloc_deallocate, .-splay_tree_xmalloc_deallocate
.globl splay_tree_new
	.type	splay_tree_new, @function
splay_tree_new:
.LFB11:
	.loc 1 263 0
	pushl	%ebp
.LCFI20:
	movl	%esp, %ebp
.LCFI21:
	pushl	%ebx
.LCFI22:
	subl	$36, %esp
.LCFI23:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 264 0
	movl	$0, 20(%esp)
	leal	splay_tree_xmalloc_deallocate@GOTOFF(%ebx), %eax
	movl	%eax, 16(%esp)
	leal	splay_tree_xmalloc_allocate@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	splay_tree_new_with_allocator@PLT
	.loc 1 267 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE11:
	.size	splay_tree_new, .-splay_tree_new
.globl splay_tree_new_with_allocator
	.type	splay_tree_new_with_allocator, @function
splay_tree_new_with_allocator:
.LFB12:
	.loc 1 283 0
	pushl	%ebp
.LCFI24:
	movl	%esp, %ebp
.LCFI25:
	subl	$24, %esp
.LCFI26:
	.loc 1 285 0
	movl	28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$28, (%esp)
	movl	20(%ebp), %eax
	call	*%eax
	movl	%eax, -4(%ebp)
	.loc 1 286 0
	movl	-4(%ebp), %eax
	movl	$0, (%eax)
	.loc 1 287 0
	movl	-4(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 288 0
	movl	-4(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, 8(%edx)
	.loc 1 289 0
	movl	-4(%ebp), %edx
	movl	16(%ebp), %eax
	movl	%eax, 12(%edx)
	.loc 1 290 0
	movl	-4(%ebp), %edx
	movl	20(%ebp), %eax
	movl	%eax, 16(%edx)
	.loc 1 291 0
	movl	-4(%ebp), %edx
	movl	24(%ebp), %eax
	movl	%eax, 20(%edx)
	.loc 1 292 0
	movl	-4(%ebp), %edx
	movl	28(%ebp), %eax
	movl	%eax, 24(%edx)
	.loc 1 294 0
	movl	-4(%ebp), %eax
	.loc 1 295 0
	leave
	ret
.LFE12:
	.size	splay_tree_new_with_allocator, .-splay_tree_new_with_allocator
.globl splay_tree_delete
	.type	splay_tree_delete, @function
splay_tree_delete:
.LFB13:
	.loc 1 302 0
	pushl	%ebp
.LCFI27:
	movl	%esp, %ebp
.LCFI28:
	subl	$8, %esp
.LCFI29:
	.loc 1 303 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	splay_tree_delete_helper
	.loc 1 304 0
	movl	8(%ebp), %eax
	movl	20(%eax), %ecx
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	8(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	*%ecx
	.loc 1 305 0
	leave
	ret
.LFE13:
	.size	splay_tree_delete, .-splay_tree_delete
.globl splay_tree_insert
	.type	splay_tree_insert, @function
splay_tree_insert:
.LFB14:
	.loc 1 316 0
	pushl	%ebp
.LCFI30:
	movl	%esp, %ebp
.LCFI31:
	subl	$24, %esp
.LCFI32:
	.loc 1 317 0
	movl	$0, -8(%ebp)
	.loc 1 319 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	splay_tree_splay
	.loc 1 321 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L61
	.loc 1 322 0
	movl	8(%ebp), %eax
	movl	4(%eax), %ecx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	*%ecx
	movl	%eax, -8(%ebp)
.L61:
	.loc 1 324 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L63
	cmpl	$0, -8(%ebp)
	jne	.L63
	.loc 1 328 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	.L66
	.loc 1 329 0
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	*%edx
.L66:
	.loc 1 330 0
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	16(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 324 0
	jmp	.L68
.L63:
.LBB4:
	.loc 1 337 0
	movl	8(%ebp), %eax
	movl	16(%eax), %edx
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$16, (%esp)
	call	*%edx
	movl	%eax, -4(%ebp)
	.loc 1 340 0
	movl	-4(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 341 0
	movl	-4(%ebp), %edx
	movl	16(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 343 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L69
	.loc 1 344 0
	movl	-4(%ebp), %eax
	movl	$0, 12(%eax)
	movl	-4(%ebp), %eax
	movl	12(%eax), %edx
	movl	-4(%ebp), %eax
	movl	%edx, 8(%eax)
	jmp	.L71
.L69:
	.loc 1 345 0
	cmpl	$0, -8(%ebp)
	jns	.L72
	.loc 1 347 0
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	-4(%ebp), %eax
	movl	%edx, 8(%eax)
	.loc 1 348 0
	movl	-4(%ebp), %eax
	movl	8(%eax), %eax
	movl	12(%eax), %edx
	movl	-4(%ebp), %eax
	movl	%edx, 12(%eax)
	.loc 1 349 0
	movl	-4(%ebp), %eax
	movl	8(%eax), %eax
	movl	$0, 12(%eax)
	jmp	.L71
.L72:
	.loc 1 353 0
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	-4(%ebp), %eax
	movl	%edx, 12(%eax)
	.loc 1 354 0
	movl	-4(%ebp), %eax
	movl	12(%eax), %eax
	movl	8(%eax), %edx
	movl	-4(%ebp), %eax
	movl	%edx, 8(%eax)
	.loc 1 355 0
	movl	-4(%ebp), %eax
	movl	12(%eax), %eax
	movl	$0, 8(%eax)
.L71:
	.loc 1 358 0
	movl	8(%ebp), %edx
	movl	-4(%ebp), %eax
	movl	%eax, (%edx)
.L68:
.LBE4:
	.loc 1 361 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	.loc 1 362 0
	leave
	ret
.LFE14:
	.size	splay_tree_insert, .-splay_tree_insert
.globl splay_tree_remove
	.type	splay_tree_remove, @function
splay_tree_remove:
.LFB15:
	.loc 1 370 0
	pushl	%ebp
.LCFI33:
	movl	%esp, %ebp
.LCFI34:
	subl	$24, %esp
.LCFI35:
	.loc 1 371 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	splay_tree_splay
	.loc 1 373 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L88
	movl	8(%ebp), %eax
	movl	4(%eax), %ecx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	*%ecx
	testl	%eax, %eax
	jne	.L88
.LBB5:
	.loc 1 377 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	8(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 378 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movl	%eax, -4(%ebp)
	.loc 1 381 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	.L79
	.loc 1 382 0
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	*%edx
.L79:
	.loc 1 383 0
	movl	8(%ebp), %eax
	movl	20(%eax), %ecx
	movl	8(%ebp), %eax
	movl	24(%eax), %edx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	*%ecx
	.loc 1 387 0
	cmpl	$0, -8(%ebp)
	je	.L81
	.loc 1 389 0
	movl	8(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 393 0
	cmpl	$0, -4(%ebp)
	je	.L88
	.loc 1 395 0
	jmp	.L85
.L86:
	.loc 1 396 0
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -8(%ebp)
.L85:
	.loc 1 395 0
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	jne	.L86
	.loc 1 397 0
	movl	-8(%ebp), %edx
	movl	-4(%ebp), %eax
	movl	%eax, 12(%edx)
	jmp	.L88
.L81:
	.loc 1 401 0
	movl	8(%ebp), %edx
	movl	-4(%ebp), %eax
	movl	%eax, (%edx)
.L88:
.LBE5:
	.loc 1 403 0
	leave
	ret
.LFE15:
	.size	splay_tree_remove, .-splay_tree_remove
.globl splay_tree_lookup
	.type	splay_tree_lookup, @function
splay_tree_lookup:
.LFB16:
	.loc 1 412 0
	pushl	%ebp
.LCFI36:
	movl	%esp, %ebp
.LCFI37:
	subl	$24, %esp
.LCFI38:
	.loc 1 413 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	splay_tree_splay
	.loc 1 415 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L90
	movl	8(%ebp), %eax
	movl	4(%eax), %ecx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	*%ecx
	testl	%eax, %eax
	jne	.L90
	.loc 1 416 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -4(%ebp)
	jmp	.L93
.L90:
	.loc 1 418 0
	movl	$0, -4(%ebp)
.L93:
	movl	-4(%ebp), %eax
	.loc 1 419 0
	leave
	ret
.LFE16:
	.size	splay_tree_lookup, .-splay_tree_lookup
.globl splay_tree_max
	.type	splay_tree_max, @function
splay_tree_max:
.LFB17:
	.loc 1 426 0
	pushl	%ebp
.LCFI39:
	movl	%esp, %ebp
.LCFI40:
	subl	$20, %esp
.LCFI41:
	.loc 1 427 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -4(%ebp)
	.loc 1 429 0
	cmpl	$0, -4(%ebp)
	jne	.L99
	.loc 1 430 0
	movl	$0, -20(%ebp)
	jmp	.L98
.L100:
	.loc 1 433 0
	movl	-4(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -4(%ebp)
.L99:
	.loc 1 432 0
	movl	-4(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	jne	.L100
	.loc 1 435 0
	movl	-4(%ebp), %eax
	movl	%eax, -20(%ebp)
.L98:
	movl	-20(%ebp), %eax
	.loc 1 436 0
	leave
	ret
.LFE17:
	.size	splay_tree_max, .-splay_tree_max
.globl splay_tree_min
	.type	splay_tree_min, @function
splay_tree_min:
.LFB18:
	.loc 1 443 0
	pushl	%ebp
.LCFI42:
	movl	%esp, %ebp
.LCFI43:
	subl	$20, %esp
.LCFI44:
	.loc 1 444 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -4(%ebp)
	.loc 1 446 0
	cmpl	$0, -4(%ebp)
	jne	.L107
	.loc 1 447 0
	movl	$0, -20(%ebp)
	jmp	.L106
.L108:
	.loc 1 450 0
	movl	-4(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -4(%ebp)
.L107:
	.loc 1 449 0
	movl	-4(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	jne	.L108
	.loc 1 452 0
	movl	-4(%ebp), %eax
	movl	%eax, -20(%ebp)
.L106:
	movl	-20(%ebp), %eax
	.loc 1 453 0
	leave
	ret
.LFE18:
	.size	splay_tree_min, .-splay_tree_min
.globl splay_tree_predecessor
	.type	splay_tree_predecessor, @function
splay_tree_predecessor:
.LFB19:
	.loc 1 462 0
	pushl	%ebp
.LCFI45:
	movl	%esp, %ebp
.LCFI46:
	subl	$40, %esp
.LCFI47:
	.loc 1 467 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L112
	.loc 1 468 0
	movl	$0, -20(%ebp)
	jmp	.L114
.L112:
	.loc 1 472 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	splay_tree_splay
	.loc 1 473 0
	movl	8(%ebp), %eax
	movl	4(%eax), %ecx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	*%ecx
	movl	%eax, -8(%ebp)
	.loc 1 476 0
	cmpl	$0, -8(%ebp)
	jns	.L115
	.loc 1 477 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
	jmp	.L114
.L115:
	.loc 1 480 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	8(%eax), %eax
	movl	%eax, -4(%ebp)
	.loc 1 481 0
	cmpl	$0, -4(%ebp)
	je	.L117
	.loc 1 482 0
	jmp	.L119
.L120:
	.loc 1 483 0
	movl	-4(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -4(%ebp)
.L119:
	.loc 1 482 0
	movl	-4(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	jne	.L120
.L117:
	.loc 1 485 0
	movl	-4(%ebp), %eax
	movl	%eax, -20(%ebp)
.L114:
	movl	-20(%ebp), %eax
	.loc 1 486 0
	leave
	ret
.LFE19:
	.size	splay_tree_predecessor, .-splay_tree_predecessor
.globl splay_tree_successor
	.type	splay_tree_successor, @function
splay_tree_successor:
.LFB20:
	.loc 1 495 0
	pushl	%ebp
.LCFI48:
	movl	%esp, %ebp
.LCFI49:
	subl	$40, %esp
.LCFI50:
	.loc 1 500 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L123
	.loc 1 501 0
	movl	$0, -20(%ebp)
	jmp	.L125
.L123:
	.loc 1 505 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	splay_tree_splay
	.loc 1 506 0
	movl	8(%ebp), %eax
	movl	4(%eax), %ecx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	*%ecx
	movl	%eax, -8(%ebp)
	.loc 1 509 0
	cmpl	$0, -8(%ebp)
	jle	.L126
	.loc 1 510 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
	jmp	.L125
.L126:
	.loc 1 513 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movl	%eax, -4(%ebp)
	.loc 1 514 0
	cmpl	$0, -4(%ebp)
	je	.L128
	.loc 1 515 0
	jmp	.L130
.L131:
	.loc 1 516 0
	movl	-4(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -4(%ebp)
.L130:
	.loc 1 515 0
	movl	-4(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	jne	.L131
.L128:
	.loc 1 518 0
	movl	-4(%ebp), %eax
	movl	%eax, -20(%ebp)
.L125:
	movl	-20(%ebp), %eax
	.loc 1 519 0
	leave
	ret
.LFE20:
	.size	splay_tree_successor, .-splay_tree_successor
.globl splay_tree_foreach
	.type	splay_tree_foreach, @function
splay_tree_foreach:
.LFB21:
	.loc 1 531 0
	pushl	%ebp
.LCFI51:
	movl	%esp, %ebp
.LCFI52:
	subl	$24, %esp
.LCFI53:
	.loc 1 532 0
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	splay_tree_foreach_helper
	.loc 1 533 0
	leave
	ret
.LFE21:
	.size	splay_tree_foreach, .-splay_tree_foreach
.globl splay_tree_compare_ints
	.type	splay_tree_compare_ints, @function
splay_tree_compare_ints:
.LFB22:
	.loc 1 541 0
	pushl	%ebp
.LCFI54:
	movl	%esp, %ebp
.LCFI55:
	subl	$4, %esp
.LCFI56:
	.loc 1 542 0
	movl	8(%ebp), %edx
	movl	12(%ebp), %eax
	cmpl	%eax, %edx
	jge	.L136
	.loc 1 543 0
	movl	$-1, -4(%ebp)
	jmp	.L138
.L136:
	.loc 1 544 0
	movl	8(%ebp), %edx
	movl	12(%ebp), %eax
	cmpl	%eax, %edx
	jle	.L139
	.loc 1 545 0
	movl	$1, -4(%ebp)
	jmp	.L138
.L139:
	.loc 1 547 0
	movl	$0, -4(%ebp)
.L138:
	movl	-4(%ebp), %eax
	.loc 1 548 0
	leave
	ret
.LFE22:
	.size	splay_tree_compare_ints, .-splay_tree_compare_ints
.globl splay_tree_compare_pointers
	.type	splay_tree_compare_pointers, @function
splay_tree_compare_pointers:
.LFB23:
	.loc 1 556 0
	pushl	%ebp
.LCFI57:
	movl	%esp, %ebp
.LCFI58:
	subl	$4, %esp
.LCFI59:
	.loc 1 557 0
	movl	8(%ebp), %edx
	movl	12(%ebp), %eax
	cmpl	%eax, %edx
	jae	.L143
	.loc 1 558 0
	movl	$-1, -4(%ebp)
	jmp	.L145
.L143:
	.loc 1 559 0
	movl	8(%ebp), %edx
	movl	12(%ebp), %eax
	cmpl	%eax, %edx
	jbe	.L146
	.loc 1 560 0
	movl	$1, -4(%ebp)
	jmp	.L145
.L146:
	.loc 1 562 0
	movl	$0, -4(%ebp)
.L145:
	movl	-4(%ebp), %eax
	.loc 1 563 0
	leave
	ret
.LFE23:
	.size	splay_tree_compare_pointers, .-splay_tree_compare_pointers
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
	.align 4
.LEFDE4:
.LSFDE6:
	.long	.LEFDE6-.LASFDE6
.LASFDE6:
	.long	.Lframe0
	.long	.LFB8
	.long	.LFE8-.LFB8
	.byte	0x4
	.long	.LCFI9-.LFB8
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI10-.LCFI9
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE6:
.LSFDE8:
	.long	.LEFDE8-.LASFDE8
.LASFDE8:
	.long	.Lframe0
	.long	.LFB9
	.long	.LFE9-.LFB9
	.byte	0x4
	.long	.LCFI12-.LFB9
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
.LEFDE8:
.LSFDE10:
	.long	.LEFDE10-.LASFDE10
.LASFDE10:
	.long	.Lframe0
	.long	.LFB10
	.long	.LFE10-.LFB10
	.byte	0x4
	.long	.LCFI16-.LFB10
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
.LEFDE10:
.LSFDE12:
	.long	.LEFDE12-.LASFDE12
.LASFDE12:
	.long	.Lframe0
	.long	.LFB11
	.long	.LFE11-.LFB11
	.byte	0x4
	.long	.LCFI20-.LFB11
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI21-.LCFI20
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI23-.LCFI21
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
	.long	.LCFI24-.LFB12
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI25-.LCFI24
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE14:
.LSFDE16:
	.long	.LEFDE16-.LASFDE16
.LASFDE16:
	.long	.Lframe0
	.long	.LFB13
	.long	.LFE13-.LFB13
	.byte	0x4
	.long	.LCFI27-.LFB13
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI28-.LCFI27
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE16:
.LSFDE18:
	.long	.LEFDE18-.LASFDE18
.LASFDE18:
	.long	.Lframe0
	.long	.LFB14
	.long	.LFE14-.LFB14
	.byte	0x4
	.long	.LCFI30-.LFB14
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI31-.LCFI30
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE18:
.LSFDE20:
	.long	.LEFDE20-.LASFDE20
.LASFDE20:
	.long	.Lframe0
	.long	.LFB15
	.long	.LFE15-.LFB15
	.byte	0x4
	.long	.LCFI33-.LFB15
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI34-.LCFI33
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE20:
.LSFDE22:
	.long	.LEFDE22-.LASFDE22
.LASFDE22:
	.long	.Lframe0
	.long	.LFB16
	.long	.LFE16-.LFB16
	.byte	0x4
	.long	.LCFI36-.LFB16
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI37-.LCFI36
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE22:
.LSFDE24:
	.long	.LEFDE24-.LASFDE24
.LASFDE24:
	.long	.Lframe0
	.long	.LFB17
	.long	.LFE17-.LFB17
	.byte	0x4
	.long	.LCFI39-.LFB17
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI40-.LCFI39
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE24:
.LSFDE26:
	.long	.LEFDE26-.LASFDE26
.LASFDE26:
	.long	.Lframe0
	.long	.LFB18
	.long	.LFE18-.LFB18
	.byte	0x4
	.long	.LCFI42-.LFB18
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI43-.LCFI42
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE26:
.LSFDE28:
	.long	.LEFDE28-.LASFDE28
.LASFDE28:
	.long	.Lframe0
	.long	.LFB19
	.long	.LFE19-.LFB19
	.byte	0x4
	.long	.LCFI45-.LFB19
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI46-.LCFI45
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE28:
.LSFDE30:
	.long	.LEFDE30-.LASFDE30
.LASFDE30:
	.long	.Lframe0
	.long	.LFB20
	.long	.LFE20-.LFB20
	.byte	0x4
	.long	.LCFI48-.LFB20
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI49-.LCFI48
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE30:
.LSFDE32:
	.long	.LEFDE32-.LASFDE32
.LASFDE32:
	.long	.Lframe0
	.long	.LFB21
	.long	.LFE21-.LFB21
	.byte	0x4
	.long	.LCFI51-.LFB21
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI52-.LCFI51
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE32:
.LSFDE34:
	.long	.LEFDE34-.LASFDE34
.LASFDE34:
	.long	.Lframe0
	.long	.LFB22
	.long	.LFE22-.LFB22
	.byte	0x4
	.long	.LCFI54-.LFB22
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI55-.LCFI54
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE34:
.LSFDE36:
	.long	.LEFDE36-.LASFDE36
.LASFDE36:
	.long	.Lframe0
	.long	.LFB23
	.long	.LFE23-.LFB23
	.byte	0x4
	.long	.LCFI57-.LFB23
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI58-.LCFI57
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE36:
	.file 2 "../../include/gnu/splay-tree.h"
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
	.long	.LFE8-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST4:
	.long	.LFB9-.Ltext0
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
	.long	.LFE9-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST5:
	.long	.LFB10-.Ltext0
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
	.long	.LFE10-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST6:
	.long	.LFB11-.Ltext0
	.long	.LCFI20-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI20-.Ltext0
	.long	.LCFI21-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI21-.Ltext0
	.long	.LFE11-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST7:
	.long	.LFB12-.Ltext0
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
	.long	.LFE12-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST8:
	.long	.LFB13-.Ltext0
	.long	.LCFI27-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI27-.Ltext0
	.long	.LCFI28-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI28-.Ltext0
	.long	.LFE13-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST9:
	.long	.LFB14-.Ltext0
	.long	.LCFI30-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI30-.Ltext0
	.long	.LCFI31-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI31-.Ltext0
	.long	.LFE14-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST10:
	.long	.LFB15-.Ltext0
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
	.long	.LFE15-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST11:
	.long	.LFB16-.Ltext0
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
	.long	.LFE16-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST12:
	.long	.LFB17-.Ltext0
	.long	.LCFI39-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI39-.Ltext0
	.long	.LCFI40-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI40-.Ltext0
	.long	.LFE17-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST13:
	.long	.LFB18-.Ltext0
	.long	.LCFI42-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI42-.Ltext0
	.long	.LCFI43-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI43-.Ltext0
	.long	.LFE18-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST14:
	.long	.LFB19-.Ltext0
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
	.long	.LFE19-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST15:
	.long	.LFB20-.Ltext0
	.long	.LCFI48-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI48-.Ltext0
	.long	.LCFI49-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI49-.Ltext0
	.long	.LFE20-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST16:
	.long	.LFB21-.Ltext0
	.long	.LCFI51-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI51-.Ltext0
	.long	.LCFI52-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI52-.Ltext0
	.long	.LFE21-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST17:
	.long	.LFB22-.Ltext0
	.long	.LCFI54-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI54-.Ltext0
	.long	.LCFI55-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI55-.Ltext0
	.long	.LFE22-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST18:
	.long	.LFB23-.Ltext0
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
	.long	.LFE23-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
	.section	.debug_info
	.long	0xb3c
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.Ldebug_line0
	.long	.Letext0
	.long	.Ltext0
	.string	"GNU C 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.byte	0x1
	.string	"../../libiberty/splay-tree.c"
	.string	"/usa/handong/simplnano/cmplr-open64-merge/targia32_sl1/libiberty"
	.uleb128 0x2
	.long	.LASF0
	.byte	0x4
	.byte	0x7
	.uleb128 0x3
	.string	"int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x3
	.string	"long int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x3
	.string	"long long int"
	.byte	0x8
	.byte	0x5
	.uleb128 0x2
	.long	.LASF0
	.byte	0x4
	.byte	0x7
	.uleb128 0x3
	.string	"short unsigned int"
	.byte	0x2
	.byte	0x7
	.uleb128 0x3
	.string	"char"
	.byte	0x1
	.byte	0x8
	.uleb128 0x3
	.string	"unsigned char"
	.byte	0x1
	.byte	0x8
	.uleb128 0x3
	.string	"long unsigned int"
	.byte	0x4
	.byte	0x7
	.uleb128 0x3
	.string	"signed char"
	.byte	0x1
	.byte	0x6
	.uleb128 0x3
	.string	"short int"
	.byte	0x2
	.byte	0x5
	.uleb128 0x3
	.string	"long long unsigned int"
	.byte	0x8
	.byte	0x7
	.uleb128 0x4
	.byte	0x4
	.uleb128 0x5
	.string	"splay_tree_key"
	.byte	0x2
	.byte	0x2f
	.long	0xfc
	.uleb128 0x5
	.string	"splay_tree_value"
	.byte	0x2
	.byte	0x30
	.long	0xfc
	.uleb128 0x5
	.string	"splay_tree_node"
	.byte	0x2
	.byte	0x33
	.long	0x18e
	.uleb128 0x6
	.byte	0x4
	.long	0x194
	.uleb128 0x7
	.long	0x1ec
	.string	"splay_tree_node_s"
	.byte	0x10
	.byte	0x2
	.byte	0x33
	.uleb128 0x8
	.string	"key"
	.byte	0x2
	.byte	0x54
	.long	0x149
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.string	"value"
	.byte	0x2
	.byte	0x57
	.long	0x15f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.string	"left"
	.byte	0x2
	.byte	0x5a
	.long	0x177
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.string	"right"
	.byte	0x2
	.byte	0x5b
	.long	0x177
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x5
	.string	"splay_tree_compare_fn"
	.byte	0x2
	.byte	0x37
	.long	0x209
	.uleb128 0x6
	.byte	0x4
	.long	0x20f
	.uleb128 0x9
	.long	0x224
	.byte	0x1
	.long	0xa2
	.uleb128 0xa
	.long	0x149
	.uleb128 0xa
	.long	0x149
	.byte	0x0
	.uleb128 0x5
	.string	"splay_tree_delete_key_fn"
	.byte	0x2
	.byte	0x3b
	.long	0x244
	.uleb128 0x6
	.byte	0x4
	.long	0x24a
	.uleb128 0xb
	.long	0x256
	.byte	0x1
	.uleb128 0xa
	.long	0x149
	.byte	0x0
	.uleb128 0x5
	.string	"splay_tree_delete_value_fn"
	.byte	0x2
	.byte	0x3f
	.long	0x278
	.uleb128 0x6
	.byte	0x4
	.long	0x27e
	.uleb128 0xb
	.long	0x28a
	.byte	0x1
	.uleb128 0xa
	.long	0x15f
	.byte	0x0
	.uleb128 0x5
	.string	"splay_tree_foreach_fn"
	.byte	0x2
	.byte	0x42
	.long	0x2a7
	.uleb128 0x6
	.byte	0x4
	.long	0x2ad
	.uleb128 0x9
	.long	0x2c2
	.byte	0x1
	.long	0xa2
	.uleb128 0xa
	.long	0x177
	.uleb128 0xa
	.long	0x147
	.byte	0x0
	.uleb128 0x5
	.string	"splay_tree_allocate_fn"
	.byte	0x2
	.byte	0x48
	.long	0x2e0
	.uleb128 0x6
	.byte	0x4
	.long	0x2e6
	.uleb128 0x9
	.long	0x2fb
	.byte	0x1
	.long	0x147
	.uleb128 0xa
	.long	0xa2
	.uleb128 0xa
	.long	0x147
	.byte	0x0
	.uleb128 0x5
	.string	"splay_tree_deallocate_fn"
	.byte	0x2
	.byte	0x4e
	.long	0x31b
	.uleb128 0x6
	.byte	0x4
	.long	0x321
	.uleb128 0xb
	.long	0x332
	.byte	0x1
	.uleb128 0xa
	.long	0x147
	.uleb128 0xa
	.long	0x147
	.byte	0x0
	.uleb128 0x7
	.long	0x3c8
	.string	"splay_tree_s"
	.byte	0x1c
	.byte	0x2
	.byte	0x60
	.uleb128 0x8
	.string	"root"
	.byte	0x2
	.byte	0x62
	.long	0x177
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.string	"comp"
	.byte	0x2
	.byte	0x65
	.long	0x1ec
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.string	"delete_key"
	.byte	0x2
	.byte	0x68
	.long	0x224
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.string	"delete_value"
	.byte	0x2
	.byte	0x6b
	.long	0x256
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.string	"allocate"
	.byte	0x2
	.byte	0x6e
	.long	0x2c2
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.string	"deallocate"
	.byte	0x2
	.byte	0x6f
	.long	0x2fb
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xc
	.long	.LASF1
	.byte	0x2
	.byte	0x70
	.long	0x147
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x5
	.string	"splay_tree"
	.byte	0x2
	.byte	0x72
	.long	0x3da
	.uleb128 0x6
	.byte	0x4
	.long	0x332
	.uleb128 0xd
	.long	0x429
	.string	"splay_tree_delete_helper"
	.byte	0x1
	.byte	0x41
	.byte	0x1
	.long	.LFB5
	.long	.LFE5
	.long	.LLST0
	.uleb128 0xe
	.string	"sp"
	.byte	0x1
	.byte	0x3f
	.long	0x3c8
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xf
	.long	.LASF2
	.byte	0x1
	.byte	0x40
	.long	0x177
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x10
	.long	0x503
	.string	"splay_tree_splay_helper"
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.long	0x177
	.long	.LFB6
	.long	.LFE6
	.long	.LLST1
	.uleb128 0xe
	.string	"sp"
	.byte	0x1
	.byte	0x55
	.long	0x3c8
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xe
	.string	"key"
	.byte	0x1
	.byte	0x56
	.long	0x149
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0xf
	.long	.LASF2
	.byte	0x1
	.byte	0x57
	.long	0x503
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0xe
	.string	"parent"
	.byte	0x1
	.byte	0x58
	.long	0x503
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0xe
	.string	"grandparent"
	.byte	0x1
	.byte	0x59
	.long	0x503
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x11
	.string	"next"
	.byte	0x1
	.byte	0x5b
	.long	0x503
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x11
	.string	"n"
	.byte	0x1
	.byte	0x5c
	.long	0x177
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x12
	.long	.LASF3
	.byte	0x1
	.byte	0x5d
	.long	0xa2
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x13
	.long	0x4ec
	.long	.LBB2
	.long	.LBE2
	.uleb128 0x11
	.string	"p"
	.byte	0x1
	.byte	0x95
	.long	0x177
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x14
	.long	.LBB3
	.long	.LBE3
	.uleb128 0x11
	.string	"p"
	.byte	0x1
	.byte	0xa0
	.long	0x177
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.long	0x177
	.uleb128 0xd
	.long	0x54a
	.string	"splay_tree_splay"
	.byte	0x1
	.byte	0xc6
	.byte	0x1
	.long	.LFB7
	.long	.LFE7
	.long	.LLST2
	.uleb128 0xe
	.string	"sp"
	.byte	0x1
	.byte	0xc4
	.long	0x3c8
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xe
	.string	"key"
	.byte	0x1
	.byte	0xc5
	.long	0x149
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x10
	.long	0x5c2
	.string	"splay_tree_foreach_helper"
	.byte	0x1
	.byte	0xd9
	.byte	0x1
	.long	0xa2
	.long	.LFB8
	.long	.LFE8
	.long	.LLST3
	.uleb128 0xe
	.string	"sp"
	.byte	0x1
	.byte	0xd5
	.long	0x3c8
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xf
	.long	.LASF2
	.byte	0x1
	.byte	0xd6
	.long	0x177
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0xe
	.string	"fn"
	.byte	0x1
	.byte	0xd7
	.long	0x28a
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0xe
	.string	"data"
	.byte	0x1
	.byte	0xd8
	.long	0x147
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x11
	.string	"val"
	.byte	0x1
	.byte	0xda
	.long	0xa2
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x15
	.long	0x614
	.string	"splay_tree_xmalloc_allocate"
	.byte	0x1
	.byte	0xf0
	.long	0x147
	.long	.LFB9
	.long	.LFE9
	.long	.LLST4
	.uleb128 0xe
	.string	"size"
	.byte	0x1
	.byte	0xee
	.long	0xa2
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xe
	.string	"data"
	.byte	0x1
	.byte	0xef
	.long	0x147
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x16
	.long	0x666
	.string	"splay_tree_xmalloc_deallocate"
	.byte	0x1
	.byte	0xf8
	.long	.LFB10
	.long	.LFE10
	.long	.LLST5
	.uleb128 0xe
	.string	"object"
	.byte	0x1
	.byte	0xf6
	.long	0x147
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xe
	.string	"data"
	.byte	0x1
	.byte	0xf7
	.long	0x147
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x17
	.long	0x6bd
	.byte	0x1
	.string	"splay_tree_new"
	.byte	0x1
	.value	0x107
	.byte	0x1
	.long	0x3c8
	.long	.LFB11
	.long	.LFE11
	.long	.LLST6
	.uleb128 0x18
	.long	.LASF4
	.byte	0x1
	.value	0x104
	.long	0x1ec
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x18
	.long	.LASF5
	.byte	0x1
	.value	0x105
	.long	0x224
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x18
	.long	.LASF6
	.byte	0x1
	.value	0x106
	.long	0x256
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.byte	0x0
	.uleb128 0x17
	.long	0x770
	.byte	0x1
	.string	"splay_tree_new_with_allocator"
	.byte	0x1
	.value	0x11b
	.byte	0x1
	.long	0x3c8
	.long	.LFB12
	.long	.LFE12
	.long	.LLST7
	.uleb128 0x18
	.long	.LASF4
	.byte	0x1
	.value	0x115
	.long	0x1ec
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x18
	.long	.LASF5
	.byte	0x1
	.value	0x116
	.long	0x224
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x18
	.long	.LASF6
	.byte	0x1
	.value	0x117
	.long	0x256
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x19
	.string	"allocate_fn"
	.byte	0x1
	.value	0x118
	.long	0x2c2
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x19
	.string	"deallocate_fn"
	.byte	0x1
	.value	0x119
	.long	0x2fb
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x18
	.long	.LASF1
	.byte	0x1
	.value	0x11a
	.long	0x147
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x1a
	.string	"sp"
	.byte	0x1
	.value	0x11c
	.long	0x3c8
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x1b
	.long	0x7a7
	.byte	0x1
	.string	"splay_tree_delete"
	.byte	0x1
	.value	0x12e
	.byte	0x1
	.long	.LFB13
	.long	.LFE13
	.long	.LLST8
	.uleb128 0x19
	.string	"sp"
	.byte	0x1
	.value	0x12d
	.long	0x3c8
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x17
	.long	0x82a
	.byte	0x1
	.string	"splay_tree_insert"
	.byte	0x1
	.value	0x13c
	.byte	0x1
	.long	0x177
	.long	.LFB14
	.long	.LFE14
	.long	.LLST9
	.uleb128 0x19
	.string	"sp"
	.byte	0x1
	.value	0x139
	.long	0x3c8
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x19
	.string	"key"
	.byte	0x1
	.value	0x13a
	.long	0x149
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x19
	.string	"value"
	.byte	0x1
	.value	0x13b
	.long	0x15f
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1c
	.long	.LASF3
	.byte	0x1
	.value	0x13d
	.long	0xa2
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x14
	.long	.LBB4
	.long	.LBE4
	.uleb128 0x1c
	.long	.LASF2
	.byte	0x1
	.value	0x14f
	.long	0x177
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.long	0x89b
	.byte	0x1
	.string	"splay_tree_remove"
	.byte	0x1
	.value	0x172
	.byte	0x1
	.long	.LFB15
	.long	.LFE15
	.long	.LLST10
	.uleb128 0x19
	.string	"sp"
	.byte	0x1
	.value	0x170
	.long	0x3c8
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x19
	.string	"key"
	.byte	0x1
	.value	0x171
	.long	0x149
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x14
	.long	.LBB5
	.long	.LBE5
	.uleb128 0x1a
	.string	"left"
	.byte	0x1
	.value	0x177
	.long	0x177
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x1a
	.string	"right"
	.byte	0x1
	.value	0x177
	.long	0x177
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.byte	0x0
	.uleb128 0x17
	.long	0x8e5
	.byte	0x1
	.string	"splay_tree_lookup"
	.byte	0x1
	.value	0x19c
	.byte	0x1
	.long	0x177
	.long	.LFB16
	.long	.LFE16
	.long	.LLST11
	.uleb128 0x19
	.string	"sp"
	.byte	0x1
	.value	0x19a
	.long	0x3c8
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x19
	.string	"key"
	.byte	0x1
	.value	0x19b
	.long	0x149
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x17
	.long	0x92a
	.byte	0x1
	.string	"splay_tree_max"
	.byte	0x1
	.value	0x1aa
	.byte	0x1
	.long	0x177
	.long	.LFB17
	.long	.LFE17
	.long	.LLST12
	.uleb128 0x19
	.string	"sp"
	.byte	0x1
	.value	0x1a9
	.long	0x3c8
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1a
	.string	"n"
	.byte	0x1
	.value	0x1ab
	.long	0x177
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x17
	.long	0x96f
	.byte	0x1
	.string	"splay_tree_min"
	.byte	0x1
	.value	0x1bb
	.byte	0x1
	.long	0x177
	.long	.LFB18
	.long	.LFE18
	.long	.LLST13
	.uleb128 0x19
	.string	"sp"
	.byte	0x1
	.value	0x1ba
	.long	0x3c8
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1a
	.string	"n"
	.byte	0x1
	.value	0x1bc
	.long	0x177
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x17
	.long	0x9dc
	.byte	0x1
	.string	"splay_tree_predecessor"
	.byte	0x1
	.value	0x1ce
	.byte	0x1
	.long	0x177
	.long	.LFB19
	.long	.LFE19
	.long	.LLST14
	.uleb128 0x19
	.string	"sp"
	.byte	0x1
	.value	0x1cc
	.long	0x3c8
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x19
	.string	"key"
	.byte	0x1
	.value	0x1cd
	.long	0x149
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1c
	.long	.LASF3
	.byte	0x1
	.value	0x1cf
	.long	0xa2
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x1c
	.long	.LASF2
	.byte	0x1
	.value	0x1d0
	.long	0x177
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x17
	.long	0xa47
	.byte	0x1
	.string	"splay_tree_successor"
	.byte	0x1
	.value	0x1ef
	.byte	0x1
	.long	0x177
	.long	.LFB20
	.long	.LFE20
	.long	.LLST15
	.uleb128 0x19
	.string	"sp"
	.byte	0x1
	.value	0x1ed
	.long	0x3c8
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x19
	.string	"key"
	.byte	0x1
	.value	0x1ee
	.long	0x149
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1c
	.long	.LASF3
	.byte	0x1
	.value	0x1f0
	.long	0xa2
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x1c
	.long	.LASF2
	.byte	0x1
	.value	0x1f1
	.long	0x177
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x17
	.long	0xaa1
	.byte	0x1
	.string	"splay_tree_foreach"
	.byte	0x1
	.value	0x213
	.byte	0x1
	.long	0xa2
	.long	.LFB21
	.long	.LFE21
	.long	.LLST16
	.uleb128 0x19
	.string	"sp"
	.byte	0x1
	.value	0x210
	.long	0x3c8
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x19
	.string	"fn"
	.byte	0x1
	.value	0x211
	.long	0x28a
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x19
	.string	"data"
	.byte	0x1
	.value	0x212
	.long	0x147
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.byte	0x0
	.uleb128 0x17
	.long	0xaf0
	.byte	0x1
	.string	"splay_tree_compare_ints"
	.byte	0x1
	.value	0x21d
	.byte	0x1
	.long	0xa2
	.long	.LFB22
	.long	.LFE22
	.long	.LLST17
	.uleb128 0x19
	.string	"k1"
	.byte	0x1
	.value	0x21b
	.long	0x149
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x19
	.string	"k2"
	.byte	0x1
	.value	0x21c
	.long	0x149
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x1d
	.byte	0x1
	.string	"splay_tree_compare_pointers"
	.byte	0x1
	.value	0x22c
	.byte	0x1
	.long	0xa2
	.long	.LFB23
	.long	.LFE23
	.long	.LLST18
	.uleb128 0x19
	.string	"k1"
	.byte	0x1
	.value	0x22a
	.long	0x149
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x19
	.string	"k2"
	.byte	0x1
	.value	0x22b
	.long	0x149
	.byte	0x2
	.byte	0x91
	.sleb128 4
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
	.uleb128 0x3
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
	.uleb128 0x4
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
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
	.uleb128 0x8
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
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
	.uleb128 0xb
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
	.uleb128 0x16
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
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
	.uleb128 0x18
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.long	0x148
	.value	0x2
	.long	.Ldebug_info0
	.long	0xb40
	.long	0x666
	.string	"splay_tree_new"
	.long	0x6bd
	.string	"splay_tree_new_with_allocator"
	.long	0x770
	.string	"splay_tree_delete"
	.long	0x7a7
	.string	"splay_tree_insert"
	.long	0x82a
	.string	"splay_tree_remove"
	.long	0x89b
	.string	"splay_tree_lookup"
	.long	0x8e5
	.string	"splay_tree_max"
	.long	0x92a
	.string	"splay_tree_min"
	.long	0x96f
	.string	"splay_tree_predecessor"
	.long	0x9dc
	.string	"splay_tree_successor"
	.long	0xa47
	.string	"splay_tree_foreach"
	.long	0xaa1
	.string	"splay_tree_compare_ints"
	.long	0xaf0
	.string	"splay_tree_compare_pointers"
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
	.string	"allocate_data"
.LASF3:
	.string	"comparison"
.LASF5:
	.string	"delete_key_fn"
.LASF4:
	.string	"compare_fn"
.LASF6:
	.string	"delete_value_fn"
.LASF2:
	.string	"node"
	.ident	"GCC: (GNU) 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.section	.text.__i686.get_pc_thunk.bx,"axG",@progbits,__i686.get_pc_thunk.bx,comdat
.globl __i686.get_pc_thunk.bx
	.hidden	__i686.get_pc_thunk.bx
	.type	__i686.get_pc_thunk.bx, @function
__i686.get_pc_thunk.bx:
	movl	(%esp), %ebx
	ret
	.section	.note.GNU-stack,"",@progbits
